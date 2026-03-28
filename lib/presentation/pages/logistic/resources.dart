
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smile_erp_log_app/presentation/pages/logistic/dash_ddt.dart';

final pageRoute = <_Items>[
    _Items(FontAwesomeIcons.carBurst , "DDT (Interno)", DashDDt()),
    _Items(FontAwesomeIcons.carBattery , "DDT (Externo)",DashDDt() ),
    _Items(FontAwesomeIcons.magnifyingGlass , "Buscar Pedido", DashDDt()), 
];

final pageRouteLog = <_Items>[
    _Items(FontAwesomeIcons.truck, "en Espera", DashDDt()),
    _Items(FontAwesomeIcons.truckRampBox, "en Carga", DashDDt()),
    _Items(FontAwesomeIcons.truckFast, "en Transito", DashDDt()),

];

class _Items {
    final FaIconData icon;
    final String subtitle;
    Widget page;

    _Items(this.icon, this.subtitle, this.page);
}

