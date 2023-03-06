import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shimmer/shimmer.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/presentation/routes/app_route.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../infrastucture/services/ad_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadInterstitialAd();
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId2,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          setState(() {
            _interstitialAd = ad;
          });
        },
        onAdFailedToLoad: (err) {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
        return Scaffold(
          backgroundColor: colors.background,
          body: !state.hasData
              ? const Center(child: Text(' '))
              : RefreshIndicator(
                  backgroundColor: colors.primary,
                  color: colors.white,
                  onRefresh: () async {
                    context.read<PhotosBloc>().add(PhotosEvent.getPhotos());
                  },
                  child: GridView.builder(
                      padding: EdgeInsets.all(16.spMin),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 16.w,
                        mainAxisSpacing: 16.h,
                        childAspectRatio: 1.8 / 3,
                        crossAxisCount: 2,
                      ),
                      itemCount: state.photosModel!.photos!.length,
                      itemBuilder: (context, index) {
                        final photo = state.photosModel!.photos![index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(AppRoute.photoInnerPage(photo));
                          },
                          child: CachedNetworkImage(
                            imageUrl: photo.src!.portrait ?? "",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) {
                              return const MyShimmerWidget();
                            },
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error)),
                          ),
                        );
                      }),
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (_interstitialAd == null) {
                loadInterstitialAd();
              }

              if (_interstitialAd != null) {
                _interstitialAd!.fullScreenContentCallback =
                    FullScreenContentCallback(
                  onAdDismissedFullScreenContent: (ad) {
                    context.read<PhotosBloc>().add(PhotosEvent.getPhotos());
                  },
                );
                _interstitialAd?.show();
                _interstitialAd = null;
              } else {
                context.read<PhotosBloc>().add(PhotosEvent.getPhotos());
              }
            },
            backgroundColor: colors.primary,
            child: const Icon(Icons.refresh),
          ),
        );
      });
    });
  }
}

class MyShimmerWidget extends StatelessWidget {
  const MyShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFE8E8F6),
      highlightColor: const Color(0xFFF4F4F4),
      child: Container(
        decoration: BoxDecoration(
          gradient: _shimmerGradient,
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }

  final _shimmerGradient = const LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}
