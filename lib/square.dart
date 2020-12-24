import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'squareInfo.dart';

class SquareState extends State<Square>{
  var ChuVi = '';
  var DienTich = '';
  var CanhHV = '';
  final SquareInfo squareInfo = new SquareInfo();
  @override
  Widget build(BuildContext context) {
    final TextField _input = new TextField(
      onChanged: (text){
        setState(() {
          this.squareInfo.CanhHV = text;
        });
      },
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
        hintText: 'Nhập vào cạnh hình vuông',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
    );
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Square page"),
      ),
      body: new Column(
        children: <Widget>[
          new Image.asset(
            'images/square_image.jpg',
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
            child: _input,
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
                            this.CanhHV = 'Cạnh hình vuông: ${squareInfo.CanhHV}';
                            this.DienTich = 'Diện tích: ${(double.parse(squareInfo.CanhHV) * double.parse(squareInfo.CanhHV))}';
                            this.ChuVi = 'Chu vi: ${double.parse(squareInfo.CanhHV) * 4}';
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
                  child: new Text(this.CanhHV),
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
class Square extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SquareState();
  }
}