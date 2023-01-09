<template>
  <div>
    <input v-model="value" />
    <span></span>
  </div>
</template>

<script setup>
import { ref } from "vue";

const value = ref("");

defineExpose({ value });
</script>

<style scoped>
input {
  width: 100%;
  font-size: 32px;
  margin: 0;
  outline: none;
  border-color: transparent;
  border-bottom: 1px solid #7f7f7f;
  font-weight: 300;
}

div {
  margin: 0;
  width: 100%;
  height: max-content;
  position: relative;
}

span {
  position: absolute;
  border-bottom: 5px solid #1c87c9;
  width: 0;
  bottom: 0;
  left: 0;
  transition: all 0.3s ease-out;
}

input:focus ~ span {
  width: 100%;
}
</style>
