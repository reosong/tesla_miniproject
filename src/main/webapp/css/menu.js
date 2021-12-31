

document.addEventListener("DOMContentLoaded", function () { 
        
    document .querySelector("#menuBtn") 
    .addEventListener("click", function (e) { 

    if (document.querySelector(".menuWrap").classList.contains("on")) {

         //메뉴 slide 

    document.querySelector(".menuWrap").classList.remove("on");
    document.getElementById("menuBtn").src = "./menuBtn.png"; 
    document.querySelector("#menuBtn").classList.remove("btnRotate");
    document.querySelector("#dimmed").remove(); 

    }
    
    else {

        //메뉴 slideIn
        document.querySelector(".menuWrap").classList.add("on"); 
        document.getElementById("menuBtn").src = "./cross.png"; 
        document.querySelector("#menuBtn").classList.add("btnRotate"); 

        let div = document.createElement("div"); 
        div.id = "dimmed";
        document.body.append(div);



        //페이지 스크롤 락 모바일 이벤트 차단
        document .querySelector("#dimmed") 
        .addEventListener( "scroll touchmove touchend mousewheel", 
        function (e) { e.preventDefault(); e.stopPropagation(); return false; } );
         } 
         
    });
         
}); 