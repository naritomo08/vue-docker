<script setup>
import { ref } from 'vue';
const todoRef = ref('');
const todoListRef = ref([]);

const addTodo = () => {

    const id = new Date().getTime();

    todoListRef.value.push({ id: id, task: todoRef.value });

    localStorage.todoList = JSON.stringify(todoListRef.value);

    todoRef.value = '';
};
</script>

<template>
    <div class="box_input">
        <input type="text" 
               class="todo_input"
               v-model="todoRef"
               placeholder="+ TODOを入力"
        />
        <button class="btn" @click="addTodo">追加</button>
    </div>
    <div class="box_list">
        <div class="todo_list">
            <div class="todo">
                <input type="checkbox" class="check" /><label>TODO01</label>
            </div>
            <div class="btns">
                <button class="btn green">編</button>
                <button class="btn pink">削</button>
            </div>
        </div>
        <div class="todo_list">
            <div class="todo">
                <input type="checkbox" class="check" /><label>TODO02</label>
            </div>
            <div class="btns">
                <button class="btn green">編</button>
                <button class="btn pink">削</button>
            </div>
        </div>
    </div>
    
</template>

<style src="../assets/css/maintodo.css" scoped>
</style>