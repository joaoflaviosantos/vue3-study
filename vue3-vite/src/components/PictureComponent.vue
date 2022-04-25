<template>
  <div>
    <img :src="avatar" :alt="description" height="200"/>
  </div>
</template>

<script>
export default {
  name: "PictureComponent",
  data() {
    return {
      avatar: "/img/my_avatar.png",
      description: "John",
    };
  },
};
</script>
