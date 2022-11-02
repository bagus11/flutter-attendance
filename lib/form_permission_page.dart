import 'package:flutter/material.dart';
import 'package:attendance_frontend/theme/theme.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

class FormPermissionPage extends StatefulWidget {
  const FormPermissionPage({super.key});

  @override
  State<FormPermissionPage> createState() => _FormPermissionPageState();
}

class _FormPermissionPageState extends State<FormPermissionPage> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              // margin: const EdgeInsets.symmetric(
              //   vertical: 20,
              // ),
              child: Column(
                children: [
                  Text(
                    'Form Permission',
                    style: navyTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    minLines: 6,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Description Permit',
                      labelText: 'Description Permit',
                      fillColor: whiteColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: dateInput,
                    decoration: const InputDecoration(
                      hintText: 'Enter Date',
                      labelText: 'Enter Date',
                      icon: Icon(Icons.calendar_today),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateInput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {}
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
