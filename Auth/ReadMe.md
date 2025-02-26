## Authentication Example
there are only 4 components here
- TextBox to enter name
- TextBox to enter password
- ElevatedButton
- Text to display what ever is the result

---

## Remember
- myController1.text will give you what ever text is entered into the name TextBox
- myController2.text will give you what ever text is entered into the password TextBox
- change the name from "Yohan" to your name... and do the same with password. Change password to what ever you want.

---

## Test
- on the Button's onPressed event you have to have to write an if condition that accordingly sets the result
- the result is "Access Granted" if the name is equal to the text we get from myController1.text and so must the password be equal to the text we get from myController2.text
- the result is "Access Denied" if even one of them are wrong

