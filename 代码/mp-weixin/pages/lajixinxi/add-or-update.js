(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/lajixinxi/add-or-update"],{"2a6a":function(e,i,n){"use strict";(function(e){Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0;var t=r(n("a34a"));function r(e){return e&&e.__esModule?e:{default:e}}function a(e,i,n,t,r,a,u){try{var o=e[a](u),c=o.value}catch(l){return void n(l)}o.done?i(c):Promise.resolve(c).then(t,r)}function u(e){return function(){var i=this,n=arguments;return new Promise((function(t,r){var u=e.apply(i,n);function o(e){a(u,t,r,o,c,"next",e)}function c(e){a(u,t,r,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(function(){return resolve(n("fe0e"))}.bind(null,n)).catch(n.oe)},c={data:function(){return{cross:"",ro:{lajixinxiName:!1,lajixinxiTypes:!1,lajixinxiPhoto:!1,lajixinxiClickNumber:!1,lajixinxiContent:!1,createTime:!1},ruleForm:{lajixinxiName:"",lajixinxiTypes:"",lajixinxiValue:"",lajixinxiPhoto:"",lajixinxiClickNumber:"",lajixinxiContent:"",createTime:""},user:{},lajixinxiTypesOptions:[],lajixinxiTypesIndex:0}},components:{wPicker:o},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(e){var i=this;return u(t.default.mark((function n(){var r,a,u;return t.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return r={page:1,limit:100,dicCode:"lajixinxi_types"},n.next=3,i.$api.page("dictionary",r);case 3:if(a=n.sent,i.lajixinxiTypesOptions=a.data.list,!e.id){n.next=11;break}return i.ruleForm.id=e.id,n.next=9,i.$api.info("lajixinxi",i.ruleForm.id);case 9:u=n.sent,i.ruleForm=u.data;case 11:e.lajixinxiId&&(i.ruleForm.lajixinxiId=e.lajixinxiId);case 12:case"end":return n.stop()}}),n)})))()},methods:{lajixinxiTypesChange:function(e){this.lajixinxiTypesIndex=e.target.value,this.ruleForm.lajixinxiValue=this.lajixinxiTypesOptions[this.lajixinxiTypesIndex].indexName,this.ruleForm.lajixinxiTypes=this.lajixinxiTypesOptions[this.lajixinxiTypesIndex].codeIndex},lajixinxiPhotoTap:function(){var e=this;this.$api.upload((function(i){e.ruleForm.lajixinxiPhoto=e.$base.url+"upload/"+i.file,e.$forceUpdate(),e.$nextTick((function(){}))}))},createTimeConfirm:function(e){console.log(e),this.ruleForm.createTime=e.result,this.$forceUpdate()},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var i=this;return u(t.default.mark((function n(){return t.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(i.ruleForm.lajixinxiName){n.next=3;break}return i.$utils.msg("垃圾名称不能为空"),n.abrupt("return");case 3:if(i.ruleForm.lajixinxiPhoto){n.next=6;break}return i.$utils.msg("垃圾图片不能为空"),n.abrupt("return");case 6:if(i.ruleForm.lajixinxiClickNumber||i.$validate.isIntNumer(i.ruleForm.lajixinxiClickNumber)||!(i.ruleForm.lajixinxiClickNumber>0)){n.next=9;break}return i.$utils.msg("浏览次数不能为空，不能小于0 格式为数字"),n.abrupt("return");case 9:if(!i.ruleForm.id){n.next=14;break}return n.next=12,i.$api.update("lajixinxi",i.ruleForm);case 12:n.next=16;break;case 14:return n.next=16,i.$api.save("lajixinxi",i.ruleForm);case 16:e.setStorageSync("pingluenStateState",!0),i.$utils.msgBack("提交成功");case 18:case"end":return n.stop()}}),n)})))()},getDate:function(e){var i=new Date,n=i.getFullYear(),t=i.getMonth()+1,r=i.getDate();return"start"===e?n-=60:"end"===e&&(n+=2),t=t>9?t:"0"+t,r=r>9?r:"0"+r,"".concat(n,"-").concat(t,"-").concat(r)},toggleTab:function(e){this.$refs[e].show()}}};i.default=c}).call(this,n("543d")["default"])},"6bab":function(e,i,n){"use strict";n.r(i);var t=n("c865"),r=n("f9de");for(var a in r)"default"!==a&&function(e){n.d(i,e,(function(){return r[e]}))}(a);n("ec8d");var u,o=n("f0c5"),c=Object(o["a"])(r["default"],t["b"],t["c"],!1,null,"a31a7e7e",null,!1,t["a"],u);i["default"]=c.exports},"6dcc":function(e,i,n){"use strict";(function(e){n("b839");t(n("66fd"));var i=t(n("6bab"));function t(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=n,e(i.default)}).call(this,n("543d")["createPage"])},a706:function(e,i,n){},c865:function(e,i,n){"use strict";n.d(i,"b",(function(){return r})),n.d(i,"c",(function(){return a})),n.d(i,"a",(function(){return t}));var t={wPicker:function(){return Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(n.bind(null,"fe0e"))}},r=function(){var e=this,i=e.$createElement;e._self._c},a=[]},ec8d:function(e,i,n){"use strict";var t=n("a706"),r=n.n(t);r.a},f9de:function(e,i,n){"use strict";n.r(i);var t=n("2a6a"),r=n.n(t);for(var a in t)"default"!==a&&function(e){n.d(i,e,(function(){return t[e]}))}(a);i["default"]=r.a}},[["6dcc","common/runtime","common/vendor"]]]);