import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sakenny/components/shared.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> countriesList = [
    'Egypt',
    'Afghanistan',
    'America',
    'China',
    'Indonesia'
  ];
  String itemSelected = 'Egypt';
  List<String> countriesList1 = [
    'Without Determination',
    'Room',
    'Bed',
    'Apartment',
  ];
  String itemSelected1 = 'Without Determination';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         automaticallyImplyLeading: false,
          backgroundColor: Color(0xffE0E0E0),
          elevation:
           0,leading:Icon(Icons.home, size: 40, color: Color(0xffF23B5F)) ,title:   RichText(text: TextSpan(
            children: [
              TextSpan(
                  text: 'Sake',
                  style: TextStyle(
                      color: Color(0xff25334D),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'nn',
                  style: TextStyle(
                      color: Color(0xffF23B5F),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      color: Color(0xff25334D),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          )),actions: [ Padding(
            padding: const EdgeInsets.only(top: 13,right: 10),
            child: FaIcon(FontAwesomeIcons.list, size: 30, color: Color(0xff25334D)),
          ),],),

      body:
      SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Color(0xffF23B5F),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  width: width * 0.9,
                  height: height * 0.50,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Txt('Search in', Colors.white, 20, FontWeight.normal),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        width: width * 0.8,
                        height: height*0.07,
                        child:
                        DropdownSearch<String>(
                          items: countriesList,
                          popupProps: PopupProps.menu(
                            showSearchBox: true,
                          ),
                          dropdownButtonProps: DropdownButtonProps( color: Color(0xff25334D),),
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            textAlignVertical: TextAlignVertical.center,
                            dropdownSearchDecoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                          ),
                          onChanged: (value) {
                            setState(() {
                              itemSelected = value.toString();
                            });
                          },
                          selectedItem: itemSelected,
                        ),

                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Txt('Search about', Colors.white, 20,
                                FontWeight.normal),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        width: width * 0.8,
                        height: height*0.07,
                        child:DropdownSearch<String>(
                          items: countriesList1,
                          dropdownButtonProps: DropdownButtonProps(color: Color(0xff25334D),),
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            textAlignVertical: TextAlignVertical.center,
                            dropdownSearchDecoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintMaxLines: 10,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                          ),
                          onChanged: (value) {
                            setState(() {
                              itemSelected1 = value.toString();
                            });
                          },
                          selectedItem: itemSelected1,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      MainBtn(
                          Txt('Search', Colors.black, 20, FontWeight.normal),
                          width * 0.8,
                          height * 0.06,
                          5,
                          Colors.white,
                          Colors.white,
                          () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              MainBtn(
                  Txt('Filter By', Colors.grey, 20, FontWeight.normal),
                  width * 0.4,
                  height * 0.07,
                  10,
                  Color(0xffE0E0E0),
                  Color(0xffE0E0E0),
                  () {}),
              SizedBox(
                width: width * 0.07,
              ),
              MainBtn(
                  Txt('Drop Down', Colors.white, 20, FontWeight.normal),
                  width * 0.4,
                  height * 0.07,
                  10,
                  Color(0xffF23B5F),
                  Color(0xffE0E0E0),
                  () {}),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width * 0.9,
            height: 220,
            child: Column(
              children: [
                Container(
                    width: width * 0.9,
                    height: 150,
                    child: FittedBox(
                        child: Image.network("https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                        ),
                        fit: BoxFit.fill,),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5))),
                Column(
                  children: [
                    Container(
                      width: width * 0.9,
                      height:60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  FaIcon(FontAwesomeIcons.locationPin,color: Colors.white,size: 10,),
                                  SizedBox(width: 5),
                                  Txt('Egypt-Tanta', Colors.white,10,
                                      FontWeight.bold),
                                ],
                              ),

                              SizedBox(width: width*0.5,
                                child:
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Txt('شقة للايجار بطنطا 75 متر الدور الاول علوى',
                                      Colors.white, 10, FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Txt('1000EGP/Month', Colors.white, 10,
                                  FontWeight.bold),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Txt('3', Colors.white, 10, FontWeight.bold),
                                      SizedBox(width: 2),
                                      FaIcon(FontAwesomeIcons.bed,
                                          color: Colors.white,size: 10,),
                                    ],
                                  ),
                                  SizedBox(width: 5),
                                  Row(
                                    children: [
                                      Txt('75M', Colors.white, 10, FontWeight.bold),
                                      SizedBox(width: 2),
                                      FaIcon(FontAwesomeIcons.bed,
                                          color: Colors.white,size: 10,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF23B5F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width * 0.9,
            height: 220,
            child: Column(
              children: [
                Container(
                    width: width * 0.9,
                    height: 150,
                    child: FittedBox(
                        child: Image.network(
                            "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.fill),
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5))),
                Column(
                  children: [
                    Container(
                      width: width * 0.9,
                      height:60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  FaIcon(FontAwesomeIcons.locationPin,color: Colors.white,size: 10,),
                                  SizedBox(width: 5),
                                  Txt('Egypt-Tanta', Colors.white,10,
                                      FontWeight.bold),
                                ],
                              ),
                              SizedBox(width: width*0.5,
                                child:
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Txt('سرير للايجار بطنطا 75 متر الدور الاول علوى',
                                      Colors.white, 10, FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Txt('1000EGP/Month', Colors.white, 10,
                                  FontWeight.bold),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Txt('3', Colors.white, 10, FontWeight.bold),
                                      SizedBox(width: 2),
                                      FaIcon(FontAwesomeIcons.bed,
                                        color: Colors.white,size: 10,),
                                    ],
                                  ),
                                  SizedBox(width: 5),
                                  Row(
                                    children: [
                                      Txt('75M', Colors.white, 10, FontWeight.bold),
                                      SizedBox(width: 2),
                                      FaIcon(FontAwesomeIcons.bed,
                                        color: Colors.white,size: 10,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF23B5F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width * 0.9,
            height: 220,
            child: Column(
              children: [
                Container(
                    width: width * 0.9,
                    height: 150,
                    child: FittedBox(
                        child: Image.network(
                            "https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.fill),
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5))),
                Column(
                  children: [
                    Container(
                      width: width * 0.9,
                      height:60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  FaIcon(FontAwesomeIcons.locationPin,color: Colors.white,size: 10,),
                                  SizedBox(width: 5),
                                  Txt('Egypt-Tanta', Colors.white,10,
                                      FontWeight.bold),
                                ],
                              ),
                              SizedBox(width: width*0.5,
                                child:
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Txt('غرفة للايجار بطنطا 75 متر الدور الاول علوى',
                                      Colors.white, 10, FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Txt('1000EGP/Month', Colors.white, 10,
                                  FontWeight.bold),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Txt('3', Colors.white, 10, FontWeight.bold),
                                      SizedBox(width: 2),
                                      FaIcon(FontAwesomeIcons.bed,
                                        color: Colors.white,size: 10,),
                                    ],
                                  ),
                                  SizedBox(width: 5),
                                  Row(
                                    children: [
                                      Txt('75M', Colors.white, 10, FontWeight.bold),
                                      SizedBox(width: 2),
                                      FaIcon(FontAwesomeIcons.bed,
                                        color: Colors.white,size: 10,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF23B5F),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
