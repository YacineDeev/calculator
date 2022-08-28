import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: Calculator(),
    );
  }
}
class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  
  Widget Buttonform(String txt,Color color,Color bqcolor){
   if(txt!='0'){
    return Container(
      child: RawMaterialButton(onPressed: (){

      },
      shape: CircleBorder(),
      padding: EdgeInsets.all(10),
      fillColor: bqcolor,
      child: Text(txt,style: TextStyle(
        fontSize: 35,
        color: color,
      ),),

      ),
      );
   }else{
    return Container(
      child: RawMaterialButton(onPressed: (){

      },
      shape: StadiumBorder(),
      padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
      fillColor: bqcolor,
      child: Text(txt,style: TextStyle(
        fontSize: 35,
        color: color,
      ),),

      ),
      );
   }
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor:Colors.blue,
          title: Text("calculator"),
        ),
        body: Padding(padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Row(

                children: [
                  Text("0",textAlign: TextAlign.start,style: TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                  ),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                      Buttonform('AC',Colors.white,Colors.blue),
                      Buttonform('+/-',Colors.white,Colors.blue),
                      Buttonform('%',Colors.white,Colors.blue),
                      Buttonform('/',Colors.blue,Colors.white),

              ],),
              SizedBox(height: 20),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                     Buttonform('7',Colors.white,Colors.blue),
                      Buttonform('8',Colors.white,Colors.blue),
                      Buttonform('9',Colors.white,Colors.blue),
                      Buttonform('x',Colors.blue,Colors.white),

              ],),
              SizedBox(height: 20),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                      Buttonform('4',Colors.white,Colors.blue),
                      Buttonform('5',Colors.white,Colors.blue),
                      Buttonform('6',Colors.white,Colors.blue),
                      Buttonform('-',Colors.blue,Colors.white),

              ],),
                SizedBox(height: 20),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                      Buttonform('1',Colors.white,Colors.blue),
                      Buttonform('2',Colors.white,Colors.blue),
                      Buttonform('3',Colors.white,Colors.blue),
                      Buttonform('+',Colors.blue,Colors.white),

              ],),   
                SizedBox(height: 20),   
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                      Buttonform('0',Colors.white,Colors.blue),
                      Buttonform('.',Colors.white,Colors.blue),
                      Buttonform('=',Colors.white,Colors.blue),

              ],),               
        ],),
        ),
    );
  }
}

