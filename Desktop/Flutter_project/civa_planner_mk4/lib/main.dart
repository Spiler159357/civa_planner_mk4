import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  WebviewState createState() => WebviewState();
}

class WebviewState extends State<Home> {
  final key = UniqueKey();
  String url = "https://cyivacom.firebaseapp.com";

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.blue,),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 12.0),
            ),
            Expanded(
              child: WebView(
                key: key,
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: url,
                onPageFinished: (url) {
                  print("$url 불러옴");
                },
              ),
            )
          ],
        )
    );
  }
}

