import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBox extends StatelessWidget {
  final String categoryName;
  final Color startColor, endColor;
  final VoidCallback onClick;
  final String imagePath;

  CategoryBox(this.categoryName, this.startColor, this.endColor,this.imagePath, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [

         GestureDetector(
           onTap: onClick,
           child: Container(
             width: MediaQuery.of(context).size.width ,
             height: 170,
             margin: EdgeInsets.symmetric(vertical: 30),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(40),
               gradient: LinearGradient(
                 colors: [startColor, endColor],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
               ),
             ),
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Column(

                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(
                             color: Colors.white
                         )
                     ),
                     child: IconButton(

                       icon: Icon(Icons.play_arrow_rounded,
                         color: Colors.white,
                       ),
                       onPressed: onClick,
                     ),
                   ),
                   Text(
                     categoryName,
                     style: TextStyle(color: Colors.white,
                         fontSize: 23,
                         fontWeight: FontWeight.bold
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),

         Padding(

           padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
           child: SvgPicture.asset(
             imagePath,
             width: 130,
             height: 130,
           ),
         ),
       ],
    );
  }
}
