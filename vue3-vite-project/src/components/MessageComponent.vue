<template>
  <div class="message-container">
    <p style="margin-left: 5px">{{ msg }}</p>
  </div>
</template>

<script>
export default {
  name: "MessageComponent",
  props: {
    msg: String,
  },
};
</script>

<style scoped>
.message-container {
  color: #004085;
  background-color: #cce5ff;
  border: 2px solid #b8daff;
  border-radius: 5px;
  margin: 0 auto;
  margin-bottom: 25px;
  padding: 10px;
  max-width: 400px;
}
</style>
