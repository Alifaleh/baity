import 'package:flutter/material.dart';

//widgets
import '../widgets/main_list_item.dart';
import '../widgets/secondary_tab_indecator.dart';
import '../widgets/item_card.dart';

class ListTab extends StatefulWidget {
  @override
  _ListTabState createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
  List<Widget> items = [
    MainListItem(
      title:
          "Great Opportunity for LAND  in Karada this is 2 lines Shows only ( 60 Letter )",
      subCataogory: "( Subcataogory ) for ( Sale or Rent ) ",
      category: "( Catagory )  ( Area  m2 ) ",
      city: 'Distrct - City',
      price: '100,963,333,333  IQD',
      userImage:
          'http://square-vn.com/app/dscms/assets/images/person-3.jpg?v=1584725519',
      userName: 'High Towers for real Estate Co. Ltd.',
      userDiscription: '( Agent or Owner ) Distrct - City',
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryTabIndecator(isActive: true),
        SecondaryTabIndecator(isActive: false),
        SecondaryTabIndecator(isActive: false),
        SecondaryTabIndecator(isActive: false),
        SecondaryTabIndecator(isActive: false),
      ],
    ),
    ItemCard(
      area: "Farm ( 52,000 m² ) ",
      age: "32",
      avenue: "Avenue Name ",
      nofBed: "10",
      nofSofa: "28",
      nofBath: "28",
      nofMeal: "22",
      hasPrize: false,
      by: "by Owner",
      agriculture: "Agriculture",
      date: "21.11.2019",
      distance: "( 1,875 km )",
      isUrgent: true,
      location: "District - City",
      price: "100,963,333,333   JOD",
      color: Color(0xffF4F0C3),
      imageUrl:
          "https://specials-images.forbesimg.com/imageserve/1026205392/960x0.jpg?fit=scale",
      nofImages: "22",
    ),
    ItemCard(
      area: "Farm ( 52,000 m² ) ",
      age: "32",
      avenue: "Avenue Name ",
      nofBed: "10",
      nofSofa: "28",
      nofBath: "28",
      nofMeal: "22",
      hasPrize: true,
      by: "by Owner",
      agriculture: "Agriculture",
      date: "21.11.2019",
      distance: "( 1,875 km )",
      isUrgent: false,
      location: "District - City",
      price: "100,963,333,333   JOD",
      color: Colors.white,
      imageUrl:
          "https://specials-images.forbesimg.com/imageserve/1026205392/960x0.jpg?fit=scale",
      nofImages: "22",
    ),
    ItemCard(
      area: "Farm ( 52,000 m² ) ",
      age: "32",
      avenue: "Avenue Name ",
      nofBed: "10",
      nofSofa: "28",
      nofBath: "28",
      nofMeal: "22",
      hasPrize: false,
      by: "by Owner",
      agriculture: "Agriculture",
      date: "21.11.2019",
      distance: "( 1,875 km )",
      isUrgent: false,
      location: "District - City",
      price: "100,963,333,333   JOD",
      color: Color(0xffF4F0C3),
      imageUrl:
          "https://specials-images.forbesimg.com/imageserve/1026205392/960x0.jpg?fit=scale",
      nofImages: "22",
    ),
    ItemCard(
      area: "Farm ( 52,000 m² ) ",
      age: "32",
      avenue: "Avenue Name ",
      nofBed: "10",
      nofSofa: "28",
      nofBath: "28",
      nofMeal: "22",
      hasPrize: true,
      by: "by Owner",
      agriculture: "Agriculture",
      date: "21.11.2019",
      distance: "( 1,875 km )",
      isUrgent: true,
      location: "District - City",
      price: "100,963,333,333   JOD",
      color: Colors.white,
      imageUrl:
          "https://specials-images.forbesimg.com/imageserve/1026205392/960x0.jpg?fit=scale",
      nofImages: "22",
    ),
    ItemCard(
      area: "Farm ( 52,000 m² ) ",
      age: "32",
      avenue: "Avenue Name ",
      nofBed: "10",
      nofSofa: "28",
      nofBath: "28",
      nofMeal: "22",
      hasPrize: true,
      by: "by Owner",
      agriculture: "Agriculture",
      date: "21.11.2019",
      distance: "( 1,875 km )",
      isUrgent: false,
      location: "District - City",
      price: "100,963,333,333   JOD",
      color: Color(0xffE0E0E0),
      imageUrl:
          "https://specials-images.forbesimg.com/imageserve/1026205392/960x0.jpg?fit=scale",
      nofImages: "22",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return items[index];
      },
      itemCount: items.length,
    );
  }
}
