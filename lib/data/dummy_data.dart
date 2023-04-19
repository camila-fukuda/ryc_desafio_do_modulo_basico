import '../models/task.dart';

final dummyTasks = [
  Task(
      id: 'p1',
      title: 'Lavar Roupas',
      description: 'Lavar roupas sujas',
      limitDate: DateTime.now().add(const Duration(days: -10))),
  Task(
      id: 'p2',
      title: 'Passar Roupas',
      description: 'Passar roupas limpas.',
      limitDate: DateTime.now().add(const Duration(days: 3))),
  Task(
      id: 'p3',
      title: 'Pagar as contas.',
      description: 'Pagar as contas desse mês',
      limitDate: DateTime.now().add(const Duration(days: 1))),
  Task(
      id: 'p4',
      title: 'Declarar imposto de renda',
      description: 'Fazer a declaração do imposto de renda.',
      limitDate: DateTime.now().add(const Duration(days: -6))),
  Task(
      id: 'p5',
      title: 'Arrumar o guarda roupa',
      description: 'Dobrar e guardar as roupas limpas.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
  Task(
      id: 'p6',
      title: 'Fazer compras',
      description: 'Ir ao supermercado e comprar todos itens da lista.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
  Task(
      id: 'p7',
      title: 'Arrumar a garagem',
      description: 'Guardar as ferramentas e limpar a garagem.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
  Task(
      id: 'p8',
      title: 'Lavar o carro',
      description: 'Limpar o carro por dentro e lavar por fora.',
      limitDate: DateTime.now().add(const Duration(days: -5))),
];
