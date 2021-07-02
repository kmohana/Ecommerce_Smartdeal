$(document).ready(function () {

    $("#signup").validate({
        errorClass: "error fail-alert",
        validClass: "valid success-alert",
        rules: {

            email: {
                required: true,
                email: true,
                regex: /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
            },
            username: {
                required: true,
                minlength: 5
            },
            password: {
                required: true,
                minlength: 8
            },
            conf_password: {
                required: true,
                minlength :8,
                equalTo: "#password"
            },
            mobilenum: {
                required: true,
                number: true,
                minlength: 10
            },
            addr: {
                required: true,
                minlength: 10
            },
            zip: {
                required: true,
                minlength: 6,
                number: true
            },

        },

        messages: {
            email: {
                email: "*Please enter mail in the format: abc@gmail.com",
            },
            username: {
                required: "*Please enter the username for login",
                number: "*Username should be atleast 5 characters",
            },
            new_pwd1: {
                required: "Please set a password",
                minlength : "Password should contain minimum 8 characters"
            },
            new_pwd2: {
                required : "Please re enter passsword",
                equalTo: "*Password entered and confirm password do no match",
                minlength: "Password should contain minimum 8 characters"
            },
            age: {
                required: "*Please enter your age",
                number: "*Please enter your age as a numerical value",
                min: "*You must be at least 18 years old"
            },
            mobilenum: {
                required: "*Please enter mnobile number",
                number: "*Only digits allowed",
                minlength: "*Mobilenumber should have10 digits"
            },

            addr: {
                required: "*Please enter a valid address",
                minlength: "*Should contain atleast 10 characters"
            },

            zip: {
                required: "*Please enter valid zipcode",
                minlength: "*Should contain 6 characters",
                number: "*Should contain only digits"
            }
        }
    });

  /*  $('#new_cont').click(function () {

        //Variables Used
        var first_name, last_name, emailId, emailId_reg, password, conf_password, zipcode, zipcode_reg, num, num_reg, email_result;

        first_name = $("#firstname").val().trim();
        last_name = $("#lastname").val().trim();
        emailId = $("#email").val().trim();
        emailExp = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

        //Check if all fields are filled.
        if (first_name == "" || last_name == " " || user_name == " " || password == " " || email == " " || new_pwd2 == " " || mobilenum == " " || addr == " " || zip == " ") {
            alert("Please Fill all the fields");
            return false;
        }

    });*/

   
    $("form").submit(function () {
        if ($(this).valid()) {  //<<< I was missing this check
            $("#loading").show();
        }
    });

});


    