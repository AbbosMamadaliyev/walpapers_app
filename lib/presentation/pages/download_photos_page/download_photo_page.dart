import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/application/photos_bloc/photos_bloc.dart';

import '../../../infrastucture/services/preference_service.dart';

class DownloadedPhotosPage extends StatefulWidget {
  const DownloadedPhotosPage({Key? key}) : super(key: key);

  @override
  State<DownloadedPhotosPage> createState() => _DownloadedPhotosPageState();
}

class _DownloadedPhotosPageState extends State<DownloadedPhotosPage> {
  late PreferenceService pres;

  @override
  initState() {
    super.initState();
    pres = PreferenceService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pres.token.accessToken == null || pres.token.accessToken!.isEmpty
          ? Center(
              child: Text('if_use_first_login'.tr()),
            )
          : BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
              if (state.pathList!.isEmpty || state.pathList == null) {
                return const Center(
                  child: Text('No data'),
                );
              } else {
                return GridView.builder(
                    padding: EdgeInsets.all(16.sm),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 16.h,
                      childAspectRatio: 1.8 / 3,
                      crossAxisCount: 2,
                    ),
                    itemCount: state.pathList?.length,
                    itemBuilder: (context, index) {
                      final path = state.pathList![index];
                      return InkWell(
                        onTap: () {
                          // Navigator.of(context)
                          //     .push(AppRoute.photoInnerPage(photo));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                              image: Image.file(File(path)).image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    });
              }
            }),
    );
  }
}
