/*!
 * jQuery RadiantScroller
 * Version: 0.0.3 (07/01/2014)
 * Copyright (c) 2013 Ilya Bodrov (http://www.radiant-wind.com/plugins/radiant_scroller)
 *
 * Requires: jQuery 1.7.0+
 */
(function(e){
    e.radiantScroller=function(t,n){
        var r=e(t);
        r.vars=e.extend({},e.radiantScroller.defaults,n);
        r.data("radiantscroller",r);
        r.animating=false;
        var i=r.find(".scroller-el"),s=i.size(),o=r.vars.elementWidth+r.vars.elementMargin,u=Math.ceil(s/r.vars.rows);
        r.width(o*u-r.vars.elementMargin);
        do e(i.slice(0,u)).wrapAll('<div class="radiant_scroller_row" />');while((i=i.slice(u)).length>0);
        r.wrap('<div class="radiant_scroller"></div>').wrap('<div class="radiant_scroller_wrapper" />');
        var a=r.parent(".radiant_scroller_wrapper");
        var f=a.parent(".radiant_scroller");
        var l=r.vars.cols*o-r.vars.elementMargin+"px";
        a.css("max-width",l);
        f.css("max-width",l);
        var c=e('<div class="radiant-navigation" />').insertAfter(a);
        var h=c.append(e('<div class="radiant-prev">'+r.vars.prevButtonText+"</div>"));
        var p=c.append(e('<div class="radiant-next">'+r.vars.nextButtonText+"</div>"));
        r.calculateVisibleElements=function(){
            r.visible_els=Math.floor((a.width()+r.vars.elementMargin)/o)
            };
            
        r.moveElements=function(e){
            if(!r.animating){
                if(typeof e==="undefined")e=1;
                var t=r.current_page+e;
                if(t>=0&&t<r.total_pages&&t!==r.current_page){
                    r.animating=true;
                    a.animate({
                        scrollLeft:a.scrollLeft()+r.visible_els*o*e
                        },r.vars.animateDuration,r.vars.easingType,function(){
                        r.animating=false
                        });
                    r.current_page=t;
                    if(r.vars.addPagination)r.assignActivePage(true)
                        }
                    }
        };
    
r.initializePagination=function(){
    if(typeof r.old_visible_els==="undefined"||r.old_visible_els!==r.visible_els){
        r.old_visible_els=r.visible_els;
        r.total_pages=Math.ceil(u/r.visible_els);
        if(typeof r.current_page==="undefined"){
            r.current_page=0
            }else{
            r.current_page=Math.ceil(a.scrollLeft()/(r.visible_els*o))
            }
            if(r.vars.addPagination)r.drawPagination()
            }
        };

r.drawPagination=function(){
    if(f.find(".radiant-pagination").size()>0)f.find(".radiant-pagination").remove();
    var t=e('<div class="radiant-pagination" />').insertAfter(a);
    for(var n=0;n<r.total_pages;n++){
        t.append('<div class="radiant-page" data-page="'+n+'" />')
        }
        r.assignActivePage()
    };
    
r.assignActivePage=function(t){
    if(t===true)f.find(".current-page").removeClass("current-page");
    e(f.find(".radiant-page").get(r.current_page)).addClass("current-page")
    };
    
e(window).bindWithDelay("resize",function(){
    r.calculateVisibleElements();
    r.initializePagination()
    },500,true);
c.on("click",".radiant-next",function(){
    r.moveElements(1)
    });
c.on("click",".radiant-prev",function(){
    r.moveElements(-1)
    });
if(r.vars.useMouseWheel){
    a.on("mousewheel",function(e){
        e.preventDefault();
        r.moveElements(e.deltaY)
        })
    }
    f.on("click",".radiant-page",function(){
    var t=e(this).data("page");
    if(r.current_page!==t){
        var n=r.current_page;
        r.moveElements(t-n)
        }
    });
r.calculateVisibleElements();
r.initializePagination()
};

e.radiantScroller.defaults={
    cols:2,
    elementWidth:200,
    elementMargin:10,
    easingType:"swing",
    animateDuration:700,
    rows:2,
    useMouseWheel:false,
    addPagination:false,
    nextButtonText:"",
    prevButtonText:""
};

e.fn.radiantScroller=function(t,n){
    if(t===undefined)t={};
        
    if(typeof t==="object"){
        new e.radiantScroller(this,t)
        }else{
        var r=e(this).data("radiantscroller");
        switch(t){
            case"next":
                r.moveElements(1);
                break;
            case"prev":
                r.moveElements(-1);
                break;
            case"by":
                if(typeof n==="number")r.moveElements(n);
                break;
            default:
                if(typeof t==="number")r.moveElements(t-1-r.current_page)
                }
            }
    return this
}
})(jQuery);
(function(e){
    e.fn.bindWithDelay=function(t,n,r,i,s){
        if(e.isFunction(n)){
            s=i;
            i=r;
            r=n;
            n=undefined
            }
            r.guid=r.guid||e.guid&&e.guid++;
        return this.each(function(){
            function u(){
                var t=e.extend(true,{},arguments[0]);
                var n=this;
                var u=function(){
                    o=null;
                    r.apply(n,[t])
                    };
                    
                if(!s){
                    clearTimeout(o);
                    o=null
                    }
                    if(!o){
                    o=setTimeout(u,i)
                    }
                }
            var o=null;
        u.guid=r.guid;
        e(this).bind(t,n,u)
            })
    }
})(jQuery)