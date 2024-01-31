var crsr = document.querySelector(".cursor")
var main = document.querySelector(".main")

main.addEventListener("mousemove",function(dets){
    crsr.style.left=dets.x+"px"
    crsr.style.top=dets.y+"px"
})