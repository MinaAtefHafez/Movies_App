


// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';


abstract class Failure extends Equatable {
     String message ;
  Failure(this.message);


     @override
     List<Object?> get props =>[message];
}


 
 class ServerFailure extends Failure {
  ServerFailure(super.message);
    
 }


 class DatabaseFailure extends Failure {
  DatabaseFailure(super.message);

 }