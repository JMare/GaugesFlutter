import 'package:flutter/material.dart';
import 'package:geekyants_flutter_gauges/gauges.dart';

class ThicknessExtendExample extends StatefulWidget {
  const ThicknessExtendExample({super.key});

  @override
  State<ThicknessExtendExample> createState() => _ThicknessExtendExampleState();
}

class _ThicknessExtendExampleState extends State<ThicknessExtendExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinearGauge(
          start: 100,
          end: 200,
          value: 190,
          extendLinearGauge: 20,
          enableAnimation: true,
          linearGaugeBoxDecoration: LinearGaugeBoxDecoration(thickness: 10),
          pointers: const [
            Pointer(
              shape: PointerShape.circle,
              pointerPosition: PointerPosition.center,
              value: 170,
              showLabel: false,
              labelStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
          gaugeOrientation: GaugeOrientation.vertical,
          rulers: const RulerStyle(
            rulerPosition: RulerPosition.left,
          ),
        ),
      ),
    );
  }
}