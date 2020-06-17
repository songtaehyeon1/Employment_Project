
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Language" content="ko-KR">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VgMEUFRbDRAEUFJQAQAEUVc=",licenseKey:"03a1f7dfe5",applicationID:"443261373"};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(21),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,s){try{p?p-=1:o(s||new UncaughtException(t,n,e),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t,n){var e=n?null:c.now();i("err",[t,e])}var i=t("handle"),a=t(22),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),c.xhrWrappable&&t(10),d=!0)}s.on("fn-start",function(t,n,e){d&&(p+=1)}),s.on("fn-err",function(t,n,e){d&&!e[l]&&(f(e,l,function(){return!0}),this.thrown=!0,o(e))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(9),s=t(8),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof x&&(this.bstStart=y.now())}),o.on(w,function(t,n){var e=t[0];e instanceof x&&i("bst",[e,n,this.bstStart,y.now()])}),a.on(m,function(t,n,e){this.bstStart=y.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,y.now(),this.bstType])}),s.on(m,function(){this.bstStart=y.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,y.now(),"requestAnimationFrame"])}),o.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),o.on(g+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t("wrap-function")(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){function r(t,n,e){var r=t[n];"function"==typeof r&&(t[n]=function(){var t=i(arguments),n={};o.emit(e+"before-start",[t],n);var a;n[m]&&n[m].dt&&(a=n[m].dt);var s=r.apply(this,t);return o.emit(e+"start",[t,a],s),s.then(function(t){return o.emit(e+"end",[null,t],s),t},function(t){throw o.emit(e+"end",[t],s),t})})}var o=t("ee").get("fetch"),i=t(22),a=t(21);n.exports=o;var s=window,c="fetch-",f=c+"body-",u=["arrayBuffer","blob","json","text","formData"],d=s.Request,l=s.Response,p=s.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,n){r(d[h],n,f),r(l[h],n,f)}),r(s,"fetch",c),o.on(c+"end",function(t,n){var e=this;if(n){var r=n.headers.get("content-length");null!==r&&(e.rxSize=r),o.emit(c+"done",[null,n],e)}else o.emit(c+"done",[t],e)}))},{}],7:[function(t,n,e){var r=t("ee").get("history"),o=t("wrap-function")(r);n.exports=r;var i=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;i&&i.pushState&&i.replaceState&&(a=i),o.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,n,e){var r=t("ee").get("raf"),o=t("wrap-function")(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],9:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t("wrap-function")(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],10:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",s)}function i(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,O.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];n.exports=u;var x=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,O=document.createTextNode(E);new h(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,n,e){function r(t){if(!i(t))return null;var n=window.NREUM;if(!n.loader_config)return null;var e=(n.loader_config.accountID||"").toString()||null,r=(n.loader_config.agentID||"").toString()||null,s=(n.loader_config.trustKey||"").toString()||null;if(!e||!r)return null;var c=a.generateCatId(),f=a.generateCatId(),u=Date.now(),d=o(c,f,u,e,r,s);return{header:d,guid:c,traceId:f,timestamp:u}}function o(t,n,e,r,o,i){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var s={v:[0,1],d:{ty:"Browser",ac:r,ap:o,id:t,tr:n,ti:e}};return i&&r!==i&&(s.d.tk=i),btoa(JSON.stringify(s))}function i(t){var n=!1,e=!1,r={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(r=NREUM.init.distributed_tracing,e=!!r.enabled),e)if(t.sameOrigin)n=!0;else if(r.allowed_origins instanceof Array)for(var o=0;o<r.allowed_origins.length;o++){var i=s(r.allowed_origins[o]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){n=!0;break}}return e&&n}var a=t(19),s=t(13);n.exports={generateTracePayload:r,shouldGenerateTrace:i}},{}],12:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);n.aborted||(e.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==n.status&&(n.status=0):i(this,t),e.cbTime=this.cbTime,u.emit("xhr-done",[t],t),s("xhr",[n,e,this.startTime]))}}function o(t,n){var e=c(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.parsedOrigin=c(n),t.sameOrigin=t.parsedOrigin.sameOrigin}function i(t,n){t.params.status=n.status;var e=w(n,t.lastSize);if(e&&(t.metrics.rxSize=e),t.sameOrigin){var r=n.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var s=t("handle"),c=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(17),m=t(16),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,n.loadCaptureCalled=!1,t.addEventListener("load",function(e){i(n,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},o(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var e=f(this.parsedOrigin);e&&e.header&&(n.setRequestHeader("newrelic",e.header),this.dt=e)}),u.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=m(r);i&&(e.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}};for(var s=0;s<l;s++)n.addEventListener(d[s],this.listener,!1)}),u.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),u.on("xhr-load-added",function(t,n){var e=""+p(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,n){var e=""+p(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],n)}),u.on("removeEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],n)}),u.on("fn-start",function(t,n,e){n instanceof v&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,n){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,n],n)}),u.on("fetch-before-start",function(t){var n,e=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=c(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var r=f(this.parsedOrigin);if(r&&r.header){var o=r.header;if("string"==typeof t[0]){var i={};for(var a in e)i[a]=e[a];i.headers=new Headers(e.headers||{}),i.headers.set("newrelic",o),this.dt=r,t.length>1?t[1]=i:t.push(i)}else t[0]&&t[0].headers&&(t[0].headers.append("newrelic",o),this.dt=r)}})}},{}],13:[function(t,n,e){var r={};n.exports=function(t){if(t in r)return r[t];var n=document.createElement("a"),e=window.location,o={};n.href=t,o.port=n.port;var i=n.href.split("://");!o.port&&i[1]&&(o.port=i[1].split("/")[0].split("@").pop().split(":")[1]),o.port&&"0"!==o.port||(o.port="https"===i[0]?"443":"80"),o.hostname=n.hostname||e.hostname,o.pathname=n.pathname,o.protocol=i[0],"/"!==o.pathname.charAt(0)&&(o.pathname="/"+o.pathname);var a=!n.protocol||":"===n.protocol||n.protocol===e.protocol,s=n.hostname===document.domain&&n.port===e.port;return o.sameOrigin=a&&(!n.hostname||s),"/"===o.pathname&&(r[t]=o),o}},{}],14:[function(t,n,e){function r(t,n){var e=t.responseType;return"json"===e&&null!==n?n:"arraybuffer"===e||"blob"===e||"json"===e?o(t.response):"text"===e||"document"===e||""===e||void 0===e?o(t.responseText):void 0}var o=t(16);n.exports=r},{}],15:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(21),s=t(22),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],e),t}finally{c.emit("fn-end",[f.now()],e)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t,n){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now(),!1,n])}},{}],16:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],17:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],18:[function(t,n,e){function r(t,n){var e=t.getEntries();e.forEach(function(t){"first-paint"===t.name?c("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&c("timing",["fcp",Math.floor(t.startTime)])})}function o(t,n){var e=t.getEntries();e.length>0&&c("lcp",[e[e.length-1]])}function i(t){if(t instanceof u&&!l){var n,e=Math.round(t.timeStamp);n=e>1e12?Date.now()-e:f.now()-e,l=!0,c("timing",["fi",e,{type:t.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,s,c=t("handle"),f=t("loader"),u=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),s=new PerformanceObserver(o);try{a.observe({entryTypes:["paint"]}),s.observe({entryTypes:["largest-contentful-paint"]})}catch(d){}}if("addEventListener"in document){var l=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(t){document.addEventListener(t,i,!1)})}}},{}],19:[function(t,n,e){function r(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(n=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<i.length;s++)o=i[s],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&Uint8Array&&(n=r.getRandomValues(new Uint8Array(31)));for(var o=[],i=0;i<16;i++)o.push(t().toString(16));return o.join("")}n.exports={generateUuid:r,generateCatId:o}},{}],20:[function(t,n,e){function r(t,n){if(!o)return!1;if(t!==o)return!1;if(!n)return!0;if(!i)return!1;for(var e=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==e[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(o="Safari",i=c[1])}n.exports={agent:o,version:i,match:r}},{}],21:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],22:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],23:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=m(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([x,e,r,a]),a}}function p(t,n){g[t]=m(t).concat(n)}function h(t,n){var e=g[t];if(e)for(var r=0;r<e.length;r++)e[r]===n&&e.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||o(e)}function v(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:e,get:w,listeners:m,context:n,buffer:v,abort:a,aborted:!1};return x}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(21),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!E++){var t=b.info=NREUM.info,n=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=p.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(21),u=t("ee"),d=t(20),l=window,p=l.document,h="addEventListener",m="attachEvent",w=l.XMLHttpRequest,v=w&&w.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:w,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var g=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},x=w&&v&&v[h]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:g,features:{},xhrWrappable:x,userAgent:d};t(15),t(18),p[h]?(p[h]("DOMContentLoaded",i,!1),l[h]("load",r,!1)):(p[m]("onreadystatechange",o),l[m]("onload",r)),c("mark",["firstbyte",s],null,"api");var E=0,O=t(23)},{}],"wrap-function":[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(22),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}]},{},["loader",2,12,4,3]);

</script>
<script type="text/javascript"
	src="//www.saraminimage.co.kr/js/libs/jquery-1.11.1.min.js"></script>
<script type="text/javascript">var $j = jQuery.noConflict();</script>
<script type="text/javascript"
	src="/js/person-common-layout.js?v=20200521163058"></script>
<script type="text/javascript"
	src="/js/person-common-nudge.js?v=20200521163058"></script>

<title>사람인</title>
<meta name="Description"
	content="1000대기업 공채 및 대기업, 중소기업 채용, 공채자료, 기업정보, 연봉정보 제공">
<meta property="og:title" content="사람인">
<meta property="og:image"
	content="//www.saraminimage.co.kr/logo/saraminsnslogo.png">
<meta property="og:site_name" content="사람인">
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="1593727887570039">
<meta property="og:image:width" content="200">
<meta property="og:image:height" content="200">
<link
	href="android-app://kr.co.saramin.brandapp/http/m.saramin.co.kr/member/resume/write"
	rel="alternate">
<link
	href="ios-app://739013038/http/m.saramin.co.kr/member/resume/write"
	rel="alternate">
<link href="http://m.saramin.co.kr/member/resume/write" rel="alternate"
	type="text/html" title="mobile optimized version"
	media="only screen and (max-width: 640px)">
<link href="/js/libs/jquery-ui/jquery-ui.custom.css?v=20200521103024"
	media="screen" rel="stylesheet" type="text/css">
<link href="/sri_css/resume.css?v=20200521103024" media="screen"
	rel="stylesheet" type="text/css">
<link href="https://www.saraminimage.co.kr/js/libs/cropper/cropper.css"
	media="screen" rel="stylesheet" type="text/css">
<link href="/css/myfilebox.css?v=20200521103024" media="screen"
	rel="stylesheet" type="text/css">
<link href="/favicon.ico?ver=2" rel="favicon">
<link href="/favicon.ico?ver=2" rel="icon" type="image/x-icon">
<link href="/favicon.ico?ver=2" rel="shortcut icon" type="image/x-icon">
<link href="/sri_css/person/layout.css?v=20200521103024" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/components.css?v=20200521103024" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/common_ui_keeping.css?v=20200521103024" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/person/contents.css?v=20200521103024" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/sticky_assist.css?v=20200521103024" media="all"
	rel="stylesheet" type="text/css">

</head>
<body id="globalTopBar" class="">
	<script type="text/javascript"
		src="/js/libs/saramin/common.js?v=20200521163058"></script>
	<div id="container">
		<header id="header">

			<div class="area_ci">
				<p class="title_ci">
					<a href="/" class="logo_saramin" title="saramin"><img
						src="//www.saraminimage.co.kr/ui/layout/person_mypage_2017/logo_pm_saramin_201808.png"
						alt="Saramin"></a>
				</p>
				<div id="srch_wrap" class="area_search doctype_mode">
					<form id="AKCFrm" name="search"
						action="/zf_user/search?flag=n&searchMode=1">
						<fieldset>
							<legend class="hide">통합검색</legend>
							<span id="search_wrap_span" class="box_search_input banner-on">
								<input type="text" name="searchword" id="combineSearchWord"
								title="검색어 입력" tabindex="1" accesskey="s" autocomplete="off"
								size="20" value="" />
							</span>

							<button type="submit" id="submit_button" name="go"
								class="btn_search">
								<span>검색</span>
							</button>
							<input type="hidden" name="searchType" value="">
						</fieldset>
					</form>

					<div id="wrapAutoComplete" class="wrap_auto_complete">
						<!--                <a href="javascript:void(0);" id="arrow_bot" class="btn_arrow"><img src="//www.saraminimage.co.kr/ui/common/header/arrow_bottom.gif" alt="자동완성 펼치기"></a>-->
					</div>
				</div>

				<div id="searchAutoCompleteTemplate" style="display: none"></div>
				<script type="text/javascript">
        var searchWordInputId = 'combineSearchWord'; // 검색어 input ID
        var searchAutoCompleteResultWrapId = 'wrapAutoComplete'; // 검색결과 자동완성 Wrap ID
        var searchRecruitmentKey = 12637683; // key
        var urlBanner = '//www.saraminbanner.co.kr/'; // 로고 url
        var urlPds = '//pds.saramin.co.kr/'; // 로고원본 url
        var urlWebPds = '//webpds.saramin.co.kr/pds/'; // 로고원본 webpds url
        var inlineCss = ''; // 특정 css
        var pageType = '';
    </script>

				<div class="outer_wrap" id="my_util_lately">
					<div class="lately_wrap lately_menu"></div>
					<div class="lately_wrap lately_keyword"></div>
				</div>
				<div class="util_default">
					<a
						href="https://www.otwojob.com/main/?utm_source=saramin&utm_medium=partner&utm_campaign=branding&utm_term=gnb"
						onmousedown="try{n_trackEvent('main', 'gnb', 'otwojob', 'direct');}catch(e){};"
						class="util_menu" target="_blank">오투잡</a> <a href="/zf_user/help"
						class="util_menu">고객센터</a>
				</div>
			</div>
			<div class="inner">
				<nav id="gnb" class="gnb">
					<ul class="gnb_list">
						<li class=""><a href="/zf_user/member/persons/main"
							onmousedown="try{n_trackEvent('gnbmenu', 'my', 'myhome', '');}catch(e){}"><span
								class="depth01_title">MY 홈</span></a></li>
						<li class=""><a href="/zf_user/member/profile"><span
								class="depth01_title"
								onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">나의
									<span class="txt">Profile</span>
							</span></a>
							<ul class="depth02">
								<li><a href="/zf_user/member/profile/person-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">기본정보</a></li>
								<li><a href="/zf_user/member/profile/school-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">학력사항</a></li>
								<li><a href="/zf_user/member/profile/career-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">경력사항</a></li>
								<li><a href="/zf_user/member/profile/introduce-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">자기소개서</a></li>
								<li><a href="/zf_user/member/profile/svq-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">인적성검사</a></li>
								<li><a href="/zf_user/member/profile/attach-files-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">포트폴리오&문서</a></li>
								<li><a href="/zf_user/member/profile/license-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">자격증</a></li>
								<li><a href="/zf_user/member/profile/language-exam-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">어학시험</a></li>
								<li><a href="/zf_user/member/profile/certification-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">수상내역</a></li>
								<li><a href="/zf_user/member/profile/skill-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">보유기술</a></li>
								<li><a href="/zf_user/member/profile/activity-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">대외활동</a></li>
								<li><a href="/zf_user/member/profile/personal-view"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', '', '');}catch(e){}">취업
										우대사항</a></li>

							</ul></li>
						<li class=""><a href="/zf_user/resume/resume-manage"
							onmousedown="try{n_trackEvent('gnbmenu', 'my', 'resume', '');}catch(e){}"><span
								class="depth01_title">이력서 관리</span></a>
							<ul class="depth02">
								<li><a
									href="/zf_user/member/resume-manage/write?template_cd=1"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'resume-write', '');}catch(e){}">이력서
										등록</a></li>
								<li><a href="/zf_user/resume/resume-manage"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'resume-manage', '');}catch(e){}">이력서
										현황</a></li>
								<li><a href="/zf_user/member/resume-manage/block-setting"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'block-setting', '');}catch(e){}">내
										이력서 상태 설정</a></li>
								<li><a href="/zf_user/salaries/my/history"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'my-salary-box', '');}catch(e){}">내
										연봉 이력관리</a></li>
								<li><a href="/zf_user/member/career-high"
									onmousedown="//try{n_trackEvent('gnbmenu', 'my', 'my-salary-box', '');}catch(e){}">커리어
										하이</a></li>
							</ul></li>
						<li class=""><a href="/zf_user/persons/apply-status-list"
							onmousedown="try{n_trackEvent('gnbmenu', 'my', 'apply', '');}catch(e){}"><span
								class="depth01_title">입사지원 관리</span></a>
							<ul class="depth02">
								<li><a href="/zf_user/persons/apply-status-pause-list"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'apply-status-pause-list', '');}catch(e){}">지원
										대기</a></li>
								<li><a href="/zf_user/persons/apply-status-list"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'apply-status-list', '');}catch(e){}">입사지원
										현황</a></li>
								<li><a href="/zf_user/persons/certificate"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'certificate', '');}catch(e){}">구직활동
										확인서</a></li>
							</ul></li>
						<li class=""><a href="/zf_user/member/avatar/list"
							onmousedown="try{n_trackEvent('gnbmenu', 'my', 'avatar', '');}catch(e){}"><span
								class="depth01_title ico_recommend">추천</span></a></li>
						<li class=""><a
							href="/zf_user/member/suited-recruit-mail/list"
							onmousedown="try{n_trackEvent('gnbmenu', 'my', 'tailor', '');}catch(e){}"><span
								class="depth01_title">나의 검색</span></a></li>
						<li class=""><a href="/zf_user/persons/scrap-recruit"
							onmousedown="try{n_trackEvent('gnbmenu', 'my', 'scrap', '');}catch(e){};"><span
								class="depth01_title">스크랩/최근본</span></a>
							<ul class="depth02">
								<li><a href="/zf_user/persons/scrap-recruit"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'scrap', '');}catch(e){};">스크랩한
										공고</a></li>
								<li><a href="/zf_user/jobs/read-jobs"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'lately', '');}catch(e){};">최근
										본 공고</a></li>
								<li><a href="/zf_user/member/favor-company/list"
									onmousedown="try{n_trackEvent('gnbmenu', 'my', 'favor-company', '');}catch(e){};">관심기업</a></li>
							</ul></li>
					</ul>
					<div class="side_menu">
						<a href="#layer_myarea" title="지원할만한 공고 보기" class="link_side"
							onmousedown="try{n_trackEvent('gnbmenu', 'my' , 'mylayer', '');}catch(e){};">
							<span class="photo" id="gnb_personnal_photo_area_span"> </span> <span
							class="name"><em class="text">윤준호</em>님</span> <span class="sid">(<em
								class="text social_type01">간편로그인</em>)
						</span>
						</a>

						<div class="notification_myinfo">
							<div class="inner">지원할만한 공고는 여기서 볼수 있어요</div>
						</div>
						<div id="layer_myarea" class="layer_myarea_wrap">
							<div class="profile_wrap">
								<div id="name_nudge" class="name_wrap">
									<span class="name">윤준호</span>님
								</div>
								<a href="/zf_user/persons/person-update"
									class="btn_personinfo_modify">개인정보 수정</a> <a
									href="/zf_user/auth/logout?redirect=%2Fzf_user%2Fauth%3Fut%3Dp"
									class="btn_logout"
									onmousedown="try{n_trackEvent('mylayer', 'menu' , 'logout', '');}catch(e){};">로그아웃</a>
							</div>
							<div class="activity_wrap">
								<ul class="tabmenu" id="tab_myarea">
									<li><span>지원할만한 공고</span></li>
									<li><span>최근 나의 활동</span></li>
								</ul>
								<div class="tabcont_wrap">
									<div class="tabcont recruit_list" id="tab_my_recruit_list">
										<div class="inner" id="myarea_my_recruit_list"></div>
									</div>
									<div class="tabcont my_activity" id="tab_my_activity_list"
										style="display: none;">
										<div class="inner" id="myarea_my_activity_list"></div>
									</div>
								</div>
							</div>
							<button type="button" id="layer_myarea_close_btn"
								class="btn_close">닫기</button>
						</div>

						<div id="installSaraminApp"
							class="layer_install_saraminapp position_right"
							style="display: none;">
							<button type="button" class="btn_close_layer"
								onclick="appInfoFunc.toggleDisplay(document.getElementById('installSaraminApp'));">레이어
								닫기</button>
							<div class="section_top">
								<p class="txt_tobecontinued">버스정류장에서도 지하철에서도 사람인은 계속 된다.</p>
								<div class="wrap_promoapp_nudge">
									<div class="area_app_icon">
										<div class="bg_smartphone">
											<img
												src="//www.saraminimage.co.kr/ui/app_promo_nudge/icon_app/84/brand_170908.png"
												alt="" class="icon_app">
										</div>
									</div>

									<div class="area_app_desc">
										<p class="txt_bg">2015 스마트앱어워드 정보서비스부문 통합대상</p>
										<img
											src="//www.saraminimage.co.kr/ui/app_promo_nudge/app_desc_text/vapp_saramin.png"
											alt="사람인 앱">
									</div>

									<div class="area_method">
										<fieldset class="sms">
											<label for="inputNumSMS" class="txt_method">설치방법 1)
												SMS로 쉽고 빠르게 설치</label>
											<div class="wrap_float">
												<span class="input_float"><input type="text"
													id="inputNumSMS" name="inputNumSMS" class="input_text"
													maxlength="13" placeholder="전화번호를 입력하세요."></span>
												<button type="submit" id="btnSendSms" class="btn_submit_sms"
													appcode="brand">
													<span>보내기</span>
												</button>
											</div>
											<!-- [수정&추가]150907 -->
											<p class="txt_caution">
												<input type="checkbox" id="check_sms_inputNumSMS"
													class="check_box"> <label
													for="check_sms_inputNumSMS" class="check_txt">SMS
													발송을 위한 휴대폰 번호 수집에 동의합니다.<br>(발송 목적 외에 이용/저장하지 않음, 1일
													10건 무료전송)
												</label>
											</p>
											<!-- //[수정&추가]150907 -->
											<!-- <p class="txt_caution">입력된 번호는 문자 전송에만 사용됩니다. (1일10건 전송가능)</p>  -->
										</fieldset>
										<div class="market">
											<p class="txt_method">설치방법 2) 마켓 바로가기</p>
											<div class="wrap_float">
												<a
													href="https://play.google.com/store/apps/details?id=kr.co.saramin.brandapp&referer=utm_source%3Dsaramin%26utm_medium%3Dreferral%26utm_campaign%3Dsaramin-app%26utm_content%3Dmobile_layer"
													class="go_android" target="_blank">Android Market</a> <a
													href="https://itunes.apple.com/kr/app/id739013038?mt=8"
													class="go_ios" target="_blank">iOS Market</a>
											</div>
											<p class="txt_caution">
												구글플레이 또는 앱스토어에서 <strong>사람인</strong>을 검색하세요.
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="introduce_sub_apps">
								<p class="txt_tobecontinued2">방문자수 1위 사람인! 모바일앱에서도 계속된다!</p>
								<ul class="list_apps">
									<li>
										<dl class="sapp">
											<dt>앱 이름</dt>
											<dd class="app_name">맞춤취업사람인 앱</dd>
											<dt>앱 설명</dt>
											<dd class="app_desc">
												경력직 필수 앱!<br>내게 맞는 채용정보만 보자
											</dd>
											<dt>앱 아이콘</dt>
											<dd class="icon_app">
												<span>맞춤취업사람인</span>
											</dd>
										</dl> <a href="/zf_user/guide/mobile/about/ns/saramin"
										class="go_to_app" target="_blank">앱 페이지 바로가기</a>
									</li>
									<li>
										<dl class="calc">
											<dt>앱 이름</dt>
											<dd class="app_name">연봉계산기 앱</dd>
											<dt>앱 설명</dt>
											<dd class="app_desc">
												내 연봉 실수령액 얼마지?<br>쉬운 계산 방법 여기 있소
											</dd>
											<dt>앱 아이콘</dt>
											<dd class="icon_app">
												<span>연봉계산기</span>
											</dd>
										</dl> <a href="/zf_user/guide/mobile/about/ns/salary-calc"
										class="go_to_app" target="_blank">앱 페이지 바로가기</a>
									</li>
									<li class="right">
										<dl class="high_school">
											<dt>앱 이름</dt>
											<dd class="app_name">고졸채용 앱</dd>
											<dt>앱 설명</dt>
											<dd class="app_desc">
												고졸 구직자 필수앱!<br>공채부터 취업자료까지
											</dd>
											<dt>앱 아이콘</dt>
											<dd class="icon_app">
												<span>고졸채용</span>
											</dd>
										</dl> <a href="/zf_user/guide/mobile/about/ns/highschool"
										class="go_to_app" target="_blank">앱 페이지 바로가기</a>
									</li>
								</ul>
							</div>
							<!-- 
    <div class="footer">
        <a href="/zf_user/guide/mobile" class="more_other_apps"  target="_blank" >다른 앱 더 보기</a>
    </div>
    -->
						</div>
						<script type="text/javascript">
    function invPcStat(params,opt) {
        new Ajax.Request( "/zf_user/appinstall-nudge/stat", {
                method: 'GET', 
                parameters : { params : params}
        });
        var tmp = params.split(",");
        try{n_trackEvent('app_nudge_pc', tmp[0], tmp[2], opt);}catch(e){};
    }

    function wrap(obj, target) {
        // Convert 'target' to an array, if necessary.
        if(!obj) {
            return;
        }
        if(!target.length) {
            target = [target];
        }

        // Loops backwards to prevent having to clone the wrapper on the first element (see 'child' below).
        for(var i = target.length - 1; i >= 0; i--) {
            var child = (i > 0) ? obj.cloneNode(true) : obj;
            var el = target[i];

            // Cache the current parent and sibling.
            var parent  = el.parentNode;
            var sibling = el.nextSibling;

            // Wrap the element (is automatically removed from its current parent).
            child.appendChild(el);

            // If the element had a sibling, insert the wrapper before the sibling to maintain the HTML structure;
            // otherwise, just append it to the parent.
            if(sibling) {
                parent.insertBefore(child, sibling);
            }else{
                parent.appendChild(child);
            }
        }
    }

    function addEvent(elem,type,handler){
        if(elem.addEventListener) elem.addEventListener(type,handler,false);
        else if(elem.attachEvent) elem.attachEvent('on'+type,handler);
    }

    function removeEvent(elem,type,handler) {
        if(elem.addEventListener) elem.removeEventListener(type, handler ,false);
        else if(elem.attachEvent) elem.detachEvent('on'+type, handler);
    }

    function nextElem(obj) {
        if(!obj) return;
        do{
            obj = obj.nextSibling;
        }while(obj && obj.nodeType !== 1);
        return obj;
    }

    function getIndex(obj, array) {
        for (var i = 0; i < array.length; i++) {
            if (array[i] === obj) {
                return i;
            }
        }
    }

    function placeholderIsSupported() {
        var test = document.createElement('INPUT');
        return ('placeholder' in test);
    }

    if (!document.getElementsByClassName) { //ie8 에서 getElementsByClassName 처리를 위한 polyfill
        document.getElementsByClassName = function(search) {
            var d = document, elements, pattern, i, results = [];
            if (d.querySelectorAll) { // IE8
                return d.querySelectorAll("." + search);
            }
            if (d.evaluate) { // IE6, IE7
                pattern = ".//*[contains(concat(' ', @class, ' '), ' " + search + " ')]";
                elements = d.evaluate(pattern, d, null, 0, null);
                while ((i = elements.iterateNext())) {
                    results.push(i);
                }
            } else {
                elements = d.getElementsByTagName("*");
                pattern = new RegExp("(^|\\s)" + search + "(\\s|$)");
                for (i = 0; i < elements.length; i++) {
                    if ( pattern.test(elements[i].className) ) {
                        results.push(elements[i]);
                    }
                }
            }
            return results;
        }
    }

    function placeholder() {
        if( placeholderIsSupported() ) {
            return;
        }
        
        var textareaElement = document.getElementsByClassName("sri_textarea");
        if(textareaElement.length > 0) {
            var inputElement = new Array();
            var tempInputElement = document.getElementsByTagName("INPUT");

            for (var i = 0; i< tempInputElement.length;i++){
                inputElement.push(tempInputElement[i]);
            }
            for (var j = 0; j< textareaElement.length;j++) {
                inputElement.push(textareaElement[j]);
            }
        } else {
            var inputElement = document.getElementsByTagName("INPUT");
        }
        var arrayInputElement = [];
        var arrayPseudoPlaceholder = [];

        for(var i=0; i<inputElement.length; i++) {
            if(inputElement[i].getAttribute("placeholder") === null) {
                continue;
            }

            // 감싸는 엘리먼트 만들기
            var parentInputElement = inputElement[i].parentNode;
            var wrapInputElement = document.createElement("SPAN"); // inputText를 감싸기 위한 엘리먼트를 생성한다.
            wrapInputElement.className = "wrap_placeholder"; // 클래스 지정
            parentInputElement.insertBefore(wrapInputElement, parentInputElement.childNodes[0]);
            wrap(wrapInputElement, inputElement[i]); // inputText를 새로 생성한 엘리먼트로 감싼다.

            // 가상 placeholder 만들기
            var pseudoPlaceholder = document.createElement("SPAN");
            var placeholderValue = document.createTextNode(inputElement[i].getAttribute("placeholder"));
            pseudoPlaceholder.className = "pseudo_placeholder";
            pseudoPlaceholder.appendChild(placeholderValue);
            wrapInputElement.insertBefore(pseudoPlaceholder, wrapInputElement.childNodes[0]);
            if(inputElement[i].value.length !== 0) { // inputText에 value값이 존재한다면(수정 페이지등) 가상 placeholder를 숨김처리
                pseudoPlaceholder.style.visibility = "hidden";
            }

            arrayPseudoPlaceholder.push(pseudoPlaceholder); // 생성된 가상 placeholder를 배열에 담는다.
            arrayInputElement.push(inputElement[i]); // placeholder 어트리뷰트가 없는 엘리먼트는 컨티뉴로 건너뜀
        }

        for(var j = 0;j < arrayInputElement.length;j++) {
            inputElem = arrayInputElement[j];
            addEvent(arrayInputElement[j], "keyup", function(ev) {
                var eventTarget = ev.target ? ev.target : ev.srcElement;
                var idx = getIndex(eventTarget, arrayInputElement);

                if(eventTarget.value.length > 0) { // 입력된 글자수가 0보다 많다면
                    arrayPseudoPlaceholder[idx].style.visibility = "hidden";
                }else{ // 입력된 글자수가 1보다 작다면
                    arrayPseudoPlaceholder[idx].style.visibility = "visible";
                }
            });
            addEvent(arrayPseudoPlaceholder[j], "click", function(ev) {
                var eventTarget = ev.target ? ev.target : ev.srcElement;
                nextElem(eventTarget).focus();
            });
        }
    }
    addEvent(window, "load", placeholder);
    </script>
					</div>
				</nav>
			</div>
			<script type="text/javascript">

    (function ($) {
        $(document).ready(function() {
            loadTotalMenuLatelyList('util');
                        loadPersonalPhoto();
                    });

        var GNB_NOTIF = function () {
            this.now_seq = '';
            this.now_date = '';
            this.max_scroll_height = 527;
            this.now_loading = false;
            this.is_person_login = true;
            this.notif_service_on = true;
            this.is_first = 'y';

            this.initialize.apply(this);
        };

        GNB_NOTIF.prototype = {
            initialize: function () {
                this.layerScrollBox = $('#layer-scroll-box');
                if (this.layerScrollBox.length > 0) {
                    this.layerScrollBox.on('scroll', this.checkScrollOnBottom.bind(this));
                }
            },

            checkScrollOnBottom: function () {
                var box_scrollTop = parseInt(this.layerScrollBox.scrollTop());
                var box_scrollHeight = parseInt(this.layerScrollBox.prop('scrollHeight'));
                var box_clientHeight = parseInt(this.layerScrollBox.prop('clientHeight'));

                // 스크롤 끝일경우
                if (box_scrollTop + box_clientHeight >= box_scrollHeight) {
                    if (this.now_seq !== '') {
                        this.getNotifList();
                    }
                }
            },

            checkScrollHeight: function () {
                var elt = this.layerScrollBox;

                //height를 지정하지 않은 상태의 scrollHeight를 가져오기 위해
                this.layerScrollBox.removeClass('height_fixed');

                var box_scrollHeight = parseInt(this.layerScrollBox.prop('scrollHeight'));

                if (box_scrollHeight >= this.max_scroll_height) {
                    this.layerScrollBox.addClass('height_fixed');
                }
            },

            // 알림센터 - 알림갯수를 가져와서 상단GNB 영역에 보여줌
            getNewNofifCnt: function () {
                var patt     = /^\(\d*\+*\)/,
                    new_icon = '알림센터<em class="count" id="notif_new_icon">N</em>';

                if (this.notif_service_on) {
                    $.ajax({
                        url: '/zf_user/notification/message/get-count',
                        dataType: 'json',
                        method: 'get'
                    }).done(function (response) {
                        if (response.notif_cnt != '' && response.notif_cnt != 0) {
                            $('#gnb_btn_alram').html('');
                            $('#gnb_btn_alram').append(new_icon);
                        } else {
                            $('#gnb_btn_alram').html('알림센터');
                        }
                    });
                }
            },

            // 상단 알림센터 gnb 영역 클릭시 처리부분
            gnbNotifToggle: function () {
                if (!this.notif_service_on) {
                    alert('알림센터 서비스 점검중 입니다.');
                    return;
                }

                if ($('#alarm-center-layer').is(':visible')) {
                    this.now_seq = '';
                    this.now_date = '';
                    this.is_first = 'y';
                    this.layerScrollBox.html('');
                    this.layerScrollBox.removeClass('height_fixed');
                    this.layerScrollBox.removeClass('no_data');
                    this.getNewNofifCnt();
                    this.getNotifList();
                }
            },

            // 알림센터 목록 가져오기
            getNotifList: function () {
                var _self = this;
                if (!_self.notif_service_on || _self.now_loading) {
                    return;
                }

                $.ajax({
                    url: '/zf_user/notification/center/list',
                    data: {mode: 'mini', seq: that.now_seq, now_date: that.now_date, is_first: that.is_first},
                    dataType: 'json',
                    method: 'get',
                    beforeSend: function () {
                        _self.now_loading = true;
                        $('#loadingStatus').show();
                    }
                }).done(function (response) {
                    if (_self.now_seq == '') {
                        _self.layerScrollBox.html(response.html);
                        _self.checkScrollHeight(); //insert 시에 하면 스크롤이 상단으로 올라감
                    } else {
                        _self.layerScrollBox.append(response.html);
                    }

                    _self.now_seq = response.now_seq;
                    _self.now_date = response.now_date;

                    if (response.notif_cnt == 0) {
                        _self.layerScrollBox.addClass('no_data');
                    }
                }).always(function () {
                    _self.now_loading = false;
                    $('#loadingStatus').hide();
                    _self.is_first = '';
                });
            }
        };

        window.gnb_notif_run = new GNB_NOTIF();
    })(jQuery);
</script>
		</header>

		<section id="pm_contents">
			<div id="content" class="nolnb ">

				<div id="resume" class="wrapper_narrow">
					<form id="resume_form" name="resume_form" method="post"
						action="/zf_user/member/resume-manage/save">
						<input type="hidden" name="template_cd" value="1" id="template_cd">
						<input type="hidden" name="mem_idx" value="12637683" id="mem_idx">
						<input type="hidden" name="res_idx" value="0" id="res_idx">
						<input type="hidden" name="order_items" value="" id="order_items">
						<input type="hidden" name="except_items" value=""
							id="except_items"> <input type="hidden" name="mode"
							value="" id="mode"> <input type="hidden"
							name="write_mode" value="insert" id="write_mode"> <input
							type="hidden" name="save_mode" value="" id="save_mode"> <input
							type="hidden" name="incomplete_cd" value="0" id="incomplete_cd">
						<input type="hidden" name="save_common_available_fl" value="n"
							id="save_common_available_fl"> <input type="hidden"
							name="complete_status" value="n" data-saved_value="n"
							id="complete_status"> <input type="hidden"
							name="before_complete_status" value="n" data-saved_value="n"
							id="before_complete_status"> <input type="hidden"
							name="ref" value="" id="ref"> <input type="hidden"
							name="inner_medium" value="nudge" id="inner_medium"><input
							type="hidden" name="inner_source" value="resume"
							id="inner_source"><input type="hidden"
							name="inner_campaign" value="main_login" id="inner_campaign"><input
							type="hidden" name="inner_term" value="resume-write01"
							id="inner_term">
						<h2 class="blind">이력서 등록</h2>

						<div id="basic" class="resume_section blind_guide">
							<div class="area_title">
								<h3 class="title">기본정보</h3>
							</div>

							<div class="resume_write resume_basic">
								<div class="resume_row">
									<div class="input_title">
										이름 <span class="point">필수</span>
									</div>
									<div class="resume_input">
										<label for="user_nm" class="bar_title">이름<span
											class="valid_hidden"> 입력</span></label> <input type="text"
											id="user_nm" name="user_nm" class="box_input" value="윤준호"
											maxlength="20" data-only-word="true">
										<p class="txt_error"></p>
									</div>

									<div class="sri_select resume_select resume_right">
										<label for="jobhunting_st" class="bar_title">구직상태<span
											class="valid_hidden"> 선택</span></label>
										<button type="button" class="ico_arr selected size_type3">구직상태
											선택</button>
										<input type="hidden" name="jobhunting_st" id="jobhunting_st"
											value="">
										<ul class="list_opt">
											<li class=""><a href="##" class="link_opt"
												data-value="1">구직준비중(재학생)</a></li>
											<li class=""><a href="##" class="link_opt"
												data-value="2">구직중</a></li>
											<li class=""><a href="##" class="link_opt"
												data-value="5">재직중</a></li>
										</ul>
										<p class="txt_error"></p>
									</div>
								</div>

								<div class="resume_row">
									<div class="input_title">
										생년월일 <span class="point">필수</span>
									</div>
									<div class="resume_input">
										<label for="birth_dt" class="bar_title"><span
											class="valid_hidden">YYYYMMDD</span><span class="blind">생년월일</span></label>
										<input type="text" id="birth_dt" name="birth_dt" value=""
											class="box_input expect_date" data-dateformat="yymmdd"
											data-only-number="true" autocomplete="off"> <input
											type="hidden" id="birth_year" name="birth_year" value="">
										<input type="hidden" id="birth_month" name="birth_month"
											value=""> <input type="hidden" id="birth_day"
											name="birth_day" value="">
										<p class="txt_error"></p>
									</div>

									<div class="inpRdoSw sizeXL resume_right">
										<span class="inOption"> <input name="sex" id="male"
											type="radio" value="male"> <label for="male"
											class="lbl">남</label>
										</span> <span class="inOption"> <input name="sex" id="female"
											type="radio" value="female"> <label for="female"
											class="lbl">여</label>
										</span>
										<p class="txt_error"></p>
									</div>
								</div>

								<div class="resume_row">
									<div class="input_title">
										이메일 <span class="point">필수</span>
									</div>
									<div class="resume_input">
										<label for="email" class="bar_title">이메일 주소<span
											class="valid_hidden"> 입력</span></label> <input type="text" id="email"
											name="email" class="box_input max_length"
											value="hello105@naver.com" readonly data-api_type="layer"
											data-api_id="basic_confirm_email"> <span
											id="email_confirm_icon" class="certify">미인증</span>
										<p class="txt_error"></p>
									</div>
									<a href="##" class="link_text">인증하기</a>
								</div>

								<div class="resume_row">
									<div class="area_check_top">
										<label class="sri_check" for="living_overseas_fl"> <input
											type="checkbox" name="living_overseas_fl" value="1"
											id="living_overseas_fl" class="inp_check living_overseas_fl">
											<span class="txt_check">해외거주</span>
										</label>

									</div>

									<div class="input_title">
										휴대폰 <span class="point">필수</span>
									</div>
									<div class="resume_input">
										<label for="user_cell" class="bar_title">휴대폰 번호<span
											class="valid_hidden"> 입력</span></label> <input type="text"
											id="user_cell" name="user_cell" class="box_input max_length"
											value="" maxlength="11" data-only-number="true"
											data-api_type="layer" data-api_id="basic_confirm_cell"
											readonly> <span id="cell_confirm_icon"
											class="certify" style="display:">미인증</span>
										<p class="txt_error"></p>
									</div>
									<a href="##" class="link_text" style="display:">인증하기</a>
								</div>

								<div class="resume_row">
									<div class="area_check_top">
										<label class="sri_check" for="same_cell"> <input
											type="checkbox" name="same_cell" id="same_cell"
											class="inp_check"> <span class="txt_check">휴대폰과
												동일</span>
										</label>

									</div>
									<div class="input_title">전화번호</div>
									<div class="resume_input">
										<label for="user_tel" class="bar_title">전화번호<span
											class="valid_hidden"> 입력</span></label> <input type="text"
											id="user_tel" name="user_tel" class="box_input" value=""
											maxlength="11" data-only-number="true">
										<p class="txt_error"></p>
									</div>
								</div>



								<div class="resume_row">
									<div class="area_check_top domestic_check">
										<label class="sri_check" for="btn_oversea"> <input
											type="checkbox" id="btn_oversea" name="btn_oversea"
											class="inp_check"> <span class="txt_check">해외
												지역</span>
										</label>
									</div>
									<div class="input_title">
										주소 <span class="point">필수</span>
									</div>
									<input type="hidden" name="user_selected_type"
										id="user_selected_type" value="J"> <input
										type="hidden" id="sido" name="sido" value=""> <input
										type="hidden" id="sigungu" name="sigungu" value=""> <input
										type="hidden" id="latitude" name="latitude" value="">
									<input type="hidden" id="longitude" name="longitude" value="">
									<input type="hidden" id="old_zipcode" name="old_zipcode"
										value=""> <input type="hidden" id="new_zipcode"
										name="new_zipcode" value="">

									<div class="resume_address">
										<div class="resume_input" style="display: none">
											<label for="new_address" class="bar_title"><span
												class="valid_hidden blind">도로명</span>주소<span
												class="valid_hidden"> 입력</span></label> <input type="text"
												id="new_address" name="new_address" value="" maxlength="40"
												readonly class="box_input old_address _searchArea">
											<p class="txt_error"></p>
										</div>

										<div class="resume_input" style="display:;">
											<label for="old_address" class="bar_title"><span
												class="valid_hidden blind">지번</span>주소<span
												class="valid_hidden"> 입력</span></label> <input type="text"
												id="old_address" name="old_address" value="" maxlength="40"
												readonly class="box_input old_address _searchArea">
											<p class="txt_error"></p>
										</div>

										<div class="sri_select resume_select" style="display: none;">
											<label for="overseas" class="bar_title" id="country">국가<span
												class="valid_hidden"> 선택</span></label>
											<button type="button" class="ico_arr selected">국가 선택</button>
											<input type="hidden" name="overseas" id="overseas" value="">
											<ul class="list_opt">
												<li class=""><a href="##" class="link_opt"
													data-value="260-100">가나</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-200">가봉</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-300">가이아나</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-500">감비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-400">과델루프</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-100">과테말라</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-100">괌</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-000">그라나다</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-700">그루지아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-100">그리스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-400">그린란드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-600">기니</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-700">기니비소우</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-500">기아나(프랑스령)</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-800">나미비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="252-200">나우루공화국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-300">나이지리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="239-900">남미기타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-400">남아프리카공화국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-200">네덜란드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="221-200">네덜란드령 안틸레스제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-800">네팔</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-300">노르웨이</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-200">뉴질랜드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-600">뉴칼레도니아섬</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-900">니제르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-600">니카라과</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-100">대만</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-400">덴마크</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-500">도미니카공화국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-700">도미니카연방</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-500">독일</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-400">동티모르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-000">라오스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-000">라이베리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-100">라트비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-600">러시아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-200">레뉴니용</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-100">레바논</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-200">루마니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-300">룩셈부르크</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-100">르완다</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-500">리비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-400">리투아니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="245-500">리히텐슈타인</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-300">마다가스카르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-800">마르티니크섬</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-700">마샬군도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-500">마케도니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-400">말라위</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-200">말레이시아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-500">말리</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-100">멕시코</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-600">모나코</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-600">모로코</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-500">모리셔스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-600">모리타니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-700">모잠비크</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="245-300">몬테네그로</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="245-400">몰도바</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-300">몰디브</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-700">몰타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-300">몽골</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-800">몽트세라</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-200">미국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-400">미얀마</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="252-000">미크로네시아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-800">바누아투</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-400">바레인</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-600">바베이도스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="245-200">바티칸시국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-700">바하마</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-500">방글라데시</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-800">버뮤다</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-000">버진제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-800">베냉</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-200">베네수엘라</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-600">베트남</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-700">벨기에</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="242-900">벨로루시</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-100">벨리즈</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-000">보스니아헤르체고비나</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="262-900">보츠와나</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-200">볼리비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-000">부룬디</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-100">부르키나파소</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-600">부탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="229-900">북·중미기타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="252-100">북마리아나군도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-700">북한</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-100">불가리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-300">브라질</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-800">브루나이</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-900">사모아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-700">사우디아라비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="221-000">사이판</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="245-100">산마리노</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-400">상투메프린시페</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-200">세네갈</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-300">세이셀제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="221-300">세인트루시아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="221-400">세인트빈센트그레나딘즈</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="221-100">세인트키츠네비스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-900">세인트피에르미그온</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-400">세인트헬레나섬</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-500">소말리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-900">솔로몬제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-700">수단</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-500">수리남</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-800">스리랑카</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-600">스와질랜드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-800">스웨덴</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="240-900">스위스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-000">스페인</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-300">슬로바키아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-200">슬로베니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="212-900">시리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-700">시에라리온</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-300">신유고연방</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="210-900">싱가포르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-000">아랍에미레이트연합국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-400">아루바</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-700">아르메니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-400">아르헨티나</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="219-900">아시아·중동기타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-600">아이슬란드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-600">아이티</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-700">아일랜드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-800">아제르바이잔</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-100">아프가니스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="269-900">아프리카기타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-700">안길라</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="243-900">알바니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-900">알제리</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-000">앙골라</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-300">에리트레아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-000">에스토니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-500">에콰도르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="260-900">에티오피아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-800">엔티가바부다</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="232-900">엘살바도르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-100">영국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-200">영국령 인도양식민지</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-300">예멘</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-400">오만</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="259-900">오세아니아기타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-100">오스트리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-600">온두라스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-500">요르단</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-000">우간다</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-700">우루과이</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-600">우즈베키스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-200">우크라이나</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="249-900">유럽기타</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-700">이라크</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-800">이란</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-400">이스라엘</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-100">이집트</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-200">이탈리아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-000">인도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-100">인도네시아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-200">일본</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-100">자마이카</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-200">자이르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-300">잠비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-400">적도기니</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-300">중국.홍콩</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-500">중앙아프리카공화국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-600">지부티</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-500">지브롤터</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-700">짐바브웨</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-800">차드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-300">체코</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-800">칠레</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="264-900">카메룬</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-800">카보베르데</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="213-900">카자흐스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-000">카타르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-400">캄보디아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="220-300">캐나다</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-200">케냐</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="233-000">케이만제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-000">케이프버드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-700">코모로</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="221-500">코스타리카</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="263-800">코트디브아르</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="230-900">콜롬비아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-100">콩고</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-600">콩고민주공화국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-000">쿠바</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-100">쿠웨이트</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-000">쿠크 군도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-600">크로아티아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-600">키르기즈스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-100">키리바시</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-700">키프로스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-200">타지키스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-300">탄자니아</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-500">태국</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="233-200">터크스앤카이코스제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-400">터키</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="265-200">토고</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-800">토켈라우제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-200">통가</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-300">투르크메니스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-300">투발루</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="261-400">튀니지</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="233-300">트리니나드토바고</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-100">파나마</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="233-400">파라과이</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="214-500">파키스탄</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-300">파푸아뉴기니</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-600">팔라우</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="244-800">페로제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="231-200">페루</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-500">포르투갈</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="233-500">포클랜드제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-600">폴란드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-500">폴리네시아제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="233-600">푸에르토리코</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-700">프랑스</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-400">피지</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-800">핀란드</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="211-600">필리핀</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="251-700">핏케언제도</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="241-900">헝가리</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="250-500">호주</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>

										<div class="resume_input resume_bottom" style="display: none;">
											<label for="new_address_details" class="bar_title"><span
												class="valid_hidden blind">도로명</span>상세주소<span
												class="valid_hidden"> 입력</span></label> <input type="text"
												id="new_address_details" name="new_address_details" value=""
												maxlength="50" class="box_input size_type5 _newAddress">
											<input type="hidden" id="new_address_extra"
												name="new_address_extra" value="">
											<p class="txt_error"></p>
										</div>
										<div class="resume_input resume_bottom resume_input_type6"
											style="display:;">
											<label for="old_address_details" class="bar_title"><span
												class="valid_hidden blind">지번</span>상세주소<span
												class="valid_hidden"> 입력</span></label> <input type="text"
												id="old_address_details" name="old_address_details" value=""
												maxlength="50" class="box_input size_type5 _oldAddress">
											<p class="txt_error"></p>
										</div>
									</div>

								</div>



								<div class="resume_photo">
									<a href="##" class="box_photo" data-api_type="layer"
										data-api_id="basic_photo"> <span>사진추가</span>
									</a> <a class="photo_delete" href="##" style="display: none;"><span
										class="blind">사진 삭제</span></a>
								</div>
							</div>


						</div>



						<div id="school" class="resume_section blind_guide">
							<div class="area_title">
								<h3 class="title">학력사항</h3>
								<p class="txt_noti">최종학력 선택 후 학력사항을 입력하세요</p>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="school">저장된 정보
										불러오기</button>
								</div>
							</div>


							<div class="resume_write resume_edu">
								<div class="select_title">
									<div class="resume_radio">
										<label class="sri_check sri_radio" for="school_type_primary">
											<input name="school_type" class="inp_check"
											id="school_type_primary" type="radio" value="primary">
											<span class="txt_check">초등학교 졸업</span>
										</label> <label class="sri_check sri_radio" for="school_type_middle">
											<input name="school_type" class="inp_check"
											id="school_type_middle" type="radio" value="middle">
											<span class="txt_check">중학교 졸업</span>
										</label> <label class="sri_check sri_radio" for="school_type_high">
											<input name="school_type" class="inp_check"
											id="school_type_high" type="radio" value="high"> <span
											class="txt_check">고등학교 졸업</span>
										</label> <label class="sri_check sri_radio" for="school_type_univ">
											<input name="school_type" class="inp_check"
											id="school_type_univ" type="radio" value="univ"> <span
											class="txt_check">대학·대학원 이상 졸업</span>
										</label>
										<p class="txt_error">최종학력 선택 후 학력을 입력하세요.</p>
									</div>
								</div>
							</div>

							<div id="education" class="resume_write resume_edu"></div>

							<div id="academy" class="resume_write resume_edu"></div>

							<div id="lastschool" class="resume_write final_edu"
								style="display: none;">
								<input type="hidden" id="education_cd" name="education_cd"
									value=""> <input type="hidden" id="education_status"
									name="education_status" value=""> <input type="hidden"
									id="education_type" name="education_type" value=""> <input
									type="hidden" id="education_seq" name="education_seq" value="">
								<input type="hidden" id="lastschool_nm" name="lastschool_nm"
									value="">

								<div class="resume_row">
									<div class="input_title">
										최종학력 <span class="point">필수</span>
									</div>

									<div class="sri_select resume_select">
										<label for="school_type" class="bar_title">최종학력<span
											class="valid_hidden"> 선택</span></label>
										<button type="button" data-guide="true" name="lastschool"
											class="ico_arr selected size_type5">최종학력 선택</button>
										<input type="hidden" id="lastschool_row" name="lastschool_row">
										<ul class="list_opt">
											<li class="on"><a href="##" class="link_opt"
												data-value=""><span class="valid_hidden"> 선택</span></a></li>
										</ul>
										<p class="txt_error"></p>
									</div>
								</div>
							</div>
						</div>
						<div id="career" class="resume_section blind_guide">
							<input type="hidden" id="career_contents_type"
								name="career_contents_type" value="style"> <input
								type="hidden" id="exchange_usd" name="exchange_usd"
								value="1230.7"> <input type="hidden" id="exchange_jpy"
								name="exchange_jpy" value="1143.88">

							<div class="area_title">
								<h3 class="title">경력사항</h3>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="career">저장된 정보
										불러오기</button>
								</div>
							</div>

							<div class="resume_write resume_career">
								<div class="select_title">
									<div class="resume_radio">
										<label class="sri_check sri_radio" for="career_cd_1">
											<input name="career_cd" class="inp_check" id="career_cd_1"
											type="radio" value="1"> <span class="txt_check">신입</span>
										</label> <label class="sri_check sri_radio" for="career_cd_2">
											<input name="career_cd" class="inp_check" id="career_cd_2"
											type="radio" value="2"> <span class="txt_check">경력</span>
										</label>
										<p class="txt_error"></p>
									</div>
								</div>


								<div id="career_template" style="display: none">

									<div id="tpl_row_1590117061" class="tpl_row"
										data-tpl_id="tpl_career_item">
										<input type="hidden" id="career_mcom_id_1590117061"
											name="career_mcom_idx[]" value=""> <input
											type="hidden" id="career_com_idx_1590117061"
											name="career_com_idx[]" value=""> <input
											type="hidden" id="career_csn1_1590117061"
											name="career_csn1[]" value=""> <input type="hidden"
											id="career_csn2_1590117061" name="career_csn2[]" value="">
										<input type="hidden" id="career_csn3_1590117061"
											name="career_csn3[]" value=""> <input type="hidden"
											id="career_job_category_cd_1590117061"
											name="career_job_category_cd[]" value=""> <input
											type="hidden" id="career_start_year_1590117061"
											name="career_start_year[]" value=""> <input
											type="hidden" id="career_start_month_1590117061"
											name="career_start_month[]" value=""> <input
											type="hidden" id="career_end_year_1590117061"
											name="career_end_year[]" value=""> <input
											type="hidden" id="career_end_month_1590117061"
											name="career_end_month[]" value=""> <input
											type="hidden" id="career_total_month_1590117061"
											name="career_total_month[]"> <input type="hidden"
											id="career_job_grade_1590117061" name="career_job_grade[]"
											value=""> <input type="hidden"
											id="career_job_duties_1590117061" name="career_job_duties[]"
											value=""> <input type="hidden"
											id="career_job_text_input_1590117061"
											name="career_job_text_input[]" value=""> <input
											type="hidden" id="career_comnm_open_fl_1590117061"
											name="career_comnm_open_fl[]" value=""> <input
											type="hidden" id="career_seq_1590117061" name="career_seq[]">
										<input type="hidden" id="profilecareer_seq_1590117061"
											name="profilecareer_seq[]" value="">

										<div class="resume_row">
											<div class="input_title">
												회사명 <span class="point">필수</span>
											</div>
											<div class="resume_input">
												<label for="career_company_nm_1590117061" class="bar_title">회사명<span
													class="valid_hidden"> 입력</span></label> <input type="text"
													id="career_company_nm_1590117061"
													name="career_company_nm[]" value="" class="box_input"
													maxlength="80" data-api_type="auto"
													data-api_id="career_company">
												<p class="txt_error"></p>
											</div>
											<div class="area_check">
												<label for="career_comnm_open_fl_chk_1590117061"
													class="sri_check"> <input type="checkbox"
													id="career_comnm_open_fl_chk_1590117061"
													name="career_comnm_open_fl_chk[]" class="inp_check"
													value="n"> <span class="txt_check">비공개</span>
												</label>
												<div class="toolTipWrap">
													<button type="button" class="btn_guide">
														<span class="blind">비공개 란?</span>
													</button>
													<div class="toolTip">
														<span class="tail tail_top_center"></span>
														<div class="toolTipCont txtLeft">
															<p>
																인재정보 검색에 등록한 이력서에서만 비공개되며,<br> 입사지원시 이력서에는 모두
																공개됩니다.
															</p>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">
												재직기간 <span class="point">필수</span>
											</div>
											<div class="area_period">
												<div class="resume_input">
													<label for="career_start_dt_1590117061" class="bar_title"><span
														class="valid_hidden">YYYYMM</span><span class="blind">입사년월</span></label>
													<input type="text" id="career_start_dt_1590117061"
														name="career_start_dt[]"
														class="expect_date box_input size_type2" value=""
														data-dateformat="yymm" data-only-number="true"
														autocomplete="off">
													<button class="btn_calendar" type="button"></button>
													<p class="txt_error"></p>
												</div>
												<span class="txt_period">~</span>
												<div class="resume_input">
													<label for="career_end_dt_1590117061"
														class="bar_title end_day"><span
														class="valid_hidden">YYYYMM</span><span class="blind">퇴사년월</span></label>
													<input type="text" id="career_end_dt_1590117061"
														name="career_end_dt[]"
														class="expect_date box_input size_type2" value=""
														data-dateformat="yymm" data-only-number="true"
														autocomplete="off">
													<button class="btn_calendar" type="button"></button>
													<p class="txt_error"></p>
												</div>
												<div class="sri_select resume_select">
													<label for="career_retire_fl_1590117061" class="bar_title">재직구분<span
														class="valid_hidden">선택</span></label>
													<button class="ico_arr selected" type="button">퇴사</button>
													<input id="career_retire_fl_1590117061"
														name="career_retire_fl[]" type="hidden" value="y">
													<ul class="list_opt">
														<li class="on"><a class="link_opt" href="##"
															data-value="y">퇴사</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="n">재직중</a></li>
													</ul>
												</div>
												<p class="txt_error"></p>
											</div>
											<p class="info_period period_1590117061"></p>
										</div>

										<div class="resume_row">
											<div class="input_title">퇴사사유</div>
											<div class="resume_bundle">
												<div class="sri_select resume_select">
													<label for="career_retire_reason_sbox_1590117061"
														class="bar_title">퇴사사유<span class="valid_hidden">
															선택</span></label>
													<button class="ico_arr selected" type="button">퇴사사유
														선택</button>
													<input type="hidden"
														id="career_retire_reason_sbox_1590117061"
														name="career_retire_reason_sbox[]" value="">
													<ul class="list_opt">
														<li><a class="link_opt" href="##" data-value="">퇴사사유<span
																class="valid_hidden"> 선택</span></a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="업직종 전환">업직종 전환</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="근무조건">근무조건</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="경영악화">경영악화</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="계약만료">계약만료</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="출산/육아">출산/육아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="학업">학업</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="유학">유학</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="개인사정">개인사정</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="직접입력">직접입력</a></li>
													</ul>
													<p class="txt_error"></p>
												</div>

												<div class="resume_input" style="display: none">
													<label for="career_retire_reason_text_1590117061"
														class="bar_title">퇴사사유<span class="valid_hidden">
															직접입력</span></label> <input type="text"
														id="career_retire_reason_text_1590117061"
														name="career_retire_reason_text[]"
														class="box_input size_type4" value="" maxlength="20">
												</div>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">
												직급/직책 <span class="point">필수</span>
											</div>
											<div class="resume_bundle">
												<div class="resume_input">
													<label for="career_job_grade_duties_1590117061"
														class="bar_title">직급/직책</label> <input type="text"
														id="career_job_grade_duties_1590117061"
														name="career_job_grade_duties[]"
														class="box_input max_length" value="" readonly
														data-api_type="layer"
														data-api_id="career_job_grade_duties" maxlength="20">
													<a href="javascript:void(0)" onclick="return false;"
														class="link_modifie">선택하기</a>
													<p class="txt_error"></p>
												</div>

												<div class="resume_input">
													<label for="career_year_1590117061" class="bar_title">년차<span
														class="valid_hidden"> 입력</span></label> <input type="text"
														id="career_year_1590117061" name="career_year[]" value=""
														class="box_input size_type2" maxlength="2"
														data-only-number="true">
												</div>
												<p class="txt_number"></p>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">
												직종 <span class="point">필수</span>
											</div>
											<div class="resume_input">
												<div class="option option_area">
													<label for="career_job_category_text_1590117061"
														class="bar_title">직종<span class="valid_hidden">
															선택</span></label> <input type="text"
														id="career_job_category_text_1590117061"
														name="career_job_category_text[]" value=""
														class="box_input" data-api_type="layer"
														data-api_id="career_job_category" data-dim="n"
														data-position="unused" readonly>
													<p class="txt_error"></p>
												</div>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">근무지역</div>
											<div class="sri_select resume_select">
												<label for="career_area_cd_1590117061" class="bar_title">근무지역<span
													class="valid_hidden"> 선택</span></label>
												<button class="ico_arr selected" type="button">근무지역
													선택</button>
												<input id="career_area_cd_1590117061"
													name="career_area_cd[]" type="hidden" value="">
												<ul class="list_opt">
													<li class="on"><a class="link_opt" href="##"
														data-value="">근무지역<span class="valid_hidden">
																선택</span></a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="1">서울</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="2">강원</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="3">경기</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="4">경남</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="5">경북</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="6">광주</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="7">대구</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="8">대전</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="9">부산</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="10">울산</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="11">인천</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="12">전남</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="13">전북</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="14">제주</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="15">충남</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="16">충북</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="47">세종</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="17">전국</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="18">미국</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="19">일본</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="20">프랑스</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="21">인도네시아</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="22">중국</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="23">캐나다</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="24">해외</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="25">대만</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="26">러시아</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="27">말레이시아</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="28">방글라데시</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="29">싱가포르</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="30">인도</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="31">인도네시아</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="32">필리핀</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="33">홍콩</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="34">독일</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="35">영국</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="36">호주</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="37">베트남</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="38">스페인</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="39">브라질</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="40">이탈리아</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="41">스위스</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="42">네덜란드</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="43">필리핀</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="44">그리스</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="45">대만</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="46">멕시코</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="99">기타</a></li>
												</ul>
												<p class="txt_error"></p>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">근무부서</div>
											<div class="resume_input">
												<label for="career_dept_nm_1590117061" class="bar_title">근무부서<span
													class="valid_hidden"> 입력</span></label> <input type="text"
													id="career_dept_nm_1590117061" name="career_dept_nm[]"
													class="box_input" value="" maxlength="16">
												<p class="txt_error"></p>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">연봉</div>
											<div class="area_salary">
												<div class="resume_input">
													<label for="career_salary_1590117061" class="bar_title">연봉<span
														class="valid_hidden"> 입력</span></label> <input type="text"
														id="career_salary_1590117061" name="career_salary[]"
														value="" class="box_input size_type3" maxlength="6"
														data-only-number="true">
												</div>

												<div class="sri_select resume_select">
													<label for="career_currency_1590117061" class="bar_title">원화구분</label>
													<button class="ico_arr selected size_type2" type="button">만원</button>
													<input id="career_currency_1590117061"
														name="career_currency[]" type="hidden" value="KRW">
													<ul class="list_opt">
														<li class="on"><a class="link_opt" href="##"
															data-value="KRW">만원</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="USD">달러</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="JPY">엔</a></li>
													</ul>
												</div>

												<p class="txt_number"></p>
												<p class="txt_error"></p>
											</div>
										</div>

										<div class="resume_row">
											<div class="input_title">담당업무</div>
											<div class="resume_textarea">
												<label for="career_contents_1590117061" class="bar_title">담당업무<span
													class="valid_hidden"> 입력</span></label>
												<textarea id="career_contents_1590117061"
													name="career_contents[]" class="box_textarea"></textarea>
											</div>
										</div>

										<div class="resume_project">
											<div class="area_title">
												<h4 class="title">프로젝트 수행이력</h4>
												<p class="txt_noti">프로젝트 수행 이력이 있는 경우 수행 역할을 작성해 보세요!</p>
												<button type="button" class="btn_add btn_resume_add"
													data-tpl_id="tpl_career_project">프로젝트 수행이력 추가</button>
											</div>


										</div>
									</div>

									<div class="area_resume_btn">
										<button type="button" class="btn_resume_add"
											data-tpl_id="tpl_career_item">경력 추가</button>
									</div>
								</div>

								<div id="career_total" style="display: none">
									<div class="area_total_career">
										<div class="resume_row">
											<div class="input_title">
												총 경력 <span class="point">필수</span>
											</div>
											<div class="area_period">
												<div class="resume_input">
													<label for="career_period_year" class="bar_title"><span
														class="valid_hidden">총경력 년수</span><span class="blind">총경력
															기간</span></label> <input type="text" id="career_period_year"
														name="career_period_year" class="box_input" value=""
														readonly maxlength="2" data-only-number="true">
												</div>
												<span class="txt_period">년</span>

												<div class="resume_input">
													<label for="career_period_month" class="bar_title"><span
														class="valid_hidden">총경력 월수</span><span class="blind">총경력
															기간</span></label> <input type="text" id="career_period_month"
														name="career_period_month" class="box_input" value=""
														readonly maxlength="2" data-only-number="true">
												</div>
												<span class="txt_period">개월</span>

												<div class="area_check">
													<label class="sri_check" for="career_repetition_removal">
														<input type="checkbox" id="career_repetition_removal"
														name="career_repetition_removal" class="inp_check"
														value="y"> <span class="txt_check">중복 기간
															빼기</span>
													</label> <label class="sri_check" for="career_user_input">
														<input type="checkbox" id="career_user_input"
														name="career_user_input" class="inp_check" value="y">
														<span class="txt_check">직접입력</span>
													</label> <label class="sri_check" for="abroad_work_fl"> <input
														type="checkbox" id="abroad_work_fl" name="abroad_work_fl"
														class="inp_check" value="y"> <span
														class="txt_check">해외근무</span>
													</label>
												</div>
												<p class="txt_error"></p>
											</div>
										</div>

										<div class="nation_kcd" style="display: none">
											<div class="resume_row">
												<div class="input_title">
													해외근무 국가 <span class="point">필수</span>
												</div>
												<div class="sri_select resume_select">
													<label for="nation_kcd" class="bar_title">국가 <span
														class="valid_hidden">선택</span></label>
													<button class="ico_arr selected" type="button">국가
														선택</button>
													<input id="nation_kcd" name="nation_kcd" type="hidden"
														value="">
													<ul class="list_opt">
														<li class="on"><a class="link_opt" href="##"
															data-value="">국가 <span class="valid_hidden">선택</span></a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="479">가나</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="480">가봉</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7531">가이아나</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7594">감비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7532">과델루프</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="437">과테말라</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="472">괌</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7555">그라나다</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7496">그루지아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="451">그리스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7525">그린란드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7595">기니</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7596">기니비소우</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7533">기아나(프랑스령)</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7597">나미비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21875">나우루공화국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="481">나이지리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="449">남미기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="482">남아프리카공화국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="452">네덜란드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21863">네덜란드령 안틸레스제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7497">네팔</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="453">노르웨이</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="473">뉴질랜드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7584">뉴칼레도니아섬</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7598">니제르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7534">니카라과</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="279">대만</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="454">덴마크</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7526">도미니카공화국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7535">도미니카연방</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="455">독일</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7523">동티모르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7499">라오스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7599">라이베리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7556">라트비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="456">러시아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7601">레뉴니용</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7500">레바논</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7557">루마니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7558">룩셈부르크</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7600">르완다</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="483">리비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7559">리투아니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21868">리히텐슈타인</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7602">마다가스카르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7536">마르티니크섬</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7585">마샬군도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7560">마케도니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7603">말라위</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="280">말레이시아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7604">말리</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="375">멕시코</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7561">모나코</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="484">모로코</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21878">모리셔스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7605">모리타니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7606">모잠비크</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21866">몬테네그로</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21867">몰도바</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7502">몰디브</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7562">몰타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="281">몽골</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7563">몽트세라</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="376">미국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="282">미얀마</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21873">미크로네시아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7586">바누아투</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7503">바레인</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7527">바베이도스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21865">바티칸시국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7528">바하마</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="283">방글라데시</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7529">버뮤다</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7538">버진제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7607">베냉</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="438">베네수엘라</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="284">베트남</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="457">벨기에</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7564">벨로루시</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7539">벨리즈</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7565">보스니아헤르체고비나</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7608">보츠와나</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7540">볼리비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7609">부룬디</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7610">부르키나파소</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7505">부탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="435">북·중미기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21874">북마리아나군도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7506">북한</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7566">불가리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="439">브라질</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7507">브루나이</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7587">사모아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="285">사우디아라비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21510">사이판</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21864">산마리노</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21877">상투메프린시페</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7611">세네갈</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7612">세이셀제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7541">세인트루시아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7542">세인트빈센트그레나딘즈</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21862">세인트키츠네비스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7530">세인트피에르미그온</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7613">세인트헬레나섬</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7614">소말리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21872">솔로몬제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="485">수단</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7543">수리남</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="286">스리랑카</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7615">스와질랜드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="458">스웨덴</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="459">스위스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="460">스페인</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7568">슬로바키아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7567">슬로베니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7508">시리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7616">시에라리온</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7578">신유고연방</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="287">싱가포르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7509">아랍에미레이트연합국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7569">아루바</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7570">아르메니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="440">아르헨티나</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="373">아시아·중동기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7571">아이슬란드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7544">아이티</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7572">아일랜드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7573">아제르바이잔</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7510">아프가니스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="493">아프리카기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7545">안길라</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7574">알바니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7618">알제리</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7619">앙골라</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21876">에리트레아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7575">에스토니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="441">에콰도르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="487">에티오피아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7546">엔티가바부다</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7547">엘살바도르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="461">영국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7511">영국령 인도양식민지</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7512">예멘</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7513">오만</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="477">오세아니아기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7576">오스트리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="442">온두라스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7514">요르단</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="488">우간다</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="443">우루과이</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7515">우즈베키스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7577">우크라이나</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="470">유럽기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7516">이라크</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7517">이란</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7579">이스라엘</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="489">이집트</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="462">이탈리아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="288">인도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="289">인도네시아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="290">일본</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7620">자마이카</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7621">자이르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7622">잠비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7623">적도기니</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="340">중국.홍콩</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7624">중앙아프리카공화국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7625">지부티</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7580">지브롤터</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7626">짐바브웨</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7627">차드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="463">체코</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="444">칠레</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7628">카메룬</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21881">카보베르데</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7518">카자흐스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7519">카타르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="370">캄보디아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="434">캐나다</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="490">케냐</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7548">케이만제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7629">케이프버드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21880">코모로</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7549">코스타리카</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7617">코트디브아르</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="445">콜롬비아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7630">콩고</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21879">콩고민주공화국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="446">쿠바</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7520">쿠웨이트</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7588">쿠크 군도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7581">크로아티아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21861">키르기즈스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7589">키리바시</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7582">키프로스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7521">타지키스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="491">탄자니아</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="371">태국</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7550">터크스앤카이코스제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="464">터키</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7631">토고</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21871">토켈라우제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7590">통가</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7522">투르크메니스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7591">투발루</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="492">튀니지</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7551">트리니나드토바고</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="447">파나마</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7552">파라과이</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7524">파키스탄</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="474">파푸아뉴기니</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21869">팔라우</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7583">페로제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="448">페루</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="465">포르투갈</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7553">포클랜드제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="466">폴란드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7593">폴리네시아제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7554">푸에르토리코</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="467">프랑스</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="475">피지</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="468">핀란드</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="372">필리핀</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="21870">핏케언제도</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="469">헝가리</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="476">호주</a></li>
													</ul>
													<p class="txt_error"></p>
												</div>
											</div>

											<div class="resume_row">
												<div class="input_title">
													해외근무 경력 <span class="point">필수</span>
												</div>
												<div class="area_period">
													<div class="resume_input">
														<label class="bar_title" for="abroad_career_year"><span
															class="valid_hidden">해외근무 년수</span><span class="blind">해외근무
																기간</span></label> <input type="text" id="abroad_career_year"
															name="abroad_career_year" class="box_input" value=""
															maxlength="2" data-only-number="true">
													</div>
													<span class="txt_period">년</span>
													<div class="resume_input">
														<label class="bar_title" for="abroad_career_month"><span
															class="valid_hidden">해외근무 월수</span><span class="blind">해외근무
																기간</span></label> <input type="text" id="abroad_career_month"
															name="abroad_career_month" class="box_input" value=""
															maxlength="2" data-only-number="true">
													</div>
													<span class="txt_period">개월</span>
													<p class="txt_error"></p>
												</div>
											</div>
										</div>
									</div>

									<div class="core_competence">
										<div class="resume_row">
											<div class="input_title">핵심역량</div>

											<div class="area_ability">
												<div class="resume_input">
													<label for="career_core_competence_contents_1"
														class="blind">핵심역량1</label> <input
														class="box_input size_type5" type="text"
														id="career_core_competence_contents_1"
														name="career_core_competence_contents[]" value=""
														maxlength="45" placeholder="핵심역량은 1개당 최대 45자까지 입력 가능합니다.">
													<p class="txt_error"></p>
												</div>
												<div class="resume_input">
													<label for="career_core_competence_contents_2"
														class="blind">핵심역량2</label> <input
														class="box_input size_type5" type="text"
														id="career_core_competence_contents_2"
														name="career_core_competence_contents[]" value=""
														maxlength="45" placeholder="핵심역량은 1개당 최대 45자까지 입력 가능합니다.">
													<p class="txt_error"></p>
												</div>
												<div class="resume_input">
													<label for="career_core_competence_contents_3"
														class="blind">핵심역량3</label> <input
														class="box_input size_type5" type="text"
														id="career_core_competence_contents_3"
														name="career_core_competence_contents[]" value=""
														maxlength="45" placeholder="핵심역량은 1개당 최대 45자까지 입력 가능합니다.">
													<p class="txt_error"></p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="activity" class="resume_section blind_guide"
							data-order_item="activity" data-except="y">
							<div class="area_title">
								<h3 class="title">대외활동</h3>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="activity">저장된 정보
										불러오기</button>
								</div>
							</div>

							<div class="resume_write resume_write_add">

								<div id="tpl_row_1590117062" class="tpl_row"
									data-tpl_id="tpl_activity_item">
									<input type="hidden" id="activity_start_year_1590117062"
										name="activity_start_year[]" value=""> <input
										type="hidden" id="activity_start_month_1590117062"
										name="activity_start_month[]" value=""> <input
										type="hidden" id="activity_start_day_1590117062"
										name="activity_start_day[]" value=""> <input
										type="hidden" id="activity_end_year_1590117062"
										name="activity_end_year[]" value=""> <input
										type="hidden" id="activity_end_month_1590117062"
										name="activity_end_month[]" value=""> <input
										type="hidden" id="activity_end_day_1590117062"
										name="activity_end_day[]" value=""> <input
										type="hidden" id="profileactivity_seq_1590117062"
										name="profileactivity_seq[]" value="">

									<div class="resume_row">
										<div class="input_title">활동구분</div>
										<div class="sri_select resume_select">
											<label for="activity_cd_1590117062" class="bar_title">활동구분<span
												class="valid_hidden"> 선택</span></label>
											<button type="button" class="ico_arr selected">활동구분
												선택</button>
											<input type="hidden" id="activity_cd_1590117062"
												name="activity_cd[]" value="">
											<ul class="list_opt">
												<li class="on"><a class="link_opt" href="##"
													data-value="">활동구분 선택</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="1">교내활동</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="2">인턴</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="3">자원봉사</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="4">동아리</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="5">아르바이트</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="6">사회활동</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7">수행과제</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="abroad">해외연수</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="education">교육이수내역</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>
									</div>

									<div class="resume_row" style="display: none;">
										<div class="input_title">국가</div>
										<div class="sri_select resume_select">
											<label for="nation_cd_1590117062" class="bar_title">국가<span
												class="valid_hidden"> 선택</span></label>
											<button type="button" class="ico_arr selected">국가 선택</button>
											<input type="hidden" id="nation_cd_1590117062"
												name="nation_cd[]" value="">
											<ul class="list_opt">
												<li class="on"><a class="link_opt" href="##"
													data-value="">국가 선택</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="479">가나</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="480">가봉</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7531">가이아나</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7594">감비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7532">과델루프</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="437">과테말라</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="472">괌</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7555">그라나다</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7496">그루지아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="451">그리스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7525">그린란드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7595">기니</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7596">기니비소우</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7533">기아나(프랑스령)</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7597">나미비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21875">나우루공화국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="481">나이지리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="449">남미기타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="482">남아프리카공화국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="452">네덜란드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21863">네덜란드령 안틸레스제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7497">네팔</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="453">노르웨이</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="473">뉴질랜드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7584">뉴칼레도니아섬</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7598">니제르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7534">니카라과</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="279">대만</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="454">덴마크</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7526">도미니카공화국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7535">도미니카연방</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="455">독일</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7523">동티모르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7499">라오스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7599">라이베리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7556">라트비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="456">러시아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7601">레뉴니용</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7500">레바논</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7557">루마니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7558">룩셈부르크</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7600">르완다</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="483">리비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7559">리투아니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21868">리히텐슈타인</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7602">마다가스카르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7536">마르티니크섬</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7585">마샬군도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7560">마케도니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7603">말라위</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="280">말레이시아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7604">말리</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="375">멕시코</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7561">모나코</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="484">모로코</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21878">모리셔스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7605">모리타니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7606">모잠비크</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21866">몬테네그로</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21867">몰도바</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7502">몰디브</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7562">몰타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="281">몽골</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7563">몽트세라</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="376">미국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="282">미얀마</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21873">미크로네시아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7586">바누아투</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7503">바레인</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7527">바베이도스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21865">바티칸시국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7528">바하마</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="283">방글라데시</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7529">버뮤다</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7538">버진제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7607">베냉</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="438">베네수엘라</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="284">베트남</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="457">벨기에</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7564">벨로루시</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7539">벨리즈</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7565">보스니아헤르체고비나</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7608">보츠와나</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7540">볼리비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7609">부룬디</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7610">부르키나파소</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7505">부탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="435">북·중미기타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21874">북마리아나군도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7506">북한</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7566">불가리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="439">브라질</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7507">브루나이</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7587">사모아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="285">사우디아라비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21510">사이판</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21864">산마리노</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21877">상투메프린시페</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7611">세네갈</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7612">세이셀제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7541">세인트루시아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7542">세인트빈센트그레나딘즈</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21862">세인트키츠네비스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7530">세인트피에르미그온</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7613">세인트헬레나섬</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7614">소말리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21872">솔로몬제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="485">수단</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7543">수리남</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="286">스리랑카</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7615">스와질랜드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="458">스웨덴</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="459">스위스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="460">스페인</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7568">슬로바키아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7567">슬로베니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7508">시리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7616">시에라리온</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7578">신유고연방</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="287">싱가포르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7509">아랍에미레이트연합국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7569">아루바</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7570">아르메니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="440">아르헨티나</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="373">아시아·중동기타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7571">아이슬란드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7544">아이티</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7572">아일랜드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7573">아제르바이잔</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7510">아프가니스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="493">아프리카기타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7545">안길라</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7574">알바니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7618">알제리</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7619">앙골라</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21876">에리트레아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7575">에스토니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="441">에콰도르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="487">에티오피아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7546">엔티가바부다</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7547">엘살바도르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="461">영국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7511">영국령 인도양식민지</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7512">예멘</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7513">오만</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="477">오세아니아기타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7576">오스트리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="442">온두라스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7514">요르단</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="488">우간다</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="443">우루과이</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7515">우즈베키스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7577">우크라이나</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="470">유럽기타</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7516">이라크</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7517">이란</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7579">이스라엘</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="489">이집트</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="462">이탈리아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="288">인도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="289">인도네시아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="290">일본</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7620">자마이카</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7621">자이르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7622">잠비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7623">적도기니</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="340">중국.홍콩</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7624">중앙아프리카공화국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7625">지부티</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7580">지브롤터</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7626">짐바브웨</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7627">차드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="463">체코</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="444">칠레</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7628">카메룬</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21881">카보베르데</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7518">카자흐스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7519">카타르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="370">캄보디아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="434">캐나다</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="490">케냐</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7548">케이만제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7629">케이프버드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21880">코모로</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7549">코스타리카</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7617">코트디브아르</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="445">콜롬비아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7630">콩고</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21879">콩고민주공화국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="446">쿠바</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7520">쿠웨이트</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7588">쿠크 군도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7581">크로아티아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21861">키르기즈스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7589">키리바시</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7582">키프로스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7521">타지키스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="491">탄자니아</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="371">태국</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7550">터크스앤카이코스제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="464">터키</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7631">토고</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21871">토켈라우제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7590">통가</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7522">투르크메니스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7591">투발루</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="492">튀니지</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7551">트리니나드토바고</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="447">파나마</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7552">파라과이</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7524">파키스탄</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="474">파푸아뉴기니</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21869">팔라우</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7583">페로제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="448">페루</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="465">포르투갈</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7553">포클랜드제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="466">폴란드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7593">폴리네시아제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="7554">푸에르토리코</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="467">프랑스</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="475">피지</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="468">핀란드</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="372">필리핀</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="21870">핏케언제도</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="469">헝가리</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="476">호주</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>
									</div>


									<div class="resume_row">
										<div class="input_title">기관/장소</div>
										<div class="resume_input">
											<label for="activity_org_1590117062" class="bar_title">기관/장소<span
												class="valid_hidden"> 입력</span></label> <input type="text"
												id="activity_org_1590117062" name="activity_org[]" value=""
												maxlength="50" class="box_input">
											<p class="txt_error"></p>
										</div>
									</div>

									<div class="resume_row">
										<div class="input_title">활동기간</div>
										<div class="area_period">
											<div class="sri_select resume_select">
												<label for="dateformat_1590117062" class="bar_title">입력
													선택</label>
												<button type="button" class="ico_arr selected">월입력</button>
												<input type="hidden" id="dateformat_1590117062"
													name="dateformat[]" value="yymm">
												<ul class="list_opt">
													<li class="on"><a href="##" class="link_opt"
														data-value="yymm">월입력</a></li>
													<li class=""><a href="##" class="link_opt"
														data-value="yymmdd">일입력</a></li>
												</ul>
											</div>
											<div class="resume_input">
												<label for="activity_start_1590117062" class="bar_title">
													<span class="valid_hidden">YYYYMM</span> <span
													class="blind">활동기간(년월)</span>
												</label> <input type="text" id="activity_start_1590117062"
													name="activity_start[]" class="expect_date box_input"
													value="" maxlength="6" data-only-number="true"
													data-dateformat="yymm" autocomplete="off">
												<button type="button" class="btn_calendar"></button>
												<p class="txt_error"></p>
											</div>

											<span class="txt_period">~</span>

											<div class="resume_input">
												<label for="activity_end_1590117062"
													class="bar_title end_day"> <span
													class="valid_hidden">YYYYMM</span> <span class="blind">활동기간(년월)</span>
												</label> <input type="text" id="activity_end_1590117062"
													name="activity_end[]" class="expect_date box_input"
													value="" maxlength="6" data-only-number="true"
													data-dateformat="yymm" autocomplete="off">
												<button type="button" class="btn_calendar"></button>
												<p class="txt_error"></p>
											</div>
											<p class="txt_error"></p>
										</div>
									</div>

									<div class="resume_row">
										<div class="input_title">활동내용</div>
										<div class="resume_textarea">
											<label for="activity_contents_1590117062" class="bar_title">활동내용<span
												class="valid_hidden"> 입력</span></label>
											<textarea id="activity_contents_1590117062"
												name="activity_contents[]" class="box_textarea"></textarea>
											<p class="txt_error"></p>
										</div>
									</div>
								</div>

								<div class="area_add_btn">
									<button type="button" class="btn_resume_add"
										data-tpl_id="tpl_activity_item">
										<span>대외활동 추가</span>
									</button>
								</div>
							</div>
						</div>
						<div id="license" class="resume_section blind_guide"
							data-order_item="license" data-except="y">
							<div class="area_title">
								<h3 class="title">자격증/어학/수상 내역</h3>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="license">저장된 정보
										불러오기</button>
								</div>
							</div>

							<div class="resume_write resume_write_add">

								<div id="tpl_row_1590117063" class="tpl_row"
									data-tpl_id="tpl_license_default">
									<div class="resume_row">
										<div class="input_title">항목선택</div>
										<div class="sri_select resume_select">
											<label for="item_type_1590117063" class="bar_title">항목선택</label>
											<button class="ico_arr selected" type="button">항목선택</button>
											<input id="item_type_1590117063" name="item_type[]"
												type="hidden" value="">
											<ul class="list_opt">
												<li class="on"><a class="link_opt" href="##"
													data-value="">항목선택</a></li>
												<li><a class="link_opt" href="##" data-value="license">자격증/면허증</a></li>
												<li><a class="link_opt" href="##"
													data-value="language_exam">어학시험</a></li>
												<li><a class="link_opt" href="##"
													data-value="certification">수상내역/공모전</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>
									</div>
								</div>

								<div class="area_add_btn">
									<button type="button" class="btn_resume_add"
										data-tpl_id="tpl_license_default">
										<span>자격증/어학/수상내역 추가</span>
									</button>
								</div>
							</div>
						</div>
						<div id="skill" class="resume_section" data-order_item="skill"
							data-except="y">
							<div class="area_title">
								<h3 class="title">보유기술 및 능력</h3>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="skill">저장된 정보
										불러오기</button>
								</div>
							</div>

							<div class="resume_write resume_write_add">
								<div class="resume_skill">
									<div class="resume_row">
										<div class="input_title">보유기술</div>
										<div class="area_skill">
											<div class="resume_input search_input">
												<label for="s_ability_gb" class="bar_title">보유기술 입력
													<span class="valid_hidden">(ex. 문서작성능력, 비즈니스영어,
														커뮤니케이션스킬, java 등)</span>
												</label> <input type="text" id="s_ability_gb"
													class="box_input size_type5" maxlength="45"
													data-api_type="auto" data-api_id="skill" data-min_len="2">
												<button type="button" class="btn_reset"
													style="display: block">
													<span class="blind">삭제</span>
												</button>
											</div>
											<div class="box_skill_suggest" style="display: none;">
												<p class="txt_suggest"></p>
												<ul class="list_suggest">
													<li><button type="button" class="btn_check on"
															disabled=""></button></li>
												</ul>
												<button type="button" class="link_text btn_skill_refresh">새로운
													추천보유기술 보기</button>
											</div>
											<div class="area_task_input resume_input"
												style="display: none;">
												<ul class="list_task list_skill">
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="personal" class="resume_section blind_guide"
							data-order_item="personal" data-except="y">
							<input type="hidden" id="military_start_year"
								name="military_start_year" value=""> <input
								type="hidden" id="military_start_month"
								name="military_start_month" value=""> <input
								type="hidden" id="military_end_year" name="military_end_year"
								value=""> <input type="hidden" id="military_end_month"
								name="military_end_month" value="">

							<div class="area_title">
								<h3 class="title">취업 우대사항</h3>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="personal">저장된 정보
										불러오기</button>
								</div>
							</div>

							<div class="resume_write">
								<div id="veterans">
									<div class="resume_row">
										<div class="input_title">보훈대상</div>
										<div class="resume_bundle">
											<div class="sri_select resume_select">
												<label for="bohun_fl" class="bar_title">보훈대상<span
													class="valid_hidden"> 선택</span></label>
												<button type="button" class="ico_arr selected">보훈대상
													선택</button>
												<input type="hidden" name="bohun_fl" id="bohun_fl" value="n"
													data-required="true" data-item="personal">
												<ul class="list_opt">
													<li class="on"><a class="link_opt" href="##"
														data-value="n">비대상</a></li>
													<li class=""><a class="link_opt" href="##"
														data-value="y">대상</a></li>
												</ul>
												<p class="txt_error"></p>
											</div>
										</div>
									</div>

									<div class="resume_row" style="display: none">
										<div class="input_title">대상사유</div>
										<div class="resume_input">
											<label for="bohun_contents" class="bar_title">대상사유<span
												class="valid_hidden"> 입력</span></label> <input type="text"
												id="bohun_contents" name="bohun_contents" value=""
												maxlength="22" class="box_input size_type5">
											<p class="txt_error"></p>
										</div>
									</div>
								</div>

								<div id="military" class="area_military">
									<div class="resume_row">
										<div class="input_title">병역대상</div>
										<div class="sri_select resume_select">
											<button type="button" class="ico_arr selected">병역대상
												선택</button>
											<input type="hidden" name="military_cd" id="military_cd"
												value="">
											<ul class="list_opt">
												<li class="on"><a class="link_opt" href="##"
													data-value="">대상아님</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="1">군필</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="2">미필</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="3">면제</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="4">복무중</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>
									</div>

									<div class="resume_row" style="display: none">
										<div class="input_title">복무기간</div>
										<div class="military_bundle">
											<div class="area_period">
												<div class="resume_input">
													<label for="military_start_dt" class="bar_title"><span
														class="valid_hidden">YYYYMM</span><span class="blind">입대날짜</span></label>
													<input type="text" id="military_start_dt"
														name="military_start_dt" class="expect_date box_input"
														value="" maxlength="6" data-only-number="true"
														data-dateformat="yymm" autocomplete="off">
													<button type="button" class="btn_calendar"></button>
													<p class="txt_error"></p>
												</div>

												<span class="txt_period">~</span>

												<div class="resume_input">
													<label for="military_end_dt" class="bar_title end_day"><span
														class="valid_hidden">YYYYMM</span><span class="blind">제대날짜</span></label>
													<input type="text" id="military_end_dt"
														name="military_end_dt" class="expect_date box_input"
														value="" maxlength="6" data-only-number="true"
														data-dateformat="yymm" autocomplete="off">
													<button type="button" class="btn_calendar"></button>
													<p class="txt_error"></p>
												</div>
												<p class="txt_error"></p>
											</div>

											<div class="military_service">
												<div class="sri_select resume_select">
													<label for="military_kind_cd" class="bar_title">군별<span
														class="valid_hidden"> 선택</span></label>
													<button type="button" class="ico_arr selected size_type2">군별
														선택</button>
													<input type="hidden" name="military_kind_cd"
														id="military_kind_cd" value="">
													<ul class="list_opt">
														<li class="on"><a class="link_opt" href="##"
															data-value="">군별<span class="valid_hidden"> 선택</span></a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="1">육군</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="2">해군</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="3">공군</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="4">해병</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="5">의경</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="6">전경</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7">기타</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="8">공익</a></li>
													</ul>
													<p class="txt_error"></p>
												</div>

												<div class="sri_select resume_select">
													<label for="military_class_cd" class="bar_title">계급<span
														class="valid_hidden"> 선택</span></label>
													<button type="button" class="ico_arr selected size_type2">계급
														선택</button>
													<input type="hidden" name="military_class_cd"
														id="military_class_cd" value="">
													<ul class="list_opt">
														<li class="on"><a class="link_opt" href="##"
															data-value=""><span class="valid_hidden"> 선택</span></a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="1">이병</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="2">일병</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="3">상병</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="4">병장</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="5">하사</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="6">중사</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7">상사</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="8">원사</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="9">준위</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="10">소위</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="11">중위</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="12">대위</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="13">소령</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="14">중령</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="15">대령</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="16">준장</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="17">소장</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="18">중장</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="19">대장</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="20">기타</a></li>
													</ul>
													<p class="txt_error"></p>
												</div>

												<div class="sri_select resume_select">
													<label for="military_end_cd" class="bar_title">전역
														사유<span class="valid_hidden"> 선택</span>
													</label>
													<button type="button" class="ico_arr selected">전역
														사유 선택</button>
													<input type="hidden" name="military_end_cd"
														id="military_end_cd" value="">
													<ul class="list_opt">
														<li class="on"><a class="link_opt" href="##"
															data-value="">전역 사유<span class="valid_hidden">
																	선택</span></a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="1">만기제대</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="2">의가사제대</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="3">의병제대</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="4">소집해제</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="5">불명예제대</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="6">상이제대</a></li>
														<li class=""><a class="link_opt" href="##"
															data-value="7">기타</a></li>
													</ul>
												</div>
												<p class="txt_error"></p>
											</div>
										</div>
									</div>

									<div class="resume_row" style="display: none">
										<div class="input_title">면제 사유</div>
										<div class="resume_input">
											<label for="military_contents" class="bar_title">면제
												사유<span class="valid_hidden"> 입력</span>
											</label> <input type="text" id="military_contents"
												name="military_contents" class="box_input size_type5"
												value="" maxlength="100">
											<p class="txt_error"></p>
										</div>
									</div>
								</div>


								<div id="hire_support" class="area_hire_support">
									<div class="resume_row">
										<div class="input_title">고용지원금 대상</div>

										<div class="sri_select resume_select">
											<label for="hire_support_fl" class="bar_title">고용지원금대상<span
												class="valid_hidden"> 선택</span></label>
											<button type="button" class="ico_arr selected">비대상</button>
											<input type="hidden" name="hire_support_fl"
												id="hire_support_fl" value="n">
											<ul class="list_opt">
												<li class="on"><a class="link_opt" href="##"
													data-value="n">비대상</a></li>
												<li class=""><a class="link_opt" href="##"
													data-value="y">대상</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>
										<a
											href="https://www.ei.go.kr/ei/eih/eg/eb/ebEntrprBnef/retrieveEb0401Info.do"
											target="_blank" class="link_converter">고용지원금 제도 보기 &gt;</a>



										<div>
											<ul class="list_hire_support" style="display: none">
												<li><label class="sri_check" for="hire_support1">
														<input type="checkbox" name="hire_support[]" value="hs1"
														id="hire_support1" class="inp_check"> <span
														class="txt_check">고령자</span>
												</label></li>
												<li><label class="sri_check" for="hire_support3">
														<input type="checkbox" name="hire_support[]" value="hs3"
														id="hire_support3" class="inp_check"> <span
														class="txt_check">중증장애인</span>
												</label></li>
												<li><label class="sri_check" for="hire_support4">
														<input type="checkbox" name="hire_support[]" value="hs4"
														id="hire_support4" class="inp_check"> <input
														type="hidden" name="disabled_fl" id="disabled_fl"
														value="n"> <span class="txt_check">장애인</span>
												</label>

													<div class="sri_select resume_select">
														<label for="disabled_cd" class="bar_title">장애등급<span
															class="valid_hidden"> 선택</span></label>
														<button type="button" class="ico_arr selected" disabled>장애등급
															선택</button>
														<input type="hidden" name="disabled_cd" id="disabled_cd"
															value="">
														<ul class="list_opt">
															<li class="on"><a class="link_opt" href="##"
																data-value="">장애등급<span class="valid_hidden">
																		선택</span></a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="1">장애1급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="2">장애2급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="3">장애3급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="4">장애4급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="5">장애5급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="6">장애6급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="7">장애7급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="8">장애8급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="9">장애9급</a></li>
															<li class=""><a class="link_opt" href="##"
																data-value="10">장애10급</a></li>
														</ul>
														<p class="txt_error"></p>
													</div></li>
												<li><label class="sri_check" for="hire_support2">
														<input type="checkbox" name="hire_support[]" value="hs2"
														id="hire_support2" class="inp_check"> <span
														class="txt_check">여성가장</span>
												</label></li>
												<li><label class="sri_check" for="hire_support5">
														<input type="checkbox" name="hire_support[]" value="hs5"
														id="hire_support5" class="inp_check"> <span
														class="txt_check">장기구직자</span>
												</label></li>
												<li><label class="sri_check" for="hire_support6">
														<input type="checkbox" name="hire_support[]" value="hs6"
														id="hire_support6" class="inp_check"> <span
														class="txt_check">청년취업대상자
															<div class="toolTipWrap">
																<button type="button" class="btn_guide">
																	<span class="blind">청년취업대상자 설명</span>
																</button>
																<div class="toolTip"
																	style="display: none; margin-left: -90px; width: 180px;">
																	<span class="tail tail_top_center"></span>
																	<div class="toolTipCont txtCenter">
																		<p class="txt">취업지원프로그램 이수</p>
																	</div>
																</div>
															</div>
													</span>
												</label></li>
												<li style="clear: both"><label class="sri_check"
													for="hire_support7"> <input type="checkbox"
														name="hire_support[]" value="hs7" id="hire_support7"
														class="inp_check"> <span class="txt_check">여성근로자
															<div class="toolTipWrap">
																<button type="button" class="btn_guide">
																	<span class="blind">여성근로자 설명</span>
																</button>
																<div class="toolTip"
																	style="display: none; margin-left: -86px; width: 172px">
																	<span class="tail tail_top_center"></span>
																	<div class="toolTipCont txtCenter">
																		<p class="txt">임신,출산,육아로 이직</p>
																	</div>
																</div>
															</div>
													</span>
												</label></li>
												<li><label class="sri_check" for="hire_support8">
														<input type="checkbox" name="hire_support[]" value="hs8"
														id="hire_support8" class="inp_check"> <span
														class="txt_check">농어업인
															<div class="toolTipWrap">
																<button type="button" class="btn_guide">
																	<span class="blind">농어업인 설명</span>
																</button>
																<div class="toolTip"
																	style="display: none; margin-left: -120px; width: 240px">
																	<span class="tail tail_top_center"></span>
																	<div class="toolTipCont txtCenter">
																		<p class="txt">폐업지원금 대상자 및 수령 경험자</p>
																	</div>
																</div>
															</div>
													</span>
												</label></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="attach_port_files" class="resume_section"
							data-order_item="attach_port_files" data-except="y">
							<div class="area_title">
								<h3 class="title">포트폴리오 및 기타문서</h3>
							</div>



							<div class="resume_write">
								<div class="resume_row" data-tpl_id="tpl_attach_files">
									<p class="noti_portfolio">
										직무와 연관되는 포트폴리오, 기획서, 자격증 사본 등을 업데이트 하세요<br> 입사 가능성이 더욱
										높아집니다.
									</p>
								</div>
								<div class="area_add_btn">
									<button type="button" class="btn_resume_add"
										data-api_type="layer" data-api_id="attach_file">
										<span>포트폴리오 및 기타문서 추가</span>
									</button>
								</div>
							</div>
						</div>
						<div id="career_profile" class="resume_section"
							data-order_item="career_profile" data-except="y">
							<div class="area_title">
								<h3 class="title">경력기술서</h3>

								<div class="area_import_btn">
									<button type="button" class="btn" data-api_type="layer"
										data-api_id="item_import" data-item="career_profile">저장된
										정보 불러오기</button>
								</div>
							</div>

							<div class="resume_write career_profile">
								<div class="intro_item_wrap">
									<div class="write_area" id="write_area">
										<div class="inner_wrap">
											<div class="tpl_row intro_item"
												data-tpl_id="tpl_career_profile">
												<div class="item_txt">
													<div class="textarea_wrap">
														<label class="txt" for="career_profile">최근 경력부터
															역순으로 작성하며, 주요업무 내용 단위로 본인의 역할과 객관적인 성과를 작성해보세요.<br>(업무
															주요내용, 기간, 역할, 기여도, 성과 등을 작성하며 본인의 역량과 업무 능숙도를 어필해보세요.)
														</label>
														<textarea id="career_profile" name="career_profile"
															class="textarea_type1" rows="1" cols="100"
															data-char-count="true"></textarea>
													</div>

													<div class="spellcheck" style="display: none;">
														<div class="item_spellcheck">
															<p class="info_txt">
																<span class="title"><strong class="point">0개</strong>의
																	오타가 있습니다.</span><br> <span class="point">붉은색 단어</span>를
																클릭하시면 수정하실 수 있습니다.
															</p>
															<div class="btn_wrap">

																<div class="btn_spellall_change_wrap">
																	<button type="button"
																		class="btn_type4 btn_spellall_change">맞춤법 일괄
																		수정</button>
																	<a class="btn_tip" href="#none">
																		<div class="toolTip">
																			<span class="tail tail_bottom_center"></span>
																			<div class="toolTipCont">
																				<p class="tip_txt">클릭 시 모두 첫 번째 대체어로 수정됩니다.</p>
																			</div>
																		</div>
																	</a>
																</div>

																<button type="button"
																	class="btn_type4 btn_spellchek_layer"
																	data-api_type="layer"
																	data-api_id="introduce_spell_details">검사 결과
																	상세보기</button>
															</div>
														</div>

														<div class="txt" style="white-space: pre-wrap"></div>

													</div>
												</div>
												<div class="item_edit">
													<div class="txt_length">
														<strong class="title_length">총 글자수 </strong> <span
															class="txt_byte">(공백포함) <strong class="input-char">0</strong>
															자 / <strong class="input-byte">0</strong> byte
														</span> <i class="bar">|</i> <span class="txt_byte">(공백제외)
															<strong class="input-char">0</strong> 자 / <strong
															class="input-byte">0</strong> byte
														</span>
													</div>
													<div class="btn_wrap">
														<button type="button" class="btn_type4 btn_spelling_check">맞춤법검사</button>
														<button type="button"
															class="btn_type4 btn_spellcheck_done"
															style="display: none;">맞춤법 검사완료</button>
														<button type="button"
															class="btn_type4 btn_spellcheck_cancel"
															style="display: none;">취소</button>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="introduce" data-order_item="introduce" data-except="y">
							<input type="hidden" id="intro_template" name="intro_template"
								value="standard">

							<div class="resume_section" id="introduce_write">
								<div class="area_title">
									<h3 class="title">자기소개서</h3>

									<p class="txt_noti">각 항목명은 변경할 수 있으며(최대 100자), 항목은 총 10개까지
										작성 가능합니다.</p>

									<div class="area_import_btn">
										<button type="button" class="btn" data-api_type="layer"
											data-api_id="introduce_contents_items">자기소개서 항목 예시</button>
										<button type="button" class="btn" data-api_type="layer"
											data-api_id="item_import" data-item="introduce">저장된
											정보 불러오기</button>
										<!--                <button type="button" class="btn" data-api_type="layer" data-api_id="introduce_import">저장된 정보 불러오기</button>-->
									</div>
								</div>

								<!--        <div class="resume_write area_self_title">-->
								<!--            <div class="area_btn_self">-->
								<!--                <button type="button" class="btn_self" data-api_type="layer" data-api_id="introduce_import"><strong>내 자소서 불러오기</strong></button>-->
								<!--                <button type="button" class="btn_self" data-api_type="layer" data-api_id="introduce_save"><strong>자소서 관리에 저장하기</strong></button>-->
								<!--                <button type="button" class="btn_self" data-api_type="layer" data-api_id="introduce_contents_items">자기소개서 항목 예시</button>-->
								<!--                <p class="txt_noti">각 항목명은 변경할 수 있으며(최대 100자), 항목은 총 10개까지 작성 가능합니다.</p>-->
								<!--            </div>-->
								<!--        </div>-->

								<div class="intro_item_wrap">
									<div class="write_area">
										<div id="introduce_items" class="inner_wrap">

											<div id="tpl_row_1590117064" class="tpl_row intro_item on"
												data-tpl_id="tpl_introduce_item">
												<div class="item_title">
													<div class="input_wrap">
														<label for="intro_title_1590117064" class="txt">자소서
															제목</label> <input type="text" id="intro_title_1590117064"
															name="intro_title[]" class="input_type1" value=""
															maxlength="100">
														<p class="txt_error"></p>
													</div>
												</div>

												<div class="item_txt">
													<div class="textarea_wrap">
														<label for="intro_contents_1590117064" class="txt">자소서
															내용</label>
														<textarea id="intro_contents_1590117064"
															name="intro_contents[]" class="textarea_type1" rows="1"
															cols="100" data-char-count="true"></textarea>
													</div>

													<div class="spellcheck" style="display: none;">
														<div class="item_spellcheck">
															<p class="info_txt">
																<span class="title"><strong class="point">0개</strong>의
																	오타가 있습니다.</span><br> <span class="point">붉은색 단어</span>를
																클릭하시면 수정하실 수 있습니다.
															</p>
															<div class="btn_wrap">

																<div class="btn_spellall_change_wrap">
																	<button type="button"
																		class="btn_type4 btn_spellall_change">맞춤법 일괄
																		수정</button>
																	<a class="btn_tip" href="#none">
																		<div class="toolTip">
																			<span class="tail tail_bottom_center"></span>
																			<div class="toolTipCont">
																				<p class="tip_txt">클릭 시 모두 첫 번째 대체어로 수정됩니다.</p>
																			</div>
																		</div>
																	</a>
																</div>

																<button type="button"
																	class="btn_type4 btn_spellchek_layer"
																	data-api_type="layer"
																	data-api_id="introduce_spell_details">검사 결과
																	상세보기</button>
															</div>
														</div>

														<div class="txt" style="white-space: pre-wrap"></div>

													</div>
												</div>

												<div class="item_edit">
													<div class="txt_length">
														<strong class="title_length">글자수 </strong> <span
															class="txt_byte">(공백포함) <strong class="input-char">0</strong>
															자 / <strong class="input-byte">0</strong> byte
														</span> <i class="bar">|</i> <span class="txt_byte">(공백제외)
															<strong class="input-char">0</strong> 자 / <strong
															class="input-byte">0</strong> byte
														</span>
													</div>
													<div class="btn_wrap">
														<button type="button" class="btn_type4 btn_spelling_check">맞춤법검사</button>

														<button type="button"
															class="btn_type4 btn_spellcheck_done"
															style="display: none;">맞춤법 검사완료</button>
														<button type="button"
															class="btn_type4 btn_spellcheck_cancel"
															style="display: none;">취소</button>
													</div>
												</div>
											</div>
											<div class="txt_total_length">
												<div class="txt_length">
													<strong class="title_length">총 글자수</strong> <span
														class="txt_byte"><strong class="input-char point">0</strong>
														자 / <strong class="input-byte">0</strong> byte</span>
												</div>
											</div>
											<div class="area_add_btn">
												<button type="button" class="btn_resume_add"
													data-tpl_id="tpl_introduce_item">자기소개서 항목 추가</button>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="area_btn_order blind">
								입력하신 자기소개서 항목의 순서를 변경하실 수 있습니다.
								<button type="button" class="btn_order" data-api_type="layer"
									data-api_id="change_order">자소서 항목 순서 변경</button>
							</div>

						</div>
						<div id="svq" class="resume_section" data-order_item="svq"
							data-except="y">
							<div class="area_title">
								<h3 class="title">사람인 인∙적성 검사</h3>
							</div>

							<div class="resume_write resume_svq">
								<div class="resume_row">
									<p class="noti_portfolio">
										<b>응시 완료한</b> 사람인 인・적성 검사 결과를 <b>각 1개씩 첨부</b>할 수 있습니다.<br>
										사람인 인성검사, 적성검사는 최초 응시일로부터 1년간 최대 4회 응시 할 수 있으며 검사 완료 30일 후
										재응시가 가능합니다.<br> 선택한 인·적성검사 결과는 입사지원 시 이력서에 첨부되어 제출됩니다.
									</p>
								</div>

								<div class="area_title svqTitle">
									<h4 class="title">인성검사</h4>
									<button type="button" data-exam_id="88" data-exam_type="svq"
										class="btn_retake apply">무료 인성검사 응시하기</button>
								</div>

								<div class="resume_row svqList">
									<div class="box_svq">
										<p class="txt_no">응시 완료된 인성검사가 없습니다.</p>
										<button type="button" data-exam_id="88" data-exam_type="svq"
											class="btn_svq apply">무료 인성검사 응시하기</button>
									</div>
								</div>
								<div class="area_title aptitudeTitle">
									<h4 class="title">적성검사</h4>
									<button type="button" data-exam_id="101"
										data-exam_type="aptitude" class="btn_retake apply">무료
										적성검사 응시하기</button>
								</div>

								<div class="resume_row aptitudeList">
									<div class="box_svq">
										<p class="txt_no">응시 완료된 적성검사가 없습니다.</p>
										<button type="button" data-exam_id="101"
											data-exam_type="aptitude" class="btn_svq apply">무료
											적성검사 응시하기</button>
									</div>
								</div>
							</div>
						</div>
						<div id="resume_title" class="resume_section blind_guide">
							<h3 class="blind">이력서 제목</h3>
							<div class="resume_title">
								<div class="resume_input">
									<label for="title" class="bar_title blind">이력서 제목<span
										class="valid_hidden">을 입력하세요 (100자까지 입력가능)</span></label> <input
										type="text" id="title" name="title" class="resume_title_input"
										value="" maxlength="100"
										data-placeholder_empty="이력서 제목<span class='valid_hidden'>을 입력하세요 (100자까지 입력가능)</span>"
										data-placeholder_title="이력서 제목">
									<p class="txt_error">에러 메세지 영역 입니다</p>
								</div>
							</div>
							<div class="resume_title_tooltip" style="display: none;">
								<span class="tail_top_left"></span>
								<div class="tooltip_inner">
									<p class="txt_noti">
										<strong class="point">제목 추천 서비스!</strong> 입력하신 내용을 조합해서, <strong>이력서
											제목을 추천</strong>해드립니다.
									</p>
									<ul class="list_radio_title"></ul>
								</div>
								<button type="button" class="btn_refresh">새로운 추천목록 보기</button>
							</div>
						</div>
						<div id="desire_work" class="resume_section">
							<div class="area_title title_recommend">
								<h3 class="title">희망 근무조건 선택</h3>
							</div>


							<div class="resume_write">
								<input type="hidden" name="apply_dept" id="apply_dept" value="">
								<input type="hidden" name="applycareer_gb" id="applycareer_gb"
									value=""> <input type="hidden" name="possible_work_day"
									id="possible_work_day" value=",,">

								<div>
									<div class="resume_row">
										<div class="input_title">
											근무형태 <span class="point">필수</span><span class="s_txt">최대
												3개</span>
										</div>
										<div class="option option_area">
											<div id="desire_apply_work_stat"
												class="area_task_input resume_input">
												<input type="hidden" id="apply_work_stat"
													name="apply_work_stat" value=""> <label
													for="apply_work_stat" class="bar_title">근무형태<span
													class="valid_hidden"> (최대 3개)</span></label>
												<div>
													<ul class="list_task list_hope_local size_type5"></ul>
												</div>
												<button type="button" data-api_type="layer"
													data-api_id="desire_apply_work_stat" data-dim="n"
													data-position="unused" class="link_modifie">수정 ·
													추가하기 &gt;</button>
												<p class="txt_error"></p>
											</div>
										</div>
									</div>

									<div class="resume_row">
										<div class="input_title">근무 가능 날짜</div>
										<div class="area_period">
											<div class="resume_input">
												<label for="possible_work_day_start" class="bar_title"><span
													class="valid_hidden">YYYYMMDD</span><span class="blind">근무
														시작 날짜</span></label> <input type="text" id="possible_work_day_start"
													name="possible_work_day_start"
													class="expect_date box_input" value=""
													data-only-number="true" data-dateformat="yymmdd"
													autocomplete="off">
												<button type="button" class="btn_calendar"></button>
												<p class="txt_error"></p>
											</div>
											<span class="txt_period">~</span>
											<div class="resume_input">
												<label for="possible_work_day_end" class="bar_title end_day"><span
													class="valid_hidden">YYYYMMDD</span><span class="blind">근무
														종료 날짜</span></label> <input type="text" id="possible_work_day_end"
													name="possible_work_day_end" class="expect_date box_input"
													value="" data-only-number="true" data-dateformat="yymmdd"
													autocomplete="off">
												<button type="button" class="btn_calendar"></button>
												<p class="txt_error"></p>
											</div>
											<div class="area_check">
												<label for="possible_work_day_immediate" class="sri_check">
													<input type="checkbox" id="possible_work_day_immediate"
													name="possible_work_day_immediate" class="inp_check"
													value="y"> <span class="txt_check">즉시 근무 가능</span>
												</label>
											</div>
											<p class="txt_error"></p>
										</div>
									</div>


									<div class="resume_row">
										<div class="input_title">
											연봉 <span class="point">필수</span>
										</div>
										<div class="sri_select resume_select">
											<label for="hope_salary_cd" class="bar_title">연봉<span
												class="valid_hidden"> 선택</span></label>
											<button type="button" class="ico_arr selected">회사내규에
												따름</button>
											<input type="hidden" id="hope_salary_cd"
												name="hope_salary_cd" value="">
											<ul class="list_opt">
												<li class="on"><a href="##" class="link_opt"
													data-value="0">회사내규에 따름</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="3">1,400 만원 이하</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="4">1,400~1,600만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="5">1,600~1,800만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="6">1,800~2,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="7">2,000~2,200만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="8">2,200~2,400만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="9">2,400~2,600만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="10">2,600~2,800만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="11">2,800~3,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="12">3,000~3,200만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="13">3,200~3,400만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="14">3,400~3,600만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="15">3,600~3,800만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="16">3,800~4,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="17">4,000~5,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="18">5,000~6,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="19">6,000~7,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="20">7,000~8,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="21">8,000~9,000만원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="22">9,000~1억원</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="23">1억원 이상</a></li>
												<li class=""><a href="##" class="link_opt"
													data-value="99">면접 후 결정</a></li>
											</ul>
											<p class="txt_error"></p>
										</div>
									</div>

									<div class="resume_row">
										<div class="input_title">
											근무 지역 <span class="point">필수</span><span class="s_txt">최대
												3개</span>
										</div>

										<div class="option option_area">
											<div id="desire_area" class="area_task_input resume_input">
												<input type="hidden" id="work_area1_1" name="work_area1_1"
													value=""> <input type="hidden" id="work_area1_2"
													name="work_area1_2" value=""> <input type="hidden"
													id="work_area1_3" name="work_area1_3" value=""> <input
													type="hidden" id="work_area2_1" name="work_area2_1"
													value=""> <input type="hidden" id="work_area2_2"
													name="work_area2_2" value=""> <input type="hidden"
													id="work_area2_3" name="work_area2_3" value=""> <input
													type="hidden" id="work_area3_1" name="work_area3_1"
													value=""> <input type="hidden" id="work_area3_2"
													name="work_area3_2" value=""> <input type="hidden"
													id="work_area3_3" name="work_area3_3" value=""> <label
													for="work_area1_1" class="bar_title">근무지역<span
													class="valid_hidden"> (최대 3개)</span></label>

												<div>
													<ul class="list_task list_hope_local size_type5"></ul>
												</div>
												<button type="button" data-api_type="layer"
													data-api_id="desire_area" data-dim="n"
													data-position="unused" class="link_modifie">수정 ·
													추가하기 &gt;</button>
												<p class="txt_error"></p>
											</div>
										</div>
									</div>

									<div class="resume_row">
										<div class="input_title">
											직종 <span class="point">필수</span><span class="s_txt">최대
												5개</span>
										</div>

										<div class="option option_area">
											<div id="desire_job_category"
												class="area_task_input resume_input">
												<input type="hidden" id="job_category_code"
													name="job_category_code" value="404"> <input
													type="hidden" id="job_category_keyword"
													name="job_category_keyword" value=""> <label
													for="job_category_code" class="bar_title">직종<span
													class="valid_hidden"> (최대 5개)</span></label>

												<div>
													<ul class="list_task list_hope_jobs size_type5"></ul>
												</div>

												<button type="button" id="jobs" name="jobs"
													data-api_type="layer" data-api_id="desire_job_category"
													data-dim="n" data-position="unused" class="link_modifie">수정
													· 추가하기 &gt;</button>
												<p class="txt_error"></p>
											</div>
										</div>
									</div>

									<div class="resume_row">
										<div class="input_title">
											업종 <span class="point">필수</span><span class="s_txt">최대
												1개</span>
										</div>

										<div class="option option_area">
											<div id="desire_industry"
												class="area_task_input resume_input">
												<input type="hidden" id="industry_code" name="industry_code"
													value=""> <input type="hidden"
													id="industry_keyword" name="industry_keyword" value="">

												<label for="industry_code" class="bar_title">업종<span
													class="valid_hidden"> (최대 1개)</span></label>

												<div>
													<ul class="list_task size_type5"></ul>
												</div>

												<button type="button" id="industry" name="industry"
													data-api_type="layer" data-api_id="desire_industry"
													data-dim="n" data-position="unused" class="link_modifie">수정
													· 추가하기 &gt;</button>
												<p class="txt_error"></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div id="main_desire_work" class="resume_section">
							<div class="area_title">
								<h3 class="title">희망 조건 대표 선택</h3>
							</div>

							<div class="resume_write">
								<div class="resume_row">
									<div class="input_title">
										관심 근무지역 <span class="point">필수</span>
									</div>

									<div class="sri_select resume_select"
										id="main_hope_area_select">
										<label for="main_area_code" class="bar_title">관심 근무지역<span
											class="valid_hidden"> 선택</span></label>
										<button type="button" class="ico_arr selected">관심
											근무지역 선택</button>
										<input type="hidden" name="main_area_code" id="main_area_code"
											value="">
										<ul class="list_opt"></ul>
										<p class="txt_error"></p>
									</div>
								</div>

								<div class="resume_row">
									<div class="input_title">
										관심 직종 <span class="point">필수</span>
									</div>

									<div class="sri_select resume_select" id="main_hope_job_select">
										<label for="main_job_category_code" class="bar_title">관심
											직종<span class="valid_hidden"> 선택</span>
										</label>
										<button type="button" class="ico_arr selected">관심 직종
											선택</button>
										<input type="hidden" name="main_job_category_code" value="">
										<ul class="list_opt"></ul>
										<p class="txt_error"></p>
									</div>
								</div>
							</div>
						</div>
						<div id="talent" class="resume_section">
							<div class="area_title">
								<h3 class="blind">이력서 상태 설정</h3>
							</div>

							<div class="resume_write">
								<div class="area_stitle">
									<h4 class="title">기업 인사담당자의 입사제의 및 면접제의를 받으시겠어요?</h4>
								</div>
								<div class="resume_row">
									<div class="resume_status_actions">
										<dl class="notice">
											<dt class="txt_point">현직장 또는 특정 기업이 내 이력서를 열람하는게
												부담스러우신가요?</dt>
											<dd>열람제한 기업 및 업종 등록을하면 내 이력서를 열람할 수 없습니다.</dd>
										</dl>
										<div class="wrap_btn">
											<button type="button" class="sri_btn_md"
												data-api_type="layer" data-api_id="block_industry"
												data-dim="n">
												<span>열람제한 업종 등록</span>
											</button>
											<button type="button" class="sri_btn_md"
												data-api_type="layer" data-api_id="block_company"
												data-dim="y">
												<span>열람제한 기업 등록</span>
											</button>
										</div>
									</div>
								</div>

								<div class="resume_row">
									<div class="resume_open_set">
										<div class="area_open_check open_step">
											<h4 class="blind">이력서 공개 설정</h4>
											<div class="area_check">
												<label class="sri_check sri_radio" for="talent_open_fl_y">
													<input type="radio" id="talent_open_fl_y"
													name="talent_open_fl" class="inp_check" value="y">
													<span class="txt_check">인재정보 검색 + 추천인재 공개</span>
													<div class="txt_noti">
														<p>
															인재 정보 검색을 통해 회원님이<br> <strong>인사담당자로부터 먼저
																면접 제의</strong><br>를 받을 수 있습니다.
														</p>
														<p>
															채용정보에 매칭되는 이력서가 있을<br>경우, 해당 기업 <strong>인사담당자에게<br>회원님이
																추천
															</strong> 됩니다.
														</p>
													</div>
												</label> <label class="sri_check sri_radio"
													for="talent_open_fl_recomnd"> <input type="radio"
													id="talent_open_fl_recomnd" name="talent_open_fl"
													class="inp_check" value="recomnd"> <span
													class="txt_check">추천인재 공개</span>
													<div class="txt_noti">
														<p>
															인재정보검색에는 이력서를 비공개하고<br>추천인재에만 공개할 수 있습니다.
														</p>
														<p>
															채용정보에 매칭되는 이력서가 있을<br>경우, 해당 기업 인사담당자에게 회원님<br>이
															추천 됩니다.
														</p>
													</div>
												</label> <label class="sri_check sri_radio" for="talent_open_fl_n">
													<input type="radio" id="talent_open_fl_n"
													name="talent_open_fl" class="inp_check" value="n" checked>
													<span class="txt_check">비공개</span>
													<div class="txt_noti">
														<p>
															이력서가 인재검색 및 추천인재에 비공개<br>되며, 기업 인사담당자에게 입사제의 및<br>면접제의를
															받을 수 없습니다.
														</p>
														<p>
															이력서를 비공개한 후 입사지원 하여도<br>인사담당자가 이력서를 열람할 수<br>있습니다.
														</p>
													</div>
												</label>
											</div>
										</div>
										<input type="checkbox" id="recomnd_status"
											name="recomnd_status" class="inp_check" value="y"
											style="display: none"> <input type="checkbox"
											id="open_fl" name="open_fl" class="inp_check" value="y"
											style="display: none">

										<div class="open_step_check contact_config"
											style="display: none">
											<div class="area_open_check">
												<h4 class="s_title">공개 범위 설정</h4>
												<div class="area_check">
													<label class="sri_check sri_radio"
														for="allow_company_codes_0"> <input type="radio"
														id="allow_company_codes_0" name="allow_company_codes"
														class="inp_check" value="0" disabled> <span
														class="txt_check">모든기업</span>
													</label> <label class="sri_check sri_radio"
														for="allow_company_codes_10"> <input type="radio"
														id="allow_company_codes_10" name="allow_company_codes"
														class="inp_check" value="10" disabled> <span
														class="txt_check">헤드헌터에게만</span>
													</label>
												</div>
											</div>
											<input type="hidden" name="contact_open_progress"
												id="contact_open_progress" value="">
											<div class="area_open_check space contact_config"
												style="display: none">
												<h4 class="s_title">공개 연락처 설정</h4>
												<p class="txt_contact">
													<strong>인사담당자가 연락하길 바라는 연락처는 모두 공개해주세요.</strong><br>
													최대한 많은 방법을 노출할 수록 인사담당자가 더 빠르게 연락 가능합니다.
												</p>
												<ul class="area_check">
													<li><label class="sri_check " for="cell_open_fl_conv">
															<input type="checkbox" name="cell_open_fl_conv" value="y"
															id="cell_open_fl_conv" class="inp_check open_flag"
															data-migrate-target="cell_open_fl"> <input
															type="checkbox" name="cell_open_fl" value="n"
															id="cell_open_fl" checked style="display: none">
															<span class="txt_check">휴대폰</span>
													</label> <strong class="contect_info"> <span
															id="talent_cell">휴대폰 번호 인증 후 공개하세요</span><span
															id="talent_cell_msg" style="display:"></span> <span
															id="talent_cell_confirm_icon" class="certify">미인증</span>
													</strong> <input type="hidden" id="cell_confirm_yn"
														name="cell_confirm_yn" value="n"></li>
													<li id="cell_privacy_row" style="display: none"><label
														class="sri_check " for="cell_privacy"> <input
															type="checkbox" name="cell_privacy" value="y"
															id="cell_privacy" class="inp_check cell_privacy" disabled>
															<span class="txt_check">안심번호로 휴대폰 번호 공개하기</span>
													</label>
														<div class="toolTipWrap">
															<button type="button" class="btn_guide">
																<span class="blind">안심번호로 휴대폰 번호 공개하기</span>
															</button>
															<div class="toolTip">
																<span class="tail tail_top_center"></span>
																<div class="toolTipCont txtLeft">
																	<p class="txt">
																		회원님의 휴대폰 번호에 가상의 전화번호를 부여하는<br> 방식으로 안심번호 서비스를
																		이용하시면, 휴대폰 번호<br> 를 노출하지 않고도 통화가 가능합니다.
																	</p>
																	<p class="txt">
																		이력서를 삭제, 비공개 또는 6개월 이상 미수정 시 안심<br> 번호 사용 설정은
																		해제됩니다.
																	</p>
																</div>
															</div>
														</div></li>
													<li><label class="sri_check " for="tel_open_fl_conv">
															<input type="checkbox" id="tel_open_fl_conv"
															name="tel_open_fl_conv" value="y"
															class="inp_check open_flag"
															data-migrate-target="tel_open_fl"> <input
															type="checkbox" id="tel_open_fl" name="tel_open_fl"
															value="n" checked style="display: none"> <span
															class="txt_check">전화번호</span>
													</label> <strong class="contect_info" id="talent_tel"> <span
															id="talent_cell">전화번호 입력 후 공개하세요</span>
													</strong></li>
													<li><label class="sri_check " for="email_open_fl_conv">
															<input type="checkbox" name="email_open_fl_conv"
															id="email_open_fl_conv" value="y"
															class="inp_check open_flag"
															data-migrate-target="email_open_fl"> <input
															type="checkbox" name="email_open_fl" id="email_open_fl"
															value="n" checked style="display: none"> <span
															class="txt_check">이메일</span>
													</label> <strong class="contect_info"> <span
															id="talent_email">이메일 주소 인증 후 공개하세요</span> <span
															id="talent_email_confirm_icon" class="certify">미인증</span>
													</strong> <input type="hidden" id="email_confirm_yn"
														name="email_confirm_yn" value="n"></li>
												</ul>
											</div>
										</div>
									</div>
									<ul class="resume_open_noti">
										<li>- 공개한 이력서는 직접 비공개 하기 전까지 기업 인사담당자가 열람할 수 있습니다.</li>
										<li>- 재직중인 직장 또는 특정 기업이 내 이력서를 열람하는 것이 꺼려진다면 열람제한 설정을 하실
											수 있습니다.</li>
										<li>- 개인정보 도용 방지를 위해 휴대폰 및 이메일은 인증 완료 후 공개 가능합니다.</li>
									</ul>
								</div>
							</div>
						</div>
					</form>

					<div id="resume_api" style="display: none;">
						<script type="text/template" id="basic_confirm_cell">
    <div class="layer_pop_manage layer_identify" data-layer_id="basic_confirm_cell">
        <div class="layer_manage_wrap">
            <h4 id="layer_pop_bymobile_title">휴대폰 번호 수정</h4>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
            <p class="txt">카카오톡으로 전달받은 인증번호를 입력해주세요.(실패 시 SMS 전송)</p>

            <input type="hidden" id="seq" name="seq" value="seq1590117060">
            <input type="hidden" id="send_code" name="send_code" value="n">
            <input type="hidden" id="confirm_complete" name="confirm_complete" value="n">

            <table class="tbl_fieldset">
                <caption></caption>
                <colgroup>
                    <col style="width:130px;">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>휴대폰 번호</th>
                    <td>
                        <div class="sri_select" style="width:70px;">
                            <button type="button" class="ico_arr selected">010</button>
                            <input type="hidden" id="confirm_layer_cell1" name="confirm_layer_cell1" value="010">
                            <ul class="list_opt">
                                <li class="on"><a href="##" class="link_opt" data-value="010">010</a></li>
                                <li><a href="##" class="link_opt" data-value="011">011</a></li>
                                <li><a href="##" class="link_opt" data-value="016">016</a></li>
                                <li><a href="##" class="link_opt" data-value="017">017</a></li>
                                <li><a href="##" class="link_opt" data-value="018">018</a></li>
                                <li><a href="##" class="link_opt" data-value="019">019</a></li>
                            </ul>
                        </div>
                        <span class="sri_marks">-</span>
                        <input type="text" id="confirm_layer_cell2" name="confirm_layer_cell2" class="sri_input" style="width:70px;" data-only-number="true" maxlength="4">
                        <span class="sri_marks">-</span>
                        <input type="text" id="confirm_layer_cell3" name="confirm_layer_cell3" class="sri_input" style="width:70px;" data-only-number="true" maxlength="4">
                        <button type="button" class="btn_basic_type04 btn_send_code">인증번호 발송</button>
                    </td>
                </tr>
                <tr id="sms_code_table_bymobile" name="sms_code_table_bymobile">
                    <th>인증번호</th>
                    <td>
                        <input type="text" id="confirm_code" name="confirm_code" class="sri_input" style="width:96px;" data-only-number="true" maxlength="6">
                        <button type="button" class="btn_basic_type04 btn_confirm">확인</button>
                        <span class="expiredin"></span>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type01 btn_close">취소</button>
                <button type="button" class="btn_basic_type05 btn_save">변경</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="basic_confirm_email">
    <div class="layer_pop_manage layer_identify" data-layer_id="basic_confirm_email">
        <div class="layer_manage_wrap">
            <h4 id="layer_pop_byemail_title">이메일 수정</h4>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
            <p class="txt">이메일로 발송된 인증번호를 입력해주세요.</p>

            <input type="hidden" id="seq" name="seq" value="seq1590117060">
            <input type="hidden" id="send_code" name="send_code" value="n">
            <input type="hidden" id="confirm_complete" name="confirm_complete" value="n">

            <table class="tbl_fieldset">
                <caption></caption>
                <colgroup>
                    <col style="width:130px;">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>이메일</th>
                    <td>
                        <input type="text" id="confirm_layer_email_id" name="confirm_layer_email_id" class="sri_input" style="width:105px;"><span class="sri_marks">@</span>
                        <input type="text" id="confirm_layer_email_dm" name="confirm_layer_email_dm" class="sri_input" style="width:126px;">&nbsp;&nbsp;
                        <button type="button" class="btn_basic_type04 btn_send_code">인증번호 발송</button>
                    </td>
                </tr>
                <tr id="email_code_byemail" name="email_code_byemail">
                    <th>인증번호</th>
                    <td>
                        <input type="text" id="confirm_code" name="confirm_code" class="sri_input" style="width:96px;" data-only-number="true" maxlength="6">
                        <button type="button" class="btn_basic_type04 btn_confirm">확인</button>
                        <span class="expiredin"></span>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type01 btn_close">취소</button>
                <button type="button" class="btn_basic_type05 btn_save">변경</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="basic_photo">
    <div class="layer_pop_manage layer_photo" data-layer_id="basic_photo"><!-- 해당 팝업의 컨텐츠는 ajax로 호출 --></div>
</script>
						<script type="text/template" id="career_job_category">
    <div class="layer_pop_manage layer_jobs_select" data-layer_id="career_job_category">
        <div class="layer_manage_wrap">
            <h4>직종 선택</h4>
            <button class="btn_layer_close btn_close" type="button"><span>닫기</span></button>
            <fieldset>
                <legend>직종 선택</legend>
                <div class="area_table_scroll">
                    <table class="manage_list_table reg_table">
                        <caption>직종 선택</caption>
                        <colgroup>
                            <col style="width: 120px;">
                            <col>
                        </colgroup>
                        <tbody>
                                                        <tr>
                                    <th>경영·사무</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_101">
                                                            <input type="checkbox" id="career_job_category_101" name="career_job_category" class="inp_check"
                                                                   value="101"
                                                                   data-job_category_cd="101"
                                                                   data-job_category_text="경영·사무 > 기획·전략·경영">
                                                            <span class="txt_check">기획·전략·경영</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_102">
                                                            <input type="checkbox" id="career_job_category_102" name="career_job_category" class="inp_check"
                                                                   value="102"
                                                                   data-job_category_cd="102"
                                                                   data-job_category_text="경영·사무 > 총무·법무·사무">
                                                            <span class="txt_check">총무·법무·사무</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_103">
                                                            <input type="checkbox" id="career_job_category_103" name="career_job_category" class="inp_check"
                                                                   value="103"
                                                                   data-job_category_cd="103"
                                                                   data-job_category_text="경영·사무 > 경리·출납·결산">
                                                            <span class="txt_check">경리·출납·결산</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_104">
                                                            <input type="checkbox" id="career_job_category_104" name="career_job_category" class="inp_check"
                                                                   value="104"
                                                                   data-job_category_cd="104"
                                                                   data-job_category_text="경영·사무 > 홍보·PR·사보">
                                                            <span class="txt_check">홍보·PR·사보</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_107">
                                                            <input type="checkbox" id="career_job_category_107" name="career_job_category" class="inp_check"
                                                                   value="107"
                                                                   data-job_category_cd="107"
                                                                   data-job_category_text="경영·사무 > 비서·안내·수행원">
                                                            <span class="txt_check">비서·안내·수행원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_108">
                                                            <input type="checkbox" id="career_job_category_108" name="career_job_category" class="inp_check"
                                                                   value="108"
                                                                   data-job_category_cd="108"
                                                                   data-job_category_text="경영·사무 > 사무보조·문서작성">
                                                            <span class="txt_check">사무보조·문서작성</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_113">
                                                            <input type="checkbox" id="career_job_category_113" name="career_job_category" class="inp_check"
                                                                   value="113"
                                                                   data-job_category_cd="113"
                                                                   data-job_category_text="경영·사무 > 인사·교육·노무">
                                                            <span class="txt_check">인사·교육·노무</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_114">
                                                            <input type="checkbox" id="career_job_category_114" name="career_job_category" class="inp_check"
                                                                   value="114"
                                                                   data-job_category_cd="114"
                                                                   data-job_category_text="경영·사무 > 회계·재무·세무·IR">
                                                            <span class="txt_check">회계·재무·세무·IR</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_119">
                                                            <input type="checkbox" id="career_job_category_119" name="career_job_category" class="inp_check"
                                                                   value="119"
                                                                   data-job_category_cd="119"
                                                                   data-job_category_text="경영·사무 > 마케팅·광고·분석">
                                                            <span class="txt_check">마케팅·광고·분석</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_120">
                                                            <input type="checkbox" id="career_job_category_120" name="career_job_category" class="inp_check"
                                                                   value="120"
                                                                   data-job_category_cd="120"
                                                                   data-job_category_text="경영·사무 > 전시·컨벤션·세미나">
                                                            <span class="txt_check">전시·컨벤션·세미나</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>유통·무역</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1001">
                                                            <input type="checkbox" id="career_job_category_1001" name="career_job_category" class="inp_check"
                                                                   value="1001"
                                                                   data-job_category_cd="1001"
                                                                   data-job_category_text="유통·무역 > 물류·유통·운송">
                                                            <span class="txt_check">물류·유통·운송</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1002">
                                                            <input type="checkbox" id="career_job_category_1002" name="career_job_category" class="inp_check"
                                                                   value="1002"
                                                                   data-job_category_cd="1002"
                                                                   data-job_category_text="유통·무역 > 해외영업·무역영업">
                                                            <span class="txt_check">해외영업·무역영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1003">
                                                            <input type="checkbox" id="career_job_category_1003" name="career_job_category" class="inp_check"
                                                                   value="1003"
                                                                   data-job_category_cd="1003"
                                                                   data-job_category_text="유통·무역 > 구매·자재·재고">
                                                            <span class="txt_check">구매·자재·재고</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1004">
                                                            <input type="checkbox" id="career_job_category_1004" name="career_job_category" class="inp_check"
                                                                   value="1004"
                                                                   data-job_category_cd="1004"
                                                                   data-job_category_text="유통·무역 > 납품·배송·택배">
                                                            <span class="txt_check">납품·배송·택배</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1005">
                                                            <input type="checkbox" id="career_job_category_1005" name="career_job_category" class="inp_check"
                                                                   value="1005"
                                                                   data-job_category_cd="1005"
                                                                   data-job_category_text="유통·무역 > 상품기획·MD">
                                                            <span class="txt_check">상품기획·MD</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1006">
                                                            <input type="checkbox" id="career_job_category_1006" name="career_job_category" class="inp_check"
                                                                   value="1006"
                                                                   data-job_category_cd="1006"
                                                                   data-job_category_text="유통·무역 > 무역사무·수출입">
                                                            <span class="txt_check">무역사무·수출입</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1007">
                                                            <input type="checkbox" id="career_job_category_1007" name="career_job_category" class="inp_check"
                                                                   value="1007"
                                                                   data-job_category_cd="1007"
                                                                   data-job_category_text="유통·무역 > 운전·기사">
                                                            <span class="txt_check">운전·기사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1008">
                                                            <input type="checkbox" id="career_job_category_1008" name="career_job_category" class="inp_check"
                                                                   value="1008"
                                                                   data-job_category_cd="1008"
                                                                   data-job_category_text="유통·무역 > 중장비·화물">
                                                            <span class="txt_check">중장비·화물</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>영업·고객상담</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_202">
                                                            <input type="checkbox" id="career_job_category_202" name="career_job_category" class="inp_check"
                                                                   value="202"
                                                                   data-job_category_cd="202"
                                                                   data-job_category_text="영업·고객상담 > 일반영업">
                                                            <span class="txt_check">일반영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_203">
                                                            <input type="checkbox" id="career_job_category_203" name="career_job_category" class="inp_check"
                                                                   value="203"
                                                                   data-job_category_cd="203"
                                                                   data-job_category_text="영업·고객상담 > 판매·매장관리">
                                                            <span class="txt_check">판매·매장관리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_205">
                                                            <input type="checkbox" id="career_job_category_205" name="career_job_category" class="inp_check"
                                                                   value="205"
                                                                   data-job_category_cd="205"
                                                                   data-job_category_text="영업·고객상담 > IT·솔루션영업">
                                                            <span class="txt_check">IT·솔루션영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_206">
                                                            <input type="checkbox" id="career_job_category_206" name="career_job_category" class="inp_check"
                                                                   value="206"
                                                                   data-job_category_cd="206"
                                                                   data-job_category_text="영업·고객상담 > 금융·보험영업">
                                                            <span class="txt_check">금융·보험영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_207">
                                                            <input type="checkbox" id="career_job_category_207" name="career_job_category" class="inp_check"
                                                                   value="207"
                                                                   data-job_category_cd="207"
                                                                   data-job_category_text="영업·고객상담 > 광고영업">
                                                            <span class="txt_check">광고영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_208">
                                                            <input type="checkbox" id="career_job_category_208" name="career_job_category" class="inp_check"
                                                                   value="208"
                                                                   data-job_category_cd="208"
                                                                   data-job_category_text="영업·고객상담 > 기술영업">
                                                            <span class="txt_check">기술영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_209">
                                                            <input type="checkbox" id="career_job_category_209" name="career_job_category" class="inp_check"
                                                                   value="209"
                                                                   data-job_category_cd="209"
                                                                   data-job_category_text="영업·고객상담 > 영업기획·관리·지원">
                                                            <span class="txt_check">영업기획·관리·지원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_210">
                                                            <input type="checkbox" id="career_job_category_210" name="career_job_category" class="inp_check"
                                                                   value="210"
                                                                   data-job_category_cd="210"
                                                                   data-job_category_text="영업·고객상담 > TM·아웃바운드">
                                                            <span class="txt_check">TM·아웃바운드</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_211">
                                                            <input type="checkbox" id="career_job_category_211" name="career_job_category" class="inp_check"
                                                                   value="211"
                                                                   data-job_category_cd="211"
                                                                   data-job_category_text="영업·고객상담 > TM·인바운드">
                                                            <span class="txt_check">TM·인바운드</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_212">
                                                            <input type="checkbox" id="career_job_category_212" name="career_job_category" class="inp_check"
                                                                   value="212"
                                                                   data-job_category_cd="212"
                                                                   data-job_category_text="영업·고객상담 > 고객센터·CS">
                                                            <span class="txt_check">고객센터·CS</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_213">
                                                            <input type="checkbox" id="career_job_category_213" name="career_job_category" class="inp_check"
                                                                   value="213"
                                                                   data-job_category_cd="213"
                                                                   data-job_category_text="영업·고객상담 > QA·CS강사·수퍼바이저">
                                                            <span class="txt_check">QA·CS강사·수퍼바이저</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>생산·제조</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_301">
                                                            <input type="checkbox" id="career_job_category_301" name="career_job_category" class="inp_check"
                                                                   value="301"
                                                                   data-job_category_cd="301"
                                                                   data-job_category_text="생산·제조 > 금속·금형">
                                                            <span class="txt_check">금속·금형</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_302">
                                                            <input type="checkbox" id="career_job_category_302" name="career_job_category" class="inp_check"
                                                                   value="302"
                                                                   data-job_category_cd="302"
                                                                   data-job_category_text="생산·제조 > 기계·기계설비">
                                                            <span class="txt_check">기계·기계설비</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_303">
                                                            <input type="checkbox" id="career_job_category_303" name="career_job_category" class="inp_check"
                                                                   value="303"
                                                                   data-job_category_cd="303"
                                                                   data-job_category_text="생산·제조 > 화학·에너지">
                                                            <span class="txt_check">화학·에너지</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_304">
                                                            <input type="checkbox" id="career_job_category_304" name="career_job_category" class="inp_check"
                                                                   value="304"
                                                                   data-job_category_cd="304"
                                                                   data-job_category_text="생산·제조 > 섬유·의류·패션">
                                                            <span class="txt_check">섬유·의류·패션</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_308">
                                                            <input type="checkbox" id="career_job_category_308" name="career_job_category" class="inp_check"
                                                                   value="308"
                                                                   data-job_category_cd="308"
                                                                   data-job_category_text="생산·제조 > 전기·전자·제어">
                                                            <span class="txt_check">전기·전자·제어</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_309">
                                                            <input type="checkbox" id="career_job_category_309" name="career_job_category" class="inp_check"
                                                                   value="309"
                                                                   data-job_category_cd="309"
                                                                   data-job_category_text="생산·제조 > 생산관리·품질관리">
                                                            <span class="txt_check">생산관리·품질관리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_314">
                                                            <input type="checkbox" id="career_job_category_314" name="career_job_category" class="inp_check"
                                                                   value="314"
                                                                   data-job_category_cd="314"
                                                                   data-job_category_text="생산·제조 > 반도체·디스플레이·LCD">
                                                            <span class="txt_check">반도체·디스플레이·LCD</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_315">
                                                            <input type="checkbox" id="career_job_category_315" name="career_job_category" class="inp_check"
                                                                   value="315"
                                                                   data-job_category_cd="315"
                                                                   data-job_category_text="생산·제조 > 생산·제조·포장·조립">
                                                            <span class="txt_check">생산·제조·포장·조립</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_316">
                                                            <input type="checkbox" id="career_job_category_316" name="career_job_category" class="inp_check"
                                                                   value="316"
                                                                   data-job_category_cd="316"
                                                                   data-job_category_text="생산·제조 > 비금속·요업·신소재">
                                                            <span class="txt_check">비금속·요업·신소재</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_317">
                                                            <input type="checkbox" id="career_job_category_317" name="career_job_category" class="inp_check"
                                                                   value="317"
                                                                   data-job_category_cd="317"
                                                                   data-job_category_text="생산·제조 > 바이오·제약·식품">
                                                            <span class="txt_check">바이오·제약·식품</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_318">
                                                            <input type="checkbox" id="career_job_category_318" name="career_job_category" class="inp_check"
                                                                   value="318"
                                                                   data-job_category_cd="318"
                                                                   data-job_category_text="생산·제조 > 설계·CAD·CAM">
                                                            <span class="txt_check">설계·CAD·CAM</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_319">
                                                            <input type="checkbox" id="career_job_category_319" name="career_job_category" class="inp_check"
                                                                   value="319"
                                                                   data-job_category_cd="319"
                                                                   data-job_category_text="생산·제조 > 안경·렌즈·광학">
                                                            <span class="txt_check">안경·렌즈·광학</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>IT·인터넷</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_404">
                                                            <input type="checkbox" id="career_job_category_404" name="career_job_category" class="inp_check"
                                                                   value="404"
                                                                   data-job_category_cd="404"
                                                                   data-job_category_text="IT·인터넷 > 웹개발">
                                                            <span class="txt_check">웹개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_407">
                                                            <input type="checkbox" id="career_job_category_407" name="career_job_category" class="inp_check"
                                                                   value="407"
                                                                   data-job_category_cd="407"
                                                                   data-job_category_text="IT·인터넷 > 응용프로그램개발">
                                                            <span class="txt_check">응용프로그램개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_408">
                                                            <input type="checkbox" id="career_job_category_408" name="career_job_category" class="inp_check"
                                                                   value="408"
                                                                   data-job_category_cd="408"
                                                                   data-job_category_text="IT·인터넷 > 시스템개발">
                                                            <span class="txt_check">시스템개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_402">
                                                            <input type="checkbox" id="career_job_category_402" name="career_job_category" class="inp_check"
                                                                   value="402"
                                                                   data-job_category_cd="402"
                                                                   data-job_category_text="IT·인터넷 > 서버·네트워크·보안">
                                                            <span class="txt_check">서버·네트워크·보안</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_409">
                                                            <input type="checkbox" id="career_job_category_409" name="career_job_category" class="inp_check"
                                                                   value="409"
                                                                   data-job_category_cd="409"
                                                                   data-job_category_text="IT·인터넷 > ERP·시스템분석·설계">
                                                            <span class="txt_check">ERP·시스템분석·설계</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_416">
                                                            <input type="checkbox" id="career_job_category_416" name="career_job_category" class="inp_check"
                                                                   value="416"
                                                                   data-job_category_cd="416"
                                                                   data-job_category_text="IT·인터넷 > 데이터베이스·DBA">
                                                            <span class="txt_check">데이터베이스·DBA</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_413">
                                                            <input type="checkbox" id="career_job_category_413" name="career_job_category" class="inp_check"
                                                                   value="413"
                                                                   data-job_category_cd="413"
                                                                   data-job_category_text="IT·인터넷 > 퍼블리싱·UI개발">
                                                            <span class="txt_check">퍼블리싱·UI개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_412">
                                                            <input type="checkbox" id="career_job_category_412" name="career_job_category" class="inp_check"
                                                                   value="412"
                                                                   data-job_category_cd="412"
                                                                   data-job_category_text="IT·인터넷 > 웹디자인">
                                                            <span class="txt_check">웹디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_411">
                                                            <input type="checkbox" id="career_job_category_411" name="career_job_category" class="inp_check"
                                                                   value="411"
                                                                   data-job_category_cd="411"
                                                                   data-job_category_text="IT·인터넷 > 하드웨어·소프트웨어">
                                                            <span class="txt_check">하드웨어·소프트웨어</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_410">
                                                            <input type="checkbox" id="career_job_category_410" name="career_job_category" class="inp_check"
                                                                   value="410"
                                                                   data-job_category_cd="410"
                                                                   data-job_category_text="IT·인터넷 > 통신·모바일">
                                                            <span class="txt_check">통신·모바일</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_403">
                                                            <input type="checkbox" id="career_job_category_403" name="career_job_category" class="inp_check"
                                                                   value="403"
                                                                   data-job_category_cd="403"
                                                                   data-job_category_text="IT·인터넷 > 웹기획·PM">
                                                            <span class="txt_check">웹기획·PM</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_401">
                                                            <input type="checkbox" id="career_job_category_401" name="career_job_category" class="inp_check"
                                                                   value="401"
                                                                   data-job_category_cd="401"
                                                                   data-job_category_text="IT·인터넷 > 웹마스터·QA·테스터">
                                                            <span class="txt_check">웹마스터·QA·테스터</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_406">
                                                            <input type="checkbox" id="career_job_category_406" name="career_job_category" class="inp_check"
                                                                   value="406"
                                                                   data-job_category_cd="406"
                                                                   data-job_category_text="IT·인터넷 > 컨텐츠·사이트운영">
                                                            <span class="txt_check">컨텐츠·사이트운영</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_405">
                                                            <input type="checkbox" id="career_job_category_405" name="career_job_category" class="inp_check"
                                                                   value="405"
                                                                   data-job_category_cd="405"
                                                                   data-job_category_text="IT·인터넷 > 게임·Game">
                                                            <span class="txt_check">게임·Game</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_415">
                                                            <input type="checkbox" id="career_job_category_415" name="career_job_category" class="inp_check"
                                                                   value="415"
                                                                   data-job_category_cd="415"
                                                                   data-job_category_text="IT·인터넷 > IT·디자인·컴퓨터교육">
                                                            <span class="txt_check">IT·디자인·컴퓨터교육</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_414">
                                                            <input type="checkbox" id="career_job_category_414" name="career_job_category" class="inp_check"
                                                                   value="414"
                                                                   data-job_category_cd="414"
                                                                   data-job_category_text="IT·인터넷 > 동영상·편집·코덱">
                                                            <span class="txt_check">동영상·편집·코덱</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_417">
                                                            <input type="checkbox" id="career_job_category_417" name="career_job_category" class="inp_check"
                                                                   value="417"
                                                                   data-job_category_cd="417"
                                                                   data-job_category_text="IT·인터넷 > 인공지능(AI)·빅데이터">
                                                            <span class="txt_check">인공지능(AI)·빅데이터</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>디자인</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1201">
                                                            <input type="checkbox" id="career_job_category_1201" name="career_job_category" class="inp_check"
                                                                   value="1201"
                                                                   data-job_category_cd="1201"
                                                                   data-job_category_text="디자인 > 그래픽디자인·CG">
                                                            <span class="txt_check">그래픽디자인·CG</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1202">
                                                            <input type="checkbox" id="career_job_category_1202" name="career_job_category" class="inp_check"
                                                                   value="1202"
                                                                   data-job_category_cd="1202"
                                                                   data-job_category_text="디자인 > 출판·편집디자인">
                                                            <span class="txt_check">출판·편집디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1203">
                                                            <input type="checkbox" id="career_job_category_1203" name="career_job_category" class="inp_check"
                                                                   value="1203"
                                                                   data-job_category_cd="1203"
                                                                   data-job_category_text="디자인 > 제품·산업디자인">
                                                            <span class="txt_check">제품·산업디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1204">
                                                            <input type="checkbox" id="career_job_category_1204" name="career_job_category" class="inp_check"
                                                                   value="1204"
                                                                   data-job_category_cd="1204"
                                                                   data-job_category_text="디자인 > 캐릭터·만화·애니">
                                                            <span class="txt_check">캐릭터·만화·애니</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1205">
                                                            <input type="checkbox" id="career_job_category_1205" name="career_job_category" class="inp_check"
                                                                   value="1205"
                                                                   data-job_category_cd="1205"
                                                                   data-job_category_text="디자인 > 의류·패션·잡화디자인">
                                                            <span class="txt_check">의류·패션·잡화디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1207">
                                                            <input type="checkbox" id="career_job_category_1207" name="career_job_category" class="inp_check"
                                                                   value="1207"
                                                                   data-job_category_cd="1207"
                                                                   data-job_category_text="디자인 > 디자인기타">
                                                            <span class="txt_check">디자인기타</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1208">
                                                            <input type="checkbox" id="career_job_category_1208" name="career_job_category" class="inp_check"
                                                                   value="1208"
                                                                   data-job_category_cd="1208"
                                                                   data-job_category_text="디자인 > 전시·공간디자인">
                                                            <span class="txt_check">전시·공간디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1209">
                                                            <input type="checkbox" id="career_job_category_1209" name="career_job_category" class="inp_check"
                                                                   value="1209"
                                                                   data-job_category_cd="1209"
                                                                   data-job_category_text="디자인 > 광고·시각디자인">
                                                            <span class="txt_check">광고·시각디자인</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>전문직</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_501">
                                                            <input type="checkbox" id="career_job_category_501" name="career_job_category" class="inp_check"
                                                                   value="501"
                                                                   data-job_category_cd="501"
                                                                   data-job_category_text="전문직 > 경영분석·컨설턴트">
                                                            <span class="txt_check">경영분석·컨설턴트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_502">
                                                            <input type="checkbox" id="career_job_category_502" name="career_job_category" class="inp_check"
                                                                   value="502"
                                                                   data-job_category_cd="502"
                                                                   data-job_category_text="전문직 > 증권·투자·펀드·외환">
                                                            <span class="txt_check">증권·투자·펀드·외환</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_504">
                                                            <input type="checkbox" id="career_job_category_504" name="career_job_category" class="inp_check"
                                                                   value="504"
                                                                   data-job_category_cd="504"
                                                                   data-job_category_text="전문직 > 헤드헌팅·노무·직업상담">
                                                            <span class="txt_check">헤드헌팅·노무·직업상담</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_505">
                                                            <input type="checkbox" id="career_job_category_505" name="career_job_category" class="inp_check"
                                                                   value="505"
                                                                   data-job_category_cd="505"
                                                                   data-job_category_text="전문직 > 설문·통계·리서치">
                                                            <span class="txt_check">설문·통계·리서치</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_509">
                                                            <input type="checkbox" id="career_job_category_509" name="career_job_category" class="inp_check"
                                                                   value="509"
                                                                   data-job_category_cd="509"
                                                                   data-job_category_text="전문직 > 외국어·번역·통역">
                                                            <span class="txt_check">외국어·번역·통역</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_510">
                                                            <input type="checkbox" id="career_job_category_510" name="career_job_category" class="inp_check"
                                                                   value="510"
                                                                   data-job_category_cd="510"
                                                                   data-job_category_text="전문직 > 법률·특허·상표">
                                                            <span class="txt_check">법률·특허·상표</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_511">
                                                            <input type="checkbox" id="career_job_category_511" name="career_job_category" class="inp_check"
                                                                   value="511"
                                                                   data-job_category_cd="511"
                                                                   data-job_category_text="전문직 > 세무·회계·CPA">
                                                            <span class="txt_check">세무·회계·CPA</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_512">
                                                            <input type="checkbox" id="career_job_category_512" name="career_job_category" class="inp_check"
                                                                   value="512"
                                                                   data-job_category_cd="512"
                                                                   data-job_category_text="전문직 > 채권·보험·보상·심사">
                                                            <span class="txt_check">채권·보험·보상·심사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_513">
                                                            <input type="checkbox" id="career_job_category_513" name="career_job_category" class="inp_check"
                                                                   value="513"
                                                                   data-job_category_cd="513"
                                                                   data-job_category_text="전문직 > 도서관사서">
                                                            <span class="txt_check">도서관사서</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_518">
                                                            <input type="checkbox" id="career_job_category_518" name="career_job_category" class="inp_check"
                                                                   value="518"
                                                                   data-job_category_cd="518"
                                                                   data-job_category_text="전문직 > 연구소·R&D">
                                                            <span class="txt_check">연구소·R&D</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_522">
                                                            <input type="checkbox" id="career_job_category_522" name="career_job_category" class="inp_check"
                                                                   value="522"
                                                                   data-job_category_cd="522"
                                                                   data-job_category_text="전문직 > 문화·예술·종교">
                                                            <span class="txt_check">문화·예술·종교</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_523">
                                                            <input type="checkbox" id="career_job_category_523" name="career_job_category" class="inp_check"
                                                                   value="523"
                                                                   data-job_category_cd="523"
                                                                   data-job_category_text="전문직 > 특수직">
                                                            <span class="txt_check">특수직</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_524">
                                                            <input type="checkbox" id="career_job_category_524" name="career_job_category" class="inp_check"
                                                                   value="524"
                                                                   data-job_category_cd="524"
                                                                   data-job_category_text="전문직 > 임원·CEO">
                                                            <span class="txt_check">임원·CEO</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>교육</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_601">
                                                            <input type="checkbox" id="career_job_category_601" name="career_job_category" class="inp_check"
                                                                   value="601"
                                                                   data-job_category_cd="601"
                                                                   data-job_category_text="교육 > 교육기획·교재">
                                                            <span class="txt_check">교육기획·교재</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_602">
                                                            <input type="checkbox" id="career_job_category_602" name="career_job_category" class="inp_check"
                                                                   value="602"
                                                                   data-job_category_cd="602"
                                                                   data-job_category_text="교육 > 초중고·특수학교">
                                                            <span class="txt_check">초중고·특수학교</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_603">
                                                            <input type="checkbox" id="career_job_category_603" name="career_job_category" class="inp_check"
                                                                   value="603"
                                                                   data-job_category_cd="603"
                                                                   data-job_category_text="교육 > 학습지·과외·방문">
                                                            <span class="txt_check">학습지·과외·방문</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_604">
                                                            <input type="checkbox" id="career_job_category_604" name="career_job_category" class="inp_check"
                                                                   value="604"
                                                                   data-job_category_cd="604"
                                                                   data-job_category_text="교육 > 유치원·보육">
                                                            <span class="txt_check">유치원·보육</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_605">
                                                            <input type="checkbox" id="career_job_category_605" name="career_job_category" class="inp_check"
                                                                   value="605"
                                                                   data-job_category_cd="605"
                                                                   data-job_category_text="교육 > 전문직업·IT강사">
                                                            <span class="txt_check">전문직업·IT강사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_606">
                                                            <input type="checkbox" id="career_job_category_606" name="career_job_category" class="inp_check"
                                                                   value="606"
                                                                   data-job_category_cd="606"
                                                                   data-job_category_text="교육 > 입시·보습·속셈학원">
                                                            <span class="txt_check">입시·보습·속셈학원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_609">
                                                            <input type="checkbox" id="career_job_category_609" name="career_job_category" class="inp_check"
                                                                   value="609"
                                                                   data-job_category_cd="609"
                                                                   data-job_category_text="교육 > 학원관리·운영·상담">
                                                            <span class="txt_check">학원관리·운영·상담</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_610">
                                                            <input type="checkbox" id="career_job_category_610" name="career_job_category" class="inp_check"
                                                                   value="610"
                                                                   data-job_category_cd="610"
                                                                   data-job_category_text="교육 > 대학교수·행정직">
                                                            <span class="txt_check">대학교수·행정직</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_611">
                                                            <input type="checkbox" id="career_job_category_611" name="career_job_category" class="inp_check"
                                                                   value="611"
                                                                   data-job_category_cd="611"
                                                                   data-job_category_text="교육 > 외국어·어학원">
                                                            <span class="txt_check">외국어·어학원</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>미디어</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_702">
                                                            <input type="checkbox" id="career_job_category_702" name="career_job_category" class="inp_check"
                                                                   value="702"
                                                                   data-job_category_cd="702"
                                                                   data-job_category_text="미디어 > 연예·엔터테인먼트">
                                                            <span class="txt_check">연예·엔터테인먼트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_703">
                                                            <input type="checkbox" id="career_job_category_703" name="career_job_category" class="inp_check"
                                                                   value="703"
                                                                   data-job_category_cd="703"
                                                                   data-job_category_text="미디어 > 카메라·조명·미술">
                                                            <span class="txt_check">카메라·조명·미술</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_704">
                                                            <input type="checkbox" id="career_job_category_704" name="career_job_category" class="inp_check"
                                                                   value="704"
                                                                   data-job_category_cd="704"
                                                                   data-job_category_text="미디어 > 공연·무대·스텝">
                                                            <span class="txt_check">공연·무대·스텝</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_705">
                                                            <input type="checkbox" id="career_job_category_705" name="career_job_category" class="inp_check"
                                                                   value="705"
                                                                   data-job_category_cd="705"
                                                                   data-job_category_text="미디어 > 작가·시나리오">
                                                            <span class="txt_check">작가·시나리오</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_708">
                                                            <input type="checkbox" id="career_job_category_708" name="career_job_category" class="inp_check"
                                                                   value="708"
                                                                   data-job_category_cd="708"
                                                                   data-job_category_text="미디어 > 영화제작·배급">
                                                            <span class="txt_check">영화제작·배급</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_709">
                                                            <input type="checkbox" id="career_job_category_709" name="career_job_category" class="inp_check"
                                                                   value="709"
                                                                   data-job_category_cd="709"
                                                                   data-job_category_text="미디어 > 광고·카피·CF">
                                                            <span class="txt_check">광고·카피·CF</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_710">
                                                            <input type="checkbox" id="career_job_category_710" name="career_job_category" class="inp_check"
                                                                   value="710"
                                                                   data-job_category_cd="710"
                                                                   data-job_category_text="미디어 > 기자">
                                                            <span class="txt_check">기자</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_711">
                                                            <input type="checkbox" id="career_job_category_711" name="career_job_category" class="inp_check"
                                                                   value="711"
                                                                   data-job_category_cd="711"
                                                                   data-job_category_text="미디어 > 방송연출·PD·감독">
                                                            <span class="txt_check">방송연출·PD·감독</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_712">
                                                            <input type="checkbox" id="career_job_category_712" name="career_job_category" class="inp_check"
                                                                   value="712"
                                                                   data-job_category_cd="712"
                                                                   data-job_category_text="미디어 > 진행·아나운서">
                                                            <span class="txt_check">진행·아나운서</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_713">
                                                            <input type="checkbox" id="career_job_category_713" name="career_job_category" class="inp_check"
                                                                   value="713"
                                                                   data-job_category_cd="713"
                                                                   data-job_category_text="미디어 > 음악·음향·사운드">
                                                            <span class="txt_check">음악·음향·사운드</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_714">
                                                            <input type="checkbox" id="career_job_category_714" name="career_job_category" class="inp_check"
                                                                   value="714"
                                                                   data-job_category_cd="714"
                                                                   data-job_category_text="미디어 > 인쇄·출판·편집">
                                                            <span class="txt_check">인쇄·출판·편집</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_715">
                                                            <input type="checkbox" id="career_job_category_715" name="career_job_category" class="inp_check"
                                                                   value="715"
                                                                   data-job_category_cd="715"
                                                                   data-job_category_text="미디어 > 사진·포토그라퍼">
                                                            <span class="txt_check">사진·포토그라퍼</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>특수계층·공공</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_807">
                                                            <input type="checkbox" id="career_job_category_807" name="career_job_category" class="inp_check"
                                                                   value="807"
                                                                   data-job_category_cd="807"
                                                                   data-job_category_text="특수계층·공공 > 중장년·고령인·실버">
                                                            <span class="txt_check">중장년·고령인·실버</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_808">
                                                            <input type="checkbox" id="career_job_category_808" name="career_job_category" class="inp_check"
                                                                   value="808"
                                                                   data-job_category_cd="808"
                                                                   data-job_category_text="특수계층·공공 > 장애인·국가유공자">
                                                            <span class="txt_check">장애인·국가유공자</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_809">
                                                            <input type="checkbox" id="career_job_category_809" name="career_job_category" class="inp_check"
                                                                   value="809"
                                                                   data-job_category_cd="809"
                                                                   data-job_category_text="특수계층·공공 > 병역특례">
                                                            <span class="txt_check">병역특례</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_810">
                                                            <input type="checkbox" id="career_job_category_810" name="career_job_category" class="inp_check"
                                                                   value="810"
                                                                   data-job_category_cd="810"
                                                                   data-job_category_text="특수계층·공공 > 공무원">
                                                            <span class="txt_check">공무원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_812">
                                                            <input type="checkbox" id="career_job_category_812" name="career_job_category" class="inp_check"
                                                                   value="812"
                                                                   data-job_category_cd="812"
                                                                   data-job_category_text="특수계층·공공 > 사회복지·요양·봉사">
                                                            <span class="txt_check">사회복지·요양·봉사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_813">
                                                            <input type="checkbox" id="career_job_category_813" name="career_job_category" class="inp_check"
                                                                   value="813"
                                                                   data-job_category_cd="813"
                                                                   data-job_category_text="특수계층·공공 > 장교·군인·부사관">
                                                            <span class="txt_check">장교·군인·부사관</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>건설</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_901">
                                                            <input type="checkbox" id="career_job_category_901" name="career_job_category" class="inp_check"
                                                                   value="901"
                                                                   data-job_category_cd="901"
                                                                   data-job_category_text="건설 > 토목·조경·도시·측량">
                                                            <span class="txt_check">토목·조경·도시·측량</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_902">
                                                            <input type="checkbox" id="career_job_category_902" name="career_job_category" class="inp_check"
                                                                   value="902"
                                                                   data-job_category_cd="902"
                                                                   data-job_category_text="건설 > 건축·인테리어·설계">
                                                            <span class="txt_check">건축·인테리어·설계</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_903">
                                                            <input type="checkbox" id="career_job_category_903" name="career_job_category" class="inp_check"
                                                                   value="903"
                                                                   data-job_category_cd="903"
                                                                   data-job_category_text="건설 > 전기·소방·통신·설비">
                                                            <span class="txt_check">전기·소방·통신·설비</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_904">
                                                            <input type="checkbox" id="career_job_category_904" name="career_job_category" class="inp_check"
                                                                   value="904"
                                                                   data-job_category_cd="904"
                                                                   data-job_category_text="건설 > 환경·플랜트">
                                                            <span class="txt_check">환경·플랜트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_905">
                                                            <input type="checkbox" id="career_job_category_905" name="career_job_category" class="inp_check"
                                                                   value="905"
                                                                   data-job_category_cd="905"
                                                                   data-job_category_text="건설 > 현장·시공·감리·공무">
                                                            <span class="txt_check">현장·시공·감리·공무</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_906">
                                                            <input type="checkbox" id="career_job_category_906" name="career_job_category" class="inp_check"
                                                                   value="906"
                                                                   data-job_category_cd="906"
                                                                   data-job_category_text="건설 > 안전·품질·검사·관리">
                                                            <span class="txt_check">안전·품질·검사·관리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_908">
                                                            <input type="checkbox" id="career_job_category_908" name="career_job_category" class="inp_check"
                                                                   value="908"
                                                                   data-job_category_cd="908"
                                                                   data-job_category_text="건설 > 부동산·개발·경매·분양">
                                                            <span class="txt_check">부동산·개발·경매·분양</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_909">
                                                            <input type="checkbox" id="career_job_category_909" name="career_job_category" class="inp_check"
                                                                   value="909"
                                                                   data-job_category_cd="909"
                                                                   data-job_category_text="건설 > 본사·관리·전산">
                                                            <span class="txt_check">본사·관리·전산</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>서비스</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1101">
                                                            <input type="checkbox" id="career_job_category_1101" name="career_job_category" class="inp_check"
                                                                   value="1101"
                                                                   data-job_category_cd="1101"
                                                                   data-job_category_text="서비스 > 웨딩·행사·이벤트">
                                                            <span class="txt_check">웨딩·행사·이벤트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1102">
                                                            <input type="checkbox" id="career_job_category_1102" name="career_job_category" class="inp_check"
                                                                   value="1102"
                                                                   data-job_category_cd="1102"
                                                                   data-job_category_text="서비스 > 안내·도우미·나레이터">
                                                            <span class="txt_check">안내·도우미·나레이터</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1103">
                                                            <input type="checkbox" id="career_job_category_1103" name="career_job_category" class="inp_check"
                                                                   value="1103"
                                                                   data-job_category_cd="1103"
                                                                   data-job_category_text="서비스 > 보안·경호·안전">
                                                            <span class="txt_check">보안·경호·안전</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1104">
                                                            <input type="checkbox" id="career_job_category_1104" name="career_job_category" class="inp_check"
                                                                   value="1104"
                                                                   data-job_category_cd="1104"
                                                                   data-job_category_text="서비스 > 주차·세차·주유">
                                                            <span class="txt_check">주차·세차·주유</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1105">
                                                            <input type="checkbox" id="career_job_category_1105" name="career_job_category" class="inp_check"
                                                                   value="1105"
                                                                   data-job_category_cd="1105"
                                                                   data-job_category_text="서비스 > AS·서비스·수리">
                                                            <span class="txt_check">AS·서비스·수리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1107">
                                                            <input type="checkbox" id="career_job_category_1107" name="career_job_category" class="inp_check"
                                                                   value="1107"
                                                                   data-job_category_cd="1107"
                                                                   data-job_category_text="서비스 > 외식·식음료">
                                                            <span class="txt_check">외식·식음료</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1108">
                                                            <input type="checkbox" id="career_job_category_1108" name="career_job_category" class="inp_check"
                                                                   value="1108"
                                                                   data-job_category_cd="1108"
                                                                   data-job_category_text="서비스 > 호텔·카지노·콘도">
                                                            <span class="txt_check">호텔·카지노·콘도</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1109">
                                                            <input type="checkbox" id="career_job_category_1109" name="career_job_category" class="inp_check"
                                                                   value="1109"
                                                                   data-job_category_cd="1109"
                                                                   data-job_category_text="서비스 > 여행·관광·항공">
                                                            <span class="txt_check">여행·관광·항공</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1110">
                                                            <input type="checkbox" id="career_job_category_1110" name="career_job_category" class="inp_check"
                                                                   value="1110"
                                                                   data-job_category_cd="1110"
                                                                   data-job_category_text="서비스 > 레저·스포츠">
                                                            <span class="txt_check">레저·스포츠</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1111">
                                                            <input type="checkbox" id="career_job_category_1111" name="career_job_category" class="inp_check"
                                                                   value="1111"
                                                                   data-job_category_cd="1111"
                                                                   data-job_category_text="서비스 > 미용·피부관리·애견">
                                                            <span class="txt_check">미용·피부관리·애견</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1112">
                                                            <input type="checkbox" id="career_job_category_1112" name="career_job_category" class="inp_check"
                                                                   value="1112"
                                                                   data-job_category_cd="1112"
                                                                   data-job_category_text="서비스 > 요리·제빵사·영양사">
                                                            <span class="txt_check">요리·제빵사·영양사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1113">
                                                            <input type="checkbox" id="career_job_category_1113" name="career_job_category" class="inp_check"
                                                                   value="1113"
                                                                   data-job_category_cd="1113"
                                                                   data-job_category_text="서비스 > 가사·청소·육아">
                                                            <span class="txt_check">가사·청소·육아</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>의료</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1301">
                                                            <input type="checkbox" id="career_job_category_1301" name="career_job_category" class="inp_check"
                                                                   value="1301"
                                                                   data-job_category_cd="1301"
                                                                   data-job_category_text="의료 > 의사·치과·한의사">
                                                            <span class="txt_check">의사·치과·한의사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1302">
                                                            <input type="checkbox" id="career_job_category_1302" name="career_job_category" class="inp_check"
                                                                   value="1302"
                                                                   data-job_category_cd="1302"
                                                                   data-job_category_text="의료 > 수의사">
                                                            <span class="txt_check">수의사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1303">
                                                            <input type="checkbox" id="career_job_category_1303" name="career_job_category" class="inp_check"
                                                                   value="1303"
                                                                   data-job_category_cd="1303"
                                                                   data-job_category_text="의료 > 약사">
                                                            <span class="txt_check">약사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1304">
                                                            <input type="checkbox" id="career_job_category_1304" name="career_job_category" class="inp_check"
                                                                   value="1304"
                                                                   data-job_category_cd="1304"
                                                                   data-job_category_text="의료 > 간호사">
                                                            <span class="txt_check">간호사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1305">
                                                            <input type="checkbox" id="career_job_category_1305" name="career_job_category" class="inp_check"
                                                                   value="1305"
                                                                   data-job_category_cd="1305"
                                                                   data-job_category_text="의료 > 간호조무사">
                                                            <span class="txt_check">간호조무사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1306">
                                                            <input type="checkbox" id="career_job_category_1306" name="career_job_category" class="inp_check"
                                                                   value="1306"
                                                                   data-job_category_cd="1306"
                                                                   data-job_category_text="의료 > 의료기사">
                                                            <span class="txt_check">의료기사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1307">
                                                            <input type="checkbox" id="career_job_category_1307" name="career_job_category" class="inp_check"
                                                                   value="1307"
                                                                   data-job_category_cd="1307"
                                                                   data-job_category_text="의료 > 사무·원무·코디">
                                                            <span class="txt_check">사무·원무·코디</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1308">
                                                            <input type="checkbox" id="career_job_category_1308" name="career_job_category" class="inp_check"
                                                                   value="1308"
                                                                   data-job_category_cd="1308"
                                                                   data-job_category_text="의료 > 보험심사과">
                                                            <span class="txt_check">보험심사과</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1309">
                                                            <input type="checkbox" id="career_job_category_1309" name="career_job_category" class="inp_check"
                                                                   value="1309"
                                                                   data-job_category_cd="1309"
                                                                   data-job_category_text="의료 > 의료기타직">
                                                            <span class="txt_check">의료기타직</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                        </tbody>
                    </table>
                </div>
            </fieldset>

            <div class="bottom_btn_wrap">
                <button class="btn_basic_type05 btn_save" type="button">완료</button>
                <button class="btn_basic_type01 btn_close" type="button">취소</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="career_job_grade_duties">
    <div class="layer_pop_manage layer_rank_select" data-layer_id="career_job_grade_duties">
        <div class="layer_manage_wrap">
            <h4>직급(직책) 선택</h4>
            <button class="btn_layer_close btn_close" type="button"><span>닫기</span></button>

            <fieldset>
                <legend>직급(직책) 선택</legend>
                <table class="manage_list_table reg_table">
                    <caption>직급(직책) 선택</caption>
                    <colgroup>
                        <col style="width: 120px;">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">직급<span>(필수)</span></th>
                        <td>
                            <ul class="list_depth2">
                                                                        <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg000">
                                                <input type="radio" id="job_grade_jg000" name="job_grade" class="inp_check" value="jg000">
                                                <span class="txt_check">인턴/수습</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg010">
                                                <input type="radio" id="job_grade_jg010" name="job_grade" class="inp_check" value="jg010">
                                                <span class="txt_check">사원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg020">
                                                <input type="radio" id="job_grade_jg020" name="job_grade" class="inp_check" value="jg020">
                                                <span class="txt_check">주임</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg030">
                                                <input type="radio" id="job_grade_jg030" name="job_grade" class="inp_check" value="jg030">
                                                <span class="txt_check">계장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg040">
                                                <input type="radio" id="job_grade_jg040" name="job_grade" class="inp_check" value="jg040">
                                                <span class="txt_check">대리</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg050">
                                                <input type="radio" id="job_grade_jg050" name="job_grade" class="inp_check" value="jg050">
                                                <span class="txt_check">과장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg060">
                                                <input type="radio" id="job_grade_jg060" name="job_grade" class="inp_check" value="jg060">
                                                <span class="txt_check">차장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg070">
                                                <input type="radio" id="job_grade_jg070" name="job_grade" class="inp_check" value="jg070">
                                                <span class="txt_check">부장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg080">
                                                <input type="radio" id="job_grade_jg080" name="job_grade" class="inp_check" value="jg080">
                                                <span class="txt_check">감사</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg090">
                                                <input type="radio" id="job_grade_jg090" name="job_grade" class="inp_check" value="jg090">
                                                <span class="txt_check">이사</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg100">
                                                <input type="radio" id="job_grade_jg100" name="job_grade" class="inp_check" value="jg100">
                                                <span class="txt_check">상무</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg110">
                                                <input type="radio" id="job_grade_jg110" name="job_grade" class="inp_check" value="jg110">
                                                <span class="txt_check">전무</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg120">
                                                <input type="radio" id="job_grade_jg120" name="job_grade" class="inp_check" value="jg120">
                                                <span class="txt_check">부사장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg140">
                                                <input type="radio" id="job_grade_jg140" name="job_grade" class="inp_check" value="jg140">
                                                <span class="txt_check">사장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg130">
                                                <input type="radio" id="job_grade_jg130" name="job_grade" class="inp_check" value="jg130">
                                                <span class="txt_check">임원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg150">
                                                <input type="radio" id="job_grade_jg150" name="job_grade" class="inp_check" value="jg150">
                                                <span class="txt_check">연구원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg160">
                                                <input type="radio" id="job_grade_jg160" name="job_grade" class="inp_check" value="jg160">
                                                <span class="txt_check">주임연구원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg170">
                                                <input type="radio" id="job_grade_jg170" name="job_grade" class="inp_check" value="jg170">
                                                <span class="txt_check">선임연구원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg180">
                                                <input type="radio" id="job_grade_jg180" name="job_grade" class="inp_check" value="jg180">
                                                <span class="txt_check">책임연구원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg190">
                                                <input type="radio" id="job_grade_jg190" name="job_grade" class="inp_check" value="jg190">
                                                <span class="txt_check">수석연구원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_grade_jg200">
                                                <input type="radio" id="job_grade_jg200" name="job_grade" class="inp_check" value="jg200">
                                                <span class="txt_check">연구소장</span>
                                            </label>
                                        </li>
                                                                    </ul>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">직책<span>(선택)</span></th>
                        <td>
                            <ul class="list_depth2">
                                                                        <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd010">
                                                <input type="radio" id="job_duties_jd010" name="job_duties" class="inp_check" value="jd010">
                                                <span class="txt_check">팀원</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd020">
                                                <input type="radio" id="job_duties_jd020" name="job_duties" class="inp_check" value="jd020">
                                                <span class="txt_check">팀장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd030">
                                                <input type="radio" id="job_duties_jd030" name="job_duties" class="inp_check" value="jd030">
                                                <span class="txt_check">실장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd040">
                                                <input type="radio" id="job_duties_jd040" name="job_duties" class="inp_check" value="jd040">
                                                <span class="txt_check">총무</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd050">
                                                <input type="radio" id="job_duties_jd050" name="job_duties" class="inp_check" value="jd050">
                                                <span class="txt_check">지점장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd060">
                                                <input type="radio" id="job_duties_jd060" name="job_duties" class="inp_check" value="jd060">
                                                <span class="txt_check">지사장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd070">
                                                <input type="radio" id="job_duties_jd070" name="job_duties" class="inp_check" value="jd070">
                                                <span class="txt_check">파트장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd080">
                                                <input type="radio" id="job_duties_jd080" name="job_duties" class="inp_check" value="jd080">
                                                <span class="txt_check">그룹장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd090">
                                                <input type="radio" id="job_duties_jd090" name="job_duties" class="inp_check" value="jd090">
                                                <span class="txt_check">센터장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd100">
                                                <input type="radio" id="job_duties_jd100" name="job_duties" class="inp_check" value="jd100">
                                                <span class="txt_check">매니저</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd110">
                                                <input type="radio" id="job_duties_jd110" name="job_duties" class="inp_check" value="jd110">
                                                <span class="txt_check">본부장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd120">
                                                <input type="radio" id="job_duties_jd120" name="job_duties" class="inp_check" value="jd120">
                                                <span class="txt_check">사업부장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd130">
                                                <input type="radio" id="job_duties_jd130" name="job_duties" class="inp_check" value="jd130">
                                                <span class="txt_check">원장</span>
                                            </label>
                                        </li>
                                                                                <li class="item_depth2">
                                            <label class="sri_check small sri_radio" for="job_duties_jd140">
                                                <input type="radio" id="job_duties_jd140" name="job_duties" class="inp_check" value="jd140">
                                                <span class="txt_check">국장</span>
                                            </label>
                                        </li>
                                                                    </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div class="box_select_etc">
                    <label class="sri_check small sri_radio" for="job_grade_etc020">
                        <input type="radio" id="job_grade_etc020" name="job_grade_etc" class="inp_check" value="etc020">
                        <span class="txt_check">임시직/프리랜서</span>
                    </label>
                    <label class="sri_check small sri_radio" for="job_grade_etc021">
                        <input type="radio" id="job_grade_etc021" name="job_grade_etc" class="inp_check" value="etc021">
                        <span class="txt_check">직접입력</span>
                    </label>
                    <input type="text" name="job_text_input" class="sri_input" style="width: 423px;" maxlength="20">
                </div>
            </fieldset>

            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type05 btn_save">완료</button>
                <button type="button" class="btn_basic_type01 btn_close">취소</button>
                <button type="button" class="btn_basic_type03 btn_clear">초기화</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="skill_item">
    <div class="layer_pop_manage layer_skill_detail" data-layer_id="skill_item">
        <div class="layer_manage_wrap">
            <h4>상세내용 수정·추가</h4>

            <table class="manage_list_table reg_table">
                <caption>보유기술 상세내용</caption>
                <colgroup>
                    <col width="130">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th><label for="s_ability_gb">보유기술</label></th>
                    <td>
                        <input type="hidden" id="s_ability_api_code" name="s_ability_api_code">
                        <input type="text" id="s_ability_gb" name="s_ability_gb" maxlength="45" placeholder="보유기술 입력" disabled>
                    </td>
                </tr>
                <tr>
                    <th><label for="s_ability_level">수준</label></th>
                    <td><input type="text" id="s_ability_level" name="s_ability_level" maxlength="45" placeholder="수준 입력"></td>
                </tr>
                <tr>
                    <th><label for="s_ability_contents">상세내용</label></th>
                    <td><textarea id="s_ability_contents" name="s_ability_contents" class="box_textarea" placeholder="상세내용 입력"></textarea></td>
                </tr>
                </tbody>
            </table>
            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type01 btn_close">취소</button>
                <button type="button" class="btn_basic_type05 btn_save">저장</button>
            </div>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="introduce_import">
    <div class="layer_pop_manage layer_introduce" data-layer_id="introduce_import">
        <div class="layer_manage_wrap">
            <h4>자기소개서 불러오기</h4>
            <div class="area_tab">
                <ul class="tab_type">
                    <li class="menu">
                        <a class="link my_tab" href="#">
                            내 자소서 보관함
                            <span class="total_count">총 <span class="point">15</span>건</span>
                        </a>
                    </li>
                    <li class="menu quick_tab">
                        <a class="link" href="#">
                            3분 완성 자소서
                            <span class="total_count">총 <span class="point">10</span>건</span>
                        </a>
                    </li>
                </ul>
            </div>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>

            <div class="area_table_scroll">
                <table class="manage_list_table introduce_table my_table">
                    <caption>자기소개서 목록</caption>
                    <colgroup>
                        <col>
                        <col style="width: 150px;">
                        <col style="width: 120px;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">제목</th>
                        <th scope="col">양식(폼)</th>
                        <th scope="col">최근수정일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="3">등록된 자소서가 없습니다.</td>
                    </tr>
                    </tbody>
                </table>

                <table class="manage_list_table introduce_table quick_table">
                    <caption>자기소개서 목록</caption>
                    <colgroup>
                        <col>
                        <col style="width: 120px;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">제목</th>
                        <th scope="col">최근수정일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="2">등록된 자소서가 없습니다.</td>
                    </tr>
                    </tbody>
                </table>
            </div>


            <div class="area_introduce_view">
                <div class="txt_view_info">
                    위 목록에서 자기소개서를 선택하신 후,<br>
                    <strong class="point">[자기소개서 불러오기]</strong> 버튼을 클릭하여 불러오기 하거나<br>
                    또는 필요한 <strong class="point">부분</strong>을 복사하여<br>
                    작성중인 <strong class="point">자기소개서에 붙여넣기</strong> 해주세요.
                </div>

                <div class="txt_view_cont" style="display: none;">
                    <div class="title_view_cont"></div>

                    <div class="my_letter_view"></div>
                </div>
            </div>

            <p class="txt_noti">[자기소개서 불러오기]를 클릭하시면, 선택하신 자기소개서 내용과 양식(폼)이 불러오기 됩니다.</p>
            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type05 btn_save">자기소개서 불러오기</button>
                <button type="button" class="btn_basic_type01 btn_close">취소</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="introduce_save">
    <div class="layer_pop_manage layer_save" data-layer_id="introduce_save">
        <div class="layer_manage_wrap">
            <form name="introduce_save_frm" method="post" action="/zf_user/member/my-introduce-box/save-contents">
                <input type="hidden" id="write_mode" name="write_mode">
                <input type="hidden" id="intro_template" name="intro_template" value="standard">
                <input type="hidden" id="introduce_idx" name="introduce_idx">
                <input type="hidden" id="tmp_contents_title" name="tmp_contents_title">
                <input type="hidden" id="contents" name="contents">

                <h4>자소서 관리에 저장</h4>
                <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
                <p class="txt">
                    <storng>저장하실 자기소개서 제목을 입력해주세요.</storng>
                    예) OO그룹 자소서, 영업직 자기소개서
                </p>

                <table class="manage_list_table reg_table">
                    <caption>자소서 관리에 저장</caption>
                    <colgroup>
                        <col style="width: 130px;">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">제목</th>
                        <td>
                            <input type="text" id="title" name="title" class="sri_input" value="" style="width: 100%;" maxlength="25">
                        </td>
                    </tr>
                    </tbody>
                </table>

                <p class="txt_noti">(최대 25자 저장 가능)</p>
                <div class="bottom_btn_wrap">
                    <button type="submit" class="btn_basic_type05">완료</button>
                    <button type="button" class="btn_basic_type01 btn_close">취소</button>
                </div>

            </form>
        </div>
    </div>
</script>
						<script type="text/template" id="introduce_spell_check">
    <div class="layer_pop_manage layer_spellcheck layer_spellcheck_small" data-layer_id="introduce_spell_check">
        <div class="layer_manage_wrap">
            <h4 class="blind">맞춤법 검사</h4>
            <dl class="row error">
                <dt class="lft">틀린단어</dt>
                <dd class="rgt"></dd>
            </dl>
            <dl class="row replace">
                <dt class="lft">대체어</dt>
                <!--<dd class="rgt"><span>화 갤러리아</span><button class="btn_type spellDone" type="button">적용</button></dd>-->
            </dl>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="introduce_spell_details">
    <div class="layer_pop_manage layer_spellcheck" data-layer_id="introduce_spell_details">
        <div class="layer_manage_wrap">
            <h4>맞춤법 검사 상세보기</h4>
            <p class="txt">‘맞춤법 일괄수정’ 클릭 시 모두 첫 번째 대체어로 수정됩니다. <button type="button" class="btn_type btn_spellall_change">맞춤법 일괄 수정</button></p>
            <div class="area_table_scroll">
                <table class="manage_list_table reg_table" summary="맞춤법 상세보기">
                    <caption>맞춤법 상세보기</caption>
                    <colgroup>
                        <col width="22%">
                        <col width="28%">
                        <col width="*">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">틀린단어</th>
                        <th scope="col">대체어</th>
                        <th scope="col">도움말</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!--<tr>
                        <td class="error">아라 본다는</td>
                        <td class="replace">
                            <ul class="list_txt">
                                <li class="txt"><span>알아본다는</span><button class="btn_type spellDone" type="button" data-value="0">적용</button></li>
                            </ul>
                        </td>
                        <td>표준국어대사전[국립국어원]에 따라 합성어로 보고 붙여 씁니다.</td>
                    </tr>-->
                    </tbody>
                </table>
            </div>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="introduce_contents_items">
    <div class="layer_pop_manage layer_introduce_tit" data-layer_id="introduce_contents_items">
        <div class="layer_manage_wrap">
            <h4>자기소개서 항목별 제목</h4>
            <fieldset>
                <legend>자기소개서 항목별 제목 목록</legend>
                <div class="area_table_scroll">
                    <table class="manage_list_table reg_table">
                        <caption>자기소개서 항목별 제목 예제</caption>
                        <colgroup>
                            <col style="width: 210px;">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">기본형 1<br>(기본항목 위주로 표현할 때)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">가족소개</li>
                                    <li class="txt">성장과정</li>
                                    <li class="txt">학창시절</li>
                                    <li class="txt">교외활동</li>
                                    <li class="txt">전공선택 이유와 적성</li>
                                    <li class="txt">성격의 장단점</li>
                                    <li class="txt">생활신조</li>
                                    <li class="txt">지원동기</li>
                                    <li class="txt">입사 후 포부</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">기본형 2<br>(기본항목 위주로 표현할 때)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">성장환경</li>
                                    <li class="txt">교우관계</li>
                                    <li class="txt">동아리/봉사활동</li>
                                    <li class="txt">사회경험</li>
                                    <li class="txt">성격소개</li>
                                    <li class="txt">좌우명</li>
                                    <li class="txt">장래포부</li>
                                    <li class="txt">지원동기</li>
                                    <li class="txt">입사 후 희망업무</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">깔끔형<br>(필수항목 위주 명확하게 표현)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">자기소개</li>
                                    <li class="txt">지원동기</li>
                                    <li class="txt">입사 후 계획</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 1<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">햇살을 머금고 태어난 아이</li>
                                    <li class="txt">지칠 줄 모르는 강인한 체력</li>
                                    <li class="txt">세상과 소통하는 눈과 귀</li>
                                    <li class="txt">잊지못할 소중한 경험들</li>
                                    <li class="txt">나를 빛나게 하는 사람들</li>
                                    <li class="txt">자랑하고 싶은 나만의 꿈</li>
                                    <li class="txt">저를 뽑으셔야 하는 명백한 이유</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 2<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">세상에 첫 발을 내딛다.</li>
                                    <li class="txt">촌 놈, 뚝심을 보여라!</li>
                                    <li class="txt">인간성이 밥 먹여준다!</li>
                                    <li class="txt">세상의 축소판, 활개치다!</li>
                                    <li class="txt">OO기업, 너를 내 품에!</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 3<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">세 발 자전거를 타던 4살 꼬마</li>
                                    <li class="txt">걸음이 느린 아이</li>
                                    <li class="txt">꿈꾸는 철학 소녀</li>
                                    <li class="txt">아낌없이 주는 착한 여자</li>
                                    <li class="txt">내 가슴에 뜬 몇 개의 섬</li>
                                    <li class="txt">동화 같은 기업에서 일하고 싶다</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 4<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">三人行必有我師 (삼인행필유아사)</li>
                                    <li class="txt">귀사를 대표하는 OOO가 되겠습니다.</li>
                                    <li class="txt">인간 ㅇㅇㅇ에게 도움 주신 분들</li>
                                    <li class="txt">1+1 = 3 의 공식이 나의 목표</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 5<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">“첫사랑, OOO과 만나다.” (성장배경)</li>
                                    <li class="txt">“넌 누구냐?” (성격소개)</li>
                                    <li class="txt">“열정도 능력이다.” (가치관)</li>
                                    <li class="txt">“자아도취” (특기)</li>
                                    <li class="txt">“가장 매력적인 OOO.” (희망업무)</li>
                                    <li class="txt">“꼭 가고 싶습니다!” (지원동기)</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 6<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">대자연에게 배운 넓은 시각 (성장과정)</li>
                                    <li class="txt">리더의 기본과 원만한 인간관계 (성격소개)</li>
                                    <li class="txt">내일을 향한 작은 준비들 (학창시절)</li>
                                    <li class="txt">경험에서 배운 소중한 교훈들 (사회활동)</li>
                                    <li class="txt">능동적인 모습으로 변화 (입사후포부)</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 7<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">고추시절</li>
                                    <li class="txt">학교 다니기</li>
                                    <li class="txt">성질머리</li>
                                    <li class="txt">외국 물 먹기</li>
                                    <li class="txt">가슴에 품은 말</li>
                                    <li class="txt">밥 값 하기</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 8<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">‘만약’을 줄여나가는 사람</li>
                                    <li class="txt">너무 가고 싶어, 비행기표만 들고 노숙</li>
                                    <li class="txt">“양과 품질” 두 마리를 모두 잡기 위해</li>
                                    <li class="txt">회사를 위해 눈물을 흘리고 싶습니다</li>
                                    <li class="txt">성격소개</li>
                                    <li class="txt">좌우명</li>
                                    <li class="txt">장래포부</li>
                                    <li class="txt">지원동기</li>
                                    <li class="txt">입사 후 희망업무</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">개성형 9<br>(개성만점!! 나만의 표현법)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">장손으로서의 책임감 있는 삶</li>
                                    <li class="txt">도전적이고 편안한 인상의 소유자</li>
                                    <li class="txt">배우고자 하는 뜨거운 열정</li>
                                    <li class="txt">나의 꿈은 국제 품질전문가</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">경력형 1<br>(경력자를 위한 자기소개서)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">본인소개</li>
                                    <li class="txt">전문보유기술</li>
                                    <li class="txt">주요실적 및 세부내용</li>
                                    <li class="txt">이직/전직 사유</li>
                                    <li class="txt">희망부서 및 직급</li>
                                    <li class="txt">지원동기 및 요청사항</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">경력형 2<br>(경력자를 위한 자기소개서)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">전공과 적성</li>
                                    <li class="txt">취미,특기</li>
                                    <li class="txt">담당업무와 부서</li>
                                    <li class="txt">프로젝트경험</li>
                                    <li class="txt">희망업무와 부서</li>
                                    <li class="txt">지원동기</li>
                                    <li class="txt">입사 후 계획</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">공채형 1<br>(최신 트렌드가 반영된<br>대기업의 공채 자기소개서 항목)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">가장 열정을 바쳐서 일했던 경험</li>
                                    <li class="txt">성격의 장점을 발휘해서 문제를 해결했던 경험</li>
                                    <li class="txt">성격의 단점으로 인해 실패했던 경험</li>
                                    <li class="txt">성격의 단점을 극복하고 성공했던 경험</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">공채형 2<br>(최신 트렌드가 반영된<br>대기업의 공채 자기소개서 항목)</th>
                            <td class="file_select">
                                <ul class="list_txt">
                                    <li class="txt">10년 후의 나의 모습</li>
                                    <li class="txt">다른 사람을 감동시켰던 경험</li>
                                    <li class="txt">기존의 틀을 깨는 새로운 시도를 했던 경험</li>
                                    <li class="txt">옳은 일을 위해 소신을 지켰던 경험</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </fieldset>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="attach_file">
    <div class="layer_pop_manage layer_attach_reg" data-layer_id="attach_file">
        <div class="layer_manage_wrap">
            <h4>첨부파일 등록</h4>
            <p class="txt_desc"><span class="essential">*</span>는 필수 입력, 파일크기 <em>개별파일 30MB, 총 100MB까지</em></p>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
            <form id="attach_file_form" name="attach_file_form" enctype="multipart/form-data">
                <input type="hidden" name="type" id="type" value="">
                <input type="hidden" name="mode" id="mode" value="">
                <input type="hidden" name="idx" id="idx" value="">
                <fieldset>
                    <legend>첨부파일 등록</legend>
                    <table class="manage_list_table reg_table">
                        <caption>첨부파일 등록</caption>
                        <colgroup>
                            <col style="width:120px;">
                            <col style="width:*;">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">파일구분<span class="essential">*</span></th>
                            <td class="file_select">
                                <select name="attach_file_category" id="attach_file_category">
                                                                            <option value="">구분선택</option>
                                                                            <option value="resume">이력서</option>
                                                                            <option value="career">경력기술서</option>
                                                                            <option value="license">자격증</option>
                                                                            <option value="certification">증명서</option>
                                                                            <option value="recommend">추천서</option>
                                                                            <option value="portfolio">포트폴리오</option>
                                                                            <option value="proposal">기획서</option>
                                                                            <option value="video">동영상</option>
                                                                            <option value="voice">음성</option>
                                                                            <option value="etc">기타</option>
                                                                    </select>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">파일찾기<span class="essential">*</span></th>
                            <td class="file_find">
                                <label class="sri_check sri_radio check_on" for="attach_upload_item_file">
                                    <input type="radio" id="attach_upload_item_file" name="attach_upload_item" class="inp_check" value="FILE" checked>
                                    <span class="txt_check">파일</span>
                                </label>
                                <label class="sri_check sri_radio" for="attach_upload_item_url">
                                    <input type="radio" id="attach_upload_item_url" name="attach_upload_item" class="inp_check" value="URL">
                                    <span class="txt_check">URL</span>
                                </label>
                                <div id="attach_file_area" class="upload_file_wrap">
                                    <input type="file" id="attach_file" name="attach_file">
                                    <p id="filenameprintarea" class="file_result"></p>
                                </div>
                                <div id="attach_url_area" style="display:none" class="upload_url_wrap">
                                    <input type="text" name="attach_url" id="attach_url" value="http://">
                                </div>
                            </td>
                        </tr>
                        <tr class="onlyPortfolio" style="display: none;">
                            <th scope="row">작업기간</th>
                            <td class="work_date">
                                <div class="period_wrap">
                                    <span class="apply_date">
                                        <input type="text" id="work_start_dt" name="work_start_dt" class="expect_date bar_input" maxlength="8" data-only-number="true" data-dateformat="yymmdd" autocomplete="off">
                                        <button type="button" class="ui-datepicker-trigger btn_calendar">Calendar</button>
                                    </span>
                                    ~
                                    <span class="apply_date">
                                        <input type="text" id="work_end_dt" name="work_end_dt" class="expect_date bar_input" maxlength="8" data-only-number="true" data-dateformat="yymmdd" autocomplete="off">
                                        <button type="button" class="ui-datepicker-trigger btn_calendar">Calendar</button>
                                    </span>
                                    <span id="work_period_text"></span>
                                </div>
                            </td>
                        </tr>
                        <tr class="onlyPortfolio" style="display: none;">
                            <th scope="row">작업툴</th>
                            <td>
                                <input type="text" name="work_tool_nm" id="work_tool_nm" value="" maxlength="100">
                            </td>
                        </tr>
                        <tr class="onlyPortfolio" style="display: none;">
                            <th scope="row">작업인원</th>
                            <td class="work_person"><input type="text" name="work_cnt" id="work_cnt" maxlength="3" data-only-number="true">명</td>
                        </tr>
                        <tr class="onlyPortfolio" style="display: none;">
                            <th scope="row">작품소개<span class="capacity_limit" id="work_explain_cnt">(0/300Byte)</span></th>
                            <td>
                                <textarea id="work_introduce" name="work_introduce" data-char-count="true" data-maxbyte="300" cols="30" rows="10" style="word-break:break-all;"></textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="legal_notice_txt">
                        <span>파일은 30MB이하의 파일을 등록하실 수 있습니다. 용량이 큰 파일은 외부 링크를 활용하여 등록해주세요.</span>
                        위조된 문서를 등록하여 취업활동에 이용시 법적 책임을 지게 될 수 있습니다.<br>
                        (주)사람인HR은 구직자가 등록한 문서에 대해 보증하거나 별도의 책임을 지지 않으며<br>
                        첨부된 문서를신뢰하여 발생한 법적 분쟁에 책임을 지지 않습니다. (개인회원약관 제15조 관련)
                    </div>
                    <div class="bottom_btn_wrap">
                        <button type="button" class="btn_close">취소</button>
                        <button type="button" class="btn_save">완료</button>
                    </div>
                </fieldset>
            </form>
            <div class="layer_pop_manage layer_progress file_progress" id="attach_file_progress_layer" style="display:none;">
                <div class="layer_manage_wrap">
                    <h4>파일 등록</h4>
                    <div class="loading">
                        <p>파일 업로드 중입니다.<br>업로드가 완료될 때까지 창을 닫지 마세요.</p>
                    </div>
                </div>
            </div>
            <div id="attach_submit_layer_dim" class="attach_submit_layer_dim layer_dim" style="display: none;"></div>
        </div>
    </div>
</script>
						<script type="text/template" id="desire_panel">
    <div class="panel">
        <p class="blind">근무 지역 선택</p>

        <div class="quick">
            <div class="direct">
                <span class="ipt_keyword">
                    <input type="text" name="" id="category_ipt_keyword" placeholder="" autocomplete="off">
                    <button type="button" class="btn_reset" style="display: block;">삭제</button>
                </span>
                <div class="suggestion" style="display:none;">
                    <div class="wrap_scroll">
                        <div class="viewport">
                            <div class="overview" style="top: 0;">
                                <ul class="list_check"></ul>
                                <p class="empty">검색 결과가 없습니다</p>
                            </div>
                        </div>
                    </div>
                    <div class="util_search">
                        <button type="button" class="btn_close">닫기</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="details">
            <div class="wrap_scroll categories">
                <div class="viewport">
                    <div class="overview" style="top: 0;">
                        <ul></ul>
                    </div>
                </div>
            </div>

            <div class="wrap_scroll categories">
                <div class="viewport">
                    <div class="overview" style="top: 0;">
                        <ul></ul>
                    </div>
                </div>
            </div>

            <div class="wrap_scroll filters">
                <div class="viewport">
                    <div class="overview" style="top: 0;">
                        <ul class="list_check" style="display: none;"></ul>
                        <p class="text_idle" style="display: block;"></p>
                    </div>
                </div>
            </div>
            <div class="area_btn">
                <button type="button" class="btn_close">취소</button>
                <button type="button" class="btn_save">확인</button>
            </div>
        </div>
    </div>
</script>

						<script type="text/template" id="data_apply_work_stat">
    {"":"\uadfc\ubb34\ud615\ud0dc","regular":"\uc815\uaddc\uc9c1","trainee":"\uad50\uc721\uc0dd","government":"\ubcc4\uc815\uc9c1","edu_part":"\ud30c\ud2b8","edu_full":"\uc804\uc784","contract":"\uacc4\uc57d\uc9c1","military":"\ubcd1\uc5ed\ud2b9\ub840","internship":"\uc778\ud134\uc9c1","timeandwork":"\uc544\ub974\ubc14\uc774\ud2b8","remote":"\ud30c\uacac\uc9c1","oversea":"\ud574\uc678\ucde8\uc5c5","entrust":"\uc704\ucd09\uc9c1","freelancer":"\ud504\ub9ac\ub79c\uc11c"}</script>

						<script type="text/template" id="data_job_category">
    {"1":{"bcode":"1","name":"\uacbd\uc601\u00b7\uc0ac\ubb34","code":{"101":{"kcode":"7954","tcode":"9","mcode":"9","bcode":"1","code":"101","name":"\uae30\ud68d\u00b7\uc804\ub7b5\u00b7\uacbd\uc601","keyword":{"10101":{"kcode":"8604","tcode":"24","mcode":"1","bcode":"101","code":"10101","name":"\uae30\ud68d"},"10102":{"kcode":"8605","tcode":"24","mcode":"1","bcode":"101","code":"10102","name":"\uc804\ub7b5\uae30\ud68d"},"10103":{"kcode":"8606","tcode":"24","mcode":"1","bcode":"101","code":"10103","name":"\uc0ac\uc5c5\uae30\ud68d"},"10104":{"kcode":"8607","tcode":"24","mcode":"1","bcode":"101","code":"10104","name":"\uc0ac\uc5c5\uc81c\ud734"},"10105":{"kcode":"8608","tcode":"24","mcode":"1","bcode":"101","code":"10105","name":"\ud0c0\ub2f9\uc131\ubd84\uc11d"},"10107":{"kcode":"8609","tcode":"24","mcode":"1","bcode":"101","code":"10107","name":"MBA\ucd9c\uc2e0"},"10108":{"kcode":"8610","tcode":"24","mcode":"1","bcode":"101","code":"10108","name":"\uacbd\uc601\uae30\ud68d"},"10111":{"kcode":"8611","tcode":"24","mcode":"1","bcode":"101","code":"10111","name":"\uc870\uc9c1\uad00\ub9ac"},"10112":{"kcode":"8612","tcode":"24","mcode":"1","bcode":"101","code":"10112","name":"\ubcc0\ud654\uad00\ub9ac"},"10113":{"kcode":"8613","tcode":"24","mcode":"1","bcode":"101","code":"10113","name":"\uc11c\ube44\uc2a4\uae30\ud68d"},"10114":{"kcode":"22238","tcode":"24","mcode":"1","bcode":"101","code":"10114","name":"\uacbd\uc601\ud601\uc2e0\u00b7PI"},"10115":{"kcode":"22239","tcode":"24","mcode":"1","bcode":"101","code":"10115","name":"\ucd9c\ud310\uae30\ud68d"},"10116":{"kcode":"22240","tcode":"24","mcode":"1","bcode":"101","code":"10116","name":"\uc778\uc218\u00b7\ud569\ubcd1"},"10117":{"kcode":"22241","tcode":"24","mcode":"1","bcode":"101","code":"10117","name":"\uc2e0\uaddc\uc0ac\uc5c5\u00b7BD"},"10118":{"kcode":"8670","tcode":"24","mcode":"1","bcode":"101","code":"10118","name":"CEO"},"10119":{"kcode":"8674","tcode":"24","mcode":"1","bcode":"101","code":"10119","name":"COO"},"10120":{"kcode":"31530","tcode":"24","mcode":"1","bcode":"101","code":"10120","name":"\uae30\ud68d\uc870\uc0ac"}}},"102":{"kcode":"7960","tcode":"9","mcode":"9","bcode":"1","code":"102","name":"\ucd1d\ubb34\u00b7\ubc95\ubb34\u00b7\uc0ac\ubb34","keyword":{"10202":{"kcode":"8679","tcode":"24","mcode":"1","bcode":"102","code":"10202","name":"\uc790\uc0b0\uad00\ub9ac"},"10203":{"kcode":"8682","tcode":"24","mcode":"1","bcode":"102","code":"10203","name":"\ud2b9\ud5c8\uc5c5\ubb34"},"10204":{"kcode":"8677","tcode":"24","mcode":"1","bcode":"102","code":"10204","name":"\ubc95\ubb34"},"10207":{"kcode":"8676","tcode":"24","mcode":"1","bcode":"102","code":"10207","name":"\ucd1d\ubb34"},"10210":{"kcode":"8683","tcode":"24","mcode":"1","bcode":"102","code":"10210","name":"\uc0ac\ubb34"},"10213":{"kcode":"8681","tcode":"24","mcode":"1","bcode":"102","code":"10213","name":"\uc778\ud5c8\uac00\uc5c5\ubb34"},"10214":{"kcode":"8680","tcode":"24","mcode":"1","bcode":"102","code":"10214","name":"\uc800\uc791\uad8c\uad00\ub9ac"},"10217":{"kcode":"8685","tcode":"24","mcode":"1","bcode":"102","code":"10217","name":"\ubb38\uc11c\uad00\ub9ac"},"10218":{"kcode":"8686","tcode":"24","mcode":"1","bcode":"102","code":"10218","name":"\ube44\ud488\uad00\ub9ac"},"10219":{"kcode":"22242","tcode":"24","mcode":"1","bcode":"102","code":"10219","name":"\uc1a1\ubb34"},"10220":{"kcode":"22243","tcode":"24","mcode":"1","bcode":"102","code":"10220","name":"\uc758\uc57d\uc0ac\ubb34"},"10221":{"kcode":"22244","tcode":"24","mcode":"1","bcode":"102","code":"10221","name":"\ud56d\uacf5\uc0ac\ubb34"},"10222":{"kcode":"26575","tcode":"24","mcode":"1","bcode":"102","code":"10222","name":"\uacf5\ubb34"},"10223":{"kcode":"31537","tcode":"24","mcode":"1","bcode":"102","code":"10223","name":"\ubb38\uc11c\uc218\ubc1c"}}},"103":{"kcode":"7957","tcode":"9","mcode":"9","bcode":"1","code":"103","name":"\uacbd\ub9ac\u00b7\ucd9c\ub0a9\u00b7\uacb0\uc0b0","keyword":{"10302":{"kcode":"8640","tcode":"24","mcode":"1","bcode":"103","code":"10302","name":"\uacbd\ub9ac"},"10308":{"kcode":"8641","tcode":"24","mcode":"1","bcode":"103","code":"10308","name":"\ub354\uc874"},"10309":{"kcode":"8642","tcode":"24","mcode":"1","bcode":"103","code":"10309","name":"\uacb0\uc0b0\u00b7\uc815\uc0b0"},"10310":{"kcode":"8643","tcode":"24","mcode":"1","bcode":"103","code":"10310","name":"\uae09\uc5ec\uad00\ub9ac"},"10316":{"kcode":"8644","tcode":"24","mcode":"1","bcode":"103","code":"10316","name":"4\ub300\ubcf4\ud5d8"},"10318":{"kcode":"8645","tcode":"24","mcode":"1","bcode":"103","code":"10318","name":"\uae30\uc7a5\u00b7\uc7a5\ubd80\uc815\ub9ac"},"10319":{"kcode":"8646","tcode":"24","mcode":"1","bcode":"103","code":"10319","name":"\ucd9c\ub0a9"},"10320":{"kcode":"8647","tcode":"24","mcode":"1","bcode":"103","code":"10320","name":"\ubd80\uac00\uc138\uc2e0\uace0"},"10322":{"kcode":"8648","tcode":"24","mcode":"1","bcode":"103","code":"10322","name":"\uc804\ud45c\uc785\ub825"},"10323":{"kcode":"8649","tcode":"24","mcode":"1","bcode":"103","code":"10323","name":"\ud310\ub9e4\uad00\ub9ac"}}},"104":{"kcode":"7956","tcode":"9","mcode":"9","bcode":"1","code":"104","name":"\ud64d\ubcf4\u00b7PR\u00b7\uc0ac\ubcf4","keyword":{"10401":{"kcode":"8628","tcode":"24","mcode":"1","bcode":"104","code":"10401","name":"\ud64d\ubcf4"},"10402":{"kcode":"8630","tcode":"24","mcode":"1","bcode":"104","code":"10402","name":"\uc5b8\ub860\ud64d\ubcf4"},"10407":{"kcode":"8629","tcode":"24","mcode":"1","bcode":"104","code":"10407","name":"\ud64d\ubcf4\uae30\ud68d"},"10409":{"kcode":"8635","tcode":"24","mcode":"1","bcode":"104","code":"10409","name":"\uc0ac\ubcf4\u00b7\uc6f9\uc9c4"},"10411":{"kcode":"8634","tcode":"24","mcode":"1","bcode":"104","code":"10411","name":"PR"},"10412":{"kcode":"8631","tcode":"24","mcode":"1","bcode":"104","code":"10412","name":"\uae30\uc5c5\ud64d\ubcf4"},"10413":{"kcode":"31538","tcode":"24","mcode":"1","bcode":"104","code":"10413","name":"\ube0c\ub79c\ub4dc"},"10414":{"kcode":"31539","tcode":"24","mcode":"1","bcode":"104","code":"10414","name":"\uad11\uace0\uad00\ub9ac"},"10415":{"kcode":"31540","tcode":"24","mcode":"1","bcode":"104","code":"10415","name":"\uc774\ubca4\ud2b8"}}},"107":{"kcode":"7961","tcode":"9","mcode":"9","bcode":"1","code":"107","name":"\ube44\uc11c\u00b7\uc548\ub0b4\u00b7\uc218\ud589\uc6d0","keyword":{"10701":{"kcode":"8689","tcode":"24","mcode":"1","bcode":"107","code":"10701","name":"\uc784\uc6d0\ube44\uc11c"},"10702":{"kcode":"8687","tcode":"24","mcode":"1","bcode":"107","code":"10702","name":"\ube44\uc11c"},"10704":{"kcode":"8692","tcode":"24","mcode":"1","bcode":"107","code":"10704","name":"\uc548\ub0b4"},"10705":{"kcode":"8688","tcode":"24","mcode":"1","bcode":"107","code":"10705","name":"\uc218\ud589\ube44\uc11c"},"10708":{"kcode":"8690","tcode":"24","mcode":"1","bcode":"107","code":"10708","name":"\uc804\ubb38\ube44\uc11c"},"10709":{"kcode":"8691","tcode":"24","mcode":"1","bcode":"107","code":"10709","name":"\ube44\uc11c\uc790\uaca9\uc99d"}}},"108":{"kcode":"7963","tcode":"9","mcode":"9","bcode":"1","code":"108","name":"\uc0ac\ubb34\ubcf4\uc870\u00b7\ubb38\uc11c\uc791\uc131","keyword":{"10802":{"kcode":"8709","tcode":"24","mcode":"1","bcode":"108","code":"10802","name":"Excel\u00b7\ub3c4\ud45c"},"10803":{"kcode":"8710","tcode":"24","mcode":"1","bcode":"108","code":"10803","name":"PowerPoint"},"10804":{"kcode":"8707","tcode":"24","mcode":"1","bcode":"108","code":"10804","name":"OA"},"10805":{"kcode":"8714","tcode":"24","mcode":"1","bcode":"108","code":"10805","name":"\uc804\uc0b0\uc785\ub825\u00b7\ud3b8\uc9d1"},"10807":{"kcode":"8708","tcode":"24","mcode":"1","bcode":"108","code":"10807","name":"\uc6cc\ub4dc\u00b7\ubb38\uc11c\uc791\uc131"},"10809":{"kcode":"8711","tcode":"24","mcode":"1","bcode":"108","code":"10809","name":"\uc815\ubcf4\ucc98\ub9ac\uae30\uc0ac"},"10812":{"kcode":"8706","tcode":"24","mcode":"1","bcode":"108","code":"10812","name":"\uc0ac\ubb34\ubcf4\uc870"},"10814":{"kcode":"8716","tcode":"24","mcode":"1","bcode":"108","code":"10814","name":"\ud648\ud398\uc774\uc9c0\uad00\ub9ac"},"10815":{"kcode":"8717","tcode":"24","mcode":"1","bcode":"108","code":"10815","name":"\ub9ac\uc11c\uce58\u00b7\ubaa8\ub2c8\ud130\ub9c1"},"10817":{"kcode":"22258","tcode":"24","mcode":"1","bcode":"108","code":"10817","name":"\uc804\ud654\uc751\ub300"},"10818":{"kcode":"22259","tcode":"24","mcode":"1","bcode":"108","code":"10818","name":"\uc2e4\ud5d8\ubcf4\uc870"},"10819":{"kcode":"22260","tcode":"24","mcode":"1","bcode":"108","code":"10819","name":"\uc790\ub8cc\uc870\uc0ac"},"10820":{"kcode":"22261","tcode":"24","mcode":"1","bcode":"108","code":"10820","name":"\uac8c\uc2dc\ud310\uad00\ub9ac"},"10821":{"kcode":"22262","tcode":"24","mcode":"1","bcode":"108","code":"10821","name":"\ucee8\ud150\uce20\uad00\ub9ac"}}},"113":{"kcode":"7962","tcode":"9","mcode":"9","bcode":"1","code":"113","name":"\uc778\uc0ac\u00b7\uad50\uc721\u00b7\ub178\ubb34","keyword":{"11301":{"kcode":"8694","tcode":"24","mcode":"1","bcode":"113","code":"11301","name":"\uc778\uc0ac"},"11303":{"kcode":"8703","tcode":"24","mcode":"1","bcode":"113","code":"11303","name":"\uad50\uc721\u00b7\uc778\uc7ac\uac1c\ubc1c"},"11305":{"kcode":"8701","tcode":"24","mcode":"1","bcode":"113","code":"11305","name":"\uc784\uae08\ud611\uc0c1\u00b7\uad00\ub9ac"},"11310":{"kcode":"8698","tcode":"24","mcode":"1","bcode":"113","code":"11310","name":"MBO"},"11311":{"kcode":"8697","tcode":"24","mcode":"1","bcode":"113","code":"11311","name":"\uc131\uacfc\uad00\ub9ac"},"11312":{"kcode":"8695","tcode":"24","mcode":"1","bcode":"113","code":"11312","name":"HRD\u00b7HRM"},"11313":{"kcode":"8699","tcode":"24","mcode":"1","bcode":"113","code":"11313","name":"\ub178\ubb34\u00b7\ub178\uc0ac\uad00\ub9ac"},"11316":{"kcode":"8702","tcode":"24","mcode":"1","bcode":"113","code":"11316","name":"\ubcf5\ub9ac\ud6c4\uc0dd"},"11317":{"kcode":"22247","tcode":"24","mcode":"1","bcode":"113","code":"11317","name":"\uc778\uc0ac\uae30\ud68d"},"11318":{"kcode":"22248","tcode":"24","mcode":"1","bcode":"113","code":"11318","name":"PHR\u00b7\uad6d\uc81c\uc778\uc0ac"},"11319":{"kcode":"22249","tcode":"24","mcode":"1","bcode":"113","code":"11319","name":"\ucc44\uc6a9\u00b7\uba74\uc811"},"11320":{"kcode":"22250","tcode":"24","mcode":"1","bcode":"113","code":"11320","name":"\uc778\uc0ac\ud3c9\uac00"},"11321":{"kcode":"22251","tcode":"24","mcode":"1","bcode":"113","code":"11321","name":"\uc9c1\ubb34\ubd84\uc11d"},"11322":{"kcode":"22252","tcode":"24","mcode":"1","bcode":"113","code":"11322","name":"\ubcf4\uc0c1\u00b7\uc2b9\uc9c4"}}},"114":{"kcode":"7958","tcode":"9","mcode":"9","bcode":"1","code":"114","name":"\ud68c\uacc4\u00b7\uc7ac\ubb34\u00b7\uc138\ubb34\u00b7IR","keyword":{"11402":{"kcode":"8651","tcode":"24","mcode":"1","bcode":"114","code":"11402","name":"\uc7ac\ubb34"},"11403":{"kcode":"8652","tcode":"24","mcode":"1","bcode":"114","code":"11403","name":"\uc138\ubb34"},"11404":{"kcode":"8653","tcode":"24","mcode":"1","bcode":"114","code":"11404","name":"\uc790\uae08\uc6b4\uc6a9\u00b7\uc870\ub2ec"},"11407":{"kcode":"8656","tcode":"24","mcode":"1","bcode":"114","code":"11407","name":"\uc8fc\uc2ddIR\u00b7\uacf5\uc2dc"},"11408":{"kcode":"8657","tcode":"24","mcode":"1","bcode":"114","code":"11408","name":"\uc678\ud658\u00b7nego"},"11409":{"kcode":"8658","tcode":"24","mcode":"1","bcode":"114","code":"11409","name":"\ud1b5\uacc4\u00b7\ub370\uc774\ud130"},"11414":{"kcode":"8664","tcode":"24","mcode":"1","bcode":"114","code":"11414","name":"CPA\u00b7AICPA"},"11416":{"kcode":"8654","tcode":"24","mcode":"1","bcode":"114","code":"11416","name":"\uc6d0\uac00\ud68c\uacc4"},"11417":{"kcode":"8655","tcode":"24","mcode":"1","bcode":"114","code":"11417","name":"\uacbd\uc601\uc9c0\uc6d0"},"11418":{"kcode":"8650","tcode":"24","mcode":"1","bcode":"114","code":"11418","name":"\ud68c\uacc4"},"11419":{"kcode":"8659","tcode":"24","mcode":"1","bcode":"114","code":"11419","name":"\ub0b4\ubd80\uac10\uc0ac\u00b7\ud1b5\uc81c"},"11420":{"kcode":"8666","tcode":"24","mcode":"1","bcode":"114","code":"11420","name":"\uc804\uc0b0\ud68c\uacc4"},"11421":{"kcode":"8667","tcode":"24","mcode":"1","bcode":"114","code":"11421","name":"\uad00\ub9ac\ud68c\uacc4"},"11423":{"kcode":"22245","tcode":"24","mcode":"1","bcode":"114","code":"11423","name":"ERP\uc6b4\uc6a9"},"11424":{"kcode":"22246","tcode":"24","mcode":"1","bcode":"114","code":"11424","name":"\uc608\uc0b0\uad00\ub9ac"},"11425":{"kcode":"8673","tcode":"24","mcode":"1","bcode":"114","code":"11425","name":"CFO"},"11426":{"kcode":"31525","tcode":"24","mcode":"1","bcode":"114","code":"11426","name":"\ud68c\uacc4\uac10\uc0ac"},"11427":{"kcode":"31526","tcode":"24","mcode":"1","bcode":"114","code":"11427","name":"SAP"},"11428":{"kcode":"31527","tcode":"24","mcode":"1","bcode":"114","code":"11428","name":"CFA"},"11429":{"kcode":"31528","tcode":"24","mcode":"1","bcode":"114","code":"11429","name":"\uc7ac\ubb34\ud68c\uacc4"},"11430":{"kcode":"31529","tcode":"24","mcode":"1","bcode":"114","code":"11430","name":"\uc138\ubb34\uc870\uc0ac"}}},"119":{"kcode":"7955","tcode":"9","mcode":"9","bcode":"1","code":"119","name":"\ub9c8\ucf00\ud305\u00b7\uad11\uace0\u00b7\ubd84\uc11d","keyword":{"11902":{"kcode":"8615","tcode":"24","mcode":"1","bcode":"119","code":"11902","name":"\ub9c8\ucf00\ud305\uc804\ub7b5\u00b7\uae30\ud68d"},"11905":{"kcode":"8625","tcode":"24","mcode":"1","bcode":"119","code":"11905","name":"\uc2dc\uc7a5\uc870\uc0ac\u00b7\ubd84\uc11d"},"11906":{"kcode":"8627","tcode":"24","mcode":"1","bcode":"119","code":"11906","name":"BM\u00b7\ube0c\ub79c\ub4dc\ub9e4\ub2c8\uc800"},"11907":{"kcode":"8622","tcode":"24","mcode":"1","bcode":"119","code":"11907","name":"\ud504\ub85c\ubaa8\uc158"},"11908":{"kcode":"8621","tcode":"24","mcode":"1","bcode":"119","code":"11908","name":"\uad11\uace0"},"11909":{"kcode":"8624","tcode":"24","mcode":"1","bcode":"119","code":"11909","name":"\ub77c\uc774\uc13c\uc2f1"},"11910":{"kcode":"8626","tcode":"24","mcode":"1","bcode":"119","code":"11910","name":"CRM"},"11911":{"kcode":"8617","tcode":"24","mcode":"1","bcode":"119","code":"11911","name":"\uc2a4\ud3ec\uce20\ub9c8\ucf00\ud305"},"11912":{"kcode":"8618","tcode":"24","mcode":"1","bcode":"119","code":"11912","name":"\uc628\ub77c\uc778\ub9c8\ucf00\ud305"},"11913":{"kcode":"8619","tcode":"24","mcode":"1","bcode":"119","code":"11913","name":"\ud574\uc678\ub9c8\ucf00\ud305"},"11914":{"kcode":"8620","tcode":"24","mcode":"1","bcode":"119","code":"11914","name":"\uc785\uc18c\ubb38\u00b7\ubc14\uc774\ub7f4"},"11915":{"kcode":"22253","tcode":"24","mcode":"1","bcode":"119","code":"11915","name":"\ube0c\ub79c\ub4dc\ub124\uc774\ubc0d"},"11916":{"kcode":"22254","tcode":"24","mcode":"1","bcode":"119","code":"11916","name":"\uc124\ubb38\u00b7\ub9ac\uc11c\uce58"},"11917":{"kcode":"22255","tcode":"24","mcode":"1","bcode":"119","code":"11917","name":"\uadf8\ub798\ud504\u00b7\ub3c4\ud45c"},"11918":{"kcode":"22256","tcode":"24","mcode":"1","bcode":"119","code":"11918","name":"\ubbf8\ub514\uc5b4\ud50c\ub798\ub2dd"},"11919":{"kcode":"22257","tcode":"24","mcode":"1","bcode":"119","code":"11919","name":"\ub9e4\uccb4\ubd84\uc11d \uad6c\ub9e4"},"11920":{"kcode":"8675","tcode":"24","mcode":"1","bcode":"119","code":"11920","name":"CMO"},"11921":{"kcode":"31531","tcode":"24","mcode":"1","bcode":"119","code":"11921","name":"\uad11\uace0\uae30\ud68d"},"11922":{"kcode":"31532","tcode":"24","mcode":"1","bcode":"119","code":"11922","name":"\uad6d\uc81c\ud68c\uc758"},"11923":{"kcode":"31533","tcode":"24","mcode":"1","bcode":"119","code":"11923","name":"\uc5c5\ubb34\uc81c\ud734"},"11924":{"kcode":"31534","tcode":"24","mcode":"1","bcode":"119","code":"11924","name":"\uc804\uc2dc"},"11925":{"kcode":"31535","tcode":"24","mcode":"1","bcode":"119","code":"11925","name":"\ud310\ucd09"},"11926":{"kcode":"39346","tcode":"24","mcode":"1","bcode":"119","code":"11926","name":"\ud0a4\uc6cc\ub4dc\uad11\uace0"}}},"120":{"kcode":"8010","tcode":"9","mcode":"9","bcode":"1","code":"120","name":"\uc804\uc2dc\u00b7\ucee8\ubca4\uc158\u00b7\uc138\ubbf8\ub098","keyword":{"12001":{"kcode":"9352","tcode":"24","mcode":"1","bcode":"120","code":"12001","name":"\ub9ac\uc149\uc158"},"12002":{"kcode":"9353","tcode":"24","mcode":"1","bcode":"120","code":"12002","name":"\ucee8\uc2dc\uc5b4\uc9c0"},"12003":{"kcode":"9354","tcode":"24","mcode":"1","bcode":"120","code":"12003","name":"\uc804\uc2dc\uae30\ud68d"},"12004":{"kcode":"9355","tcode":"24","mcode":"1","bcode":"120","code":"12004","name":"\ud68c\uc758 \ucee8\ubca4\uc158"},"12005":{"kcode":"9356","tcode":"24","mcode":"1","bcode":"120","code":"12005","name":"\uc138\ubbf8\ub098\u00b7\ud3ec\ub7fc"}}}}},"10":{"bcode":"10","name":"\uc720\ud1b5\u00b7\ubb34\uc5ed","code":{"1001":{"kcode":"8043","tcode":"9","mcode":"9","bcode":"10","code":"1001","name":"\ubb3c\ub958\u00b7\uc720\ud1b5\u00b7\uc6b4\uc1a1","keyword":{"100101":{"kcode":"9648","tcode":"24","mcode":"10","bcode":"1001","code":"100101","name":"\ubb3c\ub958"},"100102":{"kcode":"9649","tcode":"24","mcode":"10","bcode":"1001","code":"100102","name":"\uc720\ud1b5"},"100103":{"kcode":"9650","tcode":"24","mcode":"10","bcode":"1001","code":"100103","name":"\uc0c1\ud488\uc785\ucd9c\uace0"},"100104":{"kcode":"9651","tcode":"24","mcode":"10","bcode":"1001","code":"100104","name":"\ubb3c\ub958\uc13c\ud130"},"100105":{"kcode":"9654","tcode":"24","mcode":"10","bcode":"1001","code":"100105","name":"\ud574\uc6b4\u00b7\ud574\uc591"},"100106":{"kcode":"9655","tcode":"24","mcode":"10","bcode":"1001","code":"100106","name":"\ud56d\uacf5\uc6b4\uc1a1"},"100107":{"kcode":"9656","tcode":"24","mcode":"10","bcode":"1001","code":"100107","name":"\uae30\ud0c0\uc6b4\uc1a1"},"100108":{"kcode":"9657","tcode":"24","mcode":"10","bcode":"1001","code":"100108","name":"\ubc30\ucc28"},"100109":{"kcode":"9652","tcode":"24","mcode":"10","bcode":"1001","code":"100109","name":"\uad6d\uc81c\ubb3c\ub958"},"100111":{"kcode":"21781","tcode":"24","mcode":"10","bcode":"1001","code":"100111","name":"\uc721\ub85c\uc6b4\uc1a1"},"100112":{"kcode":"22856","tcode":"24","mcode":"10","bcode":"1001","code":"100112","name":"\uc6b4\ubc18\u00b7\ud558\uc5ed"},"100113":{"kcode":"22857","tcode":"24","mcode":"10","bcode":"1001","code":"100113","name":"\ud3ec\uc6cc\ub529"},"100114":{"kcode":"31567","tcode":"24","mcode":"10","bcode":"1001","code":"100114","name":"\ubcf4\uc138\uc6b4\uc1a1"},"100115":{"kcode":"31568","tcode":"24","mcode":"10","bcode":"1001","code":"100115","name":"\uc720\ud1b5\uad00\ub9ac"}}},"1002":{"kcode":"8044","tcode":"9","mcode":"9","bcode":"10","code":"1002","name":"\ud574\uc678\uc601\uc5c5\u00b7\ubb34\uc5ed\uc601\uc5c5","keyword":{"100202":{"kcode":"9658","tcode":"24","mcode":"10","bcode":"1002","code":"100202","name":"\ubb34\uc5ed\uc77c\ubc18"},"100208":{"kcode":"9662","tcode":"24","mcode":"10","bcode":"1002","code":"100208","name":"\uc218\ucd9c\uc785\uacc4\uc57d"},"100209":{"kcode":"9665","tcode":"24","mcode":"10","bcode":"1002","code":"100209","name":"\ubc14\uc774\uc5b4\uc0c1\ub2f4"},"100210":{"kcode":"9666","tcode":"24","mcode":"10","bcode":"1002","code":"100210","name":"\uc624\ub354\uad00\ub9ac"},"100211":{"kcode":"9667","tcode":"24","mcode":"10","bcode":"1002","code":"100211","name":"\ubc14\uc774\uc5b4\uad00\ub9ac"},"100212":{"kcode":"9668","tcode":"24","mcode":"10","bcode":"1002","code":"100212","name":"\ubc14\uc774\uc5b4\uac1c\ubc1c"},"100213":{"kcode":"9669","tcode":"24","mcode":"10","bcode":"1002","code":"100213","name":"\ud574\uc678\ub9c8\ucf00\ud305"},"100214":{"kcode":"9670","tcode":"24","mcode":"10","bcode":"1002","code":"100214","name":"\ud574\uc678\uc601\uc5c5"},"100220":{"kcode":"8744","tcode":"24","mcode":"10","bcode":"1002","code":"100220","name":"\uc601\uc5b4"},"100221":{"kcode":"8745","tcode":"24","mcode":"10","bcode":"1002","code":"100221","name":"\uc77c\ubcf8\uc5b4"},"100222":{"kcode":"8746","tcode":"24","mcode":"10","bcode":"1002","code":"100222","name":"\uc911\uad6d\uc5b4"},"100223":{"kcode":"8747","tcode":"24","mcode":"10","bcode":"1002","code":"100223","name":"\ub3c5\uc77c\uc5b4"},"100224":{"kcode":"8748","tcode":"24","mcode":"10","bcode":"1002","code":"100224","name":"\ud504\ub791\uc2a4\uc5b4"},"100225":{"kcode":"8749","tcode":"24","mcode":"10","bcode":"1002","code":"100225","name":"\ud3ec\ub974\ud22c\uac08\uc5b4"},"100226":{"kcode":"8750","tcode":"24","mcode":"10","bcode":"1002","code":"100226","name":"\uc2a4\ud398\uc778\uc5b4"},"100227":{"kcode":"8751","tcode":"24","mcode":"10","bcode":"1002","code":"100227","name":"\ub7ec\uc2dc\uc544\uc5b4"},"100228":{"kcode":"8752","tcode":"24","mcode":"10","bcode":"1002","code":"100228","name":"\ubca0\ud2b8\ub0a8\uc5b4"},"100229":{"kcode":"22858","tcode":"24","mcode":"10","bcode":"1002","code":"100229","name":"\ud574\uc678\uc9c0\uc0ac\u00b7Agent"},"100230":{"kcode":"31570","tcode":"24","mcode":"10","bcode":"1002","code":"100230","name":"\ubb34\uc5ed\uc0ac  "},"100231":{"kcode":"31571","tcode":"24","mcode":"10","bcode":"1002","code":"100231","name":"MD  "},"100232":{"kcode":"31572","tcode":"24","mcode":"10","bcode":"1002","code":"100232","name":"MR  "}}},"1003":{"kcode":"8045","tcode":"9","mcode":"9","bcode":"10","code":"1003","name":"\uad6c\ub9e4\u00b7\uc790\uc7ac\u00b7\uc7ac\uace0","keyword":{"100301":{"kcode":"9677","tcode":"24","mcode":"10","bcode":"1003","code":"100301","name":"\uad6c\ub9e4\uad00\ub9ac"},"100302":{"kcode":"9678","tcode":"24","mcode":"10","bcode":"1003","code":"100302","name":"\uc790\uc7ac\uad00\ub9ac"},"100303":{"kcode":"9679","tcode":"24","mcode":"10","bcode":"1003","code":"100303","name":"\uc7ac\uace0\uad00\ub9ac"},"100304":{"kcode":"9680","tcode":"24","mcode":"10","bcode":"1003","code":"100304","name":"\uc678\uc8fc\uad00\ub9ac"},"100309":{"kcode":"9681","tcode":"24","mcode":"10","bcode":"1003","code":"100309","name":"\uc790\uc7ac\uad6c\ub9e4"},"100310":{"kcode":"9682","tcode":"24","mcode":"10","bcode":"1003","code":"100310","name":"\uc678\uc790\uad6c\ub9e4"},"100312":{"kcode":"9676","tcode":"24","mcode":"10","bcode":"1003","code":"100312","name":"\uad6c\ub9e4\uae30\ud68d"},"100313":{"kcode":"9685","tcode":"24","mcode":"10","bcode":"1003","code":"100313","name":"MRO"},"100314":{"kcode":"9686","tcode":"24","mcode":"10","bcode":"1003","code":"100314","name":"SCM\u00b7SRM"},"100315":{"kcode":"9684","tcode":"24","mcode":"10","bcode":"1003","code":"100315","name":"\uac74\uc124\u00b7\uac74\ucd95\uc790\uc7ac"},"100316":{"kcode":"9687","tcode":"24","mcode":"10","bcode":"1003","code":"100316","name":"\uad6c\ub9e4\ub300\ud589\u00b7\uc18c\uc2f1"},"100317":{"kcode":"9688","tcode":"24","mcode":"10","bcode":"1003","code":"100317","name":"\ucc3d\uace0\uad00\ub9ac"}}},"1004":{"kcode":"8046","tcode":"9","mcode":"9","bcode":"10","code":"1004","name":"\ub0a9\ud488\u00b7\ubc30\uc1a1\u00b7\ud0dd\ubc30","keyword":{"100407":{"kcode":"9695","tcode":"24","mcode":"10","bcode":"1004","code":"100407","name":"\ud0dd\ubc30"},"100408":{"kcode":"9696","tcode":"24","mcode":"10","bcode":"1004","code":"100408","name":"\ud035\uc11c\ube44\uc2a4"},"100409":{"kcode":"9697","tcode":"24","mcode":"10","bcode":"1004","code":"100409","name":"\ud3ec\uc7a5\uc774\uc0ac"},"100410":{"kcode":"9698","tcode":"24","mcode":"10","bcode":"1004","code":"100410","name":"\ubc30\uc1a1\u00b7\uc6b4\uc1a1"},"100411":{"kcode":"9699","tcode":"24","mcode":"10","bcode":"1004","code":"100411","name":"\ub0a9\ud488"},"100413":{"kcode":"31566","tcode":"24","mcode":"10","bcode":"1004","code":"100413","name":"\uc2b9\uc6a9\uae30\uc0ac"}}},"1005":{"kcode":"8047","tcode":"9","mcode":"9","bcode":"10","code":"1005","name":"\uc0c1\ud488\uae30\ud68d\u00b7MD","keyword":{"100501":{"kcode":"9701","tcode":"24","mcode":"10","bcode":"1005","code":"100501","name":"MD\u00b7\uba38\ucc9c\ub2e4\uc774\uc800"},"100502":{"kcode":"9702","tcode":"24","mcode":"10","bcode":"1005","code":"100502","name":"\uc0c1\ud488\uae30\ud68d\u00b7\uac1c\ubc1c"},"100505":{"kcode":"22874","tcode":"24","mcode":"10","bcode":"1005","code":"100505","name":"\ub9ac\ud14c\uc77cMD"},"100506":{"kcode":"22875","tcode":"24","mcode":"10","bcode":"1005","code":"100506","name":"\ud328\uc158MD"},"100507":{"kcode":"22876","tcode":"24","mcode":"10","bcode":"1005","code":"100507","name":"\uc2dd\ud488MD"},"100508":{"kcode":"22877","tcode":"24","mcode":"10","bcode":"1005","code":"100508","name":"\uc720\ud1b5\uad00\ub9ac\uc0ac"},"100509":{"kcode":"22878","tcode":"24","mcode":"10","bcode":"1005","code":"100509","name":"VMD"},"100510":{"kcode":"26605","tcode":"24","mcode":"10","bcode":"1005","code":"100510","name":"\uac00\ub9f9\uc810\uad00\ub9ac(SV)"}}},"1006":{"kcode":"22853","tcode":"9","mcode":"9","bcode":"10","code":"1006","name":"\ubb34\uc5ed\uc0ac\ubb34\u00b7\uc218\ucd9c\uc785","keyword":{"100601":{"kcode":"22859","tcode":"24","mcode":"10","bcode":"1006","code":"100601","name":"\uc218\ucd9c\uc785\uc0ac\ubb34\u00b7nego"},"100602":{"kcode":"22860","tcode":"24","mcode":"10","bcode":"1006","code":"100602","name":"\ubb34\uc5ed\uc0ac\ubb34"},"100603":{"kcode":"22861","tcode":"24","mcode":"10","bcode":"1006","code":"100603","name":"\ubb34\uc5ed\uc601\uc5b4"},"100604":{"kcode":"22862","tcode":"24","mcode":"10","bcode":"1006","code":"100604","name":"\ubb34\uc5ed\uacbd\ub9ac\u00b7\ud68c\uacc4"},"100605":{"kcode":"22863","tcode":"24","mcode":"10","bcode":"1006","code":"100605","name":"\uc678\ud658\uad00\ub9ac"},"100606":{"kcode":"22864","tcode":"24","mcode":"10","bcode":"1006","code":"100606","name":"\ubc1c\uc8fc\u00b7\ucd9c\uace0\uad00\ub9ac"},"100609":{"kcode":"22867","tcode":"24","mcode":"10","bcode":"1006","code":"100609","name":"MR"},"100610":{"kcode":"22868","tcode":"24","mcode":"10","bcode":"1006","code":"100610","name":"\ubb34\uc5ed\uc911\uac1c\uc778"},"100611":{"kcode":"22869","tcode":"24","mcode":"10","bcode":"1006","code":"100611","name":"LC\u00b7\uc2e0\uc6a9\uc7a5"},"100612":{"kcode":"22870","tcode":"24","mcode":"10","bcode":"1006","code":"100612","name":"\uc120\uc801"},"100613":{"kcode":"22871","tcode":"24","mcode":"10","bcode":"1006","code":"100613","name":"\uad00\uc138\uc0ac"},"100614":{"kcode":"22872","tcode":"24","mcode":"10","bcode":"1006","code":"100614","name":"\uc138\uad00\u00b7\ud1b5\uad00"},"100615":{"kcode":"22873","tcode":"24","mcode":"10","bcode":"1006","code":"100615","name":"\ud1b5\uad00\ub300\ub9ac\uc778"}}},"1007":{"kcode":"22854","tcode":"9","mcode":"9","bcode":"10","code":"1007","name":"\uc6b4\uc804\u00b7\uae30\uc0ac","keyword":{"100701":{"kcode":"22879","tcode":"24","mcode":"10","bcode":"1007","code":"100701","name":"\uc6b4\uc804\uae30\uc0ac"},"100702":{"kcode":"22880","tcode":"24","mcode":"10","bcode":"1007","code":"100702","name":"\ubc84\uc2a4\uc6b4\uc804"},"100703":{"kcode":"22881","tcode":"24","mcode":"10","bcode":"1007","code":"100703","name":"\ud0dd\uc2dc\uc6b4\uc804"},"100704":{"kcode":"22882","tcode":"24","mcode":"10","bcode":"1007","code":"100704","name":"\uc218\ud589\uae30\uc0ac"},"100705":{"kcode":"22883","tcode":"24","mcode":"10","bcode":"1007","code":"100705","name":"\uc2b9\ud569\uae30\uc0ac"},"100706":{"kcode":"22884","tcode":"24","mcode":"10","bcode":"1007","code":"100706","name":"\ud559\uc6d0\ucc28\ub7c9"},"100707":{"kcode":"22885","tcode":"24","mcode":"10","bcode":"1007","code":"100707","name":"\ub300\ub9ac\uc6b4\uc804"},"100708":{"kcode":"22886","tcode":"24","mcode":"10","bcode":"1007","code":"100708","name":"\uad00\uad11\ubc84\uc2a4"}}},"1008":{"kcode":"22855","tcode":"9","mcode":"9","bcode":"10","code":"1008","name":"\uc911\uc7a5\ube44\u00b7\ud654\ubb3c","keyword":{"100802":{"kcode":"22888","tcode":"24","mcode":"10","bcode":"1008","code":"100802","name":"\ud0d1"},"100803":{"kcode":"22889","tcode":"24","mcode":"10","bcode":"1008","code":"100803","name":"\ub0c9\ub3d9\ud0d1"},"100804":{"kcode":"22890","tcode":"24","mcode":"10","bcode":"1008","code":"100804","name":"\uace0\uc0c1\ud0d1"},"100806":{"kcode":"22892","tcode":"24","mcode":"10","bcode":"1008","code":"100806","name":"\ub364\ud504"},"100807":{"kcode":"22893","tcode":"24","mcode":"10","bcode":"1008","code":"100807","name":"\uc719\ubc14\ub514"},"100808":{"kcode":"22894","tcode":"24","mcode":"10","bcode":"1008","code":"100808","name":"\uce74\uace0"},"100809":{"kcode":"22895","tcode":"24","mcode":"10","bcode":"1008","code":"100809","name":"\ud2b9\uc218\ucc28\ub7c9"},"100810":{"kcode":"22896","tcode":"24","mcode":"10","bcode":"1008","code":"100810","name":"1\ud1a4"},"100811":{"kcode":"22897","tcode":"24","mcode":"10","bcode":"1008","code":"100811","name":"2.5\ud1a4"},"100812":{"kcode":"22898","tcode":"24","mcode":"10","bcode":"1008","code":"100812","name":"3.5\ud1a4"},"100813":{"kcode":"22899","tcode":"24","mcode":"10","bcode":"1008","code":"100813","name":"4.5\ud1a4"},"100814":{"kcode":"22900","tcode":"24","mcode":"10","bcode":"1008","code":"100814","name":"5\ud1a4\uc774\uc0c1"},"100815":{"kcode":"22901","tcode":"24","mcode":"10","bcode":"1008","code":"100815","name":"\uc911\uc7a5\ube44\uc6b4\uc804"},"100816":{"kcode":"22902","tcode":"24","mcode":"10","bcode":"1008","code":"100816","name":"\uc9c0\uac8c\ucc28"},"100817":{"kcode":"22903","tcode":"24","mcode":"10","bcode":"1008","code":"100817","name":"\ub808\ubbf8\ucf58\u00b7\ub364\ud504 "},"100818":{"kcode":"22904","tcode":"24","mcode":"10","bcode":"1008","code":"100818","name":"\ud3ec\ud06c\ub808\uc778\u00b7\uad74\uc0ad\uae30"},"100819":{"kcode":"22905","tcode":"24","mcode":"10","bcode":"1008","code":"100819","name":"\uad74\ucc29\uae30"},"100820":{"kcode":"22906","tcode":"24","mcode":"10","bcode":"1008","code":"100820","name":"\ud2b8\ub808\uc77c\ub7ec"},"100821":{"kcode":"22907","tcode":"24","mcode":"10","bcode":"1008","code":"100821","name":"\ub85c\uc6b0\ub354"},"100822":{"kcode":"22908","tcode":"24","mcode":"10","bcode":"1008","code":"100822","name":"\uae30\uc911\uae30"},"100823":{"kcode":"22909","tcode":"24","mcode":"10","bcode":"1008","code":"100823","name":"\ubd88\ub3c4\uc800"},"100824":{"kcode":"22910","tcode":"24","mcode":"10","bcode":"1008","code":"100824","name":"\ud0f1\ud06c\ub85c\ub9ac"},"100825":{"kcode":"22911","tcode":"24","mcode":"10","bcode":"1008","code":"100825","name":"\uacac\uc778\ucc28"},"100826":{"kcode":"22912","tcode":"24","mcode":"10","bcode":"1008","code":"100826","name":"\uc720\uc870\ucc28\ub7c9"},"100827":{"kcode":"22913","tcode":"24","mcode":"10","bcode":"1008","code":"100827","name":"\ud2b8\ub7ed\u00b7\ud654\ubb3c"}}}}},"2":{"bcode":"2","name":"\uc601\uc5c5\u00b7\uace0\uac1d\uc0c1\ub2f4","code":{"202":{"kcode":"7964","tcode":"9","mcode":"9","bcode":"2","code":"202","name":"\uc77c\ubc18\uc601\uc5c5","keyword":{"20202":{"kcode":"8720","tcode":"24","mcode":"2","bcode":"202","code":"20202","name":"\uc81c\uc57d\uc601\uc5c5"},"20203":{"kcode":"8721","tcode":"24","mcode":"2","bcode":"202","code":"20203","name":"\uc790\ub3d9\ucc28\uc601\uc5c5"},"20208":{"kcode":"8718","tcode":"24","mcode":"2","bcode":"202","code":"20208","name":"\uc77c\ubc18\uc601\uc5c5"},"20212":{"kcode":"8724","tcode":"24","mcode":"2","bcode":"202","code":"20212","name":"\ud654\uc7a5\ud488\uc601\uc5c5"},"20214":{"kcode":"8726","tcode":"24","mcode":"2","bcode":"202","code":"20214","name":"\ub0a9\ud488\uc601\uc5c5"},"20215":{"kcode":"8727","tcode":"24","mcode":"2","bcode":"202","code":"20215","name":"\uc911\uace0\ucc28\ub51c\ub7ec"},"20216":{"kcode":"8728","tcode":"24","mcode":"2","bcode":"202","code":"20216","name":"\uc8fc\ub958\uc601\uc5c5"},"20217":{"kcode":"22263","tcode":"24","mcode":"2","bcode":"202","code":"20217","name":"\uc2dd\ud488\u00b7\uc74c\ub8cc\uc601\uc5c5"},"20218":{"kcode":"22264","tcode":"24","mcode":"2","bcode":"202","code":"20218","name":"\ubd80\ub3d9\uc0b0\uc601\uc5c5"},"20219":{"kcode":"22265","tcode":"24","mcode":"2","bcode":"202","code":"20219","name":"\uac00\ub9f9\uc810\uc601\uc5c5"},"20220":{"kcode":"22266","tcode":"24","mcode":"2","bcode":"202","code":"20220","name":"\ud578\ub4dc\ud3f0\uc601\uc5c5"},"20221":{"kcode":"22267","tcode":"24","mcode":"2","bcode":"202","code":"20221","name":"\uc0c1\uc870\u00b7\uc7a5\ub840\uc601\uc5c5"},"20222":{"kcode":"33204","tcode":"24","mcode":"2","bcode":"202","code":"20222","name":"\ubc95\uc778\uc601\uc5c5"},"20223":{"kcode":"33205","tcode":"24","mcode":"2","bcode":"202","code":"20223","name":"\ud574\uc678\uc601\uc5c5"}}},"203":{"kcode":"7971","tcode":"9","mcode":"9","bcode":"2","code":"203","name":"\ud310\ub9e4\u00b7\ub9e4\uc7a5\uad00\ub9ac","keyword":{"20302":{"kcode":"8794","tcode":"24","mcode":"2","bcode":"203","code":"20302","name":"\ub9e4\uc7a5\uad00\ub9ac"},"20303":{"kcode":"8793","tcode":"24","mcode":"2","bcode":"203","code":"20303","name":"\ub9e4\uc7a5\ud310\ub9e4"},"20305":{"kcode":"8795","tcode":"24","mcode":"2","bcode":"203","code":"20305","name":"\uc9c0\uc810\uad00\ub9ac"},"20306":{"kcode":"8796","tcode":"24","mcode":"2","bcode":"203","code":"20306","name":"\ud310\ub9e4\uad00\ub9ac"},"20308":{"kcode":"8797","tcode":"24","mcode":"2","bcode":"203","code":"20308","name":"\uc758\ub958\u00b7\uad6c\ub450\u00b7\uc2e0\ubc1c"},"20309":{"kcode":"8798","tcode":"24","mcode":"2","bcode":"203","code":"20309","name":"\ud654\uc7a5\ud488\u00b7\ubdf0\ud2f0"},"20310":{"kcode":"8799","tcode":"24","mcode":"2","bcode":"203","code":"20310","name":"\ub3c4\uc11c\u00b7\uc11c\uc801\u00b7\uc11c\uc810"},"20311":{"kcode":"8800","tcode":"24","mcode":"2","bcode":"203","code":"20311","name":"\uac00\uc804\ud310\ub9e4"},"20312":{"kcode":"8801","tcode":"24","mcode":"2","bcode":"203","code":"20312","name":"\uc7a1\ud654\u00b7\uac00\ubc29\u00b7\uc9c0\uac11"},"20313":{"kcode":"8802","tcode":"24","mcode":"2","bcode":"203","code":"20313","name":"\uc678\uc2dd\u00b7\uc2dd\ud488"},"20314":{"kcode":"8803","tcode":"24","mcode":"2","bcode":"203","code":"20314","name":"\ucef4\ud4e8\ud130\ud310\ub9e4"},"20315":{"kcode":"8804","tcode":"24","mcode":"2","bcode":"203","code":"20315","name":"\ud734\ub300\ud3f0\u00b7MP3"},"20316":{"kcode":"8805","tcode":"24","mcode":"2","bcode":"203","code":"20316","name":"\uc0ac\ubb34\uc6a9\ud488"},"20319":{"kcode":"8808","tcode":"24","mcode":"2","bcode":"203","code":"20319","name":"\ud64d\ubcf4\ud310\ucd09"},"20320":{"kcode":"8792","tcode":"24","mcode":"2","bcode":"203","code":"20320","name":"\uc548\ub0b4\u00b7\ud504\ub7f0\ud2b8"},"20321":{"kcode":"8788","tcode":"24","mcode":"2","bcode":"203","code":"20321","name":"\uc0f5\ub9c8\uc2a4\ud130"},"20323":{"kcode":"8789","tcode":"24","mcode":"2","bcode":"203","code":"20323","name":"\uce90\uc154\u00b7\ud154\ub7ec"},"20324":{"kcode":"8807","tcode":"24","mcode":"2","bcode":"203","code":"20324","name":"\uc608\uc57d\u00b7\ubc1c\uad8c"},"20327":{"kcode":"8806","tcode":"24","mcode":"2","bcode":"203","code":"20327","name":"\uaf43\u00b7\ud50c\ub85c\ub9ac\uc2a4\ud2b8"},"20328":{"kcode":"22269","tcode":"24","mcode":"2","bcode":"203","code":"20328","name":"\uc2a4\ud3ec\uce20\u00b7\ub808\uc800\uc6a9\ud488"},"20329":{"kcode":"22270","tcode":"24","mcode":"2","bcode":"203","code":"20329","name":"\uac00\uad6c\u00b7\uce68\ub300\u00b7\uc18c\ud488"},"20330":{"kcode":"22271","tcode":"24","mcode":"2","bcode":"203","code":"20330","name":"\ub9e4\ucd9c\uad00\ub9ac"},"20331":{"kcode":"22272","tcode":"24","mcode":"2","bcode":"203","code":"20331","name":"\uc9c4\uc5f4\uad00\ub9ac"},"20332":{"kcode":"22273","tcode":"24","mcode":"2","bcode":"203","code":"20332","name":"\uc7ac\uace0\uad00\ub9ac"},"20333":{"kcode":"22274","tcode":"24","mcode":"2","bcode":"203","code":"20333","name":"\uc560\uacac\uc6a9\ud488"},"20334":{"kcode":"22275","tcode":"24","mcode":"2","bcode":"203","code":"20334","name":"\uc804\uc5ed\uc7a5\uad50"},"20335":{"kcode":"22276","tcode":"24","mcode":"2","bcode":"203","code":"20335","name":"\uc8fc\uc5bc\ub9ac\u00b7\uadc0\uae08\uc18d"},"20336":{"kcode":"26576","tcode":"24","mcode":"2","bcode":"203","code":"20336","name":"\ubc29\ubb38\ud310\ub9e4"}}},"205":{"kcode":"7968","tcode":"9","mcode":"9","bcode":"2","code":"205","name":"IT\u00b7\uc194\ub8e8\uc158\uc601\uc5c5","keyword":{"20501":{"kcode":"8763","tcode":"24","mcode":"2","bcode":"205","code":"20501","name":"\ud648\ud398\uc774\uc9c0\uc81c\uc791\uc601\uc5c5"},"20503":{"kcode":"8757","tcode":"24","mcode":"2","bcode":"205","code":"20503","name":"\uc2dc\uc2a4\ud15c\uc601\uc5c5"},"20504":{"kcode":"8758","tcode":"24","mcode":"2","bcode":"205","code":"20504","name":"\uc194\ub8e8\uc158\uc601\uc5c5"},"20505":{"kcode":"8760","tcode":"24","mcode":"2","bcode":"205","code":"20505","name":"\ub124\ud2b8\uc6cc\ud06c\uc601\uc5c5"},"20506":{"kcode":"8761","tcode":"24","mcode":"2","bcode":"205","code":"20506","name":"HW\u00b7SW \uc601\uc5c5"},"20508":{"kcode":"8759","tcode":"24","mcode":"2","bcode":"205","code":"20508","name":"SI\uc601\uc5c5"},"20509":{"kcode":"22277","tcode":"24","mcode":"2","bcode":"205","code":"20509","name":"\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc601\uc5c5"},"20510":{"kcode":"22278","tcode":"24","mcode":"2","bcode":"205","code":"20510","name":"\ubcf4\uc548\uc2dc\uc2a4\ud15c\uc601\uc5c5"},"20511":{"kcode":"22279","tcode":"24","mcode":"2","bcode":"205","code":"20511","name":"\uae30\uc220\uc601\uc5c5(IT)"}}},"206":{"kcode":"7970","tcode":"9","mcode":"9","bcode":"2","code":"206","name":"\uae08\uc735\u00b7\ubcf4\ud5d8\uc601\uc5c5","keyword":{"20601":{"kcode":"8787","tcode":"24","mcode":"2","bcode":"206","code":"20601","name":"\uae08\uc735\uc601\uc5c5"},"20604":{"kcode":"8776","tcode":"24","mcode":"2","bcode":"206","code":"20604","name":"\ud22c\uc790\uc0c1\ub2f4"},"20605":{"kcode":"8779","tcode":"24","mcode":"2","bcode":"206","code":"20605","name":"\uae08\uc735\uc790\uc0b0\uad00\ub9ac\uc0ac"},"20607":{"kcode":"8785","tcode":"24","mcode":"2","bcode":"206","code":"20607","name":"\ubc95\uc778\uace0\uac1d\uc601\uc5c5"},"20608":{"kcode":"8786","tcode":"24","mcode":"2","bcode":"206","code":"20608","name":"\uac1c\uc778\uace0\uac1d\uc601\uc5c5"},"20609":{"kcode":"8782","tcode":"24","mcode":"2","bcode":"206","code":"20609","name":"\ubc29\uce74\uc288\ub791\uc2a4"},"20610":{"kcode":"8783","tcode":"24","mcode":"2","bcode":"206","code":"20610","name":"\uc5ec\uc2e0\uc0c1\ub2f4"},"20612":{"kcode":"8780","tcode":"24","mcode":"2","bcode":"206","code":"20612","name":"\uc7ac\ubb34\uc124\uacc4"},"20613":{"kcode":"8784","tcode":"24","mcode":"2","bcode":"206","code":"20613","name":"PB"},"20615":{"kcode":"8775","tcode":"24","mcode":"2","bcode":"206","code":"20615","name":"\uce74\ub4dc\uc601\uc5c5"},"20617":{"kcode":"22284","tcode":"24","mcode":"2","bcode":"206","code":"20617","name":"\ub300\ucd9c\uc601\uc5c5"},"20618":{"kcode":"22285","tcode":"24","mcode":"2","bcode":"206","code":"20618","name":"\ubcf4\ud5d8\uc601\uc5c5"},"20619":{"kcode":"26577","tcode":"24","mcode":"2","bcode":"206","code":"20619","name":"\uae08\uc735\uc0ac\ubb34"},"20620":{"kcode":"26578","tcode":"24","mcode":"2","bcode":"206","code":"20620","name":"\ub2f4\ubcf4"},"20621":{"kcode":"26579","tcode":"24","mcode":"2","bcode":"206","code":"20621","name":"\uae08\uc735\uc0c1\ub2f4"},"20622":{"kcode":"31555","tcode":"24","mcode":"2","bcode":"206","code":"20622","name":"\uc7ac\ubb34\uc0c1\ub2f4"},"20623":{"kcode":"31556","tcode":"24","mcode":"2","bcode":"206","code":"20623","name":"\ud154\ub7ec"}}},"207":{"kcode":"7969","tcode":"9","mcode":"9","bcode":"2","code":"207","name":"\uad11\uace0\uc601\uc5c5","keyword":{"20701":{"kcode":"8764","tcode":"24","mcode":"2","bcode":"207","code":"20701","name":"\uad11\uace0\uc601\uc5c5"},"20702":{"kcode":"8765","tcode":"24","mcode":"2","bcode":"207","code":"20702","name":"\ub9e4\uccb4\uad11\uace0"},"20703":{"kcode":"8766","tcode":"24","mcode":"2","bcode":"207","code":"20703","name":"\uc628\ub77c\uc778\uad11\uace0"},"20704":{"kcode":"8770","tcode":"24","mcode":"2","bcode":"207","code":"20704","name":"\uc625\uc678\uad11\uace0"},"20705":{"kcode":"8767","tcode":"24","mcode":"2","bcode":"207","code":"20705","name":"\ud0a4\uc6cc\ub4dc\uad11\uace0"},"20706":{"kcode":"8771","tcode":"24","mcode":"2","bcode":"207","code":"20706","name":"\uc9c0\uc5ed\uad11\uace0"},"20707":{"kcode":"8772","tcode":"24","mcode":"2","bcode":"207","code":"20707","name":"\uc9c0\ud558\ucca0\uad11\uace0"},"20708":{"kcode":"8773","tcode":"24","mcode":"2","bcode":"207","code":"20708","name":"\ubc84\uc2a4\uad11\uace0"},"20710":{"kcode":"8769","tcode":"24","mcode":"2","bcode":"207","code":"20710","name":"DM\u00b7\ud0c0\uac9f\uba54\uc77c"}}},"208":{"kcode":"7967","tcode":"9","mcode":"9","bcode":"2","code":"208","name":"\uae30\uc220\uc601\uc5c5","keyword":{"20801":{"kcode":"8753","tcode":"24","mcode":"2","bcode":"208","code":"20801","name":"\uae30\uc220\uc601\uc5c5(\uc81c\uc870)"},"20802":{"kcode":"8754","tcode":"24","mcode":"2","bcode":"208","code":"20802","name":"\uae30\uc220\uc601\uc5c5(\uac74\uc124)"},"20803":{"kcode":"8755","tcode":"24","mcode":"2","bcode":"208","code":"20803","name":"\uae30\uc220\uc601\uc5c5(\uc720\ud1b5)"},"20804":{"kcode":"22280","tcode":"24","mcode":"2","bcode":"208","code":"20804","name":"\uc7a5\ube44\uc601\uc5c5"},"20805":{"kcode":"22281","tcode":"24","mcode":"2","bcode":"208","code":"20805","name":"\uae30\uc220\uc601\uc5c5(\uc77c\ubc18)"},"20806":{"kcode":"22282","tcode":"24","mcode":"2","bcode":"208","code":"20806","name":"\uc758\ub8cc\uae30\uae30\uc601\uc5c5"},"20807":{"kcode":"31557","tcode":"24","mcode":"2","bcode":"208","code":"20807","name":"\uae30\uc220\uc9c0\uc6d0"}}},"209":{"kcode":"7965","tcode":"9","mcode":"9","bcode":"2","code":"209","name":"\uc601\uc5c5\uae30\ud68d\u00b7\uad00\ub9ac\u00b7\uc9c0\uc6d0","keyword":{"20901":{"kcode":"8733","tcode":"24","mcode":"2","bcode":"209","code":"20901","name":"\uace0\uac1d\uad00\ub9ac"},"20902":{"kcode":"8730","tcode":"24","mcode":"2","bcode":"209","code":"20902","name":"\uc601\uc5c5\uad00\ub9ac"},"20903":{"kcode":"8731","tcode":"24","mcode":"2","bcode":"209","code":"20903","name":"\uac70\ub798\ucc98\uad00\ub9ac"},"20904":{"kcode":"8735","tcode":"24","mcode":"2","bcode":"209","code":"20904","name":"\uc678\uc8fc\uad00\ub9ac"},"20905":{"kcode":"8736","tcode":"24","mcode":"2","bcode":"209","code":"20905","name":"\ub0a9\ud488\uad00\ub9ac"},"20906":{"kcode":"8737","tcode":"24","mcode":"2","bcode":"209","code":"20906","name":"\uc601\uc5c5\uc9c0\uc6d0"},"20907":{"kcode":"8738","tcode":"24","mcode":"2","bcode":"209","code":"20907","name":"\ucc44\uad8c\uad00\ub9ac"},"20908":{"kcode":"8734","tcode":"24","mcode":"2","bcode":"209","code":"20908","name":"\ub300\ub9ac\uc810\u00b7\uc810\ud3ec\uac1c\ubc1c"},"20909":{"kcode":"8732","tcode":"24","mcode":"2","bcode":"209","code":"20909","name":"\uac70\ub798\uc120\uac1c\ubc1c"},"20910":{"kcode":"8729","tcode":"24","mcode":"2","bcode":"209","code":"20910","name":"\uc601\uc5c5\uae30\ud68d"},"20911":{"kcode":"8739","tcode":"24","mcode":"2","bcode":"209","code":"20911","name":"\ub9e4\ucd9c\ubd84\uc11d\u00b7\uad00\ub9ac"},"20912":{"kcode":"22268","tcode":"24","mcode":"2","bcode":"209","code":"20912","name":"\uac00\ub9f9\uc810\uad00\ub9ac"}}},"210":{"kcode":"7972","tcode":"9","mcode":"9","bcode":"2","code":"210","name":"TM\u00b7\uc544\uc6c3\ubc14\uc6b4\ub4dc","keyword":{"21001":{"kcode":"8809","tcode":"24","mcode":"2","bcode":"210","code":"21001","name":"\uc544\uc6c3\ubc14\uc6b4\ub4dc"},"21002":{"kcode":"8810","tcode":"24","mcode":"2","bcode":"210","code":"21002","name":"TM"},"21004":{"kcode":"8813","tcode":"24","mcode":"2","bcode":"210","code":"21004","name":"\uc778\ud130\ub137\u00b7\ud1b5\uc2e0"},"21005":{"kcode":"8816","tcode":"24","mcode":"2","bcode":"210","code":"21005","name":"\ud648\uc1fc\ud551\u00b7\uc1fc\ud551\ubab0"},"21007":{"kcode":"8824","tcode":"24","mcode":"2","bcode":"210","code":"21007","name":"\ud559\uc2b5\uc9c0\u00b7\ucd9c\ud310"},"21010":{"kcode":"8825","tcode":"24","mcode":"2","bcode":"210","code":"21010","name":"\ud559\uc6d0\u00b7\uc720\ud559\uc6d0"},"21011":{"kcode":"8826","tcode":"24","mcode":"2","bcode":"210","code":"21011","name":"\ud56d\uacf5\u00b7\uc5ec\ud589\u00b7\ud638\ud154"},"21012":{"kcode":"8812","tcode":"24","mcode":"2","bcode":"210","code":"21012","name":"\ucf5c\uc13c\ud130\ud310\ub9e4"},"21013":{"kcode":"8823","tcode":"24","mcode":"2","bcode":"210","code":"21013","name":"\ucc44\uad8c\ucd94\uc2ec"},"21015":{"kcode":"8811","tcode":"24","mcode":"2","bcode":"210","code":"21015","name":"\ud574\ud53c\ucf5c"},"21016":{"kcode":"8814","tcode":"24","mcode":"2","bcode":"210","code":"21016","name":"\ud0a4\uc6cc\ub4dc\uad11\uace0"},"21017":{"kcode":"8820","tcode":"24","mcode":"2","bcode":"210","code":"21017","name":"\uc99d\uad8c\u00b7\ubcf4\ud5d8\u00b7\uce74\ub4dc"},"21018":{"kcode":"8818","tcode":"24","mcode":"2","bcode":"210","code":"21018","name":"\ud0dd\ubc30\u00b7\uc6b4\uc1a1\u00b7\ubb3c\ub958"},"21019":{"kcode":"8819","tcode":"24","mcode":"2","bcode":"210","code":"21019","name":"\ubc31\ud654\uc810\u00b7\ub9c8\ud2b8"},"21020":{"kcode":"8815","tcode":"24","mcode":"2","bcode":"210","code":"21020","name":"\uc2e0\ubb38\u00b7\ubc29\uc1a1"},"21021":{"kcode":"8829","tcode":"24","mcode":"2","bcode":"210","code":"21021","name":"\ubd80\ub3d9\uc0b0"},"21022":{"kcode":"22286","tcode":"24","mcode":"2","bcode":"210","code":"21022","name":"\uc6e8\ub529\u00b7\uc7a5\ub840"}}},"211":{"kcode":"7973","tcode":"9","mcode":"9","bcode":"2","code":"211","name":"TM\u00b7\uc778\ubc14\uc6b4\ub4dc","keyword":{"21101":{"kcode":"8831","tcode":"24","mcode":"2","bcode":"211","code":"21101","name":"\uc778\ubc14\uc6b4\ub4dc"},"21103":{"kcode":"8837","tcode":"24","mcode":"2","bcode":"211","code":"21103","name":"\uc778\ud130\ub137\u00b7\ud1b5\uc2e0"},"21105":{"kcode":"8842","tcode":"24","mcode":"2","bcode":"211","code":"21105","name":"\uc99d\uad8c\u00b7\ubcf4\ud5d8\u00b7\uce74\ub4dc"},"21110":{"kcode":"8836","tcode":"24","mcode":"2","bcode":"211","code":"21110","name":"\ucf5c\uc13c\ud130\uc0c1\ub2f4"},"21114":{"kcode":"8840","tcode":"24","mcode":"2","bcode":"211","code":"21114","name":"\ubc31\ud654\uc810\u00b7\ub9c8\ud2b8"},"21116":{"kcode":"8841","tcode":"24","mcode":"2","bcode":"211","code":"21116","name":"\ud0dd\ubc30\u00b7\uc6b4\uc1a1\u00b7\ubb3c\ub958"},"21117":{"kcode":"8845","tcode":"24","mcode":"2","bcode":"211","code":"21117","name":"\ud559\uc2b5\uc9c0\u00b7\ucd9c\ud310"},"21118":{"kcode":"8846","tcode":"24","mcode":"2","bcode":"211","code":"21118","name":"\uc2e0\ubb38\u00b7\ubc29\uc1a1"},"21120":{"kcode":"8848","tcode":"24","mcode":"2","bcode":"211","code":"21120","name":"\ud56d\uacf5\u00b7\uc5ec\ud589\u00b7\ud638\ud154"},"21122":{"kcode":"8850","tcode":"24","mcode":"2","bcode":"211","code":"21122","name":"\ubd80\ub3d9\uc0b0"},"21123":{"kcode":"22342","tcode":"24","mcode":"2","bcode":"211","code":"21123","name":"\uc6e8\ub529\u00b7\uc7a5\ub840"},"21124":{"kcode":"22343","tcode":"24","mcode":"2","bcode":"211","code":"21124","name":"\ud310\ub9e4\u00b7\uc138\uc77c\uc988"},"21125":{"kcode":"22344","tcode":"24","mcode":"2","bcode":"211","code":"21125","name":"\uc804\ud654\uc8fc\ubb38"},"21126":{"kcode":"26580","tcode":"24","mcode":"2","bcode":"211","code":"21126","name":"\ud648\uc1fc\ud551\u00b7\uc1fc\ud551\ubab0"},"21127":{"kcode":"26581","tcode":"24","mcode":"2","bcode":"211","code":"21127","name":"\ud559\uc6d0\u00b7\uc720\ud559\uc6d0"},"21129":{"kcode":"31563","tcode":"24","mcode":"2","bcode":"211","code":"21129","name":"\uad11\uace0"}}},"212":{"kcode":"22341","tcode":"9","mcode":"9","bcode":"2","code":"212","name":"\uace0\uac1d\uc13c\ud130\u00b7CS","keyword":{"21201":{"kcode":"22287","tcode":"24","mcode":"2","bcode":"212","code":"21201","name":"CS"},"21202":{"kcode":"22288","tcode":"24","mcode":"2","bcode":"212","code":"21202","name":"\uace0\uac1d\uc0c1\ub2f4"},"21203":{"kcode":"22289","tcode":"24","mcode":"2","bcode":"212","code":"21203","name":"\uace0\uac1d\uc9c0\uc6d0"},"21204":{"kcode":"22290","tcode":"24","mcode":"2","bcode":"212","code":"21204","name":"\uace0\uac1d\uc751\ub300"},"21205":{"kcode":"22291","tcode":"24","mcode":"2","bcode":"212","code":"21205","name":"\ud68c\uc6d0\uad00\ub9ac"},"21209":{"kcode":"22338","tcode":"24","mcode":"2","bcode":"212","code":"21209","name":"\uc5ec\ub860\uc870\uc0ac\u00b7\ub9ac\uc11c\uce58"},"21210":{"kcode":"22339","tcode":"24","mcode":"2","bcode":"212","code":"21210","name":"\uc804\ud654\uad50\ud658"},"21212":{"kcode":"26582","tcode":"24","mcode":"2","bcode":"212","code":"21212","name":"\ud1b5\ud569\uc13c\ud130(\uba40\ud2f0\uc13c\ud130)"},"21213":{"kcode":"26583","tcode":"24","mcode":"2","bcode":"212","code":"21213","name":"\uace0\uac1d\ubd88\ub9cc\ucc98\ub9ac"},"21214":{"kcode":"26584","tcode":"24","mcode":"2","bcode":"212","code":"21214","name":"\uba54\uc77c\u00b7\uac8c\uc2dc\uae00 \uad00\ub9ac"},"21215":{"kcode":"26585","tcode":"24","mcode":"2","bcode":"212","code":"21215","name":"\uba54\uc2e0\uc800\u00b7\ubb38\uc790 \uc0c1\ub2f4"}}},"213":{"kcode":"26586","tcode":"9","mcode":"9","bcode":"2","code":"213","name":"QA\u00b7CS\uac15\uc0ac\u00b7\uc218\ud37c\ubc14\uc774\uc800","keyword":{"21301":{"kcode":"22292","tcode":"24","mcode":"2","bcode":"213","code":"21301","name":"\ucf5c\uc13c\ud130\uad00\ub9ac"},"21302":{"kcode":"22336","tcode":"24","mcode":"2","bcode":"213","code":"21302","name":"SV(\uc288\ud37c\ubc14\uc774\uc800)"},"21303":{"kcode":"22337","tcode":"24","mcode":"2","bcode":"213","code":"21303","name":"QAA\u00b7\ud1b5\ud654\ud488\uc9c8"},"21304":{"kcode":"22340","tcode":"24","mcode":"2","bcode":"213","code":"21304","name":"CS\uac15\uc0ac\u00b7\uad50\uc721"},"21305":{"kcode":"26587","tcode":"24","mcode":"2","bcode":"213","code":"21305","name":"\ucf5c\uc13c\ud130\ub9e4\ub2c8\uc800"},"21306":{"kcode":"26588","tcode":"24","mcode":"2","bcode":"213","code":"21306","name":"\ud30c\ud2b8\uc7a5\u00b7\uc6b4\uc601\ubcf4\uc870"},"21307":{"kcode":"26589","tcode":"24","mcode":"2","bcode":"213","code":"21307","name":"\ucf5c\ud1b5\uacc4\u00b7\ubd84\uc11d"},"21308":{"kcode":"26590","tcode":"24","mcode":"2","bcode":"213","code":"21308","name":"VOC\uad00\ub9ac\u00b7\ubd84\uc11d"}}}}},"3":{"bcode":"3","name":"\uc0dd\uc0b0\u00b7\uc81c\uc870","code":{"301":{"kcode":"7977","tcode":"9","mcode":"9","bcode":"3","code":"301","name":"\uae08\uc18d\u00b7\uae08\ud615","keyword":{"30101":{"kcode":"8905","tcode":"24","mcode":"3","bcode":"301","code":"30101","name":"\uae08\uc18d"},"30102":{"kcode":"8908","tcode":"24","mcode":"3","bcode":"301","code":"30102","name":"\ud310\uae08"},"30103":{"kcode":"8909","tcode":"24","mcode":"3","bcode":"301","code":"30103","name":"\uc8fc\uc870\u00b7\ub2e8\uc870"},"30104":{"kcode":"8910","tcode":"24","mcode":"3","bcode":"301","code":"30104","name":"\uae08\ud615"},"30105":{"kcode":"8911","tcode":"24","mcode":"3","bcode":"301","code":"30105","name":"\ubaa9\ud615"},"30106":{"kcode":"8906","tcode":"24","mcode":"3","bcode":"301","code":"30106","name":"\uae08\uc18d\uac00\uacf5"},"30107":{"kcode":"8907","tcode":"24","mcode":"3","bcode":"301","code":"30107","name":"\uae08\uc18d\uc7ac\ub8cc"},"30108":{"kcode":"8914","tcode":"24","mcode":"3","bcode":"301","code":"30108","name":"\uc808\uc0ad\u00b7\uc808\uace1(\ubca4\ub529)"},"30111":{"kcode":"8912","tcode":"24","mcode":"3","bcode":"301","code":"30111","name":"\ub3c4\uae08\u00b7\ub3c4\uc0c9"},"30113":{"kcode":"8913","tcode":"24","mcode":"3","bcode":"301","code":"30113","name":"\uc81c\ub828\u00b7\uc81c\uad00"},"30114":{"kcode":"8915","tcode":"24","mcode":"3","bcode":"301","code":"30114","name":"\uc6a9\uc811"},"30115":{"kcode":"8916","tcode":"24","mcode":"3","bcode":"301","code":"30115","name":"\uc5f0\ub9c8\u00b7\uc5f0\uc0ad"},"30116":{"kcode":"22345","tcode":"24","mcode":"3","bcode":"301","code":"30116","name":"\uc544\ud06c\ub9b4"},"30117":{"kcode":"22346","tcode":"24","mcode":"3","bcode":"301","code":"30117","name":"\ubcf4\uc11d\uc138\uacf5"},"30118":{"kcode":"22347","tcode":"24","mcode":"3","bcode":"301","code":"30118","name":"\uc640\uc774\uc5b4\ucef7\ud305"},"30119":{"kcode":"22348","tcode":"24","mcode":"3","bcode":"301","code":"30119","name":"\ub3c4\uc7a5\u00b7\ub374\ud2b8"},"30120":{"kcode":"22349","tcode":"24","mcode":"3","bcode":"301","code":"30120","name":"\uc0ac\ucd9c\u00b7\uc555\ucd9c"}}},"302":{"kcode":"7976","tcode":"9","mcode":"9","bcode":"3","code":"302","name":"\uae30\uacc4\u00b7\uae30\uacc4\uc124\ube44","keyword":{"30201":{"kcode":"8880","tcode":"24","mcode":"3","bcode":"302","code":"30201","name":"\uae30\uacc4"},"30202":{"kcode":"8881","tcode":"24","mcode":"3","bcode":"302","code":"30202","name":"\uae30\uacc4\uc124\ube44"},"30206":{"kcode":"8883","tcode":"24","mcode":"3","bcode":"302","code":"30206","name":"\uae30\uacc4\uc124\uacc4"},"30207":{"kcode":"8882","tcode":"24","mcode":"3","bcode":"302","code":"30207","name":"\uae30\uacc4\uc870\ub9bd"},"30211":{"kcode":"8886","tcode":"24","mcode":"3","bcode":"302","code":"30211","name":"\ud3ec\uc7a5\uae30\uacc4"},"30212":{"kcode":"8887","tcode":"24","mcode":"3","bcode":"302","code":"30212","name":"\uacf5\uc791\uae30\uacc4"},"30213":{"kcode":"8888","tcode":"24","mcode":"3","bcode":"302","code":"30213","name":"\uac74\uc124\uae30\uacc4"},"30214":{"kcode":"8889","tcode":"24","mcode":"3","bcode":"302","code":"30214","name":"\uc778\uc1c4\uae30\uacc4"},"30215":{"kcode":"8890","tcode":"24","mcode":"3","bcode":"302","code":"30215","name":"\ubc1c\uc804\uae30"},"30218":{"kcode":"8891","tcode":"24","mcode":"3","bcode":"302","code":"30218","name":"\ubaa9\uacf5\uae30\uacc4"},"30219":{"kcode":"8894","tcode":"24","mcode":"3","bcode":"302","code":"30219","name":"\ud504\ub808\uc2a4"},"30220":{"kcode":"8893","tcode":"24","mcode":"3","bcode":"302","code":"30220","name":"\uc720\uc555\uae30\u00b7\ubaa8\ud130"},"30223":{"kcode":"8895","tcode":"24","mcode":"3","bcode":"302","code":"30223","name":"\ubd84\uc1c4\u00b7\ud30c\uc1c4\uae30"},"30224":{"kcode":"8896","tcode":"24","mcode":"3","bcode":"302","code":"30224","name":"\ud38c\ud504\u00b7\ubc38\ube0c\u00b7\ub178\uc990"},"30225":{"kcode":"8902","tcode":"24","mcode":"3","bcode":"302","code":"30225","name":"\uba54\uce74\ud2b8\ub85c\ub2c9\uc2a4"},"30226":{"kcode":"8903","tcode":"24","mcode":"3","bcode":"302","code":"30226","name":"MEMS"},"30228":{"kcode":"8898","tcode":"24","mcode":"3","bcode":"302","code":"30228","name":"\uc120\ubc18"},"30229":{"kcode":"8899","tcode":"24","mcode":"3","bcode":"302","code":"30229","name":"\ubc00\ub9c1"},"30230":{"kcode":"8900","tcode":"24","mcode":"3","bcode":"302","code":"30230","name":"CNC\u00b7NCT"},"30231":{"kcode":"8904","tcode":"24","mcode":"3","bcode":"302","code":"30231","name":"\uc790\ub3d9\ud654\uc124\ube44"},"30232":{"kcode":"22353","tcode":"24","mcode":"3","bcode":"302","code":"30232","name":"MCT"},"30233":{"kcode":"22354","tcode":"24","mcode":"3","bcode":"302","code":"30233","name":"\uac10\uc18d\uae30"},"30234":{"kcode":"22355","tcode":"24","mcode":"3","bcode":"302","code":"30234","name":"\uc5f4\uad50\ud658\uae30"},"30235":{"kcode":"22356","tcode":"24","mcode":"3","bcode":"302","code":"30235","name":"\uc555\ub825\uc6a9\uae30"},"30236":{"kcode":"22357","tcode":"24","mcode":"3","bcode":"302","code":"30236","name":"\uc804\ub3d9\uacf5\uad6c"}}},"303":{"kcode":"7981","tcode":"9","mcode":"9","bcode":"3","code":"303","name":"\ud654\ud559\u00b7\uc5d0\ub108\uc9c0","keyword":{"30302":{"kcode":"8962","tcode":"24","mcode":"3","bcode":"303","code":"30302","name":"\ud654\ud559"},"30303":{"kcode":"8963","tcode":"24","mcode":"3","bcode":"303","code":"30303","name":"\ud654\uacf5"},"30304":{"kcode":"8966","tcode":"24","mcode":"3","bcode":"303","code":"30304","name":"\uace0\ubd84\uc790"},"30305":{"kcode":"8967","tcode":"24","mcode":"3","bcode":"303","code":"30305","name":"\ud50c\ub77c\uc2a4\ud2f1\u00b7PVC"},"30307":{"kcode":"8968","tcode":"24","mcode":"3","bcode":"303","code":"30307","name":"\ud3f4\ub9ac\uba38\u00b7\ube44\ub2d0"},"30309":{"kcode":"8964","tcode":"24","mcode":"3","bcode":"303","code":"30309","name":"\uc11d\uc720\u00b7\uc815\uc720"},"30310":{"kcode":"8965","tcode":"24","mcode":"3","bcode":"303","code":"30310","name":"\uc11d\uc720\ud654\ud559"},"30311":{"kcode":"8972","tcode":"24","mcode":"3","bcode":"303","code":"30311","name":"\uc6d0\uc790\ub825\u00b7\uc5d0\ub108\uc9c0"},"30316":{"kcode":"8969","tcode":"24","mcode":"3","bcode":"303","code":"30316","name":"\ub3c4\ub8cc\u00b7\ud398\uc778\ud2b8"},"30317":{"kcode":"8970","tcode":"24","mcode":"3","bcode":"303","code":"30317","name":"\uc720\uae30\ud569\uc131"},"30318":{"kcode":"8971","tcode":"24","mcode":"3","bcode":"303","code":"30318","name":"\uc789\ud06c"},"30319":{"kcode":"22358","tcode":"24","mcode":"3","bcode":"303","code":"30319","name":"\uac00\uc2a4"},"30320":{"kcode":"22359","tcode":"24","mcode":"3","bcode":"303","code":"30320","name":"\uace0\ubb34"},"30321":{"kcode":"22360","tcode":"24","mcode":"3","bcode":"303","code":"30321","name":"\ud654\uc7a5\ud488"}}},"304":{"kcode":"7982","tcode":"9","mcode":"9","bcode":"3","code":"304","name":"\uc12c\uc720\u00b7\uc758\ub958\u00b7\ud328\uc158","keyword":{"30401":{"kcode":"8977","tcode":"24","mcode":"3","bcode":"304","code":"30401","name":"\uc12c\uc720\u00b7\uc6d0\ub2e8"},"30402":{"kcode":"8978","tcode":"24","mcode":"3","bcode":"304","code":"30402","name":"\uc2e0\ubc1c\u00b7\uad6c\ub450"},"30404":{"kcode":"8979","tcode":"24","mcode":"3","bcode":"304","code":"30404","name":"\uc758\ub958"},"30407":{"kcode":"8980","tcode":"24","mcode":"3","bcode":"304","code":"30407","name":"\ud328\uc158"},"30416":{"kcode":"8981","tcode":"24","mcode":"3","bcode":"304","code":"30416","name":"\uc7a1\ud654"},"30417":{"kcode":"8982","tcode":"24","mcode":"3","bcode":"304","code":"30417","name":"\uc8fc\uc5bc\ub9ac\u00b7\uc561\uc138\uc11c\ub9ac"},"30418":{"kcode":"22361","tcode":"24","mcode":"3","bcode":"304","code":"30418","name":"\ubc29\uc801\u00b7\ubc29\uc0ac"},"30419":{"kcode":"22362","tcode":"24","mcode":"3","bcode":"304","code":"30419","name":"\uc9c1\uc218\u00b7\uc81c\uc9c1\uc6d0"},"30420":{"kcode":"22363","tcode":"24","mcode":"3","bcode":"304","code":"30420","name":"\ud3b8\uc9c1\ubb3c\u00b7\ub2c8\ud2b8"},"30421":{"kcode":"22364","tcode":"24","mcode":"3","bcode":"304","code":"30421","name":"\ud328\ud134\uc0ac"},"30422":{"kcode":"22365","tcode":"24","mcode":"3","bcode":"304","code":"30422","name":"\uc7ac\ub2e8\u00b7\uc218\uc120\u00b7\ubbf8\uc2f1"},"30423":{"kcode":"22366","tcode":"24","mcode":"3","bcode":"304","code":"30423","name":"\uc9c1\ubb3c\u00b7\uc6b0\ube10\u00b7\ub370\ub2d8"},"30424":{"kcode":"22367","tcode":"24","mcode":"3","bcode":"304","code":"30424","name":"\ud45c\ubc31\u00b7\uc5fc\uc0c9"},"30425":{"kcode":"22368","tcode":"24","mcode":"3","bcode":"304","code":"30425","name":"\uc12c\uc720\ub4f1\uae09\u00b7\uc6d0\ub2e8\uac80\uc0ac"}}},"308":{"kcode":"7979","tcode":"9","mcode":"9","bcode":"3","code":"308","name":"\uc804\uae30\u00b7\uc804\uc790\u00b7\uc81c\uc5b4","keyword":{"30801":{"kcode":"8920","tcode":"24","mcode":"3","bcode":"308","code":"30801","name":"\uc804\uae30"},"30803":{"kcode":"8922","tcode":"24","mcode":"3","bcode":"308","code":"30803","name":"\ud1b5\uc2e0"},"30804":{"kcode":"8923","tcode":"24","mcode":"3","bcode":"308","code":"30804","name":"\ubc30\uc120"},"30805":{"kcode":"8924","tcode":"24","mcode":"3","bcode":"308","code":"30805","name":"\ud48d\ub825\u00b7\uc218\ub825\u00b7\ud0dc\uc591\u00b7\uc5f4"},"30807":{"kcode":"8926","tcode":"24","mcode":"3","bcode":"308","code":"30807","name":"\uc804\uae30\uc124\ube44"},"30808":{"kcode":"8927","tcode":"24","mcode":"3","bcode":"308","code":"30808","name":"\uc804\uae30\uc124\uacc4"},"30809":{"kcode":"8928","tcode":"24","mcode":"3","bcode":"308","code":"30809","name":"\uc804\uae30\uae30\uc220"},"30810":{"kcode":"8929","tcode":"24","mcode":"3","bcode":"308","code":"30810","name":"\uc804\uae30\uacf5\uc0ac"},"30811":{"kcode":"8930","tcode":"24","mcode":"3","bcode":"308","code":"30811","name":"\uc804\uae30\uae30\uc0ac"},"30812":{"kcode":"8931","tcode":"24","mcode":"3","bcode":"308","code":"30812","name":"\uc790\ub3d9\uc81c\uc5b4"},"30813":{"kcode":"8932","tcode":"24","mcode":"3","bcode":"308","code":"30813","name":"PLC"},"30814":{"kcode":"8933","tcode":"24","mcode":"3","bcode":"308","code":"30814","name":"\uc804\uc790"},"30815":{"kcode":"8934","tcode":"24","mcode":"3","bcode":"308","code":"30815","name":"\uc804\uc790\uacc4\uc0b0"},"30816":{"kcode":"8935","tcode":"24","mcode":"3","bcode":"308","code":"30816","name":"\uc804\uae30\u00b7\uc804\uc790\ud68c\ub85c"},"30817":{"kcode":"8936","tcode":"24","mcode":"3","bcode":"308","code":"30817","name":"RF"},"30820":{"kcode":"8938","tcode":"24","mcode":"3","bcode":"308","code":"30820","name":"Hardware"},"30821":{"kcode":"8939","tcode":"24","mcode":"3","bcode":"308","code":"30821","name":"Firmware"},"30824":{"kcode":"8942","tcode":"24","mcode":"3","bcode":"308","code":"30824","name":"Micom"},"30828":{"kcode":"8944","tcode":"24","mcode":"3","bcode":"308","code":"30828","name":"SMPS"},"30829":{"kcode":"8945","tcode":"24","mcode":"3","bcode":"308","code":"30829","name":"\uc804\uc7a5"},"30830":{"kcode":"8946","tcode":"24","mcode":"3","bcode":"308","code":"30830","name":"HMI\u00b7MMI"},"30831":{"kcode":"22377","tcode":"24","mcode":"3","bcode":"308","code":"30831","name":"\ub124\ube44\uac8c\uc774\uc158"},"30832":{"kcode":"22378","tcode":"24","mcode":"3","bcode":"308","code":"30832","name":"\ud544\ud130\u00b7\ud29c\ub2dd"},"30833":{"kcode":"22379","tcode":"24","mcode":"3","bcode":"308","code":"30833","name":"\uc14b\ud1b1\ubc15\uc2a4"},"30834":{"kcode":"26591","tcode":"24","mcode":"3","bcode":"308","code":"30834","name":"PCB"},"30835":{"kcode":"26592","tcode":"24","mcode":"3","bcode":"308","code":"30835","name":"\ud488\uc9c8\uc5d4\uc9c0\ub2c8\uc5b4"},"30836":{"kcode":"26593","tcode":"24","mcode":"3","bcode":"308","code":"30836","name":"\uacf5\uc815\uc5d4\uc9c0\ub2c8\uc5b4"},"30837":{"kcode":"26594","tcode":"24","mcode":"3","bcode":"308","code":"30837","name":"\ud14c\uc2a4\ud2b8\uc5d4\uc9c0\ub2c8\uc5b4"},"30838":{"kcode":"26595","tcode":"24","mcode":"3","bcode":"308","code":"30838","name":"\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"},"30839":{"kcode":"31544","tcode":"24","mcode":"3","bcode":"308","code":"30839","name":"\ub9c8\uc774\ud06c\ub85c\ud504\ub85c\uc138\uc11c"},"30840":{"kcode":"31545","tcode":"24","mcode":"3","bcode":"308","code":"30840","name":"Analog"},"30841":{"kcode":"31546","tcode":"24","mcode":"3","bcode":"308","code":"30841","name":"Digital"},"30842":{"kcode":"31547","tcode":"24","mcode":"3","bcode":"308","code":"30842","name":"OrCAD"}}},"309":{"kcode":"7975","tcode":"9","mcode":"9","bcode":"3","code":"309","name":"\uc0dd\uc0b0\uad00\ub9ac\u00b7\ud488\uc9c8\uad00\ub9ac","keyword":{"30903":{"kcode":"8868","tcode":"24","mcode":"3","bcode":"309","code":"30903","name":"\uc0dd\uc0b0\uad00\ub9ac"},"30904":{"kcode":"8869","tcode":"24","mcode":"3","bcode":"309","code":"30904","name":"\ud488\uc9c8\uad00\ub9ac"},"30905":{"kcode":"8870","tcode":"24","mcode":"3","bcode":"309","code":"30905","name":"\uc790\uc7ac\uad00\ub9ac"},"30906":{"kcode":"8871","tcode":"24","mcode":"3","bcode":"309","code":"30906","name":"\uacf5\uc815\uad00\ub9ac"},"30908":{"kcode":"8873","tcode":"24","mcode":"3","bcode":"309","code":"30908","name":"\ud658\uacbd\uad00\ub9ac"},"30909":{"kcode":"8874","tcode":"24","mcode":"3","bcode":"309","code":"30909","name":"\uc6d0\uac00\uad00\ub9ac"},"30910":{"kcode":"8875","tcode":"24","mcode":"3","bcode":"309","code":"30910","name":"ISO"},"30912":{"kcode":"8876","tcode":"24","mcode":"3","bcode":"309","code":"30912","name":"TPM"},"30913":{"kcode":"8877","tcode":"24","mcode":"3","bcode":"309","code":"30913","name":"6\uc2dc\uadf8\ub9c8"},"30914":{"kcode":"8878","tcode":"24","mcode":"3","bcode":"309","code":"30914","name":"\uacf5\uc7a5\uc7a5"},"30915":{"kcode":"8879","tcode":"24","mcode":"3","bcode":"309","code":"30915","name":"QA \u00b7QC"},"30916":{"kcode":"22380","tcode":"24","mcode":"3","bcode":"309","code":"30916","name":"\ud488\uc9c8\ubcf4\uc99d"},"30917":{"kcode":"22381","tcode":"24","mcode":"3","bcode":"309","code":"30917","name":"HACCP"}}},"314":{"kcode":"7980","tcode":"9","mcode":"9","bcode":"3","code":"314","name":"\ubc18\ub3c4\uccb4\u00b7\ub514\uc2a4\ud50c\ub808\uc774\u00b7LCD","keyword":{"31401":{"kcode":"8960","tcode":"24","mcode":"3","bcode":"314","code":"31401","name":"Microprocessor"},"31402":{"kcode":"8947","tcode":"24","mcode":"3","bcode":"314","code":"31402","name":"\ubc18\ub3c4\uccb4"},"31403":{"kcode":"8950","tcode":"24","mcode":"3","bcode":"314","code":"31403","name":"IC\uc124\uacc4"},"31404":{"kcode":"8951","tcode":"24","mcode":"3","bcode":"314","code":"31404","name":"ASIC"},"31405":{"kcode":"8952","tcode":"24","mcode":"3","bcode":"314","code":"31405","name":"VLSI"},"31406":{"kcode":"8953","tcode":"24","mcode":"3","bcode":"314","code":"31406","name":"LCD"},"31407":{"kcode":"8954","tcode":"24","mcode":"3","bcode":"314","code":"31407","name":"TFT"},"31408":{"kcode":"8955","tcode":"24","mcode":"3","bcode":"314","code":"31408","name":"\ub514\uc2a4\ud50c\ub808\uc774"},"31409":{"kcode":"8956","tcode":"24","mcode":"3","bcode":"314","code":"31409","name":"PDP"},"31411":{"kcode":"8957","tcode":"24","mcode":"3","bcode":"314","code":"31411","name":"SoC"},"31412":{"kcode":"8958","tcode":"24","mcode":"3","bcode":"314","code":"31412","name":"LED\u00b7AMOLED"},"31413":{"kcode":"8959","tcode":"24","mcode":"3","bcode":"314","code":"31413","name":"\ubc1c\uad11\ub2e4\uc774\uc624\ub4dc"},"31415":{"kcode":"22382","tcode":"24","mcode":"3","bcode":"314","code":"31415","name":"BLU\u00b7EL"},"31416":{"kcode":"22383","tcode":"24","mcode":"3","bcode":"314","code":"31416","name":"\ud130\uce58\uc2a4\ud06c\ub9b0"},"31417":{"kcode":"22384","tcode":"24","mcode":"3","bcode":"314","code":"31417","name":"PCB"},"31418":{"kcode":"22385","tcode":"24","mcode":"3","bcode":"314","code":"31418","name":"SMT"},"31419":{"kcode":"31541","tcode":"24","mcode":"3","bcode":"314","code":"31419","name":"\uae30\uc220\uc5f0\uad6c\uc18c"},"31420":{"kcode":"31542","tcode":"24","mcode":"3","bcode":"314","code":"31420","name":"\uc81c\ud488\uac1c\ubc1c"}}},"315":{"kcode":"7974","tcode":"9","mcode":"9","bcode":"3","code":"315","name":"\uc0dd\uc0b0\u00b7\uc81c\uc870\u00b7\ud3ec\uc7a5\u00b7\uc870\ub9bd","keyword":{"31501":{"kcode":"8854","tcode":"24","mcode":"3","bcode":"315","code":"31501","name":"\uc81c\uc870\u00b7\uac00\uacf5"},"31502":{"kcode":"8855","tcode":"24","mcode":"3","bcode":"315","code":"31502","name":"\uc0dd\uc0b0"},"31504":{"kcode":"8856","tcode":"24","mcode":"3","bcode":"315","code":"31504","name":"\ub178\ubb34"},"31505":{"kcode":"8853","tcode":"24","mcode":"3","bcode":"315","code":"31505","name":"\ub300\uae30\uc5c5\uc0dd\uc0b0\uc9c1"},"31508":{"kcode":"8859","tcode":"24","mcode":"3","bcode":"315","code":"31508","name":"\uc870\ub9bd"},"31512":{"kcode":"8863","tcode":"24","mcode":"3","bcode":"315","code":"31512","name":"\ud3ec\uc7a5\u00b7\ucf54\ud305"},"31516":{"kcode":"8867","tcode":"24","mcode":"3","bcode":"315","code":"31516","name":"\uac80\uc0ac\u00b7\uac80\ud488"}}},"316":{"kcode":"7978","tcode":"9","mcode":"9","bcode":"3","code":"316","name":"\ube44\uae08\uc18d\u00b7\uc694\uc5c5\u00b7\uc2e0\uc18c\uc7ac","keyword":{"31601":{"kcode":"8918","tcode":"24","mcode":"3","bcode":"316","code":"31601","name":"\ube44\uae08\uc18d"},"31602":{"kcode":"8919","tcode":"24","mcode":"3","bcode":"316","code":"31602","name":"\uc2e0\uc18c\uc7ac"},"31605":{"kcode":"22386","tcode":"24","mcode":"3","bcode":"316","code":"31605","name":"\uc138\ub77c\ubbf9\uc2a4"},"31606":{"kcode":"22387","tcode":"24","mcode":"3","bcode":"316","code":"31606","name":"\ub098\ub178\u00b7Nano"},"31608":{"kcode":"22389","tcode":"24","mcode":"3","bcode":"316","code":"31608","name":"\uc2dc\uba58\ud2b8"},"31609":{"kcode":"22390","tcode":"24","mcode":"3","bcode":"316","code":"31609","name":"\uc720\ub9ac"},"31610":{"kcode":"22391","tcode":"24","mcode":"3","bcode":"316","code":"31610","name":"\uc694\uc5c5"}}},"317":{"kcode":"22350","tcode":"9","mcode":"9","bcode":"3","code":"317","name":"\ubc14\uc774\uc624\u00b7\uc81c\uc57d\u00b7\uc2dd\ud488","keyword":{"31701":{"kcode":"22392","tcode":"24","mcode":"3","bcode":"317","code":"31701","name":"\uc2dd\ud488\uac00\uacf5\u00b7\uac1c\ubc1c"},"31702":{"kcode":"22393","tcode":"24","mcode":"3","bcode":"317","code":"31702","name":"\uc758\uc57d\ud488"},"31703":{"kcode":"22394","tcode":"24","mcode":"3","bcode":"317","code":"31703","name":"\ubbf8\uc0dd\ubb3c"},"31704":{"kcode":"22395","tcode":"24","mcode":"3","bcode":"317","code":"31704","name":"\ub18d\uc57d\u00b7\ube44\ub8cc\u00b7\uc0ac\ub8cc"},"31705":{"kcode":"22396","tcode":"24","mcode":"3","bcode":"317","code":"31705","name":"\uc784\uc0c1\uac1c\ubc1c"},"31706":{"kcode":"22397","tcode":"24","mcode":"3","bcode":"317","code":"31706","name":"\uc138\ud3ec\u00b7\ubc30\uc591"},"31707":{"kcode":"22398","tcode":"24","mcode":"3","bcode":"317","code":"31707","name":"\uc720\uc804\uacf5\ud559"},"31708":{"kcode":"22399","tcode":"24","mcode":"3","bcode":"317","code":"31708","name":"\uc81c\uc57dPM"},"31709":{"kcode":"22400","tcode":"24","mcode":"3","bcode":"317","code":"31709","name":"\ud6a8\uc18c"},"31710":{"kcode":"22401","tcode":"24","mcode":"3","bcode":"317","code":"31710","name":"\ubc14\uc774\uc624"},"31711":{"kcode":"22402","tcode":"24","mcode":"3","bcode":"317","code":"31711","name":"\uc81c\uc57d"}}},"318":{"kcode":"22351","tcode":"9","mcode":"9","bcode":"3","code":"318","name":"\uc124\uacc4\u00b7CAD\u00b7CAM","keyword":{"31801":{"kcode":"22403","tcode":"24","mcode":"3","bcode":"318","code":"31801","name":"CAD"},"31802":{"kcode":"22404","tcode":"24","mcode":"3","bcode":"318","code":"31802","name":"\uac74\ucd95\uc124\uacc4"},"31803":{"kcode":"22405","tcode":"24","mcode":"3","bcode":"318","code":"31803","name":"CAM"},"31804":{"kcode":"22406","tcode":"24","mcode":"3","bcode":"318","code":"31804","name":"AutoCad"},"31805":{"kcode":"22407","tcode":"24","mcode":"3","bcode":"318","code":"31805","name":"\uae30\uacc4\u00b7\uae30\uad6c\uc124\uacc4"},"31806":{"kcode":"22408","tcode":"24","mcode":"3","bcode":"318","code":"31806","name":"PDM\u00b7PLM"},"31807":{"kcode":"22409","tcode":"24","mcode":"3","bcode":"318","code":"31807","name":"PADS"},"31808":{"kcode":"22410","tcode":"24","mcode":"3","bcode":"318","code":"31808","name":"\uc870\uacbd\uc124\uacc4"},"31809":{"kcode":"22411","tcode":"24","mcode":"3","bcode":"318","code":"31809","name":"\uc790\ub3d9\ucc28\u00b7\uc870\uc120\uc124\uacc4"},"31810":{"kcode":"22412","tcode":"24","mcode":"3","bcode":"318","code":"31810","name":"\ud1a0\ubaa9\uc124\uacc4"},"31811":{"kcode":"22413","tcode":"24","mcode":"3","bcode":"318","code":"31811","name":"\uae08\ud615\uc124\uacc4"},"31812":{"kcode":"22414","tcode":"24","mcode":"3","bcode":"318","code":"31812","name":"3D\uc124\uacc4"},"31813":{"kcode":"22415","tcode":"24","mcode":"3","bcode":"318","code":"31813","name":"Pro-e"},"31814":{"kcode":"22416","tcode":"24","mcode":"3","bcode":"318","code":"31814","name":"catia"}}},"319":{"kcode":"22352","tcode":"9","mcode":"9","bcode":"3","code":"319","name":"\uc548\uacbd\u00b7\ub80c\uc988\u00b7\uad11\ud559","keyword":{"31901":{"kcode":"22417","tcode":"24","mcode":"3","bcode":"319","code":"31901","name":"\ub80c\uc988"},"31902":{"kcode":"22418","tcode":"24","mcode":"3","bcode":"319","code":"31902","name":"\uc548\uacbd"},"31903":{"kcode":"22419","tcode":"24","mcode":"3","bcode":"319","code":"31903","name":"\uc561\uc815\u00b7\ud328\ub110"},"31904":{"kcode":"22420","tcode":"24","mcode":"3","bcode":"319","code":"31904","name":"\uc758\ub8cc\uc7a5\ube44"},"31905":{"kcode":"22421","tcode":"24","mcode":"3","bcode":"319","code":"31905","name":"\uad11\ud559\uae30\uad6c"},"31906":{"kcode":"22422","tcode":"24","mcode":"3","bcode":"319","code":"31906","name":"\uc815\ubc00\uad11\ud559"},"31907":{"kcode":"22423","tcode":"24","mcode":"3","bcode":"319","code":"31907","name":"\ud604\ubbf8\uacbd\u00b7SEM\u00b7TEM"},"31908":{"kcode":"22424","tcode":"24","mcode":"3","bcode":"319","code":"31908","name":"\uce74\uba54\ub77c\u00b7\ub9dd\uc6d0\uacbd"}}}}},"4":{"bcode":"4","name":"IT\u00b7\uc778\ud130\ub137","code":{"404":{"kcode":"7988","tcode":"9","mcode":"9","bcode":"4","code":"404","name":"\uc6f9\uac1c\ubc1c","keyword":{"40402":{"kcode":"9045","tcode":"24","mcode":"4","bcode":"404","code":"40402","name":"ASP"},"40404":{"kcode":"9047","tcode":"24","mcode":"4","bcode":"404","code":"40404","name":"Java\u00b7JSP"},"40407":{"kcode":"9050","tcode":"24","mcode":"4","bcode":"404","code":"40407","name":"PHP"},"40409":{"kcode":"9052","tcode":"24","mcode":"4","bcode":"404","code":"40409","name":"XML"},"40413":{"kcode":"9056","tcode":"24","mcode":"4","bcode":"404","code":"40413","name":"HTML"},"40416":{"kcode":"9059","tcode":"24","mcode":"4","bcode":"404","code":"40416","name":".NET"},"40420":{"kcode":"9063","tcode":"24","mcode":"4","bcode":"404","code":"40420","name":"APM"},"40421":{"kcode":"9064","tcode":"24","mcode":"4","bcode":"404","code":"40421","name":"Ajax"},"40424":{"kcode":"22460","tcode":"24","mcode":"4","bcode":"404","code":"40424","name":"PERL"},"40425":{"kcode":"22461","tcode":"24","mcode":"4","bcode":"404","code":"40425","name":"Ruby"},"40426":{"kcode":"39314","tcode":"24","mcode":"4","bcode":"404","code":"40426","name":"Python"},"40427":{"kcode":"39315","tcode":"24","mcode":"4","bcode":"404","code":"40427","name":"\ud504\ub860\ud2b8\uc5d4\ub4dc"},"40430":{"kcode":"39316","tcode":"24","mcode":"4","bcode":"404","code":"40430","name":"\ubc31\uc5d4\ub4dc"}}},"407":{"kcode":"7989","tcode":"9","mcode":"9","bcode":"4","code":"407","name":"\uc751\uc6a9\ud504\ub85c\uadf8\ub7a8\uac1c\ubc1c","keyword":{"40701":{"kcode":"39319","tcode":"24","mcode":"4","bcode":"407","code":"40701","name":"IOS\uc571\uac1c\ubc1c"},"40702":{"kcode":"39320","tcode":"24","mcode":"4","bcode":"407","code":"40702","name":"Android\uc571\uac1c\ubc1c"},"40706":{"kcode":"9072","tcode":"24","mcode":"4","bcode":"407","code":"40706","name":"Windows"},"40707":{"kcode":"9073","tcode":"24","mcode":"4","bcode":"407","code":"40707","name":"Unix"},"40708":{"kcode":"9074","tcode":"24","mcode":"4","bcode":"407","code":"40708","name":"Linux"},"40709":{"kcode":"9075","tcode":"24","mcode":"4","bcode":"407","code":"40709","name":"VisualC\u00b7C++"},"40711":{"kcode":"9076","tcode":"24","mcode":"4","bcode":"407","code":"40711","name":"VisualBasic"},"40712":{"kcode":"9077","tcode":"24","mcode":"4","bcode":"407","code":"40712","name":"C\u00b7C++"},"40714":{"kcode":"9078","tcode":"24","mcode":"4","bcode":"407","code":"40714","name":"MFC"},"40715":{"kcode":"9079","tcode":"24","mcode":"4","bcode":"407","code":"40715","name":"PowerBuilder"},"40716":{"kcode":"9080","tcode":"24","mcode":"4","bcode":"407","code":"40716","name":"Java"},"40717":{"kcode":"9081","tcode":"24","mcode":"4","bcode":"407","code":"40717","name":"Delphi"},"40719":{"kcode":"9083","tcode":"24","mcode":"4","bcode":"407","code":"40719","name":"OpenGL"},"40720":{"kcode":"9084","tcode":"24","mcode":"4","bcode":"407","code":"40720","name":"Oracle"},"40721":{"kcode":"39321","tcode":"24","mcode":"4","bcode":"407","code":"40721","name":"Python"},"40722":{"kcode":"9086","tcode":"24","mcode":"4","bcode":"407","code":"40722","name":".NET"},"40725":{"kcode":"9089","tcode":"24","mcode":"4","bcode":"407","code":"40725","name":"Pro-C"},"40728":{"kcode":"9092","tcode":"24","mcode":"4","bcode":"407","code":"40728","name":"C#"},"40729":{"kcode":"9093","tcode":"24","mcode":"4","bcode":"407","code":"40729","name":"\uc561\uc158\uc2a4\ud06c\ub9bd\ud2b8"},"40732":{"kcode":"9095","tcode":"24","mcode":"4","bcode":"407","code":"40732","name":"SAP\u00b7ABAP"},"40734":{"kcode":"9097","tcode":"24","mcode":"4","bcode":"407","code":"40734","name":"Embedded"},"40738":{"kcode":"9100","tcode":"24","mcode":"4","bcode":"407","code":"40738","name":"API"},"40745":{"kcode":"22475","tcode":"24","mcode":"4","bcode":"407","code":"40745","name":"MySQL"},"40746":{"kcode":"22476","tcode":"24","mcode":"4","bcode":"407","code":"40746","name":"MS-SQL"},"40747":{"kcode":"22477","tcode":"24","mcode":"4","bcode":"407","code":"40747","name":"FLEX"},"40751":{"kcode":"31603","tcode":"24","mcode":"4","bcode":"407","code":"40751","name":"\uc99d\uac15\ud604\uc2e4(AR)"},"40753":{"kcode":"39322","tcode":"24","mcode":"4","bcode":"407","code":"40753","name":"\uac00\uc0c1\ud604\uc2e4(VR)"},"40755":{"kcode":"31607","tcode":"24","mcode":"4","bcode":"407","code":"40755","name":"C++Builder"},"40759":{"kcode":"31611","tcode":"24","mcode":"4","bcode":"407","code":"40759","name":"RFID"},"40760":{"kcode":"31612","tcode":"24","mcode":"4","bcode":"407","code":"40760","name":"Win32"},"40761":{"kcode":"39317","tcode":"24","mcode":"4","bcode":"407","code":"40761","name":"Labview"},"40762":{"kcode":"39318","tcode":"24","mcode":"4","bcode":"407","code":"40762","name":"micom"},"40763":{"kcode":"39349","tcode":"24","mcode":"4","bcode":"407","code":"40763","name":"objective c"}}},"408":{"kcode":"7990","tcode":"9","mcode":"9","bcode":"4","code":"408","name":"\uc2dc\uc2a4\ud15c\uac1c\ubc1c","keyword":{"40802":{"kcode":"9106","tcode":"24","mcode":"4","bcode":"408","code":"40802","name":"\uc5b4\uc148\ube14\ub9ac"},"40805":{"kcode":"9109","tcode":"24","mcode":"4","bcode":"408","code":"40805","name":"Embedded"},"40806":{"kcode":"9110","tcode":"24","mcode":"4","bcode":"408","code":"40806","name":"\ud38c\uc6e8\uc5b4"},"40808":{"kcode":"22480","tcode":"24","mcode":"4","bcode":"408","code":"40808","name":"HMI\u00b7PLC"},"40812":{"kcode":"22484","tcode":"24","mcode":"4","bcode":"408","code":"40812","name":"CTI"}}},"402":{"kcode":"7993","tcode":"9","mcode":"9","bcode":"4","code":"402","name":"\uc11c\ubc84\u00b7\ub124\ud2b8\uc6cc\ud06c\u00b7\ubcf4\uc548","keyword":{"40201":{"kcode":"9133","tcode":"24","mcode":"4","bcode":"402","code":"40201","name":"\uc11c\ubc84\uad00\ub9ac"},"40203":{"kcode":"9135","tcode":"24","mcode":"4","bcode":"402","code":"40203","name":"\ub124\ud2b8\uc6cc\ud06c\uad00\ub9ac"},"40204":{"kcode":"9136","tcode":"24","mcode":"4","bcode":"402","code":"40204","name":"\ubc29\ud654\ubcbd"},"40207":{"kcode":"9139","tcode":"24","mcode":"4","bcode":"402","code":"40207","name":"\uc11c\ubc84\uad6c\ucd95"},"40208":{"kcode":"39310","tcode":"24","mcode":"4","bcode":"402","code":"40208","name":"\uac00\uc0c1\ud654\uad6c\ucd95"},"40209":{"kcode":"39307","tcode":"24","mcode":"4","bcode":"402","code":"40209","name":"\uc2dc\uc2a4\ud15c\u00b7\ub124\ud2b8\uc6cc\ud06c \ucee8\uc124\ud305"},"40210":{"kcode":"39308","tcode":"24","mcode":"4","bcode":"402","code":"40210","name":"\ubcf4\uc548\ucee8\uc124\ud305"},"40214":{"kcode":"9146","tcode":"24","mcode":"4","bcode":"402","code":"40214","name":"Apache"},"40215":{"kcode":"9147","tcode":"24","mcode":"4","bcode":"402","code":"40215","name":"IIS"},"40216":{"kcode":"39311","tcode":"24","mcode":"4","bcode":"402","code":"40216","name":"RTOS"},"40217":{"kcode":"39312","tcode":"24","mcode":"4","bcode":"402","code":"40217","name":"NGINX"},"40218":{"kcode":"39306","tcode":"24","mcode":"4","bcode":"402","code":"40218","name":"POS"},"40219":{"kcode":"39309","tcode":"24","mcode":"4","bcode":"402","code":"40219","name":"DWH\u00b7ATM"},"40220":{"kcode":"39313","tcode":"24","mcode":"4","bcode":"402","code":"40220","name":"AWS"},"40223":{"kcode":"9155","tcode":"24","mcode":"4","bcode":"402","code":"40223","name":"Cisco"},"40226":{"kcode":"9157","tcode":"24","mcode":"4","bcode":"402","code":"40226","name":"\uc815\ubcf4\ubcf4\uc548"},"40227":{"kcode":"9158","tcode":"24","mcode":"4","bcode":"402","code":"40227","name":"Router\u00b7Switch"},"40228":{"kcode":"9159","tcode":"24","mcode":"4","bcode":"402","code":"40228","name":"ISP\u00b7IDC\uc6b4\uc601"},"40229":{"kcode":"22433","tcode":"24","mcode":"4","bcode":"402","code":"40229","name":"TCP\u00b7IP\u00b7IPX"},"40231":{"kcode":"22435","tcode":"24","mcode":"4","bcode":"402","code":"40231","name":"\ubc14\uc774\ub7ec\uc2a4\u00b7\ubc31\uc2e0"},"40232":{"kcode":"31582","tcode":"24","mcode":"4","bcode":"402","code":"40232","name":"\ubcf4\uc548\uad00\uc81c"},"40233":{"kcode":"31583","tcode":"24","mcode":"4","bcode":"402","code":"40233","name":"\ubcf4\uc548\uae30\uc220"},"40234":{"kcode":"31584","tcode":"24","mcode":"4","bcode":"402","code":"40234","name":"\uc2dc\uc2a4\ud15c\uc6b4\uc601"},"40237":{"kcode":"31587","tcode":"24","mcode":"4","bcode":"402","code":"40237","name":"Windows"},"40238":{"kcode":"39304","tcode":"24","mcode":"4","bcode":"402","code":"40238","name":"Unix"},"40239":{"kcode":"39305","tcode":"24","mcode":"4","bcode":"402","code":"40239","name":"Linux"}}},"409":{"kcode":"7991","tcode":"9","mcode":"9","bcode":"4","code":"409","name":"ERP\u00b7\uc2dc\uc2a4\ud15c\ubd84\uc11d\u00b7\uc124\uacc4","keyword":{"40904":{"kcode":"9114","tcode":"24","mcode":"4","bcode":"409","code":"40904","name":"\ubaa8\ub378\ub9c1"},"40909":{"kcode":"22501","tcode":"24","mcode":"4","bcode":"409","code":"40909","name":"ERP\ucee8\uc124\ud134\ud2b8"},"40912":{"kcode":"22504","tcode":"24","mcode":"4","bcode":"409","code":"40912","name":"SAP\u00b7ABAP "},"40913":{"kcode":"22505","tcode":"24","mcode":"4","bcode":"409","code":"40913","name":"MES"},"40914":{"kcode":"22506","tcode":"24","mcode":"4","bcode":"409","code":"40914","name":"PLM"},"40915":{"kcode":"22507","tcode":"24","mcode":"4","bcode":"409","code":"40915","name":"SEM\u00b7SCM"},"40916":{"kcode":"31621","tcode":"24","mcode":"4","bcode":"409","code":"40916","name":"\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4(SE)"}}},"416":{"kcode":"22432","tcode":"9","mcode":"9","bcode":"4","code":"416","name":"\ub370\uc774\ud130\ubca0\uc774\uc2a4\u00b7DBA","keyword":{"41602":{"kcode":"22437","tcode":"24","mcode":"4","bcode":"416","code":"41602","name":"Oracle"},"41603":{"kcode":"22438","tcode":"24","mcode":"4","bcode":"416","code":"41603","name":"MS-SQL"},"41604":{"kcode":"22439","tcode":"24","mcode":"4","bcode":"416","code":"41604","name":"MySQL"},"41605":{"kcode":"22440","tcode":"24","mcode":"4","bcode":"416","code":"41605","name":"ETL"},"41606":{"kcode":"22441","tcode":"24","mcode":"4","bcode":"416","code":"41606","name":"OLAP"},"41607":{"kcode":"22442","tcode":"24","mcode":"4","bcode":"416","code":"41607","name":"\ub370\uc774\ud0c0\ub9c8\uc774\ub2dd"},"41608":{"kcode":"22443","tcode":"24","mcode":"4","bcode":"416","code":"41608","name":"DW"},"41610":{"kcode":"22445","tcode":"24","mcode":"4","bcode":"416","code":"41610","name":"PostgreSQL"},"41611":{"kcode":"39332","tcode":"24","mcode":"4","bcode":"416","code":"41611","name":"NoSQL"},"41618":{"kcode":"39348","tcode":"24","mcode":"4","bcode":"416","code":"41618","name":"\ud29c\ub2dd"},"41619":{"kcode":"22454","tcode":"24","mcode":"4","bcode":"416","code":"41619","name":"DBA"},"41620":{"kcode":"22455","tcode":"24","mcode":"4","bcode":"416","code":"41620","name":"DB2"}}},"413":{"kcode":"22429","tcode":"9","mcode":"9","bcode":"4","code":"413","name":"\ud37c\ube14\ub9ac\uc2f1\u00b7UI\uac1c\ubc1c","keyword":{"41301":{"kcode":"22486","tcode":"24","mcode":"4","bcode":"413","code":"41301","name":"HTML\ucf54\ub529"},"41302":{"kcode":"22487","tcode":"24","mcode":"4","bcode":"413","code":"41302","name":"\ub2e8\uc21c\uc6f9\uc791\uc5c5"},"41303":{"kcode":"22488","tcode":"24","mcode":"4","bcode":"413","code":"41303","name":"\ud37c\ube14\ub9ac\uc154"},"41304":{"kcode":"22489","tcode":"24","mcode":"4","bcode":"413","code":"41304","name":"\uc6f9\ud45c\uc900\u00b7\uc6f9\uc811\uadfc\uc131"},"41305":{"kcode":"39328","tcode":"24","mcode":"4","bcode":"413","code":"41305","name":"\uc790\ubc14\uc2a4\ud06c\ub9bd\ud2b8"},"41308":{"kcode":"39329","tcode":"24","mcode":"4","bcode":"413","code":"41308","name":"\uc561\uc158\uc2a4\ud06c\ub9bd\ud2b8"}}},"412":{"kcode":"7987","tcode":"9","mcode":"9","bcode":"4","code":"412","name":"\uc6f9\ub514\uc790\uc778","keyword":{"41203":{"kcode":"9030","tcode":"24","mcode":"4","bcode":"412","code":"41203","name":"\ud3ec\ud1a0\uc0f5"},"41204":{"kcode":"9031","tcode":"24","mcode":"4","bcode":"412","code":"41204","name":"\ud50c\ub798\uc26c"},"41205":{"kcode":"39326","tcode":"24","mcode":"4","bcode":"412","code":"41205","name":"Sketch"},"41206":{"kcode":"9032","tcode":"24","mcode":"4","bcode":"412","code":"41206","name":"\ub4dc\ub9bc\uc704\ubc84"},"41209":{"kcode":"9035","tcode":"24","mcode":"4","bcode":"412","code":"41209","name":"\uc790\ubc14\uc2a4\ud06c\ub9bd\ud2b8"},"41212":{"kcode":"9038","tcode":"24","mcode":"4","bcode":"412","code":"41212","name":"XML"},"41213":{"kcode":"9027","tcode":"24","mcode":"4","bcode":"412","code":"41213","name":"UI\u00b7UX\ub514\uc790\uc778"},"41214":{"kcode":"9043","tcode":"24","mcode":"4","bcode":"412","code":"41214","name":"\uc77c\ub7ec\uc2a4\ud2b8\ub808\uc774\ud130"},"41216":{"kcode":"39325","tcode":"24","mcode":"4","bcode":"412","code":"41216","name":"\ud504\ub85c\ud1a0\ud0c0\uc774\ud551"},"41217":{"kcode":"39327","tcode":"24","mcode":"4","bcode":"412","code":"41217","name":"GUI"},"41222":{"kcode":"9042","tcode":"24","mcode":"4","bcode":"412","code":"41222","name":"CSS"},"41224":{"kcode":"26598","tcode":"24","mcode":"4","bcode":"412","code":"41224","name":"\uc6f9UI"},"41225":{"kcode":"26661","tcode":"24","mcode":"4","bcode":"412","code":"41225","name":"\ubaa8\ubc14\uc77cUI"},"41228":{"kcode":"31595","tcode":"24","mcode":"4","bcode":"412","code":"41228","name":"HTML  "},"41229":{"kcode":"39324","tcode":"24","mcode":"4","bcode":"412","code":"41229","name":"FLEX"}}},"411":{"kcode":"7992","tcode":"9","mcode":"9","bcode":"4","code":"411","name":"\ud558\ub4dc\uc6e8\uc5b4\u00b7\uc18c\ud504\ud2b8\uc6e8\uc5b4","keyword":{"41102":{"kcode":"9118","tcode":"24","mcode":"4","bcode":"411","code":"41102","name":"HW(\ud558\ub4dc\uc6e8\uc5b4)"},"41105":{"kcode":"9121","tcode":"24","mcode":"4","bcode":"411","code":"41105","name":"SW(\uc18c\ud504\ud2b8\uc6e8\uc5b4)"},"41109":{"kcode":"9125","tcode":"24","mcode":"4","bcode":"411","code":"41109","name":"\uc720\uc9c0\ubcf4\uc218(AS)"},"41113":{"kcode":"9129","tcode":"24","mcode":"4","bcode":"411","code":"41113","name":"DSP"},"41115":{"kcode":"9131","tcode":"24","mcode":"4","bcode":"411","code":"41115","name":"FPGA"}}},"410":{"kcode":"7994","tcode":"9","mcode":"9","bcode":"4","code":"410","name":"\ud1b5\uc2e0\u00b7\ubaa8\ubc14\uc77c","keyword":{"41005":{"kcode":"9165","tcode":"24","mcode":"4","bcode":"410","code":"41005","name":"\uc704\uc131\u00b7GPS\u00b7GIS"},"41006":{"kcode":"9166","tcode":"24","mcode":"4","bcode":"410","code":"41006","name":"\uad11\ud1b5\uc2e0"},"41007":{"kcode":"9167","tcode":"24","mcode":"4","bcode":"410","code":"41007","name":"\uc774\ub3d9\ud1b5\uc2e0"},"41017":{"kcode":"9177","tcode":"24","mcode":"4","bcode":"410","code":"41017","name":"\ud1b5\uc2e0\ub9dd\uac00\uc124"},"41033":{"kcode":"31616","tcode":"24","mcode":"4","bcode":"410","code":"41033","name":"\uc815\ubcf4\ud1b5\uc2e0"},"41034":{"kcode":"31617","tcode":"24","mcode":"4","bcode":"410","code":"41034","name":"\ubb34\uc120\ud1b5\uc2e0"},"41036":{"kcode":"39323","tcode":"24","mcode":"4","bcode":"410","code":"41036","name":"\uc0ac\ubb3c\uc778\ud130\ub137(IoT)"}}},"403":{"kcode":"7986","tcode":"9","mcode":"9","bcode":"4","code":"403","name":"\uc6f9\uae30\ud68d\u00b7PM","keyword":{"40305":{"kcode":"9013","tcode":"24","mcode":"4","bcode":"403","code":"40305","name":"PM"},"40308":{"kcode":"9024","tcode":"24","mcode":"4","bcode":"403","code":"40308","name":"\uc815\ubcf4\uc124\uacc4\u00b7IA"},"40309":{"kcode":"9025","tcode":"24","mcode":"4","bcode":"403","code":"40309","name":"\uc2a4\ud1a0\ub9ac\ubcf4\ub4dc"},"40310":{"kcode":"9017","tcode":"24","mcode":"4","bcode":"403","code":"40310","name":"\ucee8\ud150\uce20\uae30\ud68d"},"40315":{"kcode":"9021","tcode":"24","mcode":"4","bcode":"403","code":"40315","name":"\ub85c\uadf8\ubd84\uc11d"},"40318":{"kcode":"22456","tcode":"24","mcode":"4","bcode":"403","code":"40318","name":"UI\uae30\ud68d"},"40319":{"kcode":"22457","tcode":"24","mcode":"4","bcode":"403","code":"40319","name":"\uc81c\uc548\u00b7\ucee8\uc124\ud305"},"40320":{"kcode":"22458","tcode":"24","mcode":"4","bcode":"403","code":"40320","name":"\uc1fc\ud551\ubab0\uae30\ud68d"},"40321":{"kcode":"22459","tcode":"24","mcode":"4","bcode":"403","code":"40321","name":"\ubaa8\ubc14\uc77c\uae30\ud68d"},"40324":{"kcode":"31590","tcode":"24","mcode":"4","bcode":"403","code":"40324","name":"\uc6f9\uc11c\ube44\uc2a4\uae30\ud68d"}}},"401":{"kcode":"7985","tcode":"9","mcode":"9","bcode":"4","code":"401","name":"\uc6f9\ub9c8\uc2a4\ud130\u00b7QA\u00b7\ud14c\uc2a4\ud130","keyword":{"40101":{"kcode":"9004","tcode":"24","mcode":"4","bcode":"401","code":"40101","name":"\uc6f9\ub9c8\uc2a4\ud130"},"40104":{"kcode":"9007","tcode":"24","mcode":"4","bcode":"401","code":"40104","name":"Unix"},"40105":{"kcode":"39302","tcode":"24","mcode":"4","bcode":"401","code":"40105","name":"Linux"},"40106":{"kcode":"39303","tcode":"24","mcode":"4","bcode":"401","code":"40106","name":"Windows"},"40110":{"kcode":"33202","tcode":"24","mcode":"4","bcode":"401","code":"40110","name":"QA\u00b7\ud14c\uc2a4\ud130"}}},"406":{"kcode":"7995","tcode":"9","mcode":"9","bcode":"4","code":"406","name":"\ucee8\ud150\uce20\u00b7\uc0ac\uc774\ud2b8\uc6b4\uc601","keyword":{"40601":{"kcode":"9186","tcode":"24","mcode":"4","bcode":"406","code":"40601","name":"\uc0ac\uc774\ud2b8\uc6b4\uc601"},"40603":{"kcode":"9187","tcode":"24","mcode":"4","bcode":"406","code":"40603","name":"\ucee8\ud150\uce20\uc6b4\uc601"},"40606":{"kcode":"9188","tcode":"24","mcode":"4","bcode":"406","code":"40606","name":"e-\ub7ec\ub2dd\uc6b4\uc601"},"40609":{"kcode":"9189","tcode":"24","mcode":"4","bcode":"406","code":"40609","name":"\uce74\ud398\u00b7\ube14\ub85c\uadf8\uad00\ub9ac"},"40610":{"kcode":"9190","tcode":"24","mcode":"4","bcode":"406","code":"40610","name":"\uac8c\uc2dc\ud310\uad00\ub9ac"},"40612":{"kcode":"22428","tcode":"24","mcode":"4","bcode":"406","code":"40612","name":"\uc1fc\ud551\ubab0\u00b7\uc624\ud508\ub9c8\ucf13"},"40614":{"kcode":"31614","tcode":"24","mcode":"4","bcode":"406","code":"40614","name":"\ucee8\ud150\uce20\uc81c\uc791"}}},"405":{"kcode":"7996","tcode":"9","mcode":"9","bcode":"4","code":"405","name":"\uac8c\uc784\u00b7Game","keyword":{"40501":{"kcode":"9192","tcode":"24","mcode":"4","bcode":"405","code":"40501","name":"\uac8c\uc784\uae30\ud68d"},"40502":{"kcode":"9199","tcode":"24","mcode":"4","bcode":"405","code":"40502","name":"\uac8c\uc784\uc2dc\ub098\ub9ac\uc624"},"40503":{"kcode":"9194","tcode":"24","mcode":"4","bcode":"405","code":"40503","name":"GM\u00b7\uac8c\uc784\uc6b4\uc601"},"40508":{"kcode":"9201","tcode":"24","mcode":"4","bcode":"405","code":"40508","name":"QA\u00b7\ubca0\ud0c0\ud14c\uc2a4\ud130"},"40510":{"kcode":"9193","tcode":"24","mcode":"4","bcode":"405","code":"40510","name":"\uac8c\uc784\ub9c8\ucf00\ud305"},"40511":{"kcode":"9208","tcode":"24","mcode":"4","bcode":"405","code":"40511","name":"\uc628\ub77c\uc778\uac8c\uc784"},"40513":{"kcode":"9202","tcode":"24","mcode":"4","bcode":"405","code":"40513","name":"\uac8c\uc784\ub514\uc790\uc778"},"40515":{"kcode":"9203","tcode":"24","mcode":"4","bcode":"405","code":"40515","name":"2D\u00b7\ub3c4\ud2b8\u00b7\ub9f5"},"40516":{"kcode":"9204","tcode":"24","mcode":"4","bcode":"405","code":"40516","name":"3D\u00b7\ubaa8\ub378\ub9c1\u00b7\ubaa8\uc158"},"40526":{"kcode":"9198","tcode":"24","mcode":"4","bcode":"405","code":"40526","name":"\uce90\ub9ad\ud130\u00b7\uc544\uc774\ud15c"},"40527":{"kcode":"9207","tcode":"24","mcode":"4","bcode":"405","code":"40527","name":"\ubaa8\ubc14\uc77c\uac8c\uc784"},"40530":{"kcode":"9209","tcode":"24","mcode":"4","bcode":"405","code":"40530","name":"\uac8c\uc784\uac1c\ubc1c"},"40533":{"kcode":"22464","tcode":"24","mcode":"4","bcode":"405","code":"40533","name":"\uce90\uc8fc\uc5bc\u00b7\ubcf4\ub4dc\uac8c\uc784"},"40535":{"kcode":"22466","tcode":"24","mcode":"4","bcode":"405","code":"40535","name":"CS\u00b7\uace0\uac1d\uc9c0\uc6d0"},"40536":{"kcode":"22467","tcode":"24","mcode":"4","bcode":"405","code":"40536","name":"\ud074\ub77c\uc774\uc5b8\ud2b8\uac1c\ubc1c"},"40537":{"kcode":"22468","tcode":"24","mcode":"4","bcode":"405","code":"40537","name":"\uc11c\ubc84\u00b7\ub124\ud2b8\uc6cd\uac1c\ubc1c"},"40540":{"kcode":"22471","tcode":"24","mcode":"4","bcode":"405","code":"40540","name":"\uc6d0\ud654\u00b7\uc77c\ub7ec\uc2a4\ud2b8"},"40541":{"kcode":"22472","tcode":"24","mcode":"4","bcode":"405","code":"40541","name":"MMORPG"},"40542":{"kcode":"39347","tcode":"24","mcode":"4","bcode":"405","code":"40542","name":"DirectX"}}},"415":{"kcode":"22431","tcode":"9","mcode":"9","bcode":"4","code":"415","name":"IT\u00b7\ub514\uc790\uc778\u00b7\ucef4\ud4e8\ud130\uad50\uc721","keyword":{"41501":{"kcode":"22508","tcode":"24","mcode":"4","bcode":"415","code":"41501","name":"OA\u00b7\ucef4\ud4e8\ud130"},"41502":{"kcode":"22509","tcode":"24","mcode":"4","bcode":"415","code":"41502","name":"\uc778\ud130\ub137\u00b7\ub124\ud2b8\uc6cc\ud06c"},"41503":{"kcode":"22510","tcode":"24","mcode":"4","bcode":"415","code":"41503","name":"\uc6f9\ub514\uc790\uc778\uac15\uc758"},"41504":{"kcode":"22511","tcode":"24","mcode":"4","bcode":"415","code":"41504","name":"\ud504\ub85c\uadf8\ub798\ubc0d"},"41505":{"kcode":"22512","tcode":"24","mcode":"4","bcode":"415","code":"41505","name":"\uc2dc\uc2a4\ud15c\u00b7DB\u00b7\ubcf4\uc548"},"41506":{"kcode":"22513","tcode":"24","mcode":"4","bcode":"415","code":"41506","name":"3D\u00b7\uc601\uc0c1\u00b7\ud50c\ub798\uc2dc"},"41508":{"kcode":"22515","tcode":"24","mcode":"4","bcode":"415","code":"41508","name":"IT\uac15\uc758"}}},"414":{"kcode":"22430","tcode":"9","mcode":"9","bcode":"4","code":"414","name":"\ub3d9\uc601\uc0c1\u00b7\ud3b8\uc9d1\u00b7\ucf54\ub371","keyword":{"41402":{"kcode":"22491","tcode":"24","mcode":"4","bcode":"414","code":"41402","name":"\ud504\ub9ac\ubbf8\uc5b4"},"41404":{"kcode":"39331","tcode":"24","mcode":"4","bcode":"414","code":"41404","name":"\ud30c\uc774\ub110\ucef7"},"41405":{"kcode":"39330","tcode":"24","mcode":"4","bcode":"414","code":"41405","name":"\uc601\uc0c1\ud3b8\uc9d1"},"41406":{"kcode":"22495","tcode":"24","mcode":"4","bcode":"414","code":"41406","name":"3DMAX"},"41407":{"kcode":"22496","tcode":"24","mcode":"4","bcode":"414","code":"41407","name":"\uba40\ud2f0\ubbf8\ub514\uc5b4"},"41410":{"kcode":"22499","tcode":"24","mcode":"4","bcode":"414","code":"41410","name":"\ucf54\ub371\u00b7\uc778\ucf54\ub529"}}},"417":{"kcode":"39333","tcode":"9","mcode":"9","bcode":"4","code":"417","name":"\uc778\uacf5\uc9c0\ub2a5(AI)\u00b7\ube45\ub370\uc774\ud130","keyword":{"41701":{"kcode":"39334","tcode":"24","mcode":"4","bcode":"417","code":"41701","name":"\uc778\uacf5\uc9c0\ub2a5(AI)"},"41702":{"kcode":"39335","tcode":"24","mcode":"4","bcode":"417","code":"41702","name":"\ube45\ub370\uc774\ud130"},"41703":{"kcode":"39336","tcode":"24","mcode":"4","bcode":"417","code":"41703","name":"\uba38\uc2e0\ub7ec\ub2dd"},"41704":{"kcode":"39337","tcode":"24","mcode":"4","bcode":"417","code":"41704","name":"\ud074\ub77c\uc6b0\ub4dc"},"41705":{"kcode":"39338","tcode":"24","mcode":"4","bcode":"417","code":"41705","name":"\uc0ac\ubb3c\uc778\ud130\ub137(IoT)"},"41706":{"kcode":"39339","tcode":"24","mcode":"4","bcode":"417","code":"41706","name":"DataAnalysis"},"41707":{"kcode":"39340","tcode":"24","mcode":"4","bcode":"417","code":"41707","name":"Hadoop"},"41708":{"kcode":"39341","tcode":"24","mcode":"4","bcode":"417","code":"41708","name":"Spark"},"41709":{"kcode":"39342","tcode":"24","mcode":"4","bcode":"417","code":"41709","name":"\uc790\uc5f0\uc5b4\ucc98\ub9ac(NLP)"},"41710":{"kcode":"39343","tcode":"24","mcode":"4","bcode":"417","code":"41710","name":"R"},"41711":{"kcode":"39344","tcode":"24","mcode":"4","bcode":"417","code":"41711","name":"Python"},"41712":{"kcode":"39345","tcode":"24","mcode":"4","bcode":"417","code":"41712","name":"TensorFlow"}}}}},"12":{"bcode":"12","name":"\ub514\uc790\uc778","code":{"1201":{"kcode":"8057","tcode":"9","mcode":"9","bcode":"12","code":"1201","name":"\uadf8\ub798\ud53d\ub514\uc790\uc778\u00b7CG","keyword":{"120101":{"kcode":"9793","tcode":"24","mcode":"12","bcode":"1201","code":"120101","name":"\uadf8\ub798\ud53d\ub514\uc790\uc778"},"120102":{"kcode":"9796","tcode":"24","mcode":"12","bcode":"1201","code":"120102","name":"3D"},"120103":{"kcode":"9797","tcode":"24","mcode":"12","bcode":"1201","code":"120103","name":"3DMax"},"120104":{"kcode":"9798","tcode":"24","mcode":"12","bcode":"1201","code":"120104","name":"Maya"},"120105":{"kcode":"9799","tcode":"24","mcode":"12","bcode":"1201","code":"120105","name":"\uc77c\ub7ec\uc2a4\ud2b8\ub808\uc774\ud130"},"120106":{"kcode":"9800","tcode":"24","mcode":"12","bcode":"1201","code":"120106","name":"\ud3ec\ud1a0\uc0f5"},"120107":{"kcode":"9801","tcode":"24","mcode":"12","bcode":"1201","code":"120107","name":"\ub514\ub809\ud130"},"120108":{"kcode":"9802","tcode":"24","mcode":"12","bcode":"1201","code":"120108","name":"CG"},"120109":{"kcode":"9803","tcode":"24","mcode":"12","bcode":"1201","code":"120109","name":"\ucf54\ub810\ub4dc\ub85c\uc6b0"},"120110":{"kcode":"9804","tcode":"24","mcode":"12","bcode":"1201","code":"120110","name":"\ub3c4\ud2b8\ub514\uc790\uc778"},"120112":{"kcode":"9805","tcode":"24","mcode":"12","bcode":"1201","code":"120112","name":"CI\u00b7BI"},"120115":{"kcode":"22958","tcode":"24","mcode":"12","bcode":"1201","code":"120115","name":"\uae30\uc5c5\uc774\ubbf8\uc9c0"},"120116":{"kcode":"22959","tcode":"24","mcode":"12","bcode":"1201","code":"120116","name":"GUI"}}},"1202":{"kcode":"8058","tcode":"9","mcode":"9","bcode":"12","code":"1202","name":"\ucd9c\ud310\u00b7\ud3b8\uc9d1\ub514\uc790\uc778","keyword":{"120201":{"kcode":"9807","tcode":"24","mcode":"12","bcode":"1202","code":"120201","name":"\ud3b8\uc9d1\ub514\uc790\uc778"},"120202":{"kcode":"9809","tcode":"24","mcode":"12","bcode":"1202","code":"120202","name":"Mac\ub514\uc790\uc778"},"120203":{"kcode":"9810","tcode":"24","mcode":"12","bcode":"1202","code":"120203","name":"QuarkXpress"},"120204":{"kcode":"9811","tcode":"24","mcode":"12","bcode":"1202","code":"120204","name":"\uc7a1\uc9c0\u00b7\uc0ac\ubcf4\ub514\uc790\uc778"},"120205":{"kcode":"9812","tcode":"24","mcode":"12","bcode":"1202","code":"120205","name":"\uce74\ud0c8\ub85c\uadf8\ud3b8\uc9d1"},"120206":{"kcode":"9808","tcode":"24","mcode":"12","bcode":"1202","code":"120206","name":"\ubd81\ub514\uc790\uc778"},"120207":{"kcode":"22960","tcode":"24","mcode":"12","bcode":"1202","code":"120207","name":"\ub808\uc774\uc544\uc6c3\u00b7\uad6c\uc131"},"120208":{"kcode":"22961","tcode":"24","mcode":"12","bcode":"1202","code":"120208","name":"\ud45c\uc9c0\ub514\uc790\uc778"},"120209":{"kcode":"22962","tcode":"24","mcode":"12","bcode":"1202","code":"120209","name":"\uc0bd\ud654\u00b7\uc77c\ub7ec\uc2a4\ud2b8"},"120210":{"kcode":"22963","tcode":"24","mcode":"12","bcode":"1202","code":"120210","name":"\uc11c\uccb4\u00b7\ud3f0\ud2b8"},"120211":{"kcode":"22964","tcode":"24","mcode":"12","bcode":"1202","code":"120211","name":"IBM\ub514\uc790\uc778"}}},"1203":{"kcode":"8059","tcode":"9","mcode":"9","bcode":"12","code":"1203","name":"\uc81c\ud488\u00b7\uc0b0\uc5c5\ub514\uc790\uc778","keyword":{"120301":{"kcode":"9813","tcode":"24","mcode":"12","bcode":"1203","code":"120301","name":"\uc81c\ud488\ub514\uc790\uc778"},"120302":{"kcode":"9814","tcode":"24","mcode":"12","bcode":"1203","code":"120302","name":"\uc0b0\uc5c5\ub514\uc790\uc778"},"120303":{"kcode":"9815","tcode":"24","mcode":"12","bcode":"1203","code":"120303","name":"\ud32c\uc2dc\u00b7\ubb38\uad6c"},"120304":{"kcode":"9816","tcode":"24","mcode":"12","bcode":"1203","code":"120304","name":"\uacf5\uc5c5\ub514\uc790\uc778"},"120305":{"kcode":"9817","tcode":"24","mcode":"12","bcode":"1203","code":"120305","name":"\ud3ec\uc7a5\ub514\uc790\uc778"},"120306":{"kcode":"9818","tcode":"24","mcode":"12","bcode":"1203","code":"120306","name":"\uacf5\uacf5\ub514\uc790\uc778"},"120307":{"kcode":"9819","tcode":"24","mcode":"12","bcode":"1203","code":"120307","name":"\uae08\uc18d\ub514\uc790\uc778"},"120308":{"kcode":"9820","tcode":"24","mcode":"12","bcode":"1203","code":"120308","name":"\uacf5\uc608\ub514\uc790\uc778"},"120309":{"kcode":"9821","tcode":"24","mcode":"12","bcode":"1203","code":"120309","name":"\uac00\uad6c\ub514\uc790\uc778"},"120310":{"kcode":"9822","tcode":"24","mcode":"12","bcode":"1203","code":"120310","name":"\uc870\uba85\ub514\uc790\uc778"},"120311":{"kcode":"22973","tcode":"24","mcode":"12","bcode":"1203","code":"120311","name":"\ud328\ud0a4\uc9c0\ub514\uc790\uc778"},"120312":{"kcode":"22974","tcode":"24","mcode":"12","bcode":"1203","code":"120312","name":"\uadc0\uae08\uc18d\ub514\uc790\uc778"},"120313":{"kcode":"22975","tcode":"24","mcode":"12","bcode":"1203","code":"120313","name":"\ubcbd\uc9c0\ub514\uc790\uc778"},"120314":{"kcode":"22976","tcode":"24","mcode":"12","bcode":"1203","code":"120314","name":"\uc2dc\uacc4\ub514\uc790\uc778"},"120315":{"kcode":"22977","tcode":"24","mcode":"12","bcode":"1203","code":"120315","name":"\uc644\uad6c\ub514\uc790\uc778"},"120316":{"kcode":"22978","tcode":"24","mcode":"12","bcode":"1203","code":"120316","name":"\uc12c\uc720\ub514\uc790\uc778"}}},"1204":{"kcode":"8060","tcode":"9","mcode":"9","bcode":"12","code":"1204","name":"\uce90\ub9ad\ud130\u00b7\ub9cc\ud654\u00b7\uc560\ub2c8","keyword":{"120401":{"kcode":"9823","tcode":"24","mcode":"12","bcode":"1204","code":"120401","name":"\ud50c\ub798\uc2dc"},"120402":{"kcode":"9824","tcode":"24","mcode":"12","bcode":"1204","code":"120402","name":"\uce90\ub9ad\ud130"},"120403":{"kcode":"9825","tcode":"24","mcode":"12","bcode":"1204","code":"120403","name":"\uc560\ub2c8\uba54\uc774\uc158"},"120404":{"kcode":"9826","tcode":"24","mcode":"12","bcode":"1204","code":"120404","name":"\ud504\ub9ac\ubbf8\uc5b4"},"120405":{"kcode":"9827","tcode":"24","mcode":"12","bcode":"1204","code":"120405","name":"2D"},"120406":{"kcode":"9828","tcode":"24","mcode":"12","bcode":"1204","code":"120406","name":"3D"},"120407":{"kcode":"9829","tcode":"24","mcode":"12","bcode":"1204","code":"120407","name":"\uc6d0\ud654\u00b7\ub9cc\ud654"},"120408":{"kcode":"9830","tcode":"24","mcode":"12","bcode":"1204","code":"120408","name":"\uc544\ubc14\ud0c0"},"120409":{"kcode":"9831","tcode":"24","mcode":"12","bcode":"1204","code":"120409","name":"\ubaa8\uc158\uadf8\ub798\ud53d"},"120410":{"kcode":"22965","tcode":"24","mcode":"12","bcode":"1204","code":"120410","name":"\uc140\uc560\ub2c8\uba54\uc774\uc158"},"120412":{"kcode":"22966","tcode":"24","mcode":"12","bcode":"1204","code":"120412","name":"\ub3d9\ud654\ub514\uc790\uc778"},"120413":{"kcode":"22967","tcode":"24","mcode":"12","bcode":"1204","code":"120413","name":"\ucc44\uc0c9\ub514\uc790\uc778"},"120414":{"kcode":"22968","tcode":"24","mcode":"12","bcode":"1204","code":"120414","name":"\uc560\ub2c8\uba54\uc774\ud130"}}},"1205":{"kcode":"8061","tcode":"9","mcode":"9","bcode":"12","code":"1205","name":"\uc758\ub958\u00b7\ud328\uc158\u00b7\uc7a1\ud654\ub514\uc790\uc778","keyword":{"120501":{"kcode":"9832","tcode":"24","mcode":"12","bcode":"1205","code":"120501","name":"\ud328\uc158\ub514\uc790\uc774\ub108"},"120502":{"kcode":"9834","tcode":"24","mcode":"12","bcode":"1205","code":"120502","name":"\uc7a1\ud654\ub514\uc790\uc778"},"120503":{"kcode":"9836","tcode":"24","mcode":"12","bcode":"1205","code":"120503","name":"\ud328\ud134\u00b7\uceec\ub7ec\ub9ac\uc2a4\ud2b8"},"120504":{"kcode":"9833","tcode":"24","mcode":"12","bcode":"1205","code":"120504","name":"\uc758\uc0c1\ub514\uc790\uc774\ub108"},"120505":{"kcode":"9843","tcode":"24","mcode":"12","bcode":"1205","code":"120505","name":"\ub9e4\uc7a5\ub514\uc2a4\ud50c\ub808\uc774"},"120506":{"kcode":"9844","tcode":"24","mcode":"12","bcode":"1205","code":"120506","name":"\ud328\uc158\ucf54\ub514\ub124\uc774\ud130"},"120507":{"kcode":"9845","tcode":"24","mcode":"12","bcode":"1205","code":"120507","name":"\ud53c\ud305\ubaa8\ub378"},"120508":{"kcode":"9835","tcode":"24","mcode":"12","bcode":"1205","code":"120508","name":"\uc12c\uc720\ub514\uc790\uc778"},"120509":{"kcode":"9838","tcode":"24","mcode":"12","bcode":"1205","code":"120509","name":"\ub0a8\uc131\uce90\uc8fc\uc5bc\u00b7\uc815\uc7a5"},"120510":{"kcode":"9839","tcode":"24","mcode":"12","bcode":"1205","code":"120510","name":"\uc5ec\uc131\uce90\uc8fc\uc5bc\u00b7\uc815\uc7a5"},"120511":{"kcode":"9840","tcode":"24","mcode":"12","bcode":"1205","code":"120511","name":"\uc774\ub108\uc6e8\uc5b4\u00b7\uc18d\uc637"},"120512":{"kcode":"9841","tcode":"24","mcode":"12","bcode":"1205","code":"120512","name":"\uc544\ub3d9\ubcf5\u00b7\uc720\uc544\ubcf5"},"120513":{"kcode":"9842","tcode":"24","mcode":"12","bcode":"1205","code":"120513","name":"VMD"},"120514":{"kcode":"9837","tcode":"24","mcode":"12","bcode":"1205","code":"120514","name":"\uc8fc\uc5bc\ub9ac\u00b7\uc561\uc138\uc11c\ub9ac"},"120515":{"kcode":"22969","tcode":"24","mcode":"12","bcode":"1205","code":"120515","name":"\uce68\uad6c\u00b7\ud648\ud328\uc158"},"120516":{"kcode":"22970","tcode":"24","mcode":"12","bcode":"1205","code":"120516","name":"\uac00\ubc29\u00b7\ud578\ub4dc\ubc31"},"120517":{"kcode":"22971","tcode":"24","mcode":"12","bcode":"1205","code":"120517","name":"\uad6c\ub450\u00b7\uc2e0\ubc1c"},"120518":{"kcode":"31517","tcode":"24","mcode":"12","bcode":"1205","code":"120518","name":"\ub125\ud0c0\uc774\ub514\uc790\uc778"},"120519":{"kcode":"31518","tcode":"24","mcode":"12","bcode":"1205","code":"120519","name":"\ub2c8\ud2b8\ub514\uc790\uc778"},"120520":{"kcode":"31519","tcode":"24","mcode":"12","bcode":"1205","code":"120520","name":"\uace8\ud504\uc6e8\uc5b4\ub514\uc790\uc778"},"120521":{"kcode":"31520","tcode":"24","mcode":"12","bcode":"1205","code":"120521","name":"\ub370\ub2d8\ub514\uc790\uc778"},"120522":{"kcode":"31521","tcode":"24","mcode":"12","bcode":"1205","code":"120522","name":"\ub4dc\ub808\uc2a4\ub514\uc790\uc778"},"120523":{"kcode":"31522","tcode":"24","mcode":"12","bcode":"1205","code":"120523","name":"\uc601\uce90\uc8fc\uc5bc\ub514\uc790\uc778"},"120524":{"kcode":"31523","tcode":"24","mcode":"12","bcode":"1205","code":"120524","name":"\uc720\ub2c8\ud3fc\ub514\uc790\uc778"},"120525":{"kcode":"22972","tcode":"24","mcode":"12","bcode":"1205","code":"120525","name":"\uc9c0\uac11\u00b7\ubca8\ud2b8\u00b7\uac00\uc8fd"}}},"1207":{"kcode":"8063","tcode":"9","mcode":"9","bcode":"12","code":"1207","name":"\ub514\uc790\uc778\uae30\ud0c0","keyword":{"120701":{"kcode":"9859","tcode":"24","mcode":"12","bcode":"1207","code":"120701","name":"\uae30\ud0c0\ub514\uc790\uc778"}}},"1208":{"kcode":"22932","tcode":"9","mcode":"9","bcode":"12","code":"1208","name":"\uc804\uc2dc\u00b7\uacf5\uac04\ub514\uc790\uc778","keyword":{"120801":{"kcode":"22933","tcode":"24","mcode":"12","bcode":"1208","code":"120801","name":"\uc778\ud14c\ub9ac\uc5b4"},"120802":{"kcode":"22934","tcode":"24","mcode":"12","bcode":"1208","code":"120802","name":"\uacf5\uac04\ub514\uc790\uc778"},"120803":{"kcode":"22935","tcode":"24","mcode":"12","bcode":"1208","code":"120803","name":"\uc2e4\ub0b4\ub514\uc790\uc778"},"120804":{"kcode":"22936","tcode":"24","mcode":"12","bcode":"1208","code":"120804","name":"\ub9ac\ub178\ubca0\uc774\uc158"},"120805":{"kcode":"22937","tcode":"24","mcode":"12","bcode":"1208","code":"120805","name":"\ud658\uacbd\ub514\uc790\uc778"},"120806":{"kcode":"22938","tcode":"24","mcode":"12","bcode":"1208","code":"120806","name":"\uc804\uc2dc\ub514\uc790\uc778"},"120807":{"kcode":"22939","tcode":"24","mcode":"12","bcode":"1208","code":"120807","name":"\uc870\uacbd\ub514\uc790\uc778"},"120808":{"kcode":"22940","tcode":"24","mcode":"12","bcode":"1208","code":"120808","name":"\ubb34\ub300\ub514\uc790\uc778"}}},"1209":{"kcode":"22941","tcode":"9","mcode":"9","bcode":"12","code":"1209","name":"\uad11\uace0\u00b7\uc2dc\uac01\ub514\uc790\uc778","keyword":{"120901":{"kcode":"22942","tcode":"24","mcode":"12","bcode":"1209","code":"120901","name":"\uc544\ud2b8\ub514\ub809\ud130"},"120902":{"kcode":"22943","tcode":"24","mcode":"12","bcode":"1209","code":"120902","name":"\ud06c\ub9ac\uc5d0\uc774\ud2f0\ube0c\ub514\ub809\ud130"},"120903":{"kcode":"22944","tcode":"24","mcode":"12","bcode":"1209","code":"120903","name":"\uad11\uace0\ub514\uc790\uc778"},"120904":{"kcode":"22945","tcode":"24","mcode":"12","bcode":"1209","code":"120904","name":"\uc2e0\ubb38\u00b7\uc7a1\uc9c0\uad11\uace0"},"120905":{"kcode":"22946","tcode":"24","mcode":"12","bcode":"1209","code":"120905","name":"TV\u00b7\ub3d9\uc601\uc0c1\uad11\uace0"},"120906":{"kcode":"22947","tcode":"24","mcode":"12","bcode":"1209","code":"120906","name":"\ubc30\ub108\u00b7\uc778\ud130\ub137\uad11\uace0"},"120907":{"kcode":"22948","tcode":"24","mcode":"12","bcode":"1209","code":"120907","name":"\uc625\uc678\u00b7\uc804\uc2dc\uad11\uace0"},"120908":{"kcode":"22949","tcode":"24","mcode":"12","bcode":"1209","code":"120908","name":"POP\u00b7SIGN"},"120909":{"kcode":"22950","tcode":"24","mcode":"12","bcode":"1209","code":"120909","name":"\ud3ec\uc2a4\ud130\ub514\uc790\uc778"},"120910":{"kcode":"22951","tcode":"24","mcode":"12","bcode":"1209","code":"120910","name":"\ud604\uc218\ub9c9\u00b7\uac04\ud310"},"120911":{"kcode":"22952","tcode":"24","mcode":"12","bcode":"1209","code":"120911","name":"\uc2dc\uac01\ub514\uc790\uc778"},"120912":{"kcode":"22953","tcode":"24","mcode":"12","bcode":"1209","code":"120912","name":"\uc601\uc0c1\ub514\uc790\uc778"},"120913":{"kcode":"22954","tcode":"24","mcode":"12","bcode":"1209","code":"120913","name":"\ud3f0\ud2b8\u00b7\ud0c0\uc774\ud3ec"},"120914":{"kcode":"22955","tcode":"24","mcode":"12","bcode":"1209","code":"120914","name":"\uc815\ubcf4\ub514\uc790\uc778"},"120915":{"kcode":"22956","tcode":"24","mcode":"12","bcode":"1209","code":"120915","name":"\ub514\uc9c0\ud138\ub514\uc790\uc778"},"120916":{"kcode":"22957","tcode":"24","mcode":"12","bcode":"1209","code":"120916","name":"\uc804\ub2e8\uc9c0\u00b7\ucfe0\ud3f0"},"120918":{"kcode":"31515","tcode":"24","mcode":"12","bcode":"1209","code":"120918","name":"DM\uad11\uace0"}}}}},"5":{"bcode":"5","name":"\uc804\ubb38\uc9c1","code":{"501":{"kcode":"7997","tcode":"9","mcode":"9","bcode":"5","code":"501","name":"\uacbd\uc601\ubd84\uc11d\u00b7\ucee8\uc124\ud134\ud2b8","keyword":{"50101":{"kcode":"9212","tcode":"24","mcode":"5","bcode":"501","code":"50101","name":"\ucee8\uc124\ud134\ud2b8"},"50102":{"kcode":"9213","tcode":"24","mcode":"5","bcode":"501","code":"50102","name":"\uae08\uc735\ucee8\uc124\ud305"},"50103":{"kcode":"9214","tcode":"24","mcode":"5","bcode":"501","code":"50103","name":"\uacbd\uc601\ucee8\uc124\ud305"},"50104":{"kcode":"9215","tcode":"24","mcode":"5","bcode":"501","code":"50104","name":"\ucc3d\uc5c5\ucee8\uc124\ud305"},"50106":{"kcode":"9217","tcode":"24","mcode":"5","bcode":"501","code":"50106","name":"IT\ucee8\uc124\ud305"},"50107":{"kcode":"9211","tcode":"24","mcode":"5","bcode":"501","code":"50107","name":"\uacbd\uc601\ubd84\uc11d"},"50113":{"kcode":"9218","tcode":"24","mcode":"5","bcode":"501","code":"50113","name":"\ubd80\ub3d9\uc0b0\ucee8\uc124\ud305"},"50114":{"kcode":"9219","tcode":"24","mcode":"5","bcode":"501","code":"50114","name":"\uc774\ubbf8\uc9c0\ucee8\uc124\ud305"},"50115":{"kcode":"9220","tcode":"24","mcode":"5","bcode":"501","code":"50115","name":"HR\ucee8\uc124\ud305"}}},"502":{"kcode":"7998","tcode":"9","mcode":"9","bcode":"5","code":"502","name":"\uc99d\uad8c\u00b7\ud22c\uc790\u00b7\ud380\ub4dc\u00b7\uc678\ud658","keyword":{"50201":{"kcode":"9221","tcode":"24","mcode":"5","bcode":"502","code":"50201","name":"\uc99d\uad8c"},"50203":{"kcode":"9222","tcode":"24","mcode":"5","bcode":"502","code":"50203","name":"MBA"},"50204":{"kcode":"9223","tcode":"24","mcode":"5","bcode":"502","code":"50204","name":"\uae30\uc5c5\ubd84\uc11d\u00b7\uc2ec\uc0ac"},"50206":{"kcode":"9224","tcode":"24","mcode":"5","bcode":"502","code":"50206","name":"\uc560\ub110\ub9ac\uc2a4\ud2b8"},"50207":{"kcode":"9225","tcode":"24","mcode":"5","bcode":"502","code":"50207","name":"\ud22c\uc790\uc0c1\ub2f4"},"50208":{"kcode":"9228","tcode":"24","mcode":"5","bcode":"502","code":"50208","name":"IPO"},"50210":{"kcode":"9227","tcode":"24","mcode":"5","bcode":"502","code":"50210","name":"\ud380\ub4dc\ub9e4\ub2c8\uc800"},"50212":{"kcode":"9230","tcode":"24","mcode":"5","bcode":"502","code":"50212","name":"\uc120\ubb3c\u00b7\uc635\uc158"},"50213":{"kcode":"22516","tcode":"24","mcode":"5","bcode":"502","code":"50213","name":"\uc8fc\uc2dd\ud22c\uc790"},"50214":{"kcode":"22517","tcode":"24","mcode":"5","bcode":"502","code":"50214","name":"\ubd80\ub3d9\uc0b0\ud22c\uc790"},"50215":{"kcode":"22518","tcode":"24","mcode":"5","bcode":"502","code":"50215","name":"\ud658\uc728\ubd84\uc11d"},"50216":{"kcode":"22519","tcode":"24","mcode":"5","bcode":"502","code":"50216","name":"M&A"}}},"504":{"kcode":"8000","tcode":"9","mcode":"9","bcode":"5","code":"504","name":"\ud5e4\ub4dc\ud5cc\ud305\u00b7\ub178\ubb34\u00b7\uc9c1\uc5c5\uc0c1\ub2f4","keyword":{"50401":{"kcode":"9238","tcode":"24","mcode":"5","bcode":"504","code":"50401","name":"\ud5e4\ub4dc\ud5cc\ud130"},"50402":{"kcode":"9239","tcode":"24","mcode":"5","bcode":"504","code":"50402","name":"\uacbd\ub825\uad00\ub9ac"},"50403":{"kcode":"9240","tcode":"24","mcode":"5","bcode":"504","code":"50403","name":"\ub178\ubb34\uc0ac"},"50405":{"kcode":"9241","tcode":"24","mcode":"5","bcode":"504","code":"50405","name":"\uc9c1\uc5c5\uc0c1\ub2f4\uc0ac"},"50406":{"kcode":"22520","tcode":"24","mcode":"5","bcode":"504","code":"50406","name":"\uc778\uc7ac\uc11c\uce58"},"50407":{"kcode":"22521","tcode":"24","mcode":"5","bcode":"504","code":"50407","name":"\uc2a4\uce74\uc6b0\ud2b8"},"50408":{"kcode":"31581","tcode":"24","mcode":"5","bcode":"504","code":"50408","name":"\uc778\uc7ac\ucee8\uc124\ud305"}}},"505":{"kcode":"7999","tcode":"9","mcode":"9","bcode":"5","code":"505","name":"\uc124\ubb38\u00b7\ud1b5\uacc4\u00b7\ub9ac\uc11c\uce58","keyword":{"50501":{"kcode":"9231","tcode":"24","mcode":"5","bcode":"505","code":"50501","name":"\ud1b5\uacc4"},"50502":{"kcode":"9232","tcode":"24","mcode":"5","bcode":"505","code":"50502","name":"\uc870\uc0ac\ubd84\uc11d"},"50503":{"kcode":"9233","tcode":"24","mcode":"5","bcode":"505","code":"50503","name":"\uc124\ubb38\uc870\uc0ac"},"50504":{"kcode":"9234","tcode":"24","mcode":"5","bcode":"505","code":"50504","name":"SAS"},"50505":{"kcode":"9235","tcode":"24","mcode":"5","bcode":"505","code":"50505","name":"SPSS"},"50506":{"kcode":"9236","tcode":"24","mcode":"5","bcode":"505","code":"50506","name":"\uc2dc\uc7a5\uc870\uc0ac"},"50507":{"kcode":"9237","tcode":"24","mcode":"5","bcode":"505","code":"50507","name":"\ub9ac\uc11c\uce58"}}},"509":{"kcode":"8001","tcode":"9","mcode":"9","bcode":"5","code":"509","name":"\uc678\uad6d\uc5b4\u00b7\ubc88\uc5ed\u00b7\ud1b5\uc5ed","keyword":{"50901":{"kcode":"9242","tcode":"24","mcode":"5","bcode":"509","code":"50901","name":"\ubc88\uc5ed"},"50902":{"kcode":"9243","tcode":"24","mcode":"5","bcode":"509","code":"50902","name":"\ud1b5\uc5ed"},"50903":{"kcode":"9244","tcode":"24","mcode":"5","bcode":"509","code":"50903","name":"\uad00\uad11\ud1b5\uc5ed"},"50904":{"kcode":"9245","tcode":"24","mcode":"5","bcode":"509","code":"50904","name":"\uc601\uc5b4"},"50905":{"kcode":"9246","tcode":"24","mcode":"5","bcode":"509","code":"50905","name":"\ud504\ub791\uc2a4\uc5b4"},"50906":{"kcode":"9247","tcode":"24","mcode":"5","bcode":"509","code":"50906","name":"\ub3c5\uc77c\uc5b4"},"50907":{"kcode":"9248","tcode":"24","mcode":"5","bcode":"509","code":"50907","name":"\uc911\uad6d\uc5b4"},"50908":{"kcode":"9249","tcode":"24","mcode":"5","bcode":"509","code":"50908","name":"\uc77c\ubcf8\uc5b4"},"50909":{"kcode":"9250","tcode":"24","mcode":"5","bcode":"509","code":"50909","name":"\uc2a4\ud398\uc778\uc5b4"},"50910":{"kcode":"9251","tcode":"24","mcode":"5","bcode":"509","code":"50910","name":"\ud3ec\ub974\ud22c\uac08\uc5b4"},"50911":{"kcode":"9252","tcode":"24","mcode":"5","bcode":"509","code":"50911","name":"\ub7ec\uc2dc\uc544\uc5b4"},"50912":{"kcode":"9253","tcode":"24","mcode":"5","bcode":"509","code":"50912","name":"\uc678\ud654\ubc88\uc5ed"},"50913":{"kcode":"9254","tcode":"24","mcode":"5","bcode":"509","code":"50913","name":"\ubca0\ud2b8\ub0a8\uc5b4"},"50914":{"kcode":"22523","tcode":"24","mcode":"5","bcode":"509","code":"50914","name":"\uc544\ub78d\uc5b4"},"50915":{"kcode":"22524","tcode":"24","mcode":"5","bcode":"509","code":"50915","name":"\ud1b5\u00b7\ubc88\uc5ed\ud559\uc6d0"},"50916":{"kcode":"22525","tcode":"24","mcode":"5","bcode":"509","code":"50916","name":"\ub3d9\uc2dc\ud1b5\uc5ed"}}},"510":{"kcode":"8002","tcode":"9","mcode":"9","bcode":"5","code":"510","name":"\ubc95\ub960\u00b7\ud2b9\ud5c8\u00b7\uc0c1\ud45c","keyword":{"51003":{"kcode":"9255","tcode":"24","mcode":"5","bcode":"510","code":"51003","name":"\ubc95\ubb34\uc0ac"},"51004":{"kcode":"9256","tcode":"24","mcode":"5","bcode":"510","code":"51004","name":"\ubcc0\ud638\uc0ac"},"51005":{"kcode":"9257","tcode":"24","mcode":"5","bcode":"510","code":"51005","name":"\ubcc0\ub9ac\uc0ac"},"51009":{"kcode":"9258","tcode":"24","mcode":"5","bcode":"510","code":"51009","name":"\ubc95\ub960\uc11c\ube44\uc2a4"},"51010":{"kcode":"9259","tcode":"24","mcode":"5","bcode":"510","code":"51010","name":"\ud2b9\ud5c8\ucd9c\uc6d0"},"51011":{"kcode":"9260","tcode":"24","mcode":"5","bcode":"510","code":"51011","name":"\uacf5\uc99d"},"51012":{"kcode":"9261","tcode":"24","mcode":"5","bcode":"510","code":"51012","name":"\ubc95\ud559\uc804\uacf5"},"51013":{"kcode":"9262","tcode":"24","mcode":"5","bcode":"510","code":"51013","name":"\uc9c0\uc801\uc7ac\uc0b0\uad8c"},"51014":{"kcode":"9263","tcode":"24","mcode":"5","bcode":"510","code":"51014","name":"\uc0c1\ud45c\ucd9c\uc6d0"},"51016":{"kcode":"22526","tcode":"24","mcode":"5","bcode":"510","code":"51016","name":"\ubc95\ubb34\ub300\ub9ac"},"51017":{"kcode":"22527","tcode":"24","mcode":"5","bcode":"510","code":"51017","name":"\uc0c1\ud45c\ub300\ub9ac"},"51018":{"kcode":"22528","tcode":"24","mcode":"5","bcode":"510","code":"51018","name":"\uc18c\uc1a1\u00b7\ubbfc\uc0ac\u00b7\ub4f1\uae30"},"51019":{"kcode":"22529","tcode":"24","mcode":"5","bcode":"510","code":"51019","name":"\ub85c\ud38c"},"51020":{"kcode":"31573","tcode":"24","mcode":"5","bcode":"510","code":"51020","name":"\ub85c\uc2a4\ucfe8"},"51021":{"kcode":"31574","tcode":"24","mcode":"5","bcode":"510","code":"51021","name":"\ubc95\ubb34\uc0ac\uc0ac\ubb34\uc7a5"},"51022":{"kcode":"31575","tcode":"24","mcode":"5","bcode":"510","code":"51022","name":"\ubcc0\ub9ac\uc0ac\uc0ac\ubb34\uc7a5"},"51023":{"kcode":"31576","tcode":"24","mcode":"5","bcode":"510","code":"51023","name":"\ubcc0\ud638\uc0ac\uc0ac\ubb34\uc7a5"}}},"511":{"kcode":"8003","tcode":"9","mcode":"9","bcode":"5","code":"511","name":"\uc138\ubb34\u00b7\ud68c\uacc4\u00b7CPA","keyword":{"51101":{"kcode":"9269","tcode":"24","mcode":"5","bcode":"511","code":"51101","name":"AICPA"},"51102":{"kcode":"9265","tcode":"24","mcode":"5","bcode":"511","code":"51102","name":"\uc138\ubb34"},"51103":{"kcode":"9266","tcode":"24","mcode":"5","bcode":"511","code":"51103","name":"\uc7ac\ubb34"},"51104":{"kcode":"9267","tcode":"24","mcode":"5","bcode":"511","code":"51104","name":"\ud68c\uacc4"},"51105":{"kcode":"9268","tcode":"24","mcode":"5","bcode":"511","code":"51105","name":"\uad00\uc138\uc0ac"},"51106":{"kcode":"9270","tcode":"24","mcode":"5","bcode":"511","code":"51106","name":"\ud68c\uacc4\uc0ac\u00b7CPA"},"51107":{"kcode":"9272","tcode":"24","mcode":"5","bcode":"511","code":"51107","name":"\ubc95\uc778\uacb0\uc0b0"},"51109":{"kcode":"22530","tcode":"24","mcode":"5","bcode":"511","code":"51109","name":"\uc138\ubb34\uc0ac"},"51110":{"kcode":"22531","tcode":"24","mcode":"5","bcode":"511","code":"51110","name":"\uae30\uc7a5"},"51111":{"kcode":"22532","tcode":"24","mcode":"5","bcode":"511","code":"51111","name":"\uacb0\uc0b0"}}},"512":{"kcode":"8004","tcode":"9","mcode":"9","bcode":"5","code":"512","name":"\ucc44\uad8c\u00b7\ubcf4\ud5d8\u00b7\ubcf4\uc0c1\u00b7\uc2ec\uc0ac","keyword":{"51201":{"kcode":"9273","tcode":"24","mcode":"5","bcode":"512","code":"51201","name":"\ucc44\uad8c\u00b7\ucd94\uc2ec"},"51203":{"kcode":"9275","tcode":"24","mcode":"5","bcode":"512","code":"51203","name":"\uc190\ud574\uc0ac\uc815"},"51204":{"kcode":"22533","tcode":"24","mcode":"5","bcode":"512","code":"51204","name":"\ub300\uc778\ubcf4\uc0c1"},"51205":{"kcode":"22534","tcode":"24","mcode":"5","bcode":"512","code":"51205","name":"\ub300\ubb3c\ubcf4\uc0c1"},"51206":{"kcode":"22535","tcode":"24","mcode":"5","bcode":"512","code":"51206","name":"\ubcf4\ud5d8\uc2ec\uc0ac"},"51208":{"kcode":"22537","tcode":"24","mcode":"5","bcode":"512","code":"51208","name":"\ubcf4\ud5d8\uacc4\ub9ac\uc0ac"},"51209":{"kcode":"22538","tcode":"24","mcode":"5","bcode":"512","code":"51209","name":"\uc5b8\ub354\ub77c\uc774\ud305"},"51210":{"kcode":"31578","tcode":"24","mcode":"5","bcode":"512","code":"51210","name":"\ub300\ucd9c\uc0c1\ub2f4"},"51211":{"kcode":"31579","tcode":"24","mcode":"5","bcode":"512","code":"51211","name":"\ub300\ucd9c\uc2ec\uc0ac"},"51212":{"kcode":"31580","tcode":"24","mcode":"5","bcode":"512","code":"51212","name":"\uc785\ucd9c\uae08\uad00\ub9ac"}}},"513":{"kcode":"8005","tcode":"9","mcode":"9","bcode":"5","code":"513","name":"\ub3c4\uc11c\uad00\uc0ac\uc11c","keyword":{"51301":{"kcode":"9276","tcode":"24","mcode":"5","bcode":"513","code":"51301","name":"\ub3c4\uc11c\uad00\uc0ac\uc11c"},"51302":{"kcode":"9277","tcode":"24","mcode":"5","bcode":"513","code":"51302","name":"\uc815\ubcf4\uac80\uc0c9"},"51303":{"kcode":"9278","tcode":"24","mcode":"5","bcode":"513","code":"51303","name":"\uc6f9\uc11c\ud551\u00b7\uc11c\ud37c"},"51304":{"kcode":"9279","tcode":"24","mcode":"5","bcode":"513","code":"51304","name":"\ubb38\ud5cc\uc815\ubcf4\ud559"},"51305":{"kcode":"9280","tcode":"24","mcode":"5","bcode":"513","code":"51305","name":"\ubd81\ub9c8\uc2a4\ud130"},"51306":{"kcode":"9281","tcode":"24","mcode":"5","bcode":"513","code":"51306","name":"\uc0ac\uc11c\uad50\uc0ac"}}},"518":{"kcode":"8007","tcode":"9","mcode":"9","bcode":"5","code":"518","name":"\uc5f0\uad6c\uc18c\u00b7R&D","keyword":{"51801":{"kcode":"9304","tcode":"24","mcode":"5","bcode":"518","code":"51801","name":"\uc5f0\uad6c\u00b7\uc2e4\ud5d8\u00b7\uae30\uc220"},"51806":{"kcode":"9309","tcode":"24","mcode":"5","bcode":"518","code":"51806","name":"\ubc18\ub3c4\uccb4\u00b7LCD"},"51807":{"kcode":"9310","tcode":"24","mcode":"5","bcode":"518","code":"51807","name":"\uc815\ubcf4\ud1b5\uc2e0\u00b7IT"},"51808":{"kcode":"9311","tcode":"24","mcode":"5","bcode":"518","code":"51808","name":"\uc758\ub8cc\u00b7\uc81c\uc57d"},"51810":{"kcode":"9312","tcode":"24","mcode":"5","bcode":"518","code":"51810","name":"\ud658\uacbd"},"51811":{"kcode":"9313","tcode":"24","mcode":"5","bcode":"518","code":"51811","name":"\ud654\ud559\u00b7\uc12c\uc720"},"51812":{"kcode":"9314","tcode":"24","mcode":"5","bcode":"518","code":"51812","name":"\uc804\uae30\u00b7\uc804\uc790\uc5f0\uad6c"},"51813":{"kcode":"9315","tcode":"24","mcode":"5","bcode":"518","code":"51813","name":"\uc6d0\uc790\ub825\u00b7\uc5d0\ub108\uc9c0"},"51814":{"kcode":"9316","tcode":"24","mcode":"5","bcode":"518","code":"51814","name":"\uc0dd\uba85\uacf5\ud559"},"51815":{"kcode":"9317","tcode":"24","mcode":"5","bcode":"518","code":"51815","name":"\uae30\uacc4\u00b7\uc790\ub3d9\ucc28"},"51816":{"kcode":"9318","tcode":"24","mcode":"5","bcode":"518","code":"51816","name":"\uae08\uc18d\u00b7\ucca0\uac15"},"51821":{"kcode":"9323","tcode":"24","mcode":"5","bcode":"518","code":"51821","name":"\uc81c\uc870\u00b7\uacf5\uc815"},"51824":{"kcode":"9326","tcode":"24","mcode":"5","bcode":"518","code":"51824","name":"\ub85c\ubd07\u00b7\uc790\ub3d9\ud654"},"51826":{"kcode":"9327","tcode":"24","mcode":"5","bcode":"518","code":"51826","name":"\uc870\uc120\u00b7\ud56d\uacf5\u00b7\uc6b0\uc8fc"},"51828":{"kcode":"9328","tcode":"24","mcode":"5","bcode":"518","code":"51828","name":"\uac74\uc124\u00b7\uad50\ud1b5\uc5f0\uad6c"},"51830":{"kcode":"9319","tcode":"24","mcode":"5","bcode":"518","code":"51830","name":"\uc2dd\ud488\uc5f0\uad6c"},"51831":{"kcode":"9329","tcode":"24","mcode":"5","bcode":"518","code":"51831","name":"\ubaa9\uc7ac\u00b7\uc81c\uc9c0"},"51833":{"kcode":"9330","tcode":"24","mcode":"5","bcode":"518","code":"51833","name":"\uad50\uc721\u00b7\uad50\uc7ac\uc5f0\uad6c"},"51834":{"kcode":"22539","tcode":"24","mcode":"5","bcode":"518","code":"51834","name":"\ub18d\ub9bc\u00b7\ucd95\uc0b0\uc5f0\uad6c"},"51835":{"kcode":"22540","tcode":"24","mcode":"5","bcode":"518","code":"51835","name":"\uacbd\uc601\u00b7\uacbd\uc81c\uc5f0\uad6c"},"51836":{"kcode":"22541","tcode":"24","mcode":"5","bcode":"518","code":"51836","name":"\uc778\ubb38\u00b7\uc0ac\ud68c\uacfc\ud559"},"51837":{"kcode":"22542","tcode":"24","mcode":"5","bcode":"518","code":"51837","name":"\uc2e0\uc18c\uc7ac\uac1c\ubc1c"},"51838":{"kcode":"8672","tcode":"24","mcode":"5","bcode":"518","code":"51838","name":"CTO"}}},"522":{"kcode":"21816","tcode":"9","mcode":"9","bcode":"5","code":"522","name":"\ubb38\ud654\u00b7\uc608\uc220\u00b7\uc885\uad50","keyword":{"52201":{"kcode":"21771","tcode":"24","mcode":"5","bcode":"522","code":"52201","name":"\ubaa9\ud68c\uc790\u00b7\ubaa9\uc0ac"},"52205":{"kcode":"21775","tcode":"24","mcode":"5","bcode":"522","code":"52205","name":"\uae30\ud0c0\uc885\uad50\uc9c1"},"52206":{"kcode":"21832","tcode":"24","mcode":"5","bcode":"522","code":"52206","name":"\uc804\ub3c4\u00b7\uc120\uad50\u00b7\uc0ac\uc5ed"},"52210":{"kcode":"21836","tcode":"24","mcode":"5","bcode":"522","code":"52210","name":"\uad50\ud68c\uc720\uae09\ubd09\uc0ac\u00b7\uac04\uc0ac"},"52211":{"kcode":"21837","tcode":"24","mcode":"5","bcode":"522","code":"52211","name":"\uad50\ud68c\uc0ac\ubb34\u00b7\ud589\uc815\u00b7\uad00\ub9ac"},"52213":{"kcode":"9282","tcode":"24","mcode":"5","bcode":"522","code":"52213","name":"\ud050\ub808\uc774\ud130"},"52214":{"kcode":"22522","tcode":"24","mcode":"5","bcode":"522","code":"52214","name":"\ubc15\ubb3c\uad00\ud559\uc608\uc0ac"},"52215":{"kcode":"26600","tcode":"24","mcode":"5","bcode":"522","code":"52215","name":"\ubb38\ud654(\ubb38\ud654\uc7ac)"},"52216":{"kcode":"26601","tcode":"24","mcode":"5","bcode":"522","code":"52216","name":"\uc21c\uc218\ubbf8\uc220\u00b7\uc74c\uc545"},"52217":{"kcode":"26602","tcode":"24","mcode":"5","bcode":"522","code":"52217","name":"\ubb38\ud654\uc774\ubca4\ud2b8"}}},"523":{"kcode":"21817","tcode":"9","mcode":"9","bcode":"5","code":"523","name":"\ud2b9\uc218\uc9c1","keyword":{"52301":{"kcode":"21776","tcode":"24","mcode":"5","bcode":"523","code":"52301","name":"\uc7a0\uc218\ubd80\u00b7\uc218\uc911\uae30\ub2a5"},"52302":{"kcode":"22683","tcode":"24","mcode":"5","bcode":"523","code":"52302","name":"\uc9c0\ub3c4\uc81c\uc791\u00b7\uae30\uc220\ub3c4\ud574\uc0ac"},"52303":{"kcode":"22684","tcode":"24","mcode":"5","bcode":"523","code":"52303","name":"\uc11d\uc7ac\uac00\uacf5\u00b7\ucc44\uc11d\uc6d0"},"52304":{"kcode":"22685","tcode":"24","mcode":"5","bcode":"523","code":"52304","name":"\ubcf4\uc11d\uac10\uc815\uc0ac"}}},"524":{"kcode":"7959","tcode":"9","mcode":"9","bcode":"5","code":"524","name":"\uc784\uc6d0\u00b7CEO","keyword":{"52401":{"kcode":"8668","tcode":"24","mcode":"5","bcode":"524","code":"52401","name":"\uc784\uc6d0"},"52402":{"kcode":"8669","tcode":"24","mcode":"5","bcode":"524","code":"52402","name":"\uac04\ubd80"}}}}},"6":{"bcode":"6","name":"\uad50\uc721","code":{"601":{"kcode":"8041","tcode":"9","mcode":"9","bcode":"6","code":"601","name":"\uad50\uc721\uae30\ud68d\u00b7\uad50\uc7ac","keyword":{"60101":{"kcode":"9464","tcode":"24","mcode":"6","bcode":"601","code":"60101","name":"\uad50\uc721\uae30\ud68d"},"60102":{"kcode":"9465","tcode":"24","mcode":"6","bcode":"601","code":"60102","name":"\uad50\uc721\uc9c4\ud589"},"60104":{"kcode":"9466","tcode":"24","mcode":"6","bcode":"601","code":"60104","name":"\uad50\uc721\ud589\uc815"},"60107":{"kcode":"9469","tcode":"24","mcode":"6","bcode":"601","code":"60107","name":"\uad50\uc7ac\u00b7\ucee8\ud150\uce20\uac1c\ubc1c"},"60108":{"kcode":"9467","tcode":"24","mcode":"6","bcode":"601","code":"60108","name":"\uad50\uc721\ud504\ub85c\uadf8\ub7a8"},"60110":{"kcode":"22686","tcode":"24","mcode":"6","bcode":"601","code":"60110","name":"\uad50\uc218\uc124\uacc4"},"60111":{"kcode":"22687","tcode":"24","mcode":"6","bcode":"601","code":"60111","name":"\ud3c9\uc0dd\uad50\uc721\uc0ac"}}},"602":{"kcode":"8034","tcode":"9","mcode":"9","bcode":"6","code":"602","name":"\ucd08\uc911\uace0\u00b7\ud2b9\uc218\ud559\uad50","keyword":{"60203":{"kcode":"9364","tcode":"24","mcode":"6","bcode":"602","code":"60203","name":"\ucd08\ub4f1\ud559\uad50"},"60204":{"kcode":"9365","tcode":"24","mcode":"6","bcode":"602","code":"60204","name":"\uc911\ud559\uad50"},"60205":{"kcode":"9366","tcode":"24","mcode":"6","bcode":"602","code":"60205","name":"\uace0\ub4f1\ud559\uad50"},"60206":{"kcode":"9367","tcode":"24","mcode":"6","bcode":"602","code":"60206","name":"\uad6d\uc5b4\u00b7\ub3c5\uc11c\u00b7\ub17c\uc220"},"60207":{"kcode":"9368","tcode":"24","mcode":"6","bcode":"602","code":"60207","name":"\uc601\uc5b4"},"60208":{"kcode":"9369","tcode":"24","mcode":"6","bcode":"602","code":"60208","name":"\uc218\ud559"},"60209":{"kcode":"9370","tcode":"24","mcode":"6","bcode":"602","code":"60209","name":"\uacfc\ud559"},"60210":{"kcode":"9371","tcode":"24","mcode":"6","bcode":"602","code":"60210","name":"\ubb3c\ub9ac"},"60211":{"kcode":"9372","tcode":"24","mcode":"6","bcode":"602","code":"60211","name":"\ud654\ud559"},"60212":{"kcode":"9373","tcode":"24","mcode":"6","bcode":"602","code":"60212","name":"\uc0dd\ubb3c"},"60214":{"kcode":"9375","tcode":"24","mcode":"6","bcode":"602","code":"60214","name":"\uad6d\uc0ac\u00b7\uc138\uacc4\uc0ac"},"60216":{"kcode":"9377","tcode":"24","mcode":"6","bcode":"602","code":"60216","name":"\uc9c0\uad6c\uacfc\ud559"},"60217":{"kcode":"9378","tcode":"24","mcode":"6","bcode":"602","code":"60217","name":"\uc0ac\ud68c"},"60218":{"kcode":"9379","tcode":"24","mcode":"6","bcode":"602","code":"60218","name":"\uc9c0\ub9ac\u00b7\uc138\uacc4\uc9c0\ub9ac"},"60219":{"kcode":"9380","tcode":"24","mcode":"6","bcode":"602","code":"60219","name":"\uc724\ub9ac\u00b7\ub3c4\ub355"},"60220":{"kcode":"9381","tcode":"24","mcode":"6","bcode":"602","code":"60220","name":"\ud55c\ubb38"},"60221":{"kcode":"9382","tcode":"24","mcode":"6","bcode":"602","code":"60221","name":"\uccb4\uc721"},"60223":{"kcode":"9383","tcode":"24","mcode":"6","bcode":"602","code":"60223","name":"\uacbd\uc81c\u00b7\uc0c1\uc5c5"},"60225":{"kcode":"9385","tcode":"24","mcode":"6","bcode":"602","code":"60225","name":"\ubbf8\uc220"},"60226":{"kcode":"9386","tcode":"24","mcode":"6","bcode":"602","code":"60226","name":"\uc74c\uc545"},"60227":{"kcode":"9387","tcode":"24","mcode":"6","bcode":"602","code":"60227","name":"\ucef4\ud4e8\ud130"},"60228":{"kcode":"9388","tcode":"24","mcode":"6","bcode":"602","code":"60228","name":"\uae30\uc220\u00b7\uac00\uc815"},"60229":{"kcode":"9389","tcode":"24","mcode":"6","bcode":"602","code":"60229","name":"\uc81c2\uc678\uad6d\uc5b4"},"60230":{"kcode":"21288","tcode":"24","mcode":"6","bcode":"602","code":"60230","name":"\uad50\uc0ac"},"60231":{"kcode":"21289","tcode":"24","mcode":"6","bcode":"602","code":"60231","name":"\ubcf4\uc870\uad50\uc0ac"},"60234":{"kcode":"22688","tcode":"24","mcode":"6","bcode":"602","code":"60234","name":"\ubcf4\uac74\u00b7\uc591\ud638\uad50\uc0ac"},"60235":{"kcode":"22689","tcode":"24","mcode":"6","bcode":"602","code":"60235","name":"\uae30\uac04\uc81c\uad50\uc0ac"},"60236":{"kcode":"22690","tcode":"24","mcode":"6","bcode":"602","code":"60236","name":"\ubc29\uacfc\ud6c4\uad50\uc0ac"},"60237":{"kcode":"22691","tcode":"24","mcode":"6","bcode":"602","code":"60237","name":"\ud2b9\uc218\ud559\uad50\uad50\uc0ac"},"60238":{"kcode":"28601","tcode":"24","mcode":"6","bcode":"602","code":"60238","name":"\uc5ed\uc0ac"}}},"603":{"kcode":"8036","tcode":"9","mcode":"9","bcode":"6","code":"603","name":"\ud559\uc2b5\uc9c0\u00b7\uacfc\uc678\u00b7\ubc29\ubb38","keyword":{"60301":{"kcode":"9409","tcode":"24","mcode":"6","bcode":"603","code":"60301","name":"\ud559\uc2b5\uc9c0\uad50\uc0ac"},"60302":{"kcode":"9410","tcode":"24","mcode":"6","bcode":"603","code":"60302","name":"\uacfc\uc678\uad50\uc0ac"},"60303":{"kcode":"9411","tcode":"24","mcode":"6","bcode":"603","code":"60303","name":"\ubc29\ubb38\ud559\uc2b5"},"60304":{"kcode":"9412","tcode":"24","mcode":"6","bcode":"603","code":"60304","name":"\uacf5\ubd80\ubc29\uad50\uc0ac"},"60305":{"kcode":"21292","tcode":"24","mcode":"6","bcode":"603","code":"60305","name":"\uc628\ub77c\uc778\u00b7\ud1b5\uc2e0\uad50\uc721"},"60307":{"kcode":"22692","tcode":"24","mcode":"6","bcode":"603","code":"60307","name":"\uc804\ud654\uc601\uc5b4"}}},"604":{"kcode":"8033","tcode":"9","mcode":"9","bcode":"6","code":"604","name":"\uc720\uce58\uc6d0\u00b7\ubcf4\uc721","keyword":{"60401":{"kcode":"9357","tcode":"24","mcode":"6","bcode":"604","code":"60401","name":"\uc720\uce58\uc6d0\uad50\uc0ac"},"60402":{"kcode":"9358","tcode":"24","mcode":"6","bcode":"604","code":"60402","name":"\ubcf4\uc721\uad50\uc0ac"},"60403":{"kcode":"9359","tcode":"24","mcode":"6","bcode":"604","code":"60403","name":"\uc5b4\ub9b0\uc774\uc9d1\uad50\uc0ac"},"60404":{"kcode":"9360","tcode":"24","mcode":"6","bcode":"604","code":"60404","name":"\ub180\uc774\ubc29\uad50\uc0ac"},"60406":{"kcode":"22693","tcode":"24","mcode":"6","bcode":"604","code":"60406","name":"\ud37c\ud3ec\uba3c\uc2a4\uac15\uc0ac"},"60409":{"kcode":"31509","tcode":"24","mcode":"6","bcode":"604","code":"60409","name":"\ud658\uacbd\ud310\uafb8\ubbf8\uae30"}}},"605":{"kcode":"8038","tcode":"9","mcode":"9","bcode":"6","code":"605","name":"\uc804\ubb38\uc9c1\uc5c5\u00b7IT\uac15\uc0ac","keyword":{"60501":{"kcode":"9420","tcode":"24","mcode":"6","bcode":"605","code":"60501","name":"\uc804\ubb38\uc9c1\uc5c5\uac15\uc0ac"},"60502":{"kcode":"9421","tcode":"24","mcode":"6","bcode":"605","code":"60502","name":"\uc6b4\uc804\ud559\uc6d0\uac15\uc0ac"},"60503":{"kcode":"9422","tcode":"24","mcode":"6","bcode":"605","code":"60503","name":"\ubbf8\uc6a9\u00b7\ubdf0\ud2f0\uac15\uc0ac"},"60505":{"kcode":"9424","tcode":"24","mcode":"6","bcode":"605","code":"60505","name":"\ud328\uc158\u00b7\ub514\uc790\uc778\uac15\uc0ac"},"60507":{"kcode":"9426","tcode":"24","mcode":"6","bcode":"605","code":"60507","name":"\ubb34\uc6a9\u00b7\ub304\uc2a4\uac15\uc0ac"},"60508":{"kcode":"9427","tcode":"24","mcode":"6","bcode":"605","code":"60508","name":"\ubb38\ud654\uc13c\ud130"},"60509":{"kcode":"9428","tcode":"24","mcode":"6","bcode":"605","code":"60509","name":"\uc694\ub9ac\uac15\uc0ac"},"60510":{"kcode":"21777","tcode":"24","mcode":"6","bcode":"605","code":"60510","name":"\uc2a4\ud3ec\uce20\uac15\uc0ac"},"60512":{"kcode":"22694","tcode":"24","mcode":"6","bcode":"605","code":"60512","name":"CAD\uac15\uc0ac"},"60513":{"kcode":"22695","tcode":"24","mcode":"6","bcode":"605","code":"60513","name":"\uc74c\uc545\u00b7\ud53c\uc544\ub178\u00b7\uae30\ud0c0"},"60514":{"kcode":"22696","tcode":"24","mcode":"6","bcode":"605","code":"60514","name":"\ubbf8\uc220\u00b7\ub9cc\ud654"},"60515":{"kcode":"22697","tcode":"24","mcode":"6","bcode":"605","code":"60515","name":"\uc9c1\uc5c5\ud6c8\ub828\uad50\uc0ac"},"60516":{"kcode":"22698","tcode":"24","mcode":"6","bcode":"605","code":"60516","name":"\uc8fc\uc2dd\u00b7\ubd80\ub3d9\uc0b0"},"60517":{"kcode":"22699","tcode":"24","mcode":"6","bcode":"605","code":"60517","name":"\uace0\uc2dc\u00b7\uc790\uaca9\uc99d\uac15\uc0ac"},"60518":{"kcode":"26603","tcode":"24","mcode":"6","bcode":"605","code":"60518","name":"\ucef4\ud4e8\ud130\u00b7IT\uac15\uc0ac"}}},"606":{"kcode":"8035","tcode":"9","mcode":"9","bcode":"6","code":"606","name":"\uc785\uc2dc\u00b7\ubcf4\uc2b5\u00b7\uc18d\uc148\ud559\uc6d0","keyword":{"60601":{"kcode":"9390","tcode":"24","mcode":"6","bcode":"606","code":"60601","name":"\uc77c\ubc18\ud559\uc6d0\uac15\uc0ac"},"60604":{"kcode":"9393","tcode":"24","mcode":"6","bcode":"606","code":"60604","name":"\uc608\uccb4\ub2a5\uac15\uc0ac"},"60605":{"kcode":"9394","tcode":"24","mcode":"6","bcode":"606","code":"60605","name":"\uae30\uc220\uc9c1\uac15\uc0ac"},"60606":{"kcode":"9395","tcode":"24","mcode":"6","bcode":"606","code":"60606","name":"\uc785\uc2dc\ud559\uc6d0\uac15\uc0ac"},"60614":{"kcode":"9405","tcode":"24","mcode":"6","bcode":"606","code":"60614","name":"\uc74c\uc545\u00b7\uc74c\ub300\uc785\uc2dc"},"60615":{"kcode":"9406","tcode":"24","mcode":"6","bcode":"606","code":"60615","name":"\uccb4\uc721\u00b7\uccb4\ub300\uc785\uc2dc"},"60616":{"kcode":"9407","tcode":"24","mcode":"6","bcode":"606","code":"60616","name":"\ubbf8\uc220\u00b7\ubbf8\ub300\uc785\uc2dc"},"60617":{"kcode":"9408","tcode":"24","mcode":"6","bcode":"606","code":"60617","name":"\uad6d\uc5b4\u00b7\ub17c\uc220\u00b7\ub3c5\uc11c"},"60620":{"kcode":"22700","tcode":"24","mcode":"6","bcode":"606","code":"60620","name":"\uc218\ud559"},"60621":{"kcode":"22701","tcode":"24","mcode":"6","bcode":"606","code":"60621","name":"\uacfc\ud559"},"60622":{"kcode":"22702","tcode":"24","mcode":"6","bcode":"606","code":"60622","name":"\uc0ac\ud68c"},"60623":{"kcode":"22703","tcode":"24","mcode":"6","bcode":"606","code":"60623","name":"\uad6d\uc0ac\u00b7\uc138\uacc4\uc0ac"},"60624":{"kcode":"22704","tcode":"24","mcode":"6","bcode":"606","code":"60624","name":"\uc804\uc784\uac15\uc0ac"},"60625":{"kcode":"22705","tcode":"24","mcode":"6","bcode":"606","code":"60625","name":"\ud30c\ud2b8\uac15\uc0ac"},"60627":{"kcode":"31511","tcode":"24","mcode":"6","bcode":"606","code":"60627","name":"\uc2e4\uc5c5\uacc4\ud559\uc6d0\uac15\uc0ac"}}},"609":{"kcode":"8042","tcode":"9","mcode":"9","bcode":"6","code":"609","name":"\ud559\uc6d0\uad00\ub9ac\u00b7\uc6b4\uc601\u00b7\uc0c1\ub2f4","keyword":{"60901":{"kcode":"9478","tcode":"24","mcode":"6","bcode":"609","code":"60901","name":"\ud559\uc6d0\uc5d0\uc774\uc804\ud2b8"},"60903":{"kcode":"9471","tcode":"24","mcode":"6","bcode":"609","code":"60903","name":"\uad50\uc721\uc0c1\ub2f4\u00b7\uc548\ub0b4"},"60905":{"kcode":"9476","tcode":"24","mcode":"6","bcode":"609","code":"60905","name":"\uc6d0\uc0dd\uad00\ub9ac\u00b7\uc720\uce58"},"60906":{"kcode":"9477","tcode":"24","mcode":"6","bcode":"609","code":"60906","name":"\uc218\uac15\uc0dd\uad00\ub9ac"},"60907":{"kcode":"9473","tcode":"24","mcode":"6","bcode":"609","code":"60907","name":"\uc720\ud559\uc0c1\ub2f4"},"60908":{"kcode":"9479","tcode":"24","mcode":"6","bcode":"609","code":"60908","name":"\ud559\uc6d0\uc6b4\uc601"},"60909":{"kcode":"31513","tcode":"24","mcode":"6","bcode":"609","code":"60909","name":"\ud504\ub85c\uadf8\ub7a8\uc0c1\ub2f4"}}},"610":{"kcode":"8040","tcode":"9","mcode":"9","bcode":"6","code":"610","name":"\ub300\ud559\uad50\uc218\u00b7\ud589\uc815\uc9c1","keyword":{"61002":{"kcode":"9456","tcode":"24","mcode":"6","bcode":"610","code":"61002","name":"\uad50\uc9c1\uc6d0"},"61003":{"kcode":"9457","tcode":"24","mcode":"6","bcode":"610","code":"61003","name":"\ud589\uc815\u00b7\uc0ac\ubb34\uc9c1"},"61005":{"kcode":"9459","tcode":"24","mcode":"6","bcode":"610","code":"61005","name":"\uc804\uc0b0\uc2e4"},"61006":{"kcode":"9460","tcode":"24","mcode":"6","bcode":"610","code":"61006","name":"\uc0c1\ub2f4\uc9c1"},"61007":{"kcode":"9461","tcode":"24","mcode":"6","bcode":"610","code":"61007","name":"\uc785\ud559\uc0ac\uc815\uad00"},"61008":{"kcode":"9462","tcode":"24","mcode":"6","bcode":"610","code":"61008","name":"\uacc4\uc57d\uc9c1"},"61009":{"kcode":"9463","tcode":"24","mcode":"6","bcode":"610","code":"61009","name":"\uc870\uad50"},"61010":{"kcode":"22725","tcode":"24","mcode":"6","bcode":"610","code":"61010","name":"\ub300\ud559\uad50\uc218"},"61012":{"kcode":"22726","tcode":"24","mcode":"6","bcode":"610","code":"61012","name":"\ub300\ud559\uac15\uc0ac"},"61013":{"kcode":"22727","tcode":"24","mcode":"6","bcode":"610","code":"61013","name":"\uc2dc\uac04\uac15\uc0ac"},"61014":{"kcode":"22728","tcode":"24","mcode":"6","bcode":"610","code":"61014","name":"\uae30\uc219\uc0ac\uc0ac\uac10"}}},"611":{"kcode":"22724","tcode":"9","mcode":"9","bcode":"6","code":"611","name":"\uc678\uad6d\uc5b4\u00b7\uc5b4\ud559\uc6d0","keyword":{"61101":{"kcode":"22706","tcode":"24","mcode":"6","bcode":"611","code":"61101","name":"\uc601\uc5b4"},"61102":{"kcode":"22707","tcode":"24","mcode":"6","bcode":"611","code":"61102","name":"\uc601\uc5b4\ud68c\ud654"},"61103":{"kcode":"22708","tcode":"24","mcode":"6","bcode":"611","code":"61103","name":"TESOL\u00b7CELTA"},"61104":{"kcode":"22709","tcode":"24","mcode":"6","bcode":"611","code":"61104","name":"TEPS"},"61105":{"kcode":"22710","tcode":"24","mcode":"6","bcode":"611","code":"61105","name":"\uc911\uad6d\uc5b4\u00b7HSK"},"61106":{"kcode":"22711","tcode":"24","mcode":"6","bcode":"611","code":"61106","name":"\uc77c\ubcf8\uc5b4\u00b7JPT"},"61107":{"kcode":"22712","tcode":"24","mcode":"6","bcode":"611","code":"61107","name":"\uae30\ud0c0\uc678\uad6d\uc5b4"},"61108":{"kcode":"22713","tcode":"24","mcode":"6","bcode":"611","code":"61108","name":"\uc5b4\ud559\uc6d0\uac15\uc0ac"},"61109":{"kcode":"22714","tcode":"24","mcode":"6","bcode":"611","code":"61109","name":"\ud1a0\uc775RC\u00b7LC"},"61110":{"kcode":"22715","tcode":"24","mcode":"6","bcode":"611","code":"61110","name":"\ud1a0\ud50cCBT\u00b7IBT"},"61111":{"kcode":"22716","tcode":"24","mcode":"6","bcode":"611","code":"61111","name":"SAT\u00b7GRE"},"61112":{"kcode":"22717","tcode":"24","mcode":"6","bcode":"611","code":"61112","name":"IELTS\u00b7OPIc"},"61114":{"kcode":"22719","tcode":"24","mcode":"6","bcode":"611","code":"61114","name":"\ud3b8\uc785\uc601\uc5b4"},"61115":{"kcode":"22720","tcode":"24","mcode":"6","bcode":"611","code":"61115","name":"\ud1b5\uc5ed\u00b7\ubc88\uc5ed"},"61116":{"kcode":"22721","tcode":"24","mcode":"6","bcode":"611","code":"61116","name":"\uc6d0\uc5b4\ubbfc\u00b7\uad50\ud3ec\uac15\uc0ac"},"61117":{"kcode":"22722","tcode":"24","mcode":"6","bcode":"611","code":"61117","name":"\uc601\uc5b4\ucea0\ud504\uac15\uc0ac"},"61118":{"kcode":"22723","tcode":"24","mcode":"6","bcode":"611","code":"61118","name":"\ud55c\uad6d\uc5b4"}}}}},"7":{"bcode":"7","name":"\ubbf8\ub514\uc5b4","code":{"702":{"kcode":"8029","tcode":"9","mcode":"9","bcode":"7","code":"702","name":"\uc5f0\uc608\u00b7\uc5d4\ud130\ud14c\uc778\uba3c\ud2b8","keyword":{"70204":{"kcode":"9523","tcode":"24","mcode":"7","bcode":"702","code":"70204","name":"\uc5f0\uc608\ub9e4\ub2c8\uc800"},"70205":{"kcode":"9524","tcode":"24","mcode":"7","bcode":"702","code":"70205","name":"\ub85c\ub4dc\ub9e4\ub2c8\uc800"},"70206":{"kcode":"9525","tcode":"24","mcode":"7","bcode":"702","code":"70206","name":"\ucf54\ub514\u00b7\uba54\uc774\ud06c\uc5c5"},"70207":{"kcode":"9526","tcode":"24","mcode":"7","bcode":"702","code":"70207","name":"\uc5f0\uc608\uc778\u00b7\ubc30\uc6b0\u00b7\uac00\uc218"},"70210":{"kcode":"9530","tcode":"24","mcode":"7","bcode":"702","code":"70210","name":"\uc5f0\uc608\uae30\ud68d\u00b7\uc624\ub514\uc158"},"70211":{"kcode":"9527","tcode":"24","mcode":"7","bcode":"702","code":"70211","name":"CF\u00b7\ud328\uc158\ubaa8\ub378"},"70214":{"kcode":"22729","tcode":"24","mcode":"7","bcode":"702","code":"70214","name":"\uce90\uc2a4\ud305\ub9e4\ub2c8\uc800"}}},"703":{"kcode":"8025","tcode":"9","mcode":"9","bcode":"7","code":"703","name":"\uce74\uba54\ub77c\u00b7\uc870\uba85\u00b7\ubbf8\uc220","keyword":{"70305":{"kcode":"9492","tcode":"24","mcode":"7","bcode":"703","code":"70305","name":"\uc601\uc0c1\ud3b8\uc9d1"},"70307":{"kcode":"9488","tcode":"24","mcode":"7","bcode":"703","code":"70307","name":"\ubc29\uc1a1\uce74\uba54\ub77c"},"70309":{"kcode":"9491","tcode":"24","mcode":"7","bcode":"703","code":"70309","name":"\ucd2c\uc601"},"70311":{"kcode":"9490","tcode":"24","mcode":"7","bcode":"703","code":"70311","name":"\uc870\uba85"},"70312":{"kcode":"9495","tcode":"24","mcode":"7","bcode":"703","code":"70312","name":"\ubc29\uc1a1\ubbf8\uc220\u00b7CG"},"70313":{"kcode":"9496","tcode":"24","mcode":"7","bcode":"703","code":"70313","name":"\ubc29\uc1a1\uae30\uc220\u00b7TD"},"70317":{"kcode":"22731","tcode":"24","mcode":"7","bcode":"703","code":"70317","name":"\ubc29\uc1a1\uc1a1\ucd9c\u00b7\uc1a1\uc2e0"},"70318":{"kcode":"22732","tcode":"24","mcode":"7","bcode":"703","code":"70318","name":"\ubc29\uc1a1\uc2dc\uc2a4\ud15c"},"70319":{"kcode":"22733","tcode":"24","mcode":"7","bcode":"703","code":"70319","name":"\ub3d9\uc601\uc0c1\ucd2c\uc601"}}},"704":{"kcode":"8030","tcode":"9","mcode":"9","bcode":"7","code":"704","name":"\uacf5\uc5f0\u00b7\ubb34\ub300\u00b7\uc2a4\ud15d","keyword":{"70405":{"kcode":"9531","tcode":"24","mcode":"7","bcode":"704","code":"70405","name":"\uacf5\uc5f0\uae30\ud68d"},"70406":{"kcode":"9532","tcode":"24","mcode":"7","bcode":"704","code":"70406","name":"\uacf5\uc5f0\u00b7\uc5f0\uc8fc\u00b7\ud569\ucc3d"},"70413":{"kcode":"22759","tcode":"24","mcode":"7","bcode":"704","code":"70413","name":"\ubb34\ub300\uc81c\uc791\u00b7\uc124\uce58"},"70414":{"kcode":"22760","tcode":"24","mcode":"7","bcode":"704","code":"70414","name":"\uc2a4\ud15d\u00b7\uc11c\ud3ec\ud2b8"},"70415":{"kcode":"22761","tcode":"24","mcode":"7","bcode":"704","code":"70415","name":"\ubba4\uc9c0\uceec\u00b7\ubb34\uc6a9\u00b7\uc5f0\uadf9"},"70416":{"kcode":"22762","tcode":"24","mcode":"7","bcode":"704","code":"70416","name":"\ubbf9\uc11c\u00b7\uc624\ud37c\ub808\uc774\ud130"},"70417":{"kcode":"22763","tcode":"24","mcode":"7","bcode":"704","code":"70417","name":"\ubb34\ub300\uac10\ub3c5"}}},"705":{"kcode":"8027","tcode":"9","mcode":"9","bcode":"7","code":"705","name":"\uc791\uac00\u00b7\uc2dc\ub098\ub9ac\uc624","keyword":{"70501":{"kcode":"9506","tcode":"24","mcode":"7","bcode":"705","code":"70501","name":"\uc791\uac00\u00b7\ud3c9\ub860\uac00"},"70503":{"kcode":"9510","tcode":"24","mcode":"7","bcode":"705","code":"70503","name":"\ubc29\uc1a1\u00b7\uad6c\uc131\uc791\uac00"},"70506":{"kcode":"9508","tcode":"24","mcode":"7","bcode":"705","code":"70506","name":"\uc2dc\ub098\ub9ac\uc624\uc791\uac00"},"70507":{"kcode":"9512","tcode":"24","mcode":"7","bcode":"705","code":"70507","name":"\uc678\ud654\ubc88\uc5ed\uc791\uac00"},"70508":{"kcode":"9513","tcode":"24","mcode":"7","bcode":"705","code":"70508","name":"\uc2a4\ud06c\ub9bd\ud130"},"70509":{"kcode":"22764","tcode":"24","mcode":"7","bcode":"705","code":"70509","name":"\ub4dc\ub77c\ub9c8\uc791\uac00"},"70510":{"kcode":"22765","tcode":"24","mcode":"7","bcode":"705","code":"70510","name":"\uc2a4\ud1a0\ub9ac\ud154\ub9c1"},"70511":{"kcode":"22766","tcode":"24","mcode":"7","bcode":"705","code":"70511","name":"\ud504\ub9ac\ubdf0\uc5b4"}}},"708":{"kcode":"8031","tcode":"9","mcode":"9","bcode":"7","code":"708","name":"\uc601\ud654\uc81c\uc791\u00b7\ubc30\uae09","keyword":{"70805":{"kcode":"9543","tcode":"24","mcode":"7","bcode":"708","code":"70805","name":"\uc601\ud654\uae30\ud68d\u00b7\uc81c\uc791"},"70806":{"kcode":"9544","tcode":"24","mcode":"7","bcode":"708","code":"70806","name":"\uc601\ud654\uac10\ub3c5\u00b7\uc5f0\ucd9c"},"70808":{"kcode":"9545","tcode":"24","mcode":"7","bcode":"708","code":"70808","name":"\uc601\ud654\uc5d4\uc9c0\ub2c8\uc5b4"},"70809":{"kcode":"9546","tcode":"24","mcode":"7","bcode":"708","code":"70809","name":"\uc601\ud654\u00b7\uc2a4\ud15d"},"70812":{"kcode":"9548","tcode":"24","mcode":"7","bcode":"708","code":"70812","name":"\uc601\ud654\ud64d\ubcf4"},"70813":{"kcode":"9549","tcode":"24","mcode":"7","bcode":"708","code":"70813","name":"\uc601\ud654\ubc30\uae09\u00b7\uc720\ud1b5"},"70814":{"kcode":"9550","tcode":"24","mcode":"7","bcode":"708","code":"70814","name":"\ud2b9\uc218\ud6a8\uacfc\u00b7SF"},"70815":{"kcode":"22777","tcode":"24","mcode":"7","bcode":"708","code":"70815","name":"\uc601\uc0ac\uae30\uc0ac"},"70816":{"kcode":"22778","tcode":"24","mcode":"7","bcode":"708","code":"70816","name":"\uc601\ud654\uc74c\uc545\u00b7OST"},"70817":{"kcode":"22779","tcode":"24","mcode":"7","bcode":"708","code":"70817","name":"\uc601\ud654\ubbf8\uc220\u00b7\uc18c\ud488"}}},"709":{"kcode":"8032","tcode":"9","mcode":"9","bcode":"7","code":"709","name":"\uad11\uace0\u00b7\uce74\ud53c\u00b7CF","keyword":{"70901":{"kcode":"9551","tcode":"24","mcode":"7","bcode":"709","code":"70901","name":"\uad11\uace0PD\u00b7\uc81c\uc791"},"70902":{"kcode":"9552","tcode":"24","mcode":"7","bcode":"709","code":"70902","name":"\uad11\uace0AE\u00b7\uae30\ud68d"},"70904":{"kcode":"9554","tcode":"24","mcode":"7","bcode":"709","code":"70904","name":"\uce74\ud53c\ub77c\uc774\ud130"},"70905":{"kcode":"9555","tcode":"24","mcode":"7","bcode":"709","code":"70905","name":"\uc544\ud2b8\ub514\ub809\ud130"},"70906":{"kcode":"9556","tcode":"24","mcode":"7","bcode":"709","code":"70906","name":"CM\ud50c\ub798\ub108"},"70907":{"kcode":"9557","tcode":"24","mcode":"7","bcode":"709","code":"70907","name":"PPL\u00b7BPL"},"70908":{"kcode":"9558","tcode":"24","mcode":"7","bcode":"709","code":"70908","name":"\ud3ec\uc9c0\uc154\ub2dd"},"70909":{"kcode":"9559","tcode":"24","mcode":"7","bcode":"709","code":"70909","name":"CF\uac10\ub3c5"},"70910":{"kcode":"22780","tcode":"24","mcode":"7","bcode":"709","code":"70910","name":"IMC"},"70911":{"kcode":"22781","tcode":"24","mcode":"7","bcode":"709","code":"70911","name":"\ucea0\ud398\uc778\u00b7\uc2ac\ub85c\uac74"}}},"710":{"kcode":"8028","tcode":"9","mcode":"9","bcode":"7","code":"710","name":"\uae30\uc790","keyword":{"71001":{"kcode":"9514","tcode":"24","mcode":"7","bcode":"710","code":"71001","name":"\uc2e0\ubb38\uae30\uc790"},"71002":{"kcode":"9515","tcode":"24","mcode":"7","bcode":"710","code":"71002","name":"\ubc29\uc1a1\uae30\uc790"},"71003":{"kcode":"9516","tcode":"24","mcode":"7","bcode":"710","code":"71003","name":"\uc7a1\uc9c0\u00b7\uc0ac\ubcf4\uae30\uc790"},"71004":{"kcode":"9517","tcode":"24","mcode":"7","bcode":"710","code":"71004","name":"\uc0ac\uc9c4\uae30\uc790"},"71005":{"kcode":"9518","tcode":"24","mcode":"7","bcode":"710","code":"71005","name":"\uc601\uc0c1\u00b7\ucde8\uc7ac\uae30\uc790"},"71006":{"kcode":"9519","tcode":"24","mcode":"7","bcode":"710","code":"71006","name":"\ucd2c\uc601\uae30\uc790"},"71007":{"kcode":"9520","tcode":"24","mcode":"7","bcode":"710","code":"71007","name":"\ud3b8\uc9d1\uae30\uc790"},"71008":{"kcode":"9521","tcode":"24","mcode":"7","bcode":"710","code":"71008","name":"\uc778\ud130\ub137\uae30\uc790"},"71010":{"kcode":"22782","tcode":"24","mcode":"7","bcode":"710","code":"71010","name":"\uc778\ud130\ub137\ub274\uc2a4\ud3b8\uc9d1"},"71011":{"kcode":"22783","tcode":"24","mcode":"7","bcode":"710","code":"71011","name":"\uc778\ud134\u00b7\uac1d\uc6d0\uae30\uc790"}}},"711":{"kcode":"8024","tcode":"9","mcode":"9","bcode":"7","code":"711","name":"\ubc29\uc1a1\uc5f0\ucd9c\u00b7PD\u00b7\uac10\ub3c5","keyword":{"71101":{"kcode":"9480","tcode":"24","mcode":"7","bcode":"711","code":"71101","name":"PD\u00b7\uc5f0\ucd9c"},"71102":{"kcode":"9483","tcode":"24","mcode":"7","bcode":"711","code":"71102","name":"\ubc29\uc1a1\uc5d4\uc9c0\ub2c8\uc5b4"},"71103":{"kcode":"9481","tcode":"24","mcode":"7","bcode":"711","code":"71103","name":"AD\u00b7\uc870\uc5f0\ucd9c"},"71104":{"kcode":"9482","tcode":"24","mcode":"7","bcode":"711","code":"71104","name":"FD\u00b7\uc5f0\ucd9c\ubcf4\uc870"},"71105":{"kcode":"9484","tcode":"24","mcode":"7","bcode":"711","code":"71105","name":"\ubc29\uc1a1\uae30\ud68d"},"71106":{"kcode":"9485","tcode":"24","mcode":"7","bcode":"711","code":"71106","name":"\ubc29\uc1a1\uc81c\uc791"},"71107":{"kcode":"9486","tcode":"24","mcode":"7","bcode":"711","code":"71107","name":"\ubc29\uc1a1\ud3b8\uc131"},"71108":{"kcode":"22784","tcode":"24","mcode":"7","bcode":"711","code":"71108","name":"\ubc29\uccad\uac1d\u00b7\ubcf4\uc870\ucd9c\uc5f0"},"71109":{"kcode":"22785","tcode":"24","mcode":"7","bcode":"711","code":"71109","name":"\uc678\ud654\ub354\ube59\u00b7\ubc88\uc5ed"},"71110":{"kcode":"22786","tcode":"24","mcode":"7","bcode":"711","code":"71110","name":"\ud648\uc1fc\ud551\ubc29\uc1a1"}}},"712":{"kcode":"8026","tcode":"9","mcode":"9","bcode":"7","code":"712","name":"\uc9c4\ud589\u00b7\uc544\ub098\uc6b4\uc11c","keyword":{"71201":{"kcode":"9499","tcode":"24","mcode":"7","bcode":"712","code":"71201","name":"\ub9ac\ud3ec\ud130"},"71202":{"kcode":"9500","tcode":"24","mcode":"7","bcode":"712","code":"71202","name":"\uc544\ub098\uc6b4\uc11c"},"71203":{"kcode":"9501","tcode":"24","mcode":"7","bcode":"712","code":"71203","name":"\uc575\ucee4"},"71204":{"kcode":"9502","tcode":"24","mcode":"7","bcode":"712","code":"71204","name":"MC\u00b7VJ"},"71205":{"kcode":"9503","tcode":"24","mcode":"7","bcode":"712","code":"71205","name":"\uc1fc\ud638\uc2a4\ud2b8"},"71206":{"kcode":"9504","tcode":"24","mcode":"7","bcode":"712","code":"71206","name":"\uc131\uc6b0\u00b7\ub354\ube59"},"71207":{"kcode":"9505","tcode":"24","mcode":"7","bcode":"712","code":"71207","name":"\uae30\uc0c1\uce90\uc2a4\ud130"},"71209":{"kcode":"22787","tcode":"24","mcode":"7","bcode":"712","code":"71209","name":"\uc0ac\ub0b4\ubc29\uc1a1"}}},"713":{"kcode":"22767","tcode":"9","mcode":"9","bcode":"7","code":"713","name":"\uc74c\uc545\u00b7\uc74c\ud5a5\u00b7\uc0ac\uc6b4\ub4dc","keyword":{"71301":{"kcode":"22768","tcode":"24","mcode":"7","bcode":"713","code":"71301","name":"\uc74c\ubc18\uae30\ud68d"},"71302":{"kcode":"22769","tcode":"24","mcode":"7","bcode":"713","code":"71302","name":"\ubcf4\uceec\ud2b8\ub808\uc774\ub2dd"},"71303":{"kcode":"22770","tcode":"24","mcode":"7","bcode":"713","code":"71303","name":"\uc791\uace1\u00b7\ud3b8\uace1"},"71304":{"kcode":"22771","tcode":"24","mcode":"7","bcode":"713","code":"71304","name":"\uc791\uc0ac"},"71305":{"kcode":"22772","tcode":"24","mcode":"7","bcode":"713","code":"71305","name":"\uc74c\ud5a5\u00b7\ub179\uc74c"},"71306":{"kcode":"22773","tcode":"24","mcode":"7","bcode":"713","code":"71306","name":"\uc624\ub514\uc624\uc5d4\uc9c0\ub2c8\uc5b4"},"71307":{"kcode":"22774","tcode":"24","mcode":"7","bcode":"713","code":"71307","name":"\uc0ac\uc6b4\ub4dc\ub514\ub809\ud130"},"71308":{"kcode":"22775","tcode":"24","mcode":"7","bcode":"713","code":"71308","name":"\uad6d\uc545\u00b7\uac00\uc57c\uae08"},"71309":{"kcode":"22776","tcode":"24","mcode":"7","bcode":"713","code":"71309","name":"\uc131\uc545\u00b7\ud074\ub798\uc2dd"}}},"714":{"kcode":"22369","tcode":"9","mcode":"9","bcode":"7","code":"714","name":"\uc778\uc1c4\u00b7\ucd9c\ud310\u00b7\ud3b8\uc9d1","keyword":{"71401":{"kcode":"22370","tcode":"24","mcode":"7","bcode":"714","code":"71401","name":"\ucd9c\ud310\u00b7\ud3b8\uc9d1\uae30\ud68d"},"71402":{"kcode":"22371","tcode":"24","mcode":"7","bcode":"714","code":"71402","name":"\ud3b8\uc9d1\u00b7\uad50\uc815\u00b7\uad50\uc5f4"},"71403":{"kcode":"22372","tcode":"24","mcode":"7","bcode":"714","code":"71403","name":"\uc778\uc1c4\u00b7\uc81c\ubcf8\u00b7\uc870\ud310"},"71404":{"kcode":"22373","tcode":"24","mcode":"7","bcode":"714","code":"71404","name":"\ucd9c\ub825\u00b7\ubcf5\uc0ac"},"71405":{"kcode":"22374","tcode":"24","mcode":"7","bcode":"714","code":"71405","name":"\uac04\ud310\u00b7\ud604\uc218\ub9c9"},"71406":{"kcode":"22375","tcode":"24","mcode":"7","bcode":"714","code":"71406","name":"\uc804\uc790\ucd9c\ud310"},"71407":{"kcode":"22376","tcode":"24","mcode":"7","bcode":"714","code":"71407","name":"\uc9d1\ud544\u00b7\uc800\uc220"}}},"715":{"kcode":"22730","tcode":"9","mcode":"9","bcode":"7","code":"715","name":"\uc0ac\uc9c4\u00b7\ud3ec\ud1a0\uadf8\ub77c\ud37c","keyword":{"71501":{"kcode":"22734","tcode":"24","mcode":"7","bcode":"715","code":"71501","name":"\uc0ac\uc9c4\ucd2c\uc601\uae30\uc0ac"},"71502":{"kcode":"22735","tcode":"24","mcode":"7","bcode":"715","code":"71502","name":"\uc0ac\uc9c4\uad00\u00b7\uc2a4\ud29c\ub514\uc624"},"71503":{"kcode":"22752","tcode":"24","mcode":"7","bcode":"715","code":"71503","name":"\ud3ec\ud1a0\uc0f5"},"71504":{"kcode":"22753","tcode":"24","mcode":"7","bcode":"715","code":"71504","name":"\ud3ec\ud1a0\uadf8\ub77c\ud37c"},"71505":{"kcode":"22754","tcode":"24","mcode":"7","bcode":"715","code":"71505","name":"\uc6e8\ub529"},"71506":{"kcode":"22755","tcode":"24","mcode":"7","bcode":"715","code":"71506","name":"\ubca0\uc774\ube44"},"71507":{"kcode":"22756","tcode":"24","mcode":"7","bcode":"715","code":"71507","name":"\uc99d\uba85\uc0ac\uc9c4"},"71508":{"kcode":"22757","tcode":"24","mcode":"7","bcode":"715","code":"71508","name":"\uc0ac\uc9c4\uc778\ud654"},"71509":{"kcode":"22758","tcode":"24","mcode":"7","bcode":"715","code":"71509","name":"\uce74\uba54\ub77c\u00b7\ub80c\uc988"}}}}},"8":{"bcode":"8","name":"\ud2b9\uc218\uacc4\uce35\u00b7\uacf5\uacf5","code":{"807":{"kcode":"8014","tcode":"9","mcode":"9","bcode":"8","code":"807","name":"\uc911\uc7a5\ub144\u00b7\uace0\ub839\uc778\u00b7\uc2e4\ubc84","keyword":{"80701":{"kcode":"9577","tcode":"24","mcode":"8","bcode":"807","code":"80701","name":"\uace0\ub839\uc790\u00b7\uc2e4\ubc84\ucde8\uc5c5"},"80703":{"kcode":"22788","tcode":"24","mcode":"8","bcode":"807","code":"80703","name":"\ud1f4\uc9c1\uc790\u00b7\uc2e4\uc9c1\uc790"}}},"808":{"kcode":"8015","tcode":"9","mcode":"9","bcode":"8","code":"808","name":"\uc7a5\uc560\uc778\u00b7\uad6d\uac00\uc720\uacf5\uc790","keyword":{"80801":{"kcode":"9579","tcode":"24","mcode":"8","bcode":"808","code":"80801","name":"\uc7a5\uc560\uc778"},"80802":{"kcode":"9580","tcode":"24","mcode":"8","bcode":"808","code":"80802","name":"\uad6d\uac00\uc720\uacf5\uc790"},"80803":{"kcode":"9581","tcode":"24","mcode":"8","bcode":"808","code":"80803","name":"\ucde8\uc5c5\ubcf4\ud638\ub300\uc0c1\uc790"}}},"809":{"kcode":"8013","tcode":"9","mcode":"9","bcode":"8","code":"809","name":"\ubcd1\uc5ed\ud2b9\ub840","keyword":{"80901":{"kcode":"9570","tcode":"24","mcode":"8","bcode":"809","code":"80901","name":"\ubcd1\uc5ed\ud2b9\ub840"},"80902":{"kcode":"9571","tcode":"24","mcode":"8","bcode":"809","code":"80902","name":"\uc804\ubb38\uc5f0\uad6c\uc694\uc6d0"},"80903":{"kcode":"9572","tcode":"24","mcode":"8","bcode":"809","code":"80903","name":"\uc0b0\uc5c5\uae30\ub2a5\uc694\uc6d0"},"80904":{"kcode":"9573","tcode":"24","mcode":"8","bcode":"809","code":"80904","name":"\uc804\uc9c1"},"80905":{"kcode":"9574","tcode":"24","mcode":"8","bcode":"809","code":"80905","name":"\ud604\uc5ed"},"80906":{"kcode":"9575","tcode":"24","mcode":"8","bcode":"809","code":"80906","name":"\ubcf4\ucda9\uc5ed"}}},"810":{"kcode":"8011","tcode":"9","mcode":"9","bcode":"8","code":"810","name":"\uacf5\ubb34\uc6d0","keyword":{"81001":{"kcode":"9560","tcode":"24","mcode":"8","bcode":"810","code":"81001","name":"9\uae09\uacf5\ubb34\uc6d0"},"81004":{"kcode":"9561","tcode":"24","mcode":"8","bcode":"810","code":"81004","name":"7\uae09\uacf5\ubb34\uc6d0"},"81005":{"kcode":"9562","tcode":"24","mcode":"8","bcode":"810","code":"81005","name":"\uc18c\ubc29\uc9c1"},"81006":{"kcode":"9563","tcode":"24","mcode":"8","bcode":"810","code":"81006","name":"\uacbd\ucc30\uc9c1"},"81007":{"kcode":"9564","tcode":"24","mcode":"8","bcode":"810","code":"81007","name":"\uc9c0\ubc29\uc9c1"},"81008":{"kcode":"9565","tcode":"24","mcode":"8","bcode":"810","code":"81008","name":"9\uae09\uae30\ub2a5\uc9c1"},"81009":{"kcode":"22789","tcode":"24","mcode":"8","bcode":"810","code":"81009","name":"6\uae09\u00b7\uace0\ub4f1\uace0\uc2dc"},"81010":{"kcode":"22790","tcode":"24","mcode":"8","bcode":"810","code":"81010","name":"\uad70\ubb34\uc6d0"},"81011":{"kcode":"22791","tcode":"24","mcode":"8","bcode":"810","code":"81011","name":"\ubcc4\uc815\uc9c1\u00b7\uacc4\uc57d\uc9c1"},"81012":{"kcode":"22792","tcode":"24","mcode":"8","bcode":"810","code":"81012","name":"\ud589\uc815\uc778\ud134"}}},"812":{"kcode":"8016","tcode":"9","mcode":"9","bcode":"8","code":"812","name":"\uc0ac\ud68c\ubcf5\uc9c0\u00b7\uc694\uc591\u00b7\ubd09\uc0ac","keyword":{"81201":{"kcode":"9582","tcode":"24","mcode":"8","bcode":"812","code":"81201","name":"\uc0ac\ud68c\ubcf5\uc9c0"},"81202":{"kcode":"9583","tcode":"24","mcode":"8","bcode":"812","code":"81202","name":"\uc790\uc6d0\ubd09\uc0ac"},"81203":{"kcode":"9584","tcode":"24","mcode":"8","bcode":"812","code":"81203","name":"\uc2ec\ub9ac\uc0c1\ub2f4"},"81205":{"kcode":"9586","tcode":"24","mcode":"8","bcode":"812","code":"81205","name":"\ucde8\uc5c5\uc0c1\ub2f4"},"81206":{"kcode":"21778","tcode":"24","mcode":"8","bcode":"812","code":"81206","name":"\uccad\uc18c\ub144\uc9c0\ub3c4\uc0ac"},"81208":{"kcode":"22794","tcode":"24","mcode":"8","bcode":"812","code":"81208","name":"\uc0dd\ud65c\uc9c0\ub3c4\uc0ac"},"81209":{"kcode":"22795","tcode":"24","mcode":"8","bcode":"812","code":"81209","name":"\uc7ac\ud65c\uad50\uc0ac"},"81210":{"kcode":"22796","tcode":"24","mcode":"8","bcode":"812","code":"81210","name":"\ud2b9\uc218\uad50\uc0ac"},"81211":{"kcode":"22798","tcode":"24","mcode":"8","bcode":"812","code":"81211","name":"\ub178\uc778\ubcf5\uc9c0\uc2dc\uc124"},"81212":{"kcode":"22799","tcode":"24","mcode":"8","bcode":"812","code":"81212","name":"\uc694\uc591\ubcf4\ud638\uc0ac"},"81213":{"kcode":"22800","tcode":"24","mcode":"8","bcode":"812","code":"81213","name":"\ucf00\uc5b4\ubcf5\uc9c0\uc0ac"},"81214":{"kcode":"22801","tcode":"24","mcode":"8","bcode":"812","code":"81214","name":"\uc2e4\ubc84\ud0c0\uc6b4"},"81215":{"kcode":"22802","tcode":"24","mcode":"8","bcode":"812","code":"81215","name":"\uc2e4\ubc84\uc0b0\uc5c5"}}},"813":{"kcode":"8012","tcode":"9","mcode":"9","bcode":"8","code":"813","name":"\uc7a5\uad50\u00b7\uad70\uc778\u00b7\ubd80\uc0ac\uad00","keyword":{"81304":{"kcode":"9569","tcode":"24","mcode":"8","bcode":"813","code":"81304","name":"\uc804\uc5ed\uc7a5\uad50\u00b7\uac04\ubd80"},"81305":{"kcode":"22793","tcode":"24","mcode":"8","bcode":"813","code":"81305","name":"\uc5ec\uad70(\uc7a5\uad50\u00b7\ubd80\uc0ac\uad00)"}}}}},"9":{"bcode":"9","name":"\uac74\uc124","code":{"901":{"kcode":"8017","tcode":"9","mcode":"9","bcode":"9","code":"901","name":"\ud1a0\ubaa9\u00b7\uc870\uacbd\u00b7\ub3c4\uc2dc\u00b7\uce21\ub7c9","keyword":{"90101":{"kcode":"9588","tcode":"24","mcode":"9","bcode":"901","code":"90101","name":"\ud1a0\ubaa9"},"90102":{"kcode":"9589","tcode":"24","mcode":"9","bcode":"901","code":"90102","name":"\uc870\uacbd\u00b7\uc815\uc6d0"},"90103":{"kcode":"9590","tcode":"24","mcode":"9","bcode":"901","code":"90103","name":"\ub3c4\uc2dc\uacc4\ud68d\u00b7\uad50\ud1b5"},"90104":{"kcode":"9591","tcode":"24","mcode":"9","bcode":"901","code":"90104","name":"\uce21\ub7c9\u00b7\uacc4\uce21"},"90106":{"kcode":"9592","tcode":"24","mcode":"9","bcode":"901","code":"90106","name":"\ub3c4\ub85c\u00b7\uc0c1\ud558\uc218\ub3c4"},"90107":{"kcode":"9593","tcode":"24","mcode":"9","bcode":"901","code":"90107","name":"\ubbf8\uc7a5"},"90109":{"kcode":"9596","tcode":"24","mcode":"9","bcode":"901","code":"90109","name":"\ud1a0\ubaa9\uae30\uc0ac"},"90111":{"kcode":"9594","tcode":"24","mcode":"9","bcode":"901","code":"90111","name":"\uad50\ub7c9\u00b7\uac00\uc124"},"90112":{"kcode":"9595","tcode":"24","mcode":"9","bcode":"901","code":"90112","name":"\uad6c\uc870\u00b7\uacbd\ub7c9\u00b7\uace8\uc870"},"90113":{"kcode":"26604","tcode":"24","mcode":"9","bcode":"901","code":"90113","name":"\uad6c\uc870\ud574\uc11d"}}},"902":{"kcode":"8018","tcode":"9","mcode":"9","bcode":"9","code":"902","name":"\uac74\ucd95\u00b7\uc778\ud14c\ub9ac\uc5b4\u00b7\uc124\uacc4","keyword":{"90201":{"kcode":"9598","tcode":"24","mcode":"9","bcode":"902","code":"90201","name":"\uc778\ud14c\ub9ac\uc5b4\uc124\uacc4"},"90202":{"kcode":"9602","tcode":"24","mcode":"9","bcode":"902","code":"90202","name":"\uc778\ud14c\ub9ac\uc5b4"},"90206":{"kcode":"9603","tcode":"24","mcode":"9","bcode":"902","code":"90206","name":"\uc2e4\ub0b4\uac74\ucd95"},"90207":{"kcode":"9604","tcode":"24","mcode":"9","bcode":"902","code":"90207","name":"\uac74\ucd95CAD"},"90208":{"kcode":"9599","tcode":"24","mcode":"9","bcode":"902","code":"90208","name":"\uac00\uc124\uc124\uacc4"},"90209":{"kcode":"9601","tcode":"24","mcode":"9","bcode":"902","code":"90209","name":"\uad50\ub7c9\uc124\uacc4"},"90210":{"kcode":"9605","tcode":"24","mcode":"9","bcode":"902","code":"90210","name":"\ub9ac\ubaa8\ub378\ub9c1"},"90211":{"kcode":"9600","tcode":"24","mcode":"9","bcode":"902","code":"90211","name":"\ub3c4\ub85c\uc124\uacc4"},"90212":{"kcode":"9606","tcode":"24","mcode":"9","bcode":"902","code":"90212","name":"\uc2e4\ub0b4\ub514\uc790\uc778"},"90213":{"kcode":"21780","tcode":"24","mcode":"9","bcode":"902","code":"90213","name":"\uc0e4\uc2dc\u00b7\ubca0\ub780\ub2e4"},"90214":{"kcode":"22803","tcode":"24","mcode":"9","bcode":"902","code":"90214","name":"\ucc3d\ud638\uacf5\uc0ac"},"90215":{"kcode":"22804","tcode":"24","mcode":"9","bcode":"902","code":"90215","name":"\ud604\uc7a5\uad00\ub9ac"},"90216":{"kcode":"22805","tcode":"24","mcode":"9","bcode":"902","code":"90216","name":"\uc804\uc2dc\uc778\ud14c\ub9ac\uc5b4"},"90217":{"kcode":"22806","tcode":"24","mcode":"9","bcode":"902","code":"90217","name":"\uac04\ud310\u00b7\ud310\ub12c"},"90218":{"kcode":"22807","tcode":"24","mcode":"9","bcode":"902","code":"90218","name":"\ub3c4\ubc30\u00b7\ubcbd\uc9c0"},"90219":{"kcode":"22808","tcode":"24","mcode":"9","bcode":"902","code":"90219","name":"\uc7a5\ud310\u00b7\ud0c0\uc77c"},"90220":{"kcode":"22809","tcode":"24","mcode":"9","bcode":"902","code":"90220","name":"\ub2e8\uc5f4\u00b7\uc678\uc7a5"},"90221":{"kcode":"22810","tcode":"24","mcode":"9","bcode":"902","code":"90221","name":"\ubc29\uc74c\u00b7\ubc29\ubcbd"},"90222":{"kcode":"22811","tcode":"24","mcode":"9","bcode":"902","code":"90222","name":"\ube4c\ud2b8\uc778\uc124\uacc4"},"90223":{"kcode":"22812","tcode":"24","mcode":"9","bcode":"902","code":"90223","name":"\uac74\ucd95"},"90224":{"kcode":"31501","tcode":"24","mcode":"9","bcode":"902","code":"90224","name":"\uc778\ud14c\ub9ac\uc5b4\uc2dc\uacf5"}}},"903":{"kcode":"8019","tcode":"9","mcode":"9","bcode":"9","code":"903","name":"\uc804\uae30\u00b7\uc18c\ubc29\u00b7\ud1b5\uc2e0\u00b7\uc124\ube44","keyword":{"90302":{"kcode":"9609","tcode":"24","mcode":"9","bcode":"903","code":"90302","name":"\uc804\uae30\uc124\ube44"},"90303":{"kcode":"9610","tcode":"24","mcode":"9","bcode":"903","code":"90303","name":"\ud1b5\uc2e0\uc124\ube44"},"90304":{"kcode":"9611","tcode":"24","mcode":"9","bcode":"903","code":"90304","name":"\uc18c\ubc29\u00b7\ubc29\uc7ac"},"90305":{"kcode":"9612","tcode":"24","mcode":"9","bcode":"903","code":"90305","name":"\uae30\uacc4\uc124\ube44"},"90306":{"kcode":"9608","tcode":"24","mcode":"9","bcode":"903","code":"90306","name":"\uc804\uae30\ubc30\uc120"},"90307":{"kcode":"9614","tcode":"24","mcode":"9","bcode":"903","code":"90307","name":"\uacf5\uc870\ub0c9\ub3d9"},"90308":{"kcode":"9613","tcode":"24","mcode":"9","bcode":"903","code":"90308","name":"\uac74\ucd95\uc124\ube44"},"90309":{"kcode":"22813","tcode":"24","mcode":"9","bcode":"903","code":"90309","name":"\uc804\uae30\uae30\uc0ac"},"90310":{"kcode":"22814","tcode":"24","mcode":"9","bcode":"903","code":"90310","name":"\uc5d0\uc5b4\ucf58\u00b7\ud658\uae30"},"90311":{"kcode":"22815","tcode":"24","mcode":"9","bcode":"903","code":"90311","name":"\uc5f4\uad00\ub9ac\u00b7\ubcf4\uc77c\ub7ec"},"90312":{"kcode":"22816","tcode":"24","mcode":"9","bcode":"903","code":"90312","name":"\ubc30\uad00\u00b7\ud30c\uc774\ud504"},"90313":{"kcode":"22817","tcode":"24","mcode":"9","bcode":"903","code":"90313","name":"LAN\u00b7\ucf00\uc774\ube14"},"90314":{"kcode":"22818","tcode":"24","mcode":"9","bcode":"903","code":"90314","name":"\uc804\ud654\u00b7\ud1b5\uc2e0"},"90315":{"kcode":"22819","tcode":"24","mcode":"9","bcode":"903","code":"90315","name":"\uc5d8\ub9ac\ubca0\uc774\ud130"},"90316":{"kcode":"22820","tcode":"24","mcode":"9","bcode":"903","code":"90316","name":"\uc704\uc131\u00b7\uc548\ud14c\ub098"}}},"904":{"kcode":"8020","tcode":"9","mcode":"9","bcode":"9","code":"904","name":"\ud658\uacbd\u00b7\ud50c\ub79c\ud2b8","keyword":{"90402":{"kcode":"9616","tcode":"24","mcode":"9","bcode":"904","code":"90402","name":"\ud658\uacbd"},"90403":{"kcode":"9617","tcode":"24","mcode":"9","bcode":"904","code":"90403","name":"\ud50c\ub79c\ud2b8"},"90404":{"kcode":"9618","tcode":"24","mcode":"9","bcode":"904","code":"90404","name":"\ud658\uacbd\uae30\uc0ac"},"90405":{"kcode":"22821","tcode":"24","mcode":"9","bcode":"904","code":"90405","name":"\ud3d0\uae30\ubb3c\ucc98\ub9ac"},"90406":{"kcode":"22822","tcode":"24","mcode":"9","bcode":"904","code":"90406","name":"\uc218\uc9c8\ud658\uacbd"},"90407":{"kcode":"22823","tcode":"24","mcode":"9","bcode":"904","code":"90407","name":"\ud658\uacbd\uc601\ud5a5\ud3c9\uac00"},"90408":{"kcode":"22824","tcode":"24","mcode":"9","bcode":"904","code":"90408","name":"\uc18c\uc74c\u00b7\uc9c4\ub3d9"},"90409":{"kcode":"22825","tcode":"24","mcode":"9","bcode":"904","code":"90409","name":"\ud1a0\uc591\ud658\uacbd"},"90410":{"kcode":"22826","tcode":"24","mcode":"9","bcode":"904","code":"90410","name":"\ub300\uae30\ud658\uacbd"}}},"905":{"kcode":"8021","tcode":"9","mcode":"9","bcode":"9","code":"905","name":"\ud604\uc7a5\u00b7\uc2dc\uacf5\u00b7\uac10\ub9ac\u00b7\uacf5\ubb34","keyword":{"90502":{"kcode":"9620","tcode":"24","mcode":"9","bcode":"905","code":"90502","name":"\uac74\ucd95\uc2dc\uacf5"},"90505":{"kcode":"9619","tcode":"24","mcode":"9","bcode":"905","code":"90505","name":"\uac74\ucd95\uac10\ub9ac"},"90506":{"kcode":"9621","tcode":"24","mcode":"9","bcode":"905","code":"90506","name":"\uacf5\ubb34"},"90512":{"kcode":"9625","tcode":"24","mcode":"9","bcode":"905","code":"90512","name":"\ud604\uc7a5\uc18c\uc7a5"},"90513":{"kcode":"22832","tcode":"24","mcode":"9","bcode":"905","code":"90513","name":"\uc0f5\ub4dc\ub85c\uc789"},"90514":{"kcode":"22833","tcode":"24","mcode":"9","bcode":"905","code":"90514","name":"\uc2dc\uacf5"},"90515":{"kcode":"22834","tcode":"24","mcode":"9","bcode":"905","code":"90515","name":"\ud1a0\ubaa9\uac10\ub9ac"},"90516":{"kcode":"22835","tcode":"24","mcode":"9","bcode":"905","code":"90516","name":"\uc18c\ubc29\uac10\ub9ac"},"90517":{"kcode":"22836","tcode":"24","mcode":"9","bcode":"905","code":"90517","name":"\uac10\ub9ac\uc6d0"},"90518":{"kcode":"22837","tcode":"24","mcode":"9","bcode":"905","code":"90518","name":"\uc124\uacc4\uac10\ub9ac"},"90519":{"kcode":"22838","tcode":"24","mcode":"9","bcode":"905","code":"90519","name":"\uc2dc\uacf5\uac10\ub9ac"},"90520":{"kcode":"22839","tcode":"24","mcode":"9","bcode":"905","code":"90520","name":"\uac74\ucd95\uc790\uc7ac"},"90521":{"kcode":"22840","tcode":"24","mcode":"9","bcode":"905","code":"90521","name":"\ubcf4\uc218\u00b7\ucca0\uac70"},"90522":{"kcode":"22841","tcode":"24","mcode":"9","bcode":"905","code":"90522","name":"\uacac\uc2b5\u00b7\uc870\uacf5\u00b7\ubcf4\uc870"},"90523":{"kcode":"22842","tcode":"24","mcode":"9","bcode":"905","code":"90523","name":"\uac74\uc124\ud604\uc7a5"},"90524":{"kcode":"22843","tcode":"24","mcode":"9","bcode":"905","code":"90524","name":"\uc77c\uc6a9\uc9c1"},"90525":{"kcode":"31502","tcode":"24","mcode":"9","bcode":"905","code":"90525","name":"\ub178\ubb34"},"90526":{"kcode":"31503","tcode":"24","mcode":"9","bcode":"905","code":"90526","name":"\uc885\ud569\uac10\ub9ac"},"90527":{"kcode":"31504","tcode":"24","mcode":"9","bcode":"905","code":"90527","name":"\ud604\uc7a5\uac10\ub9ac"},"90528":{"kcode":"31505","tcode":"24","mcode":"9","bcode":"905","code":"90528","name":"\uacf5\uc0ac\uac10\ub9ac"},"90529":{"kcode":"31506","tcode":"24","mcode":"9","bcode":"905","code":"90529","name":"\uac74\ucd95 CM"}}},"906":{"kcode":"8022","tcode":"9","mcode":"9","bcode":"9","code":"906","name":"\uc548\uc804\u00b7\ud488\uc9c8\u00b7\uac80\uc0ac\u00b7\uad00\ub9ac","keyword":{"90603":{"kcode":"9626","tcode":"24","mcode":"9","bcode":"906","code":"90603","name":"\uc548\uc804"},"90604":{"kcode":"9627","tcode":"24","mcode":"9","bcode":"906","code":"90604","name":"\ud488\uc9c8\uad00\ub9ac"},"90606":{"kcode":"9629","tcode":"24","mcode":"9","bcode":"906","code":"90606","name":"\ube44\ud30c\uad34\uac80\uc0ac"},"90607":{"kcode":"9630","tcode":"24","mcode":"9","bcode":"906","code":"90607","name":"\uac74\uc124\uc548\uc804"},"90608":{"kcode":"9631","tcode":"24","mcode":"9","bcode":"906","code":"90608","name":"\uc0b0\uc5c5\uc548\uc804"},"90609":{"kcode":"22844","tcode":"24","mcode":"9","bcode":"906","code":"90609","name":"\uac00\uc2a4\uc810\uac80"},"90610":{"kcode":"22845","tcode":"24","mcode":"9","bcode":"906","code":"90610","name":"\uc804\uae30\uc810\uac80"},"90611":{"kcode":"22846","tcode":"24","mcode":"9","bcode":"906","code":"90611","name":"\uc704\ud5d8\ubb3c\uad00\ub9ac"},"90612":{"kcode":"22847","tcode":"24","mcode":"9","bcode":"906","code":"90612","name":"\uac74\ubb3c\u00b7\ube4c\ub529\uad00\ub9ac"},"90613":{"kcode":"22848","tcode":"24","mcode":"9","bcode":"906","code":"90613","name":"\uc2dc\uc124\uad00\ub9ac"},"90614":{"kcode":"22849","tcode":"24","mcode":"9","bcode":"906","code":"90614","name":"\uc544\ud30c\ud2b8\uacbd\ube44"},"90615":{"kcode":"22850","tcode":"24","mcode":"9","bcode":"906","code":"90615","name":"\uad00\ub9ac\uc18c\uc7a5"}}},"908":{"kcode":"8023","tcode":"9","mcode":"9","bcode":"9","code":"908","name":"\ubd80\ub3d9\uc0b0\u00b7\uac1c\ubc1c\u00b7\uacbd\ub9e4\u00b7\ubd84\uc591","keyword":{"90801":{"kcode":"9632","tcode":"24","mcode":"9","bcode":"908","code":"90801","name":"\ubd80\ub3d9\uc0b0"},"90802":{"kcode":"9633","tcode":"24","mcode":"9","bcode":"908","code":"90802","name":"\ubd80\ub3d9\uc0b0\uac1c\ubc1c"},"90803":{"kcode":"9634","tcode":"24","mcode":"9","bcode":"908","code":"90803","name":"\ubd80\ub3d9\uc0b0\uc2dc\ud589"},"90804":{"kcode":"9635","tcode":"24","mcode":"9","bcode":"908","code":"90804","name":"\ubd84\uc591\u00b7\uc784\ub300"},"90805":{"kcode":"9636","tcode":"24","mcode":"9","bcode":"908","code":"90805","name":"\uacbd\ub9e4\u00b7\uc785\ucc30"},"90806":{"kcode":"9637","tcode":"24","mcode":"9","bcode":"908","code":"90806","name":"\uc601\uc5c5\u00b7\ud64d\ubcf4"},"90807":{"kcode":"9638","tcode":"24","mcode":"9","bcode":"908","code":"90807","name":"\uacac\uc801\u00b7\uc2dc\uc138"},"90808":{"kcode":"9639","tcode":"24","mcode":"9","bcode":"908","code":"90808","name":"\uacf5\uc778\uc911\uac1c\uc0ac"},"90809":{"kcode":"9640","tcode":"24","mcode":"9","bcode":"908","code":"90809","name":"\ubd84\uc591\uc0c1\ub2f4\uc0ac"},"90810":{"kcode":"9641","tcode":"24","mcode":"9","bcode":"908","code":"90810","name":"\ud574\uc678\ubd80\ub3d9\uc0b0"},"90811":{"kcode":"9642","tcode":"24","mcode":"9","bcode":"908","code":"90811","name":"\ub9e4\uc785\ub9e4\uac01"},"90812":{"kcode":"9643","tcode":"24","mcode":"9","bcode":"908","code":"90812","name":"\uc591\ub3c4\uc591\uc218"},"90813":{"kcode":"9644","tcode":"24","mcode":"9","bcode":"908","code":"90813","name":"\uc784\ub300\ucee8\uc124\ud305"},"90814":{"kcode":"9645","tcode":"24","mcode":"9","bcode":"908","code":"90814","name":"\uac10\uc815\ud3c9\uac00\uc0ac"},"90815":{"kcode":"9646","tcode":"24","mcode":"9","bcode":"908","code":"90815","name":"\uc0c1\uac00\u00b7\uc0ac\ubb34\uc2e4"},"90816":{"kcode":"9647","tcode":"24","mcode":"9","bcode":"908","code":"90816","name":"\uc544\ud30c\ud2b8\u00b7\ube4c\ub77c"},"90817":{"kcode":"22851","tcode":"24","mcode":"9","bcode":"908","code":"90817","name":"\uc8fc\ud0dd\uad00\ub9ac\uc0ac"},"90818":{"kcode":"22852","tcode":"24","mcode":"9","bcode":"908","code":"90818","name":"\ubaa8\ub378\ud558\uc6b0\uc2a4"}}},"909":{"kcode":"22827","tcode":"9","mcode":"9","bcode":"9","code":"909","name":"\ubcf8\uc0ac\u00b7\uad00\ub9ac\u00b7\uc804\uc0b0","keyword":{"90901":{"kcode":"22828","tcode":"24","mcode":"9","bcode":"909","code":"90901","name":"\uad00\ub9ac\uc9c1"},"90902":{"kcode":"22829","tcode":"24","mcode":"9","bcode":"909","code":"90902","name":"\uae30\uc220\uc9c1"},"90903":{"kcode":"22830","tcode":"24","mcode":"9","bcode":"909","code":"90903","name":"\uc804\uc0b0\uc9c1"},"90904":{"kcode":"22831","tcode":"24","mcode":"9","bcode":"909","code":"90904","name":"\uc0ac\ubb34\uc9c1"}}}}},"11":{"bcode":"11","name":"\uc11c\ube44\uc2a4","code":{"1101":{"kcode":"8048","tcode":"9","mcode":"9","bcode":"11","code":"1101","name":"\uc6e8\ub529\u00b7\ud589\uc0ac\u00b7\uc774\ubca4\ud2b8","keyword":{"110101":{"kcode":"9705","tcode":"24","mcode":"11","bcode":"1101","code":"110101","name":"\uc774\ubca4\ud2b8\ud50c\ub798\ub108"},"110102":{"kcode":"9706","tcode":"24","mcode":"11","bcode":"1101","code":"110102","name":"\uc6e8\ub529\ud50c\ub798\ub108"},"110103":{"kcode":"9707","tcode":"24","mcode":"11","bcode":"1101","code":"110103","name":"\ud504\ub85c\ubaa8\ud130"},"110104":{"kcode":"9708","tcode":"24","mcode":"11","bcode":"1101","code":"110104","name":"\uce90\uc2a4\ud305\ub514\ub809\ud130"},"110105":{"kcode":"9709","tcode":"24","mcode":"11","bcode":"1101","code":"110105","name":"\ud30c\ud2f0\ud50c\ub798\ub108"},"110106":{"kcode":"9710","tcode":"24","mcode":"11","bcode":"1101","code":"110106","name":"\ucee4\ud50c\ub9e4\ub2c8\uc800"},"110107":{"kcode":"9711","tcode":"24","mcode":"11","bcode":"1101","code":"110107","name":"\ud589\uc0ac\uc9c4\ud589"},"110108":{"kcode":"21301","tcode":"24","mcode":"11","bcode":"1101","code":"110108","name":"\uc7a5\ub840\u00b7\uc0c1\uc870\uc11c\ube44\uc2a4"},"110109":{"kcode":"22914","tcode":"24","mcode":"11","bcode":"1101","code":"110109","name":"\ud30c\ud2f0\uc6a9\ud488\ud310\ub9e4"},"110110":{"kcode":"26606","tcode":"24","mcode":"11","bcode":"1101","code":"110110","name":"\ud50c\ub85c\ub9ac\uc2a4\ud2b8"}}},"1102":{"kcode":"8049","tcode":"9","mcode":"9","bcode":"11","code":"1102","name":"\uc548\ub0b4\u00b7\ub3c4\uc6b0\ubbf8\u00b7\ub098\ub808\uc774\ud130","keyword":{"110201":{"kcode":"9712","tcode":"24","mcode":"11","bcode":"1102","code":"110201","name":"\uc548\ub0b4\ub370\uc2a4\ud06c"},"110202":{"kcode":"9713","tcode":"24","mcode":"11","bcode":"1102","code":"110202","name":"\ub3c4\uc6b0\ubbf8"},"110203":{"kcode":"9714","tcode":"24","mcode":"11","bcode":"1102","code":"110203","name":"\uc804\ud654\uc548\ub0b4\uc6d0"},"110204":{"kcode":"9715","tcode":"24","mcode":"11","bcode":"1102","code":"110204","name":"\ub098\ub808\uc774\ud130"},"110205":{"kcode":"9716","tcode":"24","mcode":"11","bcode":"1102","code":"110205","name":"\ucef4\ud328\ub2c8\uc5b8"},"110206":{"kcode":"9717","tcode":"24","mcode":"11","bcode":"1102","code":"110206","name":"\ubaa8\ub378"},"110207":{"kcode":"21782","tcode":"24","mcode":"11","bcode":"1102","code":"110207","name":"\ubc29\uc1a1\uc548\ub0b4\uc6d0"},"110208":{"kcode":"22915","tcode":"24","mcode":"11","bcode":"1102","code":"110208","name":"\uc2b9\uac15\uae30\uc548\ub0b4\uc6d0"}}},"1103":{"kcode":"8050","tcode":"9","mcode":"9","bcode":"11","code":"1103","name":"\ubcf4\uc548\u00b7\uacbd\ud638\u00b7\uc548\uc804","keyword":{"110301":{"kcode":"9718","tcode":"24","mcode":"11","bcode":"1103","code":"110301","name":"\uc548\uc804"},"110302":{"kcode":"9719","tcode":"24","mcode":"11","bcode":"1103","code":"110302","name":"\uccad\uc6d0\uacbd\ucc30"},"110303":{"kcode":"9720","tcode":"24","mcode":"11","bcode":"1103","code":"110303","name":"\uc18c\ubc29"},"110304":{"kcode":"9721","tcode":"24","mcode":"11","bcode":"1103","code":"110304","name":"\ubcf4\uc548"},"110305":{"kcode":"9722","tcode":"24","mcode":"11","bcode":"1103","code":"110305","name":"\uacbd\ud638\u00b7\uacbd\ube44"},"110310":{"kcode":"14207","tcode":"24","mcode":"11","bcode":"1103","code":"110310","name":"\uc2dc\ud050\ub9ac\ud2f0"},"110311":{"kcode":"21783","tcode":"24","mcode":"11","bcode":"1103","code":"110311","name":"\uacbd\ube44\uc9c0\ub3c4\uc0ac"},"110312":{"kcode":"22916","tcode":"24","mcode":"11","bcode":"1103","code":"110312","name":"\uc0b0\uc5c5\uc548\uc804\uae30\uc0ac"},"110313":{"kcode":"26607","tcode":"24","mcode":"11","bcode":"1103","code":"110313","name":"\ud604\uae08\ud638\uc1a1"},"110314":{"kcode":"31553","tcode":"24","mcode":"11","bcode":"1103","code":"110314","name":"\ubcf4\uc548\uac80\uc0c9"},"110315":{"kcode":"31554","tcode":"24","mcode":"11","bcode":"1103","code":"110315","name":"\uc21c\ucc30"}}},"1104":{"kcode":"8051","tcode":"9","mcode":"9","bcode":"11","code":"1104","name":"\uc8fc\ucc28\u00b7\uc138\ucc28\u00b7\uc8fc\uc720","keyword":{"110402":{"kcode":"9729","tcode":"24","mcode":"11","bcode":"1104","code":"110402","name":"\uc8fc\ucc28\uad00\ub9ac"},"110403":{"kcode":"9730","tcode":"24","mcode":"11","bcode":"1104","code":"110403","name":"\uc8fc\ucc28\uc548\ub0b4"},"110412":{"kcode":"22917","tcode":"24","mcode":"11","bcode":"1104","code":"110412","name":"\ubc1c\ub81b\ud30c\ud0b9"},"110413":{"kcode":"22918","tcode":"24","mcode":"11","bcode":"1104","code":"110413","name":"\uc8fc\ucc28\u00b7\ubc1c\uad8c\ub3c4\uc6b0\ubbf8"},"110414":{"kcode":"22919","tcode":"24","mcode":"11","bcode":"1104","code":"110414","name":"\uc8fc\ucc28\uc815\uc0b0\uc6d0"},"110415":{"kcode":"22920","tcode":"24","mcode":"11","bcode":"1104","code":"110415","name":"\uc138\ucc28\uc7a5"},"110416":{"kcode":"22921","tcode":"24","mcode":"11","bcode":"1104","code":"110416","name":"\uc8fc\uc720\uc6d0"}}},"1105":{"kcode":"8052","tcode":"9","mcode":"9","bcode":"11","code":"1105","name":"AS\u00b7\uc11c\ube44\uc2a4\u00b7\uc218\ub9ac","keyword":{"110501":{"kcode":"9739","tcode":"24","mcode":"11","bcode":"1105","code":"110501","name":"AS\uae30\uc0ac"},"110502":{"kcode":"9740","tcode":"24","mcode":"11","bcode":"1105","code":"110502","name":"\uc11c\ube44\uc2a4"},"110503":{"kcode":"9741","tcode":"24","mcode":"11","bcode":"1105","code":"110503","name":"\uc124\uce58\u00b7\uc218\ub9ac"},"110504":{"kcode":"9742","tcode":"24","mcode":"11","bcode":"1105","code":"110504","name":"\uc790\ub3d9\ucc28\uc815\ube44"},"110505":{"kcode":"9743","tcode":"24","mcode":"11","bcode":"1105","code":"110505","name":"\uc815\uae30\u00b7\uc815\ubc00\uac80\uc0ac"},"110506":{"kcode":"9744","tcode":"24","mcode":"11","bcode":"1105","code":"110506","name":"\ud310\uae08\u00b7\ub3c4\uc7a5\u00b7\ub3c4\uc0c9"},"110507":{"kcode":"9745","tcode":"24","mcode":"11","bcode":"1105","code":"110507","name":"\uc36c\ud305\u00b7\uad11\ud0dd\u00b7\ud29c\ub2dd"},"110508":{"kcode":"9746","tcode":"24","mcode":"11","bcode":"1105","code":"110508","name":"\uc720\uc9c0\u00b7\ubcf4\uc218\u00b7\uad50\uccb4"}}},"1107":{"kcode":"8054","tcode":"9","mcode":"9","bcode":"11","code":"1107","name":"\uc678\uc2dd\u00b7\uc2dd\uc74c\ub8cc","keyword":{"110702":{"kcode":"9751","tcode":"24","mcode":"11","bcode":"1107","code":"110702","name":"\uc9c0\ubc30\uc778"},"110703":{"kcode":"9752","tcode":"24","mcode":"11","bcode":"1107","code":"110703","name":"\uc11c\ube44\uc2a4"},"110704":{"kcode":"9753","tcode":"24","mcode":"11","bcode":"1107","code":"110704","name":"\ub9e4\ub2c8\uc838"},"110705":{"kcode":"9754","tcode":"24","mcode":"11","bcode":"1107","code":"110705","name":"\ucea1\ud2f4"},"110713":{"kcode":"9755","tcode":"24","mcode":"11","bcode":"1107","code":"110713","name":"\uce90\uc154"},"110714":{"kcode":"9756","tcode":"24","mcode":"11","bcode":"1107","code":"110714","name":"\uc6e8\uc774\ud130"},"110715":{"kcode":"9757","tcode":"24","mcode":"11","bcode":"1107","code":"110715","name":"\uc6e8\uc774\ud2b8\ub9ac\uc2a4"},"110716":{"kcode":"9758","tcode":"24","mcode":"11","bcode":"1107","code":"110716","name":"\ud640\uc11c\ube59"},"110730":{"kcode":"9764","tcode":"24","mcode":"11","bcode":"1107","code":"110730","name":"\ubc14\ub9ac\uc2a4\ud0c0\u00b7\ucee4\ud53c"},"110733":{"kcode":"9767","tcode":"24","mcode":"11","bcode":"1107","code":"110733","name":"\uc18c\ubbc8\ub9ac\uc5d0\u00b7\uc640\uc778"},"110735":{"kcode":"22922","tcode":"24","mcode":"11","bcode":"1107","code":"110735","name":"\uc22f\ubd88\uad00\ub9ac"},"110736":{"kcode":"22923","tcode":"24","mcode":"11","bcode":"1107","code":"110736","name":"\uce74\uc6b4\ud130"},"110737":{"kcode":"22924","tcode":"24","mcode":"11","bcode":"1107","code":"110737","name":"\uc74c\uc2dd\ubc30\ub2ec"}}},"1108":{"kcode":"8055","tcode":"9","mcode":"9","bcode":"11","code":"1108","name":"\ud638\ud154\u00b7\uce74\uc9c0\ub178\u00b7\ucf58\ub3c4","keyword":{"110801":{"kcode":"9770","tcode":"24","mcode":"11","bcode":"1108","code":"110801","name":"\ud638\ud154"},"110802":{"kcode":"9771","tcode":"24","mcode":"11","bcode":"1108","code":"110802","name":"\uce74\uc9c0\ub178"},"110804":{"kcode":"9773","tcode":"24","mcode":"11","bcode":"1108","code":"110804","name":"\ucf58\ub3c4\u00b7\ub9ac\uc870\ud2b8"},"110805":{"kcode":"9774","tcode":"24","mcode":"11","bcode":"1108","code":"110805","name":"\uce74\uc6b4\ud130\u00b7\uce90\uc154"},"110806":{"kcode":"9775","tcode":"24","mcode":"11","bcode":"1108","code":"110806","name":"\ubca8\ub9e8\u00b7\ub3c4\uc5b4\ub9e8"},"110807":{"kcode":"9776","tcode":"24","mcode":"11","bcode":"1108","code":"110807","name":"\ud558\uc6b0\uc2a4\ud0a4\ud551"},"110808":{"kcode":"9777","tcode":"24","mcode":"11","bcode":"1108","code":"110808","name":"\ud504\ub860\ud2b8"},"110810":{"kcode":"22925","tcode":"24","mcode":"11","bcode":"1108","code":"110810","name":"\ub9ac\uc149\uc158\u00b7\uc608\uc57d\uc811\uc218"},"110811":{"kcode":"22926","tcode":"24","mcode":"11","bcode":"1108","code":"110811","name":"\uce74\uc9c0\ub178\ub51c\ub7ec"},"110812":{"kcode":"22927","tcode":"24","mcode":"11","bcode":"1108","code":"110812","name":"GRO"},"110813":{"kcode":"22928","tcode":"24","mcode":"11","bcode":"1108","code":"110813","name":"\ucee8\uc2dc\uc5b4\uc9c0"}}},"1109":{"kcode":"8056","tcode":"9","mcode":"9","bcode":"11","code":"1109","name":"\uc5ec\ud589\u00b7\uad00\uad11\u00b7\ud56d\uacf5","keyword":{"110901":{"kcode":"9779","tcode":"24","mcode":"11","bcode":"1109","code":"110901","name":"\uc5ec\ud589\uc0ac"},"110904":{"kcode":"9784","tcode":"24","mcode":"11","bcode":"1109","code":"110904","name":"\ud56d\uacf5\uc0ac"},"110905":{"kcode":"9781","tcode":"24","mcode":"11","bcode":"1109","code":"110905","name":"\uad00\uad11\ud1b5\uc5ed\uac00\uc774\ub4dc"},"110906":{"kcode":"9785","tcode":"24","mcode":"11","bcode":"1109","code":"110906","name":"\uc870\uc885\uc0ac\u00b7\uc2b9\ubb34\uc6d0"},"110907":{"kcode":"9782","tcode":"24","mcode":"11","bcode":"1109","code":"110907","name":"\ud604\uc9c0\uac00\uc774\ub4dc"},"110910":{"kcode":"9788","tcode":"24","mcode":"11","bcode":"1109","code":"110910","name":"\uba74\uc138\uc810"},"110911":{"kcode":"9786","tcode":"24","mcode":"11","bcode":"1109","code":"110911","name":"\ube44\uc790\uc218\uc18d"},"110912":{"kcode":"9787","tcode":"24","mcode":"11","bcode":"1109","code":"110912","name":"\uc5ec\uad8c\ubc1c\uae09"},"110913":{"kcode":"9783","tcode":"24","mcode":"11","bcode":"1109","code":"110913","name":"OP"},"110915":{"kcode":"22929","tcode":"24","mcode":"11","bcode":"1109","code":"110915","name":"\uc5ec\ud589\uc0c1\ud488\uac1c\ubc1c"},"110916":{"kcode":"22930","tcode":"24","mcode":"11","bcode":"1109","code":"110916","name":"\uc608\uc57d\u00b7\ubc1c\uad8c"},"110917":{"kcode":"22931","tcode":"24","mcode":"11","bcode":"1109","code":"110917","name":"\uacf5\ud56d\uc9c0\uc0c1\uc9c1"}}},"1110":{"kcode":"22543","tcode":"9","mcode":"9","bcode":"11","code":"1110","name":"\ub808\uc800\u00b7\uc2a4\ud3ec\uce20","keyword":{"111001":{"kcode":"22633","tcode":"24","mcode":"11","bcode":"1110","code":"111001","name":"\ub808\uc800"},"111002":{"kcode":"22634","tcode":"24","mcode":"11","bcode":"1110","code":"111002","name":"\uc2a4\ud3ec\uce20"},"111003":{"kcode":"22635","tcode":"24","mcode":"11","bcode":"1110","code":"111003","name":"\uc0dd\ud65c\uccb4\uc721"},"111004":{"kcode":"22636","tcode":"24","mcode":"11","bcode":"1110","code":"111004","name":"\uc218\uc601\uac15\uc0ac"},"111006":{"kcode":"22638","tcode":"24","mcode":"11","bcode":"1110","code":"111006","name":"\ud5ec\uc2a4"},"111007":{"kcode":"22639","tcode":"24","mcode":"11","bcode":"1110","code":"111007","name":"\uace8\ud504\u00b7\uace8\ud504\uac15\uc0ac"},"111008":{"kcode":"22640","tcode":"24","mcode":"11","bcode":"1110","code":"111008","name":"\uc694\uac00\uac15\uc0ac"},"111009":{"kcode":"22641","tcode":"24","mcode":"11","bcode":"1110","code":"111009","name":"\uc5d0\uc5b4\ub85c\ube45"},"111010":{"kcode":"22642","tcode":"24","mcode":"11","bcode":"1110","code":"111010","name":"\uce90\ub514"},"111012":{"kcode":"22644","tcode":"24","mcode":"11","bcode":"1110","code":"111012","name":"\ud14c\ub9c8\ud30c\ud06c\uc9c1\uc6d0"},"111013":{"kcode":"22645","tcode":"24","mcode":"11","bcode":"1110","code":"111013","name":"\ub304\uc2a4\uac15\uc0ac"},"111014":{"kcode":"22646","tcode":"24","mcode":"11","bcode":"1110","code":"111014","name":"\ubb34\uc220\uc0ac\ubc94"},"111016":{"kcode":"22648","tcode":"24","mcode":"11","bcode":"1110","code":"111016","name":"\ub2f9\uad6c"},"111017":{"kcode":"22649","tcode":"24","mcode":"11","bcode":"1110","code":"111017","name":"\uc2a4\ud0a4\uac15\uc0ac"},"111018":{"kcode":"22650","tcode":"24","mcode":"11","bcode":"1110","code":"111018","name":"\ub808\ud06c\ub9ac\uc5d0\uc774\uc158"},"111019":{"kcode":"26608","tcode":"24","mcode":"11","bcode":"1110","code":"111019","name":"\ub808\ud3ec\uce20"},"111021":{"kcode":"31549","tcode":"24","mcode":"11","bcode":"1110","code":"111021","name":"\ub180\uc774\uacf5\uc6d0"},"111023":{"kcode":"31551","tcode":"24","mcode":"11","bcode":"1110","code":"111023","name":"\uc2b9\ub9c8"},"111024":{"kcode":"31552","tcode":"24","mcode":"11","bcode":"1110","code":"111024","name":"\uc624\ub77d"}}},"1111":{"kcode":"22544","tcode":"9","mcode":"9","bcode":"11","code":"1111","name":"\ubbf8\uc6a9\u00b7\ud53c\ubd80\uad00\ub9ac\u00b7\uc560\uacac","keyword":{"111101":{"kcode":"22651","tcode":"24","mcode":"11","bcode":"1111","code":"111101","name":"\ubbf8\uc6a9\u00b7\ubdf0\ud2f0"},"111102":{"kcode":"22652","tcode":"24","mcode":"11","bcode":"1111","code":"111102","name":"\uba54\uc774\ud06c\uc5c5"},"111103":{"kcode":"22653","tcode":"24","mcode":"11","bcode":"1111","code":"111103","name":"\ubdf0\ud2f0\ub9e4\ub2c8\uc800"},"111104":{"kcode":"22654","tcode":"24","mcode":"11","bcode":"1111","code":"111104","name":"\ud5e4\uc5b4\ub514\uc790\uc774\ub108"},"111105":{"kcode":"22655","tcode":"24","mcode":"11","bcode":"1111","code":"111105","name":"\ud53c\ubd80\uad00\ub9ac\u00b7\uc5d0\uc2a4\ud14c\ud2f1"},"111106":{"kcode":"22656","tcode":"24","mcode":"11","bcode":"1111","code":"111106","name":"\ub2e4\uc774\uc5b4\ud2b8\u00b7\ube44\ub9cc\uad00\ub9ac"},"111107":{"kcode":"22657","tcode":"24","mcode":"11","bcode":"1111","code":"111107","name":"\ub124\uc77c\uc544\ud2b8"},"111108":{"kcode":"22658","tcode":"24","mcode":"11","bcode":"1111","code":"111108","name":"\uc560\uacac\ubbf8\uc6a9"},"111109":{"kcode":"22659","tcode":"24","mcode":"11","bcode":"1111","code":"111109","name":"\uc560\uacac\uad00\ub9ac\u00b7\ud6c8\ub828"},"111110":{"kcode":"22660","tcode":"24","mcode":"11","bcode":"1111","code":"111110","name":"\ub9c8\uc0ac\uc9c0"},"111111":{"kcode":"22661","tcode":"24","mcode":"11","bcode":"1111","code":"111111","name":"\ubd84\uc7a5\u00b7\ud2b9\uc218\ubd84\uc7a5"},"111112":{"kcode":"22662","tcode":"24","mcode":"11","bcode":"1111","code":"111112","name":"\ub450\ud53c\u00b7\ud0c8\ubaa8"},"111113":{"kcode":"22663","tcode":"24","mcode":"11","bcode":"1111","code":"111113","name":"\uc0f4\ud478\ub3c4\uc6b0\ubbf8"},"111114":{"kcode":"22664","tcode":"24","mcode":"11","bcode":"1111","code":"111114","name":"\ubc1c\uad00\ub9ac"},"111115":{"kcode":"22665","tcode":"24","mcode":"11","bcode":"1111","code":"111115","name":"\ubbf8\uc6a9\uae30\ud0c0"}}},"1112":{"kcode":"22545","tcode":"9","mcode":"9","bcode":"11","code":"1112","name":"\uc694\ub9ac\u00b7\uc81c\ube75\uc0ac\u00b7\uc601\uc591\uc0ac","keyword":{"111201":{"kcode":"22666","tcode":"24","mcode":"11","bcode":"1112","code":"111201","name":"\uc870\ub9ac\uc0ac"},"111202":{"kcode":"22667","tcode":"24","mcode":"11","bcode":"1112","code":"111202","name":"\uc694\ub9ac\uc0ac"},"111203":{"kcode":"22668","tcode":"24","mcode":"11","bcode":"1112","code":"111203","name":"\ubca0\uc774\ucee4\ub9ac"},"111204":{"kcode":"22669","tcode":"24","mcode":"11","bcode":"1112","code":"111204","name":"\uc81c\uacfc\u00b7\uc81c\ube75\uc0ac"},"111205":{"kcode":"22670","tcode":"24","mcode":"11","bcode":"1112","code":"111205","name":"\uc601\uc591\uc0ac"},"111206":{"kcode":"22671","tcode":"24","mcode":"11","bcode":"1112","code":"111206","name":"\ud55c\uc2dd"},"111207":{"kcode":"22672","tcode":"24","mcode":"11","bcode":"1112","code":"111207","name":"\uc591\uc2dd"},"111208":{"kcode":"22673","tcode":"24","mcode":"11","bcode":"1112","code":"111208","name":"\uc77c\uc2dd"},"111209":{"kcode":"22674","tcode":"24","mcode":"11","bcode":"1112","code":"111209","name":"\uc911\uc2dd"},"111210":{"kcode":"22675","tcode":"24","mcode":"11","bcode":"1112","code":"111210","name":"\uc8fc\ubc29\uc7a5"},"111211":{"kcode":"22676","tcode":"24","mcode":"11","bcode":"1112","code":"111211","name":"chef"},"111212":{"kcode":"22677","tcode":"24","mcode":"11","bcode":"1112","code":"111212","name":"\uc8fc\ubc29\ubcf4\uc870"},"111213":{"kcode":"22678","tcode":"24","mcode":"11","bcode":"1112","code":"111213","name":"\ub2e8\uccb4\uae09\uc2dd"},"111214":{"kcode":"22679","tcode":"24","mcode":"11","bcode":"1112","code":"111214","name":"\uc2dd\ud488\uc5c5\uccb4"},"111215":{"kcode":"22680","tcode":"24","mcode":"11","bcode":"1112","code":"111215","name":"\ud30c\ud2f0\uc250\ub974"},"111216":{"kcode":"22681","tcode":"24","mcode":"11","bcode":"1112","code":"111216","name":"\ucc2c\ubaa8"},"111217":{"kcode":"22682","tcode":"24","mcode":"11","bcode":"1112","code":"111217","name":"\ud478\ub4dc\uc2a4\ud0c0\uc77c\ub9ac\uc2a4\ud2b8"}}},"1113":{"kcode":"22546","tcode":"9","mcode":"9","bcode":"11","code":"1113","name":"\uac00\uc0ac\u00b7\uccad\uc18c\u00b7\uc721\uc544","keyword":{"111301":{"kcode":"22623","tcode":"24","mcode":"11","bcode":"1113","code":"111301","name":"\uac00\uc0ac\ub3c4\uc6b0\ubbf8"},"111302":{"kcode":"22624","tcode":"24","mcode":"11","bcode":"1113","code":"111302","name":"\ubca0\uc774\ube44\uc2dc\ud130"},"111303":{"kcode":"22625","tcode":"24","mcode":"11","bcode":"1113","code":"111303","name":"\uccad\uc18c\u00b7\ubbf8\ud654"},"111304":{"kcode":"22626","tcode":"24","mcode":"11","bcode":"1113","code":"111304","name":"\uc815\uc218\uae30\u00b7\ube44\ub370"},"111305":{"kcode":"22627","tcode":"24","mcode":"11","bcode":"1113","code":"111305","name":"\uc138\ud0c1\u00b7\uc637\uc218\uc120"},"111306":{"kcode":"22628","tcode":"24","mcode":"11","bcode":"1113","code":"111306","name":"\uc0b0\ubaa8\ub3c4\uc6b0\ubbf8"},"111307":{"kcode":"22629","tcode":"24","mcode":"11","bcode":"1113","code":"111307","name":"\uc721\uc544\ub3c4\uc6b0\ubbf8"},"111308":{"kcode":"22630","tcode":"24","mcode":"11","bcode":"1113","code":"111308","name":"\uc785\uc8fc\ub3c4\uc6b0\ubbf8"},"111309":{"kcode":"22631","tcode":"24","mcode":"11","bcode":"1113","code":"111309","name":"\ud574\ucda9\u00b7\ubc29\uc5ed\u00b7\uc18c\ub3c5"},"111310":{"kcode":"22632","tcode":"24","mcode":"11","bcode":"1113","code":"111310","name":"\uc2e4\ubc84\uc2dc\ud130"}}}}},"13":{"bcode":"13","name":"\uc758\ub8cc","code":{"1301":{"kcode":"22547","tcode":"9","mcode":"9","bcode":"13","code":"1301","name":"\uc758\uc0ac\u00b7\uce58\uacfc\u00b7\ud55c\uc758\uc0ac","keyword":{"130101":{"kcode":"22556","tcode":"24","mcode":"13","bcode":"1301","code":"130101","name":"\uc758\uc0ac"},"130102":{"kcode":"22557","tcode":"24","mcode":"13","bcode":"1301","code":"130102","name":"\uce58\uacfc\uc758\uc0ac"},"130103":{"kcode":"22558","tcode":"24","mcode":"13","bcode":"1301","code":"130103","name":"\ud55c\uc758\uc0ac"},"130104":{"kcode":"22559","tcode":"24","mcode":"13","bcode":"1301","code":"130104","name":"\ub2f9\uc9c1\uc758\u00b7\ub300\uc9c4\uc758"},"130105":{"kcode":"22560","tcode":"24","mcode":"13","bcode":"1301","code":"130105","name":"\uc804\ubb38\uc758\u00b7\uc804\uacf5\uc758"}}},"1302":{"kcode":"22548","tcode":"9","mcode":"9","bcode":"13","code":"1302","name":"\uc218\uc758\uc0ac","keyword":{"130201":{"kcode":"22561","tcode":"24","mcode":"13","bcode":"1302","code":"130201","name":"\uc218\uc758\uc0ac"},"130202":{"kcode":"22562","tcode":"24","mcode":"13","bcode":"1302","code":"130202","name":"\ub3d9\ubb3c\uac04\ud638\ud14c\ud06c\ub2c8\uc158"},"130203":{"kcode":"22563","tcode":"24","mcode":"13","bcode":"1302","code":"130203","name":"\uc218\uc758\uac04\ud638\uc0ac"},"130204":{"kcode":"22564","tcode":"24","mcode":"13","bcode":"1302","code":"130204","name":"\uac04\ud638\ubcf4\uc870\uc0ac"}}},"1303":{"kcode":"22549","tcode":"9","mcode":"9","bcode":"13","code":"1303","name":"\uc57d\uc0ac","keyword":{"130301":{"kcode":"22565","tcode":"24","mcode":"13","bcode":"1303","code":"130301","name":"\uc57d\uc0ac"},"130302":{"kcode":"22566","tcode":"24","mcode":"13","bcode":"1303","code":"130302","name":"\ud55c\uc57d\uc0ac"},"130303":{"kcode":"22567","tcode":"24","mcode":"13","bcode":"1303","code":"130303","name":"\uc57d\ubb34\ubcf4\uc870"},"130304":{"kcode":"22568","tcode":"24","mcode":"13","bcode":"1303","code":"130304","name":"\uc81c\uc57d\uc5f0\uad6c\u00b7\uac1c\ubc1c"},"130305":{"kcode":"22569","tcode":"24","mcode":"13","bcode":"1303","code":"130305","name":"\uac74\uac15\ubcf4\uc870\uc2dd\ud488"},"130306":{"kcode":"26662","tcode":"24","mcode":"13","bcode":"1303","code":"130306","name":"CRA"}}},"1304":{"kcode":"22550","tcode":"9","mcode":"9","bcode":"13","code":"1304","name":"\uac04\ud638\uc0ac","keyword":{"130401":{"kcode":"22570","tcode":"24","mcode":"13","bcode":"1304","code":"130401","name":"\uac04\ud638\uc0ac"},"130402":{"kcode":"22571","tcode":"24","mcode":"13","bcode":"1304","code":"130402","name":"\uc218\uac04\ud638\uc0ac"},"130403":{"kcode":"22572","tcode":"24","mcode":"13","bcode":"1304","code":"130403","name":"\ucc45\uc784\uac04\ud638\uc0ac"},"130404":{"kcode":"22573","tcode":"24","mcode":"13","bcode":"1304","code":"130404","name":"\uc678\ub798\uac04\ud638\uc0ac"},"130405":{"kcode":"22574","tcode":"24","mcode":"13","bcode":"1304","code":"130405","name":"\ubcd1\ub3d9\uac04\ud638\uc0ac"},"130406":{"kcode":"22575","tcode":"24","mcode":"13","bcode":"1304","code":"130406","name":"\uc751\uae09\uc2e4\uac04\ud638\uc0ac"},"130407":{"kcode":"22576","tcode":"24","mcode":"13","bcode":"1304","code":"130407","name":"\uc218\uc220\uc2e4\uac04\ud638\uc0ac"},"130408":{"kcode":"22577","tcode":"24","mcode":"13","bcode":"1304","code":"130408","name":"\ub9c8\ucde8\uac04\ud638\uc0ac"},"130409":{"kcode":"22578","tcode":"24","mcode":"13","bcode":"1304","code":"130409","name":"\uc804\ubb38\uac04\ud638\uc0ac"},"130410":{"kcode":"22579","tcode":"24","mcode":"13","bcode":"1304","code":"130410","name":"\uac80\uc9c4\uc13c\ud130\uac04\ud638\uc0ac"},"130411":{"kcode":"22580","tcode":"24","mcode":"13","bcode":"1304","code":"130411","name":"\uc815\uc2e0\uacfc\uac04\ud638\uc0ac"},"130412":{"kcode":"22581","tcode":"24","mcode":"13","bcode":"1304","code":"130412","name":"NCLEX-RN"},"130413":{"kcode":"22582","tcode":"24","mcode":"13","bcode":"1304","code":"130413","name":"\ud658\uc790\ucc98\uce58\u00b7\uc751\ub300"},"130414":{"kcode":"22583","tcode":"24","mcode":"13","bcode":"1304","code":"130414","name":"\uc870\uc0b0\uc0ac"},"130415":{"kcode":"22584","tcode":"24","mcode":"13","bcode":"1304","code":"130415","name":"N-Keep"},"130416":{"kcode":"34369","tcode":"24","mcode":"13","bcode":"1304","code":"130416","name":"D-Keep"},"130417":{"kcode":"34370","tcode":"24","mcode":"13","bcode":"1304","code":"130417","name":"E-Keep"},"130418":{"kcode":"34371","tcode":"24","mcode":"13","bcode":"1304","code":"130418","name":"\uc5f0\uad6c\uac04\ud638\uc0ac(CRC)"},"130419":{"kcode":"34372","tcode":"24","mcode":"13","bcode":"1304","code":"130419","name":"\uc778\uacf5\uc2e0\uc7a5\uc2e4\uac04\ud638\uc0ac"},"130420":{"kcode":"34373","tcode":"24","mcode":"13","bcode":"1304","code":"130420","name":"\uc0b0\uc5c5\uac04\ud638\uc0ac"},"130421":{"kcode":"34374","tcode":"24","mcode":"13","bcode":"1304","code":"130421","name":"PA"},"130422":{"kcode":"34375","tcode":"24","mcode":"13","bcode":"1304","code":"130422","name":"SA"}}},"1305":{"kcode":"22551","tcode":"9","mcode":"9","bcode":"13","code":"1305","name":"\uac04\ud638\uc870\ubb34\uc0ac","keyword":{"130501":{"kcode":"22585","tcode":"24","mcode":"13","bcode":"1305","code":"130501","name":"\uac04\ud638\uc870\ubb34\uc0ac"},"130502":{"kcode":"22586","tcode":"24","mcode":"13","bcode":"1305","code":"130502","name":"\uc218\uc220\uc2e4\ubcf4\uc870"},"130503":{"kcode":"22587","tcode":"24","mcode":"13","bcode":"1305","code":"130503","name":"\uc0b0\ubd80\uc778\uacfc"},"130504":{"kcode":"22588","tcode":"24","mcode":"13","bcode":"1305","code":"130504","name":"\uce58\uacfc\uc870\ubb34\uc0ac"},"130505":{"kcode":"22589","tcode":"24","mcode":"13","bcode":"1305","code":"130505","name":"\ud55c\uc758\uc6d0"}}},"1306":{"kcode":"22552","tcode":"9","mcode":"9","bcode":"13","code":"1306","name":"\uc758\ub8cc\uae30\uc0ac","keyword":{"130601":{"kcode":"22590","tcode":"24","mcode":"13","bcode":"1306","code":"130601","name":"\uc784\uc0c1\ubcd1\ub9ac\uc0ac"},"130602":{"kcode":"22591","tcode":"24","mcode":"13","bcode":"1306","code":"130602","name":"\ubc29\uc0ac\uc120\uc0ac"},"130603":{"kcode":"22592","tcode":"24","mcode":"13","bcode":"1306","code":"130603","name":"\uce58\uae30\uacf5\uc0ac"},"130604":{"kcode":"22593","tcode":"24","mcode":"13","bcode":"1306","code":"130604","name":"\uce58\uacfc\uc704\uc0dd\uc0ac"},"130605":{"kcode":"22594","tcode":"24","mcode":"13","bcode":"1306","code":"130605","name":"\ubb3c\ub9ac\uce58\ub8cc\uc0ac"},"130606":{"kcode":"22595","tcode":"24","mcode":"13","bcode":"1306","code":"130606","name":"\uc548\uacbd\uc0ac"},"130607":{"kcode":"22596","tcode":"24","mcode":"13","bcode":"1306","code":"130607","name":"\uc601\uc591\uc0ac"},"130608":{"kcode":"22597","tcode":"24","mcode":"13","bcode":"1306","code":"130608","name":"\uc74c\uc545\u00b7\ubbf8\uc220\u00b7\ub180\uc774\uce58\ub8cc"},"130610":{"kcode":"22599","tcode":"24","mcode":"13","bcode":"1306","code":"130610","name":"\uc791\uc5c5\uce58\ub8cc\uc0ac"},"130611":{"kcode":"22600","tcode":"24","mcode":"13","bcode":"1306","code":"130611","name":"\uc751\uae09\uad6c\uc870\uc0ac"},"130612":{"kcode":"22601","tcode":"24","mcode":"13","bcode":"1306","code":"130612","name":"\uc704\uc0dd\uc0ac"},"130613":{"kcode":"22602","tcode":"24","mcode":"13","bcode":"1306","code":"130613","name":"\uc6b4\ub3d9\ucc98\ubc29\uc0ac"},"130614":{"kcode":"22603","tcode":"24","mcode":"13","bcode":"1306","code":"130614","name":"\uc0b0\uc5c5\uc704\uc0dd\uad00\ub9ac\uae30\uc0ac"},"130615":{"kcode":"22604","tcode":"24","mcode":"13","bcode":"1306","code":"130615","name":"\uc758\uacf5\uae30\uc0ac"},"130616":{"kcode":"22605","tcode":"24","mcode":"13","bcode":"1306","code":"130616","name":"\uc758\uc9c0\ubcf4\uc870\uae30\uae30\uc0ac"},"130617":{"kcode":"22606","tcode":"24","mcode":"13","bcode":"1306","code":"130617","name":"\uc5b8\uc5b4\uce58\ub8cc\uc0ac"},"130618":{"kcode":"22615","tcode":"24","mcode":"13","bcode":"1306","code":"130618","name":"\uc758\ubb34\uae30\ub85d\uc0ac"},"130619":{"kcode":"26610","tcode":"24","mcode":"13","bcode":"1306","code":"130619","name":"\uac80\uc548\uc0ac"},"130620":{"kcode":"9585","tcode":"24","mcode":"13","bcode":"1306","code":"130620","name":"\uc2ec\ub9ac\uce58\ub8cc\uc0ac"}}},"1307":{"kcode":"22553","tcode":"9","mcode":"9","bcode":"13","code":"1307","name":"\uc0ac\ubb34\u00b7\uc6d0\ubb34\u00b7\ucf54\ub514","keyword":{"130701":{"kcode":"22607","tcode":"24","mcode":"13","bcode":"1307","code":"130701","name":"\uc6d0\ubb34\ud589\uc815"},"130702":{"kcode":"22608","tcode":"24","mcode":"13","bcode":"1307","code":"130702","name":"\uc57c\uac04\ub2f9\uc9c1\uc790"},"130703":{"kcode":"22609","tcode":"24","mcode":"13","bcode":"1307","code":"130703","name":"\ubcd1\uc6d0\ucf54\ub514\ub124\uc774\ud130"},"130704":{"kcode":"22610","tcode":"24","mcode":"13","bcode":"1307","code":"130704","name":"\uad6c\ub9e4\u00b7\uc870\ub2ec"},"130705":{"kcode":"22611","tcode":"24","mcode":"13","bcode":"1307","code":"130705","name":"\ubcd1\uc6d0\uc2dc\uc124\uad00\ub9ac"},"130706":{"kcode":"22612","tcode":"24","mcode":"13","bcode":"1307","code":"130706","name":"\uc811\uc218\u00b7\uc218\ub0a9\u00b7\uc608\uc57d"},"130707":{"kcode":"22613","tcode":"24","mcode":"13","bcode":"1307","code":"130707","name":"\uc804\ud654\uad50\ud658\u00b7\uc548\ub0b4"}}},"1308":{"kcode":"22554","tcode":"9","mcode":"9","bcode":"13","code":"1308","name":"\ubcf4\ud5d8\uc2ec\uc0ac\uacfc","keyword":{"130801":{"kcode":"22614","tcode":"24","mcode":"13","bcode":"1308","code":"130801","name":"\ubcf4\ud5d8\uc2ec\uc0ac\u00b7\uccad\uad6c"}}},"1309":{"kcode":"22555","tcode":"9","mcode":"9","bcode":"13","code":"1309","name":"\uc758\ub8cc\uae30\ud0c0\uc9c1","keyword":{"130901":{"kcode":"22616","tcode":"24","mcode":"13","bcode":"1309","code":"130901","name":"\uad6c\uae09\ucc28\uae30\uc0ac"},"130902":{"kcode":"22617","tcode":"24","mcode":"13","bcode":"1309","code":"130902","name":"\uccad\uc18c\u00b7\ubbf8\ud654"},"130903":{"kcode":"22618","tcode":"24","mcode":"13","bcode":"1309","code":"130903","name":"\uacbd\ube44\u00b7\ubcf4\uc548"},"130904":{"kcode":"22619","tcode":"24","mcode":"13","bcode":"1309","code":"130904","name":"\uc870\ub9ac\uc0ac"},"130905":{"kcode":"22620","tcode":"24","mcode":"13","bcode":"1309","code":"130905","name":"\uac04\ubcd1\uc778"},"130906":{"kcode":"22621","tcode":"24","mcode":"13","bcode":"1309","code":"130906","name":"\uc0ac\ud68c\ubcf5\uc9c0\uc0ac"},"130907":{"kcode":"22622","tcode":"24","mcode":"13","bcode":"1309","code":"130907","name":"\uc758\ub8cc\uae30\ud0c0\uc9c1"}}}}}}</script>

						<script type="text/template" id="data_industry">
    {"1":{"bcode":"1","name":"\uc11c\ube44\uc2a4\uc5c5","code":{"108":{"kcode":"7906","tcode":"8","mcode":"8","bcode":"1","code":"108","name":"\ud638\ud154\u00b7\uc5ec\ud589\u00b7\ud56d\uacf5","keyword":{"10803":{"kcode":"8087","tcode":"23","mcode":"1","bcode":"108","code":"10803","name":"\ud638\ud154"},"10804":{"kcode":"8088","tcode":"23","mcode":"1","bcode":"108","code":"10804","name":"\ucf58\ub3c4"},"10805":{"kcode":"8089","tcode":"23","mcode":"1","bcode":"108","code":"10805","name":"\uce74\uc9c0\ub178"},"10806":{"kcode":"8090","tcode":"23","mcode":"1","bcode":"108","code":"10806","name":"\uc5ec\ud589\uc0ac"},"10807":{"kcode":"8091","tcode":"23","mcode":"1","bcode":"108","code":"10807","name":"\ud56d\uacf5\uc0ac"},"10813":{"kcode":"8092","tcode":"23","mcode":"1","bcode":"108","code":"10813","name":"\uad00\uad11"},"10814":{"kcode":"8093","tcode":"23","mcode":"1","bcode":"108","code":"10814","name":"\uad00\uad11\ud1b5\uc5ed"},"10818":{"kcode":"8094","tcode":"23","mcode":"1","bcode":"108","code":"10818","name":"\uba74\uc138\uc810"},"10819":{"kcode":"26611","tcode":"23","mcode":"1","bcode":"108","code":"10819","name":"\uc720\ud559\u00b7\uc774\ubbfc"}}},"109":{"kcode":"7907","tcode":"8","mcode":"8","bcode":"1","code":"109","name":"\uc678\uc2dd\uc5c5\u00b7\uc2dd\uc74c\ub8cc","keyword":{"10901":{"kcode":"8096","tcode":"23","mcode":"1","bcode":"109","code":"10901","name":"\uc74c\uc2dd\ub8cc"},"10902":{"kcode":"8097","tcode":"23","mcode":"1","bcode":"109","code":"10902","name":"\uc2dd\ud488\u00b7\ud478\ub4dc"},"10906":{"kcode":"8098","tcode":"23","mcode":"1","bcode":"109","code":"10906","name":"\ud55c\uc2dd\ub2f9"},"10907":{"kcode":"8099","tcode":"23","mcode":"1","bcode":"109","code":"10907","name":"\uc77c\uc2dd\ub2f9"},"10908":{"kcode":"8100","tcode":"23","mcode":"1","bcode":"109","code":"10908","name":"\uc591\uc2dd\ub2f9"},"10909":{"kcode":"8101","tcode":"23","mcode":"1","bcode":"109","code":"10909","name":"\uc911\uc2dd\ub2f9"},"10910":{"kcode":"8102","tcode":"23","mcode":"1","bcode":"109","code":"10910","name":"\uc81c\uacfc\uc81c\ube75\uc810"},"10911":{"kcode":"8103","tcode":"23","mcode":"1","bcode":"109","code":"10911","name":"\ucd9c\uc7a5\uc694\ub9ac"},"10912":{"kcode":"8104","tcode":"23","mcode":"1","bcode":"109","code":"10912","name":"\ucf00\uc774\ud130\ub9c1"},"10917":{"kcode":"8105","tcode":"23","mcode":"1","bcode":"109","code":"10917","name":"\ud504\ub79c\ucc28\uc774\uc988"},"10918":{"kcode":"8106","tcode":"23","mcode":"1","bcode":"109","code":"10918","name":"\ud69f\uc9d1\u00b7\ucd08\ubc25\u00b7\uc2a4\uc2dc"},"10919":{"kcode":"8107","tcode":"23","mcode":"1","bcode":"109","code":"10919","name":"\ubdd4\ud398"},"10920":{"kcode":"8108","tcode":"23","mcode":"1","bcode":"109","code":"10920","name":"\ud4e8\uc804\ud478\ub4dc"},"10926":{"kcode":"8112","tcode":"23","mcode":"1","bcode":"109","code":"10926","name":"\uad6c\ub0b4\uc2dd\ub2f9"},"10927":{"kcode":"8113","tcode":"23","mcode":"1","bcode":"109","code":"10927","name":"\ud53c\uc790\u00b7\uc2a4\ud30c\uac8c\ud2f0"},"10930":{"kcode":"8115","tcode":"23","mcode":"1","bcode":"109","code":"10930","name":"\ud504\ub791\uc2a4\uc694\ub9ac"},"10931":{"kcode":"8116","tcode":"23","mcode":"1","bcode":"109","code":"10931","name":"\uc774\ud0dc\ub9ac\uc694\ub9ac"},"10932":{"kcode":"22046","tcode":"23","mcode":"1","bcode":"109","code":"10932","name":"\uce58\ud0a8\u00b7\ud1b5\ub2ed"},"10933":{"kcode":"22047","tcode":"23","mcode":"1","bcode":"109","code":"10933","name":"\ud328\ubc00\ub9ac\ub808\uc2a4\ud1a0\ub791"},"10934":{"kcode":"22048","tcode":"23","mcode":"1","bcode":"109","code":"10934","name":"\uc0d0\ub7ec\ub4dc\ubc14"},"10935":{"kcode":"22049","tcode":"23","mcode":"1","bcode":"109","code":"10935","name":"\ud14c\uc774\ud06c\uc544\uc6c3"},"10936":{"kcode":"22050","tcode":"23","mcode":"1","bcode":"109","code":"10936","name":"\ub3c8\uae4c\uc2a4\u00b7\uc6b0\ub3d9"},"10937":{"kcode":"22051","tcode":"23","mcode":"1","bcode":"109","code":"10937","name":"\ud328\uc2a4\ud2b8\ud478\ub4dc"}}},"111":{"kcode":"7913","tcode":"8","mcode":"8","bcode":"1","code":"111","name":"\uc2dc\uc124\uad00\ub9ac\u00b7\uacbd\ube44\u00b7\uc6a9\uc5ed","keyword":{"11103":{"kcode":"8175","tcode":"23","mcode":"1","bcode":"111","code":"11103","name":"\uc6a9\uc5ed\uc5c5\uccb4"},"11106":{"kcode":"8178","tcode":"23","mcode":"1","bcode":"111","code":"11106","name":"\ubcf4\uc548\u00b7\uacbd\ube44\uc5c5\uccb4"},"11111":{"kcode":"8180","tcode":"23","mcode":"1","bcode":"111","code":"11111","name":"\uccad\uc18c\u00b7\ubc29\uc5ed"},"11113":{"kcode":"8181","tcode":"23","mcode":"1","bcode":"111","code":"11113","name":"\uc8fc\ucc28\uad00\uc81c"},"11114":{"kcode":"8182","tcode":"23","mcode":"1","bcode":"111","code":"11114","name":"\uae30\uacc4\u00b7\uc7a5\ube44\uad00\ub9ac"},"11115":{"kcode":"8183","tcode":"23","mcode":"1","bcode":"111","code":"11115","name":"\uc804\uae30\u00b7\uac00\uc2a4\u00b7\uc218\ub3c4"},"11116":{"kcode":"8184","tcode":"23","mcode":"1","bcode":"111","code":"11116","name":"\uc18c\ubc29\u00b7\ubc29\uc7ac"},"11117":{"kcode":"8185","tcode":"23","mcode":"1","bcode":"111","code":"11117","name":"\uc2dc\uc124\uad00\ub9ac"},"11118":{"kcode":"8186","tcode":"23","mcode":"1","bcode":"111","code":"11118","name":"\uc544\uc6c3\uc18c\uc2f1"},"11119":{"kcode":"26612","tcode":"23","mcode":"1","bcode":"111","code":"11119","name":"\uc11c\uce58\ud38c"},"11120":{"kcode":"26613","tcode":"23","mcode":"1","bcode":"111","code":"11120","name":"\ud5e4\ub4dc\ud5cc\ud305"},"11121":{"kcode":"26614","tcode":"23","mcode":"1","bcode":"111","code":"11121","name":"\ud30c\uacac\ub300\ud589"}}},"115":{"kcode":"7908","tcode":"8","mcode":"8","bcode":"1","code":"115","name":"\ub808\uc800\u00b7\uc2a4\ud3ec\uce20\u00b7\uc5ec\uac00","keyword":{"11501":{"kcode":"8117","tcode":"23","mcode":"1","bcode":"115","code":"11501","name":"\uc2a4\ud3ec\uce20"},"11502":{"kcode":"8118","tcode":"23","mcode":"1","bcode":"115","code":"11502","name":"\ub808\uc800"},"11503":{"kcode":"8119","tcode":"23","mcode":"1","bcode":"115","code":"11503","name":"\ub180\uc774\uacf5\uc6d0"},"11504":{"kcode":"8120","tcode":"23","mcode":"1","bcode":"115","code":"11504","name":"\uc11c\ubc14\uc774\ubc8c\uac8c\uc784"},"11505":{"kcode":"8121","tcode":"23","mcode":"1","bcode":"115","code":"11505","name":"\ub798\ud504\ud305"},"11506":{"kcode":"8122","tcode":"23","mcode":"1","bcode":"115","code":"11506","name":"\uc2a4\ud3ec\uce20\uc13c\ud130"},"11507":{"kcode":"8123","tcode":"23","mcode":"1","bcode":"115","code":"11507","name":"\uace8\ud504\uc7a5CC"},"11508":{"kcode":"8124","tcode":"23","mcode":"1","bcode":"115","code":"11508","name":"\uc218\uc601\uc7a5"},"11509":{"kcode":"8125","tcode":"23","mcode":"1","bcode":"115","code":"11509","name":"\ub9ac\uc870\ud2b8"},"11510":{"kcode":"8126","tcode":"23","mcode":"1","bcode":"115","code":"11510","name":"\ud39c\uc158"},"11511":{"kcode":"8127","tcode":"23","mcode":"1","bcode":"115","code":"11511","name":"\ubbfc\ubc15"},"11512":{"kcode":"8128","tcode":"23","mcode":"1","bcode":"115","code":"11512","name":"\ubc29\uac08\ub85c"},"11513":{"kcode":"8129","tcode":"23","mcode":"1","bcode":"115","code":"11513","name":"\ud718\ud2b8\ub2c8\uc2a4\uc13c\ud130"},"11514":{"kcode":"8130","tcode":"23","mcode":"1","bcode":"115","code":"11514","name":"\ubcfc\ub9c1\uc7a5"},"11515":{"kcode":"8131","tcode":"23","mcode":"1","bcode":"115","code":"11515","name":"\uc624\ub77d\u00b7PC\ubc29"},"11520":{"kcode":"8136","tcode":"23","mcode":"1","bcode":"115","code":"11520","name":"\uc694\uac00\ud559\uc6d0"},"11521":{"kcode":"8137","tcode":"23","mcode":"1","bcode":"115","code":"11521","name":"\ub304\uc2a4\ud559\uc6d0"},"11522":{"kcode":"22056","tcode":"23","mcode":"1","bcode":"115","code":"11522","name":"E-\uc2a4\ud3ec\uce20"},"11523":{"kcode":"22057","tcode":"23","mcode":"1","bcode":"115","code":"11523","name":"\ud14c\ub9c8\ud30c\ud06c"},"11524":{"kcode":"22058","tcode":"23","mcode":"1","bcode":"115","code":"11524","name":"\uc2a4\ud0a4\uc7a5"},"11525":{"kcode":"22059","tcode":"23","mcode":"1","bcode":"115","code":"11525","name":"\ub2f9\uad6c\uc7a5"},"11526":{"kcode":"22060","tcode":"23","mcode":"1","bcode":"115","code":"11526","name":"\ubb34\uc220\u00b7\uaca9\ud22c"}}},"118":{"kcode":"7912","tcode":"8","mcode":"8","bcode":"1","code":"118","name":"AS\u00b7\uce74\uc13c\ud130\u00b7\uc8fc\uc720","keyword":{"11801":{"kcode":"8170","tcode":"23","mcode":"1","bcode":"118","code":"11801","name":"\uacbd\uc815\ube44"},"11802":{"kcode":"8171","tcode":"23","mcode":"1","bcode":"118","code":"11802","name":"\uc911\uc815\ube44"},"11803":{"kcode":"8172","tcode":"23","mcode":"1","bcode":"118","code":"11803","name":"\uac80\uc0ac\uc18c"},"11804":{"kcode":"8173","tcode":"23","mcode":"1","bcode":"118","code":"11804","name":"\uce74\uc13c\ud130"},"11805":{"kcode":"8174","tcode":"23","mcode":"1","bcode":"118","code":"11805","name":"A\u00b7S\uc13c\ud130"},"11807":{"kcode":"22061","tcode":"23","mcode":"1","bcode":"118","code":"11807","name":"\uc8fc\uc720\u00b7LPG"}}},"119":{"kcode":"7909","tcode":"8","mcode":"8","bcode":"1","code":"119","name":"\ub80c\ud0c8\u00b7\uc784\ub300","keyword":{"11901":{"kcode":"8138","tcode":"23","mcode":"1","bcode":"119","code":"11901","name":"\ub80c\ud0c8\uc0f5"},"11902":{"kcode":"8139","tcode":"23","mcode":"1","bcode":"119","code":"11902","name":"\uc784\ub300"},"11903":{"kcode":"8140","tcode":"23","mcode":"1","bcode":"119","code":"11903","name":"\ub300\uc5ec\uc810(\ucc45,DVD)"},"11904":{"kcode":"8141","tcode":"23","mcode":"1","bcode":"119","code":"11904","name":"\ub80c\ud130\uce74"},"11905":{"kcode":"8142","tcode":"23","mcode":"1","bcode":"119","code":"11905","name":"\uc624\ud1a0\ub9ac\uc2a4"}}},"120":{"kcode":"7910","tcode":"8","mcode":"8","bcode":"1","code":"120","name":"\uc6e8\ub529\u00b7\uc7a5\ub840\u00b7\uc774\ubca4\ud2b8","keyword":{"12001":{"kcode":"8143","tcode":"23","mcode":"1","bcode":"120","code":"12001","name":"\uc608\uc2dd\uc7a5\u00b7\uc6e8\ub529\ud640"},"12002":{"kcode":"8144","tcode":"23","mcode":"1","bcode":"120","code":"12002","name":"\uacb0\ud63c\uc815\ubcf4\ud68c\uc0ac"},"12003":{"kcode":"8145","tcode":"23","mcode":"1","bcode":"120","code":"12003","name":"\ucee4\ud50c\ub9e4\ub2c8\uc800"},"12004":{"kcode":"22062","tcode":"23","mcode":"1","bcode":"120","code":"12004","name":"\uc774\ubca4\ud2b8\u00b7\uacf5\uc5f0"},"12005":{"kcode":"22063","tcode":"23","mcode":"1","bcode":"120","code":"12005","name":"\uc7a5\ub840\u00b7\uc0c1\uc870"},"12006":{"kcode":"26615","tcode":"23","mcode":"1","bcode":"120","code":"12006","name":"\uc6e8\ub529\ucee8\uc124\ud305"}}},"121":{"kcode":"7916","tcode":"8","mcode":"8","bcode":"1","code":"121","name":"\uae30\ud0c0\uc11c\ube44\uc2a4\uc5c5","keyword":{"12102":{"kcode":"8225","tcode":"23","mcode":"1","bcode":"121","code":"12102","name":"\ud3ec\uc7a5"},"12104":{"kcode":"8227","tcode":"23","mcode":"1","bcode":"121","code":"12104","name":"\uaf43\uc9d1"},"12108":{"kcode":"8231","tcode":"23","mcode":"1","bcode":"121","code":"12108","name":"\uc138\ud0c1\uc18c"},"12113":{"kcode":"21787","tcode":"23","mcode":"1","bcode":"121","code":"12113","name":"\uc0ac\uc801\uc9c0\uad00\ub9ac"},"12114":{"kcode":"21788","tcode":"23","mcode":"1","bcode":"121","code":"12114","name":"\uc2dd\ubb3c\uc6d0\u00b7\ub3d9\ubb3c\uc6d0"},"12115":{"kcode":"21789","tcode":"23","mcode":"1","bcode":"121","code":"12115","name":"\ub178\ub798\uc5f0\uc2b5\uc2e4"},"12116":{"kcode":"21790","tcode":"23","mcode":"1","bcode":"121","code":"12116","name":"\ubcf5\uad8c\ubc1c\ud589"},"12117":{"kcode":"22095","tcode":"23","mcode":"1","bcode":"121","code":"12117","name":"\ub3c5\uc11c\uc2e4"},"12118":{"kcode":"22979","tcode":"23","mcode":"1","bcode":"121","code":"12118","name":"\uc560\uacac\uc13c\ud130 \ud6c8\ub828"}}},"122":{"kcode":"22064","tcode":"8","mcode":"8","bcode":"1","code":"122","name":"\ubdf0\ud2f0\u00b7\ubbf8\uc6a9","keyword":{"12201":{"kcode":"22065","tcode":"23","mcode":"1","bcode":"122","code":"12201","name":"\ud5e4\uc5b4\uc0f5"},"12202":{"kcode":"22066","tcode":"23","mcode":"1","bcode":"122","code":"12202","name":"\ud53c\ubd80\uad00\ub9ac"},"12203":{"kcode":"22067","tcode":"23","mcode":"1","bcode":"122","code":"12203","name":"\ub450\ud53c\uad00\ub9ac"},"12204":{"kcode":"22068","tcode":"23","mcode":"1","bcode":"122","code":"12204","name":"\ub2e4\uc774\uc5b4\ud2b8"},"12205":{"kcode":"22069","tcode":"23","mcode":"1","bcode":"122","code":"12205","name":"\uc2a4\ud30c\u00b7\ucc1c\uc9c8\ubc29"},"12206":{"kcode":"22070","tcode":"23","mcode":"1","bcode":"122","code":"12206","name":"\ub9c8\uc0ac\uc9c0"},"12207":{"kcode":"22071","tcode":"23","mcode":"1","bcode":"122","code":"12207","name":"\uc560\uacac\ubbf8\uc6a9"},"12208":{"kcode":"22094","tcode":"23","mcode":"1","bcode":"122","code":"12208","name":"\ub124\uc77c\uc544\ud2b8"},"12209":{"kcode":"8371","tcode":"23","mcode":"1","bcode":"122","code":"12209","name":"\uba54\uc774\ud06c\uc5c5"}}}}},"2":{"bcode":"2","name":"\uc81c\uc870\u00b7\ud654\ud559","code":{"201":{"kcode":"7917","tcode":"8","mcode":"8","bcode":"2","code":"201","name":"\uc804\uae30\u00b7\uc804\uc790\u00b7\uc81c\uc5b4","keyword":{"20101":{"kcode":"8254","tcode":"23","mcode":"2","bcode":"201","code":"20101","name":"Micom"},"20102":{"kcode":"8255","tcode":"23","mcode":"2","bcode":"201","code":"20102","name":"\uae30\uad6c\uc124\uacc4"},"20103":{"kcode":"8256","tcode":"23","mcode":"2","bcode":"201","code":"20103","name":"Microprocessor"},"20104":{"kcode":"8257","tcode":"23","mcode":"2","bcode":"201","code":"20104","name":"SMT"},"20105":{"kcode":"8236","tcode":"23","mcode":"2","bcode":"201","code":"20105","name":"\uc804\uae30"},"20106":{"kcode":"8237","tcode":"23","mcode":"2","bcode":"201","code":"20106","name":"\ud68c\ub85c\uc124\uacc4"},"20107":{"kcode":"8238","tcode":"23","mcode":"2","bcode":"201","code":"20107","name":"\uc804\uae30\uc124\ube44"},"20108":{"kcode":"8239","tcode":"23","mcode":"2","bcode":"201","code":"20108","name":"\uc804\uae30\uc124\uacc4"},"20109":{"kcode":"8240","tcode":"23","mcode":"2","bcode":"201","code":"20109","name":"\uc804\uae30\uae30\uc220"},"20110":{"kcode":"8241","tcode":"23","mcode":"2","bcode":"201","code":"20110","name":"\uc804\uae30\uacf5\uc0ac"},"20112":{"kcode":"8243","tcode":"23","mcode":"2","bcode":"201","code":"20112","name":"\uc790\ub3d9\uc81c\uc5b4"},"20113":{"kcode":"8244","tcode":"23","mcode":"2","bcode":"201","code":"20113","name":"PLC"},"20114":{"kcode":"8245","tcode":"23","mcode":"2","bcode":"201","code":"20114","name":"\uc804\uc790"},"20117":{"kcode":"8248","tcode":"23","mcode":"2","bcode":"201","code":"20117","name":"RF"},"20119":{"kcode":"8250","tcode":"23","mcode":"2","bcode":"201","code":"20119","name":"SEM\u00b7TEM"},"20121":{"kcode":"8252","tcode":"23","mcode":"2","bcode":"201","code":"20121","name":"Hardware"},"20122":{"kcode":"8253","tcode":"23","mcode":"2","bcode":"201","code":"20122","name":"Firmware"},"20123":{"kcode":"8258","tcode":"23","mcode":"2","bcode":"201","code":"20123","name":"HMI\u00b7MMI"},"20124":{"kcode":"22160","tcode":"23","mcode":"2","bcode":"201","code":"20124","name":"\uac00\uc804\uc81c\ud488"}}},"202":{"kcode":"7920","tcode":"8","mcode":"8","bcode":"2","code":"202","name":"\uae30\uacc4\u00b7\uc124\ube44\u00b7\uc790\ub3d9\ucc28","keyword":{"20205":{"kcode":"8302","tcode":"23","mcode":"2","bcode":"202","code":"20205","name":"\uae30\uacc4"},"20206":{"kcode":"8303","tcode":"23","mcode":"2","bcode":"202","code":"20206","name":"\uae30\uacc4\uc124\ube44"},"20207":{"kcode":"8304","tcode":"23","mcode":"2","bcode":"202","code":"20207","name":"\uae30\uacc4\uc124\uacc4"},"20208":{"kcode":"8305","tcode":"23","mcode":"2","bcode":"202","code":"20208","name":"CAD\u00b7CAM"},"20210":{"kcode":"8306","tcode":"23","mcode":"2","bcode":"202","code":"20210","name":"\uba54\uce74\ud2b8\ub85c\ub2c9\uc2a4"},"20211":{"kcode":"8307","tcode":"23","mcode":"2","bcode":"202","code":"20211","name":"\uc790\ub3d9\ucc28\uc815\ube44"},"20212":{"kcode":"8308","tcode":"23","mcode":"2","bcode":"202","code":"20212","name":"\uc790\ub3d9\ucc28"},"20214":{"kcode":"8309","tcode":"23","mcode":"2","bcode":"202","code":"20214","name":"\uc790\ub3d9\ucc28\ubd80\ud488"}}},"204":{"kcode":"7924","tcode":"8","mcode":"8","bcode":"2","code":"204","name":"\uc11d\uc720\u00b7\ud654\ud559\u00b7\uc5d0\ub108\uc9c0","keyword":{"20401":{"kcode":"8327","tcode":"23","mcode":"2","bcode":"204","code":"20401","name":"\uc8fc\uc720"},"20402":{"kcode":"8328","tcode":"23","mcode":"2","bcode":"204","code":"20402","name":"\uc815\uc720"},"20403":{"kcode":"8329","tcode":"23","mcode":"2","bcode":"204","code":"20403","name":"\uc11d\uc720\ud654\ud559"},"20404":{"kcode":"8330","tcode":"23","mcode":"2","bcode":"204","code":"20404","name":"\ud654\ud559"},"20405":{"kcode":"8331","tcode":"23","mcode":"2","bcode":"204","code":"20405","name":"\ud654\uacf5"},"20406":{"kcode":"8332","tcode":"23","mcode":"2","bcode":"204","code":"20406","name":"\uc5d0\ub108\uc9c0"},"20412":{"kcode":"8338","tcode":"23","mcode":"2","bcode":"204","code":"20412","name":"\ud504\ub77c\uc2a4\ud2f1\uc81c\uc870"},"20414":{"kcode":"8339","tcode":"23","mcode":"2","bcode":"204","code":"20414","name":"\uc0ac\ucd9c\u00b7\uc555\ucd9c"},"20415":{"kcode":"8340","tcode":"23","mcode":"2","bcode":"204","code":"20415","name":"\ud3f4\ub9ac\uba38"},"20417":{"kcode":"8341","tcode":"23","mcode":"2","bcode":"204","code":"20417","name":"\uc6d0\uc790\ub825"},"20418":{"kcode":"8342","tcode":"23","mcode":"2","bcode":"204","code":"20418","name":"\ub3c4\ub8cc"},"20419":{"kcode":"8343","tcode":"23","mcode":"2","bcode":"204","code":"20419","name":"\uc720\uae30\ud569\uc131"},"20420":{"kcode":"8344","tcode":"23","mcode":"2","bcode":"204","code":"20420","name":"\uace0\ubb34"}}},"205":{"kcode":"7925","tcode":"8","mcode":"8","bcode":"2","code":"205","name":"\uc12c\uc720\u00b7\uc758\ub958\u00b7\ud328\uc158","keyword":{"20501":{"kcode":"8345","tcode":"23","mcode":"2","bcode":"205","code":"20501","name":"\uc12c\uc720"},"20503":{"kcode":"8346","tcode":"23","mcode":"2","bcode":"205","code":"20503","name":"\uc758\ub958\u00b7\uc758\uc0c1"},"20504":{"kcode":"8348","tcode":"23","mcode":"2","bcode":"205","code":"20504","name":"\ub514\uc2a4\ud50c\ub808\uc774"},"20506":{"kcode":"8347","tcode":"23","mcode":"2","bcode":"205","code":"20506","name":"\ud328\uc158"},"20508":{"kcode":"8349","tcode":"23","mcode":"2","bcode":"205","code":"20508","name":"\ucf54\ub514\ub124\uc774\ud130"},"20509":{"kcode":"8350","tcode":"23","mcode":"2","bcode":"205","code":"20509","name":"\uc545\uc138\uc11c\ub9ac"},"20511":{"kcode":"8351","tcode":"23","mcode":"2","bcode":"205","code":"20511","name":"\ub0a8\uc131\uc758\ub958"},"20512":{"kcode":"8352","tcode":"23","mcode":"2","bcode":"205","code":"20512","name":"\uc5ec\uc131\uc758\ub958"},"20513":{"kcode":"8353","tcode":"23","mcode":"2","bcode":"205","code":"20513","name":"\uc720\uc544\uc758\ub958"},"20514":{"kcode":"8354","tcode":"23","mcode":"2","bcode":"205","code":"20514","name":"\uc774\ub108\uc6e8\uc5b4"},"20515":{"kcode":"8355","tcode":"23","mcode":"2","bcode":"205","code":"20515","name":"\uc12c\uc720\uacf5\ud559"},"20516":{"kcode":"8356","tcode":"23","mcode":"2","bcode":"205","code":"20516","name":"\uc96c\uc5bc\ub9ac"},"20517":{"kcode":"8357","tcode":"23","mcode":"2","bcode":"205","code":"20517","name":"\uc7a1\ud654"}}},"207":{"kcode":"7928","tcode":"8","mcode":"8","bcode":"2","code":"207","name":"\ud654\uc7a5\ud488\u00b7\ubdf0\ud2f0","keyword":{"20701":{"kcode":"8370","tcode":"23","mcode":"2","bcode":"207","code":"20701","name":"\ud654\uc7a5\ud488"},"20704":{"kcode":"8373","tcode":"23","mcode":"2","bcode":"207","code":"20704","name":"\ubdf0\ud2f0"}}},"208":{"kcode":"7929","tcode":"8","mcode":"8","bcode":"2","code":"208","name":"\uc0dd\ud65c\uc6a9\ud488\u00b7\uc18c\ube44\uc7ac\u00b7\uc0ac\ubb34","keyword":{"20801":{"kcode":"8376","tcode":"23","mcode":"2","bcode":"208","code":"20801","name":"\uc18c\ube44\uc7ac"},"20804":{"kcode":"8377","tcode":"23","mcode":"2","bcode":"208","code":"20804","name":"\uc0dd\ud65c\uc6a9\ud488"},"20805":{"kcode":"8378","tcode":"23","mcode":"2","bcode":"208","code":"20805","name":"\uc644\uad6c"},"20806":{"kcode":"8379","tcode":"23","mcode":"2","bcode":"208","code":"20806","name":"\uc0ac\ubb34\uc6a9\ud488"},"20808":{"kcode":"8381","tcode":"23","mcode":"2","bcode":"208","code":"20808","name":"\ubb38\uad6c\u00b7\ud32c\uc2dc"}}},"209":{"kcode":"7923","tcode":"8","mcode":"8","bcode":"2","code":"209","name":"\uac00\uad6c\u00b7\ubaa9\uc7ac\u00b7\uc81c\uc9c0","keyword":{"20901":{"kcode":"8322","tcode":"23","mcode":"2","bcode":"209","code":"20901","name":"\ubaa9\uc7ac"},"20902":{"kcode":"8323","tcode":"23","mcode":"2","bcode":"209","code":"20902","name":"\uc81c\uc9c0"},"20903":{"kcode":"8324","tcode":"23","mcode":"2","bcode":"209","code":"20903","name":"\uac00\uad6c"},"20904":{"kcode":"8325","tcode":"23","mcode":"2","bcode":"209","code":"20904","name":"\ubd80\uc5cc\uac00\uad6c"},"20905":{"kcode":"8326","tcode":"23","mcode":"2","bcode":"209","code":"20905","name":"\uc0ac\ubb34\uc6a9\uac00\uad6c"}}},"210":{"kcode":"7930","tcode":"8","mcode":"8","bcode":"2","code":"210","name":"\ub18d\uc5c5\u00b7\uc5b4\uc5c5\u00b7\uad11\uc5c5\u00b7\uc784\uc5c5","keyword":{"21001":{"kcode":"8382","tcode":"23","mcode":"2","bcode":"210","code":"21001","name":"\ub18d\uc5c5"},"21002":{"kcode":"8383","tcode":"23","mcode":"2","bcode":"210","code":"21002","name":"\uc5b4\uc5c5"},"21003":{"kcode":"8384","tcode":"23","mcode":"2","bcode":"210","code":"21003","name":"\ucd95\uc0b0"},"21004":{"kcode":"8385","tcode":"23","mcode":"2","bcode":"210","code":"21004","name":"\uc218\uc0b0\uc5c5"},"21005":{"kcode":"8386","tcode":"23","mcode":"2","bcode":"210","code":"21005","name":"\uc784\uc5c5"},"21006":{"kcode":"8387","tcode":"23","mcode":"2","bcode":"210","code":"21006","name":"\uad11\uc5c5"}}},"211":{"kcode":"7922","tcode":"8","mcode":"8","bcode":"2","code":"211","name":"\uae08\uc18d\u00b7\uc7ac\ub8cc\u00b7\ucca0\uac15\u00b7\uc694\uc5c5","keyword":{"21101":{"kcode":"8314","tcode":"23","mcode":"2","bcode":"211","code":"21101","name":"\uae08\uc18d"},"21102":{"kcode":"8315","tcode":"23","mcode":"2","bcode":"211","code":"21102","name":"\uae08\uc18d\uc7ac\ub8cc"},"21103":{"kcode":"8321","tcode":"23","mcode":"2","bcode":"211","code":"21103","name":"\uc694\uc5c5"},"21104":{"kcode":"8316","tcode":"23","mcode":"2","bcode":"211","code":"21104","name":"\uc138\ub77c\ubbf9\uc2a4"},"21105":{"kcode":"8317","tcode":"23","mcode":"2","bcode":"211","code":"21105","name":"\ucca0\uac15"},"21106":{"kcode":"8319","tcode":"23","mcode":"2","bcode":"211","code":"21106","name":"\uc81c\ub828\u00b7\uc81c\uac15"},"21107":{"kcode":"8320","tcode":"23","mcode":"2","bcode":"211","code":"21107","name":"\uc2e0\uc18c\uc7ac"},"21108":{"kcode":"8318","tcode":"23","mcode":"2","bcode":"211","code":"21108","name":"\uc81c\ucca0"}}},"212":{"kcode":"7921","tcode":"8","mcode":"8","bcode":"2","code":"212","name":"\uc870\uc120\u00b7\ud56d\uacf5\u00b7\uc6b0\uc8fc","keyword":{"21201":{"kcode":"8310","tcode":"23","mcode":"2","bcode":"212","code":"21201","name":"\uc870\uc120"},"21202":{"kcode":"8311","tcode":"23","mcode":"2","bcode":"212","code":"21202","name":"\ud56d\uacf5"},"21203":{"kcode":"8312","tcode":"23","mcode":"2","bcode":"212","code":"21203","name":"\uc6b0\uc8fc"},"21204":{"kcode":"8313","tcode":"23","mcode":"2","bcode":"212","code":"21204","name":"\uc120\ubc15"}}},"213":{"kcode":"7931","tcode":"8","mcode":"8","bcode":"2","code":"213","name":"\uae30\ud0c0\uc81c\uc870\uc5c5","keyword":{"21301":{"kcode":"8388","tcode":"23","mcode":"2","bcode":"213","code":"21301","name":"\uae30\ud0c0\uc81c\uc870\uc5c5"},"21302":{"kcode":"21791","tcode":"23","mcode":"2","bcode":"213","code":"21302","name":"\uc9c0\ub3c4\uc81c\uc791\uc5c5"},"21303":{"kcode":"21792","tcode":"23","mcode":"2","bcode":"213","code":"21303","name":"\uc81c\uc870\uc5c5 \ud68c\uc0ac\ubcf8\uc0ac"}}},"214":{"kcode":"7926","tcode":"8","mcode":"8","bcode":"2","code":"214","name":"\uc2dd\ud488\uac00\uacf5\u00b7\uac1c\ubc1c","keyword":{"21401":{"kcode":"8358","tcode":"23","mcode":"2","bcode":"214","code":"21401","name":"\uc2dd\uc74c\ub8cc"},"21402":{"kcode":"8359","tcode":"23","mcode":"2","bcode":"214","code":"21402","name":"\uc2dd\ud488\uac00\uacf5"},"21403":{"kcode":"8360","tcode":"23","mcode":"2","bcode":"214","code":"21403","name":"\uc81c\uacfc\uc81c\ube75"}}},"215":{"kcode":"7918","tcode":"8","mcode":"8","bcode":"2","code":"215","name":"\ubc18\ub3c4\uccb4\u00b7\uad11\ud559\u00b7LCD","keyword":{"21501":{"kcode":"8259","tcode":"23","mcode":"2","bcode":"215","code":"21501","name":"\ubc18\ub3c4\uccb4"},"21502":{"kcode":"8260","tcode":"23","mcode":"2","bcode":"215","code":"21502","name":"PCB"},"21503":{"kcode":"8261","tcode":"23","mcode":"2","bcode":"215","code":"21503","name":"IC\uc124\uacc4"},"21506":{"kcode":"8264","tcode":"23","mcode":"2","bcode":"215","code":"21506","name":"LCD"},"21507":{"kcode":"8265","tcode":"23","mcode":"2","bcode":"215","code":"21507","name":"TFT"},"21508":{"kcode":"8266","tcode":"23","mcode":"2","bcode":"215","code":"21508","name":"DVD"},"21509":{"kcode":"8267","tcode":"23","mcode":"2","bcode":"215","code":"21509","name":"\ub514\uc2a4\ud50c\ub808\uc774"},"21510":{"kcode":"8268","tcode":"23","mcode":"2","bcode":"215","code":"21510","name":"PDP"},"21511":{"kcode":"8269","tcode":"23","mcode":"2","bcode":"215","code":"21511","name":"\uc815\ubc00\uad11\ud559"},"21512":{"kcode":"8270","tcode":"23","mcode":"2","bcode":"215","code":"21512","name":"\ubc1c\uad11\ub2e4\uc774\uc624\ub4dc"},"21513":{"kcode":"8271","tcode":"23","mcode":"2","bcode":"215","code":"21513","name":"LED\u00b7AMOLED"}}},"216":{"kcode":"22154","tcode":"8","mcode":"8","bcode":"2","code":"216","name":"\ud658\uacbd","keyword":{"21601":{"kcode":"22155","tcode":"23","mcode":"2","bcode":"216","code":"21601","name":"\ud658\uacbd"},"21602":{"kcode":"22156","tcode":"23","mcode":"2","bcode":"216","code":"21602","name":"\uc218\uc9c8\ud658\uacbd"},"21603":{"kcode":"22157","tcode":"23","mcode":"2","bcode":"216","code":"21603","name":"\ub300\uae30\ud658\uacbd"},"21604":{"kcode":"22158","tcode":"23","mcode":"2","bcode":"216","code":"21604","name":"\ud3d0\uae30\ubb3c\ucc98\ub9ac"},"21605":{"kcode":"22159","tcode":"23","mcode":"2","bcode":"216","code":"21605","name":"\uc18c\uc74c\uc9c4\ub3d9"}}}}},"3":{"bcode":"3","name":"IT\u00b7\uc6f9\u00b7\ud1b5\uc2e0","code":{"301":{"kcode":"7939","tcode":"8","mcode":"8","bcode":"3","code":"301","name":"\uc194\ub8e8\uc158\u00b7SI\u00b7ERP\u00b7CRM","keyword":{"30101":{"kcode":"8452","tcode":"23","mcode":"3","bcode":"301","code":"30101","name":"SI\u00b7\uc2dc\uc2a4\ud15c\ud1b5\ud569"},"30102":{"kcode":"8453","tcode":"23","mcode":"3","bcode":"301","code":"30102","name":"ERP"},"30103":{"kcode":"8454","tcode":"23","mcode":"3","bcode":"301","code":"30103","name":"CRM"},"30104":{"kcode":"8455","tcode":"23","mcode":"3","bcode":"301","code":"30104","name":"DRM"},"30105":{"kcode":"8456","tcode":"23","mcode":"3","bcode":"301","code":"30105","name":"DW"},"30106":{"kcode":"8457","tcode":"23","mcode":"3","bcode":"301","code":"30106","name":"KMS"},"30107":{"kcode":"8458","tcode":"23","mcode":"3","bcode":"301","code":"30107","name":"NI\u00b7\ub124\ud2b8\uc6cc\ud06c\ud1b5\ud569"},"30108":{"kcode":"8459","tcode":"23","mcode":"3","bcode":"301","code":"30108","name":"DataMining"},"30110":{"kcode":"8461","tcode":"23","mcode":"3","bcode":"301","code":"30110","name":"OLAP"},"30111":{"kcode":"8462","tcode":"23","mcode":"3","bcode":"301","code":"30111","name":"SCM"},"30112":{"kcode":"8463","tcode":"23","mcode":"3","bcode":"301","code":"30112","name":"DBMS"},"30113":{"kcode":"8464","tcode":"23","mcode":"3","bcode":"301","code":"30113","name":"\uc2dc\uc2a4\ud15c\uad00\ub9ac"},"30114":{"kcode":"8465","tcode":"23","mcode":"3","bcode":"301","code":"30114","name":"BPR"},"30115":{"kcode":"8466","tcode":"23","mcode":"3","bcode":"301","code":"30115","name":"BSC"},"30116":{"kcode":"22161","tcode":"23","mcode":"3","bcode":"301","code":"30116","name":"\uc194\ub8e8\uc158\uc5c5\uccb4"},"30117":{"kcode":"22162","tcode":"23","mcode":"3","bcode":"301","code":"30117","name":"ASP"},"30118":{"kcode":"22163","tcode":"23","mcode":"3","bcode":"301","code":"30118","name":"\uc18c\ud504\ud2b8\uc6e8\uc5b4\uac1c\ubc1c"},"30119":{"kcode":"26616","tcode":"23","mcode":"3","bcode":"301","code":"30119","name":"SEM"},"30120":{"kcode":"26617","tcode":"23","mcode":"3","bcode":"301","code":"30120","name":"SM"}}},"302":{"kcode":"7932","tcode":"8","mcode":"8","bcode":"3","code":"302","name":"\uc6f9\uc5d0\uc774\uc83c\uc2dc","keyword":{"30201":{"kcode":"8389","tcode":"23","mcode":"3","bcode":"302","code":"30201","name":"\uc6f9\uc5d0\uc774\uc804\uc2dc"},"30202":{"kcode":"8390","tcode":"23","mcode":"3","bcode":"302","code":"30202","name":"\uc6f9\ud504\ub85c\ub355\uc158"},"30203":{"kcode":"8391","tcode":"23","mcode":"3","bcode":"302","code":"30203","name":"\uc6f9\uc2a4\ud29c\ub514\uc624"}}},"304":{"kcode":"7934","tcode":"8","mcode":"8","bcode":"3","code":"304","name":"\uc1fc\ud551\ubab0\u00b7\uc624\ud508\ub9c8\ucf13","keyword":{"30401":{"kcode":"8408","tcode":"23","mcode":"3","bcode":"304","code":"30401","name":"\uc804\uc790\uc0c1\uac70\ub798"},"30403":{"kcode":"8410","tcode":"23","mcode":"3","bcode":"304","code":"30403","name":"\uc1fc\ud551\ubab0"},"30404":{"kcode":"8411","tcode":"23","mcode":"3","bcode":"304","code":"30404","name":"B2B"},"30405":{"kcode":"8412","tcode":"23","mcode":"3","bcode":"304","code":"30405","name":"\uc625\uc158\u00b7\uacbd\ub9e4"},"30406":{"kcode":"8413","tcode":"23","mcode":"3","bcode":"304","code":"30406","name":"B2C"},"30407":{"kcode":"8414","tcode":"23","mcode":"3","bcode":"304","code":"30407","name":"\uc624\ud508\ub9c8\ucf13"},"30408":{"kcode":"8415","tcode":"23","mcode":"3","bcode":"304","code":"30408","name":"\uac00\uaca9\ube44\uad50"}}},"305":{"kcode":"7933","tcode":"8","mcode":"8","bcode":"3","code":"305","name":"\ud3ec\ud138\u00b7\uc778\ud130\ub137\u00b7\ucee8\ud150\uce20","keyword":{"30501":{"kcode":"8392","tcode":"23","mcode":"3","bcode":"305","code":"30501","name":"\uc885\ud569\ud3ec\ud138"},"30502":{"kcode":"8393","tcode":"23","mcode":"3","bcode":"305","code":"30502","name":"\ucee8\ud150\uce20\uc81c\uacf5"},"30503":{"kcode":"8394","tcode":"23","mcode":"3","bcode":"305","code":"30503","name":"\ucde8\uc5c5\ud3ec\ud138"},"30504":{"kcode":"8395","tcode":"23","mcode":"3","bcode":"305","code":"30504","name":"\uc5ec\uc131\ud3ec\ud138"},"30505":{"kcode":"8396","tcode":"23","mcode":"3","bcode":"305","code":"30505","name":"\uc778\ud130\ub137\uc601\ud654"},"30506":{"kcode":"8397","tcode":"23","mcode":"3","bcode":"305","code":"30506","name":"\uc778\ud130\ub137\ubc29\uc1a1"},"30507":{"kcode":"8398","tcode":"23","mcode":"3","bcode":"305","code":"30507","name":"\uc778\ud130\ub137\uae08\uc735"},"30508":{"kcode":"8399","tcode":"23","mcode":"3","bcode":"305","code":"30508","name":"\uc778\ud130\ub137\uad50\uc721"},"30509":{"kcode":"8400","tcode":"23","mcode":"3","bcode":"305","code":"30509","name":"\uc778\ud130\ub137\ub9cc\ud654"},"30510":{"kcode":"8401","tcode":"23","mcode":"3","bcode":"305","code":"30510","name":"\uc778\ud130\ub137\ubd80\ub3d9\uc0b0"},"30512":{"kcode":"8403","tcode":"23","mcode":"3","bcode":"305","code":"30512","name":"\uac8c\uc784\ud3ec\ud138"},"30513":{"kcode":"8404","tcode":"23","mcode":"3","bcode":"305","code":"30513","name":"\uc778\ud130\ub137\uc5ec\ud589"},"30514":{"kcode":"8405","tcode":"23","mcode":"3","bcode":"305","code":"30514","name":"\uc778\ud130\ub137\ubc95\ub960"},"30515":{"kcode":"8406","tcode":"23","mcode":"3","bcode":"305","code":"30515","name":"\uc778\ud130\ub137\uc0dd\ud65c\uc815\ubcf4"},"30516":{"kcode":"8407","tcode":"23","mcode":"3","bcode":"305","code":"30516","name":"\ucee4\ubba4\ub2c8\ud2f0"},"30517":{"kcode":"22164","tcode":"23","mcode":"3","bcode":"305","code":"30517","name":"\uc778\ud130\ub137\ub274\uc2a4\u00b7\uc2e0\ubb38"},"30518":{"kcode":"22165","tcode":"23","mcode":"3","bcode":"305","code":"30518","name":"\uc778\ud130\ub137\uac74\uac15\u00b7\uc758\ud559"},"30519":{"kcode":"22166","tcode":"23","mcode":"3","bcode":"305","code":"30519","name":"\uc885\uad50\ud3ec\ud138"},"30520":{"kcode":"22167","tcode":"23","mcode":"3","bcode":"305","code":"30520","name":"\uc778\ud130\ub137\uc11c\uc810"},"30521":{"kcode":"22168","tcode":"23","mcode":"3","bcode":"305","code":"30521","name":"\uc778\ud130\ub137\uc74c\uc545"}}},"306":{"kcode":"7936","tcode":"8","mcode":"8","bcode":"3","code":"306","name":"\ub124\ud2b8\uc6cc\ud06c\u00b7\ud1b5\uc2e0\u00b7\ubaa8\ubc14\uc77c","keyword":{"30601":{"kcode":"8418","tcode":"23","mcode":"3","bcode":"306","code":"30601","name":"\ub124\ud2b8\uc6cd\uad6c\ucd95"},"30602":{"kcode":"8419","tcode":"23","mcode":"3","bcode":"306","code":"30602","name":"\ud1b5\uc2e0"},"30603":{"kcode":"8420","tcode":"23","mcode":"3","bcode":"306","code":"30603","name":"\ud154\ub808\ucf64"},"30607":{"kcode":"8424","tcode":"23","mcode":"3","bcode":"306","code":"30607","name":"\uc640\uc774\ube0c\ub85c"},"30608":{"kcode":"8425","tcode":"23","mcode":"3","bcode":"306","code":"30608","name":"\ubaa8\ubc14\uc77c"},"30609":{"kcode":"8426","tcode":"23","mcode":"3","bcode":"306","code":"30609","name":"\uc720\ube44\ucffc\ud130\uc2a4"},"30610":{"kcode":"8427","tcode":"23","mcode":"3","bcode":"306","code":"30610","name":"\ube14\ub8e8\ud22c\uc2a4"},"30612":{"kcode":"8429","tcode":"23","mcode":"3","bcode":"306","code":"30612","name":"WIPI"},"30613":{"kcode":"8430","tcode":"23","mcode":"3","bcode":"306","code":"30613","name":"WAP"},"30614":{"kcode":"8431","tcode":"23","mcode":"3","bcode":"306","code":"30614","name":"PDA\u00b7\uc2a4\ub9c8\ud2b8\ud3f0"},"30615":{"kcode":"8432","tcode":"23","mcode":"3","bcode":"306","code":"30615","name":"\ubaa8\ubc14\uc77c\uac8c\uc784"},"30616":{"kcode":"22169","tcode":"23","mcode":"3","bcode":"306","code":"30616","name":"\ubc45\ud0b9\u00b7\ube4c\ub9c1"},"30617":{"kcode":"26618","tcode":"23","mcode":"3","bcode":"306","code":"30617","name":"CDN"},"30618":{"kcode":"26619","tcode":"23","mcode":"3","bcode":"306","code":"30618","name":"\uc6f9\ud638\uc2a4\ud305"},"30619":{"kcode":"26620","tcode":"23","mcode":"3","bcode":"306","code":"30619","name":"\uc778\ud130\ub137\uc804\ud654"},"30620":{"kcode":"26621","tcode":"23","mcode":"3","bcode":"306","code":"30620","name":"\uc544\uc774\ud3f0"},"30621":{"kcode":"26622","tcode":"23","mcode":"3","bcode":"306","code":"30621","name":"\uc548\ub4dc\ub85c\uc774\ub4dc"},"30622":{"kcode":"26623","tcode":"23","mcode":"3","bcode":"306","code":"30622","name":"\uc708\ub3c4\uc6b0\ubaa8\ubc14\uc77c"},"30623":{"kcode":"26624","tcode":"23","mcode":"3","bcode":"306","code":"30623","name":"\ud154\ub808\ub9e4\ud2f1\uc2a4"},"30624":{"kcode":"26625","tcode":"23","mcode":"3","bcode":"306","code":"30624","name":"HDML"},"30625":{"kcode":"26626","tcode":"23","mcode":"3","bcode":"306","code":"30625","name":"mHTML"},"30626":{"kcode":"26627","tcode":"23","mcode":"3","bcode":"306","code":"30626","name":"cHTML"},"30627":{"kcode":"26628","tcode":"23","mcode":"3","bcode":"306","code":"30627","name":"GSM\u00b7GVM"},"30628":{"kcode":"26629","tcode":"23","mcode":"3","bcode":"306","code":"30628","name":"SKVM"},"30629":{"kcode":"26630","tcode":"23","mcode":"3","bcode":"306","code":"30629","name":"BREW"},"30630":{"kcode":"33010","tcode":"23","mcode":"3","bcode":"306","code":"30630","name":"CDMA"},"30631":{"kcode":"33011","tcode":"23","mcode":"3","bcode":"306","code":"30631","name":"\ubaa8\ubc14\uc77cAPP"},"30632":{"kcode":"33012","tcode":"23","mcode":"3","bcode":"306","code":"30632","name":"Phone"},"30633":{"kcode":"33013","tcode":"23","mcode":"3","bcode":"306","code":"30633","name":"\ubb34\uc120\ud1b5\uc2e0"}}},"307":{"kcode":"7937","tcode":"8","mcode":"8","bcode":"3","code":"307","name":"\ud558\ub4dc\uc6e8\uc5b4\u00b7\uc7a5\ube44","keyword":{"30701":{"kcode":"8433","tcode":"23","mcode":"3","bcode":"307","code":"30701","name":"\ud558\ub4dc\uc6e8\uc5b4"},"30702":{"kcode":"8434","tcode":"23","mcode":"3","bcode":"307","code":"30702","name":"\ud38c\uc6e8\uc5b4"},"30703":{"kcode":"8435","tcode":"23","mcode":"3","bcode":"307","code":"30703","name":"\uc7a5\ube44\uad6c\ucd95"},"30704":{"kcode":"8436","tcode":"23","mcode":"3","bcode":"307","code":"30704","name":"\uc720\uc9c0\ubcf4\uc218"},"30705":{"kcode":"8437","tcode":"23","mcode":"3","bcode":"307","code":"30705","name":"\ucf54\ub371\u00b7\uc778\ucf54\ub529"},"30706":{"kcode":"8438","tcode":"23","mcode":"3","bcode":"307","code":"30706","name":"\uc2a4\ud1a0\ub9ac\uc9c0"},"30707":{"kcode":"26631","tcode":"23","mcode":"3","bcode":"307","code":"30707","name":"AS"}}},"308":{"kcode":"7938","tcode":"8","mcode":"8","bcode":"3","code":"308","name":"\uc815\ubcf4\ubcf4\uc548\u00b7\ubc31\uc2e0","keyword":{"30801":{"kcode":"8439","tcode":"23","mcode":"3","bcode":"308","code":"30801","name":"\ubcf4\uc548"},"30802":{"kcode":"8440","tcode":"23","mcode":"3","bcode":"308","code":"30802","name":"\ubc31\uc2e0"},"30803":{"kcode":"8441","tcode":"23","mcode":"3","bcode":"308","code":"30803","name":"\ubc29\ud654\ubcbd"},"30804":{"kcode":"8442","tcode":"23","mcode":"3","bcode":"308","code":"30804","name":"IDS\u00b7IPS"},"30805":{"kcode":"8443","tcode":"23","mcode":"3","bcode":"308","code":"30805","name":"\ubcf4\uc548\ucee8\uc124\ud305"},"30806":{"kcode":"8444","tcode":"23","mcode":"3","bcode":"308","code":"30806","name":"ESM"},"30808":{"kcode":"8446","tcode":"23","mcode":"3","bcode":"308","code":"30808","name":"SSL"},"30809":{"kcode":"8447","tcode":"23","mcode":"3","bcode":"308","code":"30809","name":"\ubc14\uc774\ub7ec\uc2a4"},"30810":{"kcode":"8448","tcode":"23","mcode":"3","bcode":"308","code":"30810","name":"\ub124\ud2b8\uc6cc\ud06c\ubcf4\uc548"},"30811":{"kcode":"8449","tcode":"23","mcode":"3","bcode":"308","code":"30811","name":"\uc815\ubcf4\ubcf4\uc548"},"30812":{"kcode":"8450","tcode":"23","mcode":"3","bcode":"308","code":"30812","name":"\ud574\ud0b9"},"30813":{"kcode":"8451","tcode":"23","mcode":"3","bcode":"308","code":"30813","name":"\uc2a4\ud338\u00b7\uc6dc"},"30814":{"kcode":"26632","tcode":"23","mcode":"3","bcode":"308","code":"30814","name":"\ubcf4\uc548ASP"}}},"313":{"kcode":"7940","tcode":"8","mcode":"8","bcode":"3","code":"313","name":"IT\ucee8\uc124\ud305","keyword":{"31301":{"kcode":"8467","tcode":"23","mcode":"3","bcode":"313","code":"31301","name":"IT\ucee8\uc124\ud305"},"31302":{"kcode":"8468","tcode":"23","mcode":"3","bcode":"313","code":"31302","name":"\uc778\ud050\ubca0\uc774\ud305"},"31303":{"kcode":"22170","tcode":"23","mcode":"3","bcode":"313","code":"31303","name":"\uc14b\uc5c5"},"31304":{"kcode":"26633","tcode":"23","mcode":"3","bcode":"313","code":"31304","name":"IFRS"},"31305":{"kcode":"26634","tcode":"23","mcode":"3","bcode":"313","code":"31305","name":"SAP"},"31306":{"kcode":"26635","tcode":"23","mcode":"3","bcode":"313","code":"31306","name":"ERP"},"31307":{"kcode":"26636","tcode":"23","mcode":"3","bcode":"313","code":"31307","name":"SCM"},"31308":{"kcode":"26637","tcode":"23","mcode":"3","bcode":"313","code":"31308","name":"CRM"},"31309":{"kcode":"26638","tcode":"23","mcode":"3","bcode":"313","code":"31309","name":"Oracle"},"31310":{"kcode":"26639","tcode":"23","mcode":"3","bcode":"313","code":"31310","name":"BPM"},"31311":{"kcode":"26640","tcode":"23","mcode":"3","bcode":"313","code":"31311","name":"KMS"},"31312":{"kcode":"26641","tcode":"23","mcode":"3","bcode":"313","code":"31312","name":"DW"}}},"314":{"kcode":"21812","tcode":"8","mcode":"8","bcode":"3","code":"314","name":"\uac8c\uc784","keyword":{"31401":{"kcode":"21793","tcode":"23","mcode":"3","bcode":"314","code":"31401","name":"\uac8c\uc784\uac1c\ubc1c"},"31402":{"kcode":"21794","tcode":"23","mcode":"3","bcode":"314","code":"31402","name":"\uac8c\uc784\uae30\ud68d\u00b7\ub9c8\ucf00\ud305"},"31403":{"kcode":"21795","tcode":"23","mcode":"3","bcode":"314","code":"31403","name":"\uac8c\uc784\ub514\uc790\uc778"},"31404":{"kcode":"21796","tcode":"23","mcode":"3","bcode":"314","code":"31404","name":"\uac8c\uc784\uc74c\ud5a5"},"31405":{"kcode":"21797","tcode":"23","mcode":"3","bcode":"314","code":"31405","name":"\uac8c\uc784\uc6b4\uc601"},"31406":{"kcode":"21798","tcode":"23","mcode":"3","bcode":"314","code":"31406","name":"\uac8c\uc784"},"31407":{"kcode":"26642","tcode":"23","mcode":"3","bcode":"314","code":"31407","name":"GM\u00b7CS"},"31408":{"kcode":"26643","tcode":"23","mcode":"3","bcode":"314","code":"31408","name":"\uac8c\uc784\uc2dc\ub098\ub9ac\uc624"},"31409":{"kcode":"26644","tcode":"23","mcode":"3","bcode":"314","code":"31409","name":"3D\uc628\ub77c\uc778\uac8c\uc784"},"31410":{"kcode":"26645","tcode":"23","mcode":"3","bcode":"314","code":"31410","name":"RPG"},"31411":{"kcode":"26646","tcode":"23","mcode":"3","bcode":"314","code":"31411","name":"2D\uc628\ub77c\uc778\uac8c\uc784"},"31412":{"kcode":"26647","tcode":"23","mcode":"3","bcode":"314","code":"31412","name":"Flash\uac8c\uc784"},"31413":{"kcode":"26648","tcode":"23","mcode":"3","bcode":"314","code":"31413","name":"\uc6f9\uac8c\uc784"},"31414":{"kcode":"26649","tcode":"23","mcode":"3","bcode":"314","code":"31414","name":"\ubca0\ud0c0\ud14c\uc2a4\ud130"}}}}},"4":{"bcode":"4","name":"\uc740\ud589\u00b7\uae08\uc735\uc5c5","code":{"401":{"kcode":"7941","tcode":"8","mcode":"8","bcode":"4","code":"401","name":"\uc740\ud589\u00b7\uae08\uc735\u00b7\uc800\ucd95","keyword":{"40101":{"kcode":"8469","tcode":"23","mcode":"4","bcode":"401","code":"40101","name":"\uae08\uc735\uae30\uad00"},"40102":{"kcode":"8470","tcode":"23","mcode":"4","bcode":"401","code":"40102","name":"\uc77c\ubc18\uc740\ud589"},"40114":{"kcode":"22174","tcode":"23","mcode":"4","bcode":"401","code":"40114","name":"\uc9c0\ubc29\uc740\ud589"},"40115":{"kcode":"22175","tcode":"23","mcode":"4","bcode":"401","code":"40115","name":"\uc678\uad6d\uc740\ud589"},"40116":{"kcode":"22176","tcode":"23","mcode":"4","bcode":"401","code":"40116","name":"\ud2b9\uc218\uc740\ud589"},"40117":{"kcode":"22177","tcode":"23","mcode":"4","bcode":"401","code":"40117","name":"\ub18d\ud611\u00b7\uc218\ud611\u00b7\ucd95\ud611"},"40118":{"kcode":"22178","tcode":"23","mcode":"4","bcode":"401","code":"40118","name":"\uc800\ucd95\uc740\ud589"},"40119":{"kcode":"22179","tcode":"23","mcode":"4","bcode":"401","code":"40119","name":"\uc2e0\uc6a9\ud611\ub3d9\uc870\ud569"},"40120":{"kcode":"22180","tcode":"23","mcode":"4","bcode":"401","code":"40120","name":"\uc885\ud569\uae08\uc735"},"40121":{"kcode":"22181","tcode":"23","mcode":"4","bcode":"401","code":"40121","name":"\uad6d\uc81c\uae08\uc735"},"40122":{"kcode":"22182","tcode":"23","mcode":"4","bcode":"401","code":"40122","name":"\ud154\ub7ec"},"40123":{"kcode":"26650","tcode":"23","mcode":"4","bcode":"401","code":"40123","name":"\ubd80\ub3d9\uc0b0\ud22c\uc790"},"40124":{"kcode":"26651","tcode":"23","mcode":"4","bcode":"401","code":"40124","name":"\ubd80\ub3d9\uc0b0\uc6b4\uc6a9"},"40125":{"kcode":"26652","tcode":"23","mcode":"4","bcode":"401","code":"40125","name":"\uc790\uc0b0\uad00\ub9ac"},"40126":{"kcode":"26653","tcode":"23","mcode":"4","bcode":"401","code":"40126","name":"\ud22c\uc790\uc0c1\ub2f4"}}},"402":{"kcode":"7942","tcode":"8","mcode":"8","bcode":"4","code":"402","name":"\ub300\ucd9c\u00b7\uce90\ud53c\ud0c8\u00b7\uc5ec\uc2e0","keyword":{"40201":{"kcode":"8478","tcode":"23","mcode":"4","bcode":"402","code":"40201","name":"\uce90\ud53c\ud0c8"},"40205":{"kcode":"22183","tcode":"23","mcode":"4","bcode":"402","code":"40205","name":"\uc2e0\uc6a9\ub300\ucd9c"},"40206":{"kcode":"22184","tcode":"23","mcode":"4","bcode":"402","code":"40206","name":"\ub2f4\ubcf4\ub300\ucd9c"},"40207":{"kcode":"22185","tcode":"23","mcode":"4","bcode":"402","code":"40207","name":"\ud559\uc790\uae08\ub300\ucd9c"},"40208":{"kcode":"22186","tcode":"23","mcode":"4","bcode":"402","code":"40208","name":"\uc5ec\uc2e0"}}},"405":{"kcode":"21813","tcode":"8","mcode":"8","bcode":"4","code":"405","name":"\uae30\ud0c0\uae08\uc735","keyword":{"40501":{"kcode":"21799","tcode":"23","mcode":"4","bcode":"405","code":"40501","name":"\ube44\uae08\uc735\uc9c0\uc8fc\ud68c\uc0ac"}}},"406":{"kcode":"22171","tcode":"8","mcode":"8","bcode":"4","code":"406","name":"\uc99d\uad8c\u00b7\ubcf4\ud5d8\u00b7\uce74\ub4dc","keyword":{"40601":{"kcode":"8471","tcode":"23","mcode":"4","bcode":"406","code":"40601","name":"\uc99d\uad8c\uc0ac"},"40602":{"kcode":"8472","tcode":"23","mcode":"4","bcode":"406","code":"40602","name":"\uc2e0\uc6a9\uce74\ub4dc\uc0ac"},"40603":{"kcode":"8473","tcode":"23","mcode":"4","bcode":"406","code":"40603","name":"\uc0dd\uba85\ubcf4\ud5d8"},"40604":{"kcode":"8474","tcode":"23","mcode":"4","bcode":"406","code":"40604","name":"\ud654\uc7ac\ubcf4\ud5d8"},"40605":{"kcode":"8475","tcode":"23","mcode":"4","bcode":"406","code":"40605","name":"\ud380\ub4dc\ub9e4\ub2c8\uc800"},"40606":{"kcode":"8476","tcode":"23","mcode":"4","bcode":"406","code":"40606","name":"\uc560\ub110\ub9ac\uc2a4\ud2b8"},"40607":{"kcode":"8477","tcode":"23","mcode":"4","bcode":"406","code":"40607","name":"\ud3ec\uc778\ud2b8\uce74\ub4dc"},"40608":{"kcode":"22172","tcode":"23","mcode":"4","bcode":"406","code":"40608","name":"\uc790\ub3d9\ucc28\ubcf4\ud5d8"},"40609":{"kcode":"22173","tcode":"23","mcode":"4","bcode":"406","code":"40609","name":"\ubcf4\ud5d8\uc0ac"},"40610":{"kcode":"26654","tcode":"23","mcode":"4","bcode":"406","code":"40610","name":"\uc190\ud574\uc0ac\uc815"}}}}},"5":{"bcode":"5","name":"\ubbf8\ub514\uc5b4\u00b7\ub514\uc790\uc778","code":{"501":{"kcode":"7945","tcode":"8","mcode":"8","bcode":"5","code":"501","name":"\uc2e0\ubb38\u00b7\uc7a1\uc9c0\u00b7\uc5b8\ub860\uc0ac","keyword":{"50101":{"kcode":"8512","tcode":"23","mcode":"5","bcode":"501","code":"50101","name":"\uc2e0\ubb38\uc0ac"},"50102":{"kcode":"8513","tcode":"23","mcode":"5","bcode":"501","code":"50102","name":"\uc7a1\uc9c0\uc0ac"},"50103":{"kcode":"8514","tcode":"23","mcode":"5","bcode":"501","code":"50103","name":"\uc5b8\ub860\uc0ac"},"50104":{"kcode":"22187","tcode":"23","mcode":"5","bcode":"501","code":"50104","name":"\uc77c\uac04\uc9c0"},"50105":{"kcode":"22188","tcode":"23","mcode":"5","bcode":"501","code":"50105","name":"\uacbd\uc81c\uc2e0\ubb38"},"50106":{"kcode":"22189","tcode":"23","mcode":"5","bcode":"501","code":"50106","name":"\uc2a4\ud3ec\uce20\uc2e0\ubb38"},"50107":{"kcode":"22190","tcode":"23","mcode":"5","bcode":"501","code":"50107","name":"\uc778\ud130\ub137\uc2e0\ubb38"},"50108":{"kcode":"22191","tcode":"23","mcode":"5","bcode":"501","code":"50108","name":"\uc9c0\uc5ed\uc2e0\ubb38"},"50109":{"kcode":"22192","tcode":"23","mcode":"5","bcode":"501","code":"50109","name":"\uc804\ubb38\uc2e0\ubb38"}}},"502":{"kcode":"7946","tcode":"8","mcode":"8","bcode":"5","code":"502","name":"\ubc29\uc1a1\uc0ac\u00b7\ucf00\uc774\ube14","keyword":{"50201":{"kcode":"8515","tcode":"23","mcode":"5","bcode":"502","code":"50201","name":"\uacf5\uc911\ud30c\ubc29\uc1a1"},"50202":{"kcode":"8516","tcode":"23","mcode":"5","bcode":"502","code":"50202","name":"\ucf00\uc774\ube14\ubc29\uc1a1"},"50203":{"kcode":"8517","tcode":"23","mcode":"5","bcode":"502","code":"50203","name":"\uc704\uc131\ubc29\uc1a1"},"50204":{"kcode":"8518","tcode":"23","mcode":"5","bcode":"502","code":"50204","name":"\uc778\ud130\ub137\ubc29\uc1a1"},"50205":{"kcode":"8519","tcode":"23","mcode":"5","bcode":"502","code":"50205","name":"\uc885\ud569\uc720\uc120\ubc29\uc1a1"},"50206":{"kcode":"8520","tcode":"23","mcode":"5","bcode":"502","code":"50206","name":"DMB\ubc29\uc1a1"},"50207":{"kcode":"8521","tcode":"23","mcode":"5","bcode":"502","code":"50207","name":"\ub77c\ub514\uc624\ubc29\uc1a1"},"50209":{"kcode":"8523","tcode":"23","mcode":"5","bcode":"502","code":"50209","name":"\ud648\uc1fc\ud551"},"50210":{"kcode":"8524","tcode":"23","mcode":"5","bcode":"502","code":"50210","name":"\ubc29\uc1a1\ud611\ud68c"},"50211":{"kcode":"8525","tcode":"23","mcode":"5","bcode":"502","code":"50211","name":"\ubbf8\ub514\uc5b4"},"50212":{"kcode":"22193","tcode":"23","mcode":"5","bcode":"502","code":"50212","name":"\ubc29\uc1a1\uc7a5\ube44"},"50213":{"kcode":"22194","tcode":"23","mcode":"5","bcode":"502","code":"50213","name":"IPTV"}}},"503":{"kcode":"7947","tcode":"8","mcode":"8","bcode":"5","code":"503","name":"\uc5f0\uc608\u00b7\uc5d4\ud130\ud14c\uc778\uba3c\ud2b8","keyword":{"50301":{"kcode":"8526","tcode":"23","mcode":"5","bcode":"503","code":"50301","name":"\uc5f0\uc608"},"50302":{"kcode":"8527","tcode":"23","mcode":"5","bcode":"503","code":"50302","name":"\uc5f0\uc608\uae30\ud68d\uc0ac"},"50303":{"kcode":"8528","tcode":"23","mcode":"5","bcode":"503","code":"50303","name":"\uc2a4\ud29c\ub514\uc624"},"50304":{"kcode":"8529","tcode":"23","mcode":"5","bcode":"503","code":"50304","name":"\ub9e4\ub2c8\uc9c0\uba3c\ud2b8"},"50306":{"kcode":"8530","tcode":"23","mcode":"5","bcode":"503","code":"50306","name":"\uc5d4\ud130\ud14c\uc778\uba3c\ud2b8"},"50307":{"kcode":"8531","tcode":"23","mcode":"5","bcode":"503","code":"50307","name":"\ud504\ub85c\ub355\uc158"}}},"504":{"kcode":"7948","tcode":"8","mcode":"8","bcode":"5","code":"504","name":"\uad11\uace0\u00b7\ud64d\ubcf4\u00b7\uc804\uc2dc","keyword":{"50401":{"kcode":"8532","tcode":"23","mcode":"5","bcode":"504","code":"50401","name":"\uad11\uace0\uae30\ud68d\uc0ac"},"50404":{"kcode":"8536","tcode":"23","mcode":"5","bcode":"504","code":"50404","name":"\uad11\uace0\ub300\ud589\uc0ac"},"50405":{"kcode":"8537","tcode":"23","mcode":"5","bcode":"504","code":"50405","name":"\ud64d\ubcf4\ub300\ud589\uc0ac"},"50406":{"kcode":"8535","tcode":"23","mcode":"5","bcode":"504","code":"50406","name":"\uad11\uace0\uc601\uc5c5"},"50408":{"kcode":"8539","tcode":"23","mcode":"5","bcode":"504","code":"50408","name":"\uc804\uc2dc\uae30\ud68d"},"50410":{"kcode":"8541","tcode":"23","mcode":"5","bcode":"504","code":"50410","name":"\ucee8\ubca4\uc158"},"50411":{"kcode":"8542","tcode":"23","mcode":"5","bcode":"504","code":"50411","name":"\uad6d\uc81c\ud68c\uc758"},"50412":{"kcode":"8543","tcode":"23","mcode":"5","bcode":"504","code":"50412","name":"\uc774\ubca4\ud2b8\ub300\ud589"},"50413":{"kcode":"8544","tcode":"23","mcode":"5","bcode":"504","code":"50413","name":"ATL"},"50414":{"kcode":"8545","tcode":"23","mcode":"5","bcode":"504","code":"50414","name":"BTL"},"50415":{"kcode":"26655","tcode":"23","mcode":"5","bcode":"504","code":"50415","name":"\ud504\ub85c\ubaa8\uc158\ub300\ud589\uc0ac"}}},"505":{"kcode":"7949","tcode":"8","mcode":"8","bcode":"5","code":"505","name":"\uc601\ud654\u00b7\ubc30\uae09\u00b7\uc74c\uc545","keyword":{"50501":{"kcode":"8546","tcode":"23","mcode":"5","bcode":"505","code":"50501","name":"\uc601\ud654\uae30\ud68d\uc0ac"},"50502":{"kcode":"8547","tcode":"23","mcode":"5","bcode":"505","code":"50502","name":"\uc601\ud654\uc81c\uc791\uc0ac"},"50503":{"kcode":"8548","tcode":"23","mcode":"5","bcode":"505","code":"50503","name":"\ubc30\uae09\uc720\ud1b5\uc0ac"},"50504":{"kcode":"8549","tcode":"23","mcode":"5","bcode":"505","code":"50504","name":"\ud22c\uc790\uc0ac"},"50505":{"kcode":"8550","tcode":"23","mcode":"5","bcode":"505","code":"50505","name":"\uc601\ud654\uad00"},"50506":{"kcode":"8551","tcode":"23","mcode":"5","bcode":"505","code":"50506","name":"\uc74c\ubc18\uae30\ud68d\uc0ac"},"50507":{"kcode":"8552","tcode":"23","mcode":"5","bcode":"505","code":"50507","name":"\uc2a4\ud29c\ub514\uc624"},"50508":{"kcode":"8553","tcode":"23","mcode":"5","bcode":"505","code":"50508","name":"\ub179\uc74c\uc2e4"},"50509":{"kcode":"8554","tcode":"23","mcode":"5","bcode":"505","code":"50509","name":"\ud3b8\uc9d1\uc2e4"},"50510":{"kcode":"22197","tcode":"23","mcode":"5","bcode":"505","code":"50510","name":"\uc601\ud654\ud64d\ubcf4\ub300\ud589"}}},"506":{"kcode":"7950","tcode":"8","mcode":"8","bcode":"5","code":"506","name":"\uacf5\uc5f0\u00b7\uc608\uc220\u00b7\ubb38\ud654","keyword":{"50601":{"kcode":"8555","tcode":"23","mcode":"5","bcode":"506","code":"50601","name":"\ubb38\ud654\uae30\ud68d"},"50602":{"kcode":"8556","tcode":"23","mcode":"5","bcode":"506","code":"50602","name":"\uacf5\uc5f0\uae30\ud68d"},"50603":{"kcode":"8557","tcode":"23","mcode":"5","bcode":"506","code":"50603","name":"\ucf58\uc11c\ud2b8\ud640"},"50604":{"kcode":"8558","tcode":"23","mcode":"5","bcode":"506","code":"50604","name":"\uadf9\ub2e8"},"50605":{"kcode":"8559","tcode":"23","mcode":"5","bcode":"506","code":"50605","name":"\uc18c\uadf9\uc7a5"},"50606":{"kcode":"8560","tcode":"23","mcode":"5","bcode":"506","code":"50606","name":"\uc624\ud398\ub77c\u00b7\ubba4\uc9c0\uceec"},"50607":{"kcode":"8561","tcode":"23","mcode":"5","bcode":"506","code":"50607","name":"\ubb38\ud654\uc608\uc220\ud68c\uad00"},"50608":{"kcode":"8562","tcode":"23","mcode":"5","bcode":"506","code":"50608","name":"\uc544\uce74\ub370\ubbf8"},"50609":{"kcode":"26656","tcode":"23","mcode":"5","bcode":"506","code":"50609","name":"\uacf5\uc5f0\uc608\uc220"}}},"509":{"kcode":"7953","tcode":"8","mcode":"8","bcode":"5","code":"509","name":"\ucd9c\ud310\u00b7\uc778\uc1c4\u00b7\uc0ac\uc9c4","keyword":{"50901":{"kcode":"8592","tcode":"23","mcode":"5","bcode":"509","code":"50901","name":"\ucd9c\ud310\uc0ac"},"50902":{"kcode":"8593","tcode":"23","mcode":"5","bcode":"509","code":"50902","name":"\uc778\uc1c4\u00b7\uc81c\ubcf8"},"50903":{"kcode":"8594","tcode":"23","mcode":"5","bcode":"509","code":"50903","name":"\ud3b8\uc9d1"},"50906":{"kcode":"8597","tcode":"23","mcode":"5","bcode":"509","code":"50906","name":"\uc804\uc790\ucd9c\ud310"},"50908":{"kcode":"8599","tcode":"23","mcode":"5","bcode":"509","code":"50908","name":"\ubcf5\uc0ac"},"50910":{"kcode":"8601","tcode":"23","mcode":"5","bcode":"509","code":"50910","name":"\uc0ac\uc9c4\u00b7\ucd2c\uc601"}}},"510":{"kcode":"21814","tcode":"8","mcode":"8","bcode":"5","code":"510","name":"\uce90\ub9ad\ud130\u00b7\uc560\ub2c8\uba54\uc774\uc158","keyword":{"51001":{"kcode":"21802","tcode":"23","mcode":"5","bcode":"510","code":"51001","name":"\uce90\ub9ad\ud130"},"51002":{"kcode":"21803","tcode":"23","mcode":"5","bcode":"510","code":"51002","name":"\uc560\ub2c8\uba54\uc774\uc158"},"51003":{"kcode":"22198","tcode":"23","mcode":"5","bcode":"510","code":"51003","name":"\ub9cc\ud654"},"51004":{"kcode":"22199","tcode":"23","mcode":"5","bcode":"510","code":"51004","name":"\uba40\ud2f0\u00b7\ub3d9\uc601\uc0c1"},"51005":{"kcode":"26657","tcode":"23","mcode":"5","bcode":"510","code":"51005","name":"\ud50c\ub798\uc2dc\uce90\ub9ad\ud130"},"51006":{"kcode":"26658","tcode":"23","mcode":"5","bcode":"510","code":"51006","name":"\ubb34\uc120\uce90\ub9ad\ud130"}}},"511":{"kcode":"21815","tcode":"8","mcode":"8","bcode":"5","code":"511","name":"\ub514\uc790\uc778\u00b7\uc124\uacc4","keyword":{"51101":{"kcode":"21804","tcode":"23","mcode":"5","bcode":"511","code":"51101","name":"\ub514\uc790\uc778\ud68c\uc0ac"},"51102":{"kcode":"21805","tcode":"23","mcode":"5","bcode":"511","code":"51102","name":"\uc124\uacc4\u00b7CAD"},"51103":{"kcode":"21806","tcode":"23","mcode":"5","bcode":"511","code":"51103","name":"\uc2dc\uac01\ub514\uc790\uc778"},"51104":{"kcode":"21807","tcode":"23","mcode":"5","bcode":"511","code":"51104","name":"\uc0b0\uc5c5\ub514\uc790\uc778"},"51105":{"kcode":"21808","tcode":"23","mcode":"5","bcode":"511","code":"51105","name":"\ud658\uacbd\ub514\uc790\uc778"},"51106":{"kcode":"21809","tcode":"23","mcode":"5","bcode":"511","code":"51106","name":"\uacf5\uc608\ub514\uc790\uc778"},"51108":{"kcode":"22195","tcode":"23","mcode":"5","bcode":"511","code":"51108","name":"\uad11\uace0\ub514\uc790\uc778"},"51109":{"kcode":"22196","tcode":"23","mcode":"5","bcode":"511","code":"51109","name":"\uc804\uc2dc\u00b7\uacf5\uac04\ub514\uc790\uc778"},"51110":{"kcode":"26659","tcode":"23","mcode":"5","bcode":"511","code":"51110","name":"\uba40\ud2f0\ubbf8\ub514\uc5b4\ub514\uc790\uc778"}}}}},"6":{"bcode":"6","name":"\uad50\uc721\uc5c5","code":{"601":{"kcode":"7951","tcode":"8","mcode":"8","bcode":"6","code":"601","name":"\ucd08\uc911\uace0\u00b7\ub300\ud559","keyword":{"60101":{"kcode":"8563","tcode":"23","mcode":"6","bcode":"601","code":"60101","name":"\uad50\uc721\uae30\uad00"},"60102":{"kcode":"8573","tcode":"23","mcode":"6","bcode":"601","code":"60102","name":"\ub300\ud559\uad50"},"60103":{"kcode":"8584","tcode":"23","mcode":"6","bcode":"601","code":"60103","name":"\ud2b9\uc218\ud559\uad50"},"60104":{"kcode":"8585","tcode":"23","mcode":"6","bcode":"601","code":"60104","name":"\uc678\uad6d\uc778\ud559\uad50"},"60105":{"kcode":"22200","tcode":"23","mcode":"6","bcode":"601","code":"60105","name":"\ucd08\ub4f1\ud559\uad50"},"60106":{"kcode":"22201","tcode":"23","mcode":"6","bcode":"601","code":"60106","name":"\uc911\ud559\uad50"},"60107":{"kcode":"22202","tcode":"23","mcode":"6","bcode":"601","code":"60107","name":"\uace0\ub4f1\ud559\uad50"}}},"602":{"kcode":"22203","tcode":"8","mcode":"8","bcode":"6","code":"602","name":"\ud559\uc6d0\u00b7\uc5b4\ud559\uc6d0","keyword":{"60201":{"kcode":"22207","tcode":"23","mcode":"6","bcode":"602","code":"60201","name":"IT\ud559\uc6d0"},"60202":{"kcode":"22208","tcode":"23","mcode":"6","bcode":"602","code":"60202","name":"\uc785\uc2dc\ud559\uc6d0"},"60203":{"kcode":"22209","tcode":"23","mcode":"6","bcode":"602","code":"60203","name":"\uace0\uc2dc\ud559\uc6d0"},"60204":{"kcode":"22210","tcode":"23","mcode":"6","bcode":"602","code":"60204","name":"\uc608\uccb4\ub2a5\ud559\uc6d0"},"60205":{"kcode":"22211","tcode":"23","mcode":"6","bcode":"602","code":"60205","name":"\ubcf4\uc2b5\ud559\uc6d0"},"60206":{"kcode":"22212","tcode":"23","mcode":"6","bcode":"602","code":"60206","name":"\uc5b4\ud559\uc6d0"},"60207":{"kcode":"22213","tcode":"23","mcode":"6","bcode":"602","code":"60207","name":"\ubbf8\uc220\ud559\uc6d0"},"60208":{"kcode":"22214","tcode":"23","mcode":"6","bcode":"602","code":"60208","name":"\uc74c\uc545\ud559\uc6d0"},"60209":{"kcode":"22215","tcode":"23","mcode":"6","bcode":"602","code":"60209","name":"\uc77c\ubcf8\uc5b4\ud559\uc6d0"},"60210":{"kcode":"22216","tcode":"23","mcode":"6","bcode":"602","code":"60210","name":"\uc911\uad6d\uc5b4\ud559\uc6d0"},"60211":{"kcode":"22217","tcode":"23","mcode":"6","bcode":"602","code":"60211","name":"\uc601\uc5b4\ud559\uc6d0"},"60212":{"kcode":"22218","tcode":"23","mcode":"6","bcode":"602","code":"60212","name":"\ud3b8\uc785\ud559\uc6d0"},"60213":{"kcode":"22219","tcode":"23","mcode":"6","bcode":"602","code":"60213","name":"\ub17c\uc220\ud559\uc6d0"},"60214":{"kcode":"22220","tcode":"23","mcode":"6","bcode":"602","code":"60214","name":"\uc720\ud559\uc6d0"}}},"603":{"kcode":"22204","tcode":"8","mcode":"8","bcode":"6","code":"603","name":"\uc720\uc544\u00b7\uc720\uce58\uc6d0","keyword":{"60301":{"kcode":"22221","tcode":"23","mcode":"6","bcode":"603","code":"60301","name":"\uc720\uc544\uc6d0"},"60302":{"kcode":"22222","tcode":"23","mcode":"6","bcode":"603","code":"60302","name":"\uc720\uce58\uc6d0"},"60303":{"kcode":"22223","tcode":"23","mcode":"6","bcode":"603","code":"60303","name":"\uc5b4\ub9b0\uc774\uc9d1"},"60304":{"kcode":"22224","tcode":"23","mcode":"6","bcode":"603","code":"60304","name":"\ubcf4\uc721\uc2dc\uc124"}}},"604":{"kcode":"22205","tcode":"8","mcode":"8","bcode":"6","code":"604","name":"\uad50\uc7ac\u00b7\ud559\uc2b5\uc9c0","keyword":{"60401":{"kcode":"22225","tcode":"23","mcode":"6","bcode":"604","code":"60401","name":"\uad50\uc7ac\uc81c\uc791\u00b7\ucd9c\ud310"},"60402":{"kcode":"22226","tcode":"23","mcode":"6","bcode":"604","code":"60402","name":"\ud559\uc2b5\uc9c0"},"60403":{"kcode":"22227","tcode":"23","mcode":"6","bcode":"604","code":"60403","name":"\ud1b5\uc2e0\uad50\uc721"},"60404":{"kcode":"22228","tcode":"23","mcode":"6","bcode":"604","code":"60404","name":"\uae30\uc5c5\uad50\uc721"},"60405":{"kcode":"22229","tcode":"23","mcode":"6","bcode":"604","code":"60405","name":"\uc804\ud654\uc601\uc5b4"},"60406":{"kcode":"26660","tcode":"23","mcode":"6","bcode":"604","code":"60406","name":"\uc0ac\ud68c\uad50\uc721"}}},"605":{"kcode":"22206","tcode":"8","mcode":"8","bcode":"6","code":"605","name":"\uc804\ubb38\u00b7\uae30\ub2a5\ud559\uc6d0","keyword":{"60501":{"kcode":"22230","tcode":"23","mcode":"6","bcode":"605","code":"60501","name":"\uae30\ub2a5\ud559\uc6d0"},"60502":{"kcode":"22231","tcode":"23","mcode":"6","bcode":"605","code":"60502","name":"\ud328\uc158\u00b7\ub514\uc790\uc778\ud559\uc6d0"},"60503":{"kcode":"22232","tcode":"23","mcode":"6","bcode":"605","code":"60503","name":"\uc790\ub3d9\ucc28\ud559\uc6d0"},"60504":{"kcode":"22233","tcode":"23","mcode":"6","bcode":"605","code":"60504","name":"\ubbf8\uc6a9\ud559\uc6d0"},"60505":{"kcode":"22234","tcode":"23","mcode":"6","bcode":"605","code":"60505","name":"\uc694\ub9ac\ud559\uc6d0"},"60506":{"kcode":"22235","tcode":"23","mcode":"6","bcode":"605","code":"60506","name":"\uc790\uaca9\uc99d\ud559\uc6d0"},"60507":{"kcode":"22236","tcode":"23","mcode":"6","bcode":"605","code":"60507","name":"\ubb34\uc6a9\u00b7\ub304\uc2a4\ud559\uc6d0"},"60508":{"kcode":"22237","tcode":"23","mcode":"6","bcode":"605","code":"60508","name":"\uc9c1\uc5c5\uc804\ubb38\ud559\uad50"}}}}},"7":{"bcode":"7","name":"\uc758\ub8cc\u00b7\uc81c\uc57d\u00b7\ubcf5\uc9c0","code":{"701":{"kcode":"22025","tcode":"8","mcode":"8","bcode":"7","code":"701","name":"\uc758\ub8cc(\uc9c4\ub8cc\uacfc\ubaa9\ubcc4)","keyword":{"70101":{"kcode":"8206","tcode":"23","mcode":"7","bcode":"701","code":"70101","name":"\ubcd1\uc6d0\u00b7\uc9c4\ub8cc"},"70102":{"kcode":"8207","tcode":"23","mcode":"7","bcode":"701","code":"70102","name":"\uc0b0\ubd80\uc778\uacfc"},"70103":{"kcode":"8208","tcode":"23","mcode":"7","bcode":"701","code":"70103","name":"\uce58\uacfc"},"70104":{"kcode":"8209","tcode":"23","mcode":"7","bcode":"701","code":"70104","name":"\uc548\uacfc"},"70105":{"kcode":"8210","tcode":"23","mcode":"7","bcode":"701","code":"70105","name":"\uc815\ud615\uc678\uacfc"},"70106":{"kcode":"8211","tcode":"23","mcode":"7","bcode":"701","code":"70106","name":"\uc774\ube44\uc778\ud6c4\uacfc"},"70107":{"kcode":"8212","tcode":"23","mcode":"7","bcode":"701","code":"70107","name":"\uc18c\uc544\uacfc"},"70108":{"kcode":"8213","tcode":"23","mcode":"7","bcode":"701","code":"70108","name":"\uc131\ud615\uc678\uacfc"},"70109":{"kcode":"8214","tcode":"23","mcode":"7","bcode":"701","code":"70109","name":"\uc784\uc0c1\ubcd1\ub9ac"},"70110":{"kcode":"8215","tcode":"23","mcode":"7","bcode":"701","code":"70110","name":"\ud55c\uc758\uc6d0"},"70111":{"kcode":"8216","tcode":"23","mcode":"7","bcode":"701","code":"70111","name":"\ub3d9\ubb3c\ubcd1\uc6d0"},"70112":{"kcode":"8217","tcode":"23","mcode":"7","bcode":"701","code":"70112","name":"\ub0b4\uacfc"},"70113":{"kcode":"8218","tcode":"23","mcode":"7","bcode":"701","code":"70113","name":"\uc678\uacfc"},"70115":{"kcode":"8220","tcode":"23","mcode":"7","bcode":"701","code":"70115","name":"\uc758\ub8cc\uae30\uae30"},"70116":{"kcode":"8221","tcode":"23","mcode":"7","bcode":"701","code":"70116","name":"\uc751\uae09\uad6c\uc870"},"70117":{"kcode":"8222","tcode":"23","mcode":"7","bcode":"701","code":"70117","name":"\ud53c\ubd80\uacfc"},"70118":{"kcode":"8223","tcode":"23","mcode":"7","bcode":"701","code":"70118","name":"\ubb3c\ub9ac\uce58\ub8cc"},"70119":{"kcode":"22028","tcode":"23","mcode":"7","bcode":"701","code":"70119","name":"\uac00\uc815\uc758\ud559\uacfc"},"70120":{"kcode":"22029","tcode":"23","mcode":"7","bcode":"701","code":"70120","name":"\uc2e0\uacbd\uc678\uacfc"},"70121":{"kcode":"22030","tcode":"23","mcode":"7","bcode":"701","code":"70121","name":"\ub300\uc7a5\ud56d\ubb38\uacfc"},"70122":{"kcode":"22031","tcode":"23","mcode":"7","bcode":"701","code":"70122","name":"\ube44\ub1e8\uae30\uacfc"},"70123":{"kcode":"22032","tcode":"23","mcode":"7","bcode":"701","code":"70123","name":"\uc2e0\uacbd\uc815\uc2e0\uacfc"},"70124":{"kcode":"22033","tcode":"23","mcode":"7","bcode":"701","code":"70124","name":"\uc7ac\ud65c\uc758\ud559\uacfc"},"70125":{"kcode":"22034","tcode":"23","mcode":"7","bcode":"701","code":"70125","name":"\uc601\uc0c1\uc758\ud559\uacfc"},"70126":{"kcode":"34376","tcode":"23","mcode":"7","bcode":"701","code":"70126","name":"\uc911\ud658\uc790\uc2e4"},"70127":{"kcode":"34377","tcode":"23","mcode":"7","bcode":"701","code":"70127","name":"\uc778\uacf5\uc2e0\uc7a5\uc2e4"}}},"702":{"kcode":"22026","tcode":"8","mcode":"8","bcode":"7","code":"702","name":"\uc758\ub8cc(\ubcd1\uc6d0\uc885\ub958\ubcc4)","keyword":{"70201":{"kcode":"22036","tcode":"23","mcode":"7","bcode":"702","code":"70201","name":"\ub300\ud559\ubcd1\uc6d0"},"70202":{"kcode":"22037","tcode":"23","mcode":"7","bcode":"702","code":"70202","name":"\uc885\ud569\ubcd1\uc6d0"},"70203":{"kcode":"22038","tcode":"23","mcode":"7","bcode":"702","code":"70203","name":"\uc804\ubb38\ubcd1\uc6d0"},"70204":{"kcode":"22039","tcode":"23","mcode":"7","bcode":"702","code":"70204","name":"\uac80\uc9c4\uc13c\ud130"},"70205":{"kcode":"22040","tcode":"23","mcode":"7","bcode":"702","code":"70205","name":"\uc815\uc2e0\ubcd1\uc6d0"},"70206":{"kcode":"22041","tcode":"23","mcode":"7","bcode":"702","code":"70206","name":"\uc694\uc591\ubcd1\uc6d0"},"70207":{"kcode":"22042","tcode":"23","mcode":"7","bcode":"702","code":"70207","name":"\uad6d\uacf5\ub9bd\ubcd1\uc6d0"},"70208":{"kcode":"22043","tcode":"23","mcode":"7","bcode":"702","code":"70208","name":"\ubcf4\uac74\uc18c"},"70209":{"kcode":"22044","tcode":"23","mcode":"7","bcode":"702","code":"70209","name":"\ub178\uc778\ubcd1\uc6d0"},"70210":{"kcode":"22045","tcode":"23","mcode":"7","bcode":"702","code":"70210","name":"\ud55c\ubc29\ubcd1\uc6d0"}}},"703":{"kcode":"22027","tcode":"8","mcode":"8","bcode":"7","code":"703","name":"\uc81c\uc57d\u00b7\ubcf4\uac74\u00b7\ubc14\uc774\uc624","keyword":{"70301":{"kcode":"8361","tcode":"23","mcode":"7","bcode":"703","code":"70301","name":"\uac74\uac15\ubcf4\uc870\uc2dd\ud488"},"70302":{"kcode":"8362","tcode":"23","mcode":"7","bcode":"703","code":"70302","name":"\uc758\uc57d\u00b7\uc81c\uc57d"},"70303":{"kcode":"8364","tcode":"23","mcode":"7","bcode":"703","code":"70303","name":"\uc758\ub8cc\u00b7\ubcf4\uac74"},"70304":{"kcode":"8365","tcode":"23","mcode":"7","bcode":"703","code":"70304","name":"\uc704\uc0dd"},"70305":{"kcode":"8366","tcode":"23","mcode":"7","bcode":"703","code":"70305","name":"\uc601\uc591\uc0ac"},"70306":{"kcode":"8367","tcode":"23","mcode":"7","bcode":"703","code":"70306","name":"\ubc14\uc774\uc624"},"70307":{"kcode":"8368","tcode":"23","mcode":"7","bcode":"703","code":"70307","name":"\uc0dd\uba85\uacf5\ud559"},"70308":{"kcode":"8369","tcode":"23","mcode":"7","bcode":"703","code":"70308","name":"\uc57d\uad6d"}}},"704":{"kcode":"31350","tcode":"8","mcode":"8","bcode":"7","code":"704","name":"\uc0ac\ud68c\ubcf5\uc9c0","keyword":{"70401":{"kcode":"31351","tcode":"23","mcode":"7","bcode":"704","code":"70401","name":"\ubcf5\uc9c0\uc2dc\uc124"},"70402":{"kcode":"31352","tcode":"23","mcode":"7","bcode":"704","code":"70402","name":"\ub178\uc778\ubcf5\uc9c0"},"70403":{"kcode":"31353","tcode":"23","mcode":"7","bcode":"704","code":"70403","name":"\uc694\uc591\ubcf4\ud638"},"70404":{"kcode":"31354","tcode":"23","mcode":"7","bcode":"704","code":"70404","name":"\uc7a5\uc560\uc2dc\uc124"}}}}},"8":{"bcode":"8","name":"\ud310\ub9e4\u00b7\uc720\ud1b5","code":{"801":{"kcode":"22052","tcode":"8","mcode":"8","bcode":"8","code":"801","name":"\ud310\ub9e4(\ub9e4\uc7a5\uc885\ub958\ubcc4)","keyword":{"80101":{"kcode":"8067","tcode":"23","mcode":"8","bcode":"801","code":"80101","name":"\ud560\uc778\uc810"},"80102":{"kcode":"8068","tcode":"23","mcode":"8","bcode":"801","code":"80102","name":"\ubc31\ud654\uc810"},"80103":{"kcode":"8069","tcode":"23","mcode":"8","bcode":"801","code":"80103","name":"\ud648\uc1fc\ud551"},"80104":{"kcode":"8082","tcode":"23","mcode":"8","bcode":"801","code":"80104","name":"\ub300\ud615\ub9c8\ud2b8"},"80105":{"kcode":"8086","tcode":"23","mcode":"8","bcode":"801","code":"80105","name":"\ud3b8\uc758\uc810"},"80106":{"kcode":"22096","tcode":"23","mcode":"8","bcode":"801","code":"80106","name":"\ub86f\ub370\ubc31\ud654\uc810"},"80107":{"kcode":"22097","tcode":"23","mcode":"8","bcode":"801","code":"80107","name":"\uc2e0\uc138\uacc4\ubc31\ud654\uc810"},"80108":{"kcode":"22098","tcode":"23","mcode":"8","bcode":"801","code":"80108","name":"\ud604\ub300\ubc31\ud654\uc810"},"80109":{"kcode":"22099","tcode":"23","mcode":"8","bcode":"801","code":"80109","name":"\uc774\ub9c8\ud2b8"},"80110":{"kcode":"22100","tcode":"23","mcode":"8","bcode":"801","code":"80110","name":"\ub86f\ub370\ub9c8\ud2b8"},"80111":{"kcode":"22101","tcode":"23","mcode":"8","bcode":"801","code":"80111","name":"\ud648\ud50c\ub7ec\uc2a4"},"80112":{"kcode":"8075","tcode":"23","mcode":"8","bcode":"801","code":"80112","name":"\uba74\uc138\uc810"},"80113":{"kcode":"22102","tcode":"23","mcode":"8","bcode":"801","code":"80113","name":"\uc1fc\ud551\ubab0"},"80114":{"kcode":"22103","tcode":"23","mcode":"8","bcode":"801","code":"80114","name":"\ub85c\ub4dc\uc0f5"}}},"802":{"kcode":"22053","tcode":"8","mcode":"8","bcode":"8","code":"802","name":"\ud310\ub9e4(\uc0c1\ud488\ud488\ubaa9\ubcc4)","keyword":{"80201":{"kcode":"22104","tcode":"23","mcode":"8","bcode":"802","code":"80201","name":"\ud310\ub9e4"},"80202":{"kcode":"22105","tcode":"23","mcode":"8","bcode":"802","code":"80202","name":"\ud654\uc7a5\ud488\ub9e4\uc7a5"},"80203":{"kcode":"22106","tcode":"23","mcode":"8","bcode":"802","code":"80203","name":"\uac00\uad6c\u00b7\uce68\uad6c\u00b7\uc18c\ud488"},"80204":{"kcode":"22107","tcode":"23","mcode":"8","bcode":"802","code":"80204","name":"\uaf43\uc9d1"},"80205":{"kcode":"22108","tcode":"23","mcode":"8","bcode":"802","code":"80205","name":"\uc2a4\ud3ec\uce20\u00b7\ub808\uc800\uc6a9\ud488"},"80206":{"kcode":"22109","tcode":"23","mcode":"8","bcode":"802","code":"80206","name":"\uc720\uc544\uc6a9\ud488"},"80207":{"kcode":"22110","tcode":"23","mcode":"8","bcode":"802","code":"80207","name":"\uc11c\uc801\u00b7\uc74c\ubc18"},"80208":{"kcode":"22111","tcode":"23","mcode":"8","bcode":"802","code":"80208","name":"IT\u00b7\ud1b5\uc2e0\uae30\uae30\ud310\ub9e4"},"80209":{"kcode":"22112","tcode":"23","mcode":"8","bcode":"802","code":"80209","name":"\uac00\uc804\u00b7\uc624\ub514\uc624\ud310\ub9e4"},"80210":{"kcode":"22113","tcode":"23","mcode":"8","bcode":"802","code":"80210","name":"\ubb38\uad6c\u00b7\ud32c\uc2dc"},"80211":{"kcode":"22114","tcode":"23","mcode":"8","bcode":"802","code":"80211","name":"\uc758\ub958\ub9e4\uc7a5"},"80212":{"kcode":"22115","tcode":"23","mcode":"8","bcode":"802","code":"80212","name":"\uc7a1\ud654\ub9e4\uc7a5"},"80213":{"kcode":"22116","tcode":"23","mcode":"8","bcode":"802","code":"80213","name":"\uad6c\ub450\u00b7\uc2e0\ubc1c"},"80214":{"kcode":"22117","tcode":"23","mcode":"8","bcode":"802","code":"80214","name":"\uc8fc\ubc29\uc6a9\ud488"},"80215":{"kcode":"22118","tcode":"23","mcode":"8","bcode":"802","code":"80215","name":"\uc790\ub3d9\ucc28\ub9e4\uc7a5"}}},"803":{"kcode":"22054","tcode":"8","mcode":"8","bcode":"8","code":"803","name":"\uc720\ud1b5\u00b7\ubb34\uc5ed\u00b7\uc0c1\uc0ac","keyword":{"80301":{"kcode":"22119","tcode":"23","mcode":"8","bcode":"803","code":"80301","name":"\uc720\ud1b5\uc5c5"},"80302":{"kcode":"22120","tcode":"23","mcode":"8","bcode":"803","code":"80302","name":"\ubb3c\ub958\uc5c5"},"80303":{"kcode":"22121","tcode":"23","mcode":"8","bcode":"803","code":"80303","name":"\ubb34\uc5ed\uc5c5"},"80304":{"kcode":"22122","tcode":"23","mcode":"8","bcode":"803","code":"80304","name":"\uc0c1\uc0ac"},"80305":{"kcode":"22123","tcode":"23","mcode":"8","bcode":"803","code":"80305","name":"\uc218\uc785\uc720\ud1b5"},"80306":{"kcode":"22124","tcode":"23","mcode":"8","bcode":"803","code":"80306","name":"\ubb3c\ub958\uc13c\ud130"},"80307":{"kcode":"22125","tcode":"23","mcode":"8","bcode":"803","code":"80307","name":"\ucee8\ud14c\uc774\ub108"}}},"804":{"kcode":"22055","tcode":"8","mcode":"8","bcode":"8","code":"804","name":"\uc6b4\uc1a1\u00b7\uc6b4\uc218\u00b7\ubb3c\ub958","keyword":{"80401":{"kcode":"8146","tcode":"23","mcode":"8","bcode":"804","code":"80401","name":"\uc721\uc0c1\uc6b4\uc1a1"},"80402":{"kcode":"8147","tcode":"23","mcode":"8","bcode":"804","code":"80402","name":"\ud574\uc0c1\uc6b4\uc1a1"},"80403":{"kcode":"8148","tcode":"23","mcode":"8","bcode":"804","code":"80403","name":"\ud56d\uacf5\uc6b4\uc1a1"},"80404":{"kcode":"8149","tcode":"23","mcode":"8","bcode":"804","code":"80404","name":"\ubcf4\uc138\uc6b4\uc1a1"},"80405":{"kcode":"8150","tcode":"23","mcode":"8","bcode":"804","code":"80405","name":"\ucca0\ub3c4"},"80406":{"kcode":"8151","tcode":"23","mcode":"8","bcode":"804","code":"80406","name":"\uc9c0\ud558\ucca0"},"80407":{"kcode":"8152","tcode":"23","mcode":"8","bcode":"804","code":"80407","name":"\ud0dd\uc2dc"},"80408":{"kcode":"8153","tcode":"23","mcode":"8","bcode":"804","code":"80408","name":"\uc2dc\ub0b4\ubc84\uc2a4"},"80409":{"kcode":"8154","tcode":"23","mcode":"8","bcode":"804","code":"80409","name":"\uace0\uc18d\ubc84\uc2a4"},"80410":{"kcode":"8155","tcode":"23","mcode":"8","bcode":"804","code":"80410","name":"\ubc30\uc1a1\u00b7\ud0dd\ubc30"},"80411":{"kcode":"8072","tcode":"23","mcode":"8","bcode":"804","code":"80411","name":"\ud035\uc11c\ube44\uc2a4"},"80412":{"kcode":"8074","tcode":"23","mcode":"8","bcode":"804","code":"80412","name":"\ud3ec\uc7a5\uc774\uc0ac"},"80413":{"kcode":"8162","tcode":"23","mcode":"8","bcode":"804","code":"80413","name":"\ucc3d\uace0\u00b7\ubcf4\uad00"},"80414":{"kcode":"8167","tcode":"23","mcode":"8","bcode":"804","code":"80414","name":"\uc6b4\uc1a1\u00b7\uc6b4\uc218"},"80415":{"kcode":"21785","tcode":"23","mcode":"8","bcode":"804","code":"80415","name":"\uc6b0\ud3b8\u00b7\uc6b0\uccb4\uad6d"}}}}},"9":{"bcode":"9","name":"\uac74\uc124\uc5c5","code":{"901":{"kcode":"7919","tcode":"8","mcode":"8","bcode":"9","code":"901","name":"\uac74\uc124\u00b7\uac74\ucd95\u00b7\ud1a0\ubaa9\u00b7\uc2dc\uacf5","keyword":{"90101":{"kcode":"8272","tcode":"23","mcode":"9","bcode":"901","code":"90101","name":"\uac74\uc124\ud68c\uc0ac"},"90102":{"kcode":"8273","tcode":"23","mcode":"9","bcode":"901","code":"90102","name":"\ud1a0\ubaa9\ud68c\uc0ac"},"90103":{"kcode":"8277","tcode":"23","mcode":"9","bcode":"901","code":"90103","name":"\uc2dc\uacf5\uc0ac"},"90104":{"kcode":"8287","tcode":"23","mcode":"9","bcode":"901","code":"90104","name":"\uac10\ub9ac\ud68c\uc0ac"},"90105":{"kcode":"22129","tcode":"23","mcode":"9","bcode":"901","code":"90105","name":"\ub3c4\ub85c\u00b7\ud56d\ub9cc"},"90106":{"kcode":"8284","tcode":"23","mcode":"9","bcode":"901","code":"90106","name":"\ud1a0\uc9c0\u00b7\uce21\ub7c9"},"90107":{"kcode":"8300","tcode":"23","mcode":"9","bcode":"901","code":"90107","name":"\uad50\ub7c9"},"90108":{"kcode":"22130","tcode":"23","mcode":"9","bcode":"901","code":"90108","name":"1\uad70\uac74\uc124"},"90109":{"kcode":"8288","tcode":"23","mcode":"9","bcode":"901","code":"90109","name":"\uac74\uc124\ud604\uc7a5"},"90110":{"kcode":"8274","tcode":"23","mcode":"9","bcode":"901","code":"90110","name":"\uac74\ucd95"}}},"902":{"kcode":"22126","tcode":"8","mcode":"8","bcode":"9","code":"902","name":"\uc2e4\ub0b4\u00b7\uc778\ud14c\ub9ac\uc5b4\u00b7\uc870\uacbd","keyword":{"90201":{"kcode":"8295","tcode":"23","mcode":"9","bcode":"902","code":"90201","name":"\uc2e4\ub0b4\uac74\ucd95"},"90202":{"kcode":"8298","tcode":"23","mcode":"9","bcode":"902","code":"90202","name":"\uc778\ud14c\ub9ac\uc5b4"},"90203":{"kcode":"22131","tcode":"23","mcode":"9","bcode":"902","code":"90203","name":"\uc0e4\uc2dc\u00b7\ubca0\ub780\ub2e4"},"90204":{"kcode":"22132","tcode":"23","mcode":"9","bcode":"902","code":"90204","name":"\ub9ac\ubaa8\ub378\ub9c1"},"90205":{"kcode":"22133","tcode":"23","mcode":"9","bcode":"902","code":"90205","name":"\ub3c4\ubc30\u00b7\ubcbd\uc9c0"},"90206":{"kcode":"8299","tcode":"23","mcode":"9","bcode":"902","code":"90206","name":"\uac74\ucd95\uc124\uacc4\u00b7CAD"},"90207":{"kcode":"8292","tcode":"23","mcode":"9","bcode":"902","code":"90207","name":"\uc870\uacbd"}}},"903":{"kcode":"22127","tcode":"8","mcode":"8","bcode":"9","code":"903","name":"\ud658\uacbd\u00b7\uc124\ube44","keyword":{"90301":{"kcode":"8291","tcode":"23","mcode":"9","bcode":"903","code":"90301","name":"\uc0c1\ud558\uc218\ub3c4"},"90302":{"kcode":"8301","tcode":"23","mcode":"9","bcode":"903","code":"90302","name":"\ubb3c\ud0f1\ud06c\u00b7\uc218\uc790\uc6d0"},"90303":{"kcode":"22134","tcode":"23","mcode":"9","bcode":"903","code":"90303","name":"\ud3d0\uc218\ucc98\ub9ac"},"90304":{"kcode":"8297","tcode":"23","mcode":"9","bcode":"903","code":"90304","name":"\uacf5\uc870\ub0c9\ub3d9"},"90305":{"kcode":"8290","tcode":"23","mcode":"9","bcode":"903","code":"90305","name":"\ud50c\ub79c\ud2b8"},"90306":{"kcode":"8294","tcode":"23","mcode":"9","bcode":"903","code":"90306","name":"\uc18c\ubc29\u00b7\ubc29\uc7ac"},"90307":{"kcode":"8278","tcode":"23","mcode":"9","bcode":"903","code":"90307","name":"\uc804\uae30\uc124\ube44"},"90308":{"kcode":"22135","tcode":"23","mcode":"9","bcode":"903","code":"90308","name":"\ud1b5\uc2e0\uc124\ube44"},"90309":{"kcode":"22136","tcode":"23","mcode":"9","bcode":"903","code":"90309","name":"\uac00\uc2a4\uc124\ube44"},"90310":{"kcode":"22137","tcode":"23","mcode":"9","bcode":"903","code":"90310","name":"\ub0c9\ub09c\ubc29\uc124\ube44"},"90311":{"kcode":"8296","tcode":"23","mcode":"9","bcode":"903","code":"90311","name":"\ube44\ud30c\uad34\uac80\uc0ac"},"90312":{"kcode":"8286","tcode":"23","mcode":"9","bcode":"903","code":"90312","name":"\ud658\uacbd"},"90313":{"kcode":"8280","tcode":"23","mcode":"9","bcode":"903","code":"90313","name":"\uc548\uc804\uad00\ub9ac"},"90314":{"kcode":"22138","tcode":"23","mcode":"9","bcode":"903","code":"90314","name":"\uc2dc\uc124"}}},"904":{"kcode":"22128","tcode":"8","mcode":"8","bcode":"9","code":"904","name":"\ubd80\ub3d9\uc0b0\u00b7\uc784\ub300\u00b7\uc911\uac1c","keyword":{"90401":{"kcode":"22139","tcode":"23","mcode":"9","bcode":"904","code":"90401","name":"\uacf5\uc778\uc911\uac1c\uc0ac"},"90402":{"kcode":"22140","tcode":"23","mcode":"9","bcode":"904","code":"90402","name":"\ubd80\ub3d9\uc0b0\uc911\uac1c"},"90403":{"kcode":"22141","tcode":"23","mcode":"9","bcode":"904","code":"90403","name":"\uc784\ub300\ucee8\uc124\ud305"},"90404":{"kcode":"22142","tcode":"23","mcode":"9","bcode":"904","code":"90404","name":"\ud1a0\uc9c0\uac1c\ubc1c"},"90405":{"kcode":"22143","tcode":"23","mcode":"9","bcode":"904","code":"90405","name":"\ubd80\ub3d9\uc0b0\uac1c\ubc1c"},"90406":{"kcode":"22144","tcode":"23","mcode":"9","bcode":"904","code":"90406","name":"\ud574\uc678\ubd80\ub3d9\uc0b0"},"90407":{"kcode":"22145","tcode":"23","mcode":"9","bcode":"904","code":"90407","name":"\ubd84\uc591\uc0ac\ubb34\uc18c"},"90408":{"kcode":"22146","tcode":"23","mcode":"9","bcode":"904","code":"90408","name":"\uacbd\ub9e4\u00b7\uacf5\ub9e4"},"90409":{"kcode":"22147","tcode":"23","mcode":"9","bcode":"904","code":"90409","name":"\uc0ac\ubb34\uc2e4"},"90410":{"kcode":"22148","tcode":"23","mcode":"9","bcode":"904","code":"90410","name":"\uc0c1\uac00"},"90411":{"kcode":"22149","tcode":"23","mcode":"9","bcode":"904","code":"90411","name":"\ube4c\ub529"},"90412":{"kcode":"22150","tcode":"23","mcode":"9","bcode":"904","code":"90412","name":"\ud1a0\uc9c0"},"90413":{"kcode":"22151","tcode":"23","mcode":"9","bcode":"904","code":"90413","name":"\uc544\ud30c\ud2b8"},"90414":{"kcode":"22152","tcode":"23","mcode":"9","bcode":"904","code":"90414","name":"\uc624\ud53c\uc2a4\ud154"},"90415":{"kcode":"22153","tcode":"23","mcode":"9","bcode":"904","code":"90415","name":"\ubaa8\ub378\ud558\uc6b0\uc2a4"}}}}},"10":{"bcode":"10","name":"\uae30\uad00\u00b7\ud611\ud68c","code":{"1001":{"kcode":"22016","tcode":"8","mcode":"8","bcode":"10","code":"1001","name":"\uc815\ubd80\u00b7\uacf5\uacf5\uae30\uad00\u00b7\uacf5\uae30\uc5c5","keyword":{"100101":{"kcode":"8187","tcode":"23","mcode":"10","bcode":"1001","code":"100101","name":"\uacf5\uacf5\uae30\uad00"},"100102":{"kcode":"8188","tcode":"23","mcode":"10","bcode":"1001","code":"100102","name":"\uacf5\uc0ac\u00b7\uacf5\uae30\uc5c5"},"100103":{"kcode":"8189","tcode":"23","mcode":"10","bcode":"1001","code":"100103","name":"\uacf5\ub2e8"},"100104":{"kcode":"8191","tcode":"23","mcode":"10","bcode":"1001","code":"100104","name":"\uacf5\ubb34\uc6d0"},"100105":{"kcode":"8198","tcode":"23","mcode":"10","bcode":"1001","code":"100105","name":"\uc601\uc0ac\uad00\u00b7\ub300\uc0ac\uad00"},"100106":{"kcode":"8199","tcode":"23","mcode":"10","bcode":"1001","code":"100106","name":"\uc678\uad6d\uad00\uad11\uccad"},"100107":{"kcode":"8200","tcode":"23","mcode":"10","bcode":"1001","code":"100107","name":"\uc911\uc559\uc815\ubd80\uae30\uad00"},"100108":{"kcode":"8201","tcode":"23","mcode":"10","bcode":"1001","code":"100108","name":"\uc9c0\ubc29\uc790\uce58\ub2e8\uccb4"},"100110":{"kcode":"8203","tcode":"23","mcode":"10","bcode":"1001","code":"100110","name":"\uc815\ub2f9"},"100111":{"kcode":"22021","tcode":"23","mcode":"10","bcode":"1001","code":"100111","name":"\ub3c4\uc11c\uad00"},"100112":{"kcode":"22022","tcode":"23","mcode":"10","bcode":"1001","code":"100112","name":"\ubc15\ubb3c\uad00\u00b7\ubbf8\uc220\uad00"},"100113":{"kcode":"22023","tcode":"23","mcode":"10","bcode":"1001","code":"100113","name":"\uad6d\ub9bd\uacf5\uc6d0"}}},"1002":{"kcode":"22017","tcode":"8","mcode":"8","bcode":"10","code":"1002","name":"\ud611\ud68c\u00b7\ub2e8\uccb4","keyword":{"100201":{"kcode":"8190","tcode":"23","mcode":"10","bcode":"1002","code":"100201","name":"\ud611\ud68c"},"100202":{"kcode":"8192","tcode":"23","mcode":"10","bcode":"1002","code":"100202","name":"\uc870\ud569"},"100203":{"kcode":"8193","tcode":"23","mcode":"10","bcode":"1002","code":"100203","name":"\uc885\uad50\ub2e8\uccb4"},"100204":{"kcode":"8194","tcode":"23","mcode":"10","bcode":"1002","code":"100204","name":"\uc7ac\ub2e8\ubc95\uc778"},"100205":{"kcode":"8195","tcode":"23","mcode":"10","bcode":"1002","code":"100205","name":"\uc0ac\ub2e8\ubc95\uc778"},"100206":{"kcode":"8196","tcode":"23","mcode":"10","bcode":"1002","code":"100206","name":"\uc5f0\ud569\ud68c"},"100207":{"kcode":"8197","tcode":"23","mcode":"10","bcode":"1002","code":"100207","name":"\uc5f0\ub9f9"},"100208":{"kcode":"8204","tcode":"23","mcode":"10","bcode":"1002","code":"100208","name":"\uc2dc\ubbfc\ub2e8\uccb4"},"100209":{"kcode":"8205","tcode":"23","mcode":"10","bcode":"1002","code":"100209","name":"NGO\u00b7\uc0ac\ud68c\uacf5\ud5cc"},"100210":{"kcode":"22035","tcode":"23","mcode":"10","bcode":"1002","code":"100210","name":"\uad6d\uc81c\uae30\uad6c"}}},"1003":{"kcode":"22018","tcode":"8","mcode":"8","bcode":"10","code":"1003","name":"\ubc95\ub960\u00b7\ubc95\ubb34\u00b7\ud2b9\ud5c8","keyword":{"100301":{"kcode":"8482","tcode":"23","mcode":"10","bcode":"1003","code":"100301","name":"\ubc95\ub960\uc0ac\ubb34\uc18c"},"100302":{"kcode":"8483","tcode":"23","mcode":"10","bcode":"1003","code":"100302","name":"\ubc95\ub960\uc0c1\ub2f4"},"100303":{"kcode":"8484","tcode":"23","mcode":"10","bcode":"1003","code":"100303","name":"\ub85c\ud38c"},"100304":{"kcode":"8485","tcode":"23","mcode":"10","bcode":"1003","code":"100304","name":"\ubcc0\ud638\uc0ac\uc0ac\ubb34\uc2e4"},"100305":{"kcode":"8486","tcode":"23","mcode":"10","bcode":"1003","code":"100305","name":"\ud2b9\ud5c8\uc0ac\ubb34\uc18c"},"100306":{"kcode":"8487","tcode":"23","mcode":"10","bcode":"1003","code":"100306","name":"\ubc95\ubb34\uc0ac\ubb34\uc18c"},"100307":{"kcode":"8488","tcode":"23","mcode":"10","bcode":"1003","code":"100307","name":"\ubc95\ubb34\ubc95\uc778"},"100308":{"kcode":"8489","tcode":"23","mcode":"10","bcode":"1003","code":"100308","name":"\ub178\ubb34\ubc95\uc778"},"100309":{"kcode":"22024","tcode":"23","mcode":"10","bcode":"1003","code":"100309","name":"\ubcc0\ub9ac\uc0ac\uc0ac\ubb34\uc18c"}}},"1004":{"kcode":"22019","tcode":"8","mcode":"8","bcode":"10","code":"1004","name":"\uc138\ubb34\u00b7\ud68c\uacc4","keyword":{"100401":{"kcode":"8490","tcode":"23","mcode":"10","bcode":"1004","code":"100401","name":"\uc138\ubb34\ud68c\uacc4\uc0ac\ubb34\uc18c"},"100402":{"kcode":"8491","tcode":"23","mcode":"10","bcode":"1004","code":"100402","name":"\uc138\ubb34\ubc95\uc778"},"100403":{"kcode":"8492","tcode":"23","mcode":"10","bcode":"1004","code":"100403","name":"\uc138\ubb34\ucee8\uc124\ud305"},"100404":{"kcode":"8493","tcode":"23","mcode":"10","bcode":"1004","code":"100404","name":"\ud68c\uacc4\ubc95\uc778"}}},"1005":{"kcode":"22020","tcode":"8","mcode":"8","bcode":"10","code":"1005","name":"\uc5f0\uad6c\uc18c\u00b7\ucee8\uc124\ud305\u00b7\uc870\uc0ac","keyword":{"100501":{"kcode":"8586","tcode":"23","mcode":"10","bcode":"1005","code":"100501","name":"\uc5f0\uad6c\uc18c"},"100502":{"kcode":"8587","tcode":"23","mcode":"10","bcode":"1005","code":"100502","name":"\ucee8\uc124\ud305"},"100503":{"kcode":"8588","tcode":"23","mcode":"10","bcode":"1005","code":"100503","name":"\uacbd\uc81c\uc5f0\uad6c\uc18c"},"100504":{"kcode":"8589","tcode":"23","mcode":"10","bcode":"1005","code":"100504","name":"\uacbd\uc601\uc5f0\uad6c\uc18c"},"100505":{"kcode":"8590","tcode":"23","mcode":"10","bcode":"1005","code":"100505","name":"\uc870\uc0ac\ubd84\uc11d"},"100506":{"kcode":"8591","tcode":"23","mcode":"10","bcode":"1005","code":"100506","name":"\uc5f0\uad6c\uc6d0"}}}}}}</script>
						<script type="text/template" id="request_job_category">
    <div class="layer_pop_manage layer_hope" data-layer_id="request_job_category">
        <div class="layer_manage_wrap">
            <h4>직종 추가요청</h4>
            <p class="txt">
                직종분류를 선택하신 후 추가를 원하는 직종명을 입력하시기 바랍니다.<br>
                요청하신 사항은 검토 후에 반영됩니다.
            </p>
            <fieldset>
                <legend>직종 추가요청</legend>
                <table class="manage_list_table reg_table">
                    <caption>직종 추가요청</caption>
                    <colgroup>
                        <col style="width: 120px;">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">1차 직종<span class="essential">*</span></th>
                        <td class="file_select">
                            <select name="add_bcode">
                                <option value="1" label="경영·사무">경영·사무</option><option value="10" label="유통·무역">유통·무역</option><option value="2" label="영업·고객상담">영업·고객상담</option><option value="3" label="생산·제조">생산·제조</option><option value="4" label="IT·인터넷">IT·인터넷</option><option value="12" label="디자인">디자인</option><option value="5" label="전문직">전문직</option><option value="6" label="교육">교육</option><option value="7" label="미디어">미디어</option><option value="8" label="특수계층·공공">특수계층·공공</option><option value="9" label="건설">건설</option><option value="11" label="서비스">서비스</option><option value="13" label="의료">의료</option>                            </select>
                        </td>
                    </tr>
                    <tr class="onlyPortfolio">
                        <th scope="row">추가 직종<span class="essential">*</span></th>
                        <td>
                            <textarea name="add_contents" style="-ms-word-break: break-all;"></textarea>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="bottom_btn_wrap">
                    <button type="button" class="btn_basic_type05 btn_job_add">완료</button>
                    <button type="button" class="btn_basic_type01 btn_close">취소</button>
                </div>
            </fieldset>

            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="change_order">
    <div class="layer_pop_manage layer_change" data-layer_id="change_order">
        <div class="layer_manage_wrap">
            <h4></h4>
            <p class="txt"></p>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
            <div class="area_change_order">
                <ul class="list_change_order">
                    <!--<li class="on">자기소개</li>-->
                </ul>
                <div class="area_change_btn">
                    <button type="button" class="btn_up"><span class="blind">위</span></button>
                    <button type="button" class="btn_down"><span class="blind">아래</span></button>
                    <button type="button" class="btn_up_all"><span class="blind">최상위</span></button>
                    <button type="button" class="btn_down_all"><span class="blind">취하위</span></button>
                    <button type="button" class="btn_reset"><span>초기화</span></button>
                </div>
            </div>
            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type05 btn_save">완료</button>
                <button type="button" class="btn_basic_type01 btn_close">취소</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="save_common">
    <div class="layer_pop_manage layer_apply" data-layer_id="save_common">
        <div class="layer_manage_wrap">
            <h4>이력서 동시 적용</h4>
            <p class="txt">작성하신 내용을 다른 이력서에도 적용하실 수 있습니다.<br><strong>동시 적용하시겠습니까?</strong></p>
            <fieldset>
                <legend>이력서 동시 적용</legend>
                <div class="area_apply">
                    <div class="box_apply_radio">
                        <label class="sri_check sri_radio" for="save_common_fl_y">
                            <input type="radio" id="save_common_fl_y" name="save_common_fl" class="inp_check" value="y">
                            <span class="txt_check">예</span>
                        </label>
                        <label class="sri_check sri_radio" for="save_common_fl_n">
                            <input type="radio" id="save_common_fl_n" name="save_common_fl" class="inp_check" value="n">
                            <span class="txt_check">아니오</span>
                        </label>
                    </div>
                    <div class="box_apply_check" style="display:none;">
                        <!--<label class="sri_check" for="apply_check">
                            <input class="inp_check" id="apply_check" type="checkbox" value="">
                            <span class="txt_check">전체</span>
                        </label>-->
                    </div>
                </div>
            </fieldset>

            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type05 btn_save">완료</button>
            </div>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="validation_fail">
    <div class="layer_pop_manage layer_necessary" data-layer_id="validation_fail" style="left: 175px; top: 234.5px; margin-left: 0;">
        <div class="layer_manage_wrap">
            <h4><!-- 제목 --></h4>
            <p class="txt"><!-- 내용 --></p>
            <div class="area_table_scroll">
                <table class="manage_list_table reg_table">
                    <caption>필수 입력항목</caption>
                    <colgroup>
                        <col style="width:145px;">
                        <col style="width:*;">
                    </colgroup>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div class="bottom_btn_wrap">
<!--                <button type="button" class="btn_basic_type02 btn_incomplete_save">미완성 이력서로 저장</button>-->
                <button type="button" class="btn_basic_type05 btn_confirm">확인</button>
            </div>
            <button type="button" class="btn_layer_close btn_close" onclick=""><span>닫기</span></button>
        </div>
    </div>
</script>
						<script type="text/template" id="svq_select_job_code">
    <div class="layer_pop_manage layer_job_select" data-layer_id="svq_select_job_code" style="width:360px;">
        <input type="hidden" name="apply_id">
        <div class="layer_manage_wrap">
            <h4>직무적합도</h4>
            <p class="txt">
                선택하신 직종과의 적합도를 함께 분석해드립니다.
            </p>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
            <div class="job_select">
                <select name="job_code" title="직종 선택">
                    <option value="">직종 선택</option>
                </select>
            </div>
            <div class="job_select_notice">
                ※ 직종 선택은 시험당 <span class="point">1회</span> 가능합니다.
            </div>
            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type05 btn_save">검사 결과 확인하기</button>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="item_import">
    <div class="layer_pop_manage layer_manage_profile">
        <div class="layer_manage_wrap">

            <div class="bottom_btn_wrap">
                <button type="button" class="btn_cancel">취소</button>
                <button type="button" class="btn_confirm">불러오기</button>
            </div>
            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>

						<script type="text/template" id="import_school_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption><!-- CAPTION --></caption>
                <colgroup>
                    <col width="58">
                    <col width="140">
                    <col width="86">
                    <col>
                    <col width="136">
                    <col width="85">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">선택</th>
                    <th scope="col">재학기간</th>
                    <th scope="col">구분</th>
                    <th scope="col">학교명 (소재지)</th>
                    <th scope="col">전공</th>
                    <th scope="col">학점</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_career_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>경력사항 리스트</caption>
	            <colgroup>
		            <col width="58">
		            <col width="140">
		            <col>
		            <col width="110">
		            <col width="120">
		            <col width="90">
	            </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <span class="inpChk">
                            <input type="checkbox" name="import_all_check" id="import_all_check">
                            <label class="lbl hide" for="import_all_check">전체선택</label>
                        </span>
                    </th>
                    <th scope="col">근무기간</th>
                    <th scope="col">회사명</th>
                    <th scope="col">부서/직급/직책</th>
                    <th scope="col">지역/직종</th>
                    <th scope="col">연봉</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_activity_list">
    <div>
        <div>
            <div class="title_wrap"><!-- COUNT --></div>
            <div class="table_scroll">
                <table class="manage_list_table">
                    <caption>대외활동 리스트</caption>
                    <colgroup>
                        <col width="58">
                        <col width="140">
                        <col width="130">
                        <col>
                        <col width="167">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col">
                            <span class="inpChk">
                                <input type="checkbox" name="import_all_check" id="import_all_check">
                                <label class="lbl hide" for="import_all_check">전체선택</label>
                            </span>
                        </th>
                        <th scope="col">기간</th>
                        <th scope="col">구분</th>
                        <th scope="col">기관/장소</th>
                        <th scope="col">활동내용</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- LIST -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</script>

						<script type="text/template" id="import_skill_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>보유기술 리스트</caption>
                <colgroup>
                    <col width="58">
                    <col width="200">
                    <col width="120">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <span class="inpChk">
                            <input type="checkbox" name="import_all_check" id="import_all_check">
                            <label class="lbl hide" for="import_all_check">전체선택</label>
                        </span>
                    </th>
                    <th scope="col">보유기술</th>
                    <th scope="col">수준</th>
                    <th scope="col">상세내용</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_license_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>자격증 리스트</caption>
	            <colgroup>
		            <col width="58">
		            <col width="96">
		            <col>
		            <col width="160">
		            <col width="95">
	            </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <span class="inpChk">
                            <input type="checkbox" name="import_all_check" id="import_all_check">
                            <label class="lbl hide" for="import_all_check">전체선택</label>
                        </span>
                    </th>
                    <th scope="col">취득일</th>
                    <th scope="col">자격증명</th>
                    <th scope="col">발행처</th>
                    <th scope="col">합격여부</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_language_exam_list">
    <div class="">
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>어학시험 리스트</caption>
                <colgroup>
                    <col width="58">
                    <col width="96">
                    <col>
                    <col width="172">
                    <col width="88">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <span class="inpChk">
                            <input type="checkbox" name="import_all_check" id="import_all_check">
                            <label class="lbl hide" for="import_all_check">전체선택</label>
                        </span>
                    </th>
                    <th scope="col">취득일</th>
                    <th scope="col">어학시험명</th>
                    <th scope="col">언어</th>
                    <th scope="col">점수</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_certification_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>수상내역 리스트</caption>
                <colgroup>
                    <col width="58">
                    <col width="140">
                    <col>
                    <col width="180">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <span class="inpChk">
                            <input type="checkbox" name="import_all_check" id="import_all_check">
                            <label class="lbl hide" for="import_all_check">전체선택</label>
                        </span>
                    </th>
                    <th scope="col">기간</th>
                    <th scope="col">수상명</th>
                    <th scope="col">수여기관</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>


						<script type="text/template" id="import_career_profile_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>

        <div class="table_scroll table_scroll_type2">
            <table class="manage_list_table">
                <caption>경력기술서 리스트</caption>
                <colgroup>
                    <col style="width:58px">
                    <col style="width:530px">
                    <col style="width:130px">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">선택</th>
                    <th scope="col">경력기술서 제목</th>
                    <th scope="col">미리보기</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_introduce_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>

        <div class="table_scroll table_scroll_type2">
            <table class="manage_list_table">
                <caption>자기소개서 리스트</caption>
                <colgroup>
                    <col style="width:58px">
                    <col style="width:530px">
                    <col style="width:130px">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">
                        <span class="inpChk">
                            <input type="checkbox" name="import_all_check" id="import_all_check">
                            <label class="lbl hide" for="import_all_check">전체선택</label>
                        </span>
                    </th>
                    <th scope="col">자기소개서 항목명</th>
                    <th scope="col">미리보기</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_personal_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>취업 우대사항 리스트</caption>
                <colgroup>
                    <col width="58">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">선택</th>
                    <th scope="col">상세내용</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>

						<script type="text/template" id="import_attach_files_list">
    <div>
        <div class="title_wrap"><!-- COUNT --></div>
        <div class="table_scroll">
            <table class="manage_list_table">
                <caption>제출서류 리스트</caption>
                <colgroup>
                    <col width="58">
                    <col width="100">
                    <col width="130">
                    <col width="*">
                </colgroup>
                <thead>
                <tr>
                    <th scope="col">선택</th>
                    <th scope="col">등록일</th>
                    <th scope="col">파일구분</th>
                    <th scope="col">파일명</th>
                </tr>
                </thead>
                <tbody>
                <!-- LIST -->
                </tbody>
            </table>
        </div>
    </div>
</script>
						<script type="text/template" id="block_industry">
    <div class="layer_pop_manage layer_block_cat open" data-layer_id="block_industry">
        <h4>내 이력서 열람제한 설정</h4>
        <button class="btn_layer_close btn_close" type="button"><span>닫기</span></button>

        <form name="blockIndustryFrm" onsubmit="return false;">
            <input type="hidden" name="return_type" value="json">

            <div class="box_add_condition">
                <div class="add_txt">열람제한 업종 조건 추가</div>
                <div class="add_list">
                    <ul>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag001" name="company_tag[]" value="tag001">
                                <label class="lbl" for="block_company_tag001">위촉직</label>
                            </span>
                        </li>
                        <li class="s_width">
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag002" name="company_tag[]" value="tag002">
                                <label class="lbl" for="block_company_tag002">도급(아웃소싱)</label>
                            </span>
                        </li>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag003" name="company_tag[]" value="tag003">
                                <label class="lbl" for="block_company_tag003">파견</label>
                            </span>
                        </li>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag004" name="company_tag[]" value="tag004">
                                <label class="lbl" for="block_company_tag004">채용대행</label>
                            </span>
                        </li>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag006" name="company_tag[]" value="tag006">
                                <label class="lbl" for="block_company_tag006">부동산</label>
                            </span>
                        </li>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag007" name="company_tag[]" value="tag007">
                                <label class="lbl" for="block_company_tag007">보험(금융·웨딩·상조)</label>
                            </span>
                        </li>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag005" name="company_tag[]" value="tag005">
                                <label class="lbl" for="block_company_tag005">교육</label>
                            </span>
                        </li>
                        <li>
                            <span class="inpChk">
                                <input type="checkbox" id="block_company_tag008" name="company_tag[]" value="tag008">
                                <label class="lbl" for="block_company_tag008">방문판매</label>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>

            <p class="txt">이력서 열람제한을 설정할 업종을 선택하세요. <strong>(최대 10개)</strong></p>

            <div class="table_scroller">
                <table class="block_cat_tbl">
                    <colgroup>
                        <col width="25%">
                        <col width="25%">
                        <col width="25%">
                        <col width="25%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <td class="col"></td>
                        <td class="col"></td>
                        <td class="col"></td>
                        <td class="col"></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="bottom_btn_wrap">
                <button type="button" class="btn_basic_type03 btn_close">취소</button>
                <button type="button" class="btn_basic_type05 btn_save">설정</button>
            </div>
        </form>
    </div>
</script>
						<script type="text/template" id="block_company">
    <div class="layer_pop_manage layer_block_company open" id="block_company_setting_layer">
        <div class="layer_manage_wrap">
            <h4>내 이력서 열람제한 기업 설정</h4>

            <form name="blockCompanySearchFrm" method="get" action="/zf_user/member/resume-manage/block-search-company-list" onsubmit="return false;">
                <input type="hidden" name="return_type" value="json">

                <div class="search_division" style="margin-bottom:20px;">
                    <span class="inpChk">
                        <input type="checkbox" id="search_oneshot_fl" name="search_oneshot_fl" value="true" checked>
                        <label class="lbl" for="search_oneshot_fl">원샷차단</label>
                    </span>

                    <div class="toolTipWrap">
                        <button type="button" class="btn_guide"><span>원샷차단이란?</span></button>
                        <div class="toolTip" style="display:none;">
                            <span class="tail tail_left_top"></span>
                            <div class="toolTipCont txtLeft">
                                <p class="txt">
                                    <strong>[원샷차단]</strong>
                                    이란 열람제한한 기업의 사업자번호와<br>동일한 사업자번호를 가진 기업을 자동으로 탐색하여<br>
                                    차단하는 기능입니다. 미처 찾지 못한 동일한 기업까지<br>
                                    완벽하게 차단할 수 있습니다.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="sri_select" style="width:108px;margin-left:15px;">
                        <button type="button" class="ico_arr selected">기업명</button>
                        <input type="hidden" name="searching_block_type" value="company_nm">
                        <ul class="list_opt">
                            <li class="on"><a href="##" class="link_opt" data-value="company_nm">기업명</a></li>
                            <li><a href="##" class="link_opt" data-value="tel">전화번호</a></li>
                        </ul>
                    </div>
                    <div class="input_wrap">
                        <input type="text" name="search_com" placeholder="검색 키워드 입력">
                        <button type="submit">검색</button>
                    </div>
                    <dl class="list_recom_company"><!-- 추천기업명 영역 --></dl>
                </div>
            </form>

            <form name="blockCompanyFrm" method="post" action="/zf_user/member/resume-manage/add-block-csn-setting" onsubmit="return false;">
                <input type="hidden" name="return_type" value="json">

                <p class="search_count">총 <strong id="getCompanyCount">0</strong>건 <span>(전화번호 검색시, 해당 전화번호를 사용한 기업이 모두 검색됩니다.)</span></p>

                <div class="table_scroller tab_content" id="layer_contents">
                    <table class="manage_list_table block_company_table">
                        <caption>내 이력서 열람제한 기업 설정</caption>
                        <colgroup>
                            <col style="width:*;">
                            <col style="width:150px;">
                            <col style="width:86px;">
                            <col style="width:106px;">
                        </colgroup>
                        <thead>
                        <tr>
                            <th scope="col" class="th_select _select">
                                <span class="inpChk">
                                    <input type="checkbox" id="block_company_all" name="checktest" value="on">
                                    <label class="lbl" for="block_company_all">기업명</label>
                                </span>
                            </th>
                            <th scope="col">업종</th>
                            <th scope="col">대표자명</th>
                            <th scope="col">채용중인 공고</th>
                        </tr>
                        </thead>
                        <tbody id="block_company_list">
                        <tr>
                            <td colspan="4" class="ready" id="message_search">내 이력서 열람을 제한할 기업을 검색해 주세요.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="bottom_btn_wrap">
                    <button type="button" class="btn_basic_type03 btn_close">취소</button>
                    <button type="submit" class="btn_basic_type05 btn_save">설정</button>
                </div>
            </form>
        </div>
        <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
    </div>
</script>
					</div>

					<div id="resume_template" style="display: none;">

						<script type="text/template" id="tpl_primaryschool"><div  class="tpl_row fixedTop" data-tpl_id="tpl_primaryschool">
    <input type="hidden" id="school_gb" name="school_gb[]" value="primary">
    <input type="hidden" id="school_cd" name="school_cd[]" value="">
    <input type="hidden" id="school_open_fl" name="school_open_fl[]" value="y">
    <input type="hidden" id="school_direct" name="school_direct[]" value="n">
    <input type="hidden" id="school_minor_check_value" name="school_minor_check_value[]">
    <input type="hidden" id="school_entrance_year" name="school_entrance_year[]" value="">
    <input type="hidden" id="school_entrance_month" name="school_entrance_month[]" value="">
    <input type="hidden" id="school_graduation_year" name="school_graduation_year[]" value="">
    <input type="hidden" id="school_graduation_month" name="school_graduation_month[]" value="">

    <input type="hidden" id="school_major" name="school_major[]">
    <input type="hidden" id="school_major_cd" name="school_major_cd[]">
    <input type="hidden" id="school_major_avg" name="school_major_avg[]">
    <input type="hidden" id="school_major_perfect" name="school_major_perfect[]">
    <input type="hidden" id="school_major_department" name="school_major_department[]">
    <input type="hidden" id="school_major_department_text" name="school_major_department_text[]">
    <input type="hidden" id="school_minor" name="school_minor[]">
    <input type="hidden" id="school_minor_cd" name="school_minor_cd[]">
    <input type="hidden" id="school_minor_department" name="school_minor_department[]">
    <input type="hidden" id="school_minor_department_text" name="school_minor_department_text[]">
    <input type="hidden" id="stopout_reason" name="school_stopout_reason[]">
    <input type="hidden" id="school_thesis_category" name="school_thesis_category[]">
    <input type="hidden" id="school_thesis_title" name="school_thesis_title[]">
    <input type="hidden" id="school_day_night" name="school_day_night[]">
    <input type="hidden" id="highschool_area_code" name="highschool_area_code[]">

    <input type="hidden" id="qualification_gb" name="qualification_gb" value="">

    <div class="area_title">
        <h4 class="title">초등학교 정보 입력</h4>
    </div>

    <div class="area_check_top">
        <label class="sri_check" for="primary_btn_qualification">
            <input type="checkbox" id="primary_btn_qualification" class="inp_check btn_qualification" >
            <span class="txt_check">중입 검정고시(초졸)</span>
        </label>
    </div>

    <div class="resume_row" style="display:">
        <div class="input_title">학교명 <span class="point">필수</span></div>
        <div class="resume_input">
            <label for="school_nm" class="bar_title">초등학교명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="school_nm" name="school_nm[]" value="" class="box_input" maxlength="100">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">지역 <span class="point">필수</span></div>
        <div class="sri_select resume_select">
            <label for="school_area_code" class="bar_title">지역<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">지역 선택</button>
            <input type="hidden" id="school_area_code" name="school_area_code[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="101000">서울</a></li><li class=""><a class="link_opt" href="##" data-value="102000">경기</a></li><li class=""><a class="link_opt" href="##" data-value="103000">광주</a></li><li class=""><a class="link_opt" href="##" data-value="104000">대구</a></li><li class=""><a class="link_opt" href="##" data-value="105000">대전</a></li><li class=""><a class="link_opt" href="##" data-value="106000">부산</a></li><li class=""><a class="link_opt" href="##" data-value="107000">울산</a></li><li class=""><a class="link_opt" href="##" data-value="108000">인천</a></li><li class=""><a class="link_opt" href="##" data-value="109000">강원</a></li><li class=""><a class="link_opt" href="##" data-value="110000">경남</a></li><li class=""><a class="link_opt" href="##" data-value="111000">경북</a></li><li class=""><a class="link_opt" href="##" data-value="112000">전남</a></li><li class=""><a class="link_opt" href="##" data-value="113000">전북</a></li><li class=""><a class="link_opt" href="##" data-value="114000">충북</a></li><li class=""><a class="link_opt" href="##" data-value="115000">충남</a></li><li class=""><a class="link_opt" href="##" data-value="116000">제주</a></li><li class=""><a class="link_opt" href="##" data-value="117000">전국</a></li><li class=""><a class="link_opt" href="##" data-value="118000">세종</a></li><li class=""><a class="link_opt" href="##" data-value="210000">아시아·중동</a></li><li class=""><a class="link_opt" href="##" data-value="220000">북·중미</a></li><li class=""><a class="link_opt" href="##" data-value="230000">남미</a></li><li class=""><a class="link_opt" href="##" data-value="240000">유럽</a></li><li class=""><a class="link_opt" href="##" data-value="250000">오세아니아</a></li><li class=""><a class="link_opt" href="##" data-value="260000">아프리카</a></li><li class=""><a class="link_opt" href="##" data-value="270000">남극대륙</a></li><li class=""><a class="link_opt" href="##" data-value="280000">기타해외</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">재학기간 <span class="point">필수</span></div>
        <div class="area_period">
            <div class="period_bundle">
                <div class="resume_input" style="display:">
                    <label class="bar_title" for="school_entrance_dt"><span class="valid_hidden">YYYYMM</span><span class="blind">입학년월</span></label>
                    <input type="text" id="school_entrance_dt" name="school_entrance_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>

                <div class="sri_select resume_select" style="display:">
                    <button type="button" class="ico_arr selected">입학</button>
                    <input type="hidden" id="school_entrance_gb" name="school_entrance_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">입학</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>

            <span class="txt_period" style="display:">-</span>

            <div class="period_bundle">
                <div class="resume_input">
                    <label class="bar_title end_day" for="school_graduation_dt">
                        <span class="valid_hidden">YYYYMM</span>
                        <span class="blind">졸업년월</span>
                    </label>
                    <input type="text" id="school_graduation_dt" name="school_graduation_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>
                <div class="sri_select resume_select" style="display:">
                    <button type="button" class="ico_arr selected">졸업</button>
                    <input type="hidden" id="school_graduation_gb" name="school_graduation_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">졸업</a></li><li class=""><a class="link_opt" href="##" data-value="5">중퇴</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_middleschool"><div  class="tpl_row fixedTop" data-tpl_id="tpl_middleschool">
    <input type="hidden" id="school_gb" name="school_gb[]" value="middle">
    <input type="hidden" id="school_cd" name="school_cd[]" value="">
    <input type="hidden" id="school_open_fl" name="school_open_fl[]" value="y">
    <input type="hidden" id="school_direct" name="school_direct[]" value="n">
    <input type="hidden" id="school_minor_check_value" name="school_minor_check_value[]">
    <input type="hidden" id="school_entrance_year" name="school_entrance_year[]" value="">
    <input type="hidden" id="school_entrance_month" name="school_entrance_month[]" value="">
    <input type="hidden" id="school_graduation_year" name="school_graduation_year[]" value="">
    <input type="hidden" id="school_graduation_month" name="school_graduation_month[]" value="">

    <input type="hidden" id="school_major" name="school_major[]">
    <input type="hidden" id="school_major_cd" name="school_major_cd[]">
    <input type="hidden" id="school_major_avg" name="school_major_avg[]">
    <input type="hidden" id="school_major_perfect" name="school_major_perfect[]">
    <input type="hidden" id="school_major_department" name="school_major_department[]">
    <input type="hidden" id="school_major_department_text" name="school_major_department_text[]">
    <input type="hidden" id="school_minor" name="school_minor[]">
    <input type="hidden" id="school_minor_cd" name="school_minor_cd[]">
    <input type="hidden" id="school_minor_department" name="school_minor_department[]">
    <input type="hidden" id="school_minor_department_text" name="school_minor_department_text[]">
    <input type="hidden" id="stopout_reason" name="school_stopout_reason[]">
    <input type="hidden" id="school_thesis_category" name="school_thesis_category[]">
    <input type="hidden" id="school_thesis_title" name="school_thesis_title[]">
    <input type="hidden" id="school_day_night" name="school_day_night[]">
    <input type="hidden" id="highschool_area_code" name="highschool_area_code[]">

    <input type="hidden" id="qualification_gb" name="qualification_gb" value="">

    <div class="area_title">
        <h4 class="title">중학교 정보 입력</h4>
    </div>

    <div class="area_check_top">
        <label class="sri_check" for="middle_btn_qualification">
            <input type="checkbox" id="middle_btn_qualification" class="inp_check btn_qualification" >
            <span class="txt_check">고입 검정고시(중졸)</span>
        </label>
    </div>

    <div class="resume_row" style="display:">
        <div class="input_title">학교명 <span class="point">필수</span></div>
        <div class="resume_input" style="display: inline-block;">
            <label for="school_nm" class="bar_title">중학교명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="school_nm" name="school_nm[]" value="" class="box_input" maxlength="100">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">지역 <span class="point">필수</span></div>
        <div class="sri_select resume_select">
            <label for="school_area_code" class="bar_title">지역<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">지역 선택</button>
            <input type="hidden" id="school_area_code" name="school_area_code[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="101000">서울</a></li><li class=""><a class="link_opt" href="##" data-value="102000">경기</a></li><li class=""><a class="link_opt" href="##" data-value="103000">광주</a></li><li class=""><a class="link_opt" href="##" data-value="104000">대구</a></li><li class=""><a class="link_opt" href="##" data-value="105000">대전</a></li><li class=""><a class="link_opt" href="##" data-value="106000">부산</a></li><li class=""><a class="link_opt" href="##" data-value="107000">울산</a></li><li class=""><a class="link_opt" href="##" data-value="108000">인천</a></li><li class=""><a class="link_opt" href="##" data-value="109000">강원</a></li><li class=""><a class="link_opt" href="##" data-value="110000">경남</a></li><li class=""><a class="link_opt" href="##" data-value="111000">경북</a></li><li class=""><a class="link_opt" href="##" data-value="112000">전남</a></li><li class=""><a class="link_opt" href="##" data-value="113000">전북</a></li><li class=""><a class="link_opt" href="##" data-value="114000">충북</a></li><li class=""><a class="link_opt" href="##" data-value="115000">충남</a></li><li class=""><a class="link_opt" href="##" data-value="116000">제주</a></li><li class=""><a class="link_opt" href="##" data-value="117000">전국</a></li><li class=""><a class="link_opt" href="##" data-value="118000">세종</a></li><li class=""><a class="link_opt" href="##" data-value="210000">아시아·중동</a></li><li class=""><a class="link_opt" href="##" data-value="220000">북·중미</a></li><li class=""><a class="link_opt" href="##" data-value="230000">남미</a></li><li class=""><a class="link_opt" href="##" data-value="240000">유럽</a></li><li class=""><a class="link_opt" href="##" data-value="250000">오세아니아</a></li><li class=""><a class="link_opt" href="##" data-value="260000">아프리카</a></li><li class=""><a class="link_opt" href="##" data-value="270000">남극대륙</a></li><li class=""><a class="link_opt" href="##" data-value="280000">기타해외</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">재학기간 <span class="point">필수</span></div>
        <div class="area_period">
            <div class="period_bundle">
                <div class="resume_input" style="display:">
                    <label class="bar_title" for="school_entrance_dt"><span class="valid_hidden">YYYYMM</span><span class="blind">입학년월</span></label>
                    <input type="text" id="school_entrance_dt" name="school_entrance_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>

                <div class="sri_select resume_select" style="display:">
                    <button type="button" class="ico_arr selected">입학</button>
                    <input type="hidden" id="school_entrance_gb" name="school_entrance_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">입학</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>

            <span class="txt_period" style="display:">-</span>

            <div class="period_bundle">
                <div class="resume_input">
                    <label class="bar_title end_day" for="school_graduation_dt">
                        <span class="valid_hidden">YYYYMM</span>
                        <span class="blind">졸업년월</span>
                    </label>
                    <input type="text" id="school_graduation_dt" name="school_graduation_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>

                <div class="sri_select resume_select" style="display:">
                    <button type="button" class="ico_arr selected">졸업</button>
                    <input type="hidden" id="school_graduation_gb" name="school_graduation_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">졸업</a></li><li class=""><a class="link_opt" href="##" data-value="5">중퇴</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_highschool"><div  class="tpl_row fixedTop" data-tpl_id="tpl_highschool">
    <input type="hidden" id="school_gb" name="school_gb[]" value="high">
    <input type="hidden" id="school_cd" name="school_cd[]" value="">
    <input type="hidden" id="school_direct" name="school_direct[]" value="n">
    <input type="hidden" id="school_entrance_year" name="school_entrance_year[]" value="">
    <input type="hidden" id="school_entrance_month" name="school_entrance_month[]" value="">
    <input type="hidden" id="school_graduation_year" name="school_graduation_year[]" value="">
    <input type="hidden" id="school_graduation_month" name="school_graduation_month[]" value="">

    <input type="hidden" id="school_minor_check_value" name="school_minor_check_value[]" value="n">
    <input type="hidden" id="school_major_avg" name="school_major_avg[]">
    <input type="hidden" id="school_major_perfect" name="school_major_perfect[]">
    <input type="hidden" id="school_major_department" name="school_major_department[]">
    <input type="hidden" id="school_major_department_text" name="school_major_department_text[]">
    <input type="hidden" id="school_minor" name="school_minor[]">
    <input type="hidden" id="school_minor_cd" name="school_minor_cd[]">
    <input type="hidden" id="school_minor_department" name="school_minor_department[]">
    <input type="hidden" id="school_minor_department_text" name="school_minor_department_text[]">
    <input type="hidden" id="stopout_reason" name="school_stopout_reason[]">
    <input type="hidden" id="school_thesis_category" name="school_thesis_category[]">
    <input type="hidden" id="school_thesis_title" name="school_thesis_title[]">
    <input type="hidden" id="school_day_night" name="school_day_night[]">

    <input type="hidden" id="highschool_gb" name="highschool_gb" value="high">

    <div class="area_title">
        <h4 class="title">고등학교 정보 입력</h4>
    </div>

    <div class="area_check_top">
        <label class="sri_check" for="high_btn_qualification">
            <input type="checkbox" id="high_btn_qualification" class="inp_check btn_qualification" >
            <span class="txt_check">대입 검정고시</span>
        </label>
        <label for="school_open_fl" class="sri_check">
            <input type="checkbox" id="school_open_fl" name="school_open_fl[]" value="n" class="inp_check" >
            <span class="txt_check">고등학교 정보 비공개</span>
        </label>
    </div>

    <div class="resume_row" style="display:">
        <div class="input_title">학교명 <span class="point">필수</span></div>
        <div class="resume_input">
            <label class="bar_title" for="school_nm">고등학교명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="school_nm" name="school_nm[]" value="" class="box_input" maxlength="100" data-api_type="auto" data-api_id="school_high" data-min_len="2" autocomplete="off">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row" style="display:none;">
        <div class="input_title">지역</div>
        <div class="sri_select resume_select">
            <label for="school_area_code" class="bar_title">지역<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">지역 선택</button>
            <input type="hidden" id="school_area_code" name="school_area_code[]">
            <ul class="list_opt">
                <li><a class="link_opt" href="##" data-value="101000">서울</a></li><li><a class="link_opt" href="##" data-value="102000">경기</a></li><li><a class="link_opt" href="##" data-value="103000">광주</a></li><li><a class="link_opt" href="##" data-value="104000">대구</a></li><li><a class="link_opt" href="##" data-value="105000">대전</a></li><li><a class="link_opt" href="##" data-value="106000">부산</a></li><li><a class="link_opt" href="##" data-value="107000">울산</a></li><li><a class="link_opt" href="##" data-value="108000">인천</a></li><li><a class="link_opt" href="##" data-value="109000">강원</a></li><li><a class="link_opt" href="##" data-value="110000">경남</a></li><li><a class="link_opt" href="##" data-value="111000">경북</a></li><li><a class="link_opt" href="##" data-value="112000">전남</a></li><li><a class="link_opt" href="##" data-value="113000">전북</a></li><li><a class="link_opt" href="##" data-value="114000">충북</a></li><li><a class="link_opt" href="##" data-value="115000">충남</a></li><li><a class="link_opt" href="##" data-value="116000">제주</a></li><li><a class="link_opt" href="##" data-value="117000">전국</a></li><li><a class="link_opt" href="##" data-value="118000">세종</a></li><li><a class="link_opt" href="##" data-value="210000">아시아·중동</a></li><li><a class="link_opt" href="##" data-value="220000">북·중미</a></li><li><a class="link_opt" href="##" data-value="230000">남미</a></li><li><a class="link_opt" href="##" data-value="240000">유럽</a></li><li><a class="link_opt" href="##" data-value="250000">오세아니아</a></li><li><a class="link_opt" href="##" data-value="260000">아프리카</a></li><li><a class="link_opt" href="##" data-value="270000">남극대륙</a></li><li><a class="link_opt" href="##" data-value="280000">기타해외</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>
    <div class="resume_row">
        <div class="input_title">재학기간 <span class="point">필수</span></div>
        <div class="area_period">
            <div class="period_bundle">
                <div class="resume_input" style="display:">
                    <label for="school_entrance_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">입학년월</span></label>
                    <input type="text" id="school_entrance_dt" name="school_entrance_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>
                <div class="sri_select resume_select period_select" style="display:">
                    <button type="button" class="ico_arr selected">입학</button>
                    <input type="hidden" id="school_entrance_gb" name="school_entrance_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">입학</a></li><li class=""><a class="link_opt" href="##" data-value="2">편입</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>

            <span class="txt_period" style="display:">-</span>

            <div class="period_bundle">
                <div class="resume_input box_period">
                    <label for="school_graduation_dt" class="bar_title end_day">
                        <span class="valid_hidden">YYYYMM</span>
                        <span class="blind">졸업년월</span>
                    </label>
                    <input type="text" id="school_graduation_dt" name="school_graduation_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>

                <div class="sri_select resume_select period_select" style="display:">
                    <button type="button" class="ico_arr selected">졸업</button>
                    <input type="hidden" id="school_graduation_gb" name="school_graduation_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">졸업</a></li><li class=""><a class="link_opt" href="##" data-value="2">재학중</a></li><li class=""><a class="link_opt" href="##" data-value="3">휴학중</a></li><li class=""><a class="link_opt" href="##" data-value="4">수료</a></li><li class=""><a class="link_opt" href="##" data-value="5">중퇴</a></li><li class=""><a class="link_opt" href="##" data-value="7">자퇴</a></li><li class=""><a class="link_opt" href="##" data-value="6">졸업예정</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
    
    <div class="resume_row" style="display:">
        <div class="input_title">전공 계열</div>
        <div class="sri_select resume_select">
            <label for="school_major_cd" class="bar_title">전공 계열<span class="valid_hidden"> 선택</span></label>
            <button class="ico_arr selected" type="button">전공계열 선택</button>
            <input type="hidden" id="school_major_cd" name="school_major_cd[]">
            <ul class="list_opt">
                <li><a class="link_opt" href="##" data-value="">전공계열 <span class="valid_hidden"> 선택</span></a></li>
                <li class=""><a class="link_opt" href="##" data-value="1">문과계열</a></li><li class=""><a class="link_opt" href="##" data-value="3">이과계열</a></li><li class=""><a class="link_opt" href="##" data-value="2">전문(실업)계</a></li><li class=""><a class="link_opt" href="##" data-value="4">예체능계</a></li><li class=""><a class="link_opt" href="##" data-value="5">특성화/마이스터고</a></li><li class=""><a class="link_opt" href="##" data-value="6">특수목적고</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row" style="display:none">
        <div class="input_title">전공명</div>
        <div class="resume_input" style="display:inline-block;">
            <label for="school_major" class="bar_title">전공명 <span class="valid_hidden"> 입력</span></label>
            <input type="text" id="school_major" name="school_major[]" value="" class="box_input" maxlength="50">
        </div>
    </div>

    
</div>
</script>
						<script type="text/template" id="tpl_university"><div  class="tpl_row" data-tpl_id="tpl_university">
    <input type="hidden" id="school_cd" name="school_cd[]" value="">
    <input type="hidden" id="school_open_fl" name="school_open_fl[]" value="y">
    <input type="hidden" id="school_direct" name="school_direct[]" value="n">
    <input type="hidden" id="school_major_cd" name="school_major_cd[]" value="">
    <input type="hidden" id="school_minor_check_value" name="school_minor_check_value[]" value="n">
    <input type="hidden" id="school_thesis_category" name="school_thesis_category[]" value="both">
    <input type="hidden" id="school_entrance_year" name="school_entrance_year[]" value="">
    <input type="hidden" id="school_entrance_month" name="school_entrance_month[]" value="">
    <input type="hidden" id="school_graduation_year" name="school_graduation_year[]" value="">
    <input type="hidden" id="school_graduation_month" name="school_graduation_month[]" value="">

    <div class="area_title">
        <h4 class="title">대학·대학원 정보 입력</h4>
    </div>

    <div class="resume_row">
        <div class="input_title">대학 <span class="point">필수</span></div>
        <div class="sri_select resume_select">
            <label for="school_gb" class="bar_title"><span class="valid_hidden">대학 선택</span><span class="blind">대학 구분</span></label>
            <button type="button" class="ico_arr selected">대학 선택</button>
            <input type="hidden" id="school_gb" name="school_gb[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="college">대학(2,3년)</a></li><li class=""><a class="link_opt" href="##" data-value="university">대학교(4년)</a></li><li class=""><a class="link_opt" href="##" data-value="master">대학원(석사)</a></li><li class=""><a class="link_opt" href="##" data-value="doctor">대학원(박사)</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">학교명 <span class="point">필수</span></div>
        <div class="resume_input">
            <label for="school_nm" class="bar_title">대학교명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="school_nm" name="school_nm[]" value="" class="box_input" maxlength="100" data-api_type="auto" data-api_id="school_univ" data-min_len="2" autocomplete="off">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">지역 <span class="point">필수</span></div>
        <div class="sri_select resume_select">
            <label for="school_area_code" class="bar_title">지역<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">지역 선택</button>
            <input type="hidden" id="school_area_code" name="school_area_code[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="101000">서울</a></li><li class=""><a class="link_opt" href="##" data-value="102000">경기</a></li><li class=""><a class="link_opt" href="##" data-value="103000">광주</a></li><li class=""><a class="link_opt" href="##" data-value="104000">대구</a></li><li class=""><a class="link_opt" href="##" data-value="105000">대전</a></li><li class=""><a class="link_opt" href="##" data-value="106000">부산</a></li><li class=""><a class="link_opt" href="##" data-value="107000">울산</a></li><li class=""><a class="link_opt" href="##" data-value="108000">인천</a></li><li class=""><a class="link_opt" href="##" data-value="109000">강원</a></li><li class=""><a class="link_opt" href="##" data-value="110000">경남</a></li><li class=""><a class="link_opt" href="##" data-value="111000">경북</a></li><li class=""><a class="link_opt" href="##" data-value="112000">전남</a></li><li class=""><a class="link_opt" href="##" data-value="113000">전북</a></li><li class=""><a class="link_opt" href="##" data-value="114000">충북</a></li><li class=""><a class="link_opt" href="##" data-value="115000">충남</a></li><li class=""><a class="link_opt" href="##" data-value="116000">제주</a></li><li class=""><a class="link_opt" href="##" data-value="117000">전국</a></li><li class=""><a class="link_opt" href="##" data-value="118000">세종</a></li><li class=""><a class="link_opt" href="##" data-value="210000">아시아·중동</a></li><li class=""><a class="link_opt" href="##" data-value="220000">북·중미</a></li><li class=""><a class="link_opt" href="##" data-value="230000">남미</a></li><li class=""><a class="link_opt" href="##" data-value="240000">유럽</a></li><li class=""><a class="link_opt" href="##" data-value="250000">오세아니아</a></li><li class=""><a class="link_opt" href="##" data-value="260000">아프리카</a></li><li class=""><a class="link_opt" href="##" data-value="270000">남극대륙</a></li><li class=""><a class="link_opt" href="##" data-value="280000">기타해외</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>
    <div class="resume_row">
        <div class="input_title">재학기간 <span class="point">필수</span></div>
        <div class="area_period">
            <div class="period_bundle">
                <div class="resume_input">
                    <label for="school_entrance_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">입학년월</span></label>
                    <input type="text" id="school_entrance_dt" name="school_entrance_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>

                <div class="sri_select resume_select period_select" style="display:">
                    <button type="button" class="ico_arr selected">입학</button>
                    <input type="hidden" id="school_entrance_gb" name="school_entrance_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">입학</a></li><li class=""><a class="link_opt" href="##" data-value="2">편입</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>

            <span class="txt_period">-</span>

            <div class="period_bundle">
                <div class="resume_input box_period">
                    <label for="school_graduation_dt" class="bar_title end_day"><span class="valid_hidden">YYYYMM</span><span class="blind">졸업년월</span></label>
                    <input type="text" id="school_graduation_dt" name="school_graduation_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>

                <div class="sri_select resume_select period_select" style="display:">
                    <button class="ico_arr selected" type="button">졸업</button>
                    <input type="hidden" id="school_graduation_gb" name="school_graduation_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">졸업</a></li><li class=""><a class="link_opt" href="##" data-value="2">재학중</a></li><li class=""><a class="link_opt" href="##" data-value="3">휴학중</a></li><li class=""><a class="link_opt" href="##" data-value="4">수료</a></li><li class=""><a class="link_opt" href="##" data-value="5">중퇴</a></li><li class=""><a class="link_opt" href="##" data-value="7">자퇴</a></li><li class=""><a class="link_opt" href="##" data-value="6">졸업예정</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
    <div class="resume_row area_school_major">
        <div class="input_title">전공 <span class="point">필수</span></div>
        <div class="area_add">
            <div class="resume_input resume_select">
                <label class="bar_title" for="school_major_cd">전공구분<span class="valid_hidden">선택</span></label>
                <div class="box_input size_type2">주전공</div>
            </div>

            <div class="area_direct">
                <div class="sri_select resume_select">
                    <label for="school_major_department" class="bar_title">전공계열<span class="valid_hidden"> 선택</span></label>
                    <button type="button" class="ico_arr selected">전공계열 선택</button>
                    <input type="hidden" id="school_major_department" name="school_major_department[]" value="">
                    <ul class="list_opt">
                        <li class=""><a class="link_opt" href="##" data-value="1">어문학</a></li><li class=""><a class="link_opt" href="##" data-value="2">영어/영문</a></li><li class=""><a class="link_opt" href="##" data-value="3">중어/중문</a></li><li class=""><a class="link_opt" href="##" data-value="4">일어/일문</a></li><li class=""><a class="link_opt" href="##" data-value="5">국어/국문</a></li><li class=""><a class="link_opt" href="##" data-value="6">인문과학</a></li><li class=""><a class="link_opt" href="##" data-value="7">사회과학</a></li><li class=""><a class="link_opt" href="##" data-value="8">상경계열</a></li><li class=""><a class="link_opt" href="##" data-value="9">경제/경영</a></li><li class=""><a class="link_opt" href="##" data-value="10">회계학</a></li><li class=""><a class="link_opt" href="##" data-value="11">법학계열</a></li><li class=""><a class="link_opt" href="##" data-value="12">사범계열</a></li><li class=""><a class="link_opt" href="##" data-value="13">종교학</a></li><li class=""><a class="link_opt" href="##" data-value="14">생활과학</a></li><li class=""><a class="link_opt" href="##" data-value="15">예/체능</a></li><li class=""><a class="link_opt" href="##" data-value="16">자연과학계열</a></li><li class=""><a class="link_opt" href="##" data-value="17">농수산/해양/축산</a></li><li class=""><a class="link_opt" href="##" data-value="18">수학/통계학</a></li><li class=""><a class="link_opt" href="##" data-value="19">물리/천문/기상학</a></li><li class=""><a class="link_opt" href="##" data-value="20">화학/생물</a></li><li class=""><a class="link_opt" href="##" data-value="21">공학계열</a></li><li class=""><a class="link_opt" href="##" data-value="22">전기/전자/정보통신공학</a></li><li class=""><a class="link_opt" href="##" data-value="23">컴퓨터/시스템공학</a></li><li class=""><a class="link_opt" href="##" data-value="24">금속/비금속공학</a></li><li class=""><a class="link_opt" href="##" data-value="25">생명/화학/환경/바이오</a></li><li class=""><a class="link_opt" href="##" data-value="26">도시/토목/건축공학</a></li><li class=""><a class="link_opt" href="##" data-value="27">에너지/원자력공학</a></li><li class=""><a class="link_opt" href="##" data-value="28">산업/자동차/우주공학</a></li><li class=""><a class="link_opt" href="##" data-value="29">기계/조선/항공공학</a></li><li class=""><a class="link_opt" href="##" data-value="30">신소재/재료/섬유공학</a></li><li class=""><a class="link_opt" href="##" data-value="31">식품/유전/안전공학</a></li><li class=""><a class="link_opt" href="##" data-value="33">의학계열</a></li><li class=""><a class="link_opt" href="##" data-value="32">직접입력</a></li>                    </ul>
                    <p class="txt_error"></p>
                </div>

                <div class="resume_input resume_bottom" style="display:none">
                    <label for="school_major_department_text" class="bar_title">전공계열<span class="valid_hidden"> 직접입력</span></label>
                    <input type="text" id="school_major_department_text" name="school_major_department_text[]" value="" class="box_input" maxlength="50">
                    <p class="txt_error"></p>
                </div>
            </div>

            <div class="resume_input resume_bottom">
                <label for="school_major" class="bar_title">전공학과<span class="valid_hidden"> 입력</span></label>
                <input type="text" id="school_major" name="school_major[]" value="" class="box_input" maxlength="50">
                <p class="txt_error"></p>
            </div>
            <button type="button" class="btn_edu_type btn_minor" style="display:">전공 추가하기</button>
        </div>
    </div>

    <div class="resume_row area_school_minor" style="display:none;">
        <div class="input_title">전공 <span class="point">필수</span></div>

        <div class="area_add">
            <div class="sri_select resume_select">
                <label for="school_minor_cd" class="bar_title">전공구분<span class="valid_hidden">선택</span></label>
                <button type="button" class="ico_arr size_type2 selected">전공구분선택</button>
                <input type="hidden" id="school_minor_cd" name="school_minor_cd[]" value="">
                <ul class="list_opt">
                    <li class=""><a class="link_opt" href="##" data-value="1">부전공</a></li><li class=""><a class="link_opt" href="##" data-value="2">복수전공</a></li><li class=""><a class="link_opt" href="##" data-value="3">이중전공</a></li>                </ul>
                <p class="txt_error"></p>
            </div>

            <div class="area_direct area_school_minor">
                <div class="sri_select resume_select">
                    <label for="school_minor_department" class="bar_title">전공계열<span class="valid_hidden"> 선택</span></label>
                    <button type="button" class="ico_arr selected">전공계열 선택</button>
                    <input type="hidden" id="school_minor_department" name="school_minor_department[]" value="">
                    <ul class="list_opt">
                        <li class=""><a class="link_opt" href="##" data-value="1">어문학</a></li><li class=""><a class="link_opt" href="##" data-value="2">영어/영문</a></li><li class=""><a class="link_opt" href="##" data-value="3">중어/중문</a></li><li class=""><a class="link_opt" href="##" data-value="4">일어/일문</a></li><li class=""><a class="link_opt" href="##" data-value="5">국어/국문</a></li><li class=""><a class="link_opt" href="##" data-value="6">인문과학</a></li><li class=""><a class="link_opt" href="##" data-value="7">사회과학</a></li><li class=""><a class="link_opt" href="##" data-value="8">상경계열</a></li><li class=""><a class="link_opt" href="##" data-value="9">경제/경영</a></li><li class=""><a class="link_opt" href="##" data-value="10">회계학</a></li><li class=""><a class="link_opt" href="##" data-value="11">법학계열</a></li><li class=""><a class="link_opt" href="##" data-value="12">사범계열</a></li><li class=""><a class="link_opt" href="##" data-value="13">종교학</a></li><li class=""><a class="link_opt" href="##" data-value="14">생활과학</a></li><li class=""><a class="link_opt" href="##" data-value="15">예/체능</a></li><li class=""><a class="link_opt" href="##" data-value="16">자연과학계열</a></li><li class=""><a class="link_opt" href="##" data-value="17">농수산/해양/축산</a></li><li class=""><a class="link_opt" href="##" data-value="18">수학/통계학</a></li><li class=""><a class="link_opt" href="##" data-value="19">물리/천문/기상학</a></li><li class=""><a class="link_opt" href="##" data-value="20">화학/생물</a></li><li class=""><a class="link_opt" href="##" data-value="21">공학계열</a></li><li class=""><a class="link_opt" href="##" data-value="22">전기/전자/정보통신공학</a></li><li class=""><a class="link_opt" href="##" data-value="23">컴퓨터/시스템공학</a></li><li class=""><a class="link_opt" href="##" data-value="24">금속/비금속공학</a></li><li class=""><a class="link_opt" href="##" data-value="25">생명/화학/환경/바이오</a></li><li class=""><a class="link_opt" href="##" data-value="26">도시/토목/건축공학</a></li><li class=""><a class="link_opt" href="##" data-value="27">에너지/원자력공학</a></li><li class=""><a class="link_opt" href="##" data-value="28">산업/자동차/우주공학</a></li><li class=""><a class="link_opt" href="##" data-value="29">기계/조선/항공공학</a></li><li class=""><a class="link_opt" href="##" data-value="30">신소재/재료/섬유공학</a></li><li class=""><a class="link_opt" href="##" data-value="31">식품/유전/안전공학</a></li><li class=""><a class="link_opt" href="##" data-value="33">의학계열</a></li><li class=""><a class="link_opt" href="##" data-value="32">직접입력</a></li>                    </ul>
                    <p class="txt_error"></p>
                </div>

                <div class="resume_input resume_bottom" style="display:none">
                    <label for="school_minor_department_text" class="bar_title">전공계열<span class="valid_hidden"> 직접입력</span></label>
                    <input type="text" id="school_minor_department_text" name="school_minor_department_text[]" value="" class="box_input" maxlength="50">
                    <p class="txt_error"></p>
                </div>
            </div>

            <div class="resume_input resume_bottom">
                <label for="school_minor" class="bar_title">전공학과<span class="valid_hidden"> 입력</span></label>
                <input type="text" id="school_minor" name="school_minor[]" value="" class="box_input" maxlength="50">
                <p class="txt_error"></p>
            </div>
            <button type="button" class="btn_edu_type btn_minor">삭제</button>
        </div>
    </div>


    

    <div class="resume_row">
        <div class="input_title">주/야간</div>
        <div class="sri_select resume_select resume_input_type">
            <label for="school_day_night" class="bar_title">주/야간<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">주/야간 선택</button>
            <input type="hidden" id="school_day_night" name="school_day_night[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="day">주간</a></li><li class=""><a class="link_opt" href="##" data-value="night">야간</a></li>            </ul>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">학점</div>
        <div class="area_grades">
            <div class="resume_input">
                <label for="school_major_avg" class="bar_title">학점<span class="valid_hidden"> 입력</span></label>
                <input type="text" id="school_major_avg" name="school_major_avg[]" value="" class="box_input size_type3" maxlength="5" data-only-float="true">
            </div>
            <div class="sri_select resume_select">
                <label for="school_major_perfect" class="bar_title">기준학점<span class="valid_hidden">선택</span></label>
                <button type="button" class="ico_arr selected size_type2">기준학점선택</button>
                <input type="hidden" id="school_major_perfect" name="school_major_perfect[]" value="">
                <ul class="list_opt">
                    <li><a class="link_opt" href="##" data-value="">기준학점<span class="valid_hidden">선택</span></a></li>
                    <li class=""><a class="link_opt" href="##" data-value="4.0">4.0</a></li><li class=""><a class="link_opt" href="##" data-value="4.3">4.3</a></li><li class=""><a class="link_opt" href="##" data-value="4.5">4.5</a></li><li class=""><a class="link_opt" href="##" data-value="5.0">5.0</a></li><li class=""><a class="link_opt" href="##" data-value="7.0">7.0</a></li><li class=""><a class="link_opt" href="##" data-value="100">100</a></li>                </ul>
            </div>
            <p class="txt_error"></p>
        </div>
        <a href="/zf_user/tools/grade-converter-pop" target="_blank" class="link_converter">학점 변환기 보기</a>
    </div>

    <div class="resume_row area_school_thesis_title" style="display:">
        <div class="input_title">논문 &amp; 졸업작품</div>
        <div class="resume_textarea">
            <label for="school_thesis_title" class="bar_title">학위논문 및 졸업작품<span class="valid_hidden"> 입력</span></label>
            <textarea id="school_thesis_title" name="school_thesis_title[]" class="box_textarea"></textarea>
        </div>
    </div>

    <div class="resume_row area_school_stopout_reason" style="display:none">
        <div class="input_title">휴학사유</div>
        <div class="resume_textarea">
            <label for="school_stopout_reason" class="bar_title">휴학사유<span class="valid_hidden"> 입력</span></label>
            <textarea id="school_stopout_reason" name="school_stopout_reason[]" class="box_textarea"></textarea>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_academy"><div  class="tpl_row" data-tpl_id="tpl_academy">
    <input type="hidden" id="academy_entrance_year" name="academy_entrance_year[]" value="">
    <input type="hidden" id="academy_entrance_month" name="academy_entrance_month[]" value="">
    <input type="hidden" id="academy_graduation_year" name="academy_graduation_year[]" value="">
    <input type="hidden" id="academy_graduation_month" name="academy_graduation_month[]" value="">

    <div class="area_title">
        <h4 class="title">직업전문학원/학교 및 기타학력 정보 입력</h4>
    </div>

    <div class="resume_row">
        <div class="input_title">학교/학원명 <span class="point">필수</span></div>
        <div class="resume_input">
            <label for="academy_nm" class="bar_title">학교/학원명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="academy_nm" name="academy_nm[]" value="" class="box_input" maxlength="100">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">인정학력 <span class="point">필수</span></div>
        <div class="sri_select resume_select">
            <label for="academy_admitted_education_cd" class="bar_title">인정학력<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">인정학력 선택</button>
            <input type="hidden" id="academy_admitted_education_cd" name="academy_admitted_education_cd[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="2">대학(2,3년)</a></li><li class=""><a class="link_opt" href="##" data-value="3">대학교(4년)</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">지역 <span class="point">필수</span></div>
        <div class="sri_select resume_select">
            <label for="academy_area_code" class="bar_title">지역<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">지역 선택</button>
            <input type="hidden" id="academy_area_code" name="academy_area_code[]" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="101000">서울</a></li><li class=""><a class="link_opt" href="##" data-value="102000">경기</a></li><li class=""><a class="link_opt" href="##" data-value="103000">광주</a></li><li class=""><a class="link_opt" href="##" data-value="104000">대구</a></li><li class=""><a class="link_opt" href="##" data-value="105000">대전</a></li><li class=""><a class="link_opt" href="##" data-value="106000">부산</a></li><li class=""><a class="link_opt" href="##" data-value="107000">울산</a></li><li class=""><a class="link_opt" href="##" data-value="108000">인천</a></li><li class=""><a class="link_opt" href="##" data-value="109000">강원</a></li><li class=""><a class="link_opt" href="##" data-value="110000">경남</a></li><li class=""><a class="link_opt" href="##" data-value="111000">경북</a></li><li class=""><a class="link_opt" href="##" data-value="112000">전남</a></li><li class=""><a class="link_opt" href="##" data-value="113000">전북</a></li><li class=""><a class="link_opt" href="##" data-value="114000">충북</a></li><li class=""><a class="link_opt" href="##" data-value="115000">충남</a></li><li class=""><a class="link_opt" href="##" data-value="116000">제주</a></li><li class=""><a class="link_opt" href="##" data-value="117000">전국</a></li><li class=""><a class="link_opt" href="##" data-value="118000">세종</a></li><li class=""><a class="link_opt" href="##" data-value="210000">아시아·중동</a></li><li class=""><a class="link_opt" href="##" data-value="220000">북·중미</a></li><li class=""><a class="link_opt" href="##" data-value="230000">남미</a></li><li class=""><a class="link_opt" href="##" data-value="240000">유럽</a></li><li class=""><a class="link_opt" href="##" data-value="250000">오세아니아</a></li><li class=""><a class="link_opt" href="##" data-value="260000">아프리카</a></li><li class=""><a class="link_opt" href="##" data-value="270000">남극대륙</a></li><li class=""><a class="link_opt" href="##" data-value="280000">기타해외</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>
    <div class="resume_row">
        <div class="input_title">재학기간 <span class="point">필수</span></div>
        <div class="area_period">
            <div class="period_bundle">
                <div class="resume_input">
                    <label for="academy_entrance_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">입학년월</span></label>
                    <input type="text" id="academy_entrance_dt" name="academy_entrance_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>
                <div class="sri_select resume_select period_select">
                    <label for="academy_entrance_gb" class="blind">입학</label>
                    <button type="button" class="ico_arr selected">입학</button>
                    <input type="hidden" id="academy_entrance_gb" name="academy_entrance_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">입학</a></li><li class=""><a class="link_opt" href="##" data-value="2">편입</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>

            <span class="txt_period">-</span>

            <div class="area_period">
                <div class="resume_input box_period">
                    <label for="academy_graduation_dt" class="bar_title end_day"><span class="valid_hidden">YYYYMM</span><span class="blind">졸업년월</span></label>
                    <input type="text" id="academy_graduation_dt" name="academy_graduation_dt[]" value="" class="expect_date box_input" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>
                <div class="sri_select resume_select period_select" style="display:">
                    <label for="academy_graduation_gb" class="blind">졸업</label>
                    <button type="button" class="ico_arr selected">졸업</button>
                    <input type="hidden" id="academy_graduation_gb" name="academy_graduation_gb[]" value="1">
                    <ul class="list_opt">
                        <li class="on"><a class="link_opt" href="##" data-value="1">졸업</a></li><li class=""><a class="link_opt" href="##" data-value="2">재학중</a></li><li class=""><a class="link_opt" href="##" data-value="3">휴학중</a></li><li class=""><a class="link_opt" href="##" data-value="4">수료</a></li><li class=""><a class="link_opt" href="##" data-value="5">중퇴</a></li><li class=""><a class="link_opt" href="##" data-value="7">자퇴</a></li><li class=""><a class="link_opt" href="##" data-value="6">졸업예정</a></li>                    </ul>
                </div>
                <p class="txt_error"></p>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
    <div class="resume_row">
        <div class="input_title">전공분야 <span class="point">필수</span></div>
        <div class="resume_input">
            <label for="academy_major" class="bar_title">전공분야<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="academy_major" name="academy_major[]" value="" class="box_input" maxlength="50">
            <p class="txt_error"></p>
        </div>
    </div>

    
</div>
</script>
						<script type="text/template" id="tpl_career_item"><div  class="tpl_row" data-tpl_id="tpl_career_item">
    <input type="hidden" id="career_mcom_id" name="career_mcom_idx[]" value="">
    <input type="hidden" id="career_com_idx" name="career_com_idx[]" value="">
    <input type="hidden" id="career_csn1" name="career_csn1[]" value="">
    <input type="hidden" id="career_csn2" name="career_csn2[]" value="">
    <input type="hidden" id="career_csn3" name="career_csn3[]" value="">
    <input type="hidden" id="career_job_category_cd" name="career_job_category_cd[]" value="">
    <input type="hidden" id="career_start_year" name="career_start_year[]" value="">
    <input type="hidden" id="career_start_month" name="career_start_month[]" value="">
    <input type="hidden" id="career_end_year" name="career_end_year[]" value="">
    <input type="hidden" id="career_end_month" name="career_end_month[]" value="">
    <input type="hidden" id="career_total_month" name="career_total_month[]">
    <input type="hidden" id="career_job_grade" name="career_job_grade[]" value="">
    <input type="hidden" id="career_job_duties" name="career_job_duties[]" value="">
    <input type="hidden" id="career_job_text_input" name="career_job_text_input[]" value="">
    <input type="hidden" id="career_comnm_open_fl" name="career_comnm_open_fl[]" value="">

    <input type="hidden" id="career_seq" name="career_seq[]">
    <input type="hidden" id="profilecareer_seq" name="profilecareer_seq[]" value="">

    <div class="resume_row">
        <div class="input_title">회사명 <span class="point">필수</span></div>
        <div class="resume_input">
            <label for="career_company_nm" class="bar_title">회사명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="career_company_nm" name="career_company_nm[]" value="" class="box_input" maxlength="80" data-api_type="auto" data-api_id="career_company">
            <p class="txt_error"></p>
        </div>
        <div class="area_check">
            <label for="career_comnm_open_fl_chk" class="sri_check">
                <input type="checkbox" id="career_comnm_open_fl_chk" name="career_comnm_open_fl_chk[]" class="inp_check" value="n" >
                <span class="txt_check">비공개</span>
            </label>
	        <div class="toolTipWrap">
	            <button type="button" class="btn_guide">
	                <span class="blind">비공개 란?</span>
	            </button>
	            <div class="toolTip">
	                <span class="tail tail_top_center"></span>
	                <div class="toolTipCont txtLeft">
	                    <p>
	                        인재정보 검색에 등록한 이력서에서만 비공개되며,<br>
	                        입사지원시 이력서에는 모두 공개됩니다.
	                    </p>
	                </div>
	            </div>
	        </div>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">재직기간 <span class="point">필수</span></div>
        <div class="area_period">
            <div class="resume_input">
                <label for="career_start_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">입사년월</span></label>
                <input type="text" id="career_start_dt" name="career_start_dt[]" class="expect_date box_input size_type2" value="" data-dateformat="yymm" data-only-number="true" autocomplete="off">
                <button class="btn_calendar" type="button"></button>
                <p class="txt_error"></p>
            </div>
            <span class="txt_period">~</span>
            <div class="resume_input">
                <label for="career_end_dt" class="bar_title end_day"><span class="valid_hidden">YYYYMM</span><span class="blind">퇴사년월</span></label>
                <input type="text" id="career_end_dt" name="career_end_dt[]" class="expect_date box_input size_type2" value="" data-dateformat="yymm" data-only-number="true" autocomplete="off" >
                <button class="btn_calendar" type="button"></button>
                <p class="txt_error"></p>
            </div>
            <div class="sri_select resume_select">
                <label for="career_retire_fl" class="bar_title">재직구분<span class="valid_hidden">선택</span></label>
                <button class="ico_arr selected" type="button">퇴사</button>
                <input id="career_retire_fl" name="career_retire_fl[]" type="hidden" value="y">
                <ul class="list_opt">
                    <li class="on"><a class="link_opt" href="##" data-value="y">퇴사</a></li><li class=""><a class="link_opt" href="##" data-value="n">재직중</a></li>                </ul>
            </div>
            <p class="txt_error"></p>
        </div>
        <p class="info_period period"></p>
    </div>

    <div class="resume_row">
        <div class="input_title">퇴사사유</div>
        <div class="resume_bundle">
            <div class="sri_select resume_select">
                <label for="career_retire_reason_sbox" class="bar_title">퇴사사유<span class="valid_hidden"> 선택</span></label>
                <button class="ico_arr selected" type="button">퇴사사유 선택</button>
                <input type="hidden" id="career_retire_reason_sbox" name="career_retire_reason_sbox[]" value="">
                <ul class="list_opt">
                    <li><a class="link_opt" href="##" data-value="">퇴사사유<span class="valid_hidden"> 선택</span></a></li>
                    <li class=""><a class="link_opt" href="##" data-value="업직종 전환">업직종 전환</a></li><li class=""><a class="link_opt" href="##" data-value="근무조건">근무조건</a></li><li class=""><a class="link_opt" href="##" data-value="경영악화">경영악화</a></li><li class=""><a class="link_opt" href="##" data-value="계약만료">계약만료</a></li><li class=""><a class="link_opt" href="##" data-value="출산/육아">출산/육아</a></li><li class=""><a class="link_opt" href="##" data-value="학업">학업</a></li><li class=""><a class="link_opt" href="##" data-value="유학">유학</a></li><li class=""><a class="link_opt" href="##" data-value="개인사정">개인사정</a></li><li class=""><a class="link_opt" href="##" data-value="직접입력">직접입력</a></li>                </ul>
                <p class="txt_error"></p>
            </div>

            <div class="resume_input" style="display:none">
                <label for="career_retire_reason_text" class="bar_title">퇴사사유<span class="valid_hidden"> 직접입력</span></label>
                <input type="text" id="career_retire_reason_text" name="career_retire_reason_text[]" class="box_input size_type4" value="" maxlength="20">
            </div>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">직급/직책 <span class="point">필수</span></div>
        <div class="resume_bundle">
            <div class="resume_input">
                <label for="career_job_grade_duties" class="bar_title">직급/직책</label>
                <input type="text" id="career_job_grade_duties" name="career_job_grade_duties[]" class="box_input max_length" value="" readonly data-api_type="layer" data-api_id="career_job_grade_duties" maxlength="20">
                <a href="javascript:void(0)" onclick="return false;" class="link_modifie">선택하기</a>
                <p class="txt_error"></p>
            </div>

            <div class="resume_input">
                <label for="career_year" class="bar_title">년차<span class="valid_hidden"> 입력</span></label>
                <input type="text" id="career_year" name="career_year[]" value="" class="box_input size_type2" maxlength="2" data-only-number="true">
            </div>
            <p class="txt_number"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">직종 <span class="point">필수</span></div>
        <div class="resume_input">
            <div class="option option_area">
                <label for="career_job_category_text" class="bar_title">직종<span class="valid_hidden"> 선택</span></label>
                <input type="text" id="career_job_category_text" name="career_job_category_text[]" value="" class="box_input" data-api_type="layer" data-api_id="career_job_category" data-dim="n" data-position="unused" readonly>
                <p class="txt_error"></p>
            </div>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">근무지역</div>
        <div class="sri_select resume_select">
            <label for="career_area_cd" class="bar_title">근무지역<span class="valid_hidden"> 선택</span></label>
            <button class="ico_arr selected" type="button">근무지역 선택</button>
            <input id="career_area_cd" name="career_area_cd[]" type="hidden" value="">
            <ul class="list_opt">
                <li class="on"><a class="link_opt" href="##" data-value="">근무지역<span class="valid_hidden"> 선택</span></a></li><li class=""><a class="link_opt" href="##" data-value="1">서울</a></li><li class=""><a class="link_opt" href="##" data-value="2">강원</a></li><li class=""><a class="link_opt" href="##" data-value="3">경기</a></li><li class=""><a class="link_opt" href="##" data-value="4">경남</a></li><li class=""><a class="link_opt" href="##" data-value="5">경북</a></li><li class=""><a class="link_opt" href="##" data-value="6">광주</a></li><li class=""><a class="link_opt" href="##" data-value="7">대구</a></li><li class=""><a class="link_opt" href="##" data-value="8">대전</a></li><li class=""><a class="link_opt" href="##" data-value="9">부산</a></li><li class=""><a class="link_opt" href="##" data-value="10">울산</a></li><li class=""><a class="link_opt" href="##" data-value="11">인천</a></li><li class=""><a class="link_opt" href="##" data-value="12">전남</a></li><li class=""><a class="link_opt" href="##" data-value="13">전북</a></li><li class=""><a class="link_opt" href="##" data-value="14">제주</a></li><li class=""><a class="link_opt" href="##" data-value="15">충남</a></li><li class=""><a class="link_opt" href="##" data-value="16">충북</a></li><li class=""><a class="link_opt" href="##" data-value="47">세종</a></li><li class=""><a class="link_opt" href="##" data-value="17">전국</a></li><li class=""><a class="link_opt" href="##" data-value="18">미국</a></li><li class=""><a class="link_opt" href="##" data-value="19">일본</a></li><li class=""><a class="link_opt" href="##" data-value="20">프랑스</a></li><li class=""><a class="link_opt" href="##" data-value="21">인도네시아</a></li><li class=""><a class="link_opt" href="##" data-value="22">중국</a></li><li class=""><a class="link_opt" href="##" data-value="23">캐나다</a></li><li class=""><a class="link_opt" href="##" data-value="24">해외</a></li><li class=""><a class="link_opt" href="##" data-value="25">대만</a></li><li class=""><a class="link_opt" href="##" data-value="26">러시아</a></li><li class=""><a class="link_opt" href="##" data-value="27">말레이시아</a></li><li class=""><a class="link_opt" href="##" data-value="28">방글라데시</a></li><li class=""><a class="link_opt" href="##" data-value="29">싱가포르</a></li><li class=""><a class="link_opt" href="##" data-value="30">인도</a></li><li class=""><a class="link_opt" href="##" data-value="31">인도네시아</a></li><li class=""><a class="link_opt" href="##" data-value="32">필리핀</a></li><li class=""><a class="link_opt" href="##" data-value="33">홍콩</a></li><li class=""><a class="link_opt" href="##" data-value="34">독일</a></li><li class=""><a class="link_opt" href="##" data-value="35">영국</a></li><li class=""><a class="link_opt" href="##" data-value="36">호주</a></li><li class=""><a class="link_opt" href="##" data-value="37">베트남</a></li><li class=""><a class="link_opt" href="##" data-value="38">스페인</a></li><li class=""><a class="link_opt" href="##" data-value="39">브라질</a></li><li class=""><a class="link_opt" href="##" data-value="40">이탈리아</a></li><li class=""><a class="link_opt" href="##" data-value="41">스위스</a></li><li class=""><a class="link_opt" href="##" data-value="42">네덜란드</a></li><li class=""><a class="link_opt" href="##" data-value="43">필리핀</a></li><li class=""><a class="link_opt" href="##" data-value="44">그리스</a></li><li class=""><a class="link_opt" href="##" data-value="45">대만</a></li><li class=""><a class="link_opt" href="##" data-value="46">멕시코</a></li><li class=""><a class="link_opt" href="##" data-value="99">기타</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">근무부서</div>
        <div class="resume_input">
            <label for="career_dept_nm" class="bar_title">근무부서<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="career_dept_nm" name="career_dept_nm[]"  class="box_input" value="" maxlength="16">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">연봉</div>
        <div class="area_salary">
            <div class="resume_input">
                <label for="career_salary" class="bar_title">연봉<span class="valid_hidden"> 입력</span></label>
                <input type="text" id="career_salary" name="career_salary[]" value="" class="box_input size_type3" maxlength="6" data-only-number="true">
            </div>

            <div class="sri_select resume_select">
                <label for="career_currency" class="bar_title">원화구분</label>
                <button class="ico_arr selected size_type2" type="button">만원</button>
                <input id="career_currency" name="career_currency[]" type="hidden" value="KRW">
                <ul class="list_opt">
                    <li class="on"><a class="link_opt" href="##" data-value="KRW">만원</a></li><li class=""><a class="link_opt" href="##" data-value="USD">달러</a></li><li class=""><a class="link_opt" href="##" data-value="JPY">엔</a></li>                </ul>
            </div>

            <p class="txt_number"></p>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">담당업무</div>
        <div class="resume_textarea">
            <label for="career_contents" class="bar_title">담당업무<span class="valid_hidden"> 입력</span></label>
            <textarea id="career_contents" name="career_contents[]" class="box_textarea"></textarea>
        </div>
    </div>

    <div class="resume_project">
        <div class="area_title">
            <h4 class="title">프로젝트 수행이력</h4>
            <p class="txt_noti">프로젝트 수행 이력이 있는 경우 수행 역할을 작성해 보세요!</p>
            <button type="button" class="btn_add btn_resume_add" data-tpl_id="tpl_career_project">프로젝트 수행이력 추가</button>
        </div>

        
    </div>
</div>
</script>
						<script type="text/template" id="tpl_career_project">    <div  class="tpl_row" data-tpl_id="tpl_career_project">
        <input type="hidden" id="res_career_seq" name="res_career_seq[]">
        <input type="hidden" id="res_career_project_start_year" name="res_career_project_start_year[]" value="">
        <input type="hidden" id="res_career_project_start_month" name="res_career_project_start_month[]" value="">
        <input type="hidden" id="res_career_project_end_year" name="res_career_project_end_year[]" value="">
        <input type="hidden" id="res_career_project_end_month" name="res_career_project_end_month[]" value="">

        <input type="hidden" id="res_career_project_progress_status" name="res_career_project_progress_status[]" value="n">

        <input type="hidden" id="profilecareer_project_seq" name="profilecareer_project_seq[]" value="">

        <div class="resume_row">
            <div class="input_title">프로젝트명</div>
            <div class="item_title">
                <div class="resume_input">
                    <label for="res_career_project_nm" class="bar_title">프로젝트명<span class="valid_hidden"> 입력</span></label>
                    <input type="text" id="res_career_project_nm" name="res_career_project_nm[]" maxlength="100" value="" class="box_input">
                    <p class="txt_error"></p>
                </div>
            </div>
        </div>

        <div class="resume_row">
            <div class="input_title">수행기간</div>
            <div class="area_period">
                <div class="resume_input">
                    <label for="res_career_project_start_date" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">프로젝트 시작년월</span></label>
                    <input type="text" id="res_career_project_start_date" name="res_career_project_start_date[]" class="expect_date box_input size_type2" value="" data-dateformat="yymm" data-only-number="true" autocomplete="off">
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>
                <span class="txt_period">~</span>
                <div class="resume_input">
                    <label for="res_career_project_end_date" class="bar_title end_day"><span class="valid_hidden">YYYYMM</span><span class="blind">프로젝트 종료년월</span></label>
                    <input type="text" id="res_career_project_end_date" name="res_career_project_end_date[]" class="expect_date box_input size_type2" value="" data-dateformat="yymm" data-only-number="true" autocomplete="off" >
                    <button class="btn_calendar" type="button"></button>
                    <p class="txt_error"></p>
                </div>
                <div class="area_check">
                    <label class="sri_check" for="project_progress_status">
                        <input type="checkbox" id="project_progress_status" name="project_progress_status[]" value="y" class="inp_check"  >
                        <span class="txt_check">진행중</span>
                    </label>
                </div>
                <p class="txt_error"></p>
            </div>
        </div>

        <div class="resume_row">
            <div class="input_title">상세내용</div>
            <div class="write_area">
                <div class="inner_wrap">
                    <div class="item_txt">
                        <div class="textarea_wrap">
                            <label for="res_career_project_contents" class="bar_title">
                                <span class="hidden">프로젝트 상세내용</span><span class="valid_hidden">프로젝트에 대한 내용과 본인이 수행한 업무 및 직무 기술을 작성해보세요.</span>
                            </label>
                            <textarea id="res_career_project_contents" name="res_career_project_contents[]" class="textarea_type1" rows="1" cols="100" data-char-count="true" maxlength="3000"></textarea>
                        </div>
                        <div class="spellcheck" style="display:none;">
                            <div class="item_spellcheck">
                                <p class="info_txt">
                                    <span class="title"><strong class="point">0개</strong>의 오타가 있습니다.</span><br>
                                    <span class="point">붉은색 단어</span>를 클릭하시면 수정하실 수 있습니다.
                                </p>
                                <div class="btn_wrap">
                                    <div class="btn_spellall_change_wrap">
                                        <button type="button" class="btn_type4 btn_spellall_change">
                                            맞춤법 일괄 수정
                                        </button>
	                                    <a class="btn_tip" href="#none">
		                                    <div class="toolTip">
			                                    <span class="tail tail_bottom_center"></span>
			                                    <div class="toolTipCont">
				                                    <p class="tip_txt">클릭 시 모두 첫 번째 대체어로 수정됩니다.</p>
			                                    </div>
		                                    </div>
	                                    </a>
                                    </div>

                                    <button type="button" class="btn_type4 btn_spellchek_layer" data-api_type="layer" data-api_id="introduce_spell_details">검사 결과 상세보기</button>
                                </div>
                            </div>
                            <div class="txt" style="white-space:pre-wrap"></div>
                        </div>
                    </div>
                    <div class="item_edit">
                        <div class="txt_length">
                            <strong class="title_length">총 글자수 </strong>
                            <span class="txt_byte">(공백포함) <strong class="input-char">0</strong> 자 / <strong class="input-byte">0</strong> byte</span>
                            <i class="bar">|</i>
                            <span class="txt_byte">(공백제외) <strong class="input-char">0</strong> 자 / <strong class="input-byte">0</strong> byte</span>
                        </div>
                        <div class="btn_wrap">
                            <button type="button" class="btn_type4 btn_spelling_check">맞춤법검사</button>
                            <button type="button" class="btn_type4 btn_spellcheck_done" style="display:none;">맞춤법 검사완료</button>
                            <button type="button" class="btn_type4 btn_spellcheck_cancel" style="display:none;">취소</button>
                        </div>
                    </div>
                </div>
                <p class="txt_error"></p>
            </div>
        </div>
    </div>
</script>
						<script type="text/template" id="tpl_license_default"><div  class="tpl_row" data-tpl_id="tpl_license_default">
    <div class="resume_row">
        <div class="input_title">항목선택</div>
        <div class="sri_select resume_select">
            <label for="item_type" class="bar_title">항목선택</label>
            <button class="ico_arr selected" type="button">항목선택</button>
            <input id="item_type" name="item_type[]" type="hidden" value="">
            <ul class="list_opt">
                <li class="on"><a class="link_opt" href="##" data-value="">항목선택</a></li>
                <li><a class="link_opt" href="##" data-value="license">자격증/면허증</a></li>
                <li><a class="link_opt" href="##" data-value="language_exam">어학시험</a></li>
                <li><a class="link_opt" href="##" data-value="certification">수상내역/공모전</a></li>
            </ul>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_license"><div  class="tpl_row" data-tpl_id="tpl_license">
    <input type="hidden" id="merged_license_index" name="merged_license_index[]" value="license">
    <input type="hidden" id="license_cd" name="license_cd[]" value="">
    <input type="hidden" id="license_direct" name="license_direct[]" value="n">
    <input type="hidden" id="license_obtain_dt_year" name="license_obtain_dt_year[]" value="">
    <input type="hidden" id="license_obtain_dt_month" name="license_obtain_dt_month[]" value="">

    <div class="resume_row">
        <div class="input_title">항목선택</div>
        <div class="sri_select resume_select focus">
            <label for="item_type" class="bar_title">항목선택</label>
            <button type="button" class="ico_arr selected">자격증/면허증</button>
            <input id="item_type" name="item_type[]" type="hidden" value="license">
            <ul class="list_opt">
                <li class="on"><a class="link_opt" href="##" data-value="license">자격증/면허증</a></li>
                <li><a class="link_opt" href="##" data-value="language_exam">어학시험</a></li>
                <li><a class="link_opt" href="##" data-value="certification">수상내역/공모전</a></li>
            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">자격증명</div>
        <div class="resume_input">
            <label for="license_nm" class="bar_title">자격증명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="license_nm" name="license_nm[]" class="box_input" value="" maxlength="100" data-api_type="auto" data-api_id="license_nm" data-min_len="2" autocomplete="off">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">발행처/기관</div>
        <div class="resume_input">
            <label for="license_public_org" class="bar_title">발행처/기관<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="license_public_org" name="license_public_org[]" class="box_input" value="" maxlength="150">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">합격구분</div>
        <div class="sri_select resume_select">
            <label for="license_level" class="bar_title">합격구분<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">합격구분 선택</button>
            <input type="hidden" id="license_level" name="license_level[]" value="">
            <ul class="list_opt">
                <li><a class="link_opt" href="##" data-value="">합격구분<span class="valid_hidden"> 선택</span></a></li>
                <li class=""><a class="link_opt" href="##" data-value="1차합격">1차합격</a></li><li class=""><a class="link_opt" href="##" data-value="2차합격">2차합격</a></li><li class=""><a class="link_opt" href="##" data-value="필기합격">필기합격</a></li><li class=""><a class="link_opt" href="##" data-value="실기합격">실기합격</a></li><li class=""><a class="link_opt" href="##" data-value="최종합격">최종합격</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">취득일</div>
        <div class="area_period">
            <div class="resume_input">
                <label for="license_obtain_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">취득일</span></label>
                <input type="text" id="license_obtain_dt" name="license_obtain_dt[]" class="expect_date box_input" value="" data-dateformat="yymm" data-only-number="true" autocomplete="off">
                <button class="btn_calendar" type="button"></button>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_language_exam"><div  class="tpl_row" data-tpl_id="tpl_language_exam">
    <input type="hidden" id="merged_license_index" name="merged_license_index[]" value="language_exam">
    <input type="hidden" id="lang_exam_kcode" name="lang_exam_kcode[]" value="">
    <input type="hidden" id="lang_exam_obtain_date_year" name="lang_exam_obtain_date_year[]" value="">
    <input type="hidden" id="lang_exam_obtain_date_month" name="lang_exam_obtain_date_month[]" value="">

    <div class="resume_row">
        <div class="input_title">항목선택</div>
        <div class="sri_select resume_select focus">
            <label for="item_type" class="bar_title">항목선택</label>
            <button type="button" class="ico_arr selected">어학시험</button>
            <input id="item_type" name="item_type[]" type="hidden" value="language_exam">
            <ul class="list_opt">
                <li><a class="link_opt" href="##" data-value="license">자격증/면허증</a></li>
                <li class="on"><a class="link_opt" href="##" data-value="language_exam">어학시험</a></li>
                <li><a class="link_opt" href="##" data-value="certification">수상내역/공모전</a></li>
            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">언어</div>
        <div class="sri_select resume_select">
            <label for="lang_exam_langcode" class="bar_title">언어<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">언어 선택</button>
            <input id="lang_exam_langcode" name="lang_exam_langcode[]" type="hidden" value="">
            <ul class="list_opt">
                <li class=""><a class="link_opt" href="##" data-value="1">영어</a></li><li class=""><a class="link_opt" href="##" data-value="2">일본어</a></li><li class=""><a class="link_opt" href="##" data-value="3">중국어</a></li><li class=""><a class="link_opt" href="##" data-value="4">독일어</a></li><li class=""><a class="link_opt" href="##" data-value="5">불어</a></li><li class=""><a class="link_opt" href="##" data-value="6">스페인어</a></li><li class=""><a class="link_opt" href="##" data-value="7">러시아어</a></li><li class=""><a class="link_opt" href="##" data-value="8">이탈리아어</a></li><li class=""><a class="link_opt" href="##" data-value="45">한국어</a></li><li class=""><a class="link_opt" href="##" data-value="99">기타</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">시험종류</div>
        <div class="resume_input">
            <label for="lang_exam_nm" class="bar_title">시험종류<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="lang_exam_nm" name="lang_exam_nm[]" class="box_input" value="" data-api_type="auto" data-api_id="language_exam_nm" data-min_len="0" autocomplete="off">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">점수</div>
        <div class="resume_input">
            <label for="lang_exam_score" class="bar_title">점수<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="lang_exam_score" name="lang_exam_score[]" maxlength="7" class="box_input " value=""  data-max_score="" data-only-float="true" >
            <span class="txt_number"></span>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">급수</div>
        <div class="sri_select resume_select">
            <label for="lang_exam_level" class="bar_title">급수<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected" >급수 선택</button>
            <input type="hidden" id="lang_exam_level" name="lang_exam_level[]" value="">
            <ul class="list_opt">
                <li><a class="link_opt" href="##" data-value="">급수<span class="valid_hidden"> 선택</span></a></li>
                <li style="display:"><a class="link_opt" href="##" data-value="">▼ 숫자등급</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="1">1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="1+">1+</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2">2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2-">2-</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2+">2+</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2.5">2.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3">3</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3-">3-</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3+">3+</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3.5">3.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3 II">3 II</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="4">4</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="4-">4-</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="4+">4+</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="4.5">4.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="4 II">4 II</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="5">5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="5+">5+</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="5.5">5.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="5 II">5 II</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="6">6</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="6.5">6.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="6 II">6 II</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="7">7</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="7.5">7.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="7 II">7 II</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="8">8</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="8.5">8.5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="9">9</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="10">10</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="11">11</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="12">12</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="13">13</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="14">14</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="15">15</a></li><li style="display:"><a class="link_opt" href="##" data-value="">▼ 한글등급</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="초(初)">초(初)</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="중(中)">중(中)</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="고(高)">고(高)</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="상(上)">상(上)</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="하(下)">하(下)</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="특">특</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="특 II">특 II</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="준1">준1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="준2">준2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="준3">준3</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="준4">준4</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="준5">준5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="기초">기초</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="기본">기본</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="대사범">대사범</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="사범">사범</a></li><li style="display:"><a class="link_opt" href="##" data-value="">▼ 알파벳등급</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="A">A</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="B">B</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="C">C</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="D">D</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="E">E</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="F">F</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="A1">A1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="A2">A2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="B1">B1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="B2">B2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="C1">C1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="C2">C2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="N1">N1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="N2">N2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="N3">N3</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="N4">N4</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="N5">N5</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="1A">1A</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="1B">1B</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="1C">1C</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2A">2A</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2B">2B</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="2C">2C</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3A">3A</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3B">3B</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="3C">3C</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Grade A">Grade A</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Grade B">Grade B</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Grade C">Grade C</a></li><li style="display:"><a class="link_opt" href="##" data-value="">▼ OPIC</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Superior">Superior</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Advanced High">Advanced High</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Advanced Mid">Advanced Mid</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Advanced Low">Advanced Low</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="intermediate High">intermediate High</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="intermediate Mid">intermediate Mid</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="intermediate Low">intermediate Low</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Novice High">Novice High</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Novice Mid">Novice Mid</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="Novice Low">Novice Low</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="intermediate Mid1">intermediate Mid1</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="intermediate Mid2">intermediate Mid2</a></li><li class="" style="display:"><a class="link_opt" href="##" data-value="intermediate Mid3">intermediate Mid3</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">취득여부</div>
        <div class="sri_select resume_select">
            <label for="lang_exam_pass" class="bar_title">취득여부<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">취득여부 선택</button>
            <input type="hidden" id="lang_exam_pass" name="lang_exam_pass[]" value="">
            <ul class="list_opt">
                <li class="on"><a class="link_opt" href="##" data-value="">취득여부<span class="valid_hidden"> 선택</span></a></li><li class=""><a class="link_opt" href="##" data-value="y">취득 (PASS)</a></li>            </ul>
            <p class="txt_error">취득구분을 선택해 주세요.</p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">취득일</div>
        <div class="area_period">
            <div class="resume_input">
                <label for="lang_exam_obtain_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">취득일</span></label>
                <input type="text" id="lang_exam_obtain_dt" name="lang_exam_obtain_dt[]" class="expect_date box_input" value="" data-dateformat="yymm" data-only-number="true" autocomplete="off">
                <button class="btn_calendar" type="button"></button>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_certification"><div  class="tpl_row" data-tpl_id="tpl_certification">
    <input type="hidden" id="merged_license_index" name="merged_license_index[]" value="certification">
    <input type="hidden" id="prize_dt_year" name="prize_dt_year[]" value="">
    <input type="hidden" id="prize_dt_month" name="prize_dt_month[]" value="">

    <div class="resume_row">
        <div class="input_title">항목선택</div>
        <div class="sri_select resume_select focus">
            <label for="item_type" class="bar_title">항목선택</label>
            <button type="button" class="ico_arr selected">수상내역/공모전</button>
            <input id="item_type" name="item_type[]" type="hidden" value="certification">
            <ul class="list_opt">
                <li><a class="link_opt" href="##" data-value="license">자격증/면허증</a></li>
                <li><a class="link_opt" href="##" data-value="language_exam">어학시험</a></li>
                <li class="on"><a class="link_opt" href="##" data-value="certification">수상내역/공모전</a></li>
            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">수상명</div>
        <div class="resume_input">
            <label for="prize_nm" class="bar_title">수상명<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="prize_nm" name="prize_nm[]" class="box_input" value="" maxlength="80">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">수여기관</div>
        <div class="resume_input">
            <label for="prize_confer_org" class="bar_title">수여기관<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="prize_confer_org" name="prize_confer_org[]" class="box_input" value="" maxlength="100">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">수상/공모일</div>
        <div class="area_period">
            <div class="resume_input">
                <label for="prize_dt" class="bar_title"><span class="valid_hidden">YYYYMM</span><span class="blind">수상/공모일</span></label>
                <input type="text" id="prize_dt" name="prize_dt[]" class="expect_date box_input" value="" data-dateformat="yymm" data-only-number="true" maxlength="6" autocomplete="off">
                <button class="btn_calendar" type="button"></button>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_activity_item"><div  class="tpl_row" data-tpl_id="tpl_activity_item">
    <input type="hidden" id="activity_start_year" name="activity_start_year[]" value="">
    <input type="hidden" id="activity_start_month" name="activity_start_month[]" value="">
    <input type="hidden" id="activity_start_day" name="activity_start_day[]" value="">
    <input type="hidden" id="activity_end_year" name="activity_end_year[]" value="">
    <input type="hidden" id="activity_end_month" name="activity_end_month[]" value="">
    <input type="hidden" id="activity_end_day" name="activity_end_day[]" value="">

    <input type="hidden" id="profileactivity_seq" name="profileactivity_seq[]" value="">

    <div class="resume_row">
        <div class="input_title">활동구분</div>
        <div class="sri_select resume_select">
            <label for="activity_cd" class="bar_title">활동구분<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">활동구분 선택</button>
            <input type="hidden" id="activity_cd" name="activity_cd[]" value="">
            <ul class="list_opt">
                <li class="on"><a class="link_opt" href="##" data-value="">활동구분 선택</a></li><li class=""><a class="link_opt" href="##" data-value="1">교내활동</a></li><li class=""><a class="link_opt" href="##" data-value="2">인턴</a></li><li class=""><a class="link_opt" href="##" data-value="3">자원봉사</a></li><li class=""><a class="link_opt" href="##" data-value="4">동아리</a></li><li class=""><a class="link_opt" href="##" data-value="5">아르바이트</a></li><li class=""><a class="link_opt" href="##" data-value="6">사회활동</a></li><li class=""><a class="link_opt" href="##" data-value="7">수행과제</a></li><li class=""><a class="link_opt" href="##" data-value="abroad">해외연수</a></li><li class=""><a class="link_opt" href="##" data-value="education">교육이수내역</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row" style="display:none;">
        <div class="input_title">국가</div>
        <div class="sri_select resume_select">
            <label for="nation_cd" class="bar_title">국가<span class="valid_hidden"> 선택</span></label>
            <button type="button" class="ico_arr selected">국가 선택</button>
            <input type="hidden" id="nation_cd" name="nation_cd[]" value="">
            <ul class="list_opt">
                <li class="on"><a class="link_opt" href="##" data-value="">국가 선택</a></li><li class=""><a class="link_opt" href="##" data-value="479">가나</a></li><li class=""><a class="link_opt" href="##" data-value="480">가봉</a></li><li class=""><a class="link_opt" href="##" data-value="7531">가이아나</a></li><li class=""><a class="link_opt" href="##" data-value="7594">감비아</a></li><li class=""><a class="link_opt" href="##" data-value="7532">과델루프</a></li><li class=""><a class="link_opt" href="##" data-value="437">과테말라</a></li><li class=""><a class="link_opt" href="##" data-value="472">괌</a></li><li class=""><a class="link_opt" href="##" data-value="7555">그라나다</a></li><li class=""><a class="link_opt" href="##" data-value="7496">그루지아</a></li><li class=""><a class="link_opt" href="##" data-value="451">그리스</a></li><li class=""><a class="link_opt" href="##" data-value="7525">그린란드</a></li><li class=""><a class="link_opt" href="##" data-value="7595">기니</a></li><li class=""><a class="link_opt" href="##" data-value="7596">기니비소우</a></li><li class=""><a class="link_opt" href="##" data-value="7533">기아나(프랑스령)</a></li><li class=""><a class="link_opt" href="##" data-value="7597">나미비아</a></li><li class=""><a class="link_opt" href="##" data-value="21875">나우루공화국</a></li><li class=""><a class="link_opt" href="##" data-value="481">나이지리아</a></li><li class=""><a class="link_opt" href="##" data-value="449">남미기타</a></li><li class=""><a class="link_opt" href="##" data-value="482">남아프리카공화국</a></li><li class=""><a class="link_opt" href="##" data-value="452">네덜란드</a></li><li class=""><a class="link_opt" href="##" data-value="21863">네덜란드령 안틸레스제도</a></li><li class=""><a class="link_opt" href="##" data-value="7497">네팔</a></li><li class=""><a class="link_opt" href="##" data-value="453">노르웨이</a></li><li class=""><a class="link_opt" href="##" data-value="473">뉴질랜드</a></li><li class=""><a class="link_opt" href="##" data-value="7584">뉴칼레도니아섬</a></li><li class=""><a class="link_opt" href="##" data-value="7598">니제르</a></li><li class=""><a class="link_opt" href="##" data-value="7534">니카라과</a></li><li class=""><a class="link_opt" href="##" data-value="279">대만</a></li><li class=""><a class="link_opt" href="##" data-value="454">덴마크</a></li><li class=""><a class="link_opt" href="##" data-value="7526">도미니카공화국</a></li><li class=""><a class="link_opt" href="##" data-value="7535">도미니카연방</a></li><li class=""><a class="link_opt" href="##" data-value="455">독일</a></li><li class=""><a class="link_opt" href="##" data-value="7523">동티모르</a></li><li class=""><a class="link_opt" href="##" data-value="7499">라오스</a></li><li class=""><a class="link_opt" href="##" data-value="7599">라이베리아</a></li><li class=""><a class="link_opt" href="##" data-value="7556">라트비아</a></li><li class=""><a class="link_opt" href="##" data-value="456">러시아</a></li><li class=""><a class="link_opt" href="##" data-value="7601">레뉴니용</a></li><li class=""><a class="link_opt" href="##" data-value="7500">레바논</a></li><li class=""><a class="link_opt" href="##" data-value="7557">루마니아</a></li><li class=""><a class="link_opt" href="##" data-value="7558">룩셈부르크</a></li><li class=""><a class="link_opt" href="##" data-value="7600">르완다</a></li><li class=""><a class="link_opt" href="##" data-value="483">리비아</a></li><li class=""><a class="link_opt" href="##" data-value="7559">리투아니아</a></li><li class=""><a class="link_opt" href="##" data-value="21868">리히텐슈타인</a></li><li class=""><a class="link_opt" href="##" data-value="7602">마다가스카르</a></li><li class=""><a class="link_opt" href="##" data-value="7536">마르티니크섬</a></li><li class=""><a class="link_opt" href="##" data-value="7585">마샬군도</a></li><li class=""><a class="link_opt" href="##" data-value="7560">마케도니아</a></li><li class=""><a class="link_opt" href="##" data-value="7603">말라위</a></li><li class=""><a class="link_opt" href="##" data-value="280">말레이시아</a></li><li class=""><a class="link_opt" href="##" data-value="7604">말리</a></li><li class=""><a class="link_opt" href="##" data-value="375">멕시코</a></li><li class=""><a class="link_opt" href="##" data-value="7561">모나코</a></li><li class=""><a class="link_opt" href="##" data-value="484">모로코</a></li><li class=""><a class="link_opt" href="##" data-value="21878">모리셔스</a></li><li class=""><a class="link_opt" href="##" data-value="7605">모리타니아</a></li><li class=""><a class="link_opt" href="##" data-value="7606">모잠비크</a></li><li class=""><a class="link_opt" href="##" data-value="21866">몬테네그로</a></li><li class=""><a class="link_opt" href="##" data-value="21867">몰도바</a></li><li class=""><a class="link_opt" href="##" data-value="7502">몰디브</a></li><li class=""><a class="link_opt" href="##" data-value="7562">몰타</a></li><li class=""><a class="link_opt" href="##" data-value="281">몽골</a></li><li class=""><a class="link_opt" href="##" data-value="7563">몽트세라</a></li><li class=""><a class="link_opt" href="##" data-value="376">미국</a></li><li class=""><a class="link_opt" href="##" data-value="282">미얀마</a></li><li class=""><a class="link_opt" href="##" data-value="21873">미크로네시아</a></li><li class=""><a class="link_opt" href="##" data-value="7586">바누아투</a></li><li class=""><a class="link_opt" href="##" data-value="7503">바레인</a></li><li class=""><a class="link_opt" href="##" data-value="7527">바베이도스</a></li><li class=""><a class="link_opt" href="##" data-value="21865">바티칸시국</a></li><li class=""><a class="link_opt" href="##" data-value="7528">바하마</a></li><li class=""><a class="link_opt" href="##" data-value="283">방글라데시</a></li><li class=""><a class="link_opt" href="##" data-value="7529">버뮤다</a></li><li class=""><a class="link_opt" href="##" data-value="7538">버진제도</a></li><li class=""><a class="link_opt" href="##" data-value="7607">베냉</a></li><li class=""><a class="link_opt" href="##" data-value="438">베네수엘라</a></li><li class=""><a class="link_opt" href="##" data-value="284">베트남</a></li><li class=""><a class="link_opt" href="##" data-value="457">벨기에</a></li><li class=""><a class="link_opt" href="##" data-value="7564">벨로루시</a></li><li class=""><a class="link_opt" href="##" data-value="7539">벨리즈</a></li><li class=""><a class="link_opt" href="##" data-value="7565">보스니아헤르체고비나</a></li><li class=""><a class="link_opt" href="##" data-value="7608">보츠와나</a></li><li class=""><a class="link_opt" href="##" data-value="7540">볼리비아</a></li><li class=""><a class="link_opt" href="##" data-value="7609">부룬디</a></li><li class=""><a class="link_opt" href="##" data-value="7610">부르키나파소</a></li><li class=""><a class="link_opt" href="##" data-value="7505">부탄</a></li><li class=""><a class="link_opt" href="##" data-value="435">북·중미기타</a></li><li class=""><a class="link_opt" href="##" data-value="21874">북마리아나군도</a></li><li class=""><a class="link_opt" href="##" data-value="7506">북한</a></li><li class=""><a class="link_opt" href="##" data-value="7566">불가리아</a></li><li class=""><a class="link_opt" href="##" data-value="439">브라질</a></li><li class=""><a class="link_opt" href="##" data-value="7507">브루나이</a></li><li class=""><a class="link_opt" href="##" data-value="7587">사모아</a></li><li class=""><a class="link_opt" href="##" data-value="285">사우디아라비아</a></li><li class=""><a class="link_opt" href="##" data-value="21510">사이판</a></li><li class=""><a class="link_opt" href="##" data-value="21864">산마리노</a></li><li class=""><a class="link_opt" href="##" data-value="21877">상투메프린시페</a></li><li class=""><a class="link_opt" href="##" data-value="7611">세네갈</a></li><li class=""><a class="link_opt" href="##" data-value="7612">세이셀제도</a></li><li class=""><a class="link_opt" href="##" data-value="7541">세인트루시아</a></li><li class=""><a class="link_opt" href="##" data-value="7542">세인트빈센트그레나딘즈</a></li><li class=""><a class="link_opt" href="##" data-value="21862">세인트키츠네비스</a></li><li class=""><a class="link_opt" href="##" data-value="7530">세인트피에르미그온</a></li><li class=""><a class="link_opt" href="##" data-value="7613">세인트헬레나섬</a></li><li class=""><a class="link_opt" href="##" data-value="7614">소말리아</a></li><li class=""><a class="link_opt" href="##" data-value="21872">솔로몬제도</a></li><li class=""><a class="link_opt" href="##" data-value="485">수단</a></li><li class=""><a class="link_opt" href="##" data-value="7543">수리남</a></li><li class=""><a class="link_opt" href="##" data-value="286">스리랑카</a></li><li class=""><a class="link_opt" href="##" data-value="7615">스와질랜드</a></li><li class=""><a class="link_opt" href="##" data-value="458">스웨덴</a></li><li class=""><a class="link_opt" href="##" data-value="459">스위스</a></li><li class=""><a class="link_opt" href="##" data-value="460">스페인</a></li><li class=""><a class="link_opt" href="##" data-value="7568">슬로바키아</a></li><li class=""><a class="link_opt" href="##" data-value="7567">슬로베니아</a></li><li class=""><a class="link_opt" href="##" data-value="7508">시리아</a></li><li class=""><a class="link_opt" href="##" data-value="7616">시에라리온</a></li><li class=""><a class="link_opt" href="##" data-value="7578">신유고연방</a></li><li class=""><a class="link_opt" href="##" data-value="287">싱가포르</a></li><li class=""><a class="link_opt" href="##" data-value="7509">아랍에미레이트연합국</a></li><li class=""><a class="link_opt" href="##" data-value="7569">아루바</a></li><li class=""><a class="link_opt" href="##" data-value="7570">아르메니아</a></li><li class=""><a class="link_opt" href="##" data-value="440">아르헨티나</a></li><li class=""><a class="link_opt" href="##" data-value="373">아시아·중동기타</a></li><li class=""><a class="link_opt" href="##" data-value="7571">아이슬란드</a></li><li class=""><a class="link_opt" href="##" data-value="7544">아이티</a></li><li class=""><a class="link_opt" href="##" data-value="7572">아일랜드</a></li><li class=""><a class="link_opt" href="##" data-value="7573">아제르바이잔</a></li><li class=""><a class="link_opt" href="##" data-value="7510">아프가니스탄</a></li><li class=""><a class="link_opt" href="##" data-value="493">아프리카기타</a></li><li class=""><a class="link_opt" href="##" data-value="7545">안길라</a></li><li class=""><a class="link_opt" href="##" data-value="7574">알바니아</a></li><li class=""><a class="link_opt" href="##" data-value="7618">알제리</a></li><li class=""><a class="link_opt" href="##" data-value="7619">앙골라</a></li><li class=""><a class="link_opt" href="##" data-value="21876">에리트레아</a></li><li class=""><a class="link_opt" href="##" data-value="7575">에스토니아</a></li><li class=""><a class="link_opt" href="##" data-value="441">에콰도르</a></li><li class=""><a class="link_opt" href="##" data-value="487">에티오피아</a></li><li class=""><a class="link_opt" href="##" data-value="7546">엔티가바부다</a></li><li class=""><a class="link_opt" href="##" data-value="7547">엘살바도르</a></li><li class=""><a class="link_opt" href="##" data-value="461">영국</a></li><li class=""><a class="link_opt" href="##" data-value="7511">영국령 인도양식민지</a></li><li class=""><a class="link_opt" href="##" data-value="7512">예멘</a></li><li class=""><a class="link_opt" href="##" data-value="7513">오만</a></li><li class=""><a class="link_opt" href="##" data-value="477">오세아니아기타</a></li><li class=""><a class="link_opt" href="##" data-value="7576">오스트리아</a></li><li class=""><a class="link_opt" href="##" data-value="442">온두라스</a></li><li class=""><a class="link_opt" href="##" data-value="7514">요르단</a></li><li class=""><a class="link_opt" href="##" data-value="488">우간다</a></li><li class=""><a class="link_opt" href="##" data-value="443">우루과이</a></li><li class=""><a class="link_opt" href="##" data-value="7515">우즈베키스탄</a></li><li class=""><a class="link_opt" href="##" data-value="7577">우크라이나</a></li><li class=""><a class="link_opt" href="##" data-value="470">유럽기타</a></li><li class=""><a class="link_opt" href="##" data-value="7516">이라크</a></li><li class=""><a class="link_opt" href="##" data-value="7517">이란</a></li><li class=""><a class="link_opt" href="##" data-value="7579">이스라엘</a></li><li class=""><a class="link_opt" href="##" data-value="489">이집트</a></li><li class=""><a class="link_opt" href="##" data-value="462">이탈리아</a></li><li class=""><a class="link_opt" href="##" data-value="288">인도</a></li><li class=""><a class="link_opt" href="##" data-value="289">인도네시아</a></li><li class=""><a class="link_opt" href="##" data-value="290">일본</a></li><li class=""><a class="link_opt" href="##" data-value="7620">자마이카</a></li><li class=""><a class="link_opt" href="##" data-value="7621">자이르</a></li><li class=""><a class="link_opt" href="##" data-value="7622">잠비아</a></li><li class=""><a class="link_opt" href="##" data-value="7623">적도기니</a></li><li class=""><a class="link_opt" href="##" data-value="340">중국.홍콩</a></li><li class=""><a class="link_opt" href="##" data-value="7624">중앙아프리카공화국</a></li><li class=""><a class="link_opt" href="##" data-value="7625">지부티</a></li><li class=""><a class="link_opt" href="##" data-value="7580">지브롤터</a></li><li class=""><a class="link_opt" href="##" data-value="7626">짐바브웨</a></li><li class=""><a class="link_opt" href="##" data-value="7627">차드</a></li><li class=""><a class="link_opt" href="##" data-value="463">체코</a></li><li class=""><a class="link_opt" href="##" data-value="444">칠레</a></li><li class=""><a class="link_opt" href="##" data-value="7628">카메룬</a></li><li class=""><a class="link_opt" href="##" data-value="21881">카보베르데</a></li><li class=""><a class="link_opt" href="##" data-value="7518">카자흐스탄</a></li><li class=""><a class="link_opt" href="##" data-value="7519">카타르</a></li><li class=""><a class="link_opt" href="##" data-value="370">캄보디아</a></li><li class=""><a class="link_opt" href="##" data-value="434">캐나다</a></li><li class=""><a class="link_opt" href="##" data-value="490">케냐</a></li><li class=""><a class="link_opt" href="##" data-value="7548">케이만제도</a></li><li class=""><a class="link_opt" href="##" data-value="7629">케이프버드</a></li><li class=""><a class="link_opt" href="##" data-value="21880">코모로</a></li><li class=""><a class="link_opt" href="##" data-value="7549">코스타리카</a></li><li class=""><a class="link_opt" href="##" data-value="7617">코트디브아르</a></li><li class=""><a class="link_opt" href="##" data-value="445">콜롬비아</a></li><li class=""><a class="link_opt" href="##" data-value="7630">콩고</a></li><li class=""><a class="link_opt" href="##" data-value="21879">콩고민주공화국</a></li><li class=""><a class="link_opt" href="##" data-value="446">쿠바</a></li><li class=""><a class="link_opt" href="##" data-value="7520">쿠웨이트</a></li><li class=""><a class="link_opt" href="##" data-value="7588">쿠크 군도</a></li><li class=""><a class="link_opt" href="##" data-value="7581">크로아티아</a></li><li class=""><a class="link_opt" href="##" data-value="21861">키르기즈스탄</a></li><li class=""><a class="link_opt" href="##" data-value="7589">키리바시</a></li><li class=""><a class="link_opt" href="##" data-value="7582">키프로스</a></li><li class=""><a class="link_opt" href="##" data-value="7521">타지키스탄</a></li><li class=""><a class="link_opt" href="##" data-value="491">탄자니아</a></li><li class=""><a class="link_opt" href="##" data-value="371">태국</a></li><li class=""><a class="link_opt" href="##" data-value="7550">터크스앤카이코스제도</a></li><li class=""><a class="link_opt" href="##" data-value="464">터키</a></li><li class=""><a class="link_opt" href="##" data-value="7631">토고</a></li><li class=""><a class="link_opt" href="##" data-value="21871">토켈라우제도</a></li><li class=""><a class="link_opt" href="##" data-value="7590">통가</a></li><li class=""><a class="link_opt" href="##" data-value="7522">투르크메니스탄</a></li><li class=""><a class="link_opt" href="##" data-value="7591">투발루</a></li><li class=""><a class="link_opt" href="##" data-value="492">튀니지</a></li><li class=""><a class="link_opt" href="##" data-value="7551">트리니나드토바고</a></li><li class=""><a class="link_opt" href="##" data-value="447">파나마</a></li><li class=""><a class="link_opt" href="##" data-value="7552">파라과이</a></li><li class=""><a class="link_opt" href="##" data-value="7524">파키스탄</a></li><li class=""><a class="link_opt" href="##" data-value="474">파푸아뉴기니</a></li><li class=""><a class="link_opt" href="##" data-value="21869">팔라우</a></li><li class=""><a class="link_opt" href="##" data-value="7583">페로제도</a></li><li class=""><a class="link_opt" href="##" data-value="448">페루</a></li><li class=""><a class="link_opt" href="##" data-value="465">포르투갈</a></li><li class=""><a class="link_opt" href="##" data-value="7553">포클랜드제도</a></li><li class=""><a class="link_opt" href="##" data-value="466">폴란드</a></li><li class=""><a class="link_opt" href="##" data-value="7593">폴리네시아제도</a></li><li class=""><a class="link_opt" href="##" data-value="7554">푸에르토리코</a></li><li class=""><a class="link_opt" href="##" data-value="467">프랑스</a></li><li class=""><a class="link_opt" href="##" data-value="475">피지</a></li><li class=""><a class="link_opt" href="##" data-value="468">핀란드</a></li><li class=""><a class="link_opt" href="##" data-value="372">필리핀</a></li><li class=""><a class="link_opt" href="##" data-value="21870">핏케언제도</a></li><li class=""><a class="link_opt" href="##" data-value="469">헝가리</a></li><li class=""><a class="link_opt" href="##" data-value="476">호주</a></li>            </ul>
            <p class="txt_error"></p>
        </div>
    </div>


    <div class="resume_row" >
        <div class="input_title">기관/장소</div>
        <div class="resume_input">
            <label for="activity_org" class="bar_title">기관/장소<span class="valid_hidden"> 입력</span></label>
            <input type="text" id="activity_org" name="activity_org[]" value="" maxlength="50" class="box_input">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">활동기간</div>
        <div class="area_period">
            <div class="sri_select resume_select">
                <label for="dateformat" class="bar_title">입력 선택</label>
                <button type="button" class="ico_arr selected">월입력</button>
                <input type="hidden" id="dateformat" name="dateformat[]" value="yymm">
                <ul class="list_opt">
                    <li class="on"><a href="##" class="link_opt" data-value="yymm">월입력</a></li>
                    <li class=""><a href="##" class="link_opt" data-value="yymmdd">일입력</a></li>
                </ul>
            </div>
            <div class="resume_input">
                <label for="activity_start" class="bar_title">
                    <span class="valid_hidden">YYYYMM</span>
                    <span class="blind">활동기간(년월)</span>
                </label>
                <input type="text" id="activity_start" name="activity_start[]" class="expect_date box_input" value="" maxlength="6" data-only-number="true" data-dateformat="yymm" autocomplete="off">
                <button type="button" class="btn_calendar"></button>
                <p class="txt_error"></p>
            </div>

            <span class="txt_period">~</span>

            <div class="resume_input">
                <label for="activity_end" class="bar_title end_day">
                    <span class="valid_hidden">YYYYMM</span>
                    <span class="blind">활동기간(년월)</span>
                </label>
                <input type="text" id="activity_end" name="activity_end[]" class="expect_date box_input" value="" maxlength="6" data-only-number="true" data-dateformat="yymm" autocomplete="off">
                <button type="button" class="btn_calendar"></button>
                <p class="txt_error"></p>
            </div>
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="resume_row">
        <div class="input_title">활동내용</div>
        <div class="resume_textarea">
            <label for="activity_contents" class="bar_title">활동내용<span class="valid_hidden"> 입력</span></label>
            <textarea id="activity_contents" name="activity_contents[]" class="box_textarea"></textarea>
            <p class="txt_error"></p>
        </div>
    </div>
</div>
</script>
						<script type="text/template" id="tpl_introduce_item"><div  class="tpl_row intro_item on" data-tpl_id="tpl_introduce_item">
    <div class="item_title">
        <div class="input_wrap">
            <label for="intro_title" class="txt">자소서 제목</label>
            <input type="text" id="intro_title" name="intro_title[]" class="input_type1" value="" maxlength="100">
            <p class="txt_error"></p>
        </div>
    </div>

    <div class="item_txt">
        <div class="textarea_wrap">
            <label for="intro_contents" class="txt">자소서 내용</label>
            <textarea id="intro_contents" name="intro_contents[]" class="textarea_type1" rows="1" cols="100" data-char-count="true"></textarea>
        </div>

        <div class="spellcheck" style="display:none;">
            <div class="item_spellcheck">
                <p class="info_txt">
                    <span class="title"><strong class="point">0개</strong>의 오타가 있습니다.</span><br>
                    <span class="point">붉은색 단어</span>를 클릭하시면 수정하실 수 있습니다.
                </p>
                <div class="btn_wrap">

                    <div class="btn_spellall_change_wrap">
                        <button type="button" class="btn_type4 btn_spellall_change">
                            맞춤법 일괄 수정
                        </button>
	                    <a class="btn_tip" href="#none">
		                    <div class="toolTip">
			                    <span class="tail tail_bottom_center"></span>
			                    <div class="toolTipCont">
				                    <p class="tip_txt">클릭 시 모두 첫 번째 대체어로 수정됩니다.</p>
			                    </div>
		                    </div>
	                    </a>
                    </div>

                    <button type="button" class="btn_type4 btn_spellchek_layer" data-api_type="layer" data-api_id="introduce_spell_details">검사 결과 상세보기</button>
                </div>
            </div>

            <div class="txt" style="white-space:pre-wrap"></div>

        </div>
    </div>

    <div class="item_edit">
        <div class="txt_length">
            <strong class="title_length">글자수 </strong>
            <span class="txt_byte">(공백포함) <strong class="input-char">0</strong> 자 / <strong class="input-byte">0</strong> byte</span>
            <i class="bar">|</i>
            <span class="txt_byte">(공백제외) <strong class="input-char">0</strong> 자 / <strong class="input-byte">0</strong> byte</span>
        </div>
        <div class="btn_wrap">
            <button type="button" class="btn_type4 btn_spelling_check">맞춤법검사</button>

            <button type="button" class="btn_type4 btn_spellcheck_done" style="display:none;">맞춤법 검사완료</button>
            <button type="button" class="btn_type4 btn_spellcheck_cancel" style="display:none;">취소</button>
        </div>
    </div>
</div>
</script>
					</div>
				</div>

				<div id="nudge_wrap">
					<div class="inner">
						<div id="order_list" class="box_change_order">
							<h4 class="title_tip">이력서 항목</h4>
							<ul class="list_change"></ul>
							<button class="btn_change" type="button" data-api_type="layer"
								data-api_id="change_order">항목 순서 변경</button>
						</div>

						<div class="area_btn">
							<button type="button" class="btn_big_type btn_preview"
								onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'resume_PC','event-flow': 'resume_write','event-label': 'btn_preview'});}catch(e){};">미리보기</button>
							<button type="button" class="btn_big_type btn_big_type2 btn_save"
								onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'resume_PC','event-flow': 'resume_write','event-label': 'btn_save'});}catch(e){};">이력서
								저장</button>
						</div>

						<div class="area_auto_save">
							<label class="sri_check" for="auto_save"> <input
								type="checkbox" id="auto_save" name="auto_save"
								class="inp_check" checked> <span class="txt_check">이력서
									1분 자동저장 기능</span>
							</label>
							<p class="txt_save"></p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer id="sri_footer" class="sri_footer">
			<div class="wrap_footer">
				<div class="links">
					<strong class="blind">바로가기</strong>
					<ul>
						<li class="first"><a href="http://www.saraminhr.co.kr/"
							target="_blank" rel="noopener" title="회사소개 새창열기">회사소개</a></li>
						<li><a
							href="http://www.saraminhr.co.kr/open_content/pr/press_release.php"
							target="_blank" rel="noopener" title="보도기사 새창열기">보도기사</a></li>
						<li><a
							href="http://www.saraminhr.co.kr/open_content/hr/location.php"
							target="_blank" rel="noopener" title="찾아오시는길 새창열기">찾아오시는길</a></li>
						<li><a href="/zf_user/help/terms-of-service"
							title="회원약관 바로가기">회원약관</a></li>
						<li class="bold"><a href="/zf_user/help/privacy"
							title="개인정보처리방침 바로가기">개인정보처리방침</a></li>
						<li><a
							href="http://www.saramin.co.kr/zf_user/popup/email-refuse"
							onclick="window.open(this.href, '이메일무단수집거부', 'width=380,height=200,left=0,top=0'); return false;"
							rel="noopener" title="이메일무단수집거부 바로가기">이메일무단수집거부</a></li>
						<li><a href="https://oapi.saramin.co.kr/" target="_blank"
							rel="noopener" title="채용정보 API">채용정보 API</a></li>
						<li><a href="/zf_user/help/inquery/partnership-inquiry-write"
							target="_self" rel="noopener" title="제휴문의">제휴문의</a></li>
						<li><a href="http://www.saramin.co.kr/zf_user/help"
							title="고객센터 바로가기">고객센터</a></li>
					</ul>
				</div>
				<div class="copyright">
					<p>
						(주)사람인HR, 우 : 08378, 서울특별시 구로구 디지털로34길 43, 201호(구로동), 대표 : 김용환<br>사업자등록
						: 113-86-00917, 직업정보제공사업 : 서울 관악 제 2005-6호, 통신판매업 : 제 2339호,
						Copyright (c) (주)사람인HR. All rights reserved.
					</p>
				</div>
			</div>
		</footer>
		<button type="button" id="btn_goto_top" title="위로">TOP으로</button>
	</div>

	<script type="text/javascript">
var isPersonLogin = true;
var isCompanyLogin = false;
</script>

	<script type="text/javascript">
var wwwBaseUrl = '';
var isNullRealNameVerified = '';

//상세 입사지원 팝업
var isIE = function() {
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        return true;
    }
    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        return true;
    }
    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
        return false;
    }
    return false;
}
var closeAppSetupLayer = function(s) {
    if ( s == 'balloon-layer' ) {
        document.getElementById(s).style.display = 'none';
    } else {
        var layerEl = document.getElementById('app-setup-layer');
        layerEl.style.display = 'none';
    }
};
var isQuirksIE = isIE() && document.compatMode!=='CSS1Compat' ? true : false;

var loadingLayer = false;
// 즉시지원 1Form
var quickApplyForm = function(rec_idx, company_nm, track_url, search_url, category) {
    if (loadingLayer) {
        alert('즉시지원 프로세스가 실행중입니다. 잠시만 기다려 주세요.');
        return false;
    }

    var category = category || '';
    var rec_idx  = rec_idx || '';
    var quick_apply_frame = document.getElementById('quick_apply_frame');

    if (isCompanyLogin) {
        if ( !confirm('기업회원으로 로그인되어 있어 이용하실 수 없습니다.\n\n개인회원으로 로그인하시겠습니까?') ) {
            return;
        }
    }

    var spec = 'apply_status=y&reg_source_type=pc';

    if (category != 'scrap' && category != 'favor' && category != 'quick_login' && category != 'ask_manager') {
        Saramin.readJob(rec_idx, spec);
    }

    if (!isPersonLogin) {
        if (!!category && category == 'quick_login') {
            category = 'scrap';
        }

        quick_apply_frame.setAttribute('showLayer', 'y');
        var loginUrl = '/zf_user/member/apply/login-form?rec_idx=' + rec_idx + '&category=' + category;
        if (track_url) {
            loginUrl += '&' + track_url;
        }
        if (search_url) {
            loginUrl += '&' + search_url;
        }
        quick_apply_frame.style.display = 'none';
        quick_apply_frame.contentWindow.location.replace(loginUrl);
        showQuickApplyLayer();
        return;
    }

    if (isPersonLogin && isNullRealNameVerified) {
        alert('휴대폰 또는 이메일 인증을 완료하신 후에 입사지원이 가능합니다.');
        return false;
    }

    quick_apply_frame.style.display = 'none';
    showQuickApplyLayer();

    var quickApplyUrl = '/zf_user/member/apply?rec_idx=' + rec_idx;
    if ( track_url ) {
        quickApplyUrl += '&' + track_url;
    }
    if (search_url) {
        quickApplyUrl += '&' + search_url;
    }
    quick_apply_frame.setAttribute('showLayer', 'y');
    loadingLayer = true;
    quick_apply_frame.contentWindow.location.replace(quickApplyUrl);
};

var showQuickApplyLayer = function() {
    if (!!document.getElementById('pop_login_layer')) {
        document.getElementById('pop_login_layer').style.display = 'none';
    }

    document.getElementsByTagName('html')[0].style.overflow = 'hidden';
    document.getElementsByTagName('html')[0].style.height = '100%';
    if(isQuirksIE) document.getElementsByTagName('body')[0].style.overflow = 'hidden';
    document.getElementsByTagName('body')[0].style.height = '100%';

    setQuickApplyLayerPosition();

    document.getElementById('iframe_layer').style.display = '';
};

var setQuickApplyLayerPosition = function() {
    var layerEl = document.getElementById('iframe_layer');

    var sheight = document.body.scrollTop;
    if (sheight == 0) {
        sheight = document.documentElement.scrollTop;
    }

    var sLeft = document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft,
        window_w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

    layerEl.style.top = sheight + 'px';
    layerEl.style.width = (window_w + sLeft) + 'px';

    var layerWidth = function(evt){
        sLeft = document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft;
        window_w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        layerEl.style.width = (window_w + sLeft) + 'px';
    };
    function addEvent(obj, evType, fn) {
        if(obj.addEventListener) {
            obj.addEventListener(evType, fn, true);
            return true;
        } else if(obj.attachEvent) {
            var r = obj.attachEvent("on" + evType, fn);  return r;
        } else {
            return false;
        }
    }
    addEvent(window, 'resize', layerWidth, true);
};

var closeQuickApplyLayer = function(onlayer) {
    if (loadingLayer && onlayer != 'y') {
        alert('입사지원 프로세스가 실행중입니다. 잠시만 기다려주세요.');
        return false;
    }

    var quick_apply_frame = document.getElementById('quick_apply_frame'),
        iframeLayerEl = document.getElementById('iframe_layer'),
        reloadFl = document.getElementById('quick_apply_layer').getAttribute('reload');

    quick_apply_frame.setAttribute('showLayer', 'n');

    iframeLayerEl.style.display = 'none';

    document.getElementsByTagName('html')[0].style.overflow = '';
    if(isQuirksIE) document.getElementsByTagName('body')[0].style.overflow = '';
    quick_apply_frame.contentWindow.location.replace('about:blank');

    try {
        if (reloadFl == 'y' && global_rec_idx) {
            location.reload();
        }

        var statisticEl = window.parent.document.getElementById('goStatistic');

        if (typeof(statisticEl) != 'undefined' && statisticEl.value == 'go') {
            var d = new Date();
            d.setTime(d.getTime() + 60000);
            var expires = "expires="+d.toUTCString();
            document.cookie = "relay_view_to=statistics;" + expires + ";path=/;"
            location.reload();
        }
    } catch (e) {}
};

var showRecommendRecruitLayer = function (rec_idx, recruitapply_idx) {
    document.getElementById('iframe_layer').style.display = 'none';

    showQuickApplyLayer();

    //loadingLayer = true;

    var quick_apply_frame = document.getElementById('quick_apply_frame');
    quick_apply_frame.style.display = 'none';
    quick_apply_frame.setAttribute('showLayer', 'y');
    quick_apply_frame.contentWindow.location.replace('/zf_user/member/apply/recommend-recruit-list?rec_idx=' + rec_idx + '&recruitapply_idx=' + recruitapply_idx + '&apply_type=applyStatus');
};

var goResumeManage = function () {
    if (confirm('이력서가 등록되지 않았습니다.\n지금 등록하시겠습니까?')) {
        location.href = wwwBaseUrl + '/zf_user/member/resume-manage/select-template';
    }
};

var setReload = function(flag) {
    document.getElementById('quick_apply_layer').setAttribute('reload', flag);
};

var applyListener = function() {
    if (window.isApplyListened) return false;
    window.addEventListener('message',function(event) {
        if (!!(event.origin.match(/^https:\/\/.+?\.saramin\.co\.kr/))) {
            eval(event.data);
        }
        else {
            return false;
        }
        return;
    }, false);
    window.isApplyListened = true;
}

</script>

	<div id="iframe_layer" class="iframe_layer" style="display: none;">
		<div id="quick_apply_layer" class="once_layer" reload="n">
			<div id="quick_apply_layer_loading" class="layer_loading"
				style="display: none">
				<img src="//www.saraminimage.co.kr/js/libs/images/loading.gif">
			</div>
			<iframe id="quick_apply_frame" name="quick_apply_frame"
				src="about:blank" width="540" height="0" scrolling="no"
				frameborder="0" allowtransparency="true" title="입사지원" showlayer="n"
				style=""></iframe>
			<a href="#close" onclick="closeQuickApplyLayer(); return false;"
				class="once_ly_close"> <img
				src="https://www.saraminimage.co.kr/sri/common/btn/btn_layer_close.png"
				alt="닫기">
			</a>
		</div>
	</div>
	<script type="text/javascript"
		src="https://www.saraminimage.co.kr/jquery/ui/jquery-ui-1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/js/code/area.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/persons-image.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/map/mapControl.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/jquery.form.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="https://www.saraminimage.co.kr/js/libs/cropper/cropper.js"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-util.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-api.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-basic.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-school.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-career.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-item.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-introduce.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-desire-work.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/member/resume/resume-import.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/search/search-auto-complete.js?v=20200521163058"></script>
	<script type="text/javascript"
		src="/js/libs/gnb-mobile-info-sms.js?v=20160707"></script>
	<script type="text/javascript">
(function() {
  var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
  document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
})();
</script>

	<script type="text/javascript">
    // 1.
_n_sid = "saramin";
_n_uid_cookie = "UID";
_n_info1_cookie = "Mtype";
n_logging();
</script>

	<script>

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-12546634-1', 'saramin.co.kr');
  ga('require', 'GTM-KN35GK2');
  ga('require','displayfeatures');
  ga('require', 'linkid');
  ga('set', 'userId', '12637683');
  ga('set', 'dimension1', 'per');
  ga('send', 'pageview');

</script>
	<script type="text/javascript">

	function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
	    var l = document.location;
	    var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
	    var label = opt_label || '';
	    var value = opt_value || '';
	    url = url + '&opt_label=' + label + '&opt_value=' + value;
	    n_click_logging(url, l.href);
	    try {
	        _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
	        ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
	    } catch (_e) {}
	}
	
	function pushDataLayer(event, category, event_flow, event_label) {
	    try {
            dataLayer.push({
                'event': event || 'ga_lead',
                'category': category || '',
                'event-flow': event_flow || '',
                'event-label': event_label || ''
            });

        }catch (e) {

        }
    }

    // 클릭 이벤트 + 구글 태그매니져 로깅
    function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
        n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
        pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
    }


    function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
	    try{
            var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
            var promotion_log = {};
            promotion_log[ecommerce_type] = {
                'promotions': [
                    {
                        'id': log_id,
                        'name': log_name,
                        'creative': log_creative,
                        'position': log_position
                    }
                ]
            };

            var log_data = {
                'event': log_event,
                'ecommerce': promotion_log
            };

            dataLayer.push(log_data);
        } catch (e) {

        }
    }

	
	function _hwaClick(cc) {
		n_trackEvent('ADs', 'Click-' + cc);
	}

    function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

        try {
            var url         = el.href;
            var category    = opt_category || '';
            var content     = opt_content || '';
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var anchor      = '';

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            el.href = url;
        } catch (e) {
        }
    }

    function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

        try {
            var url         = el.href;
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var ref_scnid   = opt_ref_scnid || '';
            var ref_area   = opt_ref_area || '';
            var anchor      = '';

            var opt = opt_etc || {};

            if( url.indexOf('t_ref') > 0 ) return;

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if (!!ref_scnid) {
				url += '&t_ref_scnid=' + ref_scnid;
            }

            if (!!ref_area) {
				url += '&t_ref_area=' + ref_area;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            if (opt.constructor === Object) {
                for (k in opt) {
                    if (opt.hasOwnProperty(k)) {
                        url += '&' + k + '=' + opt[k];
                    }
                }
            }

            el.href = url;

        } catch (e) {
        }
    }
</script>


	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

	<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1d3a45fb0bfe";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MK2GBBH');</script>
	<!-- End Google Tag Manager -->
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MK2GBBH"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
	<div id="_sticky_warp"></div>

	<div id="pop_login_layer_dimmed"
		style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: url(//www.saraminimage.co.kr/event_2014/0708_rank1/bg_dimmed.png) repeat 0 0; z-index: 9998;"></div>
	<div id="pop_login_layer" class="pop_login_layer"
		style="display: none; position: absolute; top: 280px;">
		<div class="outer">
			<form name="loginFrm" id="loginFrm"
				action="https://www.saramin.co.kr/zf_user/auth/login" method="post"
				onsubmit="return loginCheckMainLayer(this);">
				<input type="hidden" name="page_url" id="page_url"
					value="L3pmX3VzZXIvbWVtYmVyL3Jlc3VtZS1tYW5hZ2Uvd3JpdGU/aW5uZXJfbWVkaXVtPW51ZGdlJmlubmVyX3NvdXJjZT1yZXN1bWUmaW5uZXJfY2FtcGFpZ249bWFpbl9sb2dpbiZpbm5lcl90ZXJtPXJlc3VtZS13cml0ZTAx">
				<input type="hidden" name="url" value=""> <input
					type="hidden" name="allowType" value=""> <input
					type="hidden" name="ut" value=""> <input type="hidden"
					name="layerScrapIdx" value=""> <input type="hidden"
					name="layerFavorIdx" value=""> <input type="hidden"
					name="rec_apply_fl" value="n">
				<fieldset class="inner">
					<legend>
						<strong>개인회원로그인</strong>이 필요한 서비스입니다.
					</legend>
					<div class="setting">
						<input id="ly_autologin" name="autologin" type="checkbox">
						<label for="ly_autologin"> 로그인 유지 </label>
						<div class="dsc_ly" id="tooltip_autologin" style="display: none;">
							<button class="btn_ly_close" id="auto_login_close" type="button">닫기</button>
							<span class="dsc_arr"></span>
							<p class="dsc_txt">
								<strong>[개인회원 전용]</strong><br> 개인정보 보호를 위해 개인 PC에서만 이용해
								주세요.
							</p>
						</div>
						<input id="ly_id_save" name="id_save" class="ly_id_save"
							type="checkbox"> <label for="ly_id_save">아이디 저장</label>
					</div>
					<div id="login_form" class="login-form">
						<div id="id_input_form" class="id-input-box focus">
							<label id="ly-id-label" for="ly_id"><span>아이디</span></label> <input
								type="text" name="id" id="ly_id" value="">
						</div>
						<div id="pw_input_form" class="pw-input-box">
							<label id="ly-password-label" for="ly_password"><span>비밀번호</span></label>
							<input type="password" name="password" id="ly_password" value="">
						</div>
						<button type="submit" class="btn-login"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login',''],['ga_lead','login','pc_login_layer','per_login'])">
							<span>로그인</span>
						</button>
					</div>
					<p class="signup-forgotten">
						<a href="/zf_user/member/registration/join" target="_blank"
							class="sign-up">회원가입</a> <span></span> <a
							href="/zf_user/helpdesk/idpw-find" target="_blank"
							class="forgotten">아이디/비밀번호 찾기</a>
					</p>
					<ul class="social_login_layer" style="display: inline-block;">
						<li><a
							href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&url=%2Fzf_user%2Fmember%2Fresume-manage%2Fwrite%3Finner_medium%3Dnudge%26inner_source%3Dresume%26inner_campaign%3Dmain_login%26inner_term%3Dresume-write01&login_type=p"
							target="_blank"
							onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;"
							class="popup_login sl_naver"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_naver',''],['ga_lead','login','pc_login_layer','per_login_naver'])">네이버
								로그인</a></li>
						<li><a
							href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&url=%2Fzf_user%2Fmember%2Fresume-manage%2Fwrite%3Finner_medium%3Dnudge%26inner_source%3Dresume%26inner_campaign%3Dmain_login%26inner_term%3Dresume-write01&login_type=p"
							target="_blank"
							onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;"
							class="popup_login sl_facebook"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_facebook',''],['ga_lead','login','pc_login_layer','per_login_facebook'])">페이스북
								로그인</a></li>
						<li><a
							href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&url=%2Fzf_user%2Fmember%2Fresume-manage%2Fwrite%3Finner_medium%3Dnudge%26inner_source%3Dresume%26inner_campaign%3Dmain_login%26inner_term%3Dresume-write01&login_type=p"
							target="_blank"
							onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;"
							class="popup_login sl_kakao"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_kakao',''],['ga_lead','login','pc_login_layer','per_login_kakao'])">카카오
								로그인</a></li>
						<li><a
							href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&url=%2Fzf_user%2Fmember%2Fresume-manage%2Fwrite%3Finner_medium%3Dnudge%26inner_source%3Dresume%26inner_campaign%3Dmain_login%26inner_term%3Dresume-write01&login_type=p"
							target="_blank"
							onclick="window.open(this.href, '_blank', 'width=480,height=640'); return false;"
							class="popup_login sl_google"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_google',''],['ga_lead','login','pc_login_layer','per_login_google'])">구글
								로그인</a></li>
					</ul>
				</fieldset>
			</form>
			<button class="pop_login_layer_close" id="pop_login_layer_close">닫기</button>
		</div>
		<script type="text/javascript">

        var getId = (function () {
            var elCache = {};
            return function (id) {
                if (!elCache[id]) {
                    elCache[id] = document.getElementById(id);
                }
                return elCache[id];
            }
        })();

        var page_url = 'L3pmX3VzZXIvbWVtYmVyL3Jlc3VtZS1tYW5hZ2Uvd3JpdGU/aW5uZXJfbWVkaXVtPW51ZGdlJmlubmVyX3NvdXJjZT1yZXN1bWUmaW5uZXJfY2FtcGFpZ249bWFpbl9sb2dpbiZpbm5lcl90ZXJtPXJlc3VtZS13cml0ZTAx';
        var autoLoginCheck = getId('pop_login_layer').querySelector('form').ly_autologin;

        function addEvent(ele, eventType, func) {
            var obj = typeof ele === 'string' ? getId(ele) : ele;
            if (obj.addEventListener) {
                obj.addEventListener(eventType, func, false);
            } else if (obj.attachEvent) {//IE
                obj.attachEvent('on' + eventType, func);
            }
        }

        //아이디
        addEvent("ly_id", "focus", function () {
            getId('ly-id-label').style.display = 'none';
        });
        addEvent("ly_id", "blur", function () {
            if (getId('ly_id').value === '') {
                getId('ly-id-label').style.display = 'block';
            }
        });

        //패스워드
        addEvent("ly_password", "focus", function () {
            getId('ly-password-label').style.display = 'none';
        });
        addEvent("ly_password", "blur", function () {
            if (getId('ly_password').value === '') {
                getId('ly-password-label').style.display = 'block';
            }
        });

        //창닫기
        addEvent("pop_login_layer_close", "click", function () {
            getId('page_url').value = page_url;
            getId('pop_login_layer').style.display = 'none';
            getId('pop_login_layer_dimmed').style.display = 'none';
        });

        //로그인 유지 창닫기
        addEvent("auto_login_close", "click", function () {
            getId('tooltip_autologin').style.display = 'none';
        });


        //로그인 유지 안내 팝업
        addEvent(autoLoginCheck, 'click', function () {
            getId('tooltip_autologin').style.display = autoLoginCheck.checked ? 'block' : 'none';
        });

        //폼  체크
        function loginCheckMainLayer(form) {
            if (form.id.value === "") {
                alert("아이디를 입력하세요.");
                form.id.focus();
                return false;
            }
            if (form.id.value.indexOf(" ") > 0) {
                alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
                form.id.focus();
                return false;
            }
            if (form.id.value.length < 4) {
                alert("아이디는 4자이상이어야 합니다");
                form.id.focus();
                return false;
            }
            if (form.password.value === "") {
                alert("비밀번호를 입력하세요");
                form.password.focus();
                return false;
            }
            if (form.password.value.length < 4 || form.password.value.length > 32) {
                alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
                form.password.focus();
                return false;
            }
            return true;
        }

        //페이지 로딩시 초기화 시켜 준다.
        setTimeout(function () {
            var idInPut = getId('ly_id');
            var pwInput = getId('ly_password');
            if (!getId('ly_id').value) {
                idInPut.value = '';
                idInPut.blur();
            }
            pwInput.value = '';
            pwInput.blur();
        }, 50);
    </script>
	</div>
	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"03a1f7dfe5","applicationID":"443261373","transactionName":"YFJaMkNTDBIFAUJfWVkYeQVFWw0PSw9TW1RSRRcUVEEXDAFPW1dYVlBdSUZACxUB","queueTime":0,"applicationTime":638,"atts":"TBVZRAtJHxw=","errorBeacon":"bam.nr-data.net","agent":""}</script>
</body>
</html>
