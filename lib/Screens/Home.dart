import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Profile'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
            // Navigator.pushNamed(context, '/RoutinePage');
          },
        ),
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    // backgroundColor: Colors.redAccent,
    title: Row(
      children: [
        Text('Progress Club'),
      ],
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FittedBox(
          child: Text(
            "Please Complete Your Profile",
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 8.0,
            animation: true,
            percent: .615,
            center: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://www.oneworldplayproject.com/wp-content/uploads/2016/03/avatar-1024x1024.jpg',
                height: 84,
                width: 84,
              ),
            ),
            footer: Text(
              "61.5%",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.deepPurple),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.deepPurple[400],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: RaisedButton(
                  color: Colors.red[300],
                  // splashColor: Colors.redAccent,
                  child: Text(
                    'Remind Later',
                    style: TextStyle(
                        // color: Colors.deepPurple,
                        ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: RaisedButton(
                  color: Colors.green[300],
                  // splashColor: Colors.greenAccent,
                  child: FittedBox(
                    child: Text(
                      'Complete Now',
                      style: TextStyle(
                          // color: Colors.deepPurple,
                          ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    // saveAndNavigator();
                  }),
            ),
          ],
        ),
      ],
    ),
  );
}
