<%-- 
    Document   : index
    Created on : Jan 30, 2013, 9:18:32 PM
    Author     : Patrick Urban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge #2: Convenience Calculators with JavaScript</title>
    </head>
    <body>
        <h2 style="color: red">Challenge #2: Select a calculator below:</h2>
        <p>Click <a href="index.jsp">here</a> for challenge #1.</p> 
        <h3>Area of a Rectangle</h3>
        <form id="areaRect" name="areaRect" action="Rect2Servlet" 
              onsubmit="return myRectangleValidator()" method="post">
            Length: <input type="text" name="length"><br>
            Width: <input type="text" name="width"><br>
            <p><input type="submit" value="Area Rectangle"></p>
            <%
                Object rectangleresult = request.getAttribute("rectangleresult");
                String sRectangleResult = "Enter the number for the length and "
                        + "width, then click on 'Area Rectagle'."; // default message

                if (rectangleresult != null) {
                    sRectangleResult = rectangleresult.toString();
                }
                out.println(sRectangleResult);
            %>
        </form>
        <hr>
        <h3>Area of a Circle</h3>
        <form id="areaCircle" name="areaCircle" method="post"  
              onsubmit="return myCirleValidator()" action="Circle2Servlet">
            <p>Radius of the Circle: <input type="text" name="radius"><br>
                <input type="submit" value="Area Circle">
            </p>
            <%
                Object arearesult = request.getAttribute("arearesult");
                String sAreaResult = "Enter the a number and click on 'Area Circle'."; // default message

                if (arearesult != null) {
                    sAreaResult = arearesult.toString();
                }
                out.println(sAreaResult);
            %>
        </form>
        <hr>
        <h3 style="margin-bottom: 3px">Hypotenuse of a Rectangle</h3>
        <p style="font-family: Arial; font-size: small; margin-top: 0px">
            (Remember this is 'A' and 'B' to determine 'C')</p>
        <form id="thirdSide" name="thirdSide" method="post"  
              onsubmit="return myTriangleValidator()" action="ThirdSide2Servlet">
            Side one of the rectangle: <input type="text" name="sideone"><br>
            Side two of the rectangle: <input type="text" name="sidetwo"><br>
            <p><input type="submit" value="Hypotenuse"></p>
            <%
                Object hypotenuseresult = request.getAttribute("hypotenuseresult");
                String sHypotenuseresult = "Enter the number for 'A' and a Number "
                        + "for 'B' and click on 'Hypotenuse'."; // default message

                if (hypotenuseresult != null) {
                    sHypotenuseresult = hypotenuseresult.toString();
                }
                out.println(sHypotenuseresult);
            %>
        </form>

        <script>
            var tinyNumber = new Boolean();
            var largeNumber = new Boolean();
            // First 3 functions are Validators
            function myRectangleValidator()
            {
                var length=document.forms["areaRect"]["length"].value;
                var width=document.forms["areaRect"]["width"].value;
                if (length==null || length=="" || width==null || width=="")
                {
                    alert("At least one of the values is missing to calculate area.");
                    return false;
                }
                tinyNumber = smallNumberTestingTwoNumber(length, width);
                if (tinyNumber)
                {
                    tooSmall();
                    return false;
                }
                
                largeNumber = largeNumberTestingTwoNumber(length, width);
                if (largeNumber)
                {
                    tooLarge();
                    return false;
                }
            } 
            function myCirleValidator()
            {
                var radius=document.forms["areaCircle"]["radius"].value;
                if (radius==null || radius=="")
                {
                    alert("A value for the radius is missing.");
                    return false;
                }
                tinyNumber = smallNumberTesting(radius);
                if (tinyNumber)
                {
                    tooSmall();
                    return false;
                }
                
                largeNumber = largeNumberTesting(radius);
                if (largeNumber)
                {
                    tooLarge();
                    return false;
                }
            } 
            function myTriangleValidator()
            {
                var sideone=document.forms["thirdSide"]["sideone"].value;
                var sidetwo=document.forms["thirdSide"]["sidetwo"].value;
                if (sideone==null || sideone=="" || sidetwo==null || sidetwo=="")
                {
                    alert("You need to enter a value for both 'Side one' and 'Side two'.");
                    return false;
                }
                tinyNumber = smallNumberTestingTwoNumber(sideone, sidetwo);
                if (tinyNumber)
                {
                    tooSmall();
                    return false;
                }
                
                largeNumber = largeNumberTestingTwoNumber(sideone, sidetwo);
                if (largeNumber)
                {
                    tooLarge();
                    return false;
                }
            }
            
            function smallNumberTestingTwoNumber(value1, value2){
                if ((Number(value1))< 0 || Number(value2)< 0)
                    return true;
            }
            
            function largeNumberTestingTwoNumber(value1, value2){
                if ((Number(value1)) > 500 || Number(value2) > 500)
                    return true;
            }
            
            function smallNumberTesting(value){
                if (Number(value) < 0)
                    return true;
            }
            
            function largeNumberTesting(value){
                if (Number(value) > 500)
                    return true;
            }
            
            function tooSmall(){
                alert("A number entered is less than 0.");
            }
            
            function tooLarge(){
                alert("A number entered is more than 500.");
            }
            
            
        </script>
    </body>
</html>
