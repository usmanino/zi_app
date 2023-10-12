import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zi_app/colors/app_colors.dart';
import 'package:zi_app/features/dashboard/components/operator_button.dart';
import 'package:zi_app/features/dashboard/view_model/calculator_view_model.dart';
import 'package:zi_app/features/dashboard/view_model/calculator_view_model.dart';
import 'package:zi_app/reusables/custom_input.dart';
import 'package:zi_app/utils/Spacing.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController xController = TextEditingController();
  final TextEditingController yController = TextEditingController();
  // late CalculatorViewModel calculatorViewModel = Provider.of<CalculatorViewModel>(context, listen: false);
  // late CalculatorViewModel model;
  // addition() {
  //   final x = xController.text.trim();
  //   final y = yController.text.trim();
  //   setState(() {
  //     result = (num.parse(x) + num.parse(y)).toString();
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // calculatorViewModel =
    //     Provider.of<CalculatorViewModel>(context, listen: false);
    // final model = context.read<CalculatorViewModel>();

    // model = Provider.of<CalculatorViewModel>(context, listen: false);

    // model.addition(6.toString(), 1.toString());

    // calculatorViewModel =
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CalculatorViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Consumer<CalculatorViewModel>(builder: (_, result, __) {
        return SafeArea(
            child: Container(
          padding: AppPadding.defaultPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'X',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.pw,
                    Expanded(
                      child: CustomInput(
                        controller: xController,
                      ),
                    ),
                  ],
                ),
                20.ph,
                Row(
                  children: [
                    Text(
                      'Y',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.pw,
                    Expanded(
                      child: CustomInput(
                        controller: yController,
                      ),
                    ),
                  ],
                ),
                20.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OpratorButton(
                      child: const Icon(Icons.add),
                      onTap: () {
                        // addition();
                        model.addition(xController.text, yController.text);
                      },
                    ),
                    OpratorButton(
                      child: const Icon(Icons.remove),
                      onTap: () {},
                    ),
                    OpratorButton(
                      child: const Icon(Icons.clear),
                      onTap: () {},
                    ),
                    OpratorButton(
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        child: Text(
                          '/',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                20.ph,
                Text(
                  'Result: ${result.result}',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
        ));
      }),
    );
  }
}
