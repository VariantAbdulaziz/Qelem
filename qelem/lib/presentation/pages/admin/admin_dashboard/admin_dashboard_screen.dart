import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/admin/tags/tags_dashboard_page.dart';
import 'package:qelem/presentation/pages/admin/users/users_dashboard_page.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Admin Dashboard'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Users',
                ),
                Tab(
                  text: 'Tags',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              UsersDashboardPage(),
              TagsDashboardPage(),
            ],
          ),
        ));
  }
}
