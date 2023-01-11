<template>
  <div id="option">
    <div class="check" @click="clicked"></div>
    <Input type="question" />
  </div>
</template>

<script setup>
import Input from "./Input.vue";

const clicked = () => {
  console.log("Clicked");
};
</script>

<style lang="scss" scoped>
#option {
  display: flex;
  flex-direction: row;
  align-items: center;
  width: 100%;
  margin-top: 10px;
}

.check {
  width: 30px;
  height: 30px;
  border-radius: 50%;
  border: 2px solid grey;
  background-color: transparent;
  margin-right: 10px;
}
</style>
