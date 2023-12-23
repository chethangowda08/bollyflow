import 'bloc/type_message_bloc.dart';import 'models/type_message_model.dart';import 'package:bollyflow/core/app_export.dart';import 'package:bollyflow/widgets/app_bar/appbar_image.dart';import 'package:bollyflow/widgets/app_bar/appbar_title.dart';import 'package:bollyflow/widgets/app_bar/custom_app_bar.dart';import 'package:bollyflow/widgets/custom_button.dart';import 'package:bollyflow/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class TypeMessageScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<TypeMessageBloc>(create: (context) => TypeMessageBloc(TypeMessageState(typeMessageModelObj: TypeMessageModel()))..add(TypeMessageInitialEvent()), child: TypeMessageScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft19(context);}), title: AppbarTitle(text: "lbl_theresa_varnes".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgCall28x28, margin: getMargin(left: 24, top: 10, right: 10), onTap: () {onTapCall(context);}), AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 20, top: 10, right: 34))]), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 47, right: 24, bottom: 47), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(24), width: getHorizontalSize(75), text: "lbl_today".tr, variant: ButtonVariant.FillGray6001e, fontStyle: ButtonFontStyle.UrbanistSemiBold10Gray600, alignment: Alignment.center), Container(width: getHorizontalSize(300), margin: getMargin(top: 24, right: 80), padding: getPadding(left: 20, top: 11, right: 20, bottom: 11), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3), child: Text("msg_hi_morning_too".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16.copyWith(letterSpacing: getHorizontalSize(0.2)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 6), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12Gray600.copyWith(letterSpacing: getHorizontalSize(0.2)))))])), Container(margin: getMargin(top: 10, right: 80), padding: getPadding(left: 20, top: 9, right: 20, bottom: 9), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL16), child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Expanded(child: Container(width: getHorizontalSize(202), margin: getMargin(top: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_yes_you_re_righ2".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl9".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2)))]), textAlign: TextAlign.left))), Padding(padding: getPadding(left: 29, top: 55, bottom: 2), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12Gray600.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(300), margin: getMargin(left: 80, top: 24), padding: getPadding(left: 20, top: 11, right: 20, bottom: 11), decoration: AppDecoration.gradientDeeporangeA400Orange600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: Text("msg_hi_theresa_goo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 7), child: Text("lbl_10_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular12.copyWith(letterSpacing: getHorizontalSize(0.2)))))]))), Spacer(), Padding(padding: getPadding(bottom: 267), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [BlocSelector<TypeMessageBloc, TypeMessageState, TextEditingController?>(selector: (state) => state.frameController, builder: (context, frameController) {return CustomTextFormField(width: getHorizontalSize(312), focusNode: FocusNode(), controller: frameController, hintText: "msg_would_you_like".tr, variant: TextFormFieldVariant.OutlineDeeporangeA40001, fontStyle: TextFormFieldFontStyle.UrbanistSemiBold14DeeporangeA40001, textInputAction: TextInputAction.done, prefix: Container(margin: getMargin(left: 22, top: 20, right: 13, bottom: 19), child: CustomImageView(svgPath: ImageConstant.imgComputerDeepOrangeA40001)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)), suffix: Container(margin: getMargin(left: 30, top: 21, right: 19, bottom: 20), child: CustomImageView(svgPath: ImageConstant.imgInstagram14x15)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)));}), CustomImageView(imagePath: ImageConstant.imgAutolayouthorizontalWhiteA70056x56, height: getSize(56), width: getSize(56), radius: BorderRadius.circular(getHorizontalSize(28)))]))])))); } 
onTapArrowleft19(BuildContext context) { NavigatorService.goBack(); } 
onTapCall(BuildContext context) { NavigatorService.pushNamed(AppRoutes.callScreen, ); } 
 }
