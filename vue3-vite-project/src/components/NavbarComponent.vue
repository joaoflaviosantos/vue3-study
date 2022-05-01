<template>
  <div id="nav">
    <router-link to="/" id="logo-url">
      <img :src="logo" :alt="alt" id="logo" />
    </router-link>
    <router-link :to="{ name: 'Home' }">Home</router-link>
    <router-link :to="{ name: 'Orders' }">Orders</router-link>
  </div>
</template>

<script>
export default {
  name: "NavbarComponent",
  props: ["logo", "alt"],
};
</script>

<style scoped>
#nav {
  background-color: rgb(19, 18, 18);
  border-bottom: 4px solid #111;
  padding: 15px 50px;
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

#nav #logo-url {
  margin: auto;
  margin-left: 0px;
}

#logo {
  width: 40px;
  height: 40px;
}

#nav a {
  color: #fcba03;
  text-decoration: None;
  margin: 12px;
  transition: 0.5s;
}

#nav a:hover {
  color: #ffffff;
}
</style>
