<template>
  <h1>Hello Vue3!</h1>
  <p>My name is {{ name }}. I work with {{ occupation }}.</p>
</template>

<script>
export default {
  name: "FirstComponent",
  data() {
    return {
      name: "John",
      occupation: "Software Developer",
    };
  },
};
</script>
