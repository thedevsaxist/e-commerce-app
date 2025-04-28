import 'package:go_router/go_router.dart';

import '../features/auth/presentation/screens/login_screen.dart';
import '../features/home/presentation/screens/admin_dashboard.dart';
import '../features/home/presentation/screens/customer_home_screen.dart';
import '../features/home/presentation/screens/vendor_home_screen.dart';

import 'routes.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: Routes.loginScreen,
    routes: [
      GoRoute(
        name: "Login Screen",
        path: Routes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: "Admin Dashboard",
        path: Routes.adminDashboard,
        builder: (context, state) => const AdminDashboard(),
      ),
      GoRoute(
        name: "Vendor Home Screen",
        path: Routes.vendorHomeScreen,
        builder: (context, state) => const VendorHomeScreen(),
      ),
      GoRoute(
        name: "Customer Home Screen",
        path: Routes.customerHomeScreen,
        builder: (context, state) => const CustomerHomeScreen(),
      ),
    ],
  );
}
