import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/booksmodel.dart';

class issuepage extends StatelessWidget {
    
   static List<Bookmodel> bookslist=[
    Bookmodel("Saphiens", "Novah", "History", "Moderate","https://m.media-amazon.com/images/I/41yu2qXhXXL.jpg"),
    Bookmodel("Goblet of Fire", "JKR", "Fictiony", "Moderate","https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1554006152l/6.jpg"),
    Bookmodel("Alchemist", "Poulo Choelo", "fantasy", "short","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbb-_kcPc2kDAJZ0In9ZRqyVDz7wkGui5l4g&usqp=CAU"),
    Bookmodel("Maths", "R.D Sharma", "Education", "Lengthy","https://images-na.ssl-images-amazon.com/images/I/A1BOr30eM1L.jpg"),
    Bookmodel("Saphiens", "Novah", "History", "Moderate","https://m.media-amazon.com/images/I/41yu2qXhXXL.jpg"),
    Bookmodel("Atomic Habits", "James Clear", "Personal Development","Moderate","https://images-na.ssl-images-amazon.com/images/I/51-nXsSRfZL._SX328_BO1,204,203,200_.jpg"),
    Bookmodel("The Complete Novels of Sherlock Holmes","Arthur Conan Doyle","Action and Adventure","Large","https://images-na.ssl-images-amazon.com/images/I/41OiDvq9pDS._SX460_BO1,204,203,200_.jpg"),
    Bookmodel("The Power of Your Subconscious Mind","Joseph Murphy","Art Therapy and Relaxation","Moderate","https://images-na.ssl-images-amazon.com/images/I/51QnuLIY2uL._SX322_BO1,204,203,200_.jpg"),
    Bookmodel("The Fault in our Stars","John Green","Romance","Moderate","https://images-na.ssl-images-amazon.com/images/I/51r27MDeQQL._SX324_BO1,204,203,200_.jpg"),
    Bookmodel("The Theory of Everything: The Origin and Fate of the Universe","Stephen Hawking","Autobiography","Short","https://images-na.ssl-images-amazon.com/images/I/51oHUvYzbsL._SX327_BO1,204,203,200_.jpg"),
    Bookmodel("The Diary of a Young Girl","Anne Frank","Autobiography","Moderate","https://images-na.ssl-images-amazon.com/images/I/41zswOGxk9S._SX460_BO1,204,203,200_.jpg"),
    Bookmodel("DESIGNING DATA INTENSIVE APPLICATIONS","Martin Kleppmann","Computers and Internet","Moderate","https://images-na.ssl-images-amazon.com/images/I/51VnVAceVGL._SX383_BO1,204,203,200_.jpg"),
    Bookmodel("World's Greatest Leaders","Wonder House Books","History","Moderate","https://images-na.ssl-images-amazon.com/images/I/41kaFseIjRL._SY465_BO1,204,203,200_.jpg"),
    Bookmodel("Ultimate Spider-Man Vol. 1","Brian Michael Bendis","Comics","Short","https://m.media-amazon.com/images/I/518b7bjotUL.jpg"),
  ] ; 
  
  
  List<Bookmodel> displaylist=List.from(bookslist) ; 
   issuepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("My Issues"),
      ),
      

      body: 
      
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20,left: 30),
            child: Row(
              children: [
                Container(height: 200,
                width: 150,
                decoration: BoxDecoration(
                 image: DecorationImage(image: NetworkImage(displaylist[1].url))
                ),),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(displaylist[1].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(displaylist[1].author,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     SizedBox(
                      height: 5,
                    ),
                    Text("20 Days to Return",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),
                    ),
                    
                  ],
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20,left: 30),
            child: Row(
              children: [
                Container(height: 200,
                width: 150,
                decoration: BoxDecoration(
                 image: DecorationImage(image: NetworkImage(displaylist[3].url))
                ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(displaylist[3].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(displaylist[3].author,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     SizedBox(
                      height: 5,
                    ),
                    Text("10 Days to Return",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),
                    ),
                    
                  ],),
                )
              ],
            ),
          ),


           Container(
            padding: EdgeInsets.only(top: 20,left: 30),
            child: Row(
              children: [
                Container(height: 200,
                width: 150,
                decoration: BoxDecoration(
                 image: DecorationImage(image: NetworkImage(displaylist[8].url))
                ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(displaylist[8].title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(displaylist[8].author,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     SizedBox(
                      height: 5,
                    ),
                    Text("10 Days to Return",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.redAccent),
                    ),
                    
                  ],),
                )
              ],
            ),
          ),
        ],
      ),



      
    ) ; 

    
  }
}