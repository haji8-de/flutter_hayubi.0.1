import '/components/food_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for FoodCard component.
  late FoodCardModel foodCardModel1;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel2;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    foodCardModel1 = createModel(context, () => FoodCardModel());
    foodCardModel2 = createModel(context, () => FoodCardModel());
    foodCardModel3 = createModel(context, () => FoodCardModel());
  }

  void dispose() {
    foodCardModel1.dispose();
    foodCardModel2.dispose();
    foodCardModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
