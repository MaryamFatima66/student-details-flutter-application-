// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, prefer_const_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_import, library_private_types_in_public_api, prefer_final_fields, sort_child_properties_last, deprecated_member_use, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/favicon.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/favicon.png", height: 100),
                    SizedBox(height: 20),
                    Text(
                      'Student Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'system-ui',
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Student ID',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()),
                        ); // Implement login functionality
                      },
                      child: Text('Login'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Need help logging in or have questions about our platform? We\'re here to help! Please don\'t hesitate to reach out to our support team at sfc.academic@hamdard.edu.pk and we\'ll get back to you as soon as possible.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home '),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
  decoration: BoxDecoration(
    color: Colors.green,
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Moved this line up
    children: [
      // Your logo widget goes here
      Image.asset(
        'assets/images/favicon.png',
        width: 100,
        height: 100,
      ),
      SizedBox(height: 10), // Added SizedBox for spacing
      Text(
        'Dashboard',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ],
  ),
),

            ListTile(
              title: Text('Academics'),
              subtitle: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Attendance Inquiry'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThirdRoute(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Classes Schedule'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FourthRoute(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Registered New Courses'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FifthRoute(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Registered Courses'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SixthRoute(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Curriculum'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SevenRoute(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Alumni Form'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentAlumniForm(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Graduating Survey'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GraduatingSurveyPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Campuses Contacts'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CampuseContact(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Searching Library Books'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LibraryBooks(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('My Profile'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentProfilePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Examination'),
              subtitle: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Examination Schedule'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExaminationSchedulePage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Marks Sheet'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentMarksheetPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Print MidTerm Admit Card'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrintingAdmitCardPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Print FinalTerm Admit Card'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrintingFinalAdmitCardPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Unofficial OBE Transcript'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UnofficialOBETranscriptPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Evaluation'),
              subtitle: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Course Evaluation'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseEvaluationPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Teacher Evaluation'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TeacherEvaluationPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Accounts'),
              subtitle: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Fee Ledger'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountFeeLedgerPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Hostel Ledger'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HostelFeeLedgerPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Transport Ledger'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransportFeeLedgerPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Generate Account Voucher'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GenerateAccountVouchersPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('General'),
              subtitle: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('WIFI Registration'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WifiRegistrationPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Feedback Form'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeedbackForm(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Enrollment Form'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DownloadableForms(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('My Complaint Dashboard'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ComplaintDashboard(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Change / Reset Password'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePasswordPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Transport Request'),
              subtitle: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Transport Request Form'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransportRequestFormPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CardWithTitleAndValue(
                    title: 'CGPA Including Fail Courses',
                    value: '---',
                  ),
                  CardWithTitleAndValue(
                    title: 'CGPA Excluding Fail Courses',
                    value: '---',
                  ),
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FifthRoute(),
                        ),
                      );// Navigate to the class schedule page
                    },
                    child: CardWithIcon(
                      title: 'REGISTER NEW COURSE',
                      icon: Icons.edit,
                      iconColor: Colors.blue,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FourthRoute(),
                        ),
                      );
                      // Navigate to the class schedule page
                    },
                    child: CardWithIcon(
                      title: 'CLASSES SCHEDULE',
                      icon: Icons.book,
                      iconColor: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExaminationSchedulePage(),
                        ),
                      );// Navigate to the examination schedule page
                    },
                    child: CardWithIcon(
                      title: 'EXAMINATION SCHEDULE',
                      icon: Icons.list,
                      iconColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '_____________ - (____-____)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text('________________ D/O,S/O _________________'),
                  Text('Admission Status: Confirmed'),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 170,
                          height: 170,
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          // You can add an image here
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Personal Information',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            ProfileDetail(
                                title: 'Official Email:',
                                value: '______________'),
                            ProfileDetail(
                                title: 'Admission Date:',
                                value: '______________1'),
                            ProfileDetail(
                                title: 'Campus:', value: 'Main Campus'),
                            ProfileDetail(
                                title: 'Program:', value: '______________'),
                            ProfileDetail(
                                title: 'Class:', value: '______________'),
                            ProfileDetail(
                                title: 'Date Of Birth:',
                                value: '______________'),
                            ProfileDetail(title: 'Status:', value: 'Active'),
                            ProfileDetail(
                                title: 'CNIC:', value: '______________'),
                            ProfileDetail(
                                title: 'Phone:', value: '______________'),
                            ProfileDetail(
                                title: 'Address:',
                                value: '_______________________'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CourseCounter(
                        title: 'Required Credit Hrs', value: '68'),
                  ),
                  Expanded(
                    child:
                        CourseCounter(title: 'Passed Credit Hrs', value: '__'),
                  ),
                  Expanded(
                    child: CourseStatus(
                        title: 'Degree Status',
                        value: 'Not Eligible For Degree (Incomplete)'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No of Courses Registered against each Semester offered',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CourseCount(title: 'Fall-2023', count: '__'),
                      CourseCount(title: 'Spring-2023', count: '__'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GPA against Semester Chart',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child:
                        Placeholder(), // Replace Placeholder with your chart widget
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardWithComparison(
                      title: 'Your Competition With Colleagues In Term of CGPA',
                      yourValue: '___',
                      competitorValue: '____',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Semester Attendance Percentage Graph',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child:
                        Placeholder(), // Replace Placeholder with your chart widget
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWithTitleAndValue extends StatelessWidget {
  final String title;
  final String value;

  const CardWithTitleAndValue(
      {Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;

  const CardWithIcon(
      {Key? key,
      required this.title,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        leading: Icon(icon, color: iconColor),
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetail({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(text: '$title '),
            TextSpan(
              text: value,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCounter extends StatelessWidget {
  final String title;
  final String value;

  const CourseCounter({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseStatus extends StatelessWidget {
  final String title;
  final String value;

  const CourseStatus({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseCount extends StatelessWidget {
  final String title;
  final String count;

  const CourseCount({Key? key, required this.title, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            count,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CardWithComparison extends StatelessWidget {
  final String title;
  final String yourValue;
  final String competitorValue;

  const CardWithComparison(
      {Key? key,
      required this.title,
      required this.yourValue,
      required this.competitorValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your CGPA ($yourValue)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '____',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Competitor ($competitorValue)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '_____',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Inquiry'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Card(
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Schedule',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8.0),
                      Text(
                        'You must check your attendance on a daily basis for proper monitoring of your attendance percentage. Please click on the percentage to view the detailed day-wise Absent (A) and Present (P) Status.',
                      ),
                      SizedBox(height: 16.0),
                      DataTable(
                        columns: [
                          DataColumn(label: Text('Offer No')),
                          DataColumn(label: Text('Course ID')),
                          DataColumn(label: Text('Course Title')),
                          DataColumn(label: Text('CreditHrs')),
                          DataColumn(label: Text('Teacher')),
                          DataColumn(label: Text('Percentage')),
                        ],
                        rows: [
                          // Remove DataRow entries here
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Classes Schedule'),
        ),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Current Schedule'),
                    Tab(text: 'Upcoming Makeup Classes'),
                    Tab(text: 'Course Contents'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      CurrentScheduleTab(),
                      UpcomingMakeupClassesTab(),
                      CourseContentsTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CurrentScheduleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Current Schedule',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                        child: Text('Offer Type',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    TableCell(
                        child: Text('Time',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    TableCell(
                        child: Text('Room',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    TableCell(
                        child: Text('Course Title',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    TableCell(
                        child: Text('Teacher',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpcomingMakeupClassesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Upcoming Makeup Classes Schedule',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Text(
                        'Offer Type',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Class Date',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Day',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Time',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Room',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Course Title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        'Teacher',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Sorry! we did not find any recent schedule against your account',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: SizedBox(), // Empty cell
                    ),
                    TableCell(
                      child: SizedBox(), // Empty cell
                    ),
                    TableCell(
                      child: SizedBox(), // Empty cell
                    ),
                    TableCell(
                      child: SizedBox(), // Empty cell
                    ),
                    TableCell(
                      child: SizedBox(), // Empty cell
                    ),
                    TableCell(
                      child: SizedBox(), // Empty cell
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseContentsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Course Contents',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                        child: Text('Course Title',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    TableCell(
                        child: Text('Offer No',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    TableCell(
                        child: Text('Teacher',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Registration'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pre Course Registration Checks',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
                'Following conditions must meet before student course registration.'),
            Text('1- Student Account Balance must clear before registration.'),
            Text(
                '2- Registration No assigned to student from Registrar Office. i-e student all documents are ok and submitted in Admission Office.'),
            Text(
                '3- Student Degree Completion Period (7 years for Bachelor Degree) is not yet expired.'),
            Text(
                '4- Student CGPA must meet the required limit (e.g 1.6 or 1.80 etc)'),
            Text(
                '5- In case of 4 or more than 4 deficiency courses, student is not allowed to register new courses.'),
            SizedBox(height: 20),
            Text(
              "COURSES REGISTRATION WILL START SOON '0' Days to go for New Courses Registration",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Courses List',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'No courses available yet.',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My All Registered Courses'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My All Registered Courses',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(
                  children: [
                    TableCell(child: Text('Offer No')),
                    TableCell(child: Text('Offer ID')),
                    TableCell(child: Text('Course ID')),
                    TableCell(child: Text('Course Title')),
                    TableCell(child: Text('Cr-Hrs')),
                    TableCell(child: Text('Teacher')),
                    TableCell(child: Text('Amount')),
                  ],
                ),
                // Add more TableRow widgets for each course entry
              ],
            ),
            // Add more Table widgets for each semester's courses
          ],
        ),
      ),
    );
  }
}

class SevenRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum and Grading Criteria'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Curriculum and Grading Criteria',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Approved Batch Curriculum',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Following is your batch approved curriculum / course plan. Different batches may have same or different batch plan.',
                    ),
                    SizedBox(height: 10),
                    Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(
                          children: [
                            TableCell(child: Text('Course ID')),
                            TableCell(child: Text('Course Code')),
                            TableCell(child: Text('Course Title')),
                            TableCell(child: Text('Cr-Hrs')),
                            TableCell(child: Text('Total Marks')),
                            TableCell(child: Text('Prerequisite')),
                          ],
                        ),
                        // Add more TableRow widgets for each course entry
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Grading Criteria',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Minimum Marks')),
                            DataColumn(label: Text('Maximum Marks')),
                            DataColumn(label: Text('Grade')),
                            DataColumn(label: Text('GPA')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('85')),
                              DataCell(Text('100')),
                              DataCell(Text('A+')),
                              DataCell(Text('4')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('80')),
                              DataCell(Text('84.99')),
                              DataCell(Text('A')),
                              DataCell(Text('3.7')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('75')),
                              DataCell(Text('79.99')),
                              DataCell(Text('B+')),
                              DataCell(Text('3.4')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('70')),
                              DataCell(Text('74.99')),
                              DataCell(Text('B')),
                              DataCell(Text('3')),
                            ]),
                            //add more rows here
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentAlumniForm extends StatefulWidget {
  @override
  _StudentAlumniFormState createState() => _StudentAlumniFormState();
}

class _StudentAlumniFormState extends State<StudentAlumniForm> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    GeneralInfoTab(),
    WorkExperienceTab(),
    CertificateTab(),
    LanguageProficiencyTab(),
    AcademicDetailTab(),
    AlumniGraduateTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Alumni Form'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set background color here
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'General Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Work Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Certificate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Language',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Academic Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Alumni & Graduate',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class GeneralInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StudentAlumniGeneralInfo(); // Replace Text widget with StudentAlumniGeneralInfo widget
  }
}

class StudentAlumniGeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Student General Info',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 20),
                      Form(
                        // Remove action attribute
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Entry Date',
                              ),
                              initialValue: '2024-02-22',
                              keyboardType: TextInputType.datetime,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Degree',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Area Of Specialization',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Passing Degree Year',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Carrier Objective',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Projects Research Papers',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Skill Set',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Activities And Interests',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Achievements',
                              ),
                              keyboardType: TextInputType.text,
                              // Remove name attribute
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Handle form submission
                              },
                              child: Text('Submit'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkExperienceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Student Work Experience',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Department'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Designation'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Job Description'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'From Month'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'From Year'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'To Month'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'To Year'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Click To Add/Edit Work Experience'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CertificateTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Certificate / Technical Qualification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Institute / Organization'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name Of Certificate'),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Year Of Completion'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('Click To Add Certificate'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageProficiencyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Languages Proficiency',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    title: Text('Language'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Language',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Language Level'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Language Level',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('Click To Add Language Certificate'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AcademicDetailTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Student Academic Detail',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    title: Text('Sno'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Sno',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Qualification'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Qualification',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Specialization'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Specialization',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Institute'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Institute',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Board'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Board',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Exam Rollno'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Exam Rollno',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Passing Year'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Passing Year',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Obtained Marks'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Obtained Marks',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Total Marks'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Total Marks',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('%age'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter %age',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('GPA'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter GPA',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Note:- If Academic Information is not present or Incomplete, then Inform the Admission Department to update your Academic Information. Thank You',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlumniGraduateTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alumni and Graduating Survey Form',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press
                              // Navigate to alumni survey parameters page
                            },
                            child: Text(
                              'Click To Add/Edit Alumni Survey Parameters',
                              style: TextStyle(fontSize: 11),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue[100],
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press
                              // Navigate to graduating survey parameters page
                            },
                            child: Text(
                              'Click To Add/Edit Graduating Survey Parameters',
                              style: TextStyle(fontSize: 11),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green[100],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GraduatingSurveyPage extends StatelessWidget {
  final List<String> _answers = []; // Initialize the list to an empty list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graduating Survey'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Graduating Survey',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Every student has to fill the Graduating Survey Form at the time of graduation.',
              ),
              SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implement apply changes functionality
                          },
                          child: Text('Apply Changes'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Table(
                      columnWidths: {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(2),
                        2: FlexColumnWidth(2),
                      },
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            TableCell(child: Text('S.No')),
                            TableCell(child: Text('Parameter')),
                            TableCell(child: Text('Given Answer')),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(child: Text('1')),
                            TableCell(
                              child: Text(
                                'The work in the program is educative.',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            TableCell(
                              child: Column(
                                children: [
                                  RadioListTile(
                                    value: '5',
                                    groupValue: _answers.isNotEmpty
                                        ? _answers[0]
                                        : null,
                                    onChanged: (value) {
                                      // Implement radio button functionality
                                    },
                                    title: Text('Excellent'),
                                  ),
                                  RadioListTile(
                                    value: '5',
                                    groupValue: _answers.isNotEmpty
                                        ? _answers[0]
                                        : null,
                                    onChanged: (value) {
                                      // Implement radio button functionality
                                    },
                                    title: Text('poor'),
                                  ),
                                  RadioListTile(
                                    value: '5',
                                    groupValue: _answers.isNotEmpty
                                        ? _answers[0]
                                        : null,
                                    onChanged: (value) {
                                      // Implement radio button functionality
                                    },
                                    title: Text('uncertain'),
                                  ),
                                  // Add more radio buttons
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Add more rows as needed
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CampuseContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Campuses Contacts',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(),
                            SizedBox(height: 16.0),
                            Text(
                              'Your Campus: Main Campus\n'
                              'Address: Hamdard University, Madinat al-Hikmah, Muhammad Bin Qasim Avenue, Karachi.\n'
                              'Phone: -\n'
                              'Fax: -\n'
                              'Web: www.hamdard.edu.pk\n'
                              'Email: -',
                              style: TextStyle(color: Colors.green),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Other Campuses Contacts Info',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            // Add more campuses info here
                            _buildCampusInfo(
                              'University Hospital (Taj Medical Complex)',
                              'Address: Taj Medical Complex, MA Jinnah Rd, Saddar Town, Karachi, Sindh.\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: www.hamdard.edu.pk\n'
                                  'Email: -',
                            ),
                            _buildCampusInfo(
                              'North Nazimabad Campus',
                              'Address: ST-II, Block-L, North Nazimabad, Karachi.\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: www.hamdard.edu.pk\n'
                                  'Email: admissions.hamdard.edu.pk',
                            ),
                            _buildCampusInfo(
                              'Faisalabad Campus',
                              'Address: Faisalabad\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: -\n'
                                  'Email: -',
                            ),
                            _buildCampusInfo(
                              'Islamabad Campus',
                              'Address: Hamdard University, Islamabad Campus, 04 Park Link Road, Chak Shahzad Islamabad\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: www.hamdard.edu.pk\n'
                                  'Email: -',
                            ),
                            _buildCampusInfo(
                              'Dental Hospital',
                              'Address: ST-II, Block-L, North Nazimabad, Karachi.\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: www.hamdard.edu.pk\n'
                                  'Email: -',
                            ),
                            _buildCampusInfo(
                              'North Nazimabad KDA Campus',
                              'Address: North Nazimabad KDA\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: -\n'
                                  'Email: -',
                            ),
                            _buildCampusInfo(
                              'City Campus',
                              'Address: Plot # 4-A, Block 6, PECHS, near Nursery Flyover, Shahrah-e- Faisal, Karachi.\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: www.hamdard.edu.pk/city-campus-ii/\n'
                                  'Email: -',
                            ),
                            _buildCampusInfo(
                              'Bahadurabad City Campus',
                              'Address: BAHADURABAD\n'
                                  'Phone: -\n'
                                  'Fax: -\n'
                                  'Web: -\n'
                                  'Email: -',
                            ),
                            // Add more campuses info as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCampusInfo(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.0),
        Text(
          'Campus: $title',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(info),
      ],
    );
  }
}

class LibraryBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Library Books Searching'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: LibraryBooks(),
          ),
        ),
      ),
    );
  }
}

class LibraryBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.0),
          Text(
            'Library Books Searching',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Change the heading color to black
            ),
          ),
          SizedBox(height: 30.0),
          Card(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search Books',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Change the heading color to black
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 16.0),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText:
                                'Enter some portion of Book Title or Author Name to Search',
                          ),
                          keyboardType: TextInputType.text,
                          controller: TextEditingController(),
                          onFieldSubmitted: (value) {
                            // Handle search
                          },
                        ),
                        SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            // Handle search button press
                          },
                          child: Text('Search'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Searched Results',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color:
                            Colors.black, // Change the heading color to black
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 12.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Title')),
                          DataColumn(label: Text('Author')),
                          DataColumn(label: Text('Edition')),
                          DataColumn(label: Text('Subject')),
                          DataColumn(label: Text('Shelf No')),
                          DataColumn(label: Text('Qty')),
                        ],
                        rows: [
                          // Add DataTableRows here for search results
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StudentProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatefulWidget {
  @override
  _StudentProfilePageState createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'General Info'),
            Tab(text: 'Other Info'),
            Tab(text: 'Guardian Info'),
            Tab(text: 'Admission Status'),
            Tab(text: 'Academic Detail'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // General Info Tab
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('General Info Tab Content'),
                  // General Info Tab
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Student Alumni General Info',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Student Alumni General Info',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Student Name ',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Father Name ',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Admission Date ',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Date of Birth',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Gender',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Enrollment No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('GR No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Student Passport No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Office Phone No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('House Phone No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Fax No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Student Cell No ',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Student Nic',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Student Email',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Father Cell No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Father Nic',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Father Email',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Permanent Address ',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Current Address',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  // Add more Text widgets for additional fields if needed
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add content for General Info tab
                ],
              ),
            ),
          ),
          // Other Info Tab
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Other Info Tab Content'),
                  // Other Info Tab
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Student Alumni General Info',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Student Alumni General Info',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Religion',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Disability',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('_'),
                                  SizedBox(height: 10),
                                  Text('Blood Group ID',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Marital Status',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Domicile',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Zone City',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Nationality',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('____________'),
                                  SizedBox(height: 10),
                                  Text('Specialization',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Section',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Roll No / Seat No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Father Occupation',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Father Work Place',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add content for Other Info tab
                ],
              ),
            ),
          ),
          // Guardian Info Tab
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Guardian Info Tab Content'),
                  // Guardian Info Tab
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Guardian Info',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Guardian Information',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Guardian Name',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Relation With Guardian',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Filer / Non Filer',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Guardian Cell No',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Guardian Email',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  SizedBox(height: 10),
                                  Text('Guardian Nic',
                                      style: TextStyle(
                                          backgroundColor: Colors.lightGreen)),
                                  Text('-'),
                                  // Add more Text widgets for additional guardian information if needed
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add content for Guardian Info tab
                ],
              ),
            ),
          ),
          // Admission Status Tab
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Admission Status Tab Content',
                  ),
                  SizedBox(height: 10),
                  Text('Admission Type',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  Text('Admission Status',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  Text('Academic Status',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  Text('Academic Status',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  Text('Ledger Currency',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  Text('Entry Test Per',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  Text('Entry Test Date',
                      style: TextStyle(backgroundColor: Colors.lightGreen)),
                  Text('-'),
                  SizedBox(height: 10),
                  // Add content for Admission Status tab
                ],
              ),
            ),
          ),
          // Academic Detail Tab
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Academic Detail Tab Content'),
                  // Academic Detail Tab
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Student Academic Detail',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Academic Detail',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(height: 10),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Column(
                                      children: [
                                        Text('Sno',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Qualification',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Specialization',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Institute',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Board/University',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Exam Rollno',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Passing Year',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Annual Supply',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Obtained Marks',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('Total Marks',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('%age',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        Text('GPA',
                                            style: TextStyle(
                                                backgroundColor:
                                                    Colors.lightGreen)),
                                        Text('-'),
                                        SizedBox(height: 10),
                                        // Add more Text widgets for additional columns if needed
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add content for Academic Detail tab
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class ExaminationSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examination Schedule'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Exam Schedule',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Following is your examination schedule.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Mid Term Examinations',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.blue,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Offer No')),
                          DataColumn(label: Text('Course Title')),
                          DataColumn(label: Text('Teacher')),
                          DataColumn(label: Text('Credit Hrs')),
                          DataColumn(label: Text('Exam Date')),
                          DataColumn(label: Text('Exam Day')),
                          DataColumn(label: Text('Exam Time')),
                          DataColumn(label: Text('Exam Room')),
                        ],
                        rows: [
                          // Add DataRow widgets here
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Final Examinations',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.blue,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Offer No')),
                          DataColumn(label: Text('Course Title')),
                          DataColumn(label: Text('Teacher')),
                          DataColumn(label: Text('Credit Hrs')),
                          DataColumn(label: Text('Exam Date')),
                          DataColumn(label: Text('Exam Day')),
                          DataColumn(label: Text('Exam Time')),
                          DataColumn(label: Text('Exam Room')),
                        ],
                        rows: [
                          // Add DataRow widgets here
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Add more Card widgets for other examination schedules
          ],
        ),
      ),
    );
  }
}

class StudentMarksheetPage extends StatefulWidget {
  @override
  _StudentMarksheetPageState createState() => _StudentMarksheetPageState();
}

class _StudentMarksheetPageState extends State<StudentMarksheetPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabNames.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Marksheet'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            for (var tabName in tabNames) Tab(text: tabName),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Unofficial DMC',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              columns: [
                                DataColumn(label: Text('Course ID')),
                                DataColumn(label: Text('Course Code')),
                                DataColumn(label: Text('Course Title')),
                                DataColumn(label: Text('CrHrs')),
                                DataColumn(label: Text('Obt Marks')),
                                DataColumn(label: Text('Total Marks')),
                                DataColumn(label: Text('Grade')),
                                DataColumn(label: Text('GPA')),
                              ],
                              rows: [
                                // Add DataRow widgets here for Unofficial DMC
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Semester GPA',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: InkWell(
                                      onTap: () {
                                        // Handle the onTap action
                                      },
                                      child: Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'CGPA Including Fail Courses',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                '--',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: InkWell(
                                      onTap: () {
                                        // Handle the onTap action
                                      },
                                      child: Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'CGPA Including Fail Courses',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                '--',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Semester Wise GPA',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      DataTable(
                                        columns: [
                                          DataColumn(label: Text('S')),
                                          DataColumn(label: Text('C.H')),
                                          DataColumn(label: Text('S.GPA')),
                                        ],
                                        rows: [
                                          DataRow(cells: [
                                            DataCell(Text('I')),
                                            DataCell(Text('--')),
                                            DataCell(Text('--')),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(Text('II')),
                                            DataCell(Text('--')),
                                            DataCell(Text('--')),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(Text('')),
                                            DataCell(
                                              Text(
                                                '--',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            DataCell(Text('')),
                                          ]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          AssessmentDetailTab(),
          AssessmentBreakupTab(),
          AssessmentGPATab(),
          GradingCriteriaTab(),
          DegreeCompletionStatusTab(),
          // Add more TabBarView children for other tabs
        ],
      ),
    );
  }
}

class AssessmentDetailTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Assessment Detail',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 8,
                  columns: [
                    DataColumn(label: Text('Course ID')),
                    DataColumn(label: Text('Offer No')),
                    DataColumn(label: Text('Course Title')),
                    DataColumn(label: Text('Course Code')),
                    DataColumn(label: Text('CrHrs')),
                    DataColumn(label: Text('Exam Date')),
                    DataColumn(label: Text('Obt Marks')),
                    DataColumn(label: Text('Total Marks')),
                    DataColumn(label: Text('Grade')),
                    DataColumn(label: Text('GPA')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),
                    // Add more DataRow widgets for additional data rows if needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AssessmentBreakupTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Assessment Break Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 8,
                  columns: [
                    DataColumn(label: Text('Course Title')),
                    DataColumn(label: Text('Offer No')),
                    DataColumn(label: Text('Exam')),
                    DataColumn(label: Text('Obt Marks')),
                    DataColumn(label: Text('Total Marks')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                    ]),
                    // Add more DataRow widgets for additional data rows if needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AssessmentGPATab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Assessment GPA',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Semester Offer Type: Type A',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 8,
                      columns: [
                        DataColumn(label: Text('No Of Subjects')),
                        DataColumn(label: Text('No Of Credit Hrs')),
                        DataColumn(label: Text('No Of Pass Subjects')),
                        DataColumn(label: Text('No Of Fail Subjects')),
                        DataColumn(label: Text('GPA')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('-')),
                          DataCell(Text('-')),
                          DataCell(Text('-')),
                          DataCell(Text('-')),
                          DataCell(Text('-')),
                        ]),
                        // Add more DataRow widgets for additional data rows if needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradingCriteriaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Grading Criteria',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 8,
                  columns: [
                    DataColumn(label: Text('Minimum Marks')),
                    DataColumn(label: Text('Maximum Marks')),
                    DataColumn(label: Text('Grade')),
                    DataColumn(label: Text('GPA')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('85')),
                      DataCell(Text('100')),
                      DataCell(Text('A+')),
                      DataCell(Text('4')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('80')),
                      DataCell(Text('84.99')),
                      DataCell(Text('A')),
                      DataCell(Text('3.7')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('75')),
                      DataCell(Text('79.99')),
                      DataCell(Text('B+')),
                      DataCell(Text('3.4')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('70')),
                      DataCell(Text('74.99')),
                      DataCell(Text('B')),
                      DataCell(Text('3')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('65')),
                      DataCell(Text('69.99')),
                      DataCell(Text('C+')),
                      DataCell(Text('2.5')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('60')),
                      DataCell(Text('64.99')),
                      DataCell(Text('C')),
                      DataCell(Text('2')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('55')),
                      DataCell(Text('59.99')),
                      DataCell(Text('D+')),
                      DataCell(Text('1.5')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('50')),
                      DataCell(Text('54.99')),
                      DataCell(Text('D')),
                      DataCell(Text('1')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('0')),
                      DataCell(Text('49.99')),
                      DataCell(Text('F')),
                      DataCell(Text('0')),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DegreeCompletionStatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Degree Completion Status',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoItem(
                      title: 'Required Credit Hrs',
                      description:
                          'No of credit hours required for degree completion',
                      value: '--',
                    ),
                    SizedBox(height: 16),
                    _buildInfoItem(
                      title: 'Passed Credit Hrs',
                      description: 'No of credit hours passed by the student',
                      value: '--',
                    ),
                    SizedBox(height: 16),
                    _buildInfoItem(
                      title: 'Degree Status',
                      description: 'Either student eligible for degree or not',
                      value: 'Not Eligible For Degree (Incomplete)',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
      {required String title,
      required String description,
      required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

List<String> tabNames = [
  'Unofficial DMC',
  'Semester GPA',
  'Assessment Detail',
  'Assessment Break Up',
  'Assessment GPA',
  'Grading Criteria',
  'Degree Status',
];

class PrintingAdmitCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Printing Midterm Admitcard'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Printing Midterm Admitcard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Divider(),
              SizedBox(height: 16.0),
              Card(
                color: Color(0xFF800000),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student can print his/her midterm admitcard online using following conditions',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '1- Student dues are cleared. your current overall dues are -4100',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '2- Midterm exam is already announced and the exam timetable is already scheduled.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '3- Student have a valid Enrollment No.',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'If conditions meet the Issue option will be visible against each subject. Click on issue option. After issue the print option will be available, then print your admitcard.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(1),
                  5: FlexColumnWidth(1),
                  6: FlexColumnWidth(1),
                  7: FlexColumnWidth(1),
                  8: FlexColumnWidth(1),
                  9: FlexColumnWidth(1),
                  10: FlexColumnWidth(1),
                },
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey),
                    children: [
                      TableCell(
                          child: Center(
                              child: Text('ExID',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Course Title',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('TE',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('CE',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Exam Day',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Exam Time',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Exam Date',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Room',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Mid',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Issue',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Print',
                                  style: TextStyle(color: Colors.white)))),
                    ],
                  ),
                  TableRow(children: [
                    TableCell(child: Text('--')),
                    TableCell(child: Text('--)')),
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(child: Center(child: Text(''))),
                    TableCell(child: Center(child: Text(''))),
                    TableCell(child: Text('-')),
                    TableCell(child: Center(child: Text(''))),
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(child: Container()),
                    TableCell(child: Container()),
                  ]),
                  // Add more TableRow widgets for other rows of data
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrintingFinalAdmitCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Printing Finalterm Admitcard'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Printing Finalterm Admitcard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Divider(),
              SizedBox(height: 16.0),
              Card(
                color: Color(0xFF800000),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student can print his/her Finalterm admitcard online using following conditions',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '1- Student dues are cleared. your current overall dues are -4100',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '2- Midterm exam is already announced and the exam timetable is already scheduled.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '3- Student have a valid Enrollment No.',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'If conditions meet the Issue option will be visible against each subject. Click on issue option. After issue the print option will be available, then print your admitcard.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(1),
                  5: FlexColumnWidth(1),
                  6: FlexColumnWidth(1),
                  7: FlexColumnWidth(1),
                  8: FlexColumnWidth(1),
                  9: FlexColumnWidth(1),
                  10: FlexColumnWidth(1),
                },
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey),
                    children: [
                      TableCell(
                          child: Center(
                              child: Text('ExID',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Course Title',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('TE',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('CE',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Exam Day',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Exam Time',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Exam Date',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Room',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Final',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Issue',
                                  style: TextStyle(color: Colors.white)))),
                      TableCell(
                          child: Center(
                              child: Text('Print',
                                  style: TextStyle(color: Colors.white)))),
                    ],
                  ),
                  TableRow(children: [
                    TableCell(child: Text('--')),
                    TableCell(child: Text('--)')),
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(child: Center(child: Text(''))),
                    TableCell(child: Center(child: Text(''))),
                    TableCell(child: Text('-')),
                    TableCell(child: Center(child: Text(''))),
                    TableCell(child: Center(child: Text(' '))),
                    TableCell(child: Container()),
                    TableCell(child: Container()),
                  ]),
                  // Add more TableRow widgets for other rows of data
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UnofficialOBETranscriptPage extends StatefulWidget {
  @override
  _UnofficialOBETranscriptPageState createState() =>
      _UnofficialOBETranscriptPageState();
}

class _UnofficialOBETranscriptPageState
    extends State<UnofficialOBETranscriptPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unofficial OBE Transcript'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Unofficial OBE Transcript',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        tabs: [
                          Tab(text: 'PLO Attainment Summary'),
                          Tab(text: 'PLO Attainment Semester Wise'),
                          Tab(text: 'PLO Attainment Subject Wise'),
                        ],
                      ),
                      SizedBox(
                        height: 400, // Adjust height as needed
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Center(
                              child: Text(
                                'Sorry! we did not find any pass exam against your account for PLO Attainment Summary',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Sorry! we did not find any pass exam against your account for PLO Attainment Semester Wise',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Center(
                                child: Text(
                                  'Sorry! we did not find any pass exam against your account for PLO Attainment Subject Wise',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseEvaluationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Evaluation'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Course Evaluation',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Student Current Schedule for Course Evaluation',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'You can start course evaluation. You cannot start evaluation before Evaluation Start From Date.\nAll your comments are very valuable for high authority without disclosing your identity.\nYour proper evaluation and comments are very valuable because it will help the organization to improve and grow and keep the quality level high.',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Current Schedule',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Table(
                              border: TableBorder.all(color: Colors.black),
                              children: [
                                TableRow(
                                  children: [
                                    TableCell(
                                        child: Text('Evaluation Start From',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Course Title',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Teacher',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Offer No',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Status',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Start Evaluation',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                // Add your table data here
                                // Example:
                                // TableRow(
                                //   children: [
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //   ],
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeacherEvaluationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Evaluation'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Teacher Evaluation',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Student Current Schedule for Teacher Evaluation',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'You can start course evaluation. You cannot start evaluation before Evaluation Start From Date.\nAll your comments are very valuable for high authority without disclosing your identity.\nYour proper evaluation and comments are very valuable because it will help the organization to improve and grow and keep the quality level high.',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Current Schedule',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Table(
                              border: TableBorder.all(color: Colors.black),
                              children: [
                                TableRow(
                                  children: [
                                    TableCell(
                                        child: Text('Evaluation Start From',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Course Title',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Teacher',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Offer No',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Status',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    TableCell(
                                        child: Text('Start Evaluation',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                                // Add your table data here
                                // Example:
                                // TableRow(
                                //   children: [
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //     TableCell(child: Text('Data')),
                                //   ],
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HostelFeeLedgerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hostel Fee Ledger'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hostel Fee Ledger',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Hostel Fee Ledger',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'You must check your Hostel Fee Ledger on a regular basis to monitor your hostel fee dues status.',
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Your Current Dues are Rs. 0/=',
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Hostel Fee Ledger',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Sorry! we did not find any recent hostel ledger against your account',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountFeeLedgerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee Ledger'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Fee Ledger',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Fee Ledger',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'You must check your Fee Ledger on a regular basis to monitor your hostel fee dues status.',
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Your Current Dues are Rs. 0/=',
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Fee Ledger',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Sorry! we did not find any recent fee ledger against your account',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportFeeLedgerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport Fee Ledger'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Transport Fee Ledger',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Transport Fee Ledger',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'You must check your transport Fee Ledger on a regular basis to monitor your hostel fee dues status.',
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Your Current Dues are Rs. 0/=',
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Transport Fee Ledger',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Sorry! we did not find any recent transport ledger against your account',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenerateAccountVouchersPage extends StatefulWidget {
  @override
  _GenerateAccountVouchersPageState createState() =>
      _GenerateAccountVouchersPageState();
}

class _GenerateAccountVouchersPageState
    extends State<GenerateAccountVouchersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this); // Provide vsync parameter here
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Account Vouchers'),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Generate Fee Voucher'),
              Tab(text: 'Generate Transport Voucher'),
              Tab(text: 'Generate Hostel Voucher'),
              Tab(text: 'Voucher Guidelines'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildTabContent(
                  title: 'Generate Fee Voucher',
                  message:
                      'Note! Student can not generate voucher if he/she has pending voucher in due date or not having any outstanding balance.',
                ),
                _buildTabContent(
                  title: 'Generate Transport Voucher',
                  message:
                      'Note! Student can not generate voucher if he/she has pending voucher in due date or not having any outstanding balance.',
                ),
                _buildTabContent(
                  title: 'Generate Hostel Voucher',
                  message:
                      'Note! Student can not generate voucher if he/she has pending voucher in due date or not having any outstanding balance.',
                ),
                _buildVoucherGuidelinesTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent({required String title, required String message}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 20),
            Text(
              'No Data Found',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVoucherGuidelinesTab() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Voucher Guidelines',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'How to generate and pay your voucher\n\nStep-1: If you have already an account voucher within due date period then goto Step-2 otherwise goto Step-3.\nStep-2: If you have no pending voucher within due date then goto generate voucher either (Fee Voucher, Hostel Voucher or Transport Voucher).\nStep-3: Print your account voucher.\nStep-4: Just bring your account voucher to any branch of the bank mentioned on voucher.\nStep-5: The bank will accept your payment, stamp your statement as proof of payment and transfer your payment to the University within 24 hours.',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class WifiRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wifi Registration'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wifi Registration',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'This page is used to register two devices for wifi access. Delete the previous device and register new one if you have changed one of your device.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Form(
              child: Column(
                children: [
                  DropdownButtonFormField(
                    items: [
                      DropdownMenuItem(
                        value: '',
                        child: Text('Select'),
                      ),
                      // Add dropdown items here
                    ],
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Device',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please select a device';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Mac (00:E0:29:45:XX:XX)',
                      prefixIcon: Icon(Icons.computer),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a MAC address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add your submit logic here
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Already Registered Devices',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('MAC')),
                  DataColumn(label: Text('Device Name')),
                  DataColumn(label: Text('Brand Name')),
                  DataColumn(label: Text('Delete')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('---------')),
                    DataCell(Text('Smart Phone')),
                    DataCell(Text('')),
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          // Add delete logic here
                        },
                        child: Text('X'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('-------------')),
                    DataCell(Text('Laptop')),
                    DataCell(Text('')),
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          // Add delete logic here
                        },
                        child: Text('X'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedbackForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Feedback Form',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'This page is used to add feedback and view previously added feedback. Your valuable feedback will help us to improve the Student Portal because it\'s all about you.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 10.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('Sno.')),
                        DataColumn(label: Text('Feedback Date')),
                        DataColumn(label: Text('Feedback')),
                        DataColumn(label: Text('Admin Reply / Remarks')),
                      ],
                      rows: [
                        // Add rows of feedback data here
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Feedback Form',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Just give remarks about the student portal. Please feel free to share with us anything you think needs improvement or needs to be included in the student portal.',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    SizedBox(height: 20.0),
                                    TextFormField(
                                      maxLines: 4,
                                      decoration: InputDecoration(
                                        hintText:
                                            'Your Remarks about Student Online Portal',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Send Feedback Remarks'),
                                        ),
                                        SizedBox(width: 10.0),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Close'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text('Add Feedback About Application'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DownloadableForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enrollment Forms'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Enrollment Forms',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'This page is used to download Enrollment Form. Enrollment Form will not available for download if the student data is incomplete in UMS.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Student must visit the concerned department first to complete his/her UMS Information.',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 10.0),
            Text(
              'Following Information must be complete in student profile to download Enrollment Form:',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1. Admission Date'),
                Text('2. Name & Father Name'),
                Text('3. Date of Birth'),
                Text('4. Gender'),
                Text('5. Religion'),
                Text('6. Nationality'),
                Text('7. Permanent Address'),
                Text('8. Current Address'),
                Text('9. Academic details (At least 2)'),
                Text('10. Student Cell Number'),
                Text('11. Student Email Address'),
                Text('12. Student CNIC'),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: Text(
                    'Enrollment Form',
                    style: TextStyle(fontSize: 11.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ComplaintDashboard extends StatefulWidget {
  @override
  _ComplaintDashboardState createState() => _ComplaintDashboardState();
}

class _ComplaintDashboardState extends State<ComplaintDashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _selectedCategory = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'My Closed Tickets'),
                  Tab(text: 'My Pending Tickets'),
                  Tab(text: 'Add New Complaint Tickets'),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  200, // Adjust the height as needed
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildClosedTicketsTab(),
                  _buildPendingTicketsTab(),
                  _buildAddNewComplaintTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClosedTicketsTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Closed Tickets',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  'no data found',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPendingTicketsTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pending Tickets',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Text(
                  'no data found',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAddNewComplaintTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add New Ticket',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                SizedBox(height: 20),
                Text(
                  'Ticket Priority',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DropdownButton<String>(
                  value:
                      'Medium', // Ensure this value matches one of the DropdownMenuItem values
                  onChanged: (String? newValue) {
                    // Handle dropdown change
                  },
                  items: <String>['High', 'Medium', 'Low']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Text(
                  'Complaint Category',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedCategory.isNotEmpty
                      ? _selectedCategory
                      : null, // Corrected initial value
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCategory = newValue!;
                    });
                  },
                  items: <String>[
                    'Academic Related',
                    'Student Finance',
                    'Student Academic Test',
                    // Add other items here
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                // Add other form fields here
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle submit button press
                  },
                  child: Text('Submit Ticket'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change / Reset Password'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change / Reset Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please change your password on a regular basis to avoid unauthorized access of your login. Your password is case-sensitive.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Old Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'New Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Retype New Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Handle form submission
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.vpn_key),
                          SizedBox(width: 5),
                          Text('Change Password'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Change Password Instructions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1- Enter your old password in the Old Password field\n\n'
                '2- Enter your new password in the New Password field\n\n'
                '3- Retype your new password in the Retype New Password field\n\n'
                '4- Press the Change Password button to change your password\n\n'
                '5- On the next login, you will use your new password credentials',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportRequestFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport Request Form'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transport Request Form',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Form(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Date',
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Time',
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                                SizedBox(width: 3),
                                
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Location',
                                    ),
                                    items: ['Sohrab Goth', 'DHA', 'Sadar', 'Gulshan', 'Johar', 'Airport']
                                        .map((location) => DropdownMenuItem(
                                              value: location,
                                              child: Text(location),
                                            ))
                                        .toList(),
                                    onChanged: (value) {},
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Amount',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Type',
                                    ),
                                    items: ['Departure', 'Pickup', 'Both']
                                        .map((type) => DropdownMenuItem(
                                              value: type,
                                              child: Text(type),
                                            ))
                                        .toList(),
                                    onChanged: (value) {},
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Total Amount',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Single/Sharing',
                                    ),
                                    items: ['Single', 'Sharing']
                                        .map((status) => DropdownMenuItem(
                                              value: status,
                                              child: Text(status),
                                            ))
                                        .toList(),
                                    onChanged: (value) {},
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Sharing Student ID',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Handle form submission
                              },
                              child: Text('Submit'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Transport Request Listing',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Date')),
                            DataColumn(label: Text('Time')),
                            DataColumn(label: Text('Request Type')),
                            DataColumn(label: Text('Location')),
                            DataColumn(label: Text('Amount')),
                            DataColumn(label: Text('Single/Sharing')),
                            DataColumn(label: Text('Sharing Student ID')),
                            DataColumn(label: Text('Voucher Status')),
                            DataColumn(label: Text('Print')),
                          ],
                          rows: [], // Add DataRow widgets for each request entry
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


