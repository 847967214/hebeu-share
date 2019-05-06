
//首页 多栏切换功能
/*$(function () {

    $('#hand-Tabs a').mousemove(function (e) {
        e.preventDefault();
        $(this).tab('show')
    });

    $('#secTxt').focus(function () {
        $(this).width(350);
    });
    $('#secTxt').blur(function () {
        $(this).width(200);
    })
});
*/

//普通方法实现选项卡功能
/*
var oparent=null ;
var ainput=null ;
var aDiv=null ;

window.onload = function () {
     oparent = document.getElementById("div1");
     ainput = oparent.getElementsByTagName("input");
     aDiv = oparent.getElementsByTagName("div");
     init();

};

    function init() {
        for (var i = 0; i < ainput.length; i++) {
            ainput[i].index = i;
            ainput[i].onclick = change;
        }
    }

    function change() {
        for (var i = 0; i < ainput.length; i++)
        {
            ainput[i].className = "";
            aDiv[i].style.display='none';
        }
        this.className = "active";
        aDiv[this.index].style.display='block';

    }
*/

/*
//面向对象实现选项卡
window.onload = function () {
    var t1 = new Tab("head-Tabs");
    t1.init();
};
*/
//构造函数
function Tab(id) {
    this.oparent = document.getElementById(id);
    this.button = this.oparent.getElementsByTagName("button");
    this.aDiv = this.oparent.getElementsByClassName("sel_div");
    this.isNow = 1;
}
//初始化，加入切换标签的事件
Tab.prototype.init = function () {
    var This = this;
    for (var i = 0; i < this.button.length; i++) {
        this.button[i].index = i;
        this.button[i].onclick = function () {
            This.change(this);
        }
    }
};
//切换标签的方法
Tab.prototype.change = function (obj) {
    for (var i = 0; i < this.button.length; i++) {
        this.button[i].style.background = "white";
        this.aDiv[i].style.display = 'none';
    }
    obj.style.background = "#ffcc63";
    this.aDiv[obj.index].style.display = 'block';
};
//定时轮播方法
Tab.prototype.autoplay = function () {
    var This = this;
    setInterval(function () {

        if (This.isNow > This.button.length) This.isNow = 1;

        for (var i = 0; i < This.button.length; i++) {
            This.button[i].className = "";
            This.aDiv[i].style.display = 'none';
        }
        This.button[This.isNow - 1].className = "active";
        This.aDiv[This.isNow - 1].style.display = 'block';
        //console.log(This.isNow)
        This.isNow++;

    }, 1000)
};



//遮罩
function alert_show() {
    var cover=document.getElementById("cover");
    var alert=document.getElementById("alert");
    cover.style.height= document.body.scrollHeight+"px";
    cover.className="floats";
    alert.className="alert";
}

function alert_hide() {
    var cover=document.getElementById("cover");
    var alert=document.getElementById("alert");
    cover.className="hide";
    alert.className="hide";
}



