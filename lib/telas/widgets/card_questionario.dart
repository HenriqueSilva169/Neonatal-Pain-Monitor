import 'package:flutter/material.dart';
import '../../utils/modelos/pergunta.dart';

class CardQuestionario extends StatelessWidget {
  final List<Question> questions;
  final Function(List<Question>) onSave;
  final PageController pageController;
  final Function(int)? onPageChanged;

  const CardQuestionario(
      {super.key,
      required this.questions,
      required this.onSave,
      required this.pageController,
      this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: questions.length,
              onPageChanged: onPageChanged,
              itemBuilder: (context, index) {
                final question = questions[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          question.questionText,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: question.options.map((option) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RadioListTile(
                                  title: Text(
                                    option,
                                    style: const TextStyle(fontSize: 16.0),
                                  ),
                                  value: option,
                                  groupValue: question.selectedOption,
                                  onChanged: (value) {
                                    question.selectedOption = value.toString();
                                    onSave(questions);
                                  },
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
