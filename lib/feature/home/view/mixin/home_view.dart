import 'package:architecture_template/feature/home/view/mixin/home_mixin_view.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_locazalition.dart';
import 'package:architecture_template/product/utility/constant/enums/lacales.dart';
import 'package:easy_localization/easy_localization.dart';
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
    return Scaffold(
      appBar: const _HomeAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('change Langune'),
          ElevatedButton(
            onPressed: () {
              ProductLocazalition.updateLangue(
                context: context,
                value: Locales.en,
              );
            },
            child: const Text(LocaleKeys.general_button_save).tr(),
          ),
        ],
      ),
    );
  }
}
