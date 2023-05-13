import 'package:equatable/equatable.dart';

// abstract class FailureModel implements Exception{}

class Failure extends Equatable implements Exception{
  final String error;

  const Failure({required this.error});

  factory Failure.fromJson(Map<String, dynamic> json){
    return Failure(error: json['message']);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [
    error,
  ];

}