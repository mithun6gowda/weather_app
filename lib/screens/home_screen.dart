import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     extendBodyBehindAppBar: true,
appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  systemOverlayStyle: const  SystemUiOverlayStyle(
     statusBarBrightness: Brightness.dark,
  ),
),
      body:Padding(
        padding: const  EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 20, 40),
        child: SizedBox(height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align( alignment: AlignmentDirectional(3,-0.3),
            child: Container(height: 300,width: 300,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
            ),
            ),
            Align( alignment: AlignmentDirectional(-3,-0.3),
              child: Container(height: 300,width: 300,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                //  color: Colors.deepPurple,
                  color: Color(0xFF67AB7)
                ),
              ),
            ),
             Align(  alignment: AlignmentDirectional(0,-1.2),
              child: Container(height: 300,width: 900,
                decoration:  const BoxDecoration(
              //    shape: BoxShape.circle,
               //   color: Colors.deepOrange,
                  color:Color(0xFFFFAB40)
                ),
              ),
            ),
            BackdropFilter( filter:
              ImageFilter.blur(sigmaX: 100,sigmaY: 100),
                child: Container(
                  decoration:  const BoxDecoration(color: Colors.transparent
                  ),
                ),
              ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('📍My location',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
               const    SizedBox (height:8,),
              const   Text('Good Morning',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/1.png'),
                const  Center(
                    child: Text('21°C',
                    style: TextStyle (
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight:FontWeight.w600,
                    ),
                    ),
                  ),
                  const  Center(
                    child: Text('THUNDERSTORM',
                      style: TextStyle (
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight:FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  const  Center(
                    child: Text('Thursday 5.18pm',
                      style: TextStyle (
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight:FontWeight.w600,
                      ),
                    ),
                  ),
                const  SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Image.asset('assets/6.png',scale:9),
                      const  SizedBox(width:9),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Sunrise',
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w300,),
                         ),
                         SizedBox(height: 3,),
                         Text('5.34 am',
                           style: TextStyle(
                             color:Colors.white,
                             fontWeight: FontWeight.w700,),),
                       ],
                     ),
                    ],
                    ),
                    Row(children: [
                      Image.asset('assets/12.png',scale:9),
                      const  SizedBox(width:9),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sunset',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,),
                          ),
                          SizedBox(height: 3,),
                          Text('5.34 pm',
                            style: TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w700,),),
                        ],
                      ),
                    ],
                    ),
                  ],
                ),
                const  Padding(padding: EdgeInsets.symmetric(vertical: 1.0),
                    child: Divider(color: Colors.white,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset('assets/13.png',scale:9),
                        const  SizedBox(width:9),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tmp Max',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,),
                            ),
                            SizedBox(height: 3,),
                            Text('24°c',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w700,),),
                          ],
                        ),
                      ],
                      ),
                      Row(children: [
                        Image.asset('assets/14.png',scale:9),
                        const  SizedBox(width:9),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tem Min',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,),
                            ),
                            SizedBox(height: 3,),
                            Text('8°c',
                              style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w700,),),
                          ],
                        ),
                      ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
        ,),
      ),
    );
  }
}
