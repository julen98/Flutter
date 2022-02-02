import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  State<InputsPage> createState() => InputsPageState();
}

class InputsPageState extends State<InputsPage> {
  late TextEditingController textControllerNombre = TextEditingController();
  late TextEditingController textControllerEmail = TextEditingController();
  late TextEditingController textControllerPassword = TextEditingController();
  late TextEditingController textControllerBirth = TextEditingController();

  DateTime selectedDate = DateTime.now();
  String _enteredTextNombre = '';
  String _enteredTextEmail = '';
  late String _poder = 'Volar';
  final List<String> _poderes = [
    'Volar',
    'Rayos X',
    'Super Aliento',
    'Super Fuerza'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // ------------------------------------
            // -------------- NOMBRE --------------
            // ------------------------------------
            Align(
              alignment: Alignment.topLeft,
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    _enteredTextNombre = value;
                  });
                },
                controller: textControllerNombre,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  icon: const Icon(Icons.account_circle_rounded),
                  suffixIcon: const Icon(Icons.accessibility),
                  hintText: 'Escribe aquí el nombre...',
                  helperText: 'Solo es el nombre',
                  counterText:
                      ('Letras: ${_enteredTextNombre.length.toString()}'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0)),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const Divider(),
            // ------------------------------------
            // ------------- EMAIL ----------------
            // ------------------------------------
            Align(
              alignment: Alignment.topLeft,
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    _enteredTextEmail = value;
                  });
                },
                controller: textControllerEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: const Icon(Icons.email),
                  suffixIcon: const Icon(Icons.alternate_email),
                  hintText: 'Escribe aquí el email...',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0)),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const Divider(),
            // ------------------------------------
            // ------------ PASSWORD --------------
            // ------------------------------------
            Align(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: textControllerPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  icon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.lock_open),
                  hintText: 'Escribe aquí la contraseña...',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0)),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const Divider(),
            // ------------------------------------
            // -------------- FECHA ---------------
            // ------------------------------------
            Align(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: textControllerBirth,
                onTap: () => showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(1901, 1),
                  lastDate: DateTime.now(),
                ).then((selectedDate) {
                  if (selectedDate != null) {
                    textControllerBirth.text = selectedDate.toString();
                  }
                }),
                decoration: InputDecoration(
                  labelText: 'Fecha de nacimiento',
                  icon: const Icon(Icons.calendar_today),
                  suffixIcon: const Icon(Icons.perm_contact_calendar),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.0),
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const Divider(),
            Align(
              alignment: Alignment.topLeft,
              child: DropdownButton<String>(
                value: _poder,
                onChanged: (newValue) {
                  setState(() {
                    _poder = newValue!;
                  });
                },
                items: _poderes.map((location) {
                  return DropdownMenuItem(
                    child: Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            const Divider(),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Nombre es: ${textControllerNombre.text}'),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Email: ${textControllerEmail.text}'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(_poder),
            ),
          ],
        ),
      ),
    );
  }
}
