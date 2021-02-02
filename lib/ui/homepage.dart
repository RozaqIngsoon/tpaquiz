import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpaquiz/shared/warna.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: warnaBg,
          padding: EdgeInsets.all(35),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          // color: Colors.amber,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'TES',
                                    style: GoogleFonts.fredokaOne(
                                      textStyle: TextStyle(
                                          fontSize: 60,
                                          color: warnaTeksJudul,
                                          // fontWeight: FontWeight.bold,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'POTENSI',
                                    style: GoogleFonts.fredokaOne(
                                      textStyle: TextStyle(
                                          fontSize: 60,
                                          color: warnaTeksJudul,
                                          // fontWeight: FontWeight.bold,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'AKADEMIK',
                                    style: GoogleFonts.fredokaOne(
                                      textStyle: TextStyle(
                                          fontSize: 60,
                                          color: warnaTeksJudul,
                                          // fontWeight: FontWeight.bold,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          // color: Colors.cyanAccent,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Q',
                              style: GoogleFonts.lobster(
                                textStyle: TextStyle(
                                    fontSize: 200,
                                    color: warnaTeksJudul,
                                    // fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
