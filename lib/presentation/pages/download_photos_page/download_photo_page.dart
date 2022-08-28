import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownloadedPhotosPage extends StatefulWidget {
  const DownloadedPhotosPage({Key? key}) : super(key: key);

  @override
  State<DownloadedPhotosPage> createState() => _DownloadedPhotosPageState();
}

class _DownloadedPhotosPageState extends State<DownloadedPhotosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: EdgeInsets.all(16.sm),
          itemBuilder: (context, index) {
            return Container(
              height: 100.h,
              width: 1.sw,
              child: Row(
                children: [
                  CachedNetworkImage(
                    height: 100.h,
                    width: 80.w,
                    imageUrl:
                        'https://images.pexels.com/photos/13264778/pexels-photo-13264778.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940',
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
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
                  Column(
                    children: [
                      Text(
                        'name',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.h);
          },
          itemCount: 4),
    );
  }
}
