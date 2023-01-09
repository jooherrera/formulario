<template>
  <div class="q-pa-md q-gutter-sm form">
    <q-btn label="Console" color="primary" @click="clicked" />
    <Title ref="title" type="title" />
    <Title ref="title" type="subtitle" />
  </div>
</template>

<script setup>
import { ref } from "vue";
import Title from "./Title.vue";

const title = ref(null);

const clicked = () => {
  console.log(title.value.toText());
};
</script>
<style scoped>
.form {
  min-width: 340px;
  width: 780px;
  min-height: 600px;
}
</style>
