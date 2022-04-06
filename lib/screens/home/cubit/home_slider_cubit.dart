import 'package:bloc/bloc.dart';

class HomeSliderCubit extends Cubit<int> {
  HomeSliderCubit() : super(0);

  void onPageChanged(int index) => emit(index);
}
