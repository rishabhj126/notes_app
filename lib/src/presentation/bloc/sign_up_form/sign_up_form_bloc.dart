import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/src/comman/enum.dart';
import 'package:notes/src/domain/usecase/signup.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  SignUpFormBloc(this._signUpWithEmail) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>((event, emit) async {
      await event.map(
        initial: (_) async => SignUpFormState.initial(),
        signUpWithEmail: (_) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _signUpWithEmail.execute(
            state.email,
            state.password,
          );
          result.fold(
            (f) {
              final updatedState = state.copyWith(
                state: RequestState.error,
                message: f.message,
              );
              emit(updatedState);
            },
            (_) => emit(state.copyWith(state: RequestState.loaded)),
          );
        },
        emailOnChanged: (event) async {
          emit(state.copyWith(email: event.email));
        },
        passwordOnChanged: (event) async {
          emit(state.copyWith(password: event.password));
        },
      );
    });
  }
  final SignUp _signUpWithEmail;
}
