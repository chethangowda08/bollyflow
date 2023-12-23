import 'bloc/posts_upload_media_tab_container_bloc.dart';import 'models/posts_upload_media_tab_container_model.dart';import 'package:bollyflow/core/app_export.dart';import 'package:bollyflow/presentation/posts_upload_media_page/posts_upload_media_page.dart';import 'package:bollyflow/widgets/app_bar/appbar_image.dart';import 'package:bollyflow/widgets/app_bar/appbar_title.dart';import 'package:bollyflow/widgets/app_bar/custom_app_bar.dart';import 'package:bollyflow/widgets/custom_button.dart';import 'package:flutter/material.dart';class PostsUploadMediaTabContainerScreen extends StatefulWidget {@override _PostsUploadMediaTabContainerScreenState createState() =>  _PostsUploadMediaTabContainerScreenState();
static Widget builder(BuildContext context) { return BlocProvider<PostsUploadMediaTabContainerBloc>(create: (context) => PostsUploadMediaTabContainerBloc(PostsUploadMediaTabContainerState(postsUploadMediaTabContainerModelObj: PostsUploadMediaTabContainerModel()))..add(PostsUploadMediaTabContainerInitialEvent()), child: PostsUploadMediaTabContainerScreen()); } 
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.postsEditPageScreen, ); } 
onTapClose1(BuildContext context) { NavigatorService.goBack(); } 
 }

// ignore_for_file: must_be_immutable
class _PostsUploadMediaTabContainerScreenState extends State<PostsUploadMediaTabContainerScreen> with  TickerProviderStateMixin {late TabController autolayouthorizontalController;

@override void initState() { super.initState(); autolayouthorizontalController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<PostsUploadMediaTabContainerBloc, PostsUploadMediaTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(44), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClose28x28, margin: getMargin(left: 24, top: 8, bottom: 7), onTap: () {onTapClose1(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_all_media".tr), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock24x24, margin: getMargin(left: 24, top: 8, right: 24, bottom: 7))]), body: Container(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(39), width: getHorizontalSize(361), margin: getMargin(left: 24, top: 25), child: TabBar(controller: autolayouthorizontalController, labelColor: ColorConstant.deepOrangeA40001, labelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: ColorConstant.gray500, unselectedLabelStyle: TextStyle(fontSize: getFontSize(18), fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: ColorConstant.deepOrangeA40001, tabs: [Tab(child: Text("lbl_all".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_videos".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_photos".tr, overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(772), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Container(height: getVerticalSize(772), child: TabBarView(controller: autolayouthorizontalController, children: [PostsUploadMediaPage.builder(context), PostsUploadMediaPage.builder(context), PostsUploadMediaPage.builder(context)])), Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 24, top: 19, right: 24, bottom: 19), decoration: AppDecoration.outlineGray1001.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_you_can_select".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray800.copyWith(letterSpacing: getHorizontalSize(0.2))), CustomButton(height: getVerticalSize(58), text: "lbl_next".tr, margin: getMargin(top: 16, bottom: 17), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapNext(context);})])))]))]))));}); } 
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.postsEditPageScreen, ); } 
onTapClose1(BuildContext context) { NavigatorService.goBack(); } 
 }
