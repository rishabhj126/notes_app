import 'package:notes/src/data/datasource/authentication_remote_data_source.dart';
import 'package:notes/src/data/datasource/note_remote_data_source.dart';
import 'package:notes/src/data/repository/authentication_repository_impl.dart';
import 'package:notes/src/data/repository/note_repository_impl.dart';
import 'package:notes/src/domain/repositories/autentication_repository.dart';
import 'package:notes/src/domain/repositories/note_repository.dart';
import 'package:notes/src/domain/usecase/login.dart';
import 'package:notes/src/domain/usecase/note.dart';
import 'package:notes/src/domain/usecase/signup.dart';
import 'package:notes/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:notes/src/presentation/bloc/note/note_bloc.dart';
import 'package:notes/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes/src/presentation/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:notes/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(
    sharedPreferences,
  );

  //TODO: Data sources
  final authRemoteDataSource = AuthenticationRemoteDataSourceImpl();
  sl.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => authRemoteDataSource,
  );
  final noteRemoteDataSource = NoteRemoteDataSourceImpl();
  sl.registerLazySingleton<NoteRemoteDataSource>(
    () => noteRemoteDataSource,
  );

  // Repositories
  final authRepository = AuthenticationRepositoryImpl(sl());
  sl.registerLazySingleton<AuthenticationRepository>(
    () => authRepository,
  );
  final noteRepository = NoteRepositoryImpl(sl());
  sl.registerLazySingleton<NoteRepository>(
    () => noteRepository,
  );

  // Use cases
  final signIn = SignIn(sl());
  sl.registerLazySingleton(
    () => signIn,
  );
  final signUp = SignUp(sl());
  sl.registerLazySingleton(
    () => signUp,
  );
  final noteUseCase = Note(sl());
  sl.registerLazySingleton(
    () => noteUseCase,
  );

  //TODO:  BLoCs
  final authenticatorWatcherBloc = AuthenticatorWatcherBloc();
  sl.registerLazySingleton(
    () => authenticatorWatcherBloc,
  );

  final signInFormBloc = SignInFormBloc(sl());
  sl.registerLazySingleton(
    () => signInFormBloc,
  );

  final signUpFormBloc = SignUpFormBloc(sl());
  sl.registerLazySingleton(
    () => signUpFormBloc,
  );

  final noteBloc = NoteBloc(sl());
  sl.registerLazySingleton(
    () => noteBloc,
  );

  final themeCubit = ThemeCubit();
  sl.registerLazySingleton(
    () => themeCubit,
  );
}
