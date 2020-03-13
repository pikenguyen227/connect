// class {Name} extends StatefulWidget {
//   @override
//   _{Name}State createState() => _{Name}State();
// }

// class _{Name}State extends State<{Name}> {

//   final {Name}Bloc _bloc = {Name}Bloc();

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: this._bloc.core,
//       initialData: this._bloc.data,
//       builder: (BuildContext context, AsyncSnapshot<{Name}DataModelBloc> snapshot) {
//         return Scaffold(body: Container(),);
//       },
//     );
//   }
// }