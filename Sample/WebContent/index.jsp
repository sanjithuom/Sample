<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<body>

    <fieldset>
        <legend>Parameters</legend>
        <form id="form1" action="CalculatorServlet" method="get">
            <label for="param1" > Operand 1</label>
            <input type="number" id="param1" name="param1">
            <label for="" id="param2">Operand 2</label>
            <input type="number" id="param2" name="param2">
            <div>
            <input type="submit" value="Submit without Ajax">
            <input type="button" value="Submit with Ajax" id="btnCall1">
            <input type="button" value="Submit param1 and 2" id="btnCall2">
            </div>
        </form>
    </fieldset>

    <script>
        (function() {
            $("#btnCall1").click(function() {
                $.ajax({
                    url : "CalculatorServlet",
                    type: "get",
                    data: $("#form1").serialize(),                  
                    dataType: "text",                   
                    success: success,
                    error: error
                });
            });

            $("#btnCall2").click(function() {
                var param1Value = $("#param1").val();
                $.ajax({
                    url : "CalculatorServlet",
                    type: "get",
                    data: {param1: param1Value, param2: 2},                 
                    dataType: "text",                   
                    success: success,
                    error: error
                });
            });

            function success(data, textStatus, jqXHR)
            {
                alert(data);
            }

            function error(jqXHR, textStatus, errorThrown)
            {
                alert("error "+textStatus);
            }
        })();
    </script>
</body>
</html>