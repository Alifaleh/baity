import 'package:flutter/material.dart';
import 'package:diagonal/diagonal.dart';

//widgets
import '../widgets/icons.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.area,
    @required this.age,
    @required this.avenue,
    @required this.nofBed,
    @required this.nofSofa,
    @required this.nofBath,
    @required this.nofMeal,
    @required this.hasPrize,
    @required this.by,
    @required this.agriculture,
    @required this.date,
    @required this.isUrgent,
    @required this.price,
    @required this.location,
    @required this.distance,
    @required this.color,
    @required this.imageUrl,
    @required this.nofImages,
  }) : super(key: key);

  final String area;
  final String age;
  final String avenue;
  final String nofBed;
  final String nofSofa;
  final String nofBath;
  final String nofMeal;
  final bool hasPrize;
  final String by;
  final String agriculture;
  final String date;
  final bool isUrgent;
  final String price;
  final String location;
  final String distance;
  final String imageUrl;
  final Color color;
  final String nofImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            child: Card(
              color: color,
              child: Container(
                height: 160,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffFEE800),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 7,
            right: 9,
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Diagonal(
                      child: Container(
                        width: 50,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xff0A3E66),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff0A3E66),
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      position: Position.TOP_RIGHT,
                      clipHeight: 60.0,
                    ),
                    Container(
                      width: 240,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff0A3E66),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff0A3E66),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(25),
                          )),
                    ),
                  ],
                ),
                Positioned(
                  top: 7,
                  left: 7,
                  child: Diagonal(
                    child: Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xff0A3E66),
                        border: Border.all(
                          width: 1,
                          color: Color(0xff0A3E66),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    position: Position.TOP_RIGHT,
                    clipHeight: 60.0,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 210,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_pin,
                                color: Colors.red, size: 20),
                            SizedBox(width: 10),
                            Text(
                              location,
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Text(
                          distance,
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 30,
            child: Container(
              width: 100,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        by,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      (hasPrize)
                          ? Image.asset(
                              'assets/images/prize.png',
                              width: 40,
                            )
                          : SizedBox(width: 1),
                    ],
                  ),
                  Text(
                    agriculture,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 25,
            child: Text(
              price,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff1866B9),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 22,
            child: Container(
              alignment: Alignment.centerRight,
              width: 130,
              height: 100,
              child: Stack(
                children: [
                  Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xff757575),
                      size: 26,
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 13,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: 25,
                      height: 25,
                      color: Color(0xff1E4874),
                      child: Center(
                        child: Text(nofImages),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 165,
            child: Container(
              alignment: Alignment.centerRight,
              width: 110,
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    area,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Age : $age',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    avenue,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 25,
            child: Container(
              alignment: Alignment.topRight,
              width: 80,
              height: 25,
              child: Text(
                date,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          (isUrgent)
              ? Positioned(
                  top: 40,
                  right: 25,
                  child: Container(
                    width: 80,
                    height: 25,
                    color: Color(0xffC00A09),
                    child: Center(
                      child: Text(
                        "URGENT",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(width: 1),
          Positioned(
            top: 85,
            right: 25,
            child: Container(
              width: MediaQuery.of(context).size.width - 190,
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 30,
                    child: Row(
                      children: [
                        Text(nofBed, style: TextStyle(color: Colors.black)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.king_bed_outlined,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 30,
                    child: Row(
                      children: [
                        Text(nofSofa, style: TextStyle(color: Colors.black)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.weekend_outlined,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 30,
                    child: Row(
                      children: [
                        Text(nofBath, style: TextStyle(color: Colors.black)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.bathtub_outlined,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 30,
                    child: Row(
                      children: [
                        Text(nofMeal, style: TextStyle(color: Colors.black)),
                        SizedBox(width: 5),
                        Icon(
                          CustomIcons.meal_icon,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
