// class Validator {
//   static String validateEmail(String value) {
//     //   value.trim();
//     Pattern pattern =
//         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?)*$";
//     RegExp regex = new RegExp(pattern);
//     if (!regex.hasMatch(value) && value.isEmpty == true || value == null)
//       return 'Please enter a valid email address.';
//     else
//       return null;
//   }
//
//   static String validatePhone(String value) {
//     //value.trim();
//     if (value.length < 9 && value == null)
//       return 'Please enter a valid email phone.';
//     else
//       return null;
//   }
//
//   static String validatePassword(String value) {
//     //value.trim();
//     if (value.length < 6 && value == null) {
//       return 'Please enter a valid email password.';
//     } else {
//       return null;
//     }
//   }
//
//   static String validateName(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null) {
//       return 'Please enter a valid name';
//     } else {
//       return null;
//     }
//   }
//
//   static String validateIdentity(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null || value.length != 14) {
//       return 'Please enter a valid Identity Number';
//     } else {
//       return null;
//     }
//   }
//
//   static String residencyNumber(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null) {
//       return 'Please enter a Residency Number';
//     } else {
//       return null;
//     }
//   }
//
//   static String socialCareRegistrationNumber(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null) {
//       return 'Please enter a SocialCare Registration Number';
//     } else {
//       return null;
//     }
//   }
//
//   static String addAttachment(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null) {
//       return 'Please enter a addAttachment';
//     } else {
//       return null;
//     }
//   }
//
//   static String scanBarcodeAttachment(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null) {
//       return 'Please Scan Barcode';
//     } else {
//       return null;
//     }
//   }
//
//   static String commercialRegistrationNo(String value) {
//     //value.trim();
//     if (value.isEmpty == true || value == null) {
//       return 'Please  Enter Commercial Registration Number';
//     } else {
//       return null;
//     }
//   }
// }
