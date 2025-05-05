// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Finish`
  String get finish {
    return Intl.message('Finish', name: 'finish', desc: '', args: []);
  }

  /// `Required`
  String get required {
    return Intl.message('Required', name: 'required', desc: '', args: []);
  }

  /// `This field is required`
  String get required_field {
    return Intl.message('This field is required', name: 'required_field', desc: '', args: []);
  }

  /// `Email is required`
  String get email_required {
    return Intl.message('Email is required', name: 'email_required', desc: '', args: []);
  }

  /// `Name should not contain special characters`
  String get name_no_special_chars {
    return Intl.message(
      'Name should not contain special characters',
      name: 'name_no_special_chars',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get password_required {
    return Intl.message('Password is required', name: 'password_required', desc: '', args: []);
  }

  /// `Retype password is required`
  String get retype_pass_required {
    return Intl.message('Retype password is required', name: 'retype_pass_required', desc: '', args: []);
  }

  /// `Password mismatch`
  String get password_mismatch {
    return Intl.message('Password mismatch', name: 'password_mismatch', desc: '', args: []);
  }

  /// `Invalid email`
  String get invalid_email {
    return Intl.message('Invalid email', name: 'invalid_email', desc: '', args: []);
  }

  /// `Password must be at least 6 characters`
  String get password_length {
    return Intl.message('Password must be at least 6 characters', name: 'password_length', desc: '', args: []);
  }

  /// `Phone number is required`
  String get phone_number_required {
    return Intl.message('Phone number is required', name: 'phone_number_required', desc: '', args: []);
  }

  /// `Invalid phone number`
  String get invalid_phone {
    return Intl.message('Invalid phone number', name: 'invalid_phone', desc: '', args: []);
  }

  /// `Invalid OTP code`
  String get invalid_otp_code {
    return Intl.message('Invalid OTP code', name: 'invalid_otp_code', desc: '', args: []);
  }

  /// `Verify phone number`
  String get verify_phone {
    return Intl.message('Verify phone number', name: 'verify_phone', desc: '', args: []);
  }

  /// `Mobile number`
  String get mobile {
    return Intl.message('Mobile number', name: 'mobile', desc: '', args: []);
  }

  /// `A SMS includes a digital code has been sent to your number`
  String get sms_sent {
    return Intl.message(
      'A SMS includes a digital code has been sent to your number',
      name: 'sms_sent',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `National ID picture`
  String get id_picture {
    return Intl.message('National ID picture', name: 'id_picture', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Custodian`
  String get custodian {
    return Intl.message('Custodian', name: 'custodian', desc: '', args: []);
  }

  /// `Patient`
  String get patient {
    return Intl.message('Patient', name: 'patient', desc: '', args: []);
  }

  /// `No SMS received? Resend ({sec}s)`
  String sms_not_received(Object sec) {
    return Intl.message('No SMS received? Resend (${sec}s)', name: 'sms_not_received', desc: '', args: [sec]);
  }

  /// `Resend code`
  String get resend_code {
    return Intl.message('Resend code', name: 'resend_code', desc: '', args: []);
  }

  /// `Terms & Conditions`
  String get terms {
    return Intl.message('Terms & Conditions', name: 'terms', desc: '', args: []);
  }

  /// `You must accept the terms and conditions`
  String get terms_error {
    return Intl.message('You must accept the terms and conditions', name: 'terms_error', desc: '', args: []);
  }

  /// `Retype password`
  String get retype_pass {
    return Intl.message('Retype password', name: 'retype_pass', desc: '', args: []);
  }

  /// `SIGN UP`
  String get sign_up {
    return Intl.message('SIGN UP', name: 'sign_up', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `SIGN IN`
  String get sign_in {
    return Intl.message('SIGN IN', name: 'sign_in', desc: '', args: []);
  }

  /// `Receipt`
  String get receipt {
    return Intl.message('Receipt', name: 'receipt', desc: '', args: []);
  }

  /// `Birth date`
  String get birth_date {
    return Intl.message('Birth date', name: 'birth_date', desc: '', args: []);
  }

  /// `Total amount: 250 L.E`
  String get total_amount {
    return Intl.message('Total amount: 250 L.E', name: 'total_amount', desc: '', args: []);
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Duration: 3 hours`
  String get duration {
    return Intl.message('Duration: 3 hours', name: 'duration', desc: '', args: []);
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Hourly fees`
  String get hourly_fees {
    return Intl.message('Hourly fees', name: 'hourly_fees', desc: '', args: []);
  }

  /// `Credit: 200 L.E`
  String get credit_200 {
    return Intl.message('Credit: 200 L.E', name: 'credit_200', desc: '', args: []);
  }

  /// `Service type`
  String get service_type {
    return Intl.message('Service type', name: 'service_type', desc: '', args: []);
  }

  /// `Debit: 50 L.E`
  String get debit_50 {
    return Intl.message('Debit: 50 L.E', name: 'debit_50', desc: '', args: []);
  }

  /// `Nursing service`
  String get nursing_service {
    return Intl.message('Nursing service', name: 'nursing_service', desc: '', args: []);
  }

  /// `Companionship`
  String get companionship {
    return Intl.message('Companionship', name: 'companionship', desc: '', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Review`
  String get review {
    return Intl.message('Review', name: 'review', desc: '', args: []);
  }

  /// `Verification is pending`
  String get verification_pending {
    return Intl.message('Verification is pending', name: 'verification_pending', desc: '', args: []);
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `Sign up as...`
  String get sign_up_as {
    return Intl.message('Sign up as...', name: 'sign_up_as', desc: '', args: []);
  }

  /// `Any Comment?`
  String get any_comment {
    return Intl.message('Any Comment?', name: 'any_comment', desc: '', args: []);
  }

  /// `Account Verification`
  String get account_verification {
    return Intl.message('Account Verification', name: 'account_verification', desc: '', args: []);
  }

  /// `CV`
  String get cv {
    return Intl.message('CV', name: 'cv', desc: '', args: []);
  }

  /// `Do you have any complains?`
  String get do_you_have_complains {
    return Intl.message('Do you have any complains?', name: 'do_you_have_complains', desc: '', args: []);
  }

  /// `As usual`
  String get as_usual {
    return Intl.message('As usual', name: 'as_usual', desc: '', args: []);
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `Graduation certificate`
  String get graduation_certificate {
    return Intl.message('Graduation certificate', name: 'graduation_certificate', desc: '', args: []);
  }

  /// `Choose complain`
  String get choose_complain {
    return Intl.message('Choose complain', name: 'choose_complain', desc: '', args: []);
  }

  /// `Thank you for registration, your request is currently reviewed by our team we will send you email upon verification`
  String get thank_you_registration {
    return Intl.message(
      'Thank you for registration, your request is currently reviewed by our team we will send you email upon verification',
      name: 'thank_you_registration',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message('Cash', name: 'cash', desc: '', args: []);
  }

  /// `Nurse`
  String get nurse {
    return Intl.message('Nurse', name: 'nurse', desc: '', args: []);
  }

  /// `Nursing license`
  String get nursing_license {
    return Intl.message('Nursing license', name: 'nursing_license', desc: '', args: []);
  }

  /// `Credit card`
  String get credit_card {
    return Intl.message('Credit card', name: 'credit_card', desc: '', args: []);
  }

  /// `National ID picture`
  String get national_id_picture {
    return Intl.message('National ID picture', name: 'national_id_picture', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Clinics and Hospitals`
  String get clinics_and_hospitals {
    return Intl.message('Clinics and Hospitals', name: 'clinics_and_hospitals', desc: '', args: []);
  }

  /// `Pay`
  String get pay {
    return Intl.message('Pay', name: 'pay', desc: '', args: []);
  }

  /// `Order details`
  String get order_details {
    return Intl.message('Order details', name: 'order_details', desc: '', args: []);
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Nursing wallet`
  String get nursing_wallet {
    return Intl.message('Nursing wallet', name: 'nursing_wallet', desc: '', args: []);
  }

  /// `Client`
  String get client {
    return Intl.message('Client', name: 'client', desc: '', args: []);
  }

  /// `Add payment method`
  String get add_payment_method {
    return Intl.message('Add payment method', name: 'add_payment_method', desc: '', args: []);
  }

  /// `Order History`
  String get order_history {
    return Intl.message('Order History', name: 'order_history', desc: '', args: []);
  }

  /// `Add patient`
  String get add_patient {
    return Intl.message('Add patient', name: 'add_patient', desc: '', args: []);
  }

  /// `Nursing services`
  String get nursing_services {
    return Intl.message('Nursing services', name: 'nursing_services', desc: '', args: []);
  }

  /// `Care`
  String get care {
    return Intl.message('Care', name: 'care', desc: '', args: []);
  }

  /// `On spot booking`
  String get on_spot_booking {
    return Intl.message('On spot booking', name: 'on_spot_booking', desc: '', args: []);
  }

  /// `Home nursing care at your fingertips`
  String get home_nursing_care {
    return Intl.message('Home nursing care at your fingertips', name: 'home_nursing_care', desc: '', args: []);
  }

  /// `Specialist near by you`
  String get specialist_near_by {
    return Intl.message('Specialist near by you', name: 'specialist_near_by', desc: '', args: []);
  }

  /// `Emergency call`
  String get emergency_call {
    return Intl.message('Emergency call', name: 'emergency_call', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Speciality`
  String get speciality {
    return Intl.message('Speciality', name: 'speciality', desc: '', args: []);
  }

  /// `Kidney Failure`
  String get kidney_failure {
    return Intl.message('Kidney Failure', name: 'kidney_failure', desc: '', args: []);
  }

  /// `Vacancies`
  String get vacancies {
    return Intl.message('Vacancies', name: 'vacancies', desc: '', args: []);
  }

  /// `Nurse specialized in kidney failure`
  String get nurse_specialized_kidney_failure {
    return Intl.message(
      'Nurse specialized in kidney failure',
      name: 'nurse_specialized_kidney_failure',
      desc: '',
      args: [],
    );
  }

  /// `#Invoice: 6545`
  String get invoice {
    return Intl.message('#Invoice: 6545', name: 'invoice', desc: '', args: []);
  }

  /// `Salary`
  String get salary {
    return Intl.message('Salary', name: 'salary', desc: '', args: []);
  }

  /// `Credit`
  String get credit {
    return Intl.message('Credit', name: 'credit', desc: '', args: []);
  }

  /// `Debit`
  String get debit {
    return Intl.message('Debit', name: 'debit', desc: '', args: []);
  }

  /// `The invoice is not paid yet`
  String get payment_status {
    return Intl.message('The invoice is not paid yet', name: 'payment_status', desc: '', args: []);
  }

  /// `Completed orders`
  String get completed_orders {
    return Intl.message('Completed orders', name: 'completed_orders', desc: '', args: []);
  }

  /// `Timer`
  String get timer {
    return Intl.message('Timer', name: 'timer', desc: '', args: []);
  }

  /// `Nursing Timer`
  String get nursing_timer {
    return Intl.message('Nursing Timer', name: 'nursing_timer', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Age`
  String get age {
    return Intl.message('Age', name: 'age', desc: '', args: []);
  }

  /// `Invoices`
  String get invoices {
    return Intl.message('Invoices', name: 'invoices', desc: '', args: []);
  }

  /// `Alzheimer`
  String get alzheimers {
    return Intl.message('Alzheimer', name: 'alzheimers', desc: '', args: []);
  }

  /// `Help & Contact us`
  String get help_contact_us {
    return Intl.message('Help & Contact us', name: 'help_contact_us', desc: '', args: []);
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Open patient profile`
  String get open_patient_profile {
    return Intl.message('Open patient profile', name: 'open_patient_profile', desc: '', args: []);
  }

  /// `Log out`
  String get log_out {
    return Intl.message('Log out', name: 'log_out', desc: '', args: []);
  }

  /// `Finished`
  String get finished {
    return Intl.message('Finished', name: 'finished', desc: '', args: []);
  }

  /// `Expected arrival time: 30 minutes`
  String get expected_arrival_time {
    return Intl.message('Expected arrival time: 30 minutes', name: 'expected_arrival_time', desc: '', args: []);
  }

  /// `Call nurse`
  String get call_nurse {
    return Intl.message('Call nurse', name: 'call_nurse', desc: '', args: []);
  }

  /// `Order Nursing Services`
  String get order_nursing_services {
    return Intl.message('Order Nursing Services', name: 'order_nursing_services', desc: '', args: []);
  }

  /// `Cash payment`
  String get cash_payment {
    return Intl.message('Cash payment', name: 'cash_payment', desc: '', args: []);
  }

  /// `Schedule time`
  String get schedule_time {
    return Intl.message('Schedule time', name: 'schedule_time', desc: '', args: []);
  }

  /// `Appointment date`
  String get appointment_date {
    return Intl.message('Appointment date', name: 'appointment_date', desc: '', args: []);
  }

  /// `Appointment time`
  String get appointment_time {
    return Intl.message('Appointment time', name: 'appointment_time', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Illness type`
  String get illness_type {
    return Intl.message('Illness type', name: 'illness_type', desc: '', args: []);
  }

  /// `Hourly order`
  String get hourly_order {
    return Intl.message('Hourly order', name: 'hourly_order', desc: '', args: []);
  }

  /// `Specific services`
  String get specific_services {
    return Intl.message('Specific services', name: 'specific_services', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Current location`
  String get current_location {
    return Intl.message('Current location', name: 'current_location', desc: '', args: []);
  }

  /// `Additional information`
  String get additional_information {
    return Intl.message('Additional information', name: 'additional_information', desc: '', args: []);
  }

  // skipped getter for the 'any_comment _for_nursy?' key

  /// `title`
  String get title {
    return Intl.message('title', name: 'title', desc: '', args: []);
  }

  /// `You have successfully paid and booked\n your order. Thank you for choosing Nursy`
  String get Success_subtitle {
    return Intl.message(
      'You have successfully paid and booked\n your order. Thank you for choosing Nursy',
      name: 'Success_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Nursey Wallet`
  String get nursey_wallet {
    return Intl.message('Nursey Wallet', name: 'nursey_wallet', desc: '', args: []);
  }

  /// `0.0 EGP`
  String get zero {
    return Intl.message('0.0 EGP', name: 'zero', desc: '', args: []);
  }

  /// `Default payment method `
  String get default_payment {
    return Intl.message('Default payment method ', name: 'default_payment', desc: '', args: []);
  }

  /// `Promotion`
  String get promotion {
    return Intl.message('Promotion', name: 'promotion', desc: '', args: []);
  }

  /// `Add promo code `
  String get add_promo_code {
    return Intl.message('Add promo code ', name: 'add_promo_code', desc: '', args: []);
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message('Phone number', name: 'phone_number', desc: '', args: []);
  }

  /// `There is no patients`
  String get there_patients {
    return Intl.message('There is no patients', name: 'there_patients', desc: '', args: []);
  }

  // skipped getter for the 'order_#' key

  /// `date:`
  String get date {
    return Intl.message('date:', name: 'date', desc: '', args: []);
  }

  /// `Time:`
  String get time {
    return Intl.message('Time:', name: 'time', desc: '', args: []);
  }

  /// `Order type:`
  String get order_type {
    return Intl.message('Order type:', name: 'order_type', desc: '', args: []);
  }

  /// `Service 1`
  String get service_1 {
    return Intl.message('Service 1', name: 'service_1', desc: '', args: []);
  }

  /// `More details:`
  String get more_details {
    return Intl.message('More details:', name: 'more_details', desc: '', args: []);
  }

  /// `Duration:`
  String get dura_tion {
    return Intl.message('Duration:', name: 'dura_tion', desc: '', args: []);
  }

  /// `Total amont:`
  String get Total_amont {
    return Intl.message('Total amont:', name: 'Total_amont', desc: '', args: []);
  }

  /// `Domain`
  String get domain {
    return Intl.message('Domain', name: 'domain', desc: '', args: []);
  }

  /// `Special illness`
  String get special_illness {
    return Intl.message('Special illness', name: 'special_illness', desc: '', args: []);
  }

  /// `Normal`
  String get normal {
    return Intl.message('Normal', name: 'normal', desc: '', args: []);
  }

  /// `Booking`
  String get booking {
    return Intl.message('Booking', name: 'booking', desc: '', args: []);
  }

  /// `Kidney clinic`
  String get kidney_clinic {
    return Intl.message('Kidney clinic', name: 'kidney_clinic', desc: '', args: []);
  }

  /// `Full time `
  String get full_time {
    return Intl.message('Full time ', name: 'full_time', desc: '', args: []);
  }

  /// `contacts:`
  String get contacts {
    return Intl.message('contacts:', name: 'contacts', desc: '', args: []);
  }

  /// `Our money`
  String get our_money {
    return Intl.message('Our money', name: 'our_money', desc: '', args: []);
  }

  /// `Your money`
  String get your_money {
    return Intl.message('Your money', name: 'your_money', desc: '', args: []);
  }

  /// `Accounts`
  String get accounts {
    return Intl.message('Accounts', name: 'accounts', desc: '', args: []);
  }

  /// `Scheduled orders`
  String get scheduled_orders {
    return Intl.message('Scheduled orders', name: 'scheduled_oeders', desc: '', args: []);
  }

  /// `Dashboard`
  String get dashborard {
    return Intl.message('Dashboard', name: 'dashborard', desc: '', args: []);
  }

  /// `On spot`
  String get on_spot {
    return Intl.message('On spot', name: 'on_spot', desc: '', args: []);
  }

  // skipped getter for the 'ant_special_illness?' key

  /// `Illness type`
  String get llenss_type {
    return Intl.message('Illness type', name: 'llenss_type', desc: '', args: []);
  }

  /// `Do you have patient information?`
  String get do_you_have_patient {
    return Intl.message('Do you have patient information?', name: 'do_you_have_patient', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `Companionship services cost`
  String get companionship_cost {
    return Intl.message('Companionship services cost', name: 'companionship_cost', desc: '', args: []);
  }

  /// `*Note: rate per hour starts from the nurse arrival time`
  String get note {
    return Intl.message('*Note: rate per hour starts from the nurse arrival time', name: 'note', desc: '', args: []);
  }

  /// `Proceed`
  String get proceed {
    return Intl.message('Proceed', name: 'proceed', desc: '', args: []);
  }

  /// `Your payment method`
  String get payment_method {
    return Intl.message('Your payment method', name: 'payment_method', desc: '', args: []);
  }

  /// `The cost per hour`
  String get the_cost_per_hour {
    return Intl.message('The cost per hour', name: 'the_cost_per_hour', desc: '', args: []);
  }

  // skipped getter for the 'have_payment ?' key

  /// `Paste`
  String get paste {
    return Intl.message('Paste', name: 'paste', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Paste code`
  String get paste_code {
    return Intl.message('Paste code', name: 'paste_code', desc: '', args: []);
  }

  /// `Do you want to paste the code`
  String get paste_code_message {
    return Intl.message('Do you want to paste the code', name: 'paste_code_message', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en'), Locale.fromSubtags(languageCode: 'ar')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
