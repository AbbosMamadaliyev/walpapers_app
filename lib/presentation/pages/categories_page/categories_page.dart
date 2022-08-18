import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: categories.length,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 52.h),
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 150.h,
              width: 1.sw,
              child: CachedNetworkImage(
                imageUrl:
                    'https://images.pexels.com/photos/13108133/pexels-photo-13108133.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350',
                imageBuilder: (context, imageProvider) => Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
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
  }
}

List<String> categories = [
  'Walpapers',
  'Abstract',
  'Animals',
  'Minimal',
  'Nature',
  'Architecture',
  'Plants',
  'Art',
  'Navruz',
  'Space',
  'Colors',
  'Food',
  'Texture',
  'Festival',
  'Music',
];
