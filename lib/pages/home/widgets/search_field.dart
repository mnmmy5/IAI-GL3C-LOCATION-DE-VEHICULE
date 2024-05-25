import 'package:carrent/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: size.width*0.12,
          child:  TextField(
            cursorColor: greyColor,
            decoration:  InputDecoration(
              prefix: const Icon(CupertinoIcons.search, 
              color: greyColor, 
              size: 30, 
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2, color: greyColor
              ),
              ),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2, color: greyColor
              ),
            ),
            labelStyle: const TextStyle(color: greyColor),
            labelText: "Recherche la voiture de tes reves",
            filled: true,
            fillColor: Colors.white
            ),
          ),
          ),
        ),
      const SizedBox(
        width: 16,
        ),
        Container(
          width: size.width*0.10,
          height: size.width*0.10,
          decoration: BoxDecoration(
            color: yellowColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset(
            "assets/settings.png", 
            color: Colors.black,),
        )
      ],
    );
  }
}

