import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/src/comman/images.dart';
import 'package:notes/src/comman/routes.dart';
import 'package:notes/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/utilities/go_router_init.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1, microseconds: 900), () {
      Future.microtask(
        () => sl<AuthenticatorWatcherBloc>().add(
          const AuthenticatorWatcherEvent.authCheckRequest(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
      bloc: sl(),
      listener: (context, state) {
        state.maybeMap(
          orElse: () {
            context.go(AppRoutes.SIGNUP_ROUTE_PATH);
          },
          authenticating: (_) {},
          authenticated: (_) {
            context.go(AppRoutes.DASHBOARD_ROUTE_PATH);
          },
          isFirstTime: (_) {
            context.go(AppRoutes.SIGNUP_ROUTE_PATH);
          },
        );
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: FractionallySizedBox(
                heightFactor: 0.3,
                widthFactor: 0.3,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    Images.LOGO,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
