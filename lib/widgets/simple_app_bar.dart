import 'package:flutter/material.dart';
import 'package:raidereats_admin_website_portal/main_screens/home_screen.dart';


class SimpleAppBar extends StatelessWidget with PreferredSizeWidget
{
  String? title;

  final PreferredSizeWidget? bottom;


  SimpleAppBar({this.bottom, this.title});

  @override
  Size get preferredSize => bottom==null?Size(20, 10 + AppBar().preferredSize.height):Size(20, 10 +AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
          color: Colors.white
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.black,
              ],

              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white,),
        onPressed:()
        {
          Navigator.push(context, MaterialPageRoute(builder: (c)=> const HomeScreen()));
        },
      ),
      elevation: 0.0,
      centerTitle: true,
      title:  Text(
        title!,
        style: const TextStyle(fontSize: 20.0, letterSpacing: 3, color: Colors.white,),
      ),
    );
  }
}
