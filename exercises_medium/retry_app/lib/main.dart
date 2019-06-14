import 'dart:async';

import 'package:flutter/material.dart';

// This app is a exercise from Medium Article about the importance
// of Retry when we get a Logic Error when the app Stars

// It's can be useful for another apps

// have four states:

// No data
// Busy
// Error
// Completed

// we use the enum to get more clean
enum StartupState { Busy, Success, Error }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final StreamController<StartupState> _startupStateController = 
    StreamController<StartupState>();

  // this function iserts data in the StreamController
  Future getImportantData({bool isError = false}) async {
    _startupStateController.add(StartupState.Busy);
    await Future.delayed(Duration(seconds: 4));

    if(isError)
      _startupStateController.add(StartupState.Error);
    else
      _startupStateController.add(StartupState.Success);
    
    return null;
  }

  // We'll call the function getImportantData with isError = true
  // for we pass through all states. Then, is just refresh
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StatefulWrapper(
          onInit: () => getImportantData(isError: true),
          child: StreamBuilder<StartupState>(
            stream: _startupStateController.stream,
            builder: (context, snapshot){
              // States: no data and busy
              if(!snapshot.hasData || snapshot.data == StartupState.Busy)
                return Center(child: CircularProgressIndicator(),);

              // Screen for State: Error
              if(snapshot.data == StartupState.Error)
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('${snapshot.data} Retry?'),
                      IconButton(
                        icon: Icon(
                          Icons.refresh,
                          size: 55,
                        ),
                        onPressed: () {
                          getImportantData();
                        },
                      )
                    ],
                  ));

              // Screen for State: Success
              return Container(
                color: Colors.yellow,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.refresh,
                      size: 55,
                    ),
                    onPressed: () {
                      getImportantData();
                    },
                  ),
                )
              );
            },
          ),
        ),
      )
    );
  }
}

// We won't to change the MyApp to Stateful widget. 
//So, we'll create one and pass to home porpety

class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;

  StatefulWrapper({Key key, this.onInit, this.child}) : super(key: key);

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {

  // We want to pass a function when the Widget starts
  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  // returns the widget that came from  
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}