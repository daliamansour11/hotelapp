import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hotels/core/colors_manger.dart';
import 'package:hotels/core/strings_manger.dart';
import 'package:hotels/core/values_manger.dart';

import '../../../core/assets_manger.dart';
import '../../../main.dart';
import 'home_widget/HomeWidget.dart';
import 'home_widget/ShowBottomSheet.dart';
class HomeScreenView extends StatefulWidget {
 final int room_count;
 final  int adult_count;
 final int child_count;
  const HomeScreenView({required this.room_count,required this.child_count,required this.adult_count});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

List<String> Booking_deatils = [

];
var valueItem;

var status = false;
var SelectedCountry ;

TextEditingController cityController = TextEditingController();
TextEditingController dateRanageController = TextEditingController();

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    void _show(BuildContext ctx) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
          builder: (_) => StatefulBuilder(
              builder: (BuildContext context, setStateBTS) => Container(
          height: MediaQuery.of(context).size.height * 0.91,
          decoration: new BoxDecoration(
              color: Colors.grey[300],
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(18.0),
              topRight: const Radius.circular(18.0),
            ),
          ),
          child:
              showBottomSheetWidget(),
        ))).whenComplete(() {

      });
}


    mq = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            height: mq.height,
            width: mq.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.background_img),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(top: 240.0),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          right: AppPadding.p180, left: AppPadding.p20),
                      child: ClipPath(
                        child: Container(
                          height: mq.height * .06,
                          width: mq.width * 0.55,
                          decoration: BoxDecoration(
                              color: ColorsManger.blue,
                              border: Border(
                                  right: BorderSide(
                                      color: ColorsManger.white, width: 4.0))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: AppPadding.p47),
                            child: Center(
                                child: Text(
                              AppString.hotel_search,
                              style: Theme.of(context).textTheme.titleMedium,
                            )),
                          ),
                        ),
                        clipper: ClipClipper(),
                      )),
                  SizedBox(
                    height: 10,
                  ),

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:230),
                        child: Container(
                          height: mq.height*0.20,
                          width: mq.width*0.93,
                          decoration:BoxDecoration(
                              color: ColorsManger.darkprimary,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16) )
                          ),
                          child: Center(
                            child: Positioned(
                                top: 200,
                              bottom: 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 70.0),
                                    child: Center(child: Text(AppString.find_hotel,style:
                                    Theme.of(context).textTheme.titleMedium,)),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 70.0),
                                    child: Icon(Icons.search,size: AppSize.s40,color: ColorsManger.white,),
                                  ),
                                ],
                              )
                        ),
                          ),
                      )),
                      Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                              height: mq.height * 0.41,
                              width: mq.width * 0.93,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        ColorsManger.blue,
                                        ColorsManger.blue,
                                        ColorsManger.semitblue,
                                        ColorsManger.semitblue,
                                        ColorsManger.blue,
                                        ColorsManger.lightblue,
                                        ColorsManger.lightblue,
                                      ],
                                      stops: const [
                                        0.3,
                                        0.2,
                                        0.3,
                                        0.3,
                                        0.2,
                                        0.7,
                                        1.0
                                      ])),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: AppPadding.p13 ,left:AppPadding.p8 , right: AppPadding.p8),
                                    child: Container(
                                      height: mq.height * 0.08,
                                      width: mq.width * 0.93,
                                      decoration: BoxDecoration(
                                        color: ColorsManger.white,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: TextFormField(
                                          controller: cityController,
                                          obscureText: false,
                                          style: TextStyle(color: ColorsManger.blue),
                                          onChanged: (value) {
                                            setState(() {
                                              value = cityController.text;
                                            });
                                          },
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorsManger.blue,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(18)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorsManger.blue,
                                                // width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(18)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: ColorsManger.lightblue,
                                                  width: 2),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(18)),
                                            ),
                                            // labelText: "UserEmail", //babel text
                                            hintText: AppString.select_city,
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 1, horizontal: 8),
                                            //hint text
                                            //prefix iocn
                                            hintStyle: TextStyle(
                                                color: ColorsManger.lightGrey),
                                            //hint text style
                                            labelStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.redAccent), //label style
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: AppPadding.p13 ,left:AppPadding.p8 , right: AppPadding.p8),

                                    child: Container(
                                      height: mq.height * 0.08,
                                      width: mq.width * 0.93,
                                      decoration: BoxDecoration(
                                        color: ColorsManger.white,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: TextFormField(
                                          controller: cityController,
                                          obscureText: false,
                                          style: TextStyle(color: ColorsManger.blue),
                                          onChanged: (value) {
                                            setState(() {
                                              value = cityController.text;
                                            });
                                          },
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorsManger.blue,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(18)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ColorsManger.blue,
                                                // width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(18)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: ColorsManger.lightblue,
                                                  width: 2),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(18)),
                                            ),
                                            // labelText: "UserEmail", //babel text
                                            hintText: "Select Date...",
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 1, horizontal: 8),
                                            //hint text
                                            //prefix iocn
                                            hintStyle: TextStyle(
                                                color: ColorsManger.lightGrey),
                                            //hint text style
                                            labelStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.redAccent), //label style
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(

                                    padding: const EdgeInsets.only(
                                        top: AppPadding.p13 ,left:AppPadding.p8 , right: AppPadding.p8),
                                    child: Container(
                                      height: mq.height*0.08,
                                      width: mq.width * 0.93,
                                      decoration: BoxDecoration(
                                          color: ColorsManger.white,
                                          borderRadius: BorderRadius.circular(15)

                                      ),
                                      child: DropdownButtonFormField(
                                        isDense: false,
                                        itemHeight: mq.height*0.081,
                                        hint: Padding(
                                          padding: const EdgeInsets.only(left: AppPadding.p38),
                                          child: Center(child: Text(AppString.select_Nationality,
                                            textAlign: TextAlign.center,style:Theme.of(context).textTheme.labelMedium,)),
                                        ),
                                        dropdownColor: Colors.white,

                                        value: SelectedCountry,
                                        items:["Egypt","Libya""Kuwait","Iraq","Germany",'Italy']
                                            .map((e) =>
                                            DropdownMenuItem(
                                              child: Text(" $e",style: Theme.of(context).textTheme.labelMedium,),
                                              value: e,
                                            )).toList(),
                                        onChanged: (value) {
                                          setState
                                            ((){
                                            SelectedCountry= value!;

                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(

                                      padding: const EdgeInsets.only(
                                          top: AppPadding.p13 ,left:AppPadding.p8 , right: AppPadding.p8),
                                      child: Container(
                                        height: mq.height*0.08,
                                        width: mq.width * 0.93,
                                        decoration: BoxDecoration(
                                            color: ColorsManger.white,
                                            borderRadius: BorderRadius.circular(15)

                                        ),
                                        child: Container(
                                          child: DropdownButtonFormField(

                                            decoration: InputDecoration(
                                              labelText: 'BookingDetails',
                                              labelStyle: const TextStyle(),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(5.0)),
                                              contentPadding: const EdgeInsets.only(left: 5.0),),
                                            value: SelectedCountry,
                                            isExpanded: true,
                                            items:
                                            Booking_deatils.map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(" $value",style: Theme.of(context).textTheme.labelMedium,),);
                                            }).toSet().toList(),
                                            onChanged: (value) {_show(context);
                                              _show(context);
                                            },
                                            onTap: (){
                                              _show(context);
                                            },
                                          ),
                                        ),

                                      ))],
                              ),
                            )),
                      ),
                    ],
                  )




                ])


                )
            ));
  }
}

