import re
import datetime
# using string as python expression with eval
def test(astr, delimiter = "||"):
    """
    >>> test("c:\\gema\\titleupdate.log||{{datetime.datetime.today().strftime('%Y_%m_%d')}} SUCCESSFULLY COMPLETED||top-to-bottom")
    """
    varList = []
    varList = re.findall("\{\{.*\}\}", astr)
    for var in varList:
        print(var)
        var1 = var.lstrip("{{")
        var2 =  var1.rstrip("}}")
        val = eval(var2)
        newStr = astr.replace(var, val)
    return newStr

# convert string to python class object
# globals()[class_name]

# string as object attribute
# The getattr() function returns the value of the specified attribute from the specified object.
# getattr(object, attribute, default)

##class Person:
##  name = "John"
##  age = 36
##  country = "Norway"
##
##x = getattr(Person, 'age')




