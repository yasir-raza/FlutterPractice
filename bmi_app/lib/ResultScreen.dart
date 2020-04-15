import 'package:bmiapp/BMIModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultScreen extends StatelessWidget {
  final BMIModel bmiModel;
  ResultScreen({this.bmiModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: bmiModel.isNormal ? SvgPicture.asset(
                "assets/images/happyheart.svg",
                fit: BoxFit.contain,
              ) : SvgPicture.asset(
                "assets/images/sadheart.svg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Your BMI is ${bmiModel.bmi.round()}",
              style: TextStyle(
                  color: Colors.red[600],
                  fontSize: 34,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "${bmiModel.comments}",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 16,
            ),
            bmiModel.isNormal ?
            Text(
              "Hurray! Your BMI is Normal",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            )
                :
            Text(
              "Sadly! Your BMI is not Normal",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: FlatButton.icon(
                onPressed: () { Navigator.pop(context); },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                label: Text("Let Calculate Again"),
                color: Colors.pink,
                textColor: Colors.white,
              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
            )
          ],
        ),
      ),
    );
  }
}
