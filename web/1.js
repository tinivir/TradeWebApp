           
           $(document).ready(function() {                        // When the HTML DOM is ready loading, then execute the following function...
                    $.get('someservlet', function(values) { // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...

                       document.getElementById("text").value =JSON.stringify(values);
                       

                    });
                });
