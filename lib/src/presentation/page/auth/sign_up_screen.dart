import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/injection.dart';
import 'package:notes/src/comman/constant.dart';
import 'package:notes/src/comman/enum.dart';
import 'package:notes/src/comman/routes.dart';
import 'package:notes/src/comman/toast.dart';
import 'package:notes/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes/src/presentation/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:notes/src/presentation/widget/custom_elevated_button.dart';
import 'package:notes/src/presentation/widget/custom_text_button.dart';
import 'package:notes/src/presentation/widget/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: BlocListener<SignUpFormBloc, SignUpFormState>(
        bloc: sl(),
        listener: (context, state) {
          if (state.state == RequestState.error) {
            showToast(msg: state.message);
          } else if (state.state == RequestState.loaded) {
            context.go(AppRoutes.DASHBOARD_ROUTE_PATH);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(MARGIN),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Notes",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Capture, Recall, Simplify",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  CustomTextFormField(
                    textFieldType: TextFieldType.email,
                    prefixIcon: const Icon(Icons.mail),
                    onChanged: (email) {
                      sl<SignUpFormBloc>()
                          .add(SignUpFormEvent.emailOnChanged(email));
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  CustomTextFormField(
                    textFieldType: TextFieldType.password,
                    prefixIcon: const Icon(Icons.password),
                    onChanged: (pass) {
                      sl<SignUpFormBloc>()
                          .add(SignUpFormEvent.passwordOnChanged(pass));
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomElevatedButton(
                    onTap: () {
                      if (formKey.currentState?.validate() == true) {
                        sl<SignUpFormBloc>()
                            .add(const SignUpFormEvent.signUpWithEmail());
                      }
                    },
                    label: "Sign Up",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        CustomTextButton(
                          label: "Login",
                          onTap: () => context.go(AppRoutes.LOGIN_ROUTE_PATH),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
