import 'dart:developer';
import 'package:notes/src/comman/routes.dart';
import 'package:notes/src/presentation/page/auth/sign_in_screen.dart';
import 'package:notes/src/presentation/page/auth/sign_up_screen.dart';
import 'package:notes/src/presentation/page/error/error_screen.dart';
import 'package:notes/src/presentation/page/note/add_note_screen.dart';
import 'package:notes/src/presentation/page/note/edit_note_screen.dart';
import 'package:notes/src/presentation/page/note/note_home_screen.dart';
import 'package:notes/src/presentation/page/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter routerinit = GoRouter(
  routes: <RouteBase>[
    ///  =================================================================
    ///  ********************** Splash Route *****************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.SPLASH_ROUTE_NAME,
      path: AppRoutes.SPLASH_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),

    ///  =================================================================
    /// ********************** Authentication Routes ********************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.LOGIN_ROUTE_NAME,
      path: AppRoutes.LOGIN_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      name: AppRoutes.SIGNUP_ROUTE_NAME,
      path: AppRoutes.SIGNUP_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpPage();
      },
    ),
    GoRoute(
      name: AppRoutes.DASHBOARD_ROUTE_NAME,
      path: AppRoutes.DASHBOARD_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const NoteHomeScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.NEW_NOTE_ROUTE_NAME,
      path: AppRoutes.NEW_NOTE_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const AddNoteScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.VIEW_NOTE_ROUTE_NAME,
      path: AppRoutes.VIEW_NOTE_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return EditNoteScreen(
          noteId: (state.extra ?? "").toString(),
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },
  redirect: (context, state) {
    log('redirect: ${state.uri}');
    return null;
  },
);
