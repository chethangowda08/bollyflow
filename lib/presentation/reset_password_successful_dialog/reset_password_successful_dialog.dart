import 'bloc/reset_password_successful_bloc.dart';
import 'models/reset_password_successful_model.dart';
import 'package:bollyflow/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordSuccessfulDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordSuccessfulBloc>(
      create: (context) =>
          ResetPasswordSuccessfulBloc(ResetPasswordSuccessfulState(
        resetPasswordSuccessfulModelObj: ResetPasswordSuccessfulModel(),
      ))
            ..add(ResetPasswordSuccessfulInitialEvent()),
      child: ResetPasswordSuccessfulDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        340,
      ),
      padding: getPadding(
        left: 38,
        top: 32,
        right: 38,
        bottom: 32,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              "msg_congratulations".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24Gray800,
            ),
          ),
          Container(
            width: getHorizontalSize(
              262,
            ),
            margin: getMargin(
              top: 14,
            ),
            child: Text(
              "msg_your_account_is".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 32,
            ),
            child: Container(
              height: getSize(
                60,
              ),
              width: getSize(
                60,
              ),
              child: CircularProgressIndicator(
                value: 0.5,
                backgroundColor: ColorConstant.deepOrange50,
                color: ColorConstant.deepOrangeA40001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
