import Vue from 'vue'
import App from './App.vue'
import "phoenix_html"
import socket from "./socket"

new Vue({
  el: '#app',
  render: h => h(App)
})
