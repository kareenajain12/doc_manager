import 'package:doc_manager/widgets/dropdowns/custom_dropdown.dart';
import 'package:flutter/material.dart';

class AddDocumentScreen extends StatefulWidget {
  const AddDocumentScreen({super.key});

  @override
  State<AddDocumentScreen> createState() => _AddDocumentScreenState();
}

class _AddDocumentScreenState extends State<AddDocumentScreen> {
  List<String> documentType = [
    "ID",
    "Academic",
    "Reports",
    "Certificates",
    "Others",
  ];
  List<String> documentList = [
    "Aadhar Card",
    "Pan Card",
    "Driving License",
    "Voter ID",
    "College ID",
    "Others",
  ];
  String? selectedDocument;
  String? selectedDocumentType;

  final TextEditingController _documentNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Document"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Text(
                "Document",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomDropDown(
              dropdowmList: documentList,
              selectedValue: selectedDocument,
              hint: "Select Document",
              onChanged: (value) {
                setState(() {
                  selectedDocument = value;
                });
              },
            ),
            selectedDocument == "Others"
                ? Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Document Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextField(
                          controller: _documentNameController,
                          onTapOutside: (event) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          cursorColor: Colors.white,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: const TextStyle(
                              color: Colors.white24,
                              fontSize: 17,
                            ),
                            hintText: 'Enter Document Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blueGrey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            const Padding(
              padding: EdgeInsets.only(bottom: 10, top: 30),
              child: Text(
                "Document Type",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomDropDown(
                dropdowmList: documentType,
                selectedValue: selectedDocumentType,
                hint: "Select Document Type",
                onChanged: (value) {
                  setState(() {
                    selectedDocumentType = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
