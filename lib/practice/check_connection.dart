/*
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class CheckConnection extends StatefulWidget {
  const CheckConnection({super.key});

  @override
  State<CheckConnection> createState() => _CheckConnectionState();
}

class _CheckConnectionState extends State<CheckConnection> {

  // Widget errorMessage() {}

  StreamSubscription? internetConnection;
  bool isOffline = false;

  */
/*@override
  void initState() {
    print(internetConnection);
    internetConnection = Connectivity().onConnectivityChanged.listen((connectivityResult)
    {
      if(connectivityResult.contains(ConnectivityResult.none)) {
      // no any connection
        setState(() {
          isOffline = true;
        });
      } else if(connectivityResult.contains(ConnectivityResult.mobile) ||
          connectivityResult.contains(ConnectivityResult.wifi)) {
        setState(() {
          isOffline = false;
        });
      }
    }
    );
    // TODO: implement initState
    super.initState();
  }*//*

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    internetConnection?.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check connection'),
      ),
      body: Column(
        children: [

        ],
      ),

    );
  }
  */
/*Widget errorMessage(
  String text;
  bool show;
  ) {
    if(show == true){
      return Container(child: Row(
      children: [
        Container(
        child: Icon(Icons.info),
        ),
  Text(text),
  // show error message
  ],
      ),);
  } else {
      return Container();
  }
  }*//*


  Widget errorMessage(
      String text,
      bool show,
      ) {
    //error message widget.
    if (show == true) {
      //if error is true then show error message box
      return Container(
        padding: const EdgeInsets.all(
          10.00,
        ),
        margin: const EdgeInsets.only(
          bottom: 10.00,
        ),
        color: Colors.red,
        child: Row(children: [
          Container(
            margin: const EdgeInsets.only(
              right: 6.00,
            ),
            child: const Icon(
              Icons.info,
              color: Colors.white,
            ),
          ), // icon for error message

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          //show error message text
        ]),
      );
    } else {
      //if error is false, return empty container.
      return Container();
    }
  }
}



*/
