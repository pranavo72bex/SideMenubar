import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headerimg(),
          InkWell(
            onTap: () {},
            child: SideText(
              text: "For Business",
            ),
          ),
          InkWell(
            onTap: () {},
            child: SideText(
              text: "For Murchent",
            ),
          ),
          InkWell(
            onTap: () {},
            child: SideText(
              text: "For partner",
            ),
          ),
          InkWell(
            onTap: () {},
            child: SideText(
              text: "Products and Services",
            ),
          ),
        ],
      ),
    );
  }
}

class Headerimg extends StatelessWidget {
  const Headerimg({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class SideText extends StatelessWidget {
  const SideText({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 15,
        ),
      ),
    );
  }
}
