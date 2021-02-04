import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tpaquiz/shared/warna.dart';

class Mulai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget menuLewati (){
      return Container(
        // color: Colors.cyanAccent,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.red,
                child: FittedBox(
                  fit: BoxFit.contain,
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
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.white,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Lewati',
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
              ),
            )
          ],
        ),
      );
    }

    Widget timer30sc() {
      return Align(
        alignment: Alignment.topCenter,
        child: Transform.translate(
          offset: Offset(0, -(MediaQuery
              .of(context)
              .size
              .height / 18)),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: warnaPersenIndikator1,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1),
                      blurRadius: 6)
                ]),
            child: Transform.translate(
              offset: Offset(0, 0),
              child: CircularPercentIndicator(
                radius: MediaQuery
                    .of(context)
                    .size
                    .height / 9,
                lineWidth: MediaQuery
                    .of(context)
                    .size
                    .height / 150,
                backgroundColor: warnaPersenIndikator2,
                progressColor: warnaPersenIndikator3,
                percent: 0.5,
                center: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    // color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      '60',
                      style: TextStyle(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget kemampuan_nmrsoal() {
      return Container(
        constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height/18),
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NUMERIK', style: TextStyle(color: Colors.red),),
                    Text ('Deret Angka', style: TextStyle(color: Colors.blue, fontSize: 10),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.white,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.red,
                alignment: Alignment.centerRight,
                child: Text('2/30'),
              ),
            ),
          ],
        ),
      );
    }

    Widget perintah_soal (){
      return Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        // color: Colors.brown,
          child: Center(child: Text('JAwab pertanyann pertanyaan ini dengan benar ! engan benar !\n  ini dengan benar ', textAlign: TextAlign.center,)));
    }

    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Scaffold(
            body: Container(
              color: warnaBg,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: menuLewati (),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      // color: Colors.amberAccent,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 10)
                        ]
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                                    color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    kemampuan_nmrsoal(),
                                    perintah_soal(),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                      color: Colors.white,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),
                                        Text('dddd', style: TextStyle(fontSize: 35),),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned.fill(
                            child: timer30sc(),
                          )
                        ],
                      ),
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
