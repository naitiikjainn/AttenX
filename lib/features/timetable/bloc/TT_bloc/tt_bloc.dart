import 'package:bloc/bloc.dart';
import 'package:erp_app_v2/features/timetable/bloc/TT_bloc/tt_event.dart';
import 'package:erp_app_v2/features/timetable/bloc/TT_bloc/tt_state.dart';
import 'package:erp_app_v2/features/attendance/data/transport_attendance_repo.dart';

class TransportAttendanceBloc
    extends Bloc<TransportAttendanceEvent, TransportAttendanceState> {
  final TransportAttendanceRepo repo;

  TransportAttendanceBloc(this.repo)
      : super(TransportAttendanceInitial()) {
    on<FetchTransportAttendance>((event, emit) async {
      emit(TransportAttendanceLoading());

      try {
        final data = await repo.fetchAttendance();
        emit(TransportAttendanceLoaded(data));
      } catch (e) {
        emit(TransportAttendanceError(e.toString()));
      }
    });
  }

}