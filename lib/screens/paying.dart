import 'package:flutter/material.dart';
import 'package:credit_card/credit_card_form.dart';
import 'package:credit_card/credit_card_model.dart';
import 'package:credit_card/flutter_credit_card.dart';
import 'package:privco/widgets/paying/thank_you.dart';


class Paying extends StatefulWidget {

  @override
  _PayingState createState() => _PayingState();
}

class _PayingState extends State<Paying> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;

    return MaterialApp(
      title: 'Flutter Credit Card View Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                ),
                Container(
                      child: CreditCardForm(
                        onCreditCardModelChange: onCreditCardModelChange,
                      ),
                ),
                SizedBox(height: height*0.08,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ThankYouPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                   //margin: EdgeInsets.only(top: ),
                    width: 320,
                    height: height*0.04,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(175, 129, 205, 40),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Payement',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),

                  ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}


