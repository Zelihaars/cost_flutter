import 'package:cost_flutter/components/app_bar.dart';
import 'package:cost_flutter/components/drawer_bar.dart';
import 'package:flutter/material.dart';

class MissionPage extends StatelessWidget {
  final String companyName = "Our Mission"; // Şirket adını burada belirtin.
  final String researchInfo =
      "Cancer has the potential to affect every aspect of an individual's life (e.g. physical, psychological, social, economic and spiritual domains) with many documented post treatment unmet needs. The needs of cancer survivors are multifaceted and complex; some needs are common among different cancer types, while others are cancer specific. Given the sheer number of cancer survivors and the cumulative prevalence of individuals with long-term effects of cancer and cancer treatment, there is an urgent need for healthcare systems which can accommodate the growing need for long-term follow-up to ensure good quality of life and functioning, ability to return to work and independent living. The main aim of the INE-CSC COST Action is to systematically support the sustained translation of evidence-based interventions into routine clinical practice as part of a cross boundary, systems level cancer survivorship pathway and ultimately enhance the health and wellbeing of cancer survivors. Through this Action a sustainable network of researchers, clinicians, patients, policy makers, and wider stakeholders will integrate the emerging knowledge, on cancer survivorship, digital health solutions, and implementation science, to support a sustainable model of care for patients on their cancer journey.";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: MyAppBar(),
        drawer: DrawerBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons
                      .business_sharp, // İstediğiniz bir ikonu burada kullanabilirsiniz
                  size: 100,
                  color:
                      Colors.red.shade800, // İkonun rengini ayarlayabilirsiniz
                ),
                SizedBox(height: 20),
                Text(
                  companyName,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Times New Roman',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  researchInfo,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Times New Roman',
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
