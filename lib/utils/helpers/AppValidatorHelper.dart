class AppValidatorHelper{
  static String? validateEmail({required String? value}){
    if(value == null || value.isEmpty){
      return "Email is required";
    }

    // REGULAR EXPRESSION FOR EMAIL VALIDATION
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value, minimumLength){
   if(value == null || value.isEmpty){
      return "Password is required";
    }

    if(value.length < minimumLength){
      return 'Password must be at least $minimumLength characters long';
    }

  // check for upper case letters
  if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}\<>]'))){
    return 'Password must contain at least one special character';
  }

  return null;
  }
}