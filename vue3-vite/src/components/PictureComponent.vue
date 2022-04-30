<template>
  <div>
    <img :src="avatar" :alt="description" height="200" />
    <PictureChange @change-picture="changePicture" />
  </div>
</template>

<script>
import PictureChange from "./PictureChange.vue";
export default {
  name: "PictureComponent",
  data() {
    return {
      avatar_standard: "/img/my_avatar.png",
      avatar: "/img/my_avatar.png",
      avatar_2: "/img/my_avatar_2.png",
      description: "John",
    };
  },
  methods: {
    changePicture() {
      if (this.avatar == this.avatar_standard) {
        this.avatar = this.avatar_2;
      } else {
        this.avatar = this.avatar_standard;
      }
    },
  },
  components: { PictureChange },
};
</script>
