$(function () {
  $(".notification-close").on("click", function () {
    $(this).closest(".notification").hide();
  });
});
