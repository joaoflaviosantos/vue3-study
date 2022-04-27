<template>
  <div>
    <p v-if="working">I'm working at this moment.</p>
    <p v-else>I'm looking for new opportunities.</p>
    <p>I'm using this back-end technologies:</p>
    <ul>
      <li
        v-for="(technology, index) in backend_technologies"
        v-bind:key="index"
      >
        {{ technology }}
      </li>
    </ul>
    <p>I'm using this front-end technologies:</p>
    <ul>
      <li v-for="technology in frontend_technologies" :key="technology.id">
        {{ technology.language }}
      </li>
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
      email: "john@gmail.com",
      my_link: "https://github.com/joaoflaviosantos",
      backend_technologies: ["Javascript", "Python", "PHP"],
      frontend_technologies: [
        { id: 1, language: "Vue" },
        { id: 2, language: "Quasar Framework" },
        { id: 3, language: "Bootstrap Vue" },
      ],
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
