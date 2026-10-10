import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/option/option_widget.dart';
import 'footer_widget.dart' show FooterWidget;
import 'package:flutter/material.dart';

class FooterModel extends FlutterFlowModel<FooterWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for option component.
  late OptionModel optionModel1;
  // Model for option component.
  late OptionModel optionModel2;
  // Model for option component.
  late OptionModel optionModel3;
  // Model for option component.
  late OptionModel optionModel4;
  // Model for option component.
  late OptionModel optionModel5;

  @override
  void initState(BuildContext context) {
    optionModel1 = createModel(context, () => OptionModel());
    optionModel2 = createModel(context, () => OptionModel());
    optionModel3 = createModel(context, () => OptionModel());
    optionModel4 = createModel(context, () => OptionModel());
    optionModel5 = createModel(context, () => OptionModel());
  }

  @override
  void dispose() {
    optionModel1.dispose();
    optionModel2.dispose();
    optionModel3.dispose();
    optionModel4.dispose();
    optionModel5.dispose();
  }
}
