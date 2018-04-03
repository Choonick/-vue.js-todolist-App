<template>
  <p>
      - {{todo.text}}
      <button @click="$emit('remove',todo.id)">
          X
      </button>
  </p>
</template>

<script type="text/javascript">
export default {
  props: {
      todo: {
          type: Object,
          required: true
      }
  }
}
</script>


