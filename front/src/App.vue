<template>
  <div id="app">
      <Top v-show="$route.meta.show"/>
      <Header v-show="$route.meta.show"/>
      <router-view></router-view>
  </div>
</template>

<script>
import Header from "@/components/Header"
import Top from "@/components/Top"

export default {
  name: 'App',
  components: {
      Header,
      Top
  }
}
</script>

<style>
</style>
