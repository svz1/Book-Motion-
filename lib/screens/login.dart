import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/homepage.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  bool isRememberMe = false;

  Widget buildEmail(){
  return Column(
    crossAxisAlignment:  CrossAxisAlignment.start,
    children: <Widget>[
      
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xffff255c)
            ),
            hintText: "Email",
            hintStyle: TextStyle(
              color: Colors.black38
             )
           ),
         ),
       )
     ],
   );
 }

 Widget buildPassword(){
   return Column(
     crossAxisAlignment:  CrossAxisAlignment.start,
     children: <Widget>[
      
       SizedBox(height: 10),
       Container(
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 6,
               offset: Offset(0,2)
             )
           ]
         ),
         height: 60,
         child: TextField(
           obscureText: true,
           style: TextStyle(
             color: Colors.black87
           ),
           decoration: InputDecoration(
             border: InputBorder.none,
             contentPadding: EdgeInsets.only(top: 14),
             prefixIcon: Icon(
               Icons.key,
               color: Color(0xffff255c)
             ),
             hintText: "Password",
             hintStyle: TextStyle(
               color: Colors.black38
             )
           ),
          ),
       ) 
     ],
   );
 }

 Widget buildForgotPass(){
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print("Forgot Password"), 
      padding: EdgeInsets.only(right: 0),
      child: Text(
        'Forgot Password',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  ) ; 
}

 Widget buildRememberCb(){
   return Container(
     height: 20,
     child: Row(
       children: <Widget>[
         Theme(
           data: ThemeData(unselectedWidgetColor: Colors.white),
           child: Checkbox(
             value: isRememberMe,
             checkColor: Colors.green,
             activeColor: Colors.white,
             onChanged: (value) {
               setState(() {
                 isRememberMe = true;
               });
             },
           ),
         ),
         Text(
           'Remember Me',
           style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget buildLogin(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: ()  { Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()), 
        ) ; }, 
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xffff255c),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }

  Widget buildSignup(){
    return GestureDetector(
      onTap: () => print('Sign Up pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            )
          ]
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x55ff255c),
                      Color(0x99ff255c),
                      Color(0xccff255c),
                      Color(0xffff255c),
                      
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Book Motion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 170),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    buildForgotPass(),
                    buildRememberCb(),
                    buildLogin(),
                    buildSignup()
                  ],
                ),
                ),
              )
            ],
          ),
        )
     )
);

}
}