import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('DashBoard'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: Container(
   
        child: Stack(
          children: [
            Container(
              color: ConstantColor.APP_COLOR,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
               
                    ComponentSizedBox.topMargin(size: 10),
                    Center(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                      ),
                    ),
                    ComponentSizedBox.topMargin(size: 10),
                    ComponentText.buildTextWidget(
                        title: 'Dr . Manuel Macias',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ComponentSizedBox.topMargin(size: 5),
                    ComponentText.buildTextWidget(
                      title: 'Implantology',
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    ComponentSizedBox.topMargin(size: 5),
                    Row(
                      children: [
                        ComponentSizedBox.sideMargin(size: 80),
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        ComponentSizedBox.sideMargin(size: 5),
                        ComponentText.buildTextWidget(
                            color: Colors.white,
                            title: 'Maxicali ,baja California Centro')
                      ],
                    ),
                    ComponentSizedBox.topMargin(size: 10),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: ListView(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                height: 100,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        ComponentSizedBox.topMargin(size: 30),
                                        ComponentText.buildTextWidget(
                                            title: '1',
                                            color: ConstantColor.APP_COLOR,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        ComponentSizedBox.topMargin(size: 5),
                                        ComponentText.buildTextWidget(
                                            title: 'Weekly appointments',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 2,
                                      indent: 30,
                                      endIndent: 15,
                                    ),
                                    Column(
                                      children: [
                                        ComponentSizedBox.topMargin(size: 30),
                                        ComponentText.buildTextWidget(
                                            title: '0.00',
                                            color: ConstantColor.APP_COLOR,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        ComponentSizedBox.topMargin(size: 5),
                                        ComponentText.buildTextWidget(
                                            title: 'Grade',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 2,
                                      indent: 30,
                                      endIndent: 15,
                                    ),
                                    Column(
                                      children: [
                                        ComponentSizedBox.topMargin(size: 30),
                                        ComponentText.buildTextWidget(
                                            title: '5.00',
                                            color: ConstantColor.APP_COLOR,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        ComponentSizedBox.topMargin(size: 5),
                                        ComponentText.buildTextWidget(
                                            title: 'Monthly Income',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ComponentSizedBox.topMargin(size: 10),
                            builddashboardContainer(
                                title: 'Agenda',
                                subtitle: '1 Today\'s' 'appointments',
                                icon: Icons.event_note_outlined),
                            ComponentSizedBox.topMargin(size: 5),
                            builddashboardContainer(
                                title: 'Patient + 1',
                                subtitle: '3',
                                icon: Icons.person_outlined),
                            ComponentSizedBox.topMargin(size: 5),
                            builddashboardContainer(
                                title: 'Payments and collections',
                                subtitle: '+ 0\$ today',
                                icon: Icons.payments_outlined),
                            ComponentSizedBox.topMargin(size: 5),
                            builddashboardContainer(
                                title: 'Settings',
                                subtitle: 'Edit and Settings',
                                icon: Icons.work_outlined),
                                
                          ],
                        ),
                      ),
                    ),
                  ],
                
              
            ),
          ],
        ),
      ),
    );
  }

  Card builddashboardContainer({String title, String subtitle, IconData icon}) {
    return Card(
      elevation: 2,
      child: Container(
        height: 100,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ComponentSizedBox.topMargin(size: 20),
                  ComponentText.buildTextWidget(
                      title: title,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ConstantColor.APP_COLOR),
                  ComponentSizedBox.topMargin(size: 5),
                  ComponentText.buildTextWidget(
                    title: subtitle,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Icon(
                icon,
                size: 50,
                color: ConstantColor.APP_COLOR,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
