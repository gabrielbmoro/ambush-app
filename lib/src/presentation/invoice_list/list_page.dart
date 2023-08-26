import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:invoice_app/src/core/di/di.dart';
import 'package:invoice_app/src/core/presenter/routes/app_route.gr.dart';

import 'invoice_list_item.dart';
import 'list_page_viewmodel.dart';

@RoutePage()
class InvoiceListPage extends StatelessWidget {
  InvoiceListPage({Key? key}) : super(key: key);
  final ListPageViewModel _viewModel = getIt();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (context) {
            return Text(
                _viewModel.appTitle,
              style: textTheme.titleLarge,
            );
          }
        ),
        centerTitle: false,
        actions: [

          Visibility(
            visible: false,
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.router.push(const SettingsRoute());
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('New invoice'),
        icon: const Icon(Icons.add),
        onPressed: () {
          _onAddClick(context);
        },
      ),
      body: Observer(builder: (context) {
        return ListView.separated(
          itemCount: _viewModel.invoiceList.length + 1,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Your invoices',
                  style: textTheme.headlineMedium!.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }

            index -= 1;

            var invoice = _viewModel.invoiceList[index];
            return InvoiceListItem(invoice: invoice);
          },
        );
      }),
    );
  }

  void _onAddClick(BuildContext context) {
    final navigator = context.router;
    navigator.push(ClientInfoRoute());
  }
}
