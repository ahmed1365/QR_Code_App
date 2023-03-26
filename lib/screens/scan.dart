import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var qrstr = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('creating QR code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(
            data: qrstr,
            barcode: Barcode.qrCode(),
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * .8,
            child: TextField(
              onChanged: (val) {
                setState(() {
                  qrstr = val;
                });
              },
              decoration: InputDecoration(
                  hintText: 'Enter Your Data Here',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.teal,
                    width: 2,
                  ))),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
