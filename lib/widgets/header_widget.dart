import 'package:flutter/material.dart';
import 'package:responsive_design/utils/constant.dart';
import 'package:responsive_design/utils/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isWeb(context))
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ),
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: cardBackgroundColor,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 5),
                  hintText: "Search",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 21,
                    color: Colors.grey,
                  )),
            ),
          ),
        if (Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.grey,
                  )),
              InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/BH.jpg",
                    width: 32,
                  ),
                ),
              )
            ],
          )
      ],
    );
  }
}
