"use strict";

// Class definition
var KTWizard5 = (function () {
    // Base elements
    var _wizardEl;
    var _formEl;
    var _wizardObj;
    var _validations = [];

    // Private functions
    var _initWizard = function () {
        // Initialize form wizard
        _wizardObj = new KTWizard(_wizardEl, {
            startStep: 1, // initial active step number
            clickableSteps: false, // allow step clicking
        });

        // Validation before going to next page
        _wizardObj.on("change", function (wizard) {
            if (wizard.getStep() > wizard.getNewStep()) {
                return; // Skip if stepped back
            }

            // Validate form before change wizard step
            var validator = _validations[wizard.getStep() - 1]; // get validator for currnt step

            if (validator) {
                validator.validate().then(function (status) {
                    if (status == "Valid") {
                        wizard.goTo(wizard.getNewStep());

                        KTUtil.scrollTop();
                    } else {
                        Swal.fire({
                            text: "Sorry, You must need to select a valid Customer.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn font-weight-bold btn-light",
                            },
                        }).then(function () {
                            KTUtil.scrollTop();
                        });
                    }
                });
            }

            return false; // Do not change wizard step, further action will be handled by he validator
        });

        // Change event
        _wizardObj.on("changed", function (wizard) {
            KTUtil.scrollTop();
        });
    };

    var _initValidation = function () {
        // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
        // Step 1
        _validations.push(
            FormValidation.formValidation(_formEl, {
                fields: {
                    customerName: {
                        validators: {
                            notEmpty: {
                                message: "Customer Name is required",
                            },
                        },
                    },
                    customerType: {
                        validators: {
                            notEmpty: {
                                message: "Customer Type is required",
                            },
                        },
                    },
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    // Bootstrap Framework Integration
                    bootstrap: new FormValidation.plugins.Bootstrap({
                        //eleInvalidClass: '',
                        eleValidClass: "",
                    }),
                },
            })
        );

        // Step 2
        _validations.push(
            FormValidation.formValidation(_formEl, {
                fields: {
                    country: {
                        validators: {
                            notEmpty: {
                                message: "Country is required",
                            },
                        },
                    },
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    // Bootstrap Framework Integration
                    bootstrap: new FormValidation.plugins.Bootstrap({
                        //eleInvalidClass: '',
                        eleValidClass: "",
                    }),
                },
            })
        );
    };

    return {
        // public functions
        init: function () {
            _wizardEl = KTUtil.getById("kt_wizard");
            _formEl = KTUtil.getById("kt_form");

            _initWizard();
            _initValidation();
        },
    };
})();

jQuery(document).ready(function () {
    KTWizard5.init();
});