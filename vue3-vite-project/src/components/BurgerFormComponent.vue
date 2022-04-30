<template>
  <div>
    <MessageComponent :msg="msg" v-show="msg" />
    <div>
      <form id="burguer-form" @submit="createBurger">
        <div class="input-container">
          <label for="name">Customer Name:</label>
          <input
            type="text"
            name="name"
            id="name"
            v-model="name"
            placeholder="Enter your name"
          />
        </div>
        <div class="input-container">
          <label for="bread">Choose bread:</label>
          <select name="bread" id="bread" v-model="bread">
            <option value="">--Select Option--</option>
            <option
              v-for="bread in bked_breads"
              :key="bread.id"
              :value="bread.tipo"
            >
              {{ bread.tipo }}
            </option>
          </select>
        </div>
        <div class="input-container">
          <label for="meat">Choose meat:</label>
          <select name="meat" id="meat" v-model="meat">
            <option value="">--Select Option--</option>
            <option
              v-for="meat in bked_meats"
              :key="meat.id"
              :value="meat.tipo"
            >
              {{ meat.tipo }}
            </option>
          </select>
        </div>
        <div id="optionals-container" class="input-container">
          <label id="optionals-title" for="optionals">Choose optionals:</label>
          <div
            class="checkbox-container"
            v-for="optional in bked_optionals"
            :key="optional.id"
          >
            <input
              :value="optional.tipo"
              type="checkbox"
              name="optionals"
              v-model="optionals"
            />
            <span>{{ optional.tipo }}</span>
          </div>
        </div>
        <div class="input-container">
          <input type="submit" class="submit-btn" value="Send my order" />
        </div>
      </form>
      <!--<div class="input-container">
        <input
          type="submit"
          @click="getIngredients"
          class="submit-btn"
          value="Send my order"
        />
      </div>-->
    </div>
  </div>
</template>

<script>
import MessageComponent from "./MessageComponent.vue";

export default {
  name: "BurgerFormComponent",
  data() {
    return {
      bked_breads: null,
      bked_meats: null,
      bked_optionals: null,
      name: null,
      bread: null,
      meat: null,
      optionals: [],
      message: null,
      msg: "",
    };
  },
  methods: {
    async getIngredients() {
      const req = await fetch("http://localhost:3000/ingredientes");
      const data = await req.json();
      //console.log(data);
      this.bked_breads = data.paes;
      this.bked_meats = data.carnes;
      this.bked_optionals = data.opcionais;
    },
    async createBurger(e) {
      e.preventDefault();
      const data = {
        name: this.name,
        bread: this.bread,
        meat: this.meat,
        optionals: Array.from(this.optionals),
        status: "Requested",
      };
      const dataJson = JSON.stringify(data);
      //console.log(data);
      //console.log(dataJson);
      const req = await fetch("http://localhost:3000/burgers", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: dataJson,
      });
      const res = await req.json();

      //console.log(res);
      this.msg = `Order ID ${res.id} sended successfully!`;

      setTimeout(() => (this.msg = ""), 3000);

      this.name = "";
      this.bread = "";
      this.meat = "";
      this.optionals = "";
    },
  },
  mounted() {
    this.getIngredients();
  },
  components: {
    MessageComponent,
  },
};
</script>

<style scoped>
#burguer-form {
  max-width: 400px;
  margin: 0 auto;
}

.input-container {
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

label {
  font-weight: bold;
  margin-bottom: 15px;
  color: #222;
  padding: 5px 10px;
  border-left: 4px solid #fcba03;
}

input,
select {
  padding: 5px 10px;
  width: 350;
}

#optionals-container {
  flex-direction: row;
  flex-wrap: wrap;
}

#optionals-title {
  width: 100%;
}
.checkbox-container {
  display: flex;
  align-items: flex-start;
  width: 50%;
  margin-bottom: 20px;
}

.checkbox-container span,
.checkbox-container input {
  width: auto;
}

.checkbox-container span {
  margin-left: 6px;
  font-weight: bold;
}

.submit-btn {
  background-color: #222;
  color: #fcba03;
  font-weight: bold;
  border: 2px solid #222;
  padding: 10px;
  font-size: 16px;
  margin: 0 auto;
  cursor: pointer;
  transition: 0.5s;
}

.submit-btn:hover {
  background-color: transparent;
  color: #222;
}
</style>
