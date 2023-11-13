import 'package:flutter/material.dart';

class BottomSheetView extends StatefulWidget {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  State<BottomSheetView> createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomSheet: Container(
        color: Colors.yellow,
        child: BottomSheet(onClosing: () {  }, builder: (BuildContext context) {
          return  Container(
            child: Text("hello"),
          );
        },

        ),
      ),
    );
  }
}
