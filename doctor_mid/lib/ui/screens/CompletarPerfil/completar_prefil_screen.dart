import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_checkBox.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:doctor_mid/utils/size_config.dart';
import 'package:flutter/material.dart';

class CompletarPerfilScreen extends StatefulWidget {
  @override
  _CompletarPerfilScreenState createState() => _CompletarPerfilScreenState();
}

class _CompletarPerfilScreenState extends State<CompletarPerfilScreen> {
  List<String> options = ['Pais', 'estado', 'Cuidasd', 'idioma'];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 30),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[300],
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSteItzPyeDKBxyWiOA8xrPZXIlxOYv1b1VVg&usqp=CAU',
                    ),
                  ),
                ),
              ),
              ComponentSizedBox.topMargin(size: 20),
              FormFieldComponent.nonroundedFormField(
                  hint: 'Nombre', width: 340),
              ComponentSizedBox.topMargin(size: 20),
              FormFieldComponent.nonroundedFormField(
                  hint: 'Apellido', width: 340),
              ComponentSizedBox.topMargin(size: 20),
              FormFieldComponent.nonroundedFormField(
                  hint: '@corre0.com', width: 340),
              ComponentSizedBox.topMargin(size: 20),
              FormFieldComponent.nonroundedFormField(
                  hint: 'Fecha de nacimiento dd//mm//aaaa', width: 340),
              ComponentSizedBox.topMargin(size: 20),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: ComponentText.buildTextWidget(
                  title: 'Sexo',
                ),
              ),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBox(
                    onChanged: (value) {},
                  ),
                  ComponentText.buildTextWidget(title: '    Mujer'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBox(
                    onChanged: (value) {},
                  ),
                  ComponentText.buildTextWidget(title: 'Hombre'),
                ],
              ),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: CustomDropDownButton(
                      dropDownItem: options,
                      selectedValue: (value) {},
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: CustomDropDownButton(
                      dropDownItem: options,
                      selectedValue: (value) {},
                    ),
                  ),
                ],
              ),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: CustomDropDownButton(
                      dropDownItem: options,
                      selectedValue: (value) {},
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: CustomDropDownButton(
                      dropDownItem: options,
                      selectedValue: (value) {},
                    ),
                  ),
                ],
              ),
              ComponentSizedBox.topMargin(size: 20),
              FormFieldComponent.nonroundedFormField(
                  hint: 'Contrasena', width: 340),
              ComponentSizedBox.topMargin(size: 20),
              FormFieldComponent.nonroundedFormField(
                  hint: 'Confirmar Contrasena', width: 340),
              ComponentSizedBox.topMargin(size: 20),
              ComponentButton.buildButton(
                  title: 'ENVIAR',
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  borderColor: ConstantColor.APP_COLOR,
                  texColor: Colors.white,
                  btnColor: ConstantColor.APP_COLOR,
                  onPressed: (){},
                  radius: 30),
                  ComponentSizedBox.topMargin(size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
