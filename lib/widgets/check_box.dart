// class CheckBox extends State<MyWidget> {
//   bool rememberMe = false;
//
//   void _onRememberMeChanged(bool newValue) => setState(() {
//     rememberMe = newValue;
//
//     if (rememberMe) {
//       // TODO: Here goes your functionality that remembers the user.
//     } else {
//       // TODO: Forget the user
//     }
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: rememberMe,
//         onChanged: _onRememberMeChanged
//     );
//   }
// }