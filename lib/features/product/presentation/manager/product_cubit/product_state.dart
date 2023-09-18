part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}
class ChangeStep extends ProductState {}
class ChangePeriod extends ProductState {}
class ContainerSelected extends ProductState {}
