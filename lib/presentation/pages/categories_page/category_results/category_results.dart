import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../routes/app_route.dart';

class CategoryResultsPage extends StatefulWidget {
  final String category;
  const CategoryResultsPage({Key? key, required this.category})
      : super(key: key);

  @override
  State<CategoryResultsPage> createState() => _CategoryResultsPageState();
}

class _CategoryResultsPageState extends State<CategoryResultsPage> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
        return Scaffold(
          backgroundColor: colors.background,
          appBar: AppBar(
            backgroundColor: colors.primary,
            title: Text(widget.category),
          ),
          body: !state.hasData
              ? const Center(child: Text(' '))
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
                        placeholder: (context, url) => Center(
                            child: Platform.isAndroid
                                ? const CircularProgressIndicator()
                                : const CupertinoActivityIndicator()),
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
