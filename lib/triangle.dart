import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'triangleInfo.dart';
class TriangleState extends State<Triangle>{
  var Canh1 = '';
  var Canh2 = '';
  var Canh3 = '';
  var DienTich = '';
  var ChuVi = '';
  final TriangleInfo triangleInfo = new TriangleInfo();
  @override
  Widget build(BuildContext context) {
    final TextField _inputC3 = new TextField(
      onChanged: (text){
        setState(() {
          this.triangleInfo.Canh3 = text;
        });
      },
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        hintText: 'Nhập vào cạnh 3',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
    );
    final TextField _inputC1 = new TextField(
      onChanged: (text){
        setState(() {
          this.triangleInfo.Canh1 = text;
        });
      },
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        hintText: 'Nhập vào cạnh 1',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
    );
    final TextField _inputC2 = new TextField(
      onChanged: (text){
        setState(() {
          this.triangleInfo.Canh2 = text;
        });
      },
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        hintText: 'Nhập vào cạnh 2',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
    );
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Triangle page"),
      ),
      body: ListView(
        children: <Widget>[
          new Image.asset(
            'images/triangle_image.png',
            width: 300.0,
            height: 300.0,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(4.0))
            ),
            child: _inputC1,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(4.0))
            ),
            child: _inputC2,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius: const BorderRadius.all(const Radius.circular(4.0))
            ),
            child: _inputC3,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: new Text("Tính"),
                        onPressed: (){
                          setState(() {
                            this.Canh1 = 'Cạnh tam giác 1 : ${triangleInfo.Canh1}';
                            this.Canh2 = 'Cạnh tam giác 2 : ${triangleInfo.Canh2}';
                            this.Canh3 = 'Cạnh tam giác 3 : ${triangleInfo.Canh3}';
                            this.ChuVi = 'Chu vi: ${double.parse(triangleInfo.Canh3) + double.parse(triangleInfo.Canh1) + double.parse(triangleInfo.Canh2) }';
                            this.DienTich = 'Diện tích: ${sqrt(((double.parse(triangleInfo.Canh3) + double.parse(triangleInfo.Canh1) + double.parse(triangleInfo.Canh2))/2) * (((double.parse(triangleInfo.Canh3) + double.parse(triangleInfo.Canh1) + double.parse(triangleInfo.Canh2))/2) - double.parse(triangleInfo.Canh1)) * (((double.parse(triangleInfo.Canh3) + double.parse(triangleInfo.Canh1) + double.parse(triangleInfo.Canh2))/2) - double.parse(triangleInfo.Canh2)) * (((double.parse(triangleInfo.Canh3) + double.parse(triangleInfo.Canh1) + double.parse(triangleInfo.Canh2))/2) - double.parse(triangleInfo.Canh3)) )}';
                          });
                        }
                    )
                )
              ],
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Text(this.Canh1),
                ),
                new Container(
                  child: new Text(this.Canh2),
                ),
                new Container(
                  child: new Text(this.Canh3),
                ),
                new Container(
                  child: new Text(this.ChuVi),
                ),
                new Container(
                  child: new Text(this.DienTich),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Triangle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TriangleState();
  }
} 