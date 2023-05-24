import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/core/service/validation_service.dart';
import 'package:workout_app/screens/challenges_main_screen/page/challenges_main_page.dart';
import 'package:workout_app/screens/common_widgets/loader.dart';
import 'package:workout_app/screens/common_widgets/lp_background.dart';
import 'package:workout_app/screens/common_widgets/or_field.dart';
import 'package:workout_app/screens/common_widgets/text_field.dart';
import 'package:workout_app/screens/forgot_password/page/forgot_password_page.dart';
import 'package:workout_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:workout_app/screens/sign_in/widget/sign_in_content.dart';
// import 'package:workout_app/screens/sign_up/page/sign_up_page.dart';
// import 'package:workout_app/screens/tab_bar/page/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/screens/sign_in/widget/test.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
    );
  }

  BlocProvider<SignInBloc> _buildContext(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (BuildContext context) => SignInBloc(),
      child: BlocConsumer<SignInBloc, SignInState>(
        buildWhen: (_, currState) => currState is SignInInitial,
        builder: (context, state) {
          return const SignInContent();
          // return const TestTest()
        },
        listenWhen: (_, currState) =>
            currState is NextForgotPasswordPageState ||
            currState is NextSignUpPageState ||
            currState is NextTabBarPageState ||
            currState is ErrorState,
        listener: (context, state) async {
          if (state is NextForgotPasswordPageState) {
            print("next forgot password page");
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
          } else if (state is NextSignUpPageState) {
            print("next sign up page");
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpPage()));
          } else if (state is NextTabBarPageState) {
            print("next tab bar page");
            await Future.delayed(Duration.zero, () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ChallengesMainPage(selectedIndex: 2,)));
            });
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// import 'package:workout_app/core/app_export.dart';
// import 'package:workout_app/screens/common_widgets/custom_button.dart';

