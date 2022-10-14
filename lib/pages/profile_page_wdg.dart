import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget profilePage(){
  return SafeArea(
    child: Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,right: 10,left: 16),
            height: 345,
            width: 400,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.share,color: Colors.blue,),
                    SizedBox(width: 22,),
                    Icon(Icons.settings,size: 28,color: Colors.blue,),
                  ],
                ),
                SizedBox(height: 28,),
                Container(
                  height: 80,
                  width: 400,
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage("https://i.pravatar.cc/300"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                              child: Text("Samandar Ahadjonov",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),
                              ),
                            margin: EdgeInsets.only(left: 12,top: 12),
                          ), //name
                          Container(
                            child: Text("ahadjonovss",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey),
                            ),
                            margin: EdgeInsets.only(left: 12),
                          ), //username

                        ],
                      ) ,//avatar,name,username
                    ],
                  ),
                ),
                SizedBox(height: 18,),
                Text("Software Developer",style: TextStyle(fontSize: 20),),
                SizedBox(height: 12,),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.work,color: Colors.grey,),
                          SizedBox(width: 4,),
                          Text("Najot Ta'lim",style: TextStyle(fontSize: 18),)
                        ],
                      ), //word
                      SizedBox(width: 8,),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.grey,),
                          SizedBox(width: 4,),
                          Text("Tashkent",style: TextStyle(fontSize: 18),)
                        ],
                      ), //city
                    ],
                  ),
                ), //work city
                SizedBox(height: 12,),
                Row(
                  children: [
                    Icon(Icons.insert_link,color: Colors.grey,),
                    SizedBox(width: 4,),
                    Text("https://nmadir.comsomdom",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ],
                ),
                SizedBox(height: 12,),//link
                Row(
                  children: [
                    Icon(Icons.facebook,color: Colors.grey,),
                    SizedBox(width: 4,),
                    Text("@ahadjonovss",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ],
                ), //twitter
                SizedBox(height: 12,),
                Row(
                  children: [
                    Icon(Icons.person,color: Colors.grey,),
                    SizedBox(width: 4,),
                    Text("1 follower",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 395,
            width: 400,
            color: Colors.white,
          )
        ],
      ),
    ),
  );
}