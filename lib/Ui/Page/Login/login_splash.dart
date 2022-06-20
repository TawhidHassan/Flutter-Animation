import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../Bloc/Login/login_cubit.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/TextFields/normal_textdield.dart';
import '../../Widgets/TextFields/password_textdield.dart';

class LoginSplashPage extends StatefulWidget {
  const LoginSplashPage({Key? key}) : super(key: key);

  @override
  _LoginSplashPageState createState() => _LoginSplashPageState();
}

class _LoginSplashPageState extends State<LoginSplashPage> with TickerProviderStateMixin{
  TextEditingController emilController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  final _globalkey = GlobalKey<FormState>();
  AnimationController? _controller;
  Animation? _colorAnimation;
  Animation? _positionAnimation;
  Animation? _positionBottomAnimation;
  Animation? _TextpositionAnimation;
  Animation? _TextSizeAnimation;
  Animation? _fromAnimation;
  bool loadinDone = false;
  bool loginFrom = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init0");
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _colorAnimation=ColorTween(begin: Colors.black,end: Colors.white).animate(_controller!);
    _positionAnimation=Tween(begin: -40.0,end: -130.0).animate(_controller!);
    _positionBottomAnimation=Tween(begin: -40.0,end: -265.0).animate(_controller!);
    _TextpositionAnimation=Tween(begin: 310.0,end: 110.0).animate(_controller!);
    _TextSizeAnimation=Tween(begin: 36.0,end: 22.0).animate(_controller!);
    _fromAnimation=Tween(begin: 0.0,end: 1.0).animate(_controller!);



    Future.delayed(const Duration(milliseconds: 3000), () {
      _controller!.forward();
    });
    _controller!.addListener(() {
      if(_controller!.value>0.4){
        setState(() {
          loadinDone=true;
        });
      }
      print(_controller!.value);
      print(_colorAnimation!.value);
    });

    _controller!.addStatusListener((status) {
      print(status);
      if(status==AnimationStatus.completed){
        setState(() {
          loginFrom=true;
        });
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF122E79),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  AnimatedBuilder(
                    animation: _controller!,
                    builder: (context,_){
                      return Positioned(
                        top: _positionAnimation!.value,
                        child: Image.asset("assets/images/top.png",fit: BoxFit.fitWidth,),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _controller!,
                    builder: (context,_){
                      return Positioned(
                        top: _TextpositionAnimation!.value,
                        child:  Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("PAX VOUCHERS",style: TextStyle(fontWeight: FontWeight.w400,fontSize:_TextSizeAnimation!.value,color:_colorAnimation!.value),)
                              ],
                            )
                        ),
                      );
                    },
                  ),
                  loadinDone?Container(): Center(
                      child: Container(
                          height: 69,
                          child: Lottie.asset("assets/images/loading.json")),
                    ),

                  AnimatedOpacity(
                    opacity: _fromAnimation!.value,
                    duration: Duration(microseconds: 4000),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Form(
                        key: _globalkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            const SizedBox(height: 20,),
                            MaterialTextField(lable:"",hintText:"Email",readOnly: false,controller:emilController ,),
                            const SizedBox(height: 14,),
                            MaterialTextFieldPassword(lable:"email",hintText: "Password",controller:passwordController ,),
                            const SizedBox(height: 14,),
                            InkWell(
                              onTap: (){
                                if (_globalkey.currentState!.validate()) {
                                  setState(() {
                                    Navigator.pushNamed(context, HOME_PAGE);
                                    // BlocProvider.of<LoginCubit>(context).logIn(emilController.text,passwordController.text);
                                  });
                                }
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.9,
                                height: 64,
                                color: Color(0XFF1E57F1),
                                child: const Center(
                                  child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),),
                                ),
                              ),
                            ),
                            const SizedBox(height: 14,),
                            InkWell(
                                onTap: () {

                                },
                                child:  Text("Support  ",style: TextStyle(color: Color(0Xff1E57F1),fontSize: 18,fontWeight: FontWeight.w300),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  
                  AnimatedBuilder(
                    animation: _controller!,
                    builder: (context,_){
                      return Positioned(
                        bottom: _positionBottomAnimation!.value,
                        child: Image.asset("assets/images/bottom.png",fit: BoxFit.fitWidth,),
                      );
                    },
                  ),

                  // AnimatedPositioned(
                  //   width: MediaQuery.of(context).size.width,
                  //   top: loadinDone?-135:-60,
                  //   duration: const Duration(seconds: 2),
                  //   curve: Curves.fastOutSlowIn,
                  //   child: Image.asset("assets/images/top.png",fit: BoxFit.fitWidth,),
                  // ),
                  //
                  //
                  // AnimatedPositioned(
                  //   width: MediaQuery.of(context).size.width,
                  //   top: loadinDone?100:310,
                  //   duration: const Duration(seconds: 2),
                  //   curve: Curves.fastOutSlowIn,
                  //   child: Container(
                  //       width: MediaQuery.of(context).size.width,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Text("PAX VOUCHERS",style: TextStyle(fontWeight: FontWeight.w400,fontSize:loadinDone?22: 36,color:loadinDone?Colors.white: Colors.black),)
                  //         ],
                  //       )
                  //   ),
                  // ),
                  //
                  //
                  // loadinDone?Container(): Center(
                  //   child: Container(
                  //       height: 69,
                  //       child: Lottie.asset("assets/images/loading.json")),
                  // ),
                  // AnimatedPositioned(
                  //   width: MediaQuery.of(context).size.width,
                  //   bottom: loadinDone?-135:-40,
                  //   duration: const Duration(seconds: 2),
                  //   curve: Curves.fastOutSlowIn,
                  //   child: Image.asset("assets/images/bottom.png",fit: BoxFit.fitWidth,),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
