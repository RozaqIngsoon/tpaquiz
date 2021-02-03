import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpaquiz/shared/tombol_home.dart';
import 'package:tpaquiz/shared/warna.dart';
import 'package:tpaquiz/ui/analisa.dart';
import 'package:tpaquiz/ui/nilai.dart';
import 'package:tpaquiz/ui/peraturan.dart';
import 'package:tpaquiz/ui/mulai.dart';

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
                                Text(
                                  'TES',
                                  style: GoogleFonts.fredokaOne(
                                    textStyle: TextStyle(
                                        fontSize: 60,
                                        color: warnaTeks,
                                        letterSpacing: 1),
                                  ),
                                ),
                                Text(
                                  'POTENSI',
                                  style: GoogleFonts.fredokaOne(
                                    textStyle: TextStyle(
                                        fontSize: 60,
                                        color: warnaTeks,
                                        letterSpacing: 1),
                                  ),
                                ),
                                Text(
                                  'AKADEMIK',
                                  style: GoogleFonts.fredokaOne(
                                    textStyle: TextStyle(
                                        fontSize: 60,
                                        color: warnaTeks,
                                        letterSpacing: 1),
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
                                    color: warnaTeks,
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
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        tombolHome(
                          context: context,
                            warnaButton: warnaTombolHome1,
                            teks: 'Mulai',
                            warnaTeks: warnaTeks,
                            fungsi: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Mulai(),
                                ),
                              );
                            }),
                        tombolHome(
                            context: context,
                            warnaButton: warnaTombolHome2,
                            teks: 'Nilai',
                            warnaTeks: warnaTeks,
                            fungsi: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Nilai(),
                                ),
                              );
                            }),
                        tombolHome(
                            context: context,
                            warnaButton: warnaTombolHome3,
                            teks: 'Analisa',
                            warnaTeks: warnaTeks,
                            fungsi: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Analisa(),
                                ),
                              );
                            }),
                        tombolHome(
                            context: context,
                            warnaButton: warnaTombolHome4,
                            teks: 'Peraturan',
                            warnaTeks: warnaTeks,
                            fungsi: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Peraturan(),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
