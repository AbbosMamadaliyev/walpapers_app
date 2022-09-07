import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/application/auth_bloc/auth_bloc.dart';
import 'package:walpapers_app/infrastucture/repositories/auth_repo.dart';
import 'package:walpapers_app/presentation/routes/app_route.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

import '../../../../infrastucture/services/preference_service.dart';

class AppDrawer extends StatefulWidget {
  final String lang;

  const AppDrawer({Key? key, required this.lang}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  var _radioVal = 0;

  @override
  initState() {
    super.initState();

    changeRadio();
  }

  void changeRadio() {
    switch (widget.lang) {
      case 'uz':
        _radioVal = 1;
        break;
      case 'en':
        _radioVal = 2;
        break;
      case 'ru':
        _radioVal = 3;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return Container(
        color: colors.primary,
        width: 300.w,
        padding: EdgeInsets.symmetric(
          vertical: 156.h,
        ),
        child: Column(
          children: [
            _buildListTile('favorite_imgs'.tr(), Icons.favorite_border,
                colors.white, () {}),
            _buildListTile('change_theme'.tr(), Icons.nightlight_outlined,
                colors.white, () {}),
            _buildListTile('change_lang'.tr(), Icons.language, colors.white,
                () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('select_lang'.tr()),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            title: Text('O\'zbek tili'),
                            value: 1,
                            groupValue: _radioVal,
                            onChanged: (int? value) {
                              context.setLocale(const Locale('uz', 'UZ'));
                              setState(() {
                                _radioVal = value!;
                              });

                              Navigator.of(context).pop();
                            },
                          ),
                          RadioListTile(
                            title: Text('English'),
                            value: 2,
                            groupValue: _radioVal,
                            onChanged: (int? val) {
                              context.setLocale(const Locale('en', 'US'));
                              setState(() {
                                _radioVal = val!;
                              });

                              Navigator.of(context).pop();
                            },
                          ),
                          RadioListTile(
                            title: Text('Русский язык'),
                            value: 3,
                            groupValue: _radioVal,
                            onChanged: (int? val) {
                              print('rus');
                              context.setLocale(const Locale('ru', 'RU'));
                              setState(() {
                                _radioVal = val!;
                              });

                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  });
            }),
            _buildListTile(
                'app_info'.tr(), Icons.info_outline, colors.white, () {}),
            _buildListTile('share_app'.tr(), Icons.share, colors.white, () {}),
            _buildListTile('exit'.tr(), Icons.logout, colors.white, () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text('want_logout'.tr()),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('no'.tr()),
                        ),
                        BlocProvider(
                          create: (context) =>
                              AuthBloc(AuthRepo(PreferenceService())),
                          child: BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                            return TextButton(
                              onPressed: () {
                                context
                                    .read<AuthBloc>()
                                    .add(AuthEvent.logout());

                                Navigator.of(context).pushAndRemoveUntil(
                                    AppRoute.authPage(widget.lang),
                                    (route) => false);
                              },
                              child: Text('yes'.tr()),
                            );
                          }),
                        ),
                      ],
                    );
                  });
            }),
          ],
        ),
      );
    });
  }

  ListTile _buildListTile(
      String title, IconData icon, Color color, void Function() func) {
    return ListTile(
      onTap: func,
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
