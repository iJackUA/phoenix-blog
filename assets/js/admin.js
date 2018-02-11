import Vue from 'vue'
import VueRouter from 'vue-router'
import "phoenix_html"
import socket from "./socket"
import Element from 'element-ui'
require("element-ui/lib/theme-chalk/index.css")
import App from './App.vue'
import PostsList from './admin/PostsList.vue'
import PostNew from './admin/PostNew.vue'
import PostEdit from './admin/PostEdit.vue'

Vue.use(VueRouter)
Vue.use(Element)

const routes = [
  { path: '/posts', component: PostsList },
  { path: '/post/new', component: PostNew },
  { path: '/post/:id', component: PostEdit },
  { path: '/', redirect: '/posts' }
]

const router = new VueRouter({
  routes // short for `routes: routes`
})

new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
