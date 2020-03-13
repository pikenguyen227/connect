// class {Name}DataModelBloc {
//   {Name}DataModelBloc();
// }

// class {Name}Bloc {
//   {Name}DataModelBloc data;

//   final _stateController = StreamController<{Name}DataModelBloc>();
//   StreamSink<{Name}DataModelBloc> get _sink => this._stateController.sink;
//   Stream<{Name}DataModelBloc> get core => this._stateController.stream;
//   final _eventController = StreamController<{Name}Event>();
//   Sink<{Name}Event> get eSink => this._eventController.sink;


//   {Name}Bloc() {
//     data = {Name}DataModelBloc();
//     this._eventController.stream.listen(this._mapEventToState);
//   }

//   void _mapEventToState({Name}Event event) {
//     this._sink.add(this.data);
//   }

//   void dispose() {
//     this._eventController.close();
//     this._stateController.close();
//   }
// }

