
// Start ============================================== Login Page Validation ================================//
$("#formLogin").validate({
    rules: {
        txtEmail: {
            required: true,
            email: true
        },
        txtPassword: {
            required: true
        },
    },
    messages: {
        txtEmail: {
            required: "Email address is required !",
            email: "Please enter vaild email address"
        },
        txtPassword: {
            required: "Password is required !"
        },
    },
    errorElement: 'div',
    errorPlacement: function (error, element) {
        var placement = $(element).data('error');
        if (placement) {
            $(placement).append(error)
        } else {
            error.insertAfter(element);
        }
    }
});

// End ============================================== Login Page Validation ================================//



// Start ============================================== Register Page Validation ================================//
$("#formRegister").validate({
    rules: {
        txtFirstName: {
            required: true
        },
        txtLastName: {
            required: true
        },
        txtPassword: {
            required: true
        },
        txtConfirmPassword: {
            required: true,
            equalTo: "#txtPassword"
        },
        txtEmail: {
            required: true,
            email: true
        }

    },
    messages: {
        txtEmail: {
            required: "Email address is required !",
            email: "Please enter vaild email address"
        },
        txtFirstName: {
            required: "First Name is required !"
        },
        txtLastName: {
            required: "Last Name is required !"
        },
        txtPassword: {
            required: "Password is required !"
        },
        txtConfirmPassword: {
            required: "Confirm Password is required !",
            equalTo: "Password and Confirm Password is not same !"
        }
    },
    errorElement: 'div',
    errorPlacement: function (error, element) {
        var placement = $(element).data('error');
        if (placement) {
            $(placement).append(error)
        } else {
            error.insertAfter(element);
        }
    }
});

// End ============================================== Register Page Validation ================================//




// Start ============================================== Edit User Page Validation ================================//
$("#form1").validate({
    rules: {
        ctl00$ContentArea$txtFirstName: {
            required: true
        },
        ctl00$ContentArea$txtLastName: {
            required: true
        },
        ctl00$ContentArea$txtPassword: {
            required: true
        },
        ctl00$ContentArea$txtEmail: {
            required: true,
            email: true
        }

    },
    messages: {
        ctl00$ContentArea$txtEmail: {
            required: "Email address is required !",
            email: "Please enter vaild email address"
        },
        ctl00$ContentArea$txtFirstName: {
            required: "First Name is required !"
        },
        ctl00$ContentArea$txtLastName: {
            required: "Last Name is required !"
        },
        ctl00$ContentArea$txtPassword: {
            required: "Password is required !"
        }
    },
    errorElement: 'div',
    errorPlacement: function (error, element) {
        var placement = $(element).data('error');
        if (placement) {
            $(placement).append(error)
        } else {
            error.insertAfter(element);
        }
    }
});

// End ============================================== Edit User Page Validation ================================//

