var $pluginID = "com.mob.sharesdk.FacebookMessenger";eval(function(p,a,c,k,e,r){e=function(c){return(c<62?'':e(parseInt(c/62)))+((c=c%62)>35?String.fromCharCode(c+29):c.toString(36))};if('0'.replace(0,e)==0){while(c--)r[e(c)]=k[c];k=[function(e){return r[e]||e}];e=function(){return'([1-9a-zA-Z]|1\\w)'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('a C={"D":"covert_url"};7 b(9){6.S=9;6.j={"A":2,"B":2};6._currentUser=2}b.c.9=7(){k 6.S};b.c.u=7(){k"b"};b.c.cacheDomain=7(){k"SSDK-Platform-"+6.9()};b.c.N=7(){5(6.j["B"]!=2&&6.j["B"][C.D]!=2){k 6.j["B"][C.D]}f 5(6.j["A"]!=2&&6.j["A"][C.D]!=2){k 6.j["A"][C.D]}k $1.3.N()};b.c.localAppInfo=7(H){5(T.U==0){k 6.j["A"]}f{6.j["A"]=H}};b.c.serverAppInfo=7(H){5(T.U==0){k 6.j["B"]}f{6.j["B"]=H}};b.c.saveConfig=7(){};b.c.isSupportAuth=7(){k false};b.c.authorize=7(I,settings){a d={"l":$1.3.m.E,"n":"平台［"+6.u()+"］不支持授权功能!"};$1.native.ssdk_authStateChanged(I,$1.3.g.o,d)};b.c.cancelAuthorize=7(4){};b.c.getUserInfo=7(query,4){a d={"l":$1.3.m.E,"n":"平台［"+6.u()+"］不支持获取用户信息功能!"};5(4!=2){4($1.3.g.o,d)}};b.c.addFriend=7(I,user,4){a d={"l":$1.3.m.E,"n":"平台["+6.u()+"]不支持添加好友方法!"};5(4!=2){4($1.3.g.o,d)}};b.c.getFriends=7(cursor,size,4){a d={"l":$1.3.m.E,"n":"平台["+6.u()+"]不支持获取好友列表方法!"};5(4!=2){4($1.3.g.o,d)}};b.c.callApi=7(F,method,params,headers,4){a d={"l":$1.3.m.E,"n":"平台［"+6.u()+"］不支持调用API功能!"};5(4!=2){4($1.3.g.o,d)}};b.c.createUserByRawData=7(rawData){k 2};b.c.share=7(I,h,4){a v=6;a y=2;a G=2;a q=2;a r=2;a J=h!=2?h["@J"]:2;a p={"@J":J};a 9=$1.3.s(6.9(),h,"9");5(9==2){9=$1.3.t.V}5(9==$1.3.t.V){9=6.W(h)}$1.z.isPluginRegisted("com.1.sharesdk.connector.facebookmessenger",7(8){5(8.i){$1.z.canOpenURL("fb-messenger://",7(8){5(8.i){switch(9){O $1.3.t.X:a w=$1.3.s(v.9(),h,"w");5(Y.c.Z.10(w)===\'[11 12]\'){y=w[0]}G=$1.3.s(v.9(),h,"13");5(y!=2||G!=2){5(G!=2){$1.z.ssdk_facebookmessengerShareGif(G,7(8){a e=8.i;5(8.x==$1.3.g.K){e={};e["L"]=8.i}5(4!=2){4(8.x,e,2,p)}})}f{v.14(y,7(imageUrl){$1.z.ssdk_facebookmessengerShareImage(y,7(8){a e=8.i;5(8.x==$1.3.g.K){e={};e["L"]=8.i;e["w"]=[y]}5(4!=2){4(8.x,e,2,p)}})})}}f{d={"l":$1.3.m.M,"n":"分享参数y或P不能为空!"};5(4!=2){4($1.3.g.o,d,2,p)}}Q;O $1.3.t.15:q=$1.3.s(v.9(),h,"q");5(q!=2){$1.z.ssdk_facebookmessengerShareAudio(q,7(8){a e=8.i;5(8.x==$1.3.g.K){e={};e["L"]=8.i}5(4!=2){4(8.x,e,2,p)}})}f{d={"l":$1.3.m.M,"n":"分享参数q不能为空!"};5(4!=2){4($1.3.g.o,d,2,p)}}Q;O $1.3.t.16:r=$1.3.s(v.9(),h,"r");5(r!=2){$1.z.ssdk_facebookmessengerShareVideo(r,7(8){a e=8.i;5(8.x==$1.3.g.K){e={};e["L"]=8.i}5(4!=2){4(8.x,e,2,p)}})}f{d={"l":$1.3.m.M,"n":"分享参数r不能为空!"};5(4!=2){4($1.3.g.o,d,2,p)}}Q}}f{d={"l":$1.3.m.NotYetInstallClient,"n":"分享平台［"+v.u()+"］尚未安装客户端，不支持分享!"};5(4!=2){4($1.3.g.o,d,2,p)}}})}f{d={"l":$1.3.m.M,"n":"平台["+v.u()+"]需要依靠17.18进行分享，请先导入17.18后再试!"};5(4!=2){4($1.3.g.o,d,2,p)}}})};b.c.14=7(F,4){5(!/^(file\\:\\/)?\\//.test(F)){$1.z.downloadFile(F,7(8){5(8.i!=2){5(4!=2){4(8.i)}}f{5(4!=2){4(2)}}})}f{5(4!=2){4(F)}}};b.c._convertUrl=7(R,4){5(6.N()){$1.3.convertUrl(6.9(),2,R,4)}f{5(4){4({"i":R})}}};b.c.W=7(h){a 9=$1.3.t.Text;a w=$1.3.s(6.9(),h,"w");a P=$1.3.s(6.9(),h,"13");a q=$1.3.s(6.9(),h,"q");a r=$1.3.s(6.9(),h,"r");5(Y.c.Z.10(w)===\'[11 12]\'||P!=2){9=$1.3.t.X}f 5(q!=2){9=$1.3.t.15}f 5(r!=2){9=$1.3.t.16}k 9};$1.3.registerPlatformClass($1.3.platformType.b,b);',[],71,'|mob|null|shareSDK|callback|if|this|function|data|type|var|FacebookMessenger|prototype|error|resultData|else|responseState|parameters|result|_appInfo|return|error_code|errorCode|error_message|Fail|userData|audio|video|getShareParam|contentType|name|self|images|state|image|ext|local|server|FacebookMessengerInfoKeys|ConvertUrl|UnsupportFeature|url|emoticon|value|sessionId|flags|Success|raw_data|APIRequestFail|convertUrlEnabled|case|gif|break|contents|_type|arguments|length|Auto|_getShareType|Image|Object|toString|apply|object|Array|emoticon_data|_getImagePath|Audio|Video|ShareSDKConnector|framework'.split('|'),0,{}))