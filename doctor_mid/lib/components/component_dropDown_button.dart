import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  List<String> dropDownItem;
  Function selectedValue;

  CustomDropDownButton({
    this.dropDownItem,
    this.selectedValue,
  });
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String _currentItemSelected;
  final List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: Dimensions.Size_300,
        width: 120,
        child: DropdownButton<String>(
          hint: Text("1 Month"),
          elevation: 5,
          items: widget.dropDownItem.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(
                dropDownStringItem,
                style: TextStyle(fontSize: 20.0),
              ),
            );
          }).toList(),
          onChanged: (String val) {
            widget.selectedValue(val);

            setState(() {
              this._currentItemSelected = val;
            });
          },
          value: _currentItemSelected,
        ));
  }
}
