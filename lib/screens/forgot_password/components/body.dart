import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/no_account_text.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(13), 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight *0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});
  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey <FormState>();
  List<String> errors = [];
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged:(value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              // ignore: avoid_returning_null_for_void
              return null;
            }, 
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // if you are using latest version of flutter the lable text and hint text shown like this
              // if you r using flutter less then 1.20 * then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight *0.1),
          DefaulButton(
            text: "Continue", 
            press: (){
              if (_formKey.currentState!.validate()){
                // do what you want to do
              }

          }),
          SizedBox(height: SizeConfig.screenHeight *0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}

