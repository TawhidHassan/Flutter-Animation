import 'package:flutter/material.dart';

import '../../../Constants/Strings/app_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(child: Text("PAX VOUCHERS",style: TextStyle(color: Color(0xFF000000),fontSize: 18),)),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 8 ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, FLIGHT_PAGE);
                      },
                      child: Container(
                        width:MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(22),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        color: Color(0xFF122E79),
                        child: Column(
                          children: [
                            Image.asset("assets/icons/plan.png"),
                            SizedBox(height: 10,),
                            Text("VOUCHER BY IRREGULARITIES",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 44 ,),
                    Container(
                      width:MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(22),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      color: Color(0xFF1E57F1),
                      child: Column(
                        children: [
                          Image.asset("assets/icons/qr.png"),
                          SizedBox(height: 10,),
                          Text("SCAN BOARDING PASS",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
              flex: 1,
                child: Column(
                  children:  [
                    Divider(color: Color(0XFF40000000),height: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(9),
                          margin: EdgeInsets.symmetric(horizontal: 19),
                          color: Color(0xFF770D0D),
                          child: Center(child: Text("Sign out",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
                        ),
                        Container(
                            padding: EdgeInsets.all(9),
                            margin: EdgeInsets.symmetric(horizontal: 19),
                            child: Text("PAX HANDLING \n HZ-002",style: TextStyle(color: Color(0xFF80000000),fontSize: 14,fontWeight: FontWeight.w400),))
                      ],
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
