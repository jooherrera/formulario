<template>
  <div class="container">
    <div contenteditable="true" ref="element" @keydown="noEnter" :class="type">
      Formulario sin titulo
    </div>
    <span></span>
  </div>
</template>
<script setup>
import { ref } from "vue";

const props = defineProps({
  type: String,
});

const element = ref(null);

const toText = () => {
  return element.value.innerText;
};

const noEnter = (e) => {
  if (e.key === "Enter") {
    e.preventDefault();
    return;
  }
};

defineExpose({ toText });
</script>

<style scoped>
.container {
  width: 100%;
}

div {
  /* font-size: 54px; */
  margin: 0;
  max-width: 100%;
  outline: none;
  height: 100px;
  height: max-content;
  position: relative;
  /* border-bottom: 1px solid #7f7f7f; */
  color: rgb(63, 63, 63);
}

span {
  position: absolute;
  border-bottom: 3px solid #1c87c9;
  width: 0;
  bottom: 0;
  left: 0;
  transition: all 0.3s ease-out;
}

div:focus ~ span {
  width: 100%;
}

.title {
  font-size: 54px;
}

.subtitle {
  font-size: 32px;
}

.question {
  font-size: 24px;
}
</style>
