<template>
  <div class="cc">
    <div>
      <div>x李克</div>
      <Header @adds="add" />
      <div v-for="(item, idx) in list" :key="idx" style="display: flex">
        <div style="margin-right: 10px">{{ item }}</div>
        <input v-model="list[idx]" type="text" style="margin-right: 10px" />
        <div @click="deletes(idx)" class="delete" style="margin-right: 10px">-</div>
        <div @click="edit(idx)">edit</div>
      </div>
      <AsdHeader></AsdHeader>
    </div>

    <div class="footer">
      <a href="https://beian.miit.gov.cn/#/Integrated/index" class="record" target="_blank">
        蜀ICP备2021006541号
      </a>
    </div>
  </div>
</template>

<script>
import Header from './views/components/Header'

export default {
  components: {
    Header
  },

  data () {
    return {
      list: []
    }
  },

  methods: {
    add (val) {
      this.list.push(val)
    },
    deletes (idx) {
      this.list.splice(idx, 1)
    },
    edit (idx) {
      this.$refs[`list${idx}`].nodeName = 'iput'
      console.log(this.$refs[`list${idx}`])
    }
  }
}
</script>

<style>
html, body {
  height: 100%;
}

* {
  margin: 0;
  padding: 0;
}

.cc {
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  height: 100%;
}

.footer {
  height: 100px;
  text-align: center;
  line-height: 100px;
  background-color: black;
}
.record {
  margin-bottom: 20px;
  color: #bbb;
  cursor: pointer;
  text-decoration: none;
}
.record:hover {
  color: #ccc
}
</style>
