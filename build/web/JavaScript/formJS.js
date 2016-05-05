
function validletter(word) 
{
    for (var i = 0; i < word.length; i++)
        if (!((word.charAt(i) >= 'a') && (word.charAt(i) <= 'z')) ||
                (word.charAt(i) >= 'A') && (word.charAt(i) <= 'Z'))
            return false;
    return true;
}
function isEmpty(str)
{

    if (str.length == 0)
        return true;
    else
        return false;
}
function isNumeric(str)
{
    if (isNaN(str))
        return false;

    else
        return true;
}
function genderCheck()
{
    for (var i = 0; i < document.form.gender.length; i++)
        if (document.form.gender[i].checked == true)
            return true;
    return false;
}
function phoneCheck()
{
    var kidomt;
    kidomt = document.form.kidomet.selectedIndex;
    if (kidomt == 0)
        return false;
    return true;
}
function checkForm()
{

    if (isEmpty(document.form.idNum.value) || (document.form.idNum.value.length < 1))
    {
        window.alert("Please enter your name");
        document.form.idNum.focus();
        document.form.idNum.select();
        return false;
    }

    if (isEmpty(document.form.username.value))
    {
        window.alert("Please enter your username");
        document.form.username.focus();
        document.form.username.select();
        return false;
    }
    if (isEmpty(document.form.pwd.value) ||
            (document.form.pwd.length < 4))
    {
        window.alert("Enter a password with at least 4 characters");
        document.form.pwd.focus();
        document.form.pwd.select();
        return false;
    }
    var pass1 = document.form.pwd.value;
    var pass2 = document.form.pwdConfirm.value;
    if (pass1 != pass2 || isEmpty(pass1) || isEmpty(pass2)) {
        window.alert("Both Passwords should match");
        document.form.pwdConfirm.focus();
        document.form.pwdConfirm.select();
        return false;
    }
    if (!isNumeric(document.form.phoneNum.value) ||
            isEmpty(document.form.phoneNum.value))
    {
        window.alert("Please enter a valid phone number");
        document.form.phoneNum.focus();
        document.form.phoneNum.select();
        return false;
    }

    if (document.form.phoneNum.value.length  <7)
    {
        window.alert("Phone number should be longer");
        document.form.phoneNum.focus();
        document.form.phoneNum.select();
        return false;
    }
    if (!phoneCheck()) {
        window.alert("Choose a telephone numbering plan");
        document.form.kidomt.focus();
        document.form.kidomt.select();
        return false;
    }
    
    if (!countryCheck()) {
        window.alert("Choose a country");
        document.form.country.focus();
        document.form.country.select();
        return false;
    }
    if (!genderCheck()) {
        window.alert("Choose a gender");
        return false;        
        

    }
    if (!tou()) {
        window.alert("Please agree to our terms");
        document.form.cbterms.focus();
        document.form.cbterms.select();
        return false;
    }
    return true;
}