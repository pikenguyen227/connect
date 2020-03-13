

import 'dart:async';
import 'package:pma_mobile/views/splashscreen/splashscreen_events.dart';

class SplashscreenDataModelBloc {
  SplashscreenDataModelBloc();
}

class SplashscreenBloc {
  SplashscreenDataModelBloc data;

  final _stateController = StreamController<SplashscreenDataModelBloc>();
  StreamSink<SplashscreenDataModelBloc> get _sink => this._stateController.sink;
  Stream<SplashscreenDataModelBloc> get core => this._stateController.stream;
  final _eventController = StreamController<SplashscreenEvent>();
  Sink<SplashscreenEvent> get eSink => this._eventController.sink;


  SplashscreenBloc() {
    data = SplashscreenDataModelBloc();
    this._eventController.stream.listen(this._mapEventToState);
  }

  void _mapEventToState(SplashscreenEvent event) {
    this._sink.add(this.data);
  }

  void dispose() {
    this._eventController.close();
    this._stateController.close();
  }
}

