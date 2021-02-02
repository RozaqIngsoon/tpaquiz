import 'package:flutter/material.dart';
import 'package:tpaquiz/shared/warna.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color : warna1,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
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