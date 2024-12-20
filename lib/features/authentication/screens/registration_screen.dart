import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import '../../../export.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  String dropDownValue = 'Kuwait';
  List<String> items = ['Kuwait', 'Australia', 'Canada'];
  List<String> city = ['Kuwait', 'Australia', 'Canada', 'Egypt', 'North america'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.gapH60,
                  Text(
                    'Setup Profile',
                    style: CustomUiText.size28,
                  ),
                  Gap.gapH12,
                  Text(
                    "Complete your profile to access all \nthe feature",
                    style: CustomUiText.size16,
                  ),
                  Gap.gapH30,
                  Text(
                    'Full name',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(
                    hintText: 'Enter Name',
                  ),
                  Gap.gapH24,
                  Text(
                    'Email',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(
                    hintText: 'Enter Email',
                  ),
                  Gap.gapH24,
                  Text(
                    'Mobile Number',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  Row(
                    children: [
                      Container(
                          height: 48,
                          width: 85,
                          decoration: BoxDecoration(
                              color: AppColors.kGrey100,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              '+965',
                              style: CustomUiText.size16,
                            ),
                          )),
                      Gap.gapW8,
                      const Expanded(child: CustomMobileTextField()),
                    ],
                  ),
                  Gap.gapH24,
                  Text(
                    'Governate',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  SizedBox(
                    // height: 44,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
                      ),
                      value: dropDownValue,
                      isExpanded: true,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue = newValue!;
                        });
                      },
                    ),
                  ),
                  Gap.gapH24,
                  Text(
                    'City',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  SizedBox(
                    // height: 44,
                    child: DropdownButtonFormField<String>(
                      hint: const Text('Choose City'),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
                      ),
                      // value: dropDownValue,
                      isExpanded: true,
                      items: city.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? value) {},
                    ),
                  ),
                  Gap.gapH24,
                  Text(
                    'Area',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Enter Area'),
                  Gap.gapH24,
                  Text(
                    'Street No',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Enter Street no'),
                  Gap.gapH24,
                  Text(
                    'Avenue(Optional)',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Enter Avenue'),
                  Gap.gapH24,
                  Text(
                    'Building No',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Building no'),
                  Gap.gapH24,
                  Text(
                    'Floor(Optional)',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Floor'),
                  Gap.gapH24,
                  Text(
                    'Flat',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Flat'),
                  Gap.gapH30,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState != null) {
                          debugPrint('object ${_formKey.currentState!.validate()}');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF95622D),
                        textStyle: CustomUiText.size16,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Submit"),
                    ),
                  ),
                  Gap.gapH30,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  // TextEditingController _emailController = TextEditingController();
  String hintText;
  CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      // margin: const EdgeInsets.only(left: 24, right: 24),
      // height: 54,
      // width: MediaQuery.of(context).size.width,
      child: TextFormField(
        keyboardType: TextInputType.text,
        enabled: false,
        textAlignVertical: TextAlignVertical.bottom,
        // maxLines: 1,
        // minLines: 1,
        controller: nameController,
        // key: _formKey,
        // validator: (value) => value!.isEmpty ? "Please enter name" : null,
        // keyboardType: TextInputType.text,
        decoration: InputDecoration(
          // isDense: true,
          // enabled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          // errorText: _validate ? "Value not empty" : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
        ),
      ),
    );
  }
}
