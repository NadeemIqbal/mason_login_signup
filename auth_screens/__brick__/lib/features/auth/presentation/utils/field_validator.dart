import 'package:flutter/material.dart';
import '../templates/auth_template.dart';

class FieldValidator {
  static String? validateField(String value, SignupField field) {
    if (field.isRequired && value.isEmpty) {
      return field.validationMessage ?? '${field.name} is required';
    }

    switch (field.type) {
      case FieldType.email:
        return _validateEmail(value);
      case FieldType.password:
        return _validatePassword(value);
      case FieldType.phone:
        return _validatePhone(value);
      case FieldType.url:
        return _validateUrl(value);
      case FieldType.number:
        return _validateNumber(value);
      case FieldType.date:
        return _validateDate(value);
      case FieldType.time:
        return _validateTime(value);
      case FieldType.datetime:
        return _validateDateTime(value);
      default:
        return null;
    }
  }

  static String? _validateEmail(String value) {
    if (value.isEmpty) return null;
    final emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? _validatePassword(String value) {
    if (value.isEmpty) return null;
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  static String? _validatePhone(String value) {
    if (value.isEmpty) return null;
    final phoneRegex = RegExp(r'^\+?[0-9]{10,13}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? _validateUrl(String value) {
    if (value.isEmpty) return null;
    final urlRegex = RegExp(
      r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
    );
    if (!urlRegex.hasMatch(value)) {
      return 'Please enter a valid URL';
    }
    return null;
  }

  static String? _validateNumber(String value) {
    if (value.isEmpty) return null;
    if (double.tryParse(value) == null) {
      return 'Please enter a valid number';
    }
    return null;
  }

  static String? _validateDate(String value) {
    if (value.isEmpty) return null;
    try {
      DateTime.parse(value);
      return null;
    } catch (e) {
      return 'Please enter a valid date (YYYY-MM-DD)';
    }
  }

  static String? _validateTime(String value) {
    if (value.isEmpty) return null;
    final timeRegex = RegExp(r'^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$');
    if (!timeRegex.hasMatch(value)) {
      return 'Please enter a valid time (HH:MM)';
    }
    return null;
  }

  static String? _validateDateTime(String value) {
    if (value.isEmpty) return null;
    try {
      DateTime.parse(value);
      return null;
    } catch (e) {
      return 'Please enter a valid date and time (YYYY-MM-DD HH:MM)';
    }
  }
}
