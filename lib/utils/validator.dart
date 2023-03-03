final nameRegEx = RegExp(r'^[A-Za-z]+$');
String? fullnameValidator(value) {
  if (value == null || value.toString() == "") {
    return "Please enter fullname";
  } else if (!nameRegEx.hasMatch(value)) {
    return "fullname cannot contain numbers";
  }
  return null;
}

String? numberValidator(value) {
  if (value == null || value.toString() == "") {
    return "Please enter phoneNumber";
  } else if (value.length < 10) {
    return "Phone Number cannot be less than 10 digits";
  }
  return null;
}

final emailRegEx = RegExp(
    r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');
String? emailValidator(value) {
  if (value == null || value.toString() == "") {
    return "Please enter email";
  } else if (!emailRegEx.hasMatch(value)) {
    return "Please enter valid email address";
  }
  return null;
}

final checkPasswordRegEx =
    RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
String? checkPasswordValidator(value) {
  if (value == null || value.toString() == "") {
    return "Please enter password";
  } else if (!checkPasswordRegEx.hasMatch(value)) {
    return "Password cannot be less than 8 characters and should contain one number and special character";
  }
  return null;
}
