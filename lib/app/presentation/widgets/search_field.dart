import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  final Function onChange;
  final Function onTap;

  SearchField({Key? key, required Function onChange, Function? onTap})
      : this.onChange = onChange,
        this.onTap = (onTap ?? () {}),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(.1),
        suffixIcon: Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            LineAwesomeIcons.buffer,
            size: 24,
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: 'Buscar filmes, séries, programas...',
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(.5),
          fontSize: 14,
        ),
        isCollapsed: true,
        contentPadding: EdgeInsets.all(14),
      ),
      style: TextStyle(color: Colors.white),
      onTap: () => onTap(),
      onChanged: (value) => onChange(value),
    );
  }
}
