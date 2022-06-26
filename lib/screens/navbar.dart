

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/Search.dart';
import 'package:flutter_application_1/screens/bookingspage.dart';
import 'package:flutter_application_1/screens/homepage.dart';
import 'package:flutter_application_1/screens/issuepage.dart';
import 'package:flutter_application_1/screens/paymentpage.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text("User"), accountEmail: Text("user123@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network("https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/87-512.png"),
            ),
          ),
          decoration: BoxDecoration(
            
            image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1512850183-6d7990f42385?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGFyayUyMG1vZGUlMjB3YWxscGFwZXJ8ZW58MHx8MHx8&w=1000&q=80"),
            fit: BoxFit.cover),
          ),
          ),
        ListTile(
          leading:Icon(Icons.home) ,
          title: Text("Home"),
          onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>  HomePage()), 
        ) ;  },
         ),


         ListTile(
          leading:Icon(Icons.search) ,
          title: Text("Search Books"),
          onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>  search()), 
        ) ; 
        }
        ),


        ListTile(
          leading:Icon(Icons.access_time) ,
          title: Text("My issues"),
          onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>  issuepage()), 
        ) ; }, 
        ),
        
        ListTile(
          leading:Icon(Icons.book) ,
          title: Text("My Bookings"),
          onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>  bookingspage()), 
        ) ; }
        ),

        ListTile(
          leading:Icon(Icons.credit_card) ,
          title: Text("My Payments"),
          onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>  paymentpage()), 
        ) ; }
        ),
        
        ],
      ),
    ) ; 
    
  }
}


