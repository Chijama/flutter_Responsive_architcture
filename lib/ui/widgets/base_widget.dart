// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
//   final Widget Function(BuildContext) builder;
//   final Function(T)? onModelReady;
//   final T viewModel;

//   const BaseWidget(
//       {super.key,
//       required this.builder,
//       this.onModelReady,
//       required this.viewModel});
//   @override
//   State<BaseWidget> createState() => _BaseWidgetState();
// }

// class _BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget<T>> {
//   late T _model;

//   @override
//   void initState() {
//     super.initState();
//     _model = widget.viewModel;

//     if (widget.onModelReady != null) {
//       widget.onModelReady!(_model);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       builder: (context, child) => widget.builder(context),
//       create: (_){},
//     );
//   }
// }
