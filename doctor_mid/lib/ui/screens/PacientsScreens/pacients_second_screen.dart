import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PacientsSecondScreen extends StatefulWidget {
  @override
  _PacientsSecondScreenState createState() => _PacientsSecondScreenState();
}

class _PacientsSecondScreenState extends State<PacientsSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Profile'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.notifications_outlined,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComponentSizedBox.topMargin(size: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.chat,
                    size: 40,
                    color: ConstantColor.APP_COLOR,
                  ),
                ),
                //ComponentSizedBox.topMargin(size: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU',
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    ComponentSizedBox.sideMargin(size: 30),
                    ComponentText.buildTextWidget(
                        title: 'Alberto Ramirez Sanchez',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ],
                ),

                ComponentSizedBox.topMargin(size: 20),
                ComponentText.buildTextWidget(
                    title: 'History/Appointments',
                    fontWeight: FontWeight.bold,
                    color: ConstantColor.APP_COLOR),
                Divider(
                  height: 5,
                  thickness: 1,
                ),

                ComponentSizedBox.topMargin(size: 20),
                ComponentText.buildTextWidget(
                    title: 'Personal Information', fontWeight: FontWeight.bold),
                ComponentSizedBox.topMargin(size: 20),
                ComponentText.buildTextWidget(
                    title: 'Full Name', color: Colors.black),
                Container(
                  height: 70,
                  width: 370,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Center(
                      child: ComponentText.buildTextWidget(
                          title: 'Alberto Ramirez Sanchez')),
                ),
                ComponentSizedBox.topMargin(size: 20),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(
                            title: 'Date of birth', color: Colors.black),
                        Container(
                          height: 70,
                          width: 180,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Center(
                              child: ComponentText.buildTextWidget(
                                  title: '1997-11-30')),
                        ),
                      ],
                    ),
                    ComponentSizedBox.sideMargin(size: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(
                            title: 'Nationality', color: Colors.black),
                        Container(
                          height: 70,
                          width: 180,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Center(
                              child: ComponentText.buildTextWidget(
                                  title: 'Italian')),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
