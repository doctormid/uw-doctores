import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class ChatThirdScreen extends StatefulWidget {
  @override
  _ChatThirdScreenState createState() => _ChatThirdScreenState();
}

class _ChatThirdScreenState extends State<ChatThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ComponentSizedBox.topMargin(size: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                        ),
                        ComponentSizedBox.sideMargin(size: 10),
                        ComponentText.buildTextWidget(
                            title: 'Alberto Remirez Sanchez'),
                        ComponentSizedBox.sideMargin(size: 100),
                        PopupMenuButton<options>(
                          color: ConstantColor.APP_COLOR,
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<options>>[
                            const PopupMenuItem<options>(
                              value: options.unmute,
                              child: Text(
                                'Unmute',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem<options>(
                              value: options.block,
                              child: Text(
                                'Block',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                    ),
                    ComponentSizedBox.topMargin(size: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.80,
                                ),
                                child: Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text('hi,how are you  '),
                                ),
                              ),
                              Row(
                                children: [
                                  ComponentText.buildTextWidget(
                                      title: '25/03/2021 -', fontSize: 10),
                                  ComponentText.buildTextWidget(
                                      title: '2:18 pm -', fontSize: 10),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.95,
                                ),
                                child: Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: ConstantColor.APP_COLOR,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text('hi,i am fine '),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ComponentText.buildTextWidget(
                                      title: '10:50 pm -', fontSize: 10),
                                  Icon(
                                    Icons.done_all_outlined,
                                    color: ConstantColor.APP_COLOR,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow()],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Type here'),
                                textCapitalization:
                                    TextCapitalization.sentences,
                              ),
                            ),
                            Icon(
                              Icons.send,
                              color: ConstantColor.APP_COLOR,
                            )
                          ],
                        )),
                    ComponentSizedBox.topMargin(size: 10),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum options { unmute, block }
