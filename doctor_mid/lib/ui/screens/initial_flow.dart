import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_strings.dart';
import 'package:doctor_mid/ui/screens/AgendaScreens/agenda_second.dart';
import 'package:doctor_mid/ui/screens/ChatScreens/ChatThrid_screen.dart';
import 'package:doctor_mid/ui/screens/ChatScreens/chatSecond_screen.dart';
import 'package:doctor_mid/ui/screens/ChatScreens/patients_chat_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/confirmation_delaCita_screen.dart';
import 'package:doctor_mid/ui/screens/dashboard_screen.dart';
import 'package:doctor_mid/ui/screens/informacion_DelaCita_Screens/informacion_delacita_first_Screen.dart';
import 'package:doctor_mid/ui/screens/informacion_DelaCita_Screens/informacion_delacita_third_screen.dart';
import 'package:doctor_mid/ui/screens/notifications_screen.dart';
import 'package:doctor_mid/ui/screens/seleccion_screen.dart';
import 'package:doctor_mid/ui/screens/signIn_datos_correctos_screen.dart';
import 'package:doctor_mid/ui/screens/signIn_datos_incorrectos_screen.dart';
import 'package:doctor_mid/ui/screens/signIn_screen.dart';
import 'package:doctor_mid/ui/screens/signUp_screen.dart';
import 'package:doctor_mid/ui/screens/validacion_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialFlow extends StatefulWidget {
  static const id = 'InitialFlow';
  const InitialFlow({Key key}) : super(key: key);

  @override
  _InitialFlowState createState() => _InitialFlowState();
}

class _InitialFlowState extends State<InitialFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ComponentText.buildTextWidget(
            title: 'Main Menu',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      body: Container(
        child: ListView(
          children: [
            buildListItem(
                title: ConstantString.SIGN_IN,
                onpressed: () {
                  Get.to(SignInScreen());
                }),
            buildListItem(
                title: ConstantString.SIGN_IN_SUCCESS,
                onpressed: () {
                  Get.to(SignInDatosCorrectosScreen());
                }),
            buildListItem(
                title: ConstantString.SIGN_IN_ERROR,
                onpressed: () {
                  Get.to(SignInDatosIncorrectosScreen());
                }),
            buildListItem(
                title: ConstantString.SIGN_UP,
                onpressed: () {
                  Get.to(SignUpScreen());
                }),
            buildListItem(
                title: ConstantString.DASHBOARD,
                onpressed: () {
                  Get.to(DashBoardScreen());
                }),
            buildListItem(
                title: ConstantString.NOTIFICATIONS,
                onpressed: () {
                  Get.to(NotificationsScreen());
                }),
            buildListItem(
                title: ConstantString.Validacion,
                onpressed: () {
                  Get.to(ValidacionDelCelularScreen());
                }),
            buildListItem(
                title: ConstantString.Seleccion,
                onpressed: () {
                  Get.to(SeleccionDeMembresiaScreen());
                }),
            buildListItem(
                title: ConstantString.CHAT_FIRST,
                onpressed: () {
                  Get.to(PatientsChatScreen());
                }),
            buildListItem(
                title: ConstantString.CHAT_SECOND,
                onpressed: () {
                  Get.to(ChatSecondScreen());
                }),
            buildListItem(
                title: ConstantString.CHAT_THIRD,
                onpressed: () {
                  Get.to(ChatThirdScreen());
                }),
            buildListItem(
                title: ConstantString.AGENDA_SECOND,
                onpressed: () {
                  Get.to(AgendaSecondScreen());
                }),
            buildListItem(
                title: ConstantString.INFO_FIRST,
                onpressed: () {
                  Get.to(InfomacionDeLaCitaFirstScreen());
                }),
            buildListItem(
                title: ConstantString.INFO_THIRD,
                onpressed: () {
                  Get.to(InformacionDelaCitaThirdScreen());
                }),
            buildListItem(
                title: ConstantString.CONFIRMATION_DE_LA_CITA,
                onpressed: () {
                  Get.to(ConfirmacionDeLaCitaScreen());
                }),
          ],
        ),
      ),
    );
  }

  Widget buildListItem({String title, Function onpressed}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ComponentText.buildTextWidget(
                  title: title,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              IconButton(
                  onPressed: onpressed, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Divider(
            height: 1.0,
          )
        ],
      ),
    );
  }
}
