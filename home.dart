import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        title:const Text ("BizCard",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
      ),

      body: Container(
        alignment: Alignment.topLeft,
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            _getCard(),
            _secondText ()
          ],
        ),
      ),
    );
  }
  Container _getCard(){
    return Container(
      margin:const  EdgeInsetsDirectional.only(start: 20,top: 190),
      alignment: Alignment.topLeft,
      width: 230,
      height: 200,
      decoration:  BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(""),
          Text(""),
          Text(""),
          Icon(Icons.account_circle_outlined,
            size: 90.0,
            color: Colors.indigo,
          ),
          Text("    Rizwan Shah",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text("      Flutter Developer"),
        ],
      ),
    );
  }

  Container _secondText () {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.lightGreen,
      ),
      width: 230,
      height: 200,
      margin: const EdgeInsetsDirectional.only(start: 250,top: 190,end: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Row(
            children:const [
              Icon(Icons.call,color: Colors.indigo,size: 20,),
              Text("+923060098175" ,style:
              TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  inherit: true
              ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:const [
              Icon(Icons.email,color: Colors.indigo,size: 20,),
              Text("shahrizwan403@gmail.com" ,style:
              TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  inherit: true
              ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:const [
              Icon(Icons.account_circle_outlined,color: Colors.indigo,size: 20,),
              Text("rizwanshah123" ,style:
              TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  inherit: true
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}