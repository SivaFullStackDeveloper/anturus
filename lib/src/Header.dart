import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<String> selected = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [
                Icon(
                  Icons.computer,
                  color: Colors.white,
                ),
                Text(
                  'Anturus',
                  style: GoogleFonts.nunito(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),


        /*    Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    if(selected.contains('Home')){
                      setState(() {

                      });
                    }else{
                      selected.clear();
                      setState(() {
                        selected.add('Home');
                      });
                    }
                  },
                  child: HeaderNav(
                    selected: selected.contains('Home')?true:false,
                    text: 'Home',
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                InkWell(
                  onTap: (){
                    if(selected.contains('Find a Team')){
                      setState(() {

                      });
                    }else{
                      selected.clear();
                      setState(() {
                        selected.add('Find a Team');
                      });
                    }
                  },
                  child: HeaderNav(
                  selected:  selected.contains('Find a Team')?true:false,
                  text: 'Find a Team',
                ),),
                SizedBox(
                  width: 40.0,
                ),
                InkWell(
                  onTap: (){
                    if(selected.contains('Publish a Project')){
                      setState(() {

                      });
                    }else{
                      selected.clear();
                      setState(() {
                        selected.add('Publish a Project');
                      });
                    }
                  },
                  child: HeaderNav(
                  selected:  selected.contains('Publish a Project')?true:false,
                  text: 'Publish a Project',
                ),),
                SizedBox(
                  width: 40.0,
                ),
                InkWell(
                  onTap: (){
                    if(selected.contains('About')){
                      setState(() {

                      });
                    }else{
                      selected.clear();
                      setState(() {
                        selected.add('About');
                      });
                    }
                  },
                  child:HeaderNav(
                  selected: selected.contains('About')?true:false,
                  text: 'About',
                ),),
              ],
            ),*/
           
            Row(
              children: [
                Text(
                  '',
                  style: GoogleFonts.nunito(
                    fontSize: 13.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 20.0,
                  width: 1.0,
                  color: Colors.transparent,
                ),
                SizedBox(
                  width: 10.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(40.0),
                      ),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(0.0),
                    ),
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 12.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(40.0),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.josefinSans(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;

  HeaderNav({
    required this.selected,
    required this.text,
  });
  @override
  _HeaderNavState createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
        widget.selected
            ? SizedBox(
                height: 5.0,
              )
            : SizedBox(),
        widget.selected
            ? Container(
          height: 1,
          width: 40,
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        )
       : SizedBox(),
      ],
    );
  }
}
