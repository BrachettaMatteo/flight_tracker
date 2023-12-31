part of 'flight_tracker_bloc.dart';

@immutable
abstract class FlightTrackerState extends Equatable {}

class FlightTrackerInitial extends FlightTrackerState {
  @override
  List<Object?> get props => [];
}

class FlightTrackerStateLoaded extends FlightTrackerState {
  final List<Flight> today;
  final List<Flight> past;
  final List<Flight> future;

  FlightTrackerStateLoaded(
      {this.future = const [], this.today = const [], this.past = const []});
  @override
  List<Object?> get props => [today, past, future];
}

class FlightTrackerStateFlightUpdate extends FlightTrackerState {
  final Flight flight;
  FlightTrackerStateFlightUpdate({required this.flight});
  @override
  List<Object?> get props => [flight];
}

class FlightTrackerStateFlightAddedStatus extends FlightTrackerState {
  final String message;
  final Status status;

  FlightTrackerStateFlightAddedStatus(
      {this.message = "", this.status = Status.notStatus});

  @override
  List<Object?> get props => [message, status];
}

class FlightTrackerStateFlightDeletedStatus extends FlightTrackerState {
  final String message;
  final Status status;

  FlightTrackerStateFlightDeletedStatus(
      {this.message = "", this.status = Status.notStatus});

  @override
  List<Object?> get props => [message, status];
}

class FlightTrackerStateFlightOpenDetail extends FlightTrackerState {
  final Flight flight;

  FlightTrackerStateFlightOpenDetail(this.flight);

  @override
  List<Object?> get props => [flight];
}

enum Status { error, done, notStatus }
