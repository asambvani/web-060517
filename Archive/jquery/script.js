
$(document).ready(function() {
  //
  // var pArray = Array.prototype.slice.call($('p'));
  //
  // pArray.forEach((p)=>{
  //   $(p).on('click',()=>{
  //     toggle(p);
  //   })
  // })

  $('p').on('click',function(){
    console.log(this)
  })

})

// function toggle(p){
//   const messages = ["Hola", "Hello"]
//   $(p)[0].innerHTML = (($(p)[0].innerHTML === messages[0]) ? messages[1] : messages[0]);
// }
