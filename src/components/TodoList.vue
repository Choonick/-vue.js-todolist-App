<template>
    <div>
        <BaseInputText 
        v-model="newTodoText" 
        @keydown.enter="addTodo"/>
        <ul v-if="todos.length">
            <TodoListItem 
            v-for="todo in todos" 
            :key="todo.id" 
            :todo="todo" 
            @remove="removeTodo"/>
        </ul>
        <p v-else>
            해야할 일을 추가해 주세요.
        </p>
    </div>
</template>

<script type="text/javascript">
import BaseInputText from "./BaseInputText.vue";
import TodoListItem from "./TodoListItem.vue";

let nextTodoId = 1

export default {
  components: {
    BaseInputText,
    TodoListItem
  },
  
  data() {
    return {
      newTodoText: '',
        todos: []
    }
  },
  methods: {
    addTodo() {
      const trimmedText = this.newTodoText.trim();
      console.log(this.newTodoText);
      if (trimmedText) {
        this.todos.push({
          id: nextTodoId++,
          text: trimmedText
        });
        this.newTodoText = '';
      }
    },
    removeTodo(idToRemove) {
      this.todos = this.todos.filter(todo => {
        return todo.id !== idToRemove;
      })
    }
  }
};
</script>

