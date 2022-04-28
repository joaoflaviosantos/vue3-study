<template>
  <div>
    <button @click="activate">Click here</button>
    <span v-show="active">Active!</span>
  </div>
</template>

<script>
export default {
  name: "ReuseComponent",
  data() {
    return {
      text: "",
      active: false,
    };
  },
  methods: {
    activate() {
      this.active = !this.active;
    },
  },
};
</script>
