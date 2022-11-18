class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Go trading', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Prepare for my day',
      ),
      ToDo(
        id: '04',
        todoText: 'CHeck emails',
      ),
      ToDo(
        id: '05',
        todoText: 'Learn Flutter framework',
      ),
      ToDo(
        id: '06',
        todoText: 'Have Dinner with friends',
      ),
    ];
  }
}
