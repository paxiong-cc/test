import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false

// eslint-disable-next-line
import paxiong from 'paxiong'
console.log(paxiong)
Vue.use(paxiong)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
