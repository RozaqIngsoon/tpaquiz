import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tombolHome(
    {BuildContext context, Function fungsi, Color warnaButton, String teks, Color warnaTeks}){
  return Column(
    children: [
      SizedBox(height: 15,),
      RaisedButton(
        onPressed: fungsi,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: warnaButton,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Center(
            child: Text(teks,
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: warnaTeks,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
    ],
  );
}