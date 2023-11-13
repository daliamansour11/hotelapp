import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../../core/colors_manger.dart';
import '../../../../core/strings_manger.dart';
import '../../../../main.dart';
import '../HomeScreenView.dart';

class showBottomSheetWidget extends StatefulWidget {
  const showBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<showBottomSheetWidget> createState() => _showBottomSheetWidgetState();
}

int min_count = 0;
int room_count = 0;
int adult_count = 0;

late int child_count = 0;

class _showBottomSheetWidgetState extends State<showBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: mq.height * 0.08,
            decoration: BoxDecoration(
                color: ColorsManger.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(18.0),
                  topRight: const Radius.circular(18.0),
                )),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 78.0),
                    child: Text(
                      AppString.rooms_Guests,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.clear,
                          size: 27,
                        )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 0),
                    child: Container(
                      height: mq.height * 0.09,
                      width: mq.width * 0.94,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorsManger.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              AppString.room,
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          width: 2,
                                          color: ColorsManger.lightblue)),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (room_count > min_count ) {
                                          room_count--;
                                        }
                                      });
                                    },
                                    child: Center(child: Icon(Icons.remove)),
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  room_count.toString(),
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          width: 2,
                                          color: ColorsManger.lightblue)),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        room_count++;
                                      });
                                      print("hhhhhhhhhhhhhhh$room_count");
                                    },
                                    child: Center(child: Icon(Icons.add)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 0),
                    child: Container(
                      height: mq.height * 0.36,
                      width: mq.width * 0.94,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorsManger.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, top: 12),
                            child: Text(
                              "ROOM 1",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  AppString.adult,
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, top: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 2,
                                              color: ColorsManger.lightblue)),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if(adult_count>min_count)
                                            adult_count--;
                                          });
                                          print("hhhhhhhhhhhhhhh$adult_count");
                                        },
                                        child: Center(child: Icon(Icons.remove)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "$adult_count",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 2,
                                              color: ColorsManger.lightblue)),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            adult_count++;
                                          });
                                          print("hhhhhhhhhhhhhhh$adult_count");
                                        },
                                        child: Center(child: Icon(Icons.add)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  AppString.children,
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, top: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 2,
                                              color: ColorsManger.lightblue)),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if(child_count>min_count)
                                              child_count--;
                                          });
                                          print("hhhhhhhhhhhhhhh$child_count");
                                        },
                                        child: Center(child: Icon(Icons.remove)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "${child_count.toString()}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 2,
                                              color: ColorsManger.lightblue)),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            child_count++;
                                          });
                                          print("hhhhhhhhhhhhhhh$child_count");
                                        },
                                        child: Center(child: Icon(Icons.add)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Text(
                                  AppString.age_of_child1,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                    right: 6.0,
                                  ),
                                  child: Text(
                                    "14 years",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Text(
                                  AppString.age_of_child2,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: Text(
                                    "14 years",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 0),
                      child: Container(
                        height: mq.height * 0.10,
                        width: mq.width * 0.94,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorsManger.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, top: 6, right: 5),
                                      child: Text(
                                        AppString.pet_friend,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6.0),
                                      child: Icon(
                                        Icons.error_outline,
                                        size: 25,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    AppString.showpet_friend,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                            FlutterSwitch(
                              height: 34.0,
                              width: 60.0,
                              padding: 4.0,
                              toggleSize: 25.0,
                              borderRadius: 10.0,
                              activeColor: ColorsManger.red,
                              value: status,
                              onToggle: (value) {
                                setState(() {
                                  status = value;
                                });
                              },
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 78,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23.0, right: 20.0),
                    child: Container(
                      height: mq.height * 0.06,
                      width: mq.width * 0.87,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorsManger.white),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            room_count = room_count;
                            child_count = child_count;
                            adult_count=adult_count;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(

                                  builder: (context) => HomeScreenView(room_count:room_count, child_count: child_count,
                                    adult_count: adult_count,)));
                        },
                        child: Text(
                          AppString.apply_btn,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        style: ElevatedButtonTheme.of(context).style,
                      ),
                    ),
                  )
                ]),
          )
        ]);
  }
}
