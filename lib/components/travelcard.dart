// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

Widget travelCard(
    String imgUrl, String hotelName, String location, int rating) {
  return Card(
    // ignore: prefer_const_constructors
    margin: EdgeInsets.only(right: 22.0),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imgUrl), fit: BoxFit.cover, scale: 2.0),
        ),
        width: 200.0,
        child: Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  for (var i = 0; i < rating; i++)
                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.start,
                      color: Color.fromARGB(255, 187, 149, 44),
                    ),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    ),
  );
}
