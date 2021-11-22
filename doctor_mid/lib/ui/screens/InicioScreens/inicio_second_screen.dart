import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InicioSecondScreen extends StatefulWidget {
  @override
  _InicioSecondScreenState createState() => _InicioSecondScreenState();
}

class _InicioSecondScreenState extends State<InicioSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Inicio'),
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
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentSizedBox.topMargin(size: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponentText.buildTextWidget(
                    title: 'CATEGORIES', fontSize: 16, color: Colors.black),
                Row(
                  children: [
                    ComponentText.buildTextWidget(
                        title: 'FILTROS',
                        color: ConstantColor.APP_COLOR,
                        fontSize: 16),
                    Icon(
                      Icons.search,
                      color: ConstantColor.APP_COLOR,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
            ComponentSizedBox.topMargin(size: 20),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 150,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrJs6Pcbj3GrBPtn9WcZT2F52zef9YtcpQSg&usqp=CAU',
                            ),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: ComponentText.buildTextWidget(
                            title: 'CLINICA',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  ComponentSizedBox.sideMargin(size: 20),
                  Container(
                    height: 150,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIIHnlgvU3XV9BgL6ZceF1zopOV99kRNOTig&usqp=CAU',
                            ),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: ComponentText.buildTextWidget(
                            title: 'DOCTOR',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            ComponentSizedBox.topMargin(size: 10),
            ComponentText.buildTextWidget(title: 'RESULTADOS', fontSize: 16),
            ComponentSizedBox.topMargin(size: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 210,
                          
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 140,

                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        height: 200,
                                       
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlcq4NNxfm-zoguu7NZmkx0W5f0g__2EBbMw&usqp=CAU',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Positioned(
                                        right: 4,
                                        top: 4,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite,
                                            ),
                                            color: Colors.red,
                                            iconSize: 25,
                                            padding: EdgeInsets.all(1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ComponentSizedBox.topMargin(size: 8),
                                ],
                              ),
                              ComponentSizedBox.sideMargin(size: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ComponentText.buildTextWidget(
                                      title: 'Dr. Manuel macias',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  ComponentSizedBox.topMargin(size: 5),
                                  ComponentText.buildTextWidget(
                                    title: 'Implantology',
                                  ),
                                  ComponentSizedBox.topMargin(size: 10),
                                  ComponentText.buildTextWidget(
                                    title: 'Brakets',
                                  ),
                                  ComponentText.buildTextWidget(
                                    title: 'Brakets',
                                  ),
                                  ComponentSizedBox.topMargin(size: 30),
                                  ComponentText.buildTextWidget(
                                    title: '\$2000.00 MXN',
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ComponentText.buildTextWidget(
                                    title: '\$1700.00 MXN',
                                    color: ConstantColor.APP_COLOR,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ComponentSizedBox.topMargin(size: 10),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      ComponentSizedBox.sideMargin(size: 20),
                                      ComponentButton.buildTransparentButton(
                                        title: 'Agendar',
                                        btnColor: ConstantColor.APP_COLOR,
                                        borderColor: ConstantColor.APP_COLOR,
                                        texColor: Colors.white,
                                        radius: 10,
                                        height: 40,
                                        width: 90,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
