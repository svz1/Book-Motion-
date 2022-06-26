

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/booksmodel.dart';
import 'package:flutter_application_1/models/popularbook_model.dart';
import 'package:flutter_application_1/screens/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static List<Bookmodel> bookslist=[
    Bookmodel("Saphiens", "Novah", "History", "Moderate","https://m.media-amazon.com/images/I/41yu2qXhXXL.jpg"),
    Bookmodel("Goblet of Fire", "JKR", "Fictiony", "Moderate","https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1554006152l/6.jpg"),
    Bookmodel("Alchemist", "Poulo Choelo", "fantasy", "short","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbb-_kcPc2kDAJZ0In9ZRqyVDz7wkGui5l4g&usqp=CAU"),
    Bookmodel("Maths", "R.D Sharma", "Education", "Lengthy","https://images-na.ssl-images-amazon.com/images/I/A1BOr30eM1L.jpg"),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Book Motion"),
      ),
      body: Container(
        child:
        ListView(
          physics:BouncingScrollPhysics(),
          children:[ 
            Padding(
              
              padding:EdgeInsets.only(left:25,top:25),

              child:
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
               
              children:[
              
              Text("Hey User",style: GoogleFonts.lato(
                fontSize: 14,fontWeight: FontWeight.w600,color:Colors.grey
              ),
              
              ),
              Text("Discover Latest Book ",style: GoogleFonts.lato(
                fontSize: 22,fontWeight: FontWeight.w600,color:Colors.black
              ),
              
              ) 
              ] 
              )
            ),
                /*    Container(
             margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              height:39,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: Colors.grey[300]
              ),
              child: Stack(
                children: [
                  TextField(
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color:Colors.black,
                    fontWeight: FontWeight.w600,
                     ),
                     decoration: InputDecoration(
                       contentPadding:EdgeInsets.only(left: 19,right: 15,bottom: 8,),
                       border: InputBorder.none,
                       hintText: "search book",
                       hintStyle: GoogleFonts.openSans(
                         fontSize: 12,
                         color: Colors.grey[800]
                       )
                  
                     ),
                  

                  ),
                  Positioned(
                    right: 0,
                    child:Text("")
                  ),
                  Positioned(
                    right: 9,
                    top: 8,
                    child: Icon(Icons.search,color: Colors.white,)
                    )
                ],
              ),
            ), */
             Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left:25),
              child: DefaultTabController(length: 3, child: 
              TabBar(
                labelPadding: EdgeInsets.all(0),
                indicatorPadding: EdgeInsets.all(0),
                isScrollable: true,
                labelColor: Colors.pinkAccent,
                unselectedLabelColor:Colors.black,
                

                
                tabs: [
              Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 23),
                  child: Text("Recommended"),
                ),
              ),
                Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 23),
                  child: Text("New Arrivals"),
                ),
              ),
                Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 23),
                  child: Text("Your Favourites"),
                ),
              )
              ],)
              ),
            ),
            Container(
              margin:EdgeInsets.only(top: 25),
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left:25,top: 6),
                itemCount: 3,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal, 
                
              
                itemBuilder: (context,index) {
                  return Container(
                    margin: EdgeInsets.only(right: 14),
                  height: 210,
                  width: 153,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(18),
                    image: DecorationImage(image: NetworkImage(displaylist[index+3].url
              )
                    )
                  ),
                ) ; 
              }),
            ),
             Padding(
              
              padding:EdgeInsets.only(left:25,top:25),

              child:
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
               
              children:[
              
              Text("Popular",style: GoogleFonts.lato(
                fontSize: 20,fontWeight: FontWeight.w600,color:Colors.black
              ),
              
              ),
            
               ]
                )
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 25,right: 25,left: 25),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount:5,
              itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(bottom: 19),
                  height: 81,
                  width: MediaQuery.of(context).size.width-50,
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Container(
                        height: 81,
                        width:61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                             image: DecorationImage(image: NetworkImage(displaylist[index].url
              )
                             ),
              
                        color: Colors.grey[200],
                                      ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            bookslist[index].title,style: GoogleFonts.lato(fontSize:18,fontWeight: FontWeight.bold)
                            
                          ),
                          SizedBox(height: 5,),
                          Text(bookslist[index].author,style:GoogleFonts.lato()),
                          Text(bookslist[index].genre)
                        ]
                      )
                    ],
                  ),
                ),
              ) 
              ; 
              
            }),
           


            
          ]
        )
      )
  
        );
  
  } }