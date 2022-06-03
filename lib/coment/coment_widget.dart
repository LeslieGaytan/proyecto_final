import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../isesion/isesion_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ComentWidget extends StatefulWidget {
  const ComentWidget({Key key}) : super(key: key);

  @override
  _ComentWidgetState createState() => _ComentWidgetState();
}

class _ComentWidgetState extends State<ComentWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF006491),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Image.asset(
                'assets/images/descarga_(1).png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Domino\'s',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Work Sans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 55,
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 33,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: IsesionWidget(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComentWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.insert_comment,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Conoce las opiniones otros clientes',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Work Sans',
                          color: Color(0xFFE41937),
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.9, 0),
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://github.com/LeslieGaytan/Poyecto-Ulll-Imagenes/blob/main/p1.png?raw=true',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.72, 0.69),
                      child: Container(
                        width: 56,
                        height: 56,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/LeslieGaytan/Flutter-mis-imagenes/main/images.png',
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.49, 0),
                      child: Container(
                        width: 56,
                        height: 56,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/LeslieGaytan/Flutter-mis-imagenes/main/57967b8930c1ce7f5269370bb3faea67.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Muy satisfecho',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF006491),
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          '59%',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF006491),
                                    fontSize: 15,
                                  ),
                        ),
                        Icon(
                          Icons.star_outlined,
                          color: Color(0xFFD24339),
                          size: 30,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Satisfecho',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF006491),
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          '32%',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF006491),
                                    fontSize: 15,
                                  ),
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Color(0xFFD24339),
                          size: 30,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Insatisfecho',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF006491),
                                    fontSize: 16,
                                  ),
                        ),
                        Text(
                          '9%',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF006491),
                                    fontSize: 15,
                                  ),
                        ),
                        Icon(
                          Icons.star_border,
                          color: Color(0xFFD24339),
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextFormField(
                  controller: textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Agregue su comentario',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person_add,
                      color: Color(0xFF757575),
                      size: 22,
                    ),
                    suffixIcon: Icon(
                      Icons.send_sharp,
                      color: Color(0xFF006491),
                      size: 22,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xBB737373),
                      ),
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  subtitle: Text(
                    'La atencion al cliente es un poco deficiente pero las pizzas son ricas!!',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_up,
                    color: Color(0xFF006491),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.emoji_people,
                  ),
                  subtitle: Text(
                    'Las ofertas son muy cool me hacen ahorrar y comer rico sin gastar mucho',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_up,
                    color: Color(0xFF006491),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.account_box_rounded,
                  ),
                  subtitle: Text(
                    'No me gusta para nada Dominos prefiero PIZZA HOT',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_down,
                    color: Color(0xFFE41937),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.accessible_sharp,
                  ),
                  subtitle: Text(
                    'Deberian poner atencion rapida, estacionamiento y rampas para discapacitados',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_down,
                    color: Color(0xFFE41937),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  subtitle: Text(
                    'Me dieron muchos cupones solo por comprar una pizza!!',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_up,
                    color: Color(0xFF006491),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.family_restroom_rounded,
                  ),
                  subtitle: Text(
                    'Mis hijos aman comer de Domino\'s\n',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_up_rounded,
                    color: Color(0xFF006491),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.blue,
                    icon: Icons.share,
                    onTap: () {
                      print('SlidableActionWidget pressed ...');
                    },
                  ),
                ],
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.users,
                  ),
                  subtitle: Text(
                    'El repartdor nos exigio propina a mis amigos y a mi!!',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                  ),
                  trailing: Icon(
                    Icons.thumb_down,
                    color: Color(0xFFE41937),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'REGRESAR',
                  options: FFButtonOptions(
                    width: 120,
                    height: 40,
                    color: Color(0xFF006391),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Work Sans',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
