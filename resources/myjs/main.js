require("./custom-package.js");
// require("./push.js");
$(document).ready(function () {
  DeleteByID();
  DeleteByClass();
  TostSuccessMessage();
  // removeDuplicatesOrdersVarients();
  removeDuplicatesOrdersVarientsUp();
});

// Deleted Notification for global user
function DeleteByID() {
  $(document).on("click", "#delete", function (e) {
    e.preventDefault();
    let id = $(this).data("id");
    Swal.fire({
      title: "Are you sure?",
      text: "You won't be able to revert this!",
      icon: "warning",
      showCancelButton: true,
      confirmButtonText: "Yes, delete it!",
    }).then(function (result) {
      if (result.value) {
        $("#" + id).submit();
        Swal.fire("Deleted!", "Your data has been deleted.", "success");
      }
    });
  });
}

function DeleteByClass() {
  $(document).on("click", ".delete", function (e) {
    e.preventDefault();
    let id = $(this).data("id");
    Swal.fire({
      title: "Are you sure?",
      text: "You won't be able to revert this!",
      icon: "warning",
      showCancelButton: true,
      confirmButtonText: "Yes, delete it!",
    }).then(function (result) {
      if (result.value) {
        $("#" + id).submit();
        Swal.fire("Deleted!", "Your data has been deleted.", "success");
      }
    });
  });
}

function TostSuccessMessage() {
  // Toast messages
  toastr.options = {
    closeButton: true,
    debug: false,
    newestOnTop: false,
    progressBar: true,
    positionClass: "toast-top-right",
    preventDuplicates: false,
    showDuration: "300",
    hideDuration: "1000",
    timeOut: "3000",
    extendedTimeOut: "1000",
    showEasing: "swing",
    hideEasing: "linear",
    showMethod: "fadeIn",
    hideMethod: "fadeOut",
  };
}

function myDatatable(id, returnData) {
  window["checkedValue"] = [];
  /* initilize the datatble */
  $(`#${id}`).DataTable();
  /* set unique id in input field and tr tag */
  $(`#${id}`).attr("data-myvalue", checkedValue);
  let checkbox = $(`#${id} tbody input[type="checkbox"]`);

  for (let i = 0; i < checkbox.length; i++) {
    let checkedBox = checkbox[i];
    checkedBox.setAttribute("id", `checkedId-${i}`);
    let tr = checkedBox.parentElement.parentElement.parentElement;
    tr.setAttribute("id", i);
  }

  /* Find the checked value */
  $(document).on("change", 'tbody input[type="checkbox"]', function () {
    $(`thead input[type="checkbox"]`).attr("checked", false);
    let checkedOrNot = $(this).is(":checked");
    let value = $(this).data("value");
    if (checkedOrNot == true) {
      checkedValue.push(value);
      // checkedValue = [...new Set(checkedValue)];
    } else {
      checkedValue = checkedValue.filter((item) => item != value);
    }
    return returnData(checkedValue);
  });

  window.selectAllTrueOrFalse = false;

  /* for all selected data */
  $(document).on("change", 'thead input[type="checkbox"]', function () {
    checkedValue = [];
    if (selectAllTrueOrFalse == false) {
      // test
      $(this).attr("checked", true);
      let checkedOrNot = $(this).is(":checked");
      if (checkedOrNot == true) {
        for (let i = 0; i < checkbox.length; i++) {
          let checkBoxes = $(`#checkedId-${i}`);
          let value = checkBoxes.data("value");
          checkBoxes.attr("checked", true);
          checkedValue.push(value);
          checkedValue = [...new Set(checkedValue)];
        }
      } else {
        checkedValue = [];
        for (let i = 0; i < checkbox.length; i++) {
          $(`#checkedId-${i}`).attr("checked", false);
        }
        checkbox = 0;
      }
      // test
      selectAllTrueOrFalse = true;
    } else {
      checkedValue = [];
      selectAllTrueOrFalse = false;
      for (let i = 0; i < checkbox.length; i++) {
        $(`#checkedId-${i}`).attr("checked", false);
      }
      checkbox = 0;
    }
    return returnData(checkedValue);
  });
}

function removeDuplicatesOrdersVarients() {
  axios.get("/api/order/fetch").then((res) => {
    let orders = res.data.data;
    axios
      .post("/api/order/removeDuplicatesOrdersVarients", { orders })
      .then((res) => {
        // console.log(res.data.data);
      });
  });
}
function removeDuplicatesOrdersVarientsUp() {
  axios.get("/api/order/removeDuplicatesOrdersVarientsUp").then((res) => {
    // console.log(res.data.data);
  });
}

window.myDatatable = myDatatable;
