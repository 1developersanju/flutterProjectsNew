import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlDemo extends StatefulWidget {
  LaunchUrlDemo({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _LaunchUrlDemoState createState() => _LaunchUrlDemoState();
}

class _LaunchUrlDemoState extends State<LaunchUrlDemo> {
  Future<void> _launched;
  String _launchUrl = 'https://www.youtube.com/watch?v=Tmn2RJQdcow';

  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_Value'},
      );
    } else {
      throw 'could not launch this video';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: const Text('launch VIDEO'),
              onPressed: () {
                _launchInApp(_launchUrl);
              },
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blueGrey, width: 3.0),
                  borderRadius: BorderRadius.circular(500.0)),
            ),
          ],
        ),
      ),
    );
  }
}
