$(document).on('turbolinks:load', function(){
  document.body.addEventListener("click", function(){
    const avatar = $(".avatar img")[0]
    const image = $("#user_avatar_attributes_image")[0].value
    const color = $("#user_avatar_attributes_color")[0].value
    avatar.src = "/assets/avatar/" + image;
    avatar.className = color;
  })
})
