import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/scr/shared/Constants/constants.dart';

class UpperNavBar extends StatelessWidget {
  final List<String> list = ["Sort", "Filtters", "Map"];
  final Function(int) onTapCallBack;
  UpperNavBar({this.onTapCallBack});
  @override
  Widget build(BuildContext context) {
    int selectedIndex = -1;
    SizeConfig.init(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,15,8,30),
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          UpperItem(
              title: "Sort", icon: Icons.sort_by_alpha, onTapCallBack: () {}),
          UpperItem(title: "Filter", icon: Icons.filter, onTapCallBack: () {}),
          UpperItem(title: "Map", icon: Icons.map, onTapCallBack: () {}),
        ]),
      ),
    );
  }
}

class UpperItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTapCallBack;
  UpperItem({this.title, this.icon, this.onTapCallBack});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
         
            child: Row(
              children: [
                Icon(icon,color: Colors.blueAccent[700],),
                SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                Text(title,style: TextStyle(color:Colors.blueGrey,fontStyle:FontStyle.italic,fontSize: 15,fontWeight: FontWeight.w700),)
              ],
            )),
        onTap: onTapCallBack);
  }
}