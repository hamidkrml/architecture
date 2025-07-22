import 'package:architecture_template/feature/home/view/mixin/home_mixin_view.dart';
import 'package:flutter/material.dart';

part 'widget/home_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return _HomeAppbar();
  }
}
