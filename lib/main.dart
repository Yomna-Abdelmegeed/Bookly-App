import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/views_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(
          create: (BuildContext context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..getFeaturedBooks(),
        ),
        BlocProvider<NewestBooksCubit>(
          create: (BuildContext context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100b20),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff100b20),
          ),
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
