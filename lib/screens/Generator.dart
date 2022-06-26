


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/booksmodel.dart';

class detailspage extends StatefulWidget {
final Bookmodel book ; 
detailspage(this.book) ;

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
   

   bool isButtonClickable =true ; 
   void ButtonClicked() async {
    Duration time=Duration(hours: 12) ; 
    setState(() {
      isButtonClickable=false ; 
      Future.delayed(time,(){
        setState(() {
          isButtonClickable=true ; 
        });
      }) ; 
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text(widget.book.title,style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Center(child: Column(
        children: [
          SizedBox(height:30),
          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(widget.book.url))
            ),

          ),
          SizedBox(
            height: 20,
          ),
          Text("Author: ${widget.book.author}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
          SizedBox(height:10),
          Text(widget.book.genre,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
          SizedBox(height: 10,) ,
          Text(widget.book.duration,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
          SizedBox(height: 10),
          SizedBox(
            height: 30,
          ),
        
        ElevatedButton(onPressed: () {
          if(isButtonClickable) {
            ButtonClicked() ; 
          }
        }, child: Text(
          isButtonClickable?"Book Here":"Booked",
          style: TextStyle(
            color:Colors.white,

          ),
        ),
        )
         
        ],
      )
      ),
    );
    
  }
}

/* class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        
        
        onPressed: () {
          if(isButtonClickable) { ButtonClicked() ; 
          final snackBar = SnackBar(
            content: const Text("Succesfully Booked"),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
              
            ),
          );
          } 
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Book Now'),
      ),
    );
  }
}   */