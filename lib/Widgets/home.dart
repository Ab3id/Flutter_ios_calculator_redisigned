import 'package:flutter/material.dart';
import 'buttons.dart';
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
  
}
class _homePageState extends State<homePage> {
  final List<String> buttonNames = [
    "AC","±","%","÷",
    "7","8","9","x",
    "4","5","6","−",
    "1","2","3","+",
    "0",".","π","="
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text("0",
                style: TextStyle(
                  fontSize: 80,
                  fontStyle: FontStyle.normal,
                  color: Colors.white
                ),),
              ),
            )
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.builder(
                    itemCount: buttonNames.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
                    itemBuilder: (BuildContext context,int index){
                      return Center(
                        child: buldButton(buttonNames[index],
                         isNumber(buttonNames[index]) == true ? Colors.grey[800] : Colors.grey[400], 
                         Colors.black, 1.1, 70, 
                         isZero(buttonNames[index]) == true  ? 180 : 90),
                      );
                    }
                    ),
                ),
              )
              )
        ],
      ),
    );
  }

  bool isNumber(String x){
    return double.tryParse(x) != null;
  }
  bool isZero (String c){
      bool check = double.tryParse(c) != null;
      if(check){
        if(c == "0"){
          return true;
        }
      }
      return false;
  }
}