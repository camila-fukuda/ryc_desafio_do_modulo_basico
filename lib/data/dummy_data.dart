import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward.dart';

import '../models/task.dart';

final dummyRewards = [
  Reward(
    id: 'r1',
    name: 'Healing Potion',
    description: 'Restores 2 lives.',
    price: 8,
    livesToRestore: 2,
    icon: const Icon(
      size: 40,
      FontAwesomeIcons.flask,
      color: Colors.white,
    ),
  ),
  Reward(
    id: 'r2',
    name: 'Bandage',
    description: 'Restores 1 life.',
    price: 5,
    livesToRestore: 1,
    icon: const Icon(
      size: 40,
      FontAwesomeIcons.bandAid,
      color: Colors.white,
    ),
  )
];

final dummyTasks = [
  Task(
      id: 'p1',
      title: 'Lavar Roupas',
      done: false,
      description: 'Lavar roupas sujas',
      limitDate: DateTime.now().add(const Duration(days: -10))),
  Task(
      id: 'p2',
      done: false,
      title: 'Passar Roupas',
      description: 'Passar roupas limpas.',
      limitDate: DateTime.now().add(const Duration(days: 3))),
  Task(
      id: 'p3',
      done: false,
      title: 'Pagar as contas.',
      description: 'Pagar as contas desse mês',
      limitDate: DateTime.now().add(const Duration(days: 1))),
  Task(
      id: 'p4',
      done: true,
      title: 'Declarar imposto de renda',
      description: 'Fazer a declaração do imposto de renda.',
      limitDate: DateTime.now().add(const Duration(days: -6))),
  Task(
      id: 'p5',
      done: false,
      title: 'Arrumar o guarda roupa',
      description: 'Dobrar e guardar as roupas limpas.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
  Task(
      id: 'p6',
      done: true,
      title: 'Fazer compras',
      description: 'Ir ao supermercado e comprar todos itens da lista.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
  Task(
      id: 'p7',
      done: false,
      title: 'Arrumar a garagem',
      description: 'Guardar as ferramentas e limpar a garagem.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
  Task(
      id: 'p8',
      done: true,
      title: 'Lavar o carro',
      description: 'Limpar o carro por dentro e lavar por fora.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
];
