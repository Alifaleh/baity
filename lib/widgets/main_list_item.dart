import 'package:flutter/material.dart';

class MainListItem extends StatelessWidget {
  const MainListItem({
    Key key,
    @required this.title,
    @required this.subCataogory,
    @required this.category,
    @required this.city,
    @required this.price,
    @required this.userImage,
    @required this.userName,
    @required this.userDiscription,
  });
  final String title;
  final String subCataogory;
  final String category;
  final String city;
  final String price;
  final String userImage;
  final String userName;
  final String userDiscription;

  @override
  Widget build(BuildContext context) {
    final titleToShow =
        (title.length > 60) ? '${title.substring(0, 60)}...' : title;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff231A8C),
                  Color(0xff8E2EBB),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 200,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0B3352),
                  Color(0x448E2EBB),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1544006659-f0b21884ce1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80',
                      width: 140,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width - 170,
                          child: Text(
                            titleToShow,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 170,
                          color: Color(0xffBDBDBD),
                        ),
                        SizedBox(height: 10),
                        Text(
                          subCataogory,
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          category,
                          style: TextStyle(fontSize: 11),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Colors.red,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              city,
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Color(0xffBDBDBD),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffD0D0D0),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          userImage,
                          width: 35,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          userDiscription,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(),
                    Image.asset(
                      'assets/images/prize.png',
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
