import 'package:flutter/material.dart';
import 'package:flutter_crud_firebase/pages/home/contact_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactController contactController = Get.put(ContactController());
    TextEditingController updateNameController = TextEditingController();
    TextEditingController updateNumberController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: contactController.name,
                        decoration: InputDecoration(hintText: "Enter name"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: contactController.number,
                        decoration: InputDecoration(hintText: "Enter number"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          contactController.addContact();
                        },
                        child: Text("Save"),
                      ),
                      SizedBox(width: 20.0,),
                      ElevatedButton(
                        onPressed: () {
                          contactController.getContact();
                        },
                        child: Text("Call"),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 700.0,
                  child: Obx(() => ListView.builder(
                    itemCount: contactController.contactList.length,
                    itemBuilder: (context, index) {
                      var element = contactController.contactList[index];
                      return ListTile(
                        leading: Icon(Icons.phone),
                        title: Text(element.name.toString()),
                        subtitle: Text(element.number.toString()),
                        trailing: PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("Edit"),
                              onTap: () {
                                updateNameController.text = element.name!;
                                updateNumberController.text = element.number!;

                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Edit Contact"),
                                      content: Column(
                                        children: [
                                          TextFormField(
                                            controller: updateNameController,
                                            decoration: InputDecoration(hintText: "Enter name"),
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(
                                            controller: updateNumberController,
                                            decoration: InputDecoration(hintText: "Enter number"),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Cancel"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            contactController.updateContact(
                                              element.id.toString(),
                                              updateNameController.text!,
                                              updateNumberController.text!,
                                            );;
                                            Navigator.pop(context);
                                          },
                                          child: Text("Save"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                            PopupMenuItem(
                              child: Text("Delete"),
                              onTap: () => contactController.deleteContact(element.id.toString()),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
