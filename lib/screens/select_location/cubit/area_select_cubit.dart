import 'package:bloc/bloc.dart';
import 'package:grocery_app/constants.dart';

class AreaSelectCubit extends Cubit<String> {
  AreaSelectCubit() : super(nectarArea[0]);

  void areaOnChanged(String area) => emit(area);
}
