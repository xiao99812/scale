import 'package:flutter/material.dart';
import 'history.dart'; 
import 'setting.dart';
class SpeedPage extends StatelessWidget {
  const SpeedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(21, 20, 36, 1),
          title: Center(
            child: Text(
              'S P E E D T E S T',
              style: TextStyle(color: Color.fromRGBO(78, 201, 176, 1)),
            ),
          )
      ),
      body:Container(
        width: 540,
        height: 960,
        color: Color.fromRGBO(25, 26, 47, 1),
        child: NEIBU()
        )
    );
  }  
}

class NEIBU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                  child: Row(
                children: <Widget>[
                  Text('             '),
                  Icon(
                    Icons.file_download,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment(0, 0),
                        child: Text(
                          'D o w n l o a d',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ],
              )),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: Row(
                children: <Widget>[
                  Text('              '),
                  Icon(
                    Icons.file_upload,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment(-1, -1),
                        child: Text(
                          'U p l o a d',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ],
              )),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Text('                      '),
            Text(
              ' 521 kb/s ',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text('                                '),
            Text(
              ' 520 kb/s ',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 300,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-1, 0),
                          child: Icon(
                            Icons.language,
                            size: 23,
                            color: Colors.blue,
                          ),
                        ),
                        Align(
                            alignment: Alignment(0.67, 0),
                            child: Text(
                              'Ping 32 ms  ',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                        Align(
                            alignment: Alignment(1, 0),
                            child: Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 37, color: Colors.white),
                            )),
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 300,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-0.95, 0),
                          child: Icon(
                            Icons.network_check,
                            size: 25,
                            color: Colors.teal,
                          ),
                        ),
                        Align(
                            alignment: Alignment(1, 0.05),
                            child: Text(
                              'Jitter 31 ms',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 300,
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Align(
                            alignment: Alignment(-0.8, 0),
                            child: Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 37, color: Colors.white),
                            )),
                        Align(
                          alignment: Alignment(-0.6, 0),
                          child: Icon(
                            Icons.import_export,
                            size: 25,
                            color: Colors.orange,
                          ),
                        ),
                        Align(
                            alignment: Alignment(0.9, 0.05),
                            child: Text(
                              'Loss 10 %',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                      ],
                    )),
              ),
            ),
          ],
        ),
        

        SizedBox(height: 444),
        //底部
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Color.fromRGBO(78, 201, 176, 0.5),
                  height: 80,
                  width: 120,
                  child: RaisedButton.icon(
                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    splashColor: Color.fromRGBO(78, 201, 176, 0.7), //水波纹颜色
                    icon: Icon(
                      Icons.shutter_speed,
                      size: 40,
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)), //加了一个小圆角
                    onPressed: () {
                      Null;
                    },
                    color: Color.fromRGBO(78, 201, 176, 0.5)
                  ),
                ),
                Container(
                  color: Color.fromRGBO(21, 20, 36, 1),
                  height: 80,
                  width: 120,
                  child: RaisedButton.icon(
                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    splashColor: Color.fromRGBO(78, 201, 176, 0.7), //水波纹颜色
                    icon: Icon(
                      Icons.history,
                      size: 40,
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)), //加了一个小圆角
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HistoryPage()));
                    },
                    color: Color.fromRGBO(21, 20, 36, 1),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(21, 20, 36, 1),
                  height: 80,
                  width: 120,
                  child: RaisedButton.icon(
                    label: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    splashColor: Color.fromRGBO(78, 201, 176, 0.7), //水波纹颜色
                    icon: Icon(
                      Icons.settings,
                      size: 42,
                      color: Colors.grey,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)), //加了一个小圆角
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingPage()));
                    },
                 color: Color.fromRGBO(21, 20, 36, 1),
                  ),
                ),
              ],
            ),
      ],
    );
  }
}