$(document).ready(function () {
    var stt = 0;
    starimg = $("img.slide:first").attr("stt");
    endImg = $("img.slide:last").attr("stt");
    $("img.slide").each(function () {
        if ($(this).is(':visible'))
            stt = $(this).attr("stt");
    });
    $("#next").click(function () {
        if (stt == endImg) {
            stt = -1;
        }
        next = ++stt;
        $("img.slide").hide();
        $("img.slide").eq(next).show();
    })
    $("#prev").click(function () {
        if (stt == 0) {
            stt = endImg;
            prev = stt++;
        }
        prev = --stt;
        $("img.slide").hide();
        $("img.slide").eq(prev).show();
    })
   
   
    setInterval(function () {
        $("#next").click();
    }, 3000);


  
    
});
$(document).ready(function () {

    var stt = 0;
    stardiv = $("div.body:first").attr("stt");
    enddiv = $("div.body:last").attr("stt");
    $("div.body").each(function () {
        if ($(this).is(':visible'))
            stt = $(this).attr("stt");
    });
    $("#vivu").click(function () {
        stt = 0;
        vivu = stt;
        $("div.body").hide();
        $("div.body").eq(vivu).show();
    })
    $("#khampha").click(function () {
        stt = 1;
        amthuc = stt;
        $("div.body").hide();
        $("div.body").eq(amthuc).show();
    })
 
    $("#vuichoi").click(function () {
        stt = 2;
        vuichoi = stt;
        $("div.body").hide();
        $("div.body").eq(vuichoi).show();
    })

});

