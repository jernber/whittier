$(document).ready(function () {
  // Or use this to Open link in same window (similar to target=_blank)
  $(".box1").click(function(){
      window.location = $(this).find("a:first").attr("href");
      return false;
  });


});