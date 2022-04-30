<template>
  <div>
    <p>Message component</p>
    <div>
      <form id="burguer-form">
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
            <option value="integral">integral</option>
          </select>
        </div>
        <div class="input-container">
          <label for="meat">Choose meat:</label>
          <select name="meat" id="meat" v-model="meat">
            <option value="">--Select Option--</option>
            <option value="integral">integral</option>
          </select>
        </div>
        <div id="optionals-container" class="input-container">
          <label id="optionals-title" for="optionals">Choose optionals:</label>
          <div class="checkbox-container">
            <input
              type="checkbox"
              name="optionals"
              v-model="optionals"
              value="salame"
            />
            <span>Salame</span>
          </div>
          <div class="checkbox-container">
            <input
              type="checkbox"
              name="optionals"
              v-model="optionals"
              value="salame"
            />
            <span>Salame</span>
          </div>
          <div class="checkbox-container">
            <input
              type="checkbox"
              name="optionals"
              v-model="optionals"
              value="salame"
            />
            <span>Salame</span>
          </div>
        </div>
        <div class="input-container">
          <input type="submit" class="submit-btn" value="Send my order" />
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: "BurgerFormComponent",
  data() {
    return {
      name: "",
      bread: "",
      meat: "",
    };
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
