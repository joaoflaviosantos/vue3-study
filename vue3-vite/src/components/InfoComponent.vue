<template>
  <div>
    <p v-if="working">I'm working at this moment.</p>
    <p v-else>I'm looking for new opportunities.</p>
    <p>I'm using this technologies:</p>
    <ul>
      <li>Javascript</li>
      <li>Python</li>
      <li>PHP</li>
    </ul>
    <p v-show="show_email">Send a message to: {{ email }}</p>
  </div>
</template>

<script>
export default {
  name: "InfoComponent",
  data() {
    return {
      working: false,
      show_email: true,
      email: "jhon@gmail.com",
    };
  },
};
</script>
