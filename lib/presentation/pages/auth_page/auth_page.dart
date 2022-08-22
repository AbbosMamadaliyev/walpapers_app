import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walpapers_app/application/auth_bloc/auth_bloc.dart';
import 'package:walpapers_app/presentation/pages/main_screen/main_screen.dart';
import 'package:walpapers_app/presentation/routes/app_route.dart';
import 'package:walpapers_app/presentation/style/theme_wrapper.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, theme) {
      return BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isSignIn) {
            if (state.postSignIn) {
              print('eeeer');
              Navigator.of(context)
                  .pushAndRemoveUntil(AppRoute.mainPage(), (_) => false);
            }
            print('nooo signin ');
          } else {
            if (state.postSignUp) {
              print('eeeer33');

              Navigator.of(context)
                  .pushAndRemoveUntil(AppRoute.mainPage(), (_) => false);
            }
            print('singunp error');
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 48.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/images/nature.jpeg').image,
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 200.h),
                    Container(
                      height: 48.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 18),
                          border: InputBorder.none,
                          hintText: 'Email',
                          // hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                const BorderSide(color: Colors.lightBlue),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      height: 48.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 18),
                          border: InputBorder.none,
                          hintText: 'Password',
                          // hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                const BorderSide(color: Colors.lightBlue),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        final email = _emailController.text;
                        final password = _passwordController.text;

                        state.isSignIn
                            ? context.read<AuthBloc>().add(AuthEvent.signInUser(
                                email: email, password: password))
                            : context.read<AuthBloc>().add(AuthEvent.signUpUser(
                                email: email, password: password));
                      },
                      child: Container(
                        height: 48.h,
                        // width: ,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 24.h),
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: colors.primary,
                        ),
                        child: Text(
                          state.isSignIn ? 'Sign in' : 'Sign up',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 36.h),
                    Text(
                      state.isSignIn
                          ? 'Are you have not account?'
                          : 'Are you have account?',
                      style: TextStyle(
                        color: colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          final btnFunc = state.isSignIn ? 'singUp' : 'signIn';
                          context
                              .read<AuthBloc>()
                              .add(AuthEvent.changeButton(btnFunc: btnFunc));
                        },
                        child: Text(
                          state.isSignIn ? 'Sign Up' : 'Sign In',
                          style: TextStyle(
                            color: colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(height: 80.h),
                    TextButton(
                      onPressed: () {
                        // context.read<AuthBloc>().add(AuthEvent.loginAsGuest());
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (_) => MainScreen()),
                            (route) => false);
                      },
                      child: Text(
                        'Login as Guest',
                        style: TextStyle(
                          color: colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
