!function(e){function n(n){for(var a,l,c=n[0],i=n[1],u=n[2],p=0,m=[];p<c.length;p++)l=c[p],Object.prototype.hasOwnProperty.call(r,l)&&r[l]&&m.push(r[l][0]),r[l]=0;for(a in i)Object.prototype.hasOwnProperty.call(i,a)&&(e[a]=i[a]);for(s&&s(n);m.length;)m.shift()();return o.push.apply(o,u||[]),t()}function t(){for(var e,n=0;n<o.length;n++){for(var t=o[n],a=!0,c=1;c<t.length;c++){var i=t[c];0!==r[i]&&(a=!1)}a&&(o.splice(n--,1),e=l(l.s=t[0]))}return e}var a={},r={4:0},o=[];function l(n){if(a[n])return a[n].exports;var t=a[n]={i:n,l:!1,exports:{}};return e[n].call(t.exports,t,t.exports,l),t.l=!0,t.exports}l.m=e,l.c=a,l.d=function(e,n,t){l.o(e,n)||Object.defineProperty(e,n,{enumerable:!0,get:t})},l.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},l.t=function(e,n){if(1&n&&(e=l(e)),8&n)return e;if(4&n&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(l.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&n&&"string"!=typeof e)for(var a in e)l.d(t,a,function(n){return e[n]}.bind(null,a));return t},l.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return l.d(n,"a",n),n},l.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},l.p="/dist/";var c=window.webpackJsonp=window.webpackJsonp||[],i=c.push.bind(c);c.push=n,c=c.slice();for(var u=0;u<c.length;u++)n(c[u]);var s=i;o.push([11,0]),t()}([,,function(e,n,t){"use strict";t.d(n,"a",(function(){return a})),t.d(n,"d",(function(){return r})),t.d(n,"c",(function(){return o})),t.d(n,"e",(function(){return l})),t.d(n,"b",(function(){return c}));var a=[{name:"Google",value:30},{name:"Facebook",value:20}],r=[{name:"Google",series:[{name:"女性",value:50},{name:"男性",value:150}]},{name:"Facebook",series:[{name:"女性",value:126},{name:"男性",value:347}]}],o=[{name:"Google",series:[{name:"08-26",value:30},{name:"08-27",value:50},{name:"08-28",value:10},{name:"08-29",value:100},{name:"08-30",value:20},{name:"08-31",value:150},{name:"09-01",value:120}]},{name:"Facebook",series:[{name:"08-26",value:30},{name:"08-27",value:80},{name:"08-28",value:20},{name:"08-29",value:200},{name:"08-30",value:300},{name:"08-31",value:150},{name:"09-01",value:230}]}],l=[{name:"Google",series:[{name:"desktop",value:307},{name:"mobile",value:89},{name:"tablet",value:146},{name:"tv",value:252}]}],c=[{title:"日本流行樂",likes:40},{title:"古典音樂",likes:10},{title:"韓國流行樂",likes:100},{title:"華語流行樂",likes:70},{title:"搖滾",likes:43},{title:"藍調",likes:20},{title:"舞曲",likes:17},{title:"電子音樂",likes:60},{title:"嘻哈/饒舌",likes:35},{title:"國際流行音樂",likes:70},{title:"爵士樂",likes:12}]},function(e,n,t){"use strict";t.d(n,"a",(function(){return a})),t.d(n,"b",(function(){return r}));var a={Google:{color:"#f85672"},Facebook:{color:"#0daeff"},mobile:{color:"#0daeff"},desktop:{color:"#ffb854"},tablet:{color:"#f85672"},tv:{color:"#08c9cc"}},r=function(e){var n=Math.floor(e).toString().length-1,t=Math.pow(10,n);return e/t<5&&(t/=2),(n=Math.ceil(e/t))*t}},,function(e,n,t){"use strict";var a=t(1),r=t(6);n.a={setTooltip:function(e){var n=Object(r.a)().attr("class","d3-tip").offset([-14,0]);switch(e){case"line":return n.html((function(e,n){var t=a.n("%m/%d");return'\n          <div class="date">'.concat(t(e.name),'</div>\n          <div>\n            <span class="mark ').concat(e.label,'-mark"></span>\n            <span>').concat(e.label,"</span>\n            ").concat(e.value.toLocaleString(),"\n          </div>\n        ")})),n;case"bar":return n.html((function(e){return'\n            <div class="date">'.concat(e.name,'</div>\n            <div>\n              <span class="mark ').concat(e.name,'-mark"></span>\n              <span>').concat(e.name,"</span>  \n              ").concat(e.value.toLocaleString(),"\n            </div>\n          ")})),n;case"multi_bar":return n.html((function(e){return'\n        <div class="date">'.concat(e.label,'</div>\n        <div>\n          <span class="mark ').concat(e.name,'-mark"></span>\n          <span>').concat(e.name,"</span>\n          ").concat(e.value.toLocaleString(),"\n        </div>\n      ")})),n;case"pie":return n.html((function(e){return'\n          <div class="date">'.concat(e.data.name,"</div>\n          <div>\n            點擊數 <span>").concat(e.data.clicks,"</span>\n          </div>\n        ")})),n}}}},,,,,,function(e,n,t){"use strict";t.r(n);var a=t(1),r=t(5),o=t(2),l=t(3);var c={multi_line_chart:function(e){document.querySelector("#".concat(e)).innerHTML="";var n=10,t=35,c=20,i=45,u=document.querySelector("#".concat(e)).clientWidth,s=a.o("%m-%d"),p=o.c.map((function(e){return{series:e.series.map((function(n){return{label:e.name,name:s(n.name),value:parseFloat(n.value)}})),name:e.name}})),m=a.l().range([0,u-i-t]),d=a.k().range([350,0]),f=0;o.c.map((function(e){return e.series.map((function(e){return parseFloat(e.value)}))})).forEach((function(e){var n=a.g(e);f=f>n?f:n}));var v=Object(l.b)(f);m.domain(a.d(p[0].series,(function(e){return e.name}))),d.domain([0,v]);var b=a.m(document.querySelector("#".concat(e))).append("svg").attr("width",u).attr("height",350+n+c).append("g").attr("transform","translate(".concat(i,", ").concat(n,")")),g=a.f().x((function(e){return m(e.name)})).y((function(e){return d(e.value)})),h=b.append("g").attr("class","lines");h.selectAll(".line-group").data(p).enter().append("g").attr("class","line-group").append("path").attr("class","line").attr("d",(function(e){return g(e.series)})).style("stroke",(function(e){return l.a[e.name].color})).style("fill","none");var k=r.a.setTooltip("line");b.call(k),h.selectAll("circle-group").data(p).enter().selectAll("circle").data((function(e){return e.series})).enter().append("g").attr("class","tooltip").on("touchstart mouseover",k.show).on("touchend mouseout",k.hide).append("circle").attr("cx",(function(e){return m(e.name)})).attr("cy",(function(e){return d(e.value)})).attr("r",3).style("fill","transparent");var y=a.b(m).ticks(5).tickFormat(a.n("%m/%d"));b.append("g").attr("transform","translate(0, ".concat(350,")")).attr("class","xaxis").call(y),b.append("g").attr("class","yaxis").call(a.c(d).ticks(5))}};window.onload=function(){c.multi_line_chart("root")}}]);