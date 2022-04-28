<template>
  <div>
    <p v-show="online">{{ network_status }}</p>
  </div>
</template>

<script>
export default {
  name: "NetWorkStatus",

  data() {
    return {
      online: false,
      network_status: "",
    };
  },
  mounted() {
    if (navigator.onLine) {
      console.log("You are online!");
      this.online = true;
      this.network_status = "You are online!";
    } else {
      console.log("You are offline!");
      this.online = false;
      this.network_status = "You are offline!";
    }
  },
};
</script>
