import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class InicioFirstScreen extends StatefulWidget {
  @override
  _InicioFirstScreenState createState() => _InicioFirstScreenState();
}

class _InicioFirstScreenState extends State<InicioFirstScreen> {
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
                      color: ConstantColor.APP_COLOR,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: ComponentText.buildTextWidget(
                            title: 'TODO',
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
            ComponentSizedBox.topMargin(size: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponentText.buildTextWidget(
                    title: 'DOCTOR MEJOR CALIFICADO',
                    fontSize: 16,
                    color: Colors.black),
                ComponentText.buildTextWidget(
                    title: 'VER TODO',
                    color: ConstantColor.APP_COLOR,
                    fontSize: 16),
              ],
            ),
            ComponentSizedBox.topMargin(size: 20),
            Expanded(
              child: StaggeredGridView.countBuilder(
                
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
                  crossAxisCount: 2,
                  
                  itemCount: 10,
                 
                 
                  itemBuilder: (context, index) {
                    return buildGridItem();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildGridItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset(
                  ImagePath.person,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: 150,
            decoration: BoxDecoration(
                color: ConstantColor.APP_COLOR,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Center(
                child: ComponentText.buildTextWidget(
                    title: 'The Saintness', color: Colors.white)),
          ),
          ComponentSizedBox.topMargin(size: 5),
          ComponentText.buildTextWidget(
              title: 'Dr. Manuel Macias', fontSize: 16, color: Colors.black),
          ComponentSizedBox.topMargin(size: 3),
          ComponentText.buildTextWidget(
            title: 'Implantology',
            fontSize: 16,
          ),
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
            ],
          ),
        ],
      ),
    );
  }
}
