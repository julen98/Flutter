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
  String _enteredText = '';
  late String _poder = 'Volar';
  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    @override
    // ignore: unused_element
    void initState() {
      super.initState();
      textControllerNombre = TextEditingController();
    }

    @override
    // ignore: unused_element
    void dispose() {
      textControllerNombre.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
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
                    _enteredText = value;
                  });
                },
                controller: textControllerNombre,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  icon: const Icon(Icons.account_circle_rounded),
                  suffixIcon: const Icon(Icons.accessibility),
                  hintText: 'Escribe aquí el nombre...',
                  helperText: 'Solo es el nombre',
                  counterText: ('Letras: ${_enteredText.length.toString()}'),
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
                controller: textControllerNombre,
                onTap: () => showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(1901, 1),
                    lastDate: DateTime.now()),
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
                          const BorderSide(color: Colors.black, width: 1.0)),
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
          ],
        ),
      ),
    );
  }
}
