import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'shared.dart';

<<<<<<< HEAD
Widget mainBox(String image, String location, String price, int bedNamber,
    int meters, String subTitle) {
  return SizedBox(
    width: width * 0.9,
    height: 220,
    child: Column(
      children: [
        Container(
            width: width * 0.9,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5), topLeft: Radius.circular(5)),
              image:
                  DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
            )),
        Column(
          children: [
            Container(
              width: width * 0.9,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: Color(0xffF23B5F),
=======
Widget mainBox (String image,String location,String price,String subTitle){
  return
    SizedBox(
      width: width * 0.9,
      height: 220,
      child: Column(
        children: [
          Container(
              width: width * 0.9,
              height: 150,
              decoration:
              BoxDecoration(
                borderRadius: BorderRadius.only(topRight:Radius.circular(5),topLeft:Radius.circular(5)
                ),
                image: DecorationImage(image:NetworkImage(image),fit:BoxFit.fill),

              )),
          Column(
            children: [
              Container(
                width: width * 0.9,
                height:60,

                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(5),bottomLeft:Radius.circular(5)
                  ),
                  color: Color(0xffF23B5F),
                ),
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
                            Txt(location, Colors.white,10,
                                FontWeight.bold),
                          ],
                        ),

                        SizedBox(width: width*0.5,
                          child:
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Txt(subTitle,
                                Colors.white, 10, FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Txt('$price EGP/Month', Colors.white, 10,
                            FontWeight.bold),
                        // Row(
                        //   children: [
                        //     Row(
                        //       children: [
                        //         Txt('$bedNamber', Colors.white, 10, FontWeight.bold),
                        //         const SizedBox(width: 2),
                        //         const FaIcon(FontAwesomeIcons.bed,
                        //           color: Colors.white,size: 10,),
                        //       ],
                        //     ),
                        //     SizedBox(width: 5),
                        //     Row(
                        //       children: [
                        //         Txt('$meters M', Colors.white, 10, FontWeight.bold),
                        //         const SizedBox(width: 2),
                        //         FaIcon(FontAwesomeIcons.bed,
                        //           color: Colors.white,size: 10,),
                        //       ],
                        //     )
                        //   ],
                        // ),
                      ],
                    )
                  ],
                ),
>>>>>>> da54417f197b84a8b59cfe828034c555e33c2bd9
              ),
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
                          FaIcon(
                            FontAwesomeIcons.locationPin,
                            color: Colors.white,
                            size: 10,
                          ),
                          SizedBox(width: 5),
                          Txt(location, Colors.white, 10, FontWeight.bold),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child:
                              Txt(subTitle, Colors.white, 10, FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Txt('$price EGP/Month', Colors.white, 10,
                          FontWeight.bold),
                      Row(
                        children: [
                          Row(
                            children: [
                              Txt('$bedNamber', Colors.white, 10,
                                  FontWeight.bold),
                              const SizedBox(width: 2),
                              const FaIcon(
                                FontAwesomeIcons.bed,
                                color: Colors.white,
                                size: 10,
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                          Row(
                            children: [
                              Txt('$meters M', Colors.white, 10,
                                  FontWeight.bold),
                              const SizedBox(width: 2),
                              FaIcon(
                                FontAwesomeIcons.bed,
                                color: Colors.white,
                                size: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
<<<<<<< HEAD
=======
 Widget dropDown(List<String>items,change ,bool showSearchBox,Color bgcolor , Color iconColor , Color TexbtColor,double w){
  return
    Container(
      decoration: BoxDecoration(
        color: bgcolor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        ),
      ),
      width: w,
      height: height*0.08,
      child:DropdownSearch<String>(
        items: items,
        popupProps: PopupProps.menu(
          showSearchBox: showSearchBox,
        ),
        dropdownButtonProps: DropdownButtonProps(color:iconColor,icon: FaIcon(FontAwesomeIcons.caretDown,size: 30,)),
        dropdownDecoratorProps: DropDownDecoratorProps(
>>>>>>> da54417f197b84a8b59cfe828034c555e33c2bd9

Widget dropDown(List<String> items, change, bool showSearchBox, Color bgcolor,
    Color iconColor, Color TextColor, double w) {
  return Container(
    decoration: BoxDecoration(
      color: bgcolor,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        topRight: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
        bottomRight: Radius.circular(5.0),
      ),
<<<<<<< HEAD
    ),
    width: w,
    height: height * 0.07,
    child: DropdownSearch<String>(
      items: items,
      popupProps: PopupProps.menu(
        showSearchBox: showSearchBox,
      ),
      dropdownButtonProps: DropdownButtonProps(
          color: iconColor,
          icon: FaIcon(
            FontAwesomeIcons.caretDown,
            size: 30,
          )),
      dropdownDecoratorProps: DropDownDecoratorProps(
        textAlignVertical: TextAlignVertical.center,
        dropdownSearchDecoration: InputDecoration(
            enabledBorder: InputBorder.none,
            hintMaxLines: 10,
            // suffixStyle:TextStyle(color:TextColor) ,
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
      onChanged: change,
      selectedItem: items[0],
    ),
  );
}
=======
    );
 }
class DropDown extends StatelessWidget {
  final double width;
  final Color color;
  final List items;
  final Function change;
  const DropDown({Key? key, required this.width, required this.items, required this.change,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var border=OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 3, color:Colors.white));
    return Container(width: width,
      margin: EdgeInsets.only(bottom: 15),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(dropdownColor:Colors.white,
            decoration: InputDecoration(
              filled: true,
                fillColor: Colors.white,
                focusColor: Colors.white, hoverColor: Colors.white,
                enabledBorder: border, focusedBorder: border, border:border,
                contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 17)
            ),
            hint: Txt(items.isEmpty?"":items[0]["name"],color,20,FontWeight.normal),
            icon: SizedBox(width: 25,
                child:FaIcon(FontAwesomeIcons.caretDown,size: 30,color: Color(0xff25334D),)),
            items: items.map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem<String>(value: "${e['id']}",
                  child: Container(width: width-35,
                    alignment: Alignment.topLeft,
                    // child: Txt(e[itemName],const Color(0xff8b8d9e), 20, FontWeight.w500),
                    child: Txt(e["name"],color,20,FontWeight.normal),
                  ));
            }).toList(),
            onChanged: (val){
              change(val);
            }
        ),

      ),
    );
  }
}
>>>>>>> da54417f197b84a8b59cfe828034c555e33c2bd9
