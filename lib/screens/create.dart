import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanScreen extends StatefulWidget {

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrstr = 'Scan it';
  var height,width;
  @override
  Widget build(BuildContext context) {

    height =  MediaQuery.of(context).size.height;
    width  =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('scanning QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(qrstr,style: TextStyle(color: Colors.teal, fontSize: 30),),
            ElevatedButton(onPressed: ScanQr, child:
            Text('Scanner')),
            SizedBox(
              width: height,
            ),
          ],
        ),
      ),
    );
  }

  Future <void>ScanQr() async {
    try{
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true , ScanMode.QR).then((value) {
      setState(() {
        qrstr=value;
      });
      });
    }catch(e){
      setState(() {
        qrstr='unable To Read This';
      });
    }
  }
}