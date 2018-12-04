const ap = new APlayer({
    container: document.getElementById('aplayer'),
    audio: [{
        name: 'Lil\' Goldfish',
        artist: 'まりか',
        url: 'aplayer/music.mp3',
        cover: 'http://p1.music.126.net/KjtVVY8u1uRXbbZ7KjgOsw==/18554258720604958.jpg'
    }]
});
var a_idx = 0;
jQuery(document).ready(function($) {
    $("body").click(function(e) {
        var a = new Array("共产主义", "肥宅", "永远喜欢Java","千万调音师","心态炸了啊","心里没点X数","回家收衣服啦");
        var $i = $("<span/>").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
        var x = e.pageX,
            y = e.pageY;
        $i.css({
            "z-index": 99999999999999999999999999999999999999999,
            "top": y - 20,
            "left": x,
            "position": "absolute",
            "font-weight": "bold",
            "color": "rgb(72,85,137)"
        });
        $("body").append($i);
        $i.animate({
                "top": y - 180,
                "opacity": 0
            },
            1500,
            function() {
                $i.remove();
            });
    });
});