// class SignInPage extends StatelessWidget {
//   final signInContent = SignInContent();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             extendBody: true,
//             extendBodyBehindAppBar: true,
//             backgroundColor: ColorConstant.backgroundColor,
//             body: AnnotatedRegion<SystemUiOverlayStyle>(
//                 value: SystemUiOverlayStyle.light,
//                 child: GestureDetector(
//                     child: Stack(
//                   children: <Widget>[
//                     LpBackground.getBackground(context),
//                     Container(
//                         width: double.maxFinite,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                                 padding: const EdgeInsets.all(30.0),
//                                 child: Image.asset(ImageConstant.imgLogo)),
//                             Container(
//                               padding: const EdgeInsets.all(30.0),
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       color: ColorConstant.secondaryColor,
//                                       width: 3.0,
//                                       style: BorderStyle.solid), //Border.all
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(25),
//                                   )),
//                               child: Column(children: [
//                                 SignInContent().build(context),
//                                 CustomButton(
//                                   onTap: () {
//                                     Navigator.pushNamed(
//                                         context, AppRoutes.signUpScreen);
//                                   },
//                                   text: TextConstant.signInButton,
//                                   width: 238,
//                                   variant: ButtonVariant.Primary,
//                                 ),
//                                 OrField.getOrField(context),
//                                 CustomButton(
//                                   onTap: () {
//                                     Navigator.pushNamed(
//                                         context, AppRoutes.signInScreen);
//                                   },
//                                   text: TextConstant.signInWithGoogleButton,
//                                   width: 338,
//                                   variant: ButtonVariant.Google,
//                                   prefixWidget: Container(
//                                     margin: getMargin(right: 12),
//                                     child: CustomImageView(
//                                       svgPath: ImageConstant.imgGoogle,
//                                     ),
//                                   ),
//                                 ),
//                               ]),
//                             ),
//                           ],
//                         ))
//                   ],
//                 )))));
//   }
// }
            // body: Container(
            //     height: size.height,
            //     width: double.maxFinite,
            //     child: Stack(alignment: Alignment.topCenter, children: [
            //       Align(
            //           alignment: Alignment.topCenter,
            //           child: Container(
            //               padding: getPadding(
            //                   left: 11, top: 19, right: 11, bottom: 19),
            //               decoration: AppDecoration.fillGray90001,
            //               child: Column(
            //                   mainAxisSize: MainAxisSize.min,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   children: [
            //                     CustomImageView(
            //                         svgPath: ImageConstant.imgArrowLeft,
            //                         height: getSize(45),
            //                         width: getSize(45),
            //                         margin: getMargin(bottom: 350),
            //                         onTap: () {
            //                           onTapImgArrowleft(context);
            //                         })
            //                   ]))),
            //       LpBackground.getBackground(context),
            //       // CustomImageView(
            //       //     imagePath: ImageConstant.imgEllipse1495x360,
            //       //     height: getVerticalSize(495),
            //       //     width: getHorizontalSize(360),
            //       //     alignment: Alignment.topCenter,
            //       //     margin: getMargin(top: 134)),
            //       // CustomImageView(
            //       //     imagePath: ImageConstant.imgEllipse3495x360,
            //       //     height: getVerticalSize(495),
            //       //     width: getHorizontalSize(360),
            //       //     alignment: Alignment.bottomCenter),
            //       Align(
            //           alignment: Alignment.bottomCenter,
            //           child: Container(
            //               height: getVerticalSize(595),
            //               width: double.maxFinite,
            //               margin: getMargin(bottom: 6),
            //               child: Stack(
            //                   alignment: Alignment.topCenter,
            //                   children: [
            //                     // CustomImageView(
            //                     //     imagePath: ImageConstant.imgEllipse2595x360, //taka sama sytuacja jak ponizej
            //                     //     height: getVerticalSize(595),
            //                     //     width: getHorizontalSize(360),
            //                     //     alignment: Alignment.center),

            //                     Align(
            //                         alignment: Alignment.topCenter,
            //                         child: Container(
            //                             height: getVerticalSize(425),
            //                             width: getHorizontalSize(296),
            //                             margin: getMargin(top: 29),
            //                             child: Stack(
            //                                 alignment: Alignment.center,
            //                                 children: [
            //                                   Align(
            //                                       alignment:
            //                                           Alignment.bottomCenter,
            //                                       child: Padding(
            //                                           padding: getPadding(
            //                                               left: 31,
            //                                               right: 24,
            //                                               bottom: 79),
            //                                           child: Column(
            //                                               mainAxisSize:
            //                                                   MainAxisSize.min,
            //                                               mainAxisAlignment:
            //                                                   MainAxisAlignment
            //                                                       .start,
            //                                               children: [
            //                                                 Align(
            //                                                     alignment: Alignment
            //                                                         .centerRight,
            //                                                     child: Padding(
            //                                                         padding: getPadding(
            //                                                             right:
            //                                                                 7),
            //                                                         child: Text(
            //                                                             "Forgot Password?",
            //                                                             overflow:
            //                                                                 TextOverflow
            //                                                                     .ellipsis,
            //                                                             textAlign:
            //                                                                 TextAlign
            //                                                                     .left,
            //                                                             style: AppStyle
            //                                                                 .txtTekoRegular14))),
            //                                                 Container(
            //                                                     margin:
            //                                                         getMargin(
            //                                                             top:
            //                                                                 15),
            //                                                     padding:
            //                                                         getPadding(
            //                                                             left:
            //                                                                 87,
            //                                                             right:
            //                                                                 87),
            //                                                     decoration: AppDecoration
            //                                                         .outlineBluegray5001
            //                                                         .copyWith(
            //                                                             borderRadius:
            //                                                                 BorderRadiusStyle
            //                                                                     .circleBorder24),
            //                                                     child: Column(
            //                                                         mainAxisSize:
            //                                                             MainAxisSize
            //                                                                 .min,
            //                                                         crossAxisAlignment:
            //                                                             CrossAxisAlignment
            //                                                                 .end,
            //                                                         mainAxisAlignment:
            //                                                             MainAxisAlignment
            //                                                                 .center,
            //                                                         children: [
            //                                                           Padding(
            //                                                               padding: getPadding(
            //                                                                   top:
            //                                                                       1),
            //                                                               child: Text(
            //                                                                   "Sign in",
            //                                                                   overflow: TextOverflow.ellipsis,
            //                                                                   textAlign: TextAlign.left,
            //                                                                   style: AppStyle.txtTekoRegular32Black900))
            //                                                         ])),
            //                                                 Padding(
            //                                                     padding:
            //                                                         getPadding(
            //                                                             top: 5),
            //                                                     child: Row(
            //                                                         mainAxisAlignment:
            //                                                             MainAxisAlignment
            //                                                                 .center,
            //                                                         children: [
            //                                                           Padding(
            //                                                               padding: getPadding(
            //                                                                   top:
            //                                                                       9,
            //                                                                   bottom:
            //                                                                       8),
            //                                                               child: SizedBox(
            //                                                                   width: getHorizontalSize(64),
            //                                                                   child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray500Cc))),
            //                                                           Padding(
            //                                                               padding: getPadding(
            //                                                                   left:
            //                                                                       5),
            //                                                               child: Text(
            //                                                                   "or",
            //                                                                   overflow: TextOverflow.ellipsis,
            //                                                                   textAlign: TextAlign.left,
            //                                                                   style: AppStyle.txtTekoRegular13)),
            //                                                           Padding(
            //                                                               padding: getPadding(
            //                                                                   top:
            //                                                                       9,
            //                                                                   bottom:
            //                                                                       8),
            //                                                               child: SizedBox(
            //                                                                   width: getHorizontalSize(68),
            //                                                                   child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray500Cc, indent: getHorizontalSize(4))))
            //                                                         ]))
            //                                               ]))),
            //                                   Align(
            //                                       alignment: Alignment.center,
            //                                       child: Container(
            //                                           padding: getPadding(
            //                                               left: 31,
            //                                               top: 27,
            //                                               right: 31,
            //                                               bottom: 27),
            //                                           decoration: BoxDecoration(
            //                                               image:
            //                                                   DecorationImage(
            //                                                       image: fs.Svg(
            //                                                           ImageConstant
            //                                                               .imgGoogle), //chwilowo dodany imgGoogle zeby puscic i zobaczyc co tutaj powinno wgl byc
            //                                                       fit: BoxFit
            //                                                           .cover)),
            //                                           child: Column(
            //                                               mainAxisSize:
            //                                                   MainAxisSize.min,
            //                                               mainAxisAlignment:
            //                                                   MainAxisAlignment
            //                                                       .end,
            //                                               children: [
            //                                                 Container(
            //                                                     height:
            //                                                         getVerticalSize(
            //                                                             46),
            //                                                     width:
            //                                                         getHorizontalSize(
            //                                                             234),
            //                                                     margin:
            //                                                         getMargin(
            //                                                             top:
            //                                                                 119),
            //                                                     child: Stack(
            //                                                         alignment:
            //                                                             Alignment
            //                                                                 .center,
            //                                                         children: [
            //                                                           Align(
            //                                                               alignment: Alignment
            //                                                                   .bottomCenter,
            //                                                               child: Padding(
            //                                                                   padding: getPadding(bottom: 9),
            //                                                                   child: SizedBox(width: getHorizontalSize(234), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray500)))),
            //                                                           Align(
            //                                                               alignment: Alignment
            //                                                                   .center,
            //                                                               child: Container(
            //                                                                   width: getHorizontalSize(213),
            //                                                                   child: Text("Email", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtTekoRegular20)))
            //                                                         ])),
            //                                                 Container(
            //                                                     height:
            //                                                         getVerticalSize(
            //                                                             46),
            //                                                     width:
            //                                                         getHorizontalSize(
            //                                                             234),
            //                                                     margin:
            //                                                         getMargin(
            //                                                             top: 4),
            //                                                     child: Stack(
            //                                                         alignment:
            //                                                             Alignment
            //                                                                 .center,
            //                                                         children: [
            //                                                           Align(
            //                                                               alignment: Alignment
            //                                                                   .bottomCenter,
            //                                                               child: Padding(
            //                                                                   padding: getPadding(bottom: 9),
            //                                                                   child: SizedBox(width: getHorizontalSize(234), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray500)))),
            //                                                           Align(
            //                                                               alignment: Alignment
            //                                                                   .center,
            //                                                               child: Container(
            //                                                                   width: getHorizontalSize(213),
            //                                                                   child: Text("Password", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtTekoRegular20)))
            //                                                         ])),
            //                                                 CustomButton(
            //                                                   onTap: () {
            //                                                     Navigator.pushNamed(
            //                                                         context,
            //                                                         AppRoutes
            //                                                             .signInScreen);
            //                                                   },
            //                                                   text: TextConstant
            //                                                       .signUpWithGoogleButton,
            //                                                   width: 238,
            //                                                   prefixWidget:
            //                                                       Container(
            //                                                     margin:
            //                                                         getMargin(
            //                                                             right:
            //                                                                 12),
            //                                                     child:
            //                                                         CustomImageView(
            //                                                       svgPath:
            //                                                           ImageConstant
            //                                                               .imgGoogle,
            //                                                     ),
            //                                                   ),
            //                                                 )
            //                                                 // CustomButton(
            //                                                 //     height:
            //                                                 //         getVerticalSize(
            //                                                 //             48),
            //                                                 //     text:
            //                                                 //         "Sign in with Google",
            //                                                 //     margin:
            //                                                 //         getMargin(
            //                                                 //             top:
            //                                                 //                 108),
            //                                                 //     prefixWidget: Container(
            //                                                 //         margin: getMargin(
            //                                                 //             right:
            //                                                 //                 12),
            //                                                 //         child: CustomImageView(
            //                                                 //             svgPath:
            //                                                 //                 ImageConstant.imgGoogle)))
            //                                               ])))
            //                                 ])))
            //                   ]))),
            //       Align(
            //           alignment: Alignment.topCenter,
            //           child: Container(
            //               height: getVerticalSize(258),
            //               width: getHorizontalSize(246),
            //               margin: getMargin(top: 85),
            //               child: Stack(
            //                   alignment: Alignment.bottomCenter,
            //                   children: [
            //                     CustomImageView(
            //                         imagePath: ImageConstant.imgLogo,
            //                         height: getVerticalSize(231),
            //                         width: getHorizontalSize(246),
            //                         alignment: Alignment.topCenter),
            //                     Align(
            //                         alignment: Alignment.bottomCenter,
            //                         child: Padding(
            //                             padding: getPadding(
            //                                 left: 48, right: 48, bottom: 23),
            //                             child: Column(
            //                                 mainAxisAlignment:
            //                                     MainAxisAlignment.center,
            //                                 children: [
            //                                   // Text("ANCIENT",
            //                                   //     overflow:
            //                                   //         TextOverflow.ellipsis,
            //                                   //     textAlign: TextAlign.left,
            //                                   //     style: AppStyle
            //                                   //         .txtUltraRegular2694),
            //                                   // Padding(
            //                                   //     padding:
            //                                   //         getPadding(bottom: 3),
            //                                   //     child: SizedBox(
            //                                   //         width: getHorizontalSize(
            //                                   //             142),
            //                                   //         child: Divider(
            //                                   //             height:
            //                                   //                 getVerticalSize(
            //                                   //                     1),
            //                                   //             thickness:
            //                                   //                 getVerticalSize(
            //                                   //                     1),
            //                                   //             color: ColorConstant
            //                                   //                 .whiteA700)))
            //                                 ]))),
            //                     // Align(
            //                     //     alignment: Alignment.bottomCenter,
            //                     //     child: Text("GODS OF FITNESS",
            //                     //         overflow: TextOverflow.ellipsis,
            //                     //         textAlign: TextAlign.left,
            //                     //         style: AppStyle.txtTekoRegular1959))
            //                   ])))
            //     ]))));
//   }

//   onTapImgArrowleft(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
