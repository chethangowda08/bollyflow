import 'bloc/security_bloc.dart';import 'models/security_model.dart';import 'package:bollyflow/core/app_export.dart';import 'package:bollyflow/widgets/app_bar/appbar_image.dart';import 'package:bollyflow/widgets/app_bar/appbar_title.dart';import 'package:bollyflow/widgets/app_bar/custom_app_bar.dart';import 'package:bollyflow/widgets/custom_button.dart';import 'package:bollyflow/widgets/custom_switch.dart';import 'package:flutter/material.dart';class SecurityScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SecurityBloc>(create: (context) => SecurityBloc(SecurityState(securityModelObj: SecurityModel()))..add(SecurityInitialEvent()), child: SecurityScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft25(context);}), title: AppbarTitle(text: "lbl_security".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 20, right: 24, bottom: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_control".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20), Padding(padding: getPadding(top: 26), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_security_alerts".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(bottom: 3))])), Padding(padding: getPadding(top: 26), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_manage_devices".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(bottom: 3))])), Padding(padding: getPadding(top: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("msg_manage_permissi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(bottom: 3))])), Padding(padding: getPadding(top: 26), child: Text("lbl_security".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), Padding(padding: getPadding(top: 22), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 1), child: Text("lbl_remember_me".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray800.copyWith(letterSpacing: getHorizontalSize(0.2)))), BlocSelector<SecurityBloc, SecurityState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(value: isSelectedSwitch, onChanged: (value) {context.read<SecurityBloc>().add(ChangeSwitchEvent(value: value));});})])), Padding(padding: getPadding(top: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_face_id".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray800.copyWith(letterSpacing: getHorizontalSize(0.2)))), BlocSelector<SecurityBloc, SecurityState, bool?>(selector: (state) => state.isSelectedSwitch1, builder: (context, isSelectedSwitch1) {return CustomSwitch(value: isSelectedSwitch1, onChanged: (value) {context.read<SecurityBloc>().add(ChangeSwitch1Event(value: value));});})])), Padding(padding: getPadding(top: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_biometric_id".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray800.copyWith(letterSpacing: getHorizontalSize(0.2)))), BlocSelector<SecurityBloc, SecurityState, bool?>(selector: (state) => state.isSelectedSwitch2, builder: (context, isSelectedSwitch2) {return CustomSwitch(value: isSelectedSwitch2, onChanged: (value) {context.read<SecurityBloc>().add(ChangeSwitch2Event(value: value));});})])), Padding(padding: getPadding(top: 27), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("msg_google_authenti".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray800.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomImageView(svgPath: ImageConstant.imgArrowdownDeepOrangeA4000120x20, height: getSize(20), width: getSize(20), margin: getMargin(bottom: 3))])), CustomButton(height: getVerticalSize(58), text: "lbl_change_pin".tr, margin: getMargin(top: 23), variant: ButtonVariant.FillDeeporange50, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1), CustomButton(height: getVerticalSize(58), text: "lbl_change_password".tr, margin: getMargin(top: 24, bottom: 5), variant: ButtonVariant.FillDeeporange50, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1)])))); } 
onTapArrowleft25(BuildContext context) { NavigatorService.goBack(); } 
 }
