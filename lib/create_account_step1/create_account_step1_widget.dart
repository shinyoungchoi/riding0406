import '../create_account_step2/create_account_step2_widget.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountStep1Widget extends StatefulWidget {
  const CreateAccountStep1Widget({Key key}) : super(key: key);

  @override
  _CreateAccountStep1WidgetState createState() =>
      _CreateAccountStep1WidgetState();
}

class _CreateAccountStep1WidgetState extends State<CreateAccountStep1Widget> {
  List<String> checkboxGroupValues;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createAccountStep1'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/sniff_hero@2x.jpg',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 56, 0, 0),
                    child: Image.asset(
                      'assets/images/logoSniff@2x.png',
                      width: 140,
                      height: 40,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '2s0zb749' /* 함께 라이딩 떠나요! */,
                          ),
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'cookierun',
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'bd0kjdkh' /* 서비스 이용약관에 동의해주세요. */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues != null
                          ? checkboxGroupValues
                          : [''],
                      options: [
                        FFLocalizations.of(context).getText(
                          'adc385qy' /* [필수] 이용약관 동의 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'kxrlghc9' /* [필수] 개인정보처리방침 동의 */,
                        ),
                        FFLocalizations.of(context).getText(
                          '8q2tuj08' /* [필수] 위치기반 서비스약관 동의 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'yyn6wbkr' /* 전체 동의합니다. */,
                        )
                      ].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues = val),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'cookierun',
                                useGoogleFonts: false,
                              ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CreateAccountStep2Widget(),
                                  ),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                '4nhmw41c' /* 다음 */,
                              ),
                              options: FFButtonOptions(
                                width: 170,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'cookierun',
                                      color: Colors.white,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
