const mix = require("laravel-mix");
/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

// Default
mix.sass("resources/css/app.scss", "public/css/custom.css");
mix
  .js("resources/vuejs/app.js", "public/vuejs")
  .vue({ version: 3 })
  .js("resources/myjs/main.js", "public/myjs/main.js")
  .js("resources/myjs/push.js", "public/myjs/push.js")
  .js("resources/myjs/custom-login.js", "public/myjs/custom-login.js")
  .js("resources/myjs/product/tagify.js", "public/myjs/product/tagify.js")
  .js("resources/myjs/product/edit.js", "public/myjs/product/edit.js")
  .js("resources/myjs/wizard-5.js", "public/myjs/wizard-5.js")
  .js("resources/myjs/truck/editTruck.js", "public/myjs/truck/editTruck.js")
  .js(
    "resources/myjs/settings/task/scheduling.js",
    "public/myjs/settings/task/scheduling.js"
  )
  .js(
    "resources/myjs/account/createDeposit.js",
    "public/myjs/account/createDeposit.js"
  )
  .js(
    "resources/myjs/account/editDeposit.js",
    "public/myjs/account/editDeposit.js"
  )
  .js(
    "resources/myjs/account/editPayorder.js",
    "public/myjs/account/editPayorder.js"
  )
  .js(
    "resources/myjs/account/editWithdraw.js",
    "public/myjs/account/editWithdraw.js"
  )
  .js(
    "resources/myjs/packaging/create-packet.js",
    "public/myjs/packaging/create-packet.js"
  )
  .js(
    "resources/myjs/customer/customer-create.js",
    "public/myjs/customer/customer-create.js"
  )
  .js(
    "resources/myjs/customer/customer-payment.js",
    "public/myjs/customer/customer-payment.js"
  )
  .js(
    "resources/myjs/customer/customer-previous-payment.js",
    "public/myjs/customer/customer-previous-payment.js"
  )
  .js(
    "resources/myjs/customer/customer-type.js",
    "public/myjs/customer/customer-type.js"
  )
  .js(
    "resources/myjs/customer/customer-type-manual.js",
    "public/myjs/customer/customer-type-manual.js"
  )
  .js("resources/myjs/customer/calender.js", "public/myjs/customer/calender.js")
  .js("resources/myjs/farmer/create.js", "public/myjs/farmer/create.js")
  .js(
    "resources/myjs/pendingToDeliveryConfrimed/pendingToDeliveryConfrimed.js",
    "public/myjs/pendingToDeliveryConfrimed/pendingToDeliveryConfrimed.js"
  )
  .js(
    "resources/myjs/truck/createReportTruckList.js",
    "public/myjs/truck/createReportTruckList.js"
  )
  .js(
    "resources/myjs/user/otpValidation.js",
    "public/myjs/user/otpValidation.js"
  )
  .js(
    "resources/myjs/customer/customer-selected.js",
    "public/myjs/customer/customer-selected.js"
  )
  .js(
    "resources/myjs/api_customer/customer_all_actions.js",
    "public/myjs/api_customer/customer_all_actions.js"
  )
  .js(
    "resources/myjs/customer-payment/create.js",
    "public/myjs/customer-payment/create.js"
  )
  .js(
    "resources/myjs/customer-payment/transaction.js",
    "public/myjs/customer-payment/transaction.js"
  )
  .js(
    "resources/myjs/unit_and_purchase/sumOfUnitAndPurchases.js",
    "public/myjs/unit_and_purchase/sumOfUnitAndPurchases.js"
  )
  .js(
    "resources/myjs/unit_and_sale/sumOfUnitAndSale.js",
    "public/myjs/unit_and_sale/sumOfUnitAndSale.js"
  )
  .js(
    "resources/myjs/delivery-invoice/todayAddNewItem.js",
    "public/myjs/delivery-invoice/todayAddNewItem.js"
  )
  .js(
    "resources/myjs/delivery-invoice/previousAddNewItem.js",
    "public/myjs/delivery-invoice/previousAddNewItem.js"
  )
  .js(
    "resources/myjs/supply/supply__base.js",
    "public/myjs/supply/supply__base.js"
  )
  .version();
