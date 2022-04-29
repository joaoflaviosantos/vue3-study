<template>
  <div>
    <h2>{{ name }}</h2>
    <!--<InfoComponent compEmail="john.pro@gmail.com" />-->
    <InfoComponent :email="email" :working="false" />
    <FormComponent />
  </div>
</template>

<script>
import InfoComponent from "./InfoComponent.vue";
import FormComponent from "./FormComponent.vue";

export default {
  name: "PeopleComponent",
  components: {
    InfoComponent,
    FormComponent,
  },
  data() {
    return {
      name: "Binded Description Title",
      email: "john.pro@gmail.com",
    };
  },
};
</script>
