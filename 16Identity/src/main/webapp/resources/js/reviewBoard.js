window.onload = function(){

   $(".loader-wrapper").fadeOut(1000);
   $('#mypage').on('click', function(){
      $('#mypageMenu').toggle();
   })
   $('#subscribe').on('click', function(){
      $('#subMenu').toggle();
   })
   $(".info").on("click", function(){
       console.log("click")
       $(".overlay").addClass("on");
       $(".modal").addClass("on");
   })
   $(".btn_submit").on("click", function(){
      $('#passchk').submit();
       
   })
   $(".btn_cancel").on("click", function(){
      $(".overlay").removeClass("on");
       $(".modal").removeClass("on");
       
   })
    /*header js 부분*/
    const mypageMenu = document.querySelector("#mypageMenu");
    const mypageMenuList = mypageMenu.children;
    for(var i=0; i<mypageMenuList.length; i++){
        mypageMenuList[i].addEventListener("mouseover", menulist_over);
        mypageMenuList[i].addEventListener("mouseout", menulist_out);
    }
    const subMenu = document.querySelector("#subMenu");
    const subMenuList = subMenu.children;
   subMenuList[0].addEventListener("mouseover", menulist_over);
   subMenuList[0].addEventListener("mouseout", menulist_out);
    
    /*search js 부분*/
    $(".dropdown").click(function(){
        if($(".dropdown ul").hasClass('active')){
            closeDrop();
        } else {
            onenDrop();
        }
    });

    $(".dropdown ul li").click(function(){
        onenDrop();
        var text = $(this).text();
        $(".default_option").text(text);
    });
    
    
    let searchWord;

    let sort = 'accuracy';
    let page=1;
    var count = 0;
    var category;
    $('#autoComplete_box').hide();
    /*input 검색했을 때*/
    /*Enter 칠 경우*/
    var text;
    var focus = -1;
    $('#searchBook').keyup(function(e){
       $('.auto_result').removeClass('auto_result_focus'); 
       if(e.keyCode == 8) focus=-1;   //backSpace 누를 경우 
       if($('#searchBook').val().length>=2){//2글자 이상 입력했을 경우
          if(e.keyCode == 13) {//엔터 입력
              if($('#searchBook').val() != ''){	//입력창에 입력 된 값이 있을 경우
                 category = $(".default_option").text();	//검색 카테고리 가져오기
                 searchWord = $('#searchBook').val();
                 $('#searchWord').val(searchWord);
                 $('#category').val(category);
                 $('#searchForm').submit();
              } 
          }else if(e.keyCode != 40 && e.keyCode != 38){ //엔터, 위, 아래 제외 다른 키 누른 경우
             searchAuto($('#searchBook').val(), categoryFunc($(".default_option").text()));//searchAuto 함수 호출
              $('#autoComplete_box').show();//자동완성창 켜짐
          } else {	//위(40), 아래(38) 키 누른 경우
             if(focus == -1 && e.keyCode == 40){
                text = $('#autoComplete_box').children().eq(0).text();
                $('#searchBook').val(text);
                focus = 0;
             }else if(focus >= 0 && focus <= 3){
                if(e.keyCode == 40) 
                   ++focus;//키보드 아래 방향 키 눌렀을 경우
                if(e.keyCode == 38) 
                   --focus;//키보드 윗 방향 키 눌렀을 경우
             } else if(focus == -1){
                if(e.keyCode == 40) 
                   focus = 0;
                if(e.keyCode == 38) 
                   focus = -1;
             } else if(focus == 4){
                if(e.keyCode == 40) 
                   focus = 4;
                if(e.keyCode == 38) 
                   focus = 3;
             }
             $('.auto_result').eq(focus).addClass('auto_result_focus');	//포커스 된 부분 회색 바탕 css
             console.log('focus:'+focus);
             text = $('#autoComplete_box').children().eq(focus).text();	//자동완성창에서 포커스 된 값 가져오기
             $('#searchBook').val(text);	//검색창에 위의 값 삽입
             var addr_isbn
             if(focus>-1){
            	 $('#autoComplete_box').find('img').prop("src", $('.auto_result_focus').find('.thumImg').val());
            	 addr_isbn= 'reviewpost.minji?isbn='+$('.auto_result_focus').find('.isbnNo').val();   //디테일 페이지 링크
             }else {
            	 $('#autoComplete_box').find('img').prop("src", $('.auto_result').eq(0).find('.thumImg').val());
            	 addr_isbn = 'reviewpost.minji?isbn='+$('.auto_result').eq(0).find('.isbnNo').val();   //디테일 페이지 링크
             }
             $('#autoComplete_box').find('a').prop("href", addr_isbn);
          }
       }else{
          $('#autoComplete_box').hide();
          $('#autoComplete_box').empty();
       }
       
       
    });
    function categoryFunc(cate){
        switch(cate) {
           case "전체": 
              return ""; break;
           case "도서명": 
              return "?target=title"; break;
           case "저자": 
              return "?target=person"; break;
           case "ISBN": 
              return "?target=isbn"; break;
        }
     }
      /*click 할 경우*/    
    $('.fa-search').on('click',function(){
       if($('#searchBook').val() != ''){
    	   category = $(".default_option").text();	//검색 카테고리 가져오기
           searchWord = $('#searchBook').val();
           $('#searchWord').val(searchWord);
           $('#category').val(category);
           $('#searchForm').submit();
      } 
    });  

    /*자동 완성 검색창 부분*/
    function searchAuto(autoQuery, input_cate){
       var urlAddress ="https://dapi.kakao.com/v3/search/book"+input_cate;
       $.ajax({
          method: "GET",
          url : urlAddress,
          data : {
             query : autoQuery,
             size : 5,
             page : 1
          },
          headers: {Authorization: "KakaoAK 49748a98d393f2ca2642a0b78bc9b99f"},
          success : function(result){ 
             autoOutput = '';
             if(result.meta.total_count>0){
                $('#autoComplete_box').empty();
                $(result).each(function(){
                   for(var i=0; i<result.documents.length; i++){
                      var original_title = result.documents[i].title;
                      var shortTitle = result.documents[i].title.slice(0,30)+'...';
                      var isbn13 = result.documents[i].isbn;
                      var isbn0 = result.documents[0].isbn;
                     /* if(original_title.length<30){ //글자수 제한*/
                         autoOutput += `<div class="auto_result"><a href="reviewpost.minji?isbn=${isbn13}">${original_title}</a>`;
                      /*}else{
                         autoOutput += `<div class="auto_result"><a href="reviewpost.minji?isbn=${isbn13}">${shortTitle}</a>`;
                      }*/
                      autoOutput += `<input type="hidden" class="thumImg" value='${result.documents[i].thumbnail}'>`;
                      autoOutput += `<input type="hidden" class="isbnNo" value='${isbn13}'>`;
                      autoOutput += `</div>`;
                   }
                   autoOutput += `<a href="reviewpost.minji?isbn=${result.documents[0].isbn}"><img src="${result.documents[0].thumbnail}"></a>`;
                   $('#autoComplete_box').append(autoOutput);
                   
                })
             } else {
                $('#autoComplete_box').empty();
                
             }
          }
       })
    }
    
    $(document).on('mouseover','.auto_result',function(){   //마우스 오버할 때 이벤트
       $('.auto_result').removeClass('auto_result_focus'); //포커스 클래스 없애기
       $('#autoComplete_box').find('img').prop("src", $(this).find('.thumImg').val());
       var address_isbn = 'reviewpost.minji?isbn='+$(this).find('.isbnNo').val();   //디테일 페이지 링크
       $('#autoComplete_box').find('a').prop("href", address_isbn);
    });
}
/*header js 부분*/
function menulist_over(){
    this.children[0].style.visibility = "visible";
}

function menulist_out(){
    this.children[0].style.visibility = "hidden";
}

function closeDrop(){
   $(".dropdown > ul").removeClass("active");
}

function onenDrop(){
   $(".dropdown > ul").addClass("active");
} 