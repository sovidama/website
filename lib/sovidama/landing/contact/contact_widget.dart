import '/components/checkbox_widget.dart';
import '/components/process_stage_card_widget.dart';
import '/components/section_header_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contact_model.dart';
export 'contact_model.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  static String routeName = 'contact';
  static String routePath = '/contact';

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  late ContactModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.headerModel,
              updateCallback: () => safeSetState(() {}),
              child: HeaderWidget(),
            ),
            Expanded(
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 64.0
                                  : 32.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 128.0
                                  : 64.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 64.0
                                  : 32.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 128.0
                                  : 64.0,
                              0.0,
                            )),
                        child: Container(
                          child: Container(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 800.0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'zno982o9' /* WHAT BRINGS YOU HERE? */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontStyle,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'dj407xac' /* Provide some context and our t... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                          lineHeight: 1.6,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 80.0),
                        child: Container(
                          child: Container(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: 1000.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(48.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '3aoedbbn' /* Contact Information */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                          Wrap(
                                            spacing: 16.0,
                                            runSpacing: 16.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              wrapWithModel(
                                                model: _model.textFieldModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldWidget(
                                                  label: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'obnlymdw' /* Name */,
                                                  ),
                                                  labelPresent: true,
                                                  helper: '',
                                                  helperPresent: false,
                                                  leadingIconPresent: false,
                                                  trailingIconPresent: false,
                                                  hint: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '821zejt7' /* Full name */,
                                                  ),
                                                  value: '',
                                                  onChange: '',
                                                  onSubmit: '',
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textFieldModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldWidget(
                                                  label: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '5gk8i2pv' /* Company */,
                                                  ),
                                                  labelPresent: true,
                                                  helper: '',
                                                  helperPresent: false,
                                                  leadingIconPresent: false,
                                                  trailingIconPresent: false,
                                                  hint: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'cyoksaet' /* Organization name */,
                                                  ),
                                                  value: '',
                                                  onChange: '',
                                                  onSubmit: '',
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Wrap(
                                            spacing: 16.0,
                                            runSpacing: 16.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              wrapWithModel(
                                                model: _model.textFieldModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldWidget(
                                                  label: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'duf475m7' /* Email */,
                                                  ),
                                                  labelPresent: true,
                                                  helper: '',
                                                  helperPresent: false,
                                                  leadingIconPresent: false,
                                                  trailingIconPresent: false,
                                                  hint: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'n3zw5zws' /* work@company.com */,
                                                  ),
                                                  value: '',
                                                  onChange: '',
                                                  onSubmit: '',
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textFieldModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldWidget(
                                                  label: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ohz5o722' /* Phone */,
                                                  ),
                                                  labelPresent: true,
                                                  helper: '',
                                                  helperPresent: false,
                                                  leadingIconPresent: false,
                                                  trailingIconPresent: false,
                                                  hint: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '6lozht0h' /* +55 (00) 00000-0000 */,
                                                  ),
                                                  value: '',
                                                  onChange: '',
                                                  onSubmit: '',
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model.textFieldModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TextFieldWidget(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                'w59dj9nb' /* Location */,
                                              ),
                                              labelPresent: true,
                                              helper: '',
                                              helperPresent: false,
                                              leadingIconPresent: false,
                                              trailingIconPresent: false,
                                              hint: 'City, State',
                                              value: '',
                                              onChange: '',
                                              onSubmit: '',
                                              variant: 'outlined',
                                              error: false,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                      if (FFAppState().country == 'Ca')
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Divider(
                                                height: 16.0,
                                                thickness: 1.0,
                                                indent: 0.0,
                                                endIndent: 0.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q8v7yt2r' /* Project Information */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.3,
                                                        ),
                                              ),
                                              Wrap(
                                                spacing: 16.0,
                                                runSpacing: 16.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel6,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextFieldWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'v5jizzoc' /* Project Type */,
                                                      ),
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      hint: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4chhh0dc' /* e.g. Infrastructure, Commercia... */,
                                                      ),
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel7,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextFieldWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ucrp2ouy' /* Site Type */,
                                                      ),
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      hint: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uvgt68y5' /* e.g. Brownfield, Urban */,
                                                      ),
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel8,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextFieldWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'k7672te0' /* Approximate Site Size */,
                                                      ),
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      hint: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6ft4ybxa' /* m² or hectares */,
                                                      ),
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel9,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextFieldWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nhwho3yz' /* Desired Service */,
                                                      ),
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      hint: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '36p33d1r' /* e.g. LiDAR, Monitoring */,
                                                      ),
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Wrap(
                                                spacing: 16.0,
                                                runSpacing: 16.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel10,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextFieldWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sp1ceqpu' /* Desired Frequency */,
                                                      ),
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      hint: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'o2qkva1d' /* One-time, Monthly, Quarterly */,
                                                      ),
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel11,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextFieldWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'z5afocru' /* Desired Timeline */,
                                                      ),
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      hint: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'n13xqrkv' /* Expected start date */,
                                                      ),
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(SizedBox(height: 24.0)),
                                          ),
                                        ),
                                      if (FFAppState().country == 'Ca')
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Divider(
                                                height: 16.0,
                                                thickness: 1.0,
                                                indent: 0.0,
                                                endIndent: 0.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '98euctv0' /* What Do You Need? */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.3,
                                                        ),
                                              ),
                                              GridView(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount:
                                                      MediaQuery.sizeOf(context)
                                                                  .width >
                                                              767.0
                                                          ? 3
                                                          : 1,
                                                  crossAxisSpacing: 16.0,
                                                  mainAxisSpacing: 16.0,
                                                  childAspectRatio:
                                                      MediaQuery.sizeOf(context)
                                                                  .width >
                                                              767.0
                                                          ? 4.0
                                                          : 3.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jymsq3vx' /* Property documentation */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'kumn2ynl' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7ea08s37' /* Photography */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'c7v2cghm' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel3,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ms6xk8eq' /* 360° documentation */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'nup9m5py' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel4,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'c6v214d0' /* Roof documentation */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'rr8p404h' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel5,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'dx8m4msa' /* Construction monitoring */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'gviv207r' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel6,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ie4dltho' /* Mapping */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'yd1tmvjx' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel7,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ke4quoeq' /* Measurement */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'prbiyapj' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel8,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '26lu8stq' /* LiDAR */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'tfo03dbm' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel9,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ngp4k29x' /* 3D data */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ctzazlgh' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel10,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'q6kvtk22' /* Thermal data */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'qtbg9fwt' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel11,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sgy1nobw' /* Environmental data */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'jfv8a5w6' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.checkboxModel12,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CheckboxWidget(
                                                      label: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zujhkw41' /* Periodic monitoring */,
                                                      ),
                                                      subtitle:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '5kh9a3z2' /* Receive weekly updates */,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      isChecked: true,
                                                      hasSubtitle: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              wrapWithModel(
                                                model: _model.checkboxModel13,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CheckboxWidget(
                                                  label: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'u1pcdvwd' /* Other */,
                                                  ),
                                                  subtitle: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'xbl9f6k5' /* Receive weekly updates */,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  isChecked: true,
                                                  hasSubtitle: false,
                                                  disabled: false,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 24.0)),
                                          ),
                                        ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hslltqpz' /* Description */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                            wrapWithModel(
                                              model: _model.textFieldModel12,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextFieldWidget(
                                                label:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  't27zhbwr' /* Tell us what you need. */,
                                                ),
                                                labelPresent: true,
                                                helper: '',
                                                helperPresent: false,
                                                leadingIconPresent: false,
                                                trailingIconPresent: false,
                                                hint:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  't2y23wlo' /* Describe the specific technica... */,
                                                ),
                                                value: '',
                                                onChange: '',
                                                onSubmit: '',
                                                variant: 'outlined',
                                                error: false,
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'yoqrlcbg' /* Submit */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'its7598q' /* Service availability and geogr... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF1A1C1B),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 32.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 64.0
                                  : 32.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 128.0
                                  : 64.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 64.0
                                  : 32.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 128.0
                                  : 64.0,
                              0.0,
                            )),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 800.0,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Container(
                                        width: 80.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.psychology_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 40.0,
                                        ),
                                      ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            (FFCrossAxisAlignment.start)
                                                .flutterValue,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'powvvjdh' /* Not sure what you need? */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                  lineHeight: 1.25,
                                                ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'vjlpyvts' /* That's okay. Start with the in... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.55,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 32.0)),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 64.0
                                  : 32.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 128.0
                                  : 64.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 64.0
                                  : 32.0,
                              0.0,
                            ),
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width > 767.0
                                  ? 128.0
                                  : 64.0,
                              0.0,
                            )),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.sectionHeaderModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SectionHeaderWidget(
                                    subtitle:
                                        FFLocalizations.of(context).getText(
                                      'rhsz2kha' /* Strategic alignment between in... */,
                                    ),
                                    title: FFLocalizations.of(context).getText(
                                      'axsq8gwv' /* WHAT HAPPENS NEXT? */,
                                    ),
                                  ),
                                ),
                              ),
                              Wrap(
                                spacing: 64.0,
                                runSpacing: 24.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.processStageCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProcessStageCardWidget(
                                      desc: FFLocalizations.of(context).getText(
                                        'i1bsaagf' /* We review your context and bus... */,
                                      ),
                                      label:
                                          FFLocalizations.of(context).getText(
                                        'k3xdakqk' /* CONTEXT */,
                                      ),
                                      num: '01',
                                      active: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.processStageCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProcessStageCardWidget(
                                      desc: FFLocalizations.of(context).getText(
                                        's2v7nksl' /* We identify the most relevant ... */,
                                      ),
                                      label:
                                          FFLocalizations.of(context).getText(
                                        '9gxwn5si' /* IDENTIFY */,
                                      ),
                                      num: '02',
                                      active: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.processStageCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProcessStageCardWidget(
                                      desc: FFLocalizations.of(context).getText(
                                        'n4t46irf' /* We determine the next step tog... */,
                                      ),
                                      label:
                                          FFLocalizations.of(context).getText(
                                        'q602y8uv' /* DETERMINE */,
                                      ),
                                      num: '03',
                                      active: false,
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 32.0)),
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.footerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: FooterWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
