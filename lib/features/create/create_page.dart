import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  String? dropDownNames;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Create",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: const Text(
                  "Post",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.grey,
                        ),
                        Text("Add article cover Image")
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Title"),
                const SizedBox(
                  height: 5,
                ),
                const CustomTextField(),
                const SizedBox(
                  height: 10,
                ),
                const Text("Title"),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                      hintText: "Article Title",
                      fillColor: Colors.grey[300],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Topic"),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.all(6),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: DropdownButton<String>(
                        value: dropDownNames,
                        underline: const SizedBox(
                          height: 0,
                        ),
                        hint: Container(
                          child: const Text("Select Topic"),
                        ),
                        isExpanded: true,
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Icon(Icons.arrow_drop_down),
                          ),
                        ),
                        items: <String>["mosi", "git", "github"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value,
                              child: Tooltip(
                                  message: value,
                                  child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, right: 4),
                                      child: Text(value))));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownNames = newValue;
                          });
                        })),
              ],
            ),
          ),
        ));
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Article Title",
          fillColor: Colors.grey[300],
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
