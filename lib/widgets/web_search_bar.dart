import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          hintText: 'Search or start new chat',
          hintStyle: TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              //this will make the highlight colors none
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: EdgeInsets.all(
              10), //this will make the hint text content to be centered
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
