import 'package:bloc/bloc.dart';

class DrawerNavCubit extends Cubit<int> {
  DrawerNavCubit() : super(0);

  changeSelectedIndex(newIndex) => emit(newIndex);
}
