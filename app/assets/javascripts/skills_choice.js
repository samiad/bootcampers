$(document).ready(function() {
  $(".skills-choice").click(function(){
    console.log('bonjour');
  });
});

$(document).ready(function() {
  $(".skills-choiceHTML").click(function(){
    $(this).toggleClass("active");
  });
});

$(document).ready(function() {
  $(".skills-choiceRAILS").click(function(){
    $(this).toggleClass("active");
  });
});
