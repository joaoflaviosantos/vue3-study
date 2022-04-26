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
    <div>
      <!--<button v-on:click="showEmail">Mostrar e-mail</button>-->
      <button @click="showEmail">{{ button_text }}</button>
    </div>
    <p v-show="show_email">Send a message to: {{ email }}</p>
    <p class="test">
      To access my portfolio <a v-bind:href="my_link">click here</a>.
    </p>
    <PictureComponent />
  </div>
</template>

<script>
import PictureComponent from "./PictureComponent.vue";
export default {
  name: "InfoComponent",
  components: {
    PictureComponent,
  },
  data() {
    return {
      working: false,
      show_email: false,
      button_text: "Show email",
      email: "jhon@gmail.com",
      my_link: "https://github.com/joaoflaviosantos",
    };
  },
  methods: {
    showEmail() {
      this.show_email = !this.show_email;
      if (!this.show_email) {
        this.button_text = "Show email";
      } else {
        this.button_text = "Hide email";
      }
    },
  },
};
</script>

<style>
.parent-paragraph {
  color: #51b38a;
}
</style>
