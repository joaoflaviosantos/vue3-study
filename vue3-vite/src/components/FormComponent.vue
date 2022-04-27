<template>
  <div>
    <h2>My form:</h2>
    <form action="" @submit="enviarFormulario($event)">
      <div>
        <input type="text" v-model="name" />
      </div>
      <div>
        <input type="text" v-model="email" />
      </div>
      <div>
        <InputSubmit />
      </div>
    </form>
    <p>Content</p>
    <p>Content</p>
    <p>Content</p>
  </div>
</template>

<script>
//import InputText from "./forms/InputText.vue";
import InputSubmit from "./forms/InputSubmit.vue";

export default {
  name: "FormComponent",
  components: {
    //InputText,
    InputSubmit,
  },
  data() {
    return {
      name: "",
      email: "",
    };
  },
  methods: {
    enviarFormulario(e) {
      e.preventDefault();

      const name = this.name;
      const email = this.email;
      console.log("Form sended!");
      console.log("Name is: " + name);
      console.log("Email is: " + email);

      // Async Ajax, Axios or Apollo backend data persist (Conection)

      // Async Ajax, Axios or Apollo backend data persist (Requesting)
    },
  },
};
</script>

<style scoped>
p {
  padding: 50px;
}
</style>
