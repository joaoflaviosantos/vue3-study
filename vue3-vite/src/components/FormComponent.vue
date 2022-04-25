<template>
  <div>
    <form action="">
      <div>
        <InputText />
      </div>
      <div>
        <InputText />
      </div>
      <div>
        <InputSubmit />
      </div>
    </form>
  </div>
</template>

<script>
import InputText from "./forms/InputText.vue";
import InputSubmit from "./forms/InputSubmit.vue";

export default {
  name: "FormComponent",
  components: {
    InputText,
    InputSubmit,
  },
};
</script>
