import 'package:flutter/material.dart';
import 'question_model.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int questionScreen = 0;
  int selectedQuestion = 0;
  int questionIndex = 0;
  int selectedAnswerKey = -1;
  int countOfCorrectAnswers = 0;

  List questionList = [
    const QuestionModel(
        question: " Which computer scientist is known as the father of 'www'?",
        options: [
          "Bill Gates",
          "Tim Berners-Lee",
          "Mark Zuckerberg",
          "Lary Page",
        ],
        answerKey: 1),
    const QuestionModel(
        question:
            "Which tech giant is associated with slogan 'Think Different'?",
        options: [
          "Google",
          "Facebook",
          "Apple",
          "Microsoft",
        ],
        answerKey: 2),
    const QuestionModel(
        question: "Which company developed the first smartphone?",
        options: [
          "IBM",
          "Apple",
          "Motorola",
          "Samsung",
        ],
        answerKey: 0),
    const QuestionModel(
        question: "What is the name of creator of Linux OS?",
        options: [
          "Richard Stallman",
          "Steve Wozniak",
          "Linus Torvalds",
          "Tim Berners-Lee",
        ],
        answerKey: 2),
    const QuestionModel(
        question: "Which company developed the Flutter Framework?",
        options: [
          "Google",
          "Facebook",
          "Microsoft",
          "Apple",
        ],
        answerKey: 0),
  ];

  MaterialStateProperty<Color?> answerCheck(int indexOfButton) {
    if (selectedAnswerKey != -1) {
      if (indexOfButton == questionList[questionIndex].answerKey) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (indexOfButton == selectedAnswerKey) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerKey == -1) {
      return;
    }
    if (selectedAnswerKey == questionList[questionIndex].answerKey) {
      countOfCorrectAnswers += 1;
    }
    if (selectedAnswerKey != -1) {
      if (questionIndex == questionList.length - 1) {
        setState(() {
          questionScreen = 2;
        });
      }
      selectedAnswerKey = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  Scaffold questionScreenCheck() {
    if (questionScreen == 0) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quizzo",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF3B3355),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.network(
                  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRg_wSSrM09TAiSBQnPCUd--LwusAghWJ0g7yRsY-OHs96dREYF",
                  width: 400,
                  height: 400),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3B3355),
                  ),
                  onPressed: () {
                    questionScreen = 1;
                    questionIndex = 0;
                    countOfCorrectAnswers = 0;
                    selectedAnswerKey = -1;
                    setState(() {});
                  },
                  child: const Text(
                    "Let's Start",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ]),
          ],
        ),
      );
    } else if (questionScreen == 1) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quizzo",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF3B3355),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              "https://static.vecteezy.com/system/resources/previews/003/728/931/original/cloud-question-mark-free-vector.jpg",
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Question : ",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("${0}${questionIndex + 1} of ${0}${questionList.length}",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w800))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 80,
              width: 350,
              child: Text("${questionList[questionIndex].question}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600)),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: answerCheck(0),
                  ),
                  onPressed: () {
                    if (selectedAnswerKey == -1) {
                      setState(() {
                        selectedAnswerKey = 0;
                      });
                    }
                  },
                  child: Text("A. ${questionList[questionIndex].options[0]}",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5D5D81)))),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: answerCheck(1),
                  ),
                  onPressed: () {
                    if (selectedAnswerKey == -1) {
                      setState(() {
                        selectedAnswerKey = 1;
                      });
                    }
                  },
                  child: Text("B. ${questionList[questionIndex].options[1]}",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5D5D81)))),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: answerCheck(2),
                  ),
                  onPressed: () {
                    if (selectedAnswerKey == -1) {
                      setState(() {
                        selectedAnswerKey = 2;
                      });
                    }
                  },
                  child: Text("C. ${questionList[questionIndex].options[2]}",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5D5D81)))),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 280,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: answerCheck(3),
                  ),
                  onPressed: () {
                    if (selectedAnswerKey == -1) {
                      setState(() {
                        selectedAnswerKey = 3;
                      });
                    }
                  },
                  child: Text("D. ${questionList[questionIndex].options[3]}",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5D5D81)))),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              validateCurrentPage();
            },
            backgroundColor: const Color(0xFF3B3355),
            child: const Icon(
              Icons.forward,
              color: Colors.white,
            )),
      );
    } else if (countOfCorrectAnswers > 2) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quizzo",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color(0xFF3B3355),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Congratulations...",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.network(
                    "https://media.istockphoto.com/id/1182465245/photo/gold-winners-trophy-champion-cup-with-falling-confetti.jpg?s=612x612&w=0&k=20&c=oL7XQ2GgDptAOYAZY_63kYjRrAnb_Zhn0GUdNLy4rpY=",
                    height: 220,
                    width: 220,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "You did a great job in the quiz!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Your Score 0$countOfCorrectAnswers/ 0${questionList.length}",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3B3355),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3B3355),
                      ),
                      onPressed: () {
                        questionScreen = 1;
                        questionIndex = 0;
                        countOfCorrectAnswers = 0;
                        selectedAnswerKey = -1;
                        setState(() {});
                      },
                      child: const Text("Once Again",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ]),
              ]),
            ],
          ));
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quizzo",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF3B3355),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sorry :(",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(children: [
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.cancel,
                    color: Color(0xFF3B3355),
                    size: 120,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  "Please Try Again!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Your Score 0$countOfCorrectAnswers/ 0${questionList.length}",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3B3355),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B3355),
                    ),
                    onPressed: () {
                      questionScreen = 1;
                      questionIndex = 0;
                      countOfCorrectAnswers = 0;
                      selectedAnswerKey = -1;
                      setState(() {});
                    },
                    child: const Text("Try Again",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
              ]),
            ]),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return questionScreenCheck();
  }
}

