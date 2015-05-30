           
           $(document).ready(function() {                        // When the HTML DOM is ready loading, then execute the following function...
                    $.get('someservlet', function(values) { // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                        //$('#somediv').text(responseText);         // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
                                               
                    JSON.stringify(values);
                       document.getElementById("text").value =JSON.stringify(values);
                       
                        console.log(values);
                    });
                });
