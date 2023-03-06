import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../infrastucture/services/ad_helper.dart';
import '../../routes/app_route.dart';
import '../home_page/home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadInterstitialAd();
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          setState(() {
            _interstitialAd = ad;
          });
        },
        onAdFailedToLoad: (err) {
          print('Failed to load an interstitial ad: ${err.message}');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
        return Scaffold(
          backgroundColor: colors.background,
          appBar: AppBar(
            backgroundColor: colors.primary,
            title: Container(
              height: 48.h,
              width: 274.w,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: TextField(
                controller: searchController,
                // textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  hintText: 'search words...',
                  border: InputBorder.none,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  if (_interstitialAd == null) {
                    loadInterstitialAd();
                  }

                  if (searchController.text.trim().isEmpty) {
                    EasyLoading.showInfo('please_writing'.tr());
                  } else {
                    if (_interstitialAd != null) {
                      _interstitialAd!.fullScreenContentCallback =
                          FullScreenContentCallback(
                        onAdDismissedFullScreenContent: (ad) {
                          context.read<PhotosBloc>().add(
                              PhotosEvent.searchPhotos(
                                  query: searchController.text));
                        },
                      );
                      _interstitialAd?.show();
                      _interstitialAd = null;
                    } else {
                      context.read<PhotosBloc>().add(PhotosEvent.searchPhotos(
                          query: searchController.text));
                    }
                  }
                },
                icon: CircleAvatar(
                  radius: 24.r,
                  child: const Icon(Icons.search),
                ),
              )
            ],
          ),
          body: !state.hasData
              ? const Center(child: Icon(Icons.search))
              : state.photosModel!.photos!.isEmpty
                  ? Center(child: Text('nothing_found'.tr()))
                  : GridView.builder(
                      padding: EdgeInsets.all(16.sm),
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
                            placeholder: (context, url) =>
                                const MyShimmerWidget(),
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error)),
                          ),
                        );
                      }),
        );
      });
    });
  }
}
