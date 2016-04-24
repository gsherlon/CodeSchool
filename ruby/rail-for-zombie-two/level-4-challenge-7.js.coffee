$(document).ready ->
  $('#displayWeaponForm').click (event) ->
    event.preventDefault()
    $('#newWeapon').show()
    $(this).hide()
    
