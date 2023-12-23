import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:bollyflow/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(
                    1,
                    1,
                  ),
                  end: Alignment(
                    0,
                    0,
                  ),
                  colors: [
                    ColorConstant.deepOrangeA400,
                    ColorConstant.orange600,
                  ],
                ),
              ),
              child: Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVectorWhiteA700,
                      height: getVerticalSize(
                        103,
                      ),
                      width: getHorizontalSize(
                        100,
                      ),
                      margin: getMargin(
                        bottom: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
