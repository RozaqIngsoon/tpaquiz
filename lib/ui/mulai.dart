import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpaquiz/shared/warna.dart';

class Mulai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Scaffold(
            body: Container(
              color: warnaBg,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                    child: Container(
                      // color: Colors.cyanAccent,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.home,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Menu',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: warnaTeks,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              // color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    'Menu',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: warnaTeks,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
