
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterjdshop/base/base_page_state.dart';
import 'package:flutterjdshop/view/app_topbar.dart';
class BracodePage extends StatefulWidget {
  final Map<String, List<String>> address;

  const BracodePage({Key key, this.address}) : super(key: key);

  @override
  _BracodePageState createState() => _BracodePageState();
}

class _BracodePageState extends BasePageState<BracodePage> {
  @override
  Widget getAppBar(BuildContext context) {
    // TODO: implement getAppBar
    return CommonBackTopBar(
      title: "Barcode Scanner Example"
    );
  }



  @override
  void subInitState() {

  }

  @override
  Widget getBody(BuildContext context) {
    // TODO: implement getBody
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new MaterialButton(
                onPressed: scan, child: new Text("Scan")),
            padding: const EdgeInsets.all(8.0),
          ),
          new Text(barcode),
        ],
      ),
    );
  }
  String barcode = "";

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
