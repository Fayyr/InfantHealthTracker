import 'dart:async';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterStopWatch extends StatefulWidget {
  @override
  _FlutterStopWatchState createState() => _FlutterStopWatchState();
}

class _FlutterStopWatchState extends State<FlutterStopWatch> {
  bool flag = true;
  Stream<int> timerStream;
  StreamSubscription<int> timerSubscription;
  String hoursStr = '00';
  String minutesStr = '00';
  String secondsStr = '00';

  Stream<int> stopWatchStream() {
    StreamController<int> streamController;
    Timer timer;
    Duration timerInterval = Duration(seconds: 1);
    int counter = 0;

    void stopTimer() {
      if (timer != null) {
        timer.cancel();
        timer = null;
        counter = 0;
        streamController.close();
      }
    }

    void tick(_) {
      counter++;
      streamController.add(counter);
      if (!flag) {
        stopTimer();
      }
    }

    void startTimer() {
      timer = Timer.periodic(timerInterval, tick);
    }

    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: stopTimer,
      onResume: startTimer,
      onPause: stopTimer,
    );

    return streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey[800]),
        title: Text("Sleep Timer",
            style: GoogleFonts.josefinSans(
                color: Colors.blueGrey[800],
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                fontSize: 24)),
        backgroundColor: Colors.white,
      ),
      drawer: DrawerCode(),
      body: new Stack(children: [
        Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image:
                      new AssetImage('assets/images/baby-elementson-pink.jpg'),
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.dstATop),
                  fit: BoxFit.cover)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$hoursStr:$minutesStr:$secondsStr",
              style: TextStyle(
                fontSize: 60.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  onPressed: () {
                    timerStream = stopWatchStream();
                    timerSubscription = timerStream.listen((int newTick) {
                      setState(() {
                        hoursStr = ((newTick / (60 * 60)) % 60)
                            .floor()
                            .toString()
                            .padLeft(2, '0');
                        minutesStr = ((newTick / 60) % 60)
                            .floor()
                            .toString()
                            .padLeft(2, '0');
                        secondsStr =
                            (newTick % 60).floor().toString().padLeft(2, '0');
                      });
                    });
                  },
                  color: Colors.blueGrey[900],
                  child: Text(
                    'Start',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                SizedBox(width: 40.0),
                RaisedButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  onPressed: () {
                    timerSubscription.cancel();
                    timerStream = null;
                    setState(() {
                      hoursStr = '00';
                      minutesStr = '00';
                      secondsStr = '00';
                    });
                  },
                  color: Colors.blueGrey[900],
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
