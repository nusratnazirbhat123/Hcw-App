import 'dart:convert';

import 'package:hcw_app/network/api_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TimeSlots extends StatefulWidget {
  @override
  TimeSlotsPageState createState() => TimeSlotsPageState();
}

class TimeSlotsPageState extends State<TimeSlots> {
  TextEditingController controller = TextEditingController();

  bool isChecked = false;
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();
  String contents = '';

  void savecontents(){
    setState(() {
      contents = controller.text;
    });
  }

  void handleUpdate(String id){
    final ApiService apiservice = ApiService();
    apiservice.UpdateTimeSlot('64f8287ed2fb4577d7b7a530');
  }

  void toggleCheckbox(bool value) {
    setState(() {
      isChecked = value;
    });
  }

  void deleteTime() async {
    final String id = '64f8287ed2fb4577d7b7a530';
    final bool success = await ApiService.DeleteTimeSlot(id);
    if (success) {
      print('Time Slot Deleted Successfully');
    } else {
      print('Failed to Delete');
    }
  }

  Future<void> _selectstartTime(BuildContext context) async {
    TextEditingController StartTimeController = TextEditingController();
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: startTime,
    );

    if (picked != null && picked != startTime) {
      setState(() {
        startTime = picked;
        StartTimeController.text = startTime.format(context);
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    TextEditingController EndTimeController = TextEditingController();
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: endTime,
    );

    if (picked != null && picked != endTime) {
      setState(() {
        endTime = picked;
        EndTimeController.text = endTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                    SizedBox(width: 12.0),
                    Text(
                      'Available Time Slots',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Proxima Nova'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 570.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Add Time Slots',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              String id = "64f9f570acf9baeb261eea7f";
                              //  String startTime = "";
                              //  String endTime = "";
                              http.Response response = await ApiService.addTimeSlot(
                                  id,
                                  "Wed Sep 11 2023 12:45:25 GMT+0530 (India Standard Time)",
                                  "Wed Sep 11 2023 2:45:25 GMT+0530 (India Standard Time)");
                              if (response.statusCode == 200) {
                                Map<String, dynamic> responseData =
                                    json.decode(response.body);
                                    print('hello');
                                print(response.body?.toString());

                              } else {
                                Map<String, dynamic> responseData =
                                    json.decode(response.body);
                                String errorMessage = responseData['error'];
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(60.0, 28.0),
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text('+Add'),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 13.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (toggleCheckbox) {},
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                        ),
                        const Text(
                          'Mon',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        OutlinedButton(
                            onPressed: () => _selectstartTime(context),
                            child: Column(
                              children: [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${startTime.format(context)}',
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            )),
                        OutlinedButton(
                          onPressed: () => _selectEndTime(context),
                          child: Column(children: [
                            Text(
                              'End',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 9),
                            ),
                            Text(
                              '${endTime.format(context)}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        GestureDetector(
                            onTap: () async {
                              deleteTime();
                            },
                            child: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ))),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 13.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (toggleCheckbox) {},
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                        ),
                        const Text(
                          'Tue',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        OutlinedButton(
                            onPressed: () => _selectstartTime(context),
                            child: Column(
                              children: [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${startTime.format(context)}',
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            )),
                        OutlinedButton(
                          onPressed: () => _selectEndTime(context),
                          child: Column(children: [
                            Text(
                              'End',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 9),
                            ),
                            Text(
                              '${endTime.format(context)}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            deleteTime();
                          },
                          child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 13.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (toggleCheckbox) {},
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                        ),
                        const Text(
                          'Wed',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        OutlinedButton(
                            onPressed: () => _selectstartTime(context),
                            child: Column(
                              children: [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${startTime.format(context)}',
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            )),
                        OutlinedButton(
                          onPressed: () => _selectEndTime(context),
                          child: Column(children: [
                            Text(
                              'End',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 9),
                            ),
                            Text(
                              '${endTime.format(context)}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            deleteTime();
                          },
                          child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 13.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                        ),
                        const Text(
                          'Thu',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        OutlinedButton(
                            onPressed: () => _selectstartTime(context),
                            child: Column(
                              children: [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${startTime.format(context)}',
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            )),
                        OutlinedButton(
                          onPressed: () => _selectEndTime(context),
                          child: Column(children: [
                            Text(
                              'End',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 9),
                            ),
                            Text(
                              '${endTime.format(context)}',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                        ),
                        GestureDetector(
                          onTap: () {
                            deleteTime();
                          },
                          child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 130)),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          'Sun',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Unavailable',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 3.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            handleUpdate('64f8287ed2fb4577d7b7a530');
                            savecontents();
                            controller.clear();
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(300.0, 35.0),
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
