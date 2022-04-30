<template>
  <div>
    <button @click="$emit('changePicture')">Change profile picture</button>
  </div>
</template>

<script>
export default {
  name: "PictureChange",
  emits: ["changePicture"],
};
</script>
