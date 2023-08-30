import 'package:firebase_core/firebase_core.dart';
import 'package:flows/firebase_options.dart';
import 'package:flows/presentation/cubits/login/login_cubit.dart';
import 'package:flows/presentation/cubits/login/login_state.dart';
import 'package:flows/presentation/cubits/registration/registration_cubit.dart';
import 'package:flows/presentation/cubits/registration/registration_state.dart';
import 'package:flows/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp( const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
    providers: [
      BlocProvider(create: (context)=> RegistrationCubit(RegistrationState.initial())),
      BlocProvider(create: (context)=> LoginCubit(LoginState.initial())),
    ],
    
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: OnboardingPage(),
      ),
    );
  }
}
