import 'package:flutter/material.dart';

import '../../Widgets/TextFields/normal_textdield_background.dart';

class FlightListPage extends StatefulWidget {
  const FlightListPage({Key? key}) : super(key: key);

  @override
  _FlightListPageState createState() => _FlightListPageState();
}

class _FlightListPageState extends State<FlightListPage> {
  TextEditingController emilController= TextEditingController();
  List<String> issueTypeDrop = ['Technical','Non-Technical'];
  String? issueType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black,),
        title: Center(child: Text("IRREGULARITIES",style: TextStyle(color: Color(0xFF000000),fontSize: 18),)),
        actions: [
          InkWell(
            onTap: (){
              showAlertDialog(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 24,vertical: 7),
              decoration: BoxDecoration(
                  color: Color(0xFF770D0D),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                  child: Row(
                    children: const [
                      Icon(Icons.airplanemode_on_outlined,color: Colors.white,size: 18,),
                      SizedBox(width: 10,),
                      Text("ADD",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                flex: 8 ,
                child: Container(
                  margin: EdgeInsets.only(top: 18),
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 17),
                        margin: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F7F8),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.airplanemode_on_outlined,color: Colors.black,size: 18,),
                                Text("SK 907",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("25JUN22",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                Text("OSL - EWR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF31313),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("DELAY",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF31313),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("CANCEL",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 17),
                        margin: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F7F8),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.airplanemode_on_outlined,color: Colors.black,size: 18,),
                                Text("SK 907",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("25JUN22",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                Text("OSL - EWR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF31313),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("DELAY",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1E57F1),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("EMPOWEREMENT",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 17),
                        margin: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F7F8),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.airplanemode_on_outlined,color: Colors.black,size: 18,),
                                Text("SK 907",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("25JUN22",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                Text("OSL - EWR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF717171),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("Locked",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),

                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 17),
                        margin: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F7F8),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.airplanemode_on_outlined,color: Colors.black,size: 18,),
                                Text("SK 907",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("25JUN22",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                Text("OSL - EWR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF31313),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("DELAY",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF31313),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("CANCEL",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 17),
                        margin: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F7F8),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.airplanemode_on_outlined,color: Colors.black,size: 18,),
                                Text("SK 907",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("25JUN22",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                Text("OSL - EWR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF31313),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("DELAY",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1E57F1),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("EMPOWEREMENT",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 17),
                        margin: EdgeInsets.symmetric(horizontal: 21,vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F7F8),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.airplanemode_on_outlined,color: Colors.black,size: 18,),
                                Text("SK 907",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("25JUN22",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                                Text("OSL - EWR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 13),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF717171),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                      child: Text("Locked",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w800),)
                                  ),
                                ),

                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children:  [
                    Divider(color: Color(0XFF40000000),height: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.all(6),
      content: Container(
        height: MediaQuery.of(context).size.height*0.7,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("BATCH A FLIGHT",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w800),),
                     InkWell(
                         onTap: (){
                           Navigator.pop(context);
                         },
                         child: Icon(Icons.close,color: Colors.black,size: 24,)),
                   ],
                 ),
                 SizedBox(height: 52,),
                 Row(
                   children: [
                     Expanded(child:Text("Date",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
                     Expanded(child: MaterialTextFieldBackground(controller: emilController, lable: '', hintText: '26.06.2022', readOnly: false,))
                   ],
                 ),
                 SizedBox(height: 22,),
                 Row(
                   children: [
                     Expanded(flex: 2,child:Text("Flight nr",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
                     Expanded(flex: 2,child: MaterialTextFieldBackground(controller: emilController, lable: '', hintText: '', readOnly: false,)),
                     SizedBox(width: 8,),
                     Expanded(flex: 3,child: MaterialTextFieldBackground(controller: emilController, lable: '', hintText: '', readOnly: false,))
                   ],
                 ),
                 SizedBox(height: 22,),
                 Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width,
                   padding: EdgeInsets.all(13),
                   color: Color(0xFFF5F7F8),
                   child: DropdownButtonHideUnderline(
                     child: DropdownButton(
                       hint: Text('Select reason',
                         style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Color(0xFF8E9191)
                         ),
                       ),
                       value: issueType,
                       icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xFF292D32),),
                       iconSize: 20,
                       onChanged: (newValue) {
                         setState(() {
                           issueType = newValue.toString();

                         });
                       },
                       items: issueTypeDrop.map((location) {
                         return DropdownMenuItem(
                           child:  Text(location),
                           value:location,
                         );
                       }).toList(),
                     ),
                   ),
                 ),
                 SizedBox(height: 22,),
                 Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width,
                   padding: EdgeInsets.all(13),
                   color: Color(0xFFF5F7F8),
                   child: DropdownButtonHideUnderline(
                     child: DropdownButton(
                       hint: Text('Select voucher type',
                         style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Color(0xFF8E9191)
                         ),
                       ),
                       value: issueType,
                       icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xFF292D32),),
                       iconSize: 20,
                       onChanged: (newValue) {
                         setState(() {
                           issueType = newValue.toString();

                         });
                       },
                       items: issueTypeDrop.map((location) {
                         return DropdownMenuItem(
                           child:  Text(location),
                           value:location,
                         );
                       }).toList(),
                     ),
                   ),
                 ),
               ],
             ),



            Container(
              height: 84,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 7),
              decoration: BoxDecoration(
                  color: Color(0xFF770D0D),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                  child: Text("Batch",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)
              ),
            ),
          ],
        ),
      ),
    );
    // show the dialog
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
