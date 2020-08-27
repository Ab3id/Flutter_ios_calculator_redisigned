import 'package:flutter/material.dart';


class buldButton extends StatelessWidget {
  String name;
  Color btnColor,fontColor;
  double btnWidth,btnHeight,btnRadius;
  buldButton(this.name,this.btnColor,this.fontColor,this.btnHeight,this.btnRadius,this.btnWidth);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1*btnHeight,
      width: btnWidth,
      margin: EdgeInsets.all(4.0),
      padding: EdgeInsets.all(1.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(btnRadius),
        side: BorderSide(
          color: isOperator(name) == true ? Colors.orange[400] : btnColor
          ) 
        ),
      color: isOperator(name) == true ? Colors.orange[400] : btnColor,
      textColor: Colors.white,
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 30.0,
          color: isSpecial(name) == true ? Colors.black : Colors.white
        ),
      ),
      )
    );
  }

    bool isOperator(String o){
    if(o == "÷" || o == "x" || o == "−" || o == "+" || o == "="){
      return true;
    }
    return false;
  }
  bool isSpecial(String o){
    if(o == "AC" || o == "±" || o == "%" || o == "." || o == "π"){
      return true;
    }
    return false;
  }
}

