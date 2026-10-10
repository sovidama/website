import '/components/local_service_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'solution_area_card_child2342_model.dart';
export 'solution_area_card_child2342_model.dart';

class SolutionAreaCardChild2342Widget extends StatefulWidget {
  const SolutionAreaCardChild2342Widget({super.key});

  @override
  State<SolutionAreaCardChild2342Widget> createState() =>
      _SolutionAreaCardChild2342WidgetState();
}

class _SolutionAreaCardChild2342WidgetState
    extends State<SolutionAreaCardChild2342Widget> {
  late SolutionAreaCardChild2342Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolutionAreaCardChild2342Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        wrapWithModel(
          model: _model.localServiceItemModel1,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              'baqqb8w9' /* Custom Web Applications & Port... */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.localServiceItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              'vmrqm3gq' /* Internal Systems & Digital Wor... */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.localServiceItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              '2r9uii5g' /* Product Evolution & Integratio... */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.localServiceItemModel4,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              '8x5jmzh2' /* Modular Digital Foundations */,
            ),
          ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
