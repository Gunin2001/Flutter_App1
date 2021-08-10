import 'package:flutter/material.dart';
import 'package:shah_soft_task/Crop.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Crop> list = [
  Crop("Potato","Shimla","600"),
  Crop("Tomato","Agra","700"),
  Crop("Cabbage","Jaipur","100"),
  Crop("WaterMelon","Delhi","800"),
  Crop("Almonds","Haryana","600"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("CROPS"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index){
            return Card(
            child: ListTile(
              title: new Text(list[index].crop),
              ),
            );
          }
      ),
    );
  }
}

