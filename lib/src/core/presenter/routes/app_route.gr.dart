// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:invoice_app/main.dart' as _i1;
import 'package:invoice_app/src/features/add_invoice/presentation/add_invoice_page.dart'
    as _i3;
import 'package:invoice_app/src/features/settings/presentation/basic/basic_info_page.dart'
    as _i4;
import 'package:invoice_app/src/features/settings/presentation/settings_page.dart'
    as _i2;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SettingsPage(key: args.key),
      );
    },
    AddInvoiceRoute.name: (routeData) {
      final args = routeData.argsAs<AddInvoiceRouteArgs>(
          orElse: () => const AddInvoiceRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AddInvoicePage(key: args.key),
      );
    },
    BasicInfoRoute.name: (routeData) {
      final args = routeData.argsAs<BasicInfoRouteArgs>(
          orElse: () => const BasicInfoRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BasicInfoPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i5.PageInfo<SettingsRouteArgs> page =
      _i5.PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AddInvoicePage]
class AddInvoiceRoute extends _i5.PageRouteInfo<AddInvoiceRouteArgs> {
  AddInvoiceRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          AddInvoiceRoute.name,
          args: AddInvoiceRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddInvoiceRoute';

  static const _i5.PageInfo<AddInvoiceRouteArgs> page =
      _i5.PageInfo<AddInvoiceRouteArgs>(name);
}

class AddInvoiceRouteArgs {
  const AddInvoiceRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AddInvoiceRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.BasicInfoPage]
class BasicInfoRoute extends _i5.PageRouteInfo<BasicInfoRouteArgs> {
  BasicInfoRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          BasicInfoRoute.name,
          args: BasicInfoRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BasicInfoRoute';

  static const _i5.PageInfo<BasicInfoRouteArgs> page =
      _i5.PageInfo<BasicInfoRouteArgs>(name);
}

class BasicInfoRouteArgs {
  const BasicInfoRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'BasicInfoRouteArgs{key: $key}';
  }
}
