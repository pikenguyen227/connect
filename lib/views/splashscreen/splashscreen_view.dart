import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pma_mobile/components/background/splascreen_background.dart';
import 'package:pma_mobile/views/splashscreen/splashscreen_bloc.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final SplashscreenBloc _bloc = SplashscreenBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: this._bloc.core,
      initialData: this._bloc.data,
      builder: (BuildContext context, AsyncSnapshot<SplashscreenDataModelBloc> snapshot) {
        return Scaffold(body: this._pageLayout());
      },
    );
  }

  Widget _pageLayout() {
    return Stack(children: <Widget>[
      this._background(),

    ],);
  }

  Widget _background() {
    return Positioned.fill(child: Container(
      child: CustomPaint(painter: DrawBackground(),),
    ));
  }
}