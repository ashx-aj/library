// ignore_for_file: prefer_const_constructors

import 'package:bookstore/util.dart';
import 'package:flutter/material.dart';
import 'book.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List blist = Book.books;
    double screen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 30.h, left: 28, right: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "20",
                style: TextStyle(fontSize: 38),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Thu"),
                  Text("April 2023"),
                ],
              ),
              SizedBox(width: 240.w),
              //Icon(Icons.qr_code_2_outlined),
              Container(
                width: 30.w,
                height: 20.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, left: 32),
          child: Row(
            children: [
              Text(
                "New Arrivals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              SizedBox(
                width: 180.w,
              ),
              Text(
                "View All>",
                style: TextStyle(color: Colors.yellow),
              )
            ],
          ),
        ),
        Container(
          height: 270.h,
          width: 690.w,
          child: Center(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => carditem(blist[index]),
              itemCount: blist.length,
              separatorBuilder: (context, _) => SizedBox(width: 5.w),
            ),
          ),
        ),
        Container(
          height: 624,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                bottom: 0,
                child: Container(
                    alignment: Alignment(0, 0)
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 174, 60, 60),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: screen / 8,
                    child: _bootombar(context)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: screen / 2.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 6, spreadRadius: 2)
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.w, top: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My books",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        verticalheight(10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                blist[0].url,
                                height: 160.h,
                                width: 95.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(blist[0].name),
                                  Text(blist[0].author),
                                  verticalheight(5),
                                  Text(
                                    "Return until 25.03.20",
                                    style: TextStyle(color: Colors.yellow),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Row _bootombar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      /* crossAxisAlignment: CrossAxisAlignment.end,*/
      children: [
        _bottomicon(context, Icons.home, "Home"),
        _bottomicon(context, Icons.search, "Search"),
        _bottomicon(context, Icons.book, "Library"),
        _bottomicon(context, Icons.shopping_cart, "Cart"),
      ],
    );
  }

  Column _bottomicon(BuildContext context, IconData ic, String str) {
    return Column(
      children: [
        Icon(ic),
        Text(
          str,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget carditem(Book b) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(children: [
        Image.asset(
          fit: BoxFit.fill,
          b.url,
          height: 180.h,
          width: 100.w,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, left: 5.w),
          child: Text(
            b.name,
            style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Text(b.author)
      ]),
    );
  }
}
