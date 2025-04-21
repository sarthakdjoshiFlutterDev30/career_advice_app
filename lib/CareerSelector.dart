import 'package:flutter/material.dart';

class CareerSelector extends StatefulWidget {
  @override
  _CareerSelectorState createState() => _CareerSelectorState();
}

class _CareerSelectorState extends State<CareerSelector> {
  String? selectedCareer;

  final Map<String, String> careerDetails = {
    "🎓 Diploma Courses": '''
  - Engineering Diploma: Specializations in Mechanical, Civil, Electrical, etc.\n
  - Polytechnic Courses: Various technical fields.\n
  - Nursing Diploma: Basic nursing courses.\n
  ''',
    "🛠️ Vocational Courses": '''
  - ITI (Industrial Training Institute): Courses in trades like electrician, plumber, mechanic, etc.\n
  - Fashion Designing: Short-term courses in fashion design.\n
  - Graphic Designing: Basic courses in design software.\n
  ''',
    "📚 Higher Secondary Education (12th Grade)": '''
  - Science Stream: Physics, Chemistry, Biology/Mathematics.\n
  - Commerce Stream: Business Studies, Accountancy, Economics.\n
  - Arts Stream: Subjects like History, Political Science, Psychology.\n
  ''',
    "💼 Skill Development Programs": '''
  - Digital Marketing: Short-term courses focusing on online marketing skills.\n
  - Computer Courses: Basic computer skills, programming languages, etc.\n
  - Hospitality Management: Short courses in hotel management.\n
  ''',
    "🚀 Professional Courses": '''
  - Air Hostess/Cabin Crew Training: Courses from aviation academies.\n
  - Event Management: Short-term courses in event planning and management.\n
  ''',
    "💡 Entrepreneurship": '''
  - Start Your Own Business: If you have a business idea, you can start small ventures. This could involve creating a product or offering a service that meets a specific need in your community.\n
  
  - Business Planning: Understanding how to create a business plan is crucial. This includes defining your business goals, identifying your target market, and outlining your marketing strategies.\n
  
  - Market Research: Conducting thorough market research helps you understand your competition and customer preferences. This information is vital for making informed decisions about your business.\n
  
  - Financial Management: Learning about budgeting, accounting, and financial forecasting is essential for managing your business finances effectively. This knowledge will help you track expenses and revenues.\n
  
  - Networking: Building connections with other entrepreneurs and business professionals can provide valuable insights and support. Attend local business events, workshops, and seminars to expand your network.\n
  
  - Skill Development: Consider enrolling in courses that focus on entrepreneurship, marketing, and management. These courses can provide you with the skills needed to run a successful business.\n
  
  - Mentorship: Seek out mentors who can guide you through the entrepreneurial journey. Their experience can help you navigate challenges and avoid common pitfalls.\n
  
  - Online Presence: In today’s digital age, having an online presence is crucial. Learn about digital marketing, social media, and e-commerce to reach a wider audience.\n
  
  - Legal Considerations: Familiarize yourself with the legal requirements for starting a business, including permits, licenses, and tax obligations. This knowledge will help you operate within the law.\n
  
  - Adaptability: Be prepared to adapt your business model based on feedback and changing market conditions. Flexibility is key to long-term success in entrepreneurship.\n
  ''',
    "🪖 Defense Services": '''
  NDA: National Defence Academy - Requires 12th grade with Science.\n
  CDS: Combined Defence Services - Requires graduation.\n
  Air Force: Join as an Airman after 12th with Science.\n
  Navy: Join as a Sailor after 12th with Science.,\n
  Army: Various entry schemes available after 12th.\n
  NCC (National Cadet Corps):Provides military-style training to students and instills discipline, leadership, and patriotism.\n
   Valuable for careers in defense tourism, aviation, disaster management, and security roles.\n
   Helps in direct SSB interview opportunities and improves physical and mental fitness.\n
  ''',
    "🎨 Arts and Crafts": '''
  - Fine Arts: Courses in painting, sculpture, etc.\n
  - Performing Arts: Dance, music, drama courses.\n
  ''',
    "🌍 Travel and Tourism": '''
  - Travel Agent Training: Courses related to travel and tourism management.\n
   Tour Planner: \n
  - Responsible for creating travel itineraries and organizing trips for clients.\n
  - Requires knowledge of destinations, travel logistics, and customer service skills.\n
  🧑‍🤝‍🧑 Tour Escort: \n
  - Guides groups of tourists during their travels, providing information and ensuring a smooth experience.\n
  - Strong communication and interpersonal skills are essential.\n

    ✈️ Travel Agent: \n
  - Assists clients in booking flights, accommodations, and activities.\n
  - Often requires IATA training to understand ticketing and travel regulations.\n
  🏨 Hotel Management: \n
  - Pursuing a diploma in hotel management can lead to roles such as hotel manager or front office manager.\n
  - Focuses on customer service, operations management, and hospitality skills.\n
 🎉 Event Planner: \n
  - Organizes events such as weddings, corporate meetings, and conferences.\n
  - Requires strong organizational skills and the ability to manage multiple tasks.\n
  ,
  🛫 Airline Customer Service Agent: \n
  - Works at airports or travel agencies, assisting passengers with check-in, ticketing, and inquiries.\n
  - Requires excellent communication skills and a customer-oriented approach.\n
   ''',
    "🌾 Agricultural Science": '''
  - Agriculture Diploma: Courses related to farming and agricultural practices.\n
  - Focuses on crop production, soil management, pest control, and sustainable farming techniques.\n
  - Prepares students for various roles in agriculture, including farm management, agronomy, and agricultural research.\n
  ''',
    "📚 SSC Exam": '''
  - Staff Selection Commission (SSC): Conducts exams for various government jobs.\n
  - Popular roles include SSC MTS (Multi-Tasking Staff), SSC GD (General Duty), and clerical positions.\n
  - Prepares students for competitive exams leading to stable government careers.\n
  ''',
    "🔥 Fire Safety Officer": '''
  - Ensures safety standards are met in hotels, airports, and event venues.\n
  - Requires training in fire prevention, emergency response, and safety regulations.\n
  - Often involves inspections, drills, and safety audits.\n
  ''',
    "💪 Personal Trainer": '''
  - Works with clients to improve fitness, health, and wellness—often employed by resorts, cruise ships, or hotels.\n
  - Requires certification in fitness training and knowledge of exercise science and nutrition.\n
  - Strong motivational and communication skills are essential.\n
  ''',
    "🚉 Railway Ticket Collector (TC)": '''
  - Checks passengers' tickets and ensures proper travel authorization on trains and railway stations.\n
  - Requires qualification through Railway Recruitment Board (RRB) exams.\n
  - Good communication skills, physical fitness, and customer handling abilities are needed.\n
  ''',
    "🧾 LIC Agent": '''
  - Sells life insurance policies and investment plans to clients on behalf of LIC.\n
  - Requires strong persuasion and communication skills to understand customer needs.\n
  - Involves flexible working hours and the potential for high commissions.\n
  ''',
    "💻 CCC Course": '''
  - Basic computer literacy course recognized by the Indian government.\n
  - Covers MS Office, internet usage, and digital skills useful for entry-level admin jobs in tourism or hospitality.\n
  ''',

    "📒 Tally Accounting": '''
  - Teaches accounting and GST compliance using Tally ERP software.\n
  - Useful for roles in hotel accounts departments or tourism agencies managing financial records.\n
  ''',

    "⌨️ Data Entry Operator": '''
  - Involves entering, updating, and maintaining data in computer systems.\n
  - Commonly required in hotel management, travel bookings, and customer records.\n
  - Basic typing, attention to detail, and software knowledge are essential.\n
  ''',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Career Guidance After 10th"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton<String>(
              isExpanded: true,
              hint: Text("Select a Career"),
              value: selectedCareer,
              items:
                  careerDetails.keys.map((String key) {
                    return DropdownMenuItem<String>(
                      value: key,
                      child: Text(key),
                    );
                  }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedCareer = value;
                });
              },
            ),
            SizedBox(height: 30),
            selectedCareer != null
                ? Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      careerDetails[selectedCareer!]!,
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,
                        color: Colors.blueAccent,),
                    ),
                  ),
                )
                : Text("Select a career to view details"),
          ],
        ),
      ),
    );
  }
}
