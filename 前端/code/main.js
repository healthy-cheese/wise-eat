import Vue from 'vue'
import App from './App'

Vue.config.productionTip = false

App.mpType = 'app'

Date.prototype.formatDate = function(time){
    var year = this.getFullYear();
    var month = this.getMonth() + 1;
    var day = this.getDate();
    var hours = this.getHours();
    var minutes = this.getMinutes();
    var seconds = this.getSeconds();
    if(hours < 10) hours = '0' + hours;
    if(minutes < 10) minutes = '0' + minutes;
    if(seconds < 10) seconds = '0' + seconds;
    if(time){
        return year+'年'+month+'月'+day+'日'+' '+hours+':'+minutes+':'+seconds;
    }
    return year+'年'+month+'月'+day+'日';
}
const app = new Vue({
    ...App
})
app.$mount()
