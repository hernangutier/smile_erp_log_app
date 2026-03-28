import 'package:go_router/go_router.dart';
import 'package:smile_erp_log_app/presentation/pages/logistic/dash.dart';

final appRouter = GoRoute(
    routes: [
        GoRoute(
          path: '/',
          name: DashBoard.name ,
          builder: (context, state)=> const DashBoard(),
        ),
    ]
);