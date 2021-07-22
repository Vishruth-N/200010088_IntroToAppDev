class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "IIT Bombay was established in",
    "options": ['1947', '1951', '1957', '1958'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "What is the age of our Universe?",
    "options": ['7.3 billion years', '3.2 billion years', '13.7 billion years', '9.7 billion years'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "What is the human population of the world",
    "options": ['7.9 billion', '7.5 billion', '8.2 billion', '1.2 billion'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen in C++?",
    "options": ['cin>>', 'count<<', 'cout<<', 'output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What command do you use to input data from the user in C++?",
    "options": ['cin>>', 'count<<', 'cout<<', 'output>>'],
    "answer_index": 0,
  },
];
