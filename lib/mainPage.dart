import 'package:flutter/material.dart';
import 'cricle.dart';
import 'triangle.dart';
import 'square.dart';

class MainPageState extends State<MainPage>{
  Drawer _buildDrawer(context){
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
              child: new Container(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Image.asset(
                      'images/avt.jpg',
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                    new Text("Lê Văn Hoàng",
                      style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    new Text("1621050807",
                      style: new TextStyle(
                        color: Colors.white,
                      ),)
                  ],
                ),
              ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.data_usage),
            title: new Text("Hình tròn"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Cricle()),);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.crop_din),
            title: new Text("Hình vuông"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Square()),);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.details),
            title: new Text("Hình tam giác"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Triangle()),);
            },
          ),
          new Divider(
            color: Colors.black45,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text("Phát triển ứng dụng trên thiết bị di động"),
          ),
          new ListTile(
            title: new Text("Flutter"),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hình học cơ bản'),
      ),
      body: new Center(
        child: new Image.asset(
          'images/Flutter.png',
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }
}
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}