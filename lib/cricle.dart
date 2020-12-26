import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hinhtron.dart';


class CricleState extends State<Cricle>{
  var ChuVi = '';
  var DienTich = '';
  var BanKinh = '';
  final CricleInfo cricleInfo = new CricleInfo();
  @override
  Widget build(BuildContext context) {
    final TextField _inputBK = new TextField(
      onChanged: (text){
        setState(() {
          this.cricleInfo.BanKinh = text;
        });
      },
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        hintText: 'Nhập bán kính',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
    );
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hình tròn"),
      ),
      body: new Column(
        children: <Widget>[
          new Image.asset(
            'images/tron.jpg',
            width: 300.0,
            height: 300.0,
          ), //Hình minh họa
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
           decoration: new BoxDecoration(
             color: Color.fromARGB(255, 240, 240, 240),
             border: new Border.all(width: 1.2, color: Colors.black12),
             borderRadius: const BorderRadius.all(const Radius.circular(4.0))
           ),
            child: _inputBK,
          ),//Ô nhập giá trị
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
                          this.BanKinh = 'Bán kính: ${cricleInfo.BanKinh}';
                          this.DienTich = 'Diện tích: ${(double.parse(cricleInfo.BanKinh) * 2) * 3.14}';
                          this.ChuVi = 'Chu vi: ${double.parse(cricleInfo.BanKinh) * 3.14}';
                        });
                      }
                  )
                )
              ],
            ),
          ),//Nút "tính"
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Text(this.BanKinh),
                ),
                new Container(
                  child: new Text(this.ChuVi),
                ),
                new Container(
                  child: new Text(this.DienTich),
                ),
              ],
            ),
          ),//Container chứa kết quả
        ],
      ),
    );
  }
}



class Cricle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CricleState();
  }
}