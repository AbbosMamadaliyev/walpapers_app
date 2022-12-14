import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/presentation/routes/app_route.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                            placeholder: (context, url) => Center(
                                child: Platform.isAndroid
                                    ? const CircularProgressIndicator()
                                    : const CupertinoActivityIndicator()),
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error)),
                          ),
                        );
                      }),
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<PhotosBloc>().add(PhotosEvent.getPhotos());
            },
            backgroundColor: colors.primary,
            child: const Icon(Icons.refresh),
          ),
        );
      });
    });
  }
}
