import 'package:flutter/material.dart';

class CardOnBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20)),
      elevation: 3,
      child: Container(
        padding: EdgeInsets.only(top: height * .07),
        width: width * .84,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset('assets/men.png',
                width: width * .85, height: height * .4),
            Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .05,
                ),
                child: Text(
                  "Experts created bundless in collaboration with our users,so you can become a better version of yourself.",
                  style: TextStyle(
                    fontSize: height * .03,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .05, vertical: height * .04),
                child: Text(
                  'Self Improvement Program',
                  style: TextStyle(
                      fontSize: height * .04, fontWeight: FontWeight.w400),
                ),
              ),
            ]),
          ]),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(55, 71, 79, 2),
              borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(20),
                  bottomRight: const Radius.circular(20)),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: width * .08, vertical: height * .04),
            child: Row(children: [
              Expanded(
                child: Text(
                  "Bundle is a collection of tools as per your mood or time of the day. Use GoodApp at its most potential.",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(
                  child: FlatButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * .01, vertical: height * .02),
                  child: Center(child: Text("SELECT")),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(10),
                        bottomRight: const Radius.circular(10),
                        topLeft: const Radius.circular(10),
                        topRight: const Radius.circular(10)),
                  ),
                ),
              )),
            ]),
          )
        ]),
      ),
    );
  }
}
