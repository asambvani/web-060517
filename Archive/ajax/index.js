let avatars = []
let first_names = []
let last_names = []
let count = 0 ;

$(document).ready(function(){
 for(let pageNum=1;pageNum<=12;pageNum++){
    $.ajax({
      url: `https://reqres.in/api/users?page=${pageNum}`,
      method: 'GET',
      success: function(usersData){
          for(let userNum=0; userNum<=0; userNum++){
            $.ajax({
            url: `https://reqres.in/api/users/${usersData.data[userNum].id}`,
            method: 'GET',
            success: function(userData){
              // first_names.push(usersData[userNum].data.first_name)
              // last_names.push(usersData[userNum].data.last_name)
              // avatars.push(usersData[userNum].data.avatar)
              // $('body').append(`<div>${usersData[userNum].data.first_name} ${usersData[userNum].data.last_name}</div><img src=${usersData[userNum].data.avatar}><img>`)
            }})
          }
      }
    })
  }
})
