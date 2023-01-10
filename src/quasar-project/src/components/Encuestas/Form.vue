<template>
  <div class="q-pa-md q-gutter-sm form">
    <q-btn label="Console" color="primary" @click="clicked" />
    <Header ref="header" />
    <Question ref="" />
  </div>
</template>

<script setup>
import { ref } from "vue";
import Header from "./Header.vue";
import Question from "./Question.vue";

const header = ref(null);

const clicked = () => {
  console.log(header.value.getData());
};
</script>
<style scoped>
.form {
  min-width: 340px;
  width: 780px;
  min-height: 600px;
}
</style>
