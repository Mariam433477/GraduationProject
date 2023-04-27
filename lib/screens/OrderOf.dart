import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakenny/components/shared.dart';
import 'package:sakenny/controller/authentication.dart';

class OrderOf extends StatefulWidget {
  const OrderOf({Key? key}) : super(key: key);

  @override
  State<OrderOf> createState() => _OrderOfState();
}

class _OrderOfState extends State<OrderOf> {
  bool wvalue1 = true;
  bool fvalue1 = true;
  bool kvalue1 = true;
  bool bvalue1 = true;
  bool rvalue1 = true;
  bool hvalue1 = true;
  bool mvalue1 = true;
  bool cvalue1 = true;
  double _valslider = 60.0;
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    var valslider = _valslider;
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
                height: 10.0,
              ),
              Slider(
                  min: 60.0,
                  max: 600.0,
                  activeColor: Color(0xffF23B5F),
                  inactiveColor: Color(0xffF23B5F),
                  value: _valslider,
                  onChanged: (value) {
                    setState(() {
                      _valslider = value;
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
                        child: const Center(
                          child: Text('60.0'),
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
                  Check(
                    'Wifi',
                    wvalue1,
                    () {
                      setState(() {
                        wvalue1 = !wvalue1;
                      });
                    },
                  ),
                  Check(
                    'Free Breakfast',
                    fvalue1,
                    () {
                      setState(() {
                        fvalue1 = !fvalue1;
                      });
                    },
                  ),
                  Check(
                    'Kitchen',
                    kvalue1,
                    () {
                      setState(() {
                        kvalue1 = !kvalue1;
                      });
                    },
                  ),
                  Check(
                    'BathRoom',
                    bvalue1,
                    () {
                      setState(() {
                        bvalue1 = !bvalue1;
                      });
                    },
                  ),
                  Check(
                    'Resturant',
                    rvalue1,
                    () {
                      setState(() {
                        rvalue1 = !rvalue1;
                      });
                    },
                  ),
                  Check(
                    'Heater',
                    hvalue1,
                    () {
                      setState(() {
                        hvalue1 = !hvalue1;
                      });
                    },
                  ),
                  Check(
                    'Washing Machine',
                    mvalue1,
                    () {
                      setState(() {
                        mvalue1 = !mvalue1;
                      });
                    },
                  ),
                  Check(
                    'Cooker',
                    cvalue1,
                    () {
                      setState(() {
                        cvalue1 = !cvalue1;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
