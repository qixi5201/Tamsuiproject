!function(e){function n(n){for(var a,c,l=n[0],i=n[1],u=n[2],f=0,m=[];f<l.length;f++)c=l[f],Object.prototype.hasOwnProperty.call(r,c)&&r[c]&&m.push(r[c][0]),r[c]=0;for(a in i)Object.prototype.hasOwnProperty.call(i,a)&&(e[a]=i[a]);for(s&&s(n);m.length;)m.shift()();return o.push.apply(o,u||[]),t()}function t(){for(var e,n=0;n<o.length;n++){for(var t=o[n],a=!0,l=1;l<t.length;l++){var i=t[l];0!==r[i]&&(a=!1)}a&&(o.splice(n--,1),e=c(c.s=t[0]))}return e}var a={},r={5:0},o=[];function c(n){if(a[n])return a[n].exports;var t=a[n]={i:n,l:!1,exports:{}};return e[n].call(t.exports,t,t.exports,c),t.l=!0,t.exports}c.m=e,c.c=a,c.d=function(e,n,t){c.o(e,n)||Object.defineProperty(e,n,{enumerable:!0,get:t})},c.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},c.t=function(e,n){if(1&n&&(e=c(e)),8&n)return e;if(4&n&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(c.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&n&&"string"!=typeof e)for(var a in e)c.d(t,a,function(n){return e[n]}.bind(null,a));return t},c.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return c.d(n,"a",n),n},c.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},c.p="/dist/";var l=window.webpackJsonp=window.webpackJsonp||[],i=l.push.bind(l);l.push=n,l=l.slice();for(var u=0;u<l.length;u++)n(l[u]);var s=i;o.push([12,0]),t()}({12:function(e,n,t){"use strict";t.r(n);var a=t(1),r=t(5),o=t(2),c=t(3);var l={multi_bar_chart:function(e){document.querySelector("#".concat(e)).innerHTML="";var n=10,t=35,l=20,i=45,u=document.querySelector("#".concat(e)).clientWidth,s=a.j().range([0,u-i-t]),f=a.j().range([0,53]).padding(.05),m=a.k().range([350,0]),d=0,v=[];o.d.forEach((function(e){e.series.forEach((function(e){v.push(e.name)}))}));var p=v.map((function(e){return{name:e,series:o.d.map((function(n,t){return{name:n.name,label:e,value:n.series[t].value}}))}}));p.map((function(e){return e.series.map((function(e){return e.value}))})).forEach((function(e){var n=a.g(e);d=d>n?d:n}));var b=Object(c.b)(d);s.domain(p.map((function(e){return e.name}))),f.domain(p[0].series.map((function(e){return e.name}))),m.domain([0,b]);var h=a.m(document.querySelector("#".concat(e))).append("svg").attr("width",u).attr("height",350+n+l).append("g").attr("transform","translate(".concat(i,", ").concat(n,")")),g=r.a.setTooltip("multi_bar");h.call(g),h.selectAll(".slice").data(p).enter().append("g").attr("class","g").attr("transform",(function(e){return"translate(".concat(s(e.name),", 0)")})).selectAll("rect").data((function(e){return e.series})).enter().append("rect").attr("x",(function(e){return f(e.name)})).attr("width",24).attr("y",(function(e){return m(e.value)})).attr("height",(function(e){return 350-m(e.value)})).attr("fill",(function(e){return c.a[e.name].color})).attr("transform","translate(".concat(s.bandwidth()/2-24-2,", 0)")).on("mouseover",g.show).on("mouseout",g.hide),h.append("g").attr("transform","translate(0, ".concat(350,")")).attr("class","xaxis").call(a.b(s).tickSizeOuter(0)),h.append("g").attr("class","yaxis").call(a.c(m).ticks(5))}};window.onload=function(){l.multi_bar_chart("root")}},2:function(e,n,t){"use strict";t.d(n,"a",(function(){return a})),t.d(n,"d",(function(){return r})),t.d(n,"c",(function(){return o})),t.d(n,"e",(function(){return c})),t.d(n,"b",(function(){return l}));var a=[{name:"Google",value:30},{name:"Facebook",value:20}],r=[{name:"Google",series:[{name:"女性",value:50},{name:"男性",value:150}]},{name:"Facebook",series:[{name:"女性",value:126},{name:"男性",value:347}]}],o=[{name:"Google",series:[{name:"08-26",value:30},{name:"08-27",value:50},{name:"08-28",value:10},{name:"08-29",value:100},{name:"08-30",value:20},{name:"08-31",value:150},{name:"09-01",value:120}]},{name:"Facebook",series:[{name:"08-26",value:30},{name:"08-27",value:80},{name:"08-28",value:20},{name:"08-29",value:200},{name:"08-30",value:300},{name:"08-31",value:150},{name:"09-01",value:230}]}],c=[{name:"Google",series:[{name:"desktop",value:307},{name:"mobile",value:89},{name:"tablet",value:146},{name:"tv",value:252}]}],l=[{title:"日本流行樂",likes:40},{title:"古典音樂",likes:10},{title:"韓國流行樂",likes:100},{title:"華語流行樂",likes:70},{title:"搖滾",likes:43},{title:"藍調",likes:20},{title:"舞曲",likes:17},{title:"電子音樂",likes:60},{title:"嘻哈/饒舌",likes:35},{title:"國際流行音樂",likes:70},{title:"爵士樂",likes:12}]},3:function(e,n,t){"use strict";t.d(n,"a",(function(){return a})),t.d(n,"b",(function(){return r}));var a={Google:{color:"#f85672"},Facebook:{color:"#0daeff"},mobile:{color:"#0daeff"},desktop:{color:"#ffb854"},tablet:{color:"#f85672"},tv:{color:"#08c9cc"}},r=function(e){var n=Math.floor(e).toString().length-1,t=Math.pow(10,n);return e/t<5&&(t/=2),(n=Math.ceil(e/t))*t}},5:function(e,n,t){"use strict";var a=t(1),r=t(6);n.a={setTooltip:function(e){var n=Object(r.a)().attr("class","d3-tip").offset([-14,0]);switch(e){case"line":return n.html((function(e,n){var t=a.n("%m/%d");return'\n          <div class="date">'.concat(t(e.name),'</div>\n          <div>\n            <span class="mark ').concat(e.label,'-mark"></span>\n            <span>').concat(e.label,"</span>\n            ").concat(e.value.toLocaleString(),"\n          </div>\n        ")})),n;case"bar":return n.html((function(e){return'\n            <div class="date">'.concat(e.name,'</div>\n            <div>\n              <span class="mark ').concat(e.name,'-mark"></span>\n              <span>').concat(e.name,"</span>  \n              ").concat(e.value.toLocaleString(),"\n            </div>\n          ")})),n;case"multi_bar":return n.html((function(e){return'\n        <div class="date">'.concat(e.label,'</div>\n        <div>\n          <span class="mark ').concat(e.name,'-mark"></span>\n          <span>').concat(e.name,"</span>\n          ").concat(e.value.toLocaleString(),"\n        </div>\n      ")})),n;case"pie":return n.html((function(e){return'\n          <div class="date">'.concat(e.data.name,"</div>\n          <div>\n            點擊數 <span>").concat(e.data.clicks,"</span>\n          </div>\n        ")})),n}}}}});