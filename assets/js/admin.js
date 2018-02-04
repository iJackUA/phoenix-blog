import Vue from 'vue'
import "phoenix_html"
import socket from "./socket"
import Element from 'element-ui'
import App from './App.vue'

Vue.use(Element)

new Vue({
  el: '#app',
  render: h => h(App)
})
