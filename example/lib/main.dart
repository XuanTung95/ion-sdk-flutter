import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/echotest_view.dart';
import 'views/ion_cluster_view.dart';
import 'views/pubsub_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text('ion flutter examples')),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton(
              child: Text('Echo Test (ion-sfu)'),
              onPressed: () {
                Get.to(EchoTestView(), transition: Transition.rightToLeft);
              }),
          RaisedButton(
              child: Text('Pub/Sub (ion-sfu)'),
              onPressed: () {
                Get.to(PubSubTestView(), transition: Transition.rightToLeft);
              }),
          RaisedButton(
              child: Text('Ion Cluster Pub/Sub (ion-cluster)'),
              onPressed: () {
                Get.to(IonClusterView(), transition: Transition.rightToLeft);
              }),
        ],
      )));
}
