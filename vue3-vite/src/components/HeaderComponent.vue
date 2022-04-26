<template>
  <div>
    <ul>
      <li>
        <h3><a href="#">Home</a></h3>
      </li>
      <li>
        <h3><a href="#">Projects</a></h3>
      </li>
      <li>
        <h3><a href="#">Contact</a></h3>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "HeaderComponent",
};
</script>

<style scoped>
div {
  background-color: #5b707d;
}

ul {
  list-style: none;
  display: flex;
}

li {
  margin-right: 30px;
}

a {
  color: rgb(255, 255, 255);
  text-decoration: none;
  transition: 0.5s;
}

a:hover {
  color: #51b38a;
}
</style>
