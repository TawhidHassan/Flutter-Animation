import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  AnimationController? _controller;
  Animation? _colorAnimation;
  Animation? _positionAnimation;
  Animation? _positionBottomAnimation;
  Animation? _TextpositionAnimation;
  Animation? _TextSizeAnimation;
  bool selected = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init0");
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _colorAnimation=ColorTween(begin: Colors.black,end: Colors.white).animate(_controller!);
    _positionAnimation=Tween(begin: -40.0,end: -130.0).animate(_controller!);
    _positionBottomAnimation=Tween(begin: -40.0,end: -265.0).animate(_controller!);
    _TextpositionAnimation=Tween(begin: 310.0,end: 110.0).animate(_controller!);
    _TextSizeAnimation=Tween(begin: 36.0,end: 22.0).animate(_controller!);


    _controller!.forward();

    _controller!.addListener(() {
      if(_controller!.value>0.4){
        setState(() {
          selected=true;
        });
      }
      print(_controller!.value);
      print(_colorAnimation!.value);
    });

    _controller!.addStatusListener((status) {
      print(status);
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
          body: Container(
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
                selected?Container(): Center(
                    child: Container(
                        height: 69,
                        child: Lottie.asset("assets/images/loading.json")),
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
                //   top: selected?-135:-60,
                //   duration: const Duration(seconds: 2),
                //   curve: Curves.fastOutSlowIn,
                //   child: Image.asset("assets/images/top.png",fit: BoxFit.fitWidth,),
                // ),
                //
                //
                // AnimatedPositioned(
                //   width: MediaQuery.of(context).size.width,
                //   top: selected?100:310,
                //   duration: const Duration(seconds: 2),
                //   curve: Curves.fastOutSlowIn,
                //   child: Container(
                //       width: MediaQuery.of(context).size.width,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text("PAX VOUCHERS",style: TextStyle(fontWeight: FontWeight.w400,fontSize:selected?22: 36,color:selected?Colors.white: Colors.black),)
                //         ],
                //       )
                //   ),
                // ),
                //
                //
                // selected?Container(): Center(
                //   child: Container(
                //       height: 69,
                //       child: Lottie.asset("assets/images/loading.json")),
                // ),
                // AnimatedPositioned(
                //   width: MediaQuery.of(context).size.width,
                //   bottom: selected?-135:-40,
                //   duration: const Duration(seconds: 2),
                //   curve: Curves.fastOutSlowIn,
                //   child: Image.asset("assets/images/bottom.png",fit: BoxFit.fitWidth,),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
