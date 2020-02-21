//validating email

 validEmail(String email) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(email))
    return 'Enter Valid Email';
  else
    return null;
}

// password validation
 validPassword(String val)
{
  if(val.length<6)return "Password must be 6 character long" ;else return null;
}
 validconfirmPassword(String val)
{
  if(val.length<6)return "Password must be 6 character long" ;else return null;
}