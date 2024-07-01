import 'package:rescue_med_ambulance/Models/emergency.dart';

final List<Emergency> emergencies = [
  Emergency(
    name: 'Pregnancy',
    imagePath: "assets/pregnant 2.png",
    about:
        "Pregnancy is the period during which a fetus develops inside a woman's uterus, typically lasting about 40 weeks from the last menstrual period to childbirth.",
    steps: "• In an emergency delivery, stay calm and call emergency services. Help the mother lie down in a clean space and wash your hands if possible. Support the mother through contractions, allowing the baby to come out naturally without pulling. Once the baby is born, clear its airways, stimulate breathing, and keep the baby warm on the mother’s chest. Do not cut the umbilical cord; wait for medical help. After the placenta is delivered naturally, monitor the mother and baby closely until help arrives.",
    ),
  Emergency(
    name: 'Heart attack',
    imagePath: "assets/cardiogram 2.png",
    about:
        "A heart attack occurs when blood flows to a part of the heart is blocked, causing damage to the heart muscle. ",
  steps: "•	In an emergency heart attack situation, call emergency services immediately. Keep the person calm and at rest and have them chew an aspirin if they are not allergic. Assist with any prescribed medication, like nitroglycerin, if available. Monitor their condition closely and be prepared to perform CPR if they become unresponsive and stop breathing. Use an AED if available and follow its instructions until help arrives. Quick action and staying calm are crucial.",
  ),
  Emergency(
    name: 'Respiratory',
    imagePath: "assets/oxygen 2.png",
    about:
        "Respiratory emergencies involve severe breathing difficulties or cessation of breathing, often due to conditions like asthma, choking, or respiratory infections.",
    steps: "•	In an emergency respiratory situation, call emergency services immediately. Keep the person comfortable and sitting up and loosen tight clothing. Administer oxygen if available and help with any prescribed inhaler or medication. Monitor their condition closely and be prepared to perform CPR if they become unresponsive and stop breathing. Use an AED if available and follow its instructions until help arrives. Quick, calm action is essential.",
  ),
  Emergency(
    name: 'Accident',
    imagePath: "assets/accident 2.png",
    about:
        "An accident refers to an unforeseen event that causes harm or injury, often involving collisions, falls, or other mishaps.",
    steps: "•	In an accident emergency, first ensure the scene is safe, then call emergency services immediately. Assess the injured person for responsiveness, breathing, and pulse, and start CPR if needed. Provide basic first aid by applying pressure to bleeding wounds, immobilizing broken bones, and cooling burns. Keep the person calm, still, and warm, and follow any instructions from emergency services until help arrives. Quick, calm action is essential for effective care.",
  ),
];
