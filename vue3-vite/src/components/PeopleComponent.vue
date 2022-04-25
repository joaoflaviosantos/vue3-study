<template>
  <div>
    <h2>This is a {{ name }} description.</h2>
    <InfoComponent />
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
      name: "Matheus",
    };
  },
};
</script>
