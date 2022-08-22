import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
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
            Text('data'),
            SizedBox(height: 232),
            TextButton(onPressed: () {}, child: Text('sdfs')),
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
      title: Text(title),
    );
  }
}
