(this["webpackJsonpberry-shake"]=this["webpackJsonpberry-shake"]||[]).push([[0],{23:function(n,e,t){n.exports=t.p+"static/media/cam.7ced313f.svg"},24:function(n,e,t){n.exports=t.p+"static/media/cam_off.97f6b482.svg"},25:function(n,e,t){n.exports=t(48)},30:function(n,e,t){},48:function(n,e,t){"use strict";t.r(e);var r=t(0),a=t.n(r),c=t(19),o=t.n(c),i=(t(30),t(2)),u=t(4),l=t(5),s=t.n(l),f=t(3);function d(){var n=Object(i.a)(["\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  background: ",";\n  padding: ",";\n"]);return d=function(){return n},n}function m(){var n=Object(i.a)(["\n  padding: 0.5rem 1rem;\n  font-size: 2rem;\n"]);return m=function(){return n},n}function h(){var n=Object(i.a)(["\n  padding: 1rem 0.5rem;\n"]);return h=function(){return n},n}var b=f.a.div(h()),p=f.a.div(m()),v=f.a.div(d(),(function(n){return n.isLabel?"#d9d9d9":"#92d150"}),(function(n){return n.isLabel?"0.25rem":"0.5rem"})),g=function(){var n=Object(r.useState)([]),e=Object(u.a)(n,2),t=e[0],c=e[1];return Object(r.useEffect)((function(){var n=!0;return function e(){s.a.get("/api/shakerdata.txt").then((function(t){n&&(c(t.data),setTimeout((function(){e()}),1e3))})).catch(console.log)}(),function(){return n=!1}}),[]),a.a.createElement(b,null,t.map((function(n,e){return a.a.createElement(p,{key:e},a.a.createElement(v,{isLabel:!0},n.label),a.a.createElement(v,null,n.value))})))};function w(){var n=Object(i.a)(["\n  position: absolute;\n  width:100vw;\n  height:100vh;\n"]);return w=function(){return n},n}function j(){var n=Object(i.a)(["\n  // display: flex;\n  // width: 1vw;\n  // height: 100%;\n"]);return j=function(){return n},n}var E=f.a.div(j()),k=(f.a.iframe(w()),function(){var n=Object(r.useState)(null),e=Object(u.a)(n,2),t=e[0],c=e[1];return Object(r.useEffect)((function(){s.a.get("/api/config.txt").then((function(n){return c(n.data)})).catch(console.log)}),[]),a.a.createElement(E,null,t&&a.a.createElement("embed",{src:"http://".concat(t.ip,":8081"),height:"480",width:"640"}))}),O=t(23),x=t.n(O),y=t(24),C=t.n(y);function S(){var n=Object(i.a)(["\n  position: fixed;\n  // top: 1.15rem;\n  // right: 2rem;\n  top: 0rem;\n  right: 0.25rem;\n  height: 60px;\n  width: 60px;\n  background: url(",");\n  background-size: cover;\n  background-repeat: no-repeat;\n  background-position: center;\n  z-index: 1;\n  filter: opacity(",");\n  \n"]);return S=function(){return n},n}var z=f.a.div(S(),(function(n){return n.showCam?C.a:x.a}),(function(n){return n.showCam?"50%":"100%"})),L=function(){var n=Object(r.useState)(!1),e=Object(u.a)(n,2),t=e[0],c=e[1];return console.log(t),a.a.createElement(a.a.Fragment,null,a.a.createElement(z,{onClick:function(){return c(!t)},showCam:t}),t?a.a.createElement(k,null):a.a.createElement(g,null))};Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));o.a.render(a.a.createElement(a.a.StrictMode,null,a.a.createElement(L,null)),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(n){n.unregister()})).catch((function(n){console.error(n.message)}))}},[[25,1,2]]]);
//# sourceMappingURL=main.06073544.chunk.js.map