import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 18,
              color: Colors.green,
            ),
            Container(
              width: 1,
              height: 50,
              decoration: const BoxDecoration(color: Colors.black),
            ),
            const Icon(
              Icons.location_on_outlined,
              size: 18,
              color: Colors.red,
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: TextFormField(
                  autofocus: true,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Source Location',
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 228, 228, 228)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 228, 228, 228)),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 228, 228, 228)),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 228, 228, 228)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: const InputDecoration(
                      labelText: 'Destination Lcation',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 228, 228, 228)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 228, 228, 228)),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 228, 228, 228)),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 228, 228, 228)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
