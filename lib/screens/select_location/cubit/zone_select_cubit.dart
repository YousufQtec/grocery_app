import 'package:bloc/bloc.dart';
import 'package:grocery_app/constants.dart';

class ZoneSelectCubit extends Cubit<String> {
  ZoneSelectCubit() : super(nectarZones[0]);

  void zoneOnChanged(String zone) => emit(zone);
}
