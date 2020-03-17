import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main()=>runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Date Time Picker Example"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(" ${_selectedDate??'Selected Date'}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            RaisedButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1980, 1, 1),
                    maxTime: DateTime(3000, 12, 31),
                    onConfirm: (date) {setState(() {
                      _selectedDate=DateFormat("yyyy-MM-dd").format(date);
                    });},
                    locale: LocaleType.en);},child: Text("Show Date picker"),
            )

          ],
        )
      )
    );
  }
}
/*       Text("Selected Date is : ${_selecteddate??''}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            RaisedButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1980, 1, 1),
                    maxTime: DateTime(3000, 12, 31),
                onConfirm: (date) {setState(() {
                  _selecteddate="${date.year}-${date.month}-${date.day}";
                });},
                currentTime: DateTime.now(), locale: LocaleType.en);},child: Text("Show Date picker"),
            )*/

/*     Text("Selected Time is : ${_selecteddate??''}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            RaisedButton(
              onPressed: () {
                DatePicker.showTimePicker(context,
                    showTitleActions: true,

                    onConfirm: (time) {setState(() {
                      _selecteddate="${time.hour}:${time.minute}:${time.second}";
                    });},
                    currentTime: DateTime.now(), locale: LocaleType.en);},child: Text("Show Date picker"),
            ),*/



/*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(" ${_selectedDate??'Selected Date'}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            RaisedButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1980, 1, 1),
                    maxTime: DateTime(3000, 12, 31),
                    onConfirm: (date) {setState(() {
                      _selectedDate=DateFormat("yyyy-MM-dd").format(date);
                    });},
                    locale: LocaleType.en);},child: Text("Show Date picker"),
            )

          ],
        )*/
/*
            Text("Selected Date and Time is : ${_selecteddate??''}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            RaisedButton(
              onPressed: () {
                DatePicker.showDateTimePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1980, 1, 1),
                    maxTime: DateTime(3000, 12, 31),
                    onConfirm: (time) {setState(() {
                      _selecteddate="${time.hour}:${time.minute}:${time.second}";
                    });},
                    currentTime: DateTime.now(), locale: LocaleType.en);},child: Text("Show Date picker"),
            ),*/