import '/components/process_stage_card_widget.dart';
import '/components/section_header_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import 'contact_widget.dart' show ContactWidget;
import 'package:flutter/material.dart';

class ContactModel extends FlutterFlowModel<ContactWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel3;
  // Model for TextField.
  late TextFieldModel textFieldModel4;
  // Model for TextField.
  late TextFieldModel textFieldModel5;
  // Model for TextField.
  late TextFieldModel textFieldModel6;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel;
  // Model for ProcessStageCard.
  late ProcessStageCardModel processStageCardModel1;
  // Model for ProcessStageCard.
  late ProcessStageCardModel processStageCardModel2;
  // Model for ProcessStageCard.
  late ProcessStageCardModel processStageCardModel3;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    textFieldModel3 = createModel(context, () => TextFieldModel());
    textFieldModel4 = createModel(context, () => TextFieldModel());
    textFieldModel5 = createModel(context, () => TextFieldModel());
    textFieldModel6 = createModel(context, () => TextFieldModel());
    sectionHeaderModel = createModel(context, () => SectionHeaderModel());
    processStageCardModel1 =
        createModel(context, () => ProcessStageCardModel());
    processStageCardModel2 =
        createModel(context, () => ProcessStageCardModel());
    processStageCardModel3 =
        createModel(context, () => ProcessStageCardModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    textFieldModel5.dispose();
    textFieldModel6.dispose();
    sectionHeaderModel.dispose();
    processStageCardModel1.dispose();
    processStageCardModel2.dispose();
    processStageCardModel3.dispose();
    footerModel.dispose();
  }
}
