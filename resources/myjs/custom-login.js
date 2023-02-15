$(document).ready(function () {
  customValidation();
  resendOTP();
});

/* Validation functions */
function customValidation() {
  $(document).on("input", "#phone", function () {
    let phn = $('input[name="phone"]').val();
    if (phn.match("(?:\\+88|88)?(01[3-9]\\d{8})")) {
      let otp = $('input[name="otp"]');

      axios.post("/user/phone", { phone: phn }).then((res) => {
        if (res.data.status == true) {
          /* after sending otp */
          $(this).attr("id", "");
          $(this).attr("readonly", true);
          Swal.fire("Send!", "Please check your phone!", "success");
          autoFetchLoginOtpByNumber(phn);
        } else {
          Swal.fire({
            text: res.data.errors,
            icon: "error",
            buttonsStyling: false,
            confirmButtonText: "Okay!",
            customClass: {
              confirmButton: "btn btn-primary",
            },
          });
        }
      });
    }
  });
}

/* Auto Set otp which user is valid*/
function autoFetchLoginOtpByNumber(phn) {
  axios.post(`/user/auto-set-otp/getByPhn`, { phn }).then(function (response) {
    let otp = response.data.data.otp;
    // $('input[name="otp"]').val(otp);
  });
}

/* resend otp function */
function resendOTP() {
  $(document).on("click", "#resentBtn", function () {
    let phn = $("input[name='phone']").val();

    let timer = 60;
    if (phn.match("(01[3-9]\\d{8})")) {
      let phn = $("input[name='phone']").val();

      axios.post("/user/resent-otp", { phn }).then((res) => {
        if (res.data.status == true) {
          Swal.fire({
            position: "top-right",
            icon: "success",
            title: res.data.message,
            showConfirmButton: false,
            timer: 3000,
          });
          let time = setInterval(() => {
            $(".resentBtn")
              .attr("id", "")
              .html(
                `<span class="text-success"> Please wait <span class="badge badge-danger">${--timer}</span> sec. </span>`
              );

            if (timer <= 0) {
              clearInterval(time);
              $(".resentBtn").attr("id", "resentBtn").html("Resend OTP ?");
            }
          }, 1000);
        } else {
          Swal.fire({
            position: "top-right",
            icon: "error",
            title: res.data.errors,
            showConfirmButton: false,
            timer: 3000,
          });
        }
      });
    }
  });
}
