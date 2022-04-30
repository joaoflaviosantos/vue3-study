<template>
  <div id="footer">
    <footer>
      <p>Make Your Burguer &copy; 2022</p>
    </footer>
  </div>
</template>

<script>
export default {
  name: "FooterComponent",
};
</script>

<style scoped>
#footer {
  height: 85px;
  background-color: rgb(19, 18, 18);
  border-top: 4px solid #111;
  color: #fcba03;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  position: absolute;
  bottom: 0px;
}
</style>
