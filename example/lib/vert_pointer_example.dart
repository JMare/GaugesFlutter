import 'package:flutter/material.dart';
import 'package:geekyants_flutter_gauges/gauges.dart';
import 'package:geekyants_flutter_gauges/linear_gauge/value_bar/value_bar.dart';

class VerticalPointerExample extends StatelessWidget {
  const VerticalPointerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinearGauge(
          pointers: const [
            Pointer(
              value: 62.5,
              showLabel: true,
              labelStyle: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
              quarterTurns: QuarterTurns.three,
              color: Colors.blue,
              shape: PointerShape.diamond,
              height: 100,
              width: 70,
            ),
            Pointer(
              value: 40,
              shape: PointerShape.circle,
              width: 50,
              showLabel: true,
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            )
          ],
          gaugeOrientation: GaugeOrientation.vertical,
          rulers: const RulerStyle(
            // inverseRulers: true,
            // labelOffset: 10,

            rulerPosition: RulerPosition.left,
          ),
        ),
      ),
    );
  }
}
