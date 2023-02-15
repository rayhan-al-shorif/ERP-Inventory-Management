// import Echo from "laravel-echo";
// import Larasocket from "larasocket-js";

// window.echo = new Echo({
//   broadcaster: Larasocket,
//   token: process.env.MIX_LARASOCKET_TOKEN,
//   debug: false,
// });

// notificationList();
// echo.join("channel-admin").listen(".order.created", (e) => {
//   toastr.success(e.message);
//   notificationList();
// });

// $(document).on("click", ".clearAllBtn", function (e) {
//   axios.get("/api-getters/clear-all-unreadnotifications").then((res) => {
//     toastr.success("All notifications cleared");
//     notificationList();
//   });
// });

// function notificationList() {
//   axios.get("/api-getters/all-unreadnotifications").then((res) => {
//     $(".notification_count").text(res.data.data);
//     $("#clearBTN").text(res.data.data);
//   });
//   axios.get("/api-getters/auth-user-unreadnotifications").then((res) => {
//     let notifications = res.data.data;
//     $("#notifications").html(
//       notifications.map((notification) => {
//         return `<a href="/api-getters/read-unreadnotification/${
//           notification.id
//         }" class="navi-item">
//                 <div class="navi-link">
//                     <div class="navi-icon mr-2">
//                         <i class="flaticon2-line-chart text-success"></i>
//                     </div>
//                     <div class="navi-text">
//                         <div class="font-weight-bold">
//                             ${notification.data["message"]}
//                         </div>
//                         <div class="text-muted">
//                             ${moment(notification.created_at).format(
//                               "MMMM Do YYYY, h:mm:ss a"
//                             )}
//                         </div>
//                     </div>
//                 </div>
//             </a>`;
//       })
//     );
//   });
// }
