import 'package:flutter/material.dart';

Drawer menuNavegacao() {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: [
      ListTile(
        title: const Text('Adicionar bebê'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Adicionar enfermeiro'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('Intervenções'),
        onTap: () {},
      )
    ],
  ));
}
