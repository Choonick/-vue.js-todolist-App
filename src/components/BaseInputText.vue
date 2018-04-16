<template>
  <input type="text" class="input" :value="value" v-on="listeners">
</template>

<script type="text/javascript">
export default {
  props: {
    value: {
      type: String,
      default: ''
    }
  },
  computed: {
    listeners () {
      return {
        ...this.$listeners,
        input: $event => this.$emit('input', event.target.value)
      }
    }
  }
}
</script>

