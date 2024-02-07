import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "คำถามที่ 1: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่1",
      "options": ["พระบาทสมเด็จพระมงกุฎเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระปรเมนทรมหาอานันทมหิดล พระอัฐมรามาธิบดินทร", "พระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลกมหาราช"],
      "correctAnswer": 3
    },
    {
      "question": "คำถามที่ 2: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่2",
      "options": ["พระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลกมหาราช", "พระบาทสมเด็จพระพุทธเลิศหล้านภาลัย", "พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 1
    },
    {
      "question": "คำถามที่ 3: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่3",
      "options": ["พระบาทสมเด็จพระปรเมนทรมหาอานันทมหิดล พระอัฐมรามาธิบดินทร", "พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระปรเมนทรรามาธิบดีศรีสินทรมหาวชิราลงกรณ พระวชิรเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 1
    },
    {
      "question": "คำถามที่ 4: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่4",
      "options": ["พระบาทสมเด็จพระมงกุฎเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระพุทธเลิศหล้านภาลัย"],
      "correctAnswer": 2
    },
    {
      "question": "คำถามที่ 5: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่5",
      "options": ["พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระปกเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร", "พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 3
    },
    {
      "question": "คำถามที่ 6: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่6",
      "options": ["พระบาทสมเด็จพระพุทธเลิศหล้านภาลัย", "พระบาทสมเด็จพระมงกุฎเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร", "พระบาทสมเด็จพระปรเมนทรรามาธิบดีศรีสินทรมหาวชิราลงกรณ พระวชิรเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 1
    },
    {
      "question": "คำถามที่ 7: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่7",
      "options": ["พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระปรเมนทรมหาอานันทมหิดล พระอัฐมรามาธิบดินทร", "พระบาทสมเด็จพระปกเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 3
    },
    {
      "question": "คำถามที่ 8: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่8",
      "options": ["พระบาทสมเด็จพระปรเมนทรมหาอานันทมหิดล พระอัฐมรามาธิบดินทร", "พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร", "พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 0
    },
    {
      "question": "คำถามที่ 9: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่9",
      "options": ["พระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร", "พระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลกมหาราช", "พระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัว"],
      "correctAnswer": 1
    },
    {
      "question": "คำถามที่ 10: พระนามเต็มของพระมหากษัตริย์ไทยรัชกาลที่10",
      "options": ["พระบาทสมเด็จพระปกเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระปรเมนทรมหาอานันทมหิดล พระอัฐมรามาธิบดินทร", "พระบาทสมเด็จพระปรเมนทรรามาธิบดีศรีสินทรมหาวชิราลงกรณ พระวชิรเกล้าเจ้าอยู่หัว", "พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร"],
      "correctAnswer": 2
    },
    // เพิ่มคำถามต่อไปตามต้องการ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentQuestionIndex]["question"],
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ...(questions[currentQuestionIndex]["options"] as List<String>).map((option) {
              return ElevatedButton(
                onPressed: () {
                  checkAnswer(option);
                },
                child: Text(option),
              );
            }).toList(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: nextQuestion,
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }

 void checkAnswer(String selectedOption) {
  int correctAnswerIndex = questions[currentQuestionIndex]["correctAnswer"];
  if (selectedOption == questions[currentQuestionIndex]["options"][correctAnswerIndex]) {
    setState(() {
      correctAnswers++; // เพิ่มคะแนนเมื่อตอบถูก
    });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ถูกต้อง!'),
          content: Text('คําตอบของคุณถูกต้อง.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                goToNextQuestion();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ไม่ถูกต้อง!'),
          content: Text('คําตอบของคุณไม่ถูกต้อง.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                goToNextQuestion(); // ไปยังคำถามถัดไปโดยไม่เพิ่มคะแนน
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}


  void goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('จบแบบทดสอบ'),
              content: Text('คุณทําแบบทดสอบเสร็จแล้ว คะแนนของคุณ: $correctAnswers/10'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('End of Quiz'),
              content: Text('You have finished the quiz. Your score: $correctAnswers/10'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }
}
