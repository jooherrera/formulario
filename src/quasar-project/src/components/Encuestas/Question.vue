<template>
  <div id="item">
    <Input ref="question" type="question" />
    <!-- <q-list dense padding class="rounded-borders">
      <p>item</p>
      <p>item</p>
    </q-list> -->
  </div>
</template>

<script setup>
import { ref } from "vue";
import Input from "./Input.vue";

const title = ref(null);
const subtitle = ref(null);

const data = () => {
  return {
    title: title.value.toText(),
    subtitle: subtitle.value.toText(),
  };
};

defineExpose({ getData: data });
</script>

<style lang="scss"></style>
