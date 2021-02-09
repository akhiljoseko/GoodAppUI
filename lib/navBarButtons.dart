import 'package:flutter/material.dart';

// This class used for the highlighting the background of the icon //

class Highlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white12),
      height: 50,
      width: 50,
    );
  }
}

//_____________________________________DRAWER BUTTON_____________________________________//

class BtDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 3,
        top: 8,
        child: IconButton(
          splashRadius: 0.1,
          icon: Icon(Icons.format_list_bulleted_sharp),
          onPressed: () {
            print("clicked Drawer");

            Scaffold.of(context).openDrawer();
          },
          iconSize: 30,
          color: Colors.white,
        ));
  }
}

//__________________________________BUTTON FOR SELF IMPROVEMENT PROGRAM____________________________//

class BtPlant extends StatefulWidget {
  final void Function() page;
  BtPlant({this.page});
  @override
  _BtPlantState createState() => _BtPlantState();
}

class _BtPlantState extends State<BtPlant> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 78,
      top: 8,
      child: IconButton(
        splashRadius: 0.1,
        icon: Image.asset(
          'assets/icplant.png',
          width: 27,
          height: 27,
        ),
        onPressed:widget.page,
        iconSize: 16,
        color: Colors.white,
      ),
    );
  }
}

//___________________________________BUTTON FOR GOOD APP____________________________________________//

class BtGrid extends StatefulWidget {
  final void Function() page;
  BtGrid({this.page});
  @override
  _BtGridState createState() => _BtGridState();
}

class _BtGridState extends State<BtGrid> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 160,
      top: 8,
      child: IconButton(
        color: Colors.white,
        disabledColor: Colors.white,
        splashRadius: 0.1,
        icon: Icon(Icons.apps),
        onPressed: widget.page,
        iconSize: 28,
       ),
    );
  }
}

//____________________________________BUTTON FOR GOOD APP BUNDLES___________________________________//

class BtMood extends StatefulWidget {
  final void Function() page;
  BtMood({this.page});
  @override
  _BtMoodState createState() => _BtMoodState();
}

class _BtMoodState extends State<BtMood> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 240,
      top: 8,
      child: IconButton(
        splashRadius: 0.1,
        icon: Image.asset(
          'assets/icon4.png',
          width: 27,
          height: 27,
        ),
        onPressed: widget.page,
        iconSize: 28,
        color: Colors.white,
      ),
    );
  }
}

//______________________________________BUTTON FOR PERSONAL GROWTH DASHBOARD___________________________

class BtGraph extends StatefulWidget {
  final void Function() page;
  BtGraph({this.page});
  @override
  _BtGraphState createState() => _BtGraphState();
}

class _BtGraphState extends State<BtGraph> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 330,
      top: 8,
      child: IconButton(
        splashRadius: 0.1,
        icon: Image.asset(
          'assets/icon5.png',
          width: 27,
          height: 27,
        ),
        onPressed: widget.page,
        iconSize: 28,
        color: Colors.white,
      ),
    );
  }
}
