

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class paymentpage extends StatelessWidget {
  const paymentpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Payments page"),
      leading: Icon(Icons.payment),),

      body: Center(
        child: Container(
          child: Column(
            
            children: [
              
              Container(
                
                width: double.infinity,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                color: Colors.amber,
                child: Text("Your Next Due: Rs 50 on 28th June 2022",style: TextStyle(fontSize: 20,color:Colors.white),)),
                SizedBox(height: 50,),

                Image(image: NetworkImage("https://uxwing.com/wp-content/themes/uxwing/download/10-brands-and-social-media/upi.png"),),

              
              Container(width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(38)
              ),
              child: Center(child: Text("Pay with UPI",style: TextStyle(color: Color.fromARGB(255, 69, 65, 65),fontSize: 30,fontWeight: FontWeight.bold),)),
              )
            ],
          ),
        ),
      ),
    ) ;
    

  }
}