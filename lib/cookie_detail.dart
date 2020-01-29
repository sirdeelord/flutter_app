import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_bar.dart';

class CookieDetail extends StatelessWidget {
    final assetPath, cookieprice, cookiename;

    CookieDetail({this.assetPath, this.cookiename, this.cookieprice});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // appBar: AppBar(
            //     backgroundColor: Colors.white,
            //     elevation: 0.0,
            //     centerTitle: true,
            //     leading: IconButton(
            //         icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            //         onPressed: () {
            //             Navigator.of(context).pop();
            //         },
            //     ),
            //     title: Text(
            //         'Pickup',
            //         style: TextStyle(
            //         fontFamily: 'Varela', fontSize: 20.0, color: Color(0xFF545D68)),
            //     ),
            //     actions: <Widget>[
            //         IconButton(
            //             icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            //             onPressed: () {})
            //     ],
            // ),

            body: ListView(
                children: [
                    SizedBox(height: 15.0),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Cookie',
                            style: TextStyle(
                            fontFamily: 'Valera',
                            fontSize: 42.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF17532)
                        )),
                    ),
                    SizedBox(height: 15.0),
                    Hero(
                        tag: assetPath,
                        child: Image.asset(
                            assetPath, 
                            height: 150.0,
                            width: 100.0,
                            fit: BoxFit.contain
                        ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width - 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Color(0xFFF17532)
                            ),
                            child: Center(
                                child: Text('Add to cart',
                                    style: TextStyle(
                                        fontFamily: 'Valera',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                )
                            ),
                        ),
                    )
                ]
            ),

            // floatingActionButton: FloatingActionButton(
            //     onPressed: () {},
            //     backgroundColor: Color(0xFFF17532),
            //     child: Icon(Icons.fastfood)
            // ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            // bottomNavigationBar: BottomBar(),
        );
    }
}