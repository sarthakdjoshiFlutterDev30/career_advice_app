import 'package:flutter/material.dart';

class CareerSelector extends StatefulWidget {
  @override
  _CareerSelectorState createState() => _CareerSelectorState();
}

class _CareerSelectorState extends State<CareerSelector> {
  String? selectedCareer;

  final Map<String, String> careerDetails = {
    "🔬 Engineering": '''
Courses: B.Tech/BE in Computer, Civil, Mechanical, Electrical, etc.\n
Entrance Exams: JEE Mains/Advanced, State CETs\n
Careers: Software Engineer, Civil Engineer, Data Analyst, etc.\n
Top Recruiters: TCS, Infosys, L&T, Google, etc.
''',
    "🧑‍⚕️ Medical/Healthcare": '''
Courses: MBBS, BDS, BPT, BHMS, BAMS \n
Entrance Exams: NEET\n
Careers: Doctor, Dentist, Physiotherapist, Surgeon\n
Work Areas: Hospitals, Clinics, Research Institutes
''',
    "📐 Architecture": '''
Courses: B.Arch \n
Entrance Exam: NATA, JEE Mains Paper 2\n
Careers: Architect, Urban Planner, Interior Designer\n
Work: Design buildings, cities, landscapes
''',
    "💊 Pharmacy": '''
Courses: B.Pharm, M.Pharm\n
Career: Pharmacist, Medical Representative, Drug Inspector
''',
    "🔬 Pure Sciences/Research": '''
Courses: B.Sc., M.Sc., Ph.D.\n
Fields: Physics, Chemistry, Maths, Biology, Environmental Science\n
Career: Researcher, Scientist, Professor (with NET/PhD)
''',
    "💻 Software Development": '''
Skills Needed: Coding (Java, Python, Dart), App Dev, Web Dev\n
Courses: B.Tech (CSE), MCA, BCA, Bootcamps\n
Jobs: App Developer (Flutter, Android, iOS), Backend/Frontend Dev\n
''',
    "🤖 AI & ML": '''
Courses: B.Tech/M.Tech AI/ML, online certs (Coursera, IITs)\n
Jobs: Data Scientist, ML Engineer, AI Researcher\n
''',
    "🔒 Cybersecurity": '''
Courses: B.Tech (IT), CEH, CISSP certifications\n
Jobs: Ethical Hacker, Cybersecurity Analyst, InfoSec Expert\n
''',
    "☁️ Cloud Computing & DevOps": '''
Courses: AWS, GCP, Azure Certs + Engineering\n
Jobs: Cloud Engineer, DevOps Specialist\n
''',
    "📊 Chartered Accountancy (CA)": '''
Authority: ICAI\n
Steps: CA Foundation → Intermediate → Final\n
Jobs: Auditor, Tax Consultant, CFO\n
''',
    "📃 Company Secretary (CS)": '''
Authority: ICSI\n
Role: Legal advisor on company compliance, corporate law\n
''',
    "📈 Cost & Management Accounting (CMA)": '''
Authority: ICMAI\n
Jobs: Cost Controller, Finance Manager\n
''',
    "🏦 Banking & Finance": '''
Exams: IBPS, SBI PO/Clerk\n
Jobs: Bank PO, Clerk, Financial Analyst\n
''',
    "💹 Investment Banking & Stock Market": '''
Courses: CFA, MBA Finance, NISM certs\n
Jobs: Equity Analyst, Portfolio Manager, Trader\n
''',
    "🎖️ Civil Services": '''
Exam: UPSC CSE (IAS, IPS, IFS)\n
Qualification: Graduation\n
''',
    "⚖️ Law": '''
Courses: LLB (3 yrs after graduation or 5 yrs after 12th)\n
Exams: CLAT\n
Jobs: Advocate, Legal Advisor, Judge (via PCS-J)\n
''',
    "🧠 Psychology": '''
Courses: BA/B.Sc in Psychology → MA/M.Phil/Ph.D.\n
Jobs: Clinical Psychologist, Counsellor, Therapist\n
''',
    "📰 Media & Journalism": '''
Courses: BJMC, MJMC\n
Jobs: Journalist, Anchor, Editor, PR Manager\n
''',
    "📚 School Teaching": '''
Courses: B.Ed + Graduation (TET for govt schools)\n
Subjects: Math, Science, English, etc.
''',
    "🎓 College/University Professor": '''
Courses: Master’s + NET or Ph.D.\n
Area: Academics, Research
''',
    "📱 EdTech & Content": '''
Roles: Online Tutor, Course Creator (YouTube, Udemy)\n
Skills: Subject expertise, tech knowledge
''',
    "🎨 Graphic Designing": '''
Tools: Photoshop, Illustrator, Figma\n
Jobs: Brand Designer, UI/UX Designer
''',
    "👗 Fashion/Interior Design": '''
Courses: NIFT, NID, private diplomas\n
Jobs: Stylist, Fashion Illustrator, Interior Decorator\n
''',
    "🎞️ Animation & VFX": '''
Courses: B.Sc in Animation, Diplomas\n
Jobs: Animator, VFX Artist, Game Designer
''',
    "📸 Filmmaking/Photography": '''
Work: Film industry, wedding, advertising\n
''',
    "👩‍⚕️ Nursing": '''
Courses: B.Sc Nursing\n
Jobs: Staff Nurse, Head Nurse, Military Nurse
''',
    "🔬 Medical Lab Technician": '''
Courses: DMLT, BMLT\n
Jobs: Lab Assistant, Pathology Lab Technician
''',
    "🦴 Physiotherapy": '''
Courses: BPT\n
Jobs: Physical Therapist, Rehab Specialist
''',
    "🥗 Nutritionist/Dietician": '''
Courses: B.Sc Food Science, PG Diploma in Dietetics\n
Jobs: Clinical Dietitian, Sports Nutritionist
''',
    "📣 Digital Marketing": '''
Skills: SEO, SEM, Social Media, Google Ads\n
Courses: Short-term Certs, MBA\n
Jobs: Digital Marketer, Social Media Executive\n
''',
    "🎥 Content Creation": '''
Platforms: YouTube, Instagram, LinkedIn\n
Monetization: Sponsorships, Ads, Affiliate Marketing
''',
    "🏛️ UPSC Civil Services": '''
Eligibility: candidates must be Indian citizens, hold a bachelor's degree from a recognized university, and fall within the specified age range\n
Jobs: IAS, IPS, IFS, IRS
''',
    "📄 SSC Exams": '''
Exams: SSC CGL, CHSL, MTS, JE, Steno, GD Constable\n
Eligibility: 10th/12th/Graduation (varies by exam)\n
Jobs: Income Tax Officer, Auditor, Clerk, Data Entry Operator\n
Departments: Railways, CBI, Ministry of External Affairs, Excise, etc.''',

    "🚆 Railways (RRB)": '''
Technical & Non-Technical Posts
''',
    "🪖 Defense Services": '''
NDA (after 12th), CDS (after graduation), AFCAT (Air Force)
''',
    "🚀 Startup Founder": '''
Build your own product/service\n
Skills: Management, Tech/Business domain, Marketing
''',
    "💻 Freelancing": '''
Fields: App/Website Dev, Design, Writing, Marketing
''',
    "🏘️ Real Estate": '''
Skills: Networking, Property Law Knowledge
''',
    "🛒 E-commerce Business": '''
Build an online store (e.g., via Shopify or own app)
''',
    "🌾 Agricultural Science": '''
Courses: B.Sc Agriculture\n
Jobs: Agri Officer, Farm Manager, Researcher
''',
    "🌿 Environmentalist": '''
Courses: Environmental Science\n
Jobs: Policy Analyst, NGO Worker, Scientist
''',
    "🏨 Hotel Management": '''
Courses: BHMCT\n
Jobs: Hotel Manager, Front Desk, Chef
''',
    "✈️ Cabin Crew/Air Hostess": '''
Courses: Short-term from aviation academies\n
Skills: Grooming, Communication, Hospitality
''',
    "🌍 Travel & Tourism": '''
Jobs: Travel Agent, Tour Guide, Holiday Planner
''',
    '💻 Technology - Developer': '''
    'Skills: Coding (Java, Dart, Flutter, Python)\n
    Courses: B.Tech CSE, MCA, Bootcamps\n
    Jobs: App Developer, Backend Dev, Web Dev\n
    Tools: Flutter, React, Firebase'
    ''',
    '🎥 Media - Design': '''
  'Courses: Graphic/Interior/Fashion Design\n
  Jobs: Designer, UI/UX, Animator, VFX'
  ''',
    '📱 Digital - Marketing': '''
    'Skills: SEO, SEM, Social Media\n 
    Jobs: Digital Marketer, Content Creator'
    ''',
    '✈️ Hospitality - Hotel Management': '''
    'Courses: BHMCT\n
    Jobs: Hotel Manager, Chef, Front Desk'
    ''',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Career Explorer"), centerTitle: true),

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
