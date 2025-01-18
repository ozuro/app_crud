import 'package:first_crud/models/Item_dropdown.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final String label;
  final List<ItemDropdown> list;
  const DropdownWidget({super.key, required this.list, required this.label});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  ItemDropdown? _selectSex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(widget.label),
              SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0)),
                child: DropdownButton(
                  hint: Text("Seleccione .."),
                  isExpanded: true,
                  value: _selectSex,
                  underline: const SizedBox(),
                  items: widget.list.map((item) {
                    return DropdownMenuItem(
                        child: Text(item.label), value: item);
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectSex = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
