import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakenny/components/shared.dart';

class SortOf extends StatefulWidget {
  const SortOf({Key? key}) : super(key: key);

  @override
  State<SortOf> createState() => _SortOfState();
}

class _SortOfState extends State<SortOf> {
  // List<String> type = [
  //   'Wifi',
  //   'Free Breakfast',
  //   'Kitchen',
  //   'BathRoom',
  //   'Resturant',
  //   'Heater',
  //   'Washing Machine',
  //   'Cooker',
  // ];
  List type = [
    {"title": 'Wifi', "checked": true},
    {"title": 'Free Breakfast', "checked": true},
    {"title": 'Kitchen', "checked": true},
    {"title": 'BathRoom', "checked": true},
    {"title": 'Resturant', "checked": true},
    {"title": 'Heater', "checked": true},
    {"title": 'Washing Machine', "checked": true},
    {"title": 'Cooker', "checked": true},
  ];
  bool value = true;
  int _value = 1;
  double currentValue = 60.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child:
              const Icon(Icons.arrow_back, size: 30, color: Color(0xffF23B5F)),
          onTap: () {
            Get.back();
          },
        ),
        backgroundColor: const Color(0xfff9f9f9),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Sort and Filter',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'In Order Of',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (val) {
                            setState(() {
                              _value = val!;
                            });
                          },
                          activeColor: const Color(0xffF23B5F),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Txt("Price Only", Colors.black, 17, FontWeight.w100),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (val) {
                            setState(() {
                              _value = val!;
                            });
                          },
                          activeColor: const Color(0xffF23B5F),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Txt("Evaluation Only", Colors.black, 17,
                            FontWeight.w100),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _value,
                          onChanged: (val) {
                            setState(() {
                              _value = val!;
                            });
                          },
                          activeColor: const Color(0xffF23B5F),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Txt("Price and Evaluation", Colors.black, 17,
                            FontWeight.w100),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Price Per Month',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Slider(
                  min: 60.0,
                  max: 600.0,
                  value: currentValue,
                  divisions: 60,
                  label: currentValue.toString(),
                  activeColor: Color(0xffF23B5F),
                  inactiveColor: Color(0xffF23B5F),
                  onChanged: (value) {
                    setState(() {
                      currentValue = value;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The Lowest Price',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Container(
                        height: 20.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text('${currentValue.toString()}\$'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Maximum Price',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Container(
                        height: 20.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                          child: Text('600'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Filter More',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: width * 0.9,
                      height: 300,
                      child: ListView.builder(
                          itemCount: type.length,
                          itemBuilder: (context, index) {
                            // bool checked=type[index]['checked']??false;
                            return Check(
                                type[index]['title'], type[index]['checked'],
                                () {
                              print(type[index]['checked']);
                              setState(() {
                                type[index]['checked'] =
                                    !type[index]['checked'];
                              });
                            });
                          })),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
