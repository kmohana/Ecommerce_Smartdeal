$(document).ready(function () {

    $('#show_password').hover(function show() {
        //Change the attribute to text  
        $('#Login_Password').attr('type', 'text');
        $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
    },
        function () {
            //Change the attribute back to password  
            $('#Login_Password').attr('type', 'password');
            $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
        });
    //CheckBox Show Password  
    $('#ShowPassword').click(function () {
        $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
    });
});s