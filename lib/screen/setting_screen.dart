
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramdom_dice/const/colors.dart';

class SettingScreen extends StatelessWidget {

  final double threshold;                         // current value of slider
  final ValueChanged<double> onThresholdChange;   // execute when slider changes

  const SettingScreen({
    required this.threshold,
    required this.onThresholdChange,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Text(
                'responsiveness',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Slider(
          min: 0.1,
          max: 10,
          divisions: 101,                         // 최대값과 최소값 사이 구간 개수.
          value: threshold,
          onChanged: onThresholdChange,
          label: threshold.toStringAsFixed(1),    // 표시값
        ),
      ],
    );
  }

}