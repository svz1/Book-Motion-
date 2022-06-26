

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/booksmodel.dart';
import 'package:flutter_application_1/screens/Generator.dart';

class search extends StatefulWidget {
     search({Key? key}) : super(key: key);
   

   

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
   
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
  
  void updatelist(String value) {
    setState(() {
      displaylist=bookslist.where((element) => element.title.toLowerCase().contains(value.toLowerCase())).toList();
    });

  }
    
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        
      ),
      body:Padding(padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("Search Here",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
          ),
          SizedBox(height:20),
          TextField(
            onChanged: (value) => updatelist(value),
            style: TextStyle(
              color: Colors.white
            ),
            
            decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 240, 238, 238),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
            hintText: "Search for availability",
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.red
            
          ),
          ),
          SizedBox(height: 20,),
          Expanded(
            
            
            child: displaylist.length==0?Center(child:Text("No results found",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)):ListView.builder(
            itemCount: displaylist.length ,
            itemBuilder: (context, index) => ListTile(
              contentPadding:EdgeInsets.all(8) ,
              title: Text(displaylist[index].title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
              ) ,
              subtitle: Text(displaylist[index].author,style: TextStyle(color: Colors.white)
              ),
              trailing: Text(displaylist[index].duration
              ),
              leading:Image.network(displaylist[index].url
              ) ,
              onTap:() {
               Navigator.push(context,MaterialPageRoute(builder: (context) =>  detailspage(displaylist[index])), 
        ) ; 
              } ,
            ),
            )
            )
            
        ],
      ),) ,
    ) ; 
    
  }
}