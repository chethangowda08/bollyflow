import 'bloc/walkthrough_three_bloc.dart';import 'models/walkthrough_three_model.dart';import 'package:bollyflow/core/app_export.dart';import 'package:bollyflow/widgets/custom_button.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class WalkthroughThreeScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<WalkthroughThreeBloc>(create: (context) => WalkthroughThreeBloc(WalkthroughThreeState(walkthroughThreeModelObj: WalkthroughThreeModel()))..add(WalkthroughThreeInitialEvent()), child: WalkthroughThreeScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<WalkthroughThreeBloc, WalkthroughThreeState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Spacer(), CustomImageView(svgPath: ImageConstant.img8, height: getVerticalSize(197), width: getHorizontalSize(363)), Container(width: double.maxFinite, child: Container(margin: getMargin(top: 82), padding: getPadding(left: 24, top: 48, right: 24, bottom: 48), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: getHorizontalSize(306), margin: getMargin(left: 37, top: 22, right: 36), child: Text("msg_go_live_with_yo".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtUrbanistRomanBold40)), Container(height: getVerticalSize(8), margin: getMargin(top: 83), child: SmoothIndicator(offset: 0, count: 3, size: Size.zero, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: ColorConstant.deepOrangeA400, dotColor: ColorConstant.gray300, dotHeight: getVerticalSize(8), dotWidth: getHorizontalSize(8)))), CustomButton(height: getVerticalSize(58), text: "lbl_get_started".tr, margin: getMargin(top: 60), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapGetstarted(context);})])))]))));}); } 
onTapGetstarted(BuildContext context) { NavigatorService.pushNamed(AppRoutes.letsInScreen, ); } 
 }
