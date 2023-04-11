import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:neonatal_pain_monitor/telas/escolha_escala.dart';

class CadastroBebe extends StatefulWidget {
  const CadastroBebe({super.key});

  @override
  CadastroBebeState createState() {
    return CadastroBebeState();
  }
}

class CadastroBebeState extends State<CadastroBebe> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController dateInput = TextEditingController();
  TextEditingController timeinput = TextEditingController();

  final List<String> list = <String>['Masculino', 'Feminino'];

  String dropdownValue = "";

  @override
  void initState() {
    timeinput.text = "";
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const EscolhaEscala()));
        },
        label: const Text('Escolher escala'),
      ),
      appBar: AppBar(title: const Text('Adicione um recém-nascido')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 64.0),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.baby_changing_station_rounded),
                          labelText: 'Nome do recém-nascido'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person_2), labelText: 'Nome da mãe'),
                    ),
                    TextField(
                        controller: dateInput,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_today),
                            labelText: "Data de nascimento do recém-nascido"),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);

                            setState(() {
                              dateInput.text = formattedDate;
                            });
                          }
                        }),
                    TextField(
                      controller: timeinput,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.timer),
                          labelText: "Hora do nascimento"),
                      readOnly: true,
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );

                        if (pickedTime != null) {
                          setState(() {
                            timeinput.text = pickedTime.format(context);
                          });
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: DropdownButtonFormField<String>(
                        decoration:
                            const InputDecoration(prefixIcon: Icon(Icons.toys)),
                        isExpanded: true,
                        hint: const Text('Sexo'),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.view_week),
                          labelText: 'Idade gestacional (em semanas)'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.view_day),
                          labelText: 'Idade gestacional (em dias adicionais)'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.monitor_weight_rounded),
                          labelText: 'Peso no nascimento'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.hourglass_top_rounded),
                          labelText: 'Apgar no 1º minuto'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.hourglass_bottom_rounded),
                          labelText: 'Apgar no 5º minuto'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.monitor_heart_rounded),
                          labelText: 'Patologia materna'),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.medical_information),
                          labelText: 'Diagnóstico do recém-nascido'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
