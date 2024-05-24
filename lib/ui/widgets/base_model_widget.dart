import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BaseModelWidget<T> extends Widget {
  const BaseModelWidget({super.key});

  @protected
  Widget build(BuildContext context, T model);

  @override
  DataProviderElement<T> createElement() => DataProviderElement<T>(this);
}

class DataProviderElement<T> extends ComponentElement {
  DataProviderElement(BaseModelWidget<T> widget) : super(widget);

  @override
  BaseModelWidget<T> get widget => super.widget as BaseModelWidget<T>;

  @override
  Widget build() => widget.build(this, Provider.of<T>(this));
}
