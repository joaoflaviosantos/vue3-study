<template>
  <div>
    <MessageComponent :msg="msg" v-show="msg" />
  </div>
  <div id="burguer-table">
    <div>
      <div id="burguer-table-heading">
        <div class="order-id">#:</div>
        <div>Client:</div>
        <div>Bread:</div>
        <div>Meat:</div>
        <div>Optionals:</div>
        <div>Current step:</div>
      </div>
    </div>
    <div id="burguer-table-rows">
      <div v-for="order in orders" :key="order.id" class="burguer-table-row">
        <div class="order-number">{{ order.id }}</div>
        <div>{{ order.name }}</div>
        <div>{{ order.bread }}</div>
        <div>{{ order.meat }}</div>
        <div>
          <ul>
            <li v-for="(optional, index) in order.optionals" :key="index">
              {{ optional }}
            </li>
          </ul>
        </div>
        <div>
          <select
            name="status"
            class="status"
            @change="updateCurrentOrderStep($event, order.id)"
          >
            <!--<option value="">--Select Option--</option>-->
            <option
              v-for="status in bked_status"
              :key="status.id"
              :value="status.tipo"
              :selected="order.status == status.tipo"
            >
              {{ status.tipo }}
            </option>
          </select>
          <button class="delete-btn" @click="deleteOrder(order.id)">
            Delete
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import MessageComponent from "./MessageComponent.vue";
export default {
  name: "DashboardComponent",
  data() {
    return {
      orders: null,
      order_id: null,
      bked_status: [],
      msg: "",
    };
  },
  methods: {
    async getStatus() {
      const req = await fetch("http://localhost:3000/status");
      const data = await req.json();
      //console.log(data);
      this.bked_status = data;
    },
    async getOrders() {
      const req = await fetch("http://localhost:3000/orders");
      const data = await req.json();
      //console.log(data);
      this.orders = data;
      // resgatar os status
    },
    async deleteOrder(id) {
      //console.log(id);
      const req = await fetch(`http://localhost:3000/orders/${id}`, {
        method: "DELETE",
      });
      const res_clone = await req.clone();
      //const res_json = await req.json();

      //console.log(res_clone);
      //console.log(res_json);
      if (res_clone.status == 200) {
        //this.getOrders();
        const updated_orders = this.orders.filter((item) => item.id !== id);
        this.orders = updated_orders;
        this.msg = `Order ${id}: deleted successfully!`;
        setTimeout(() => (this.msg = ""), 2000);
      }
    },
    async updateCurrentOrderStep(event, id) {
      const option = event.target.value;
      const dataJson = JSON.stringify({ status: option });
      //console.log(id);
      //console.log(option);
      //console.log(dataJson);
      const req = await fetch(`http://localhost:3000/orders/${id}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: dataJson,
      });
      const res_clone = await req.clone();
      const res_json = await req.json();

      //console.log(res_clone);
      //console.log(res_json);
      if (res_clone.status == 200) {
        //console.log(res);
        //console.log(this.msg);
        this.msg = `Order ${res_json.id}: status updated to ${res_json.status}!`;
        //console.log(this.msg);
        setTimeout(() => (this.msg = ""), 2000);
      }
    },
  },
  mounted() {
    this.getStatus();
    this.getOrders();
  },
  components: {
    MessageComponent,
  },
};
</script>

<style scoped>
#burguer-table {
  max-width: 1200px;
  margin: 0 auto;
}
#burguer-table-heading,
#burguer-table-rows,
.burguer-table-row {
  display: flex;
  flex-wrap: wrap;
}

#burguer-table-heading {
  font-weight: bold;
  padding: 12px;
  border-bottom: 3px solid;
}

#burguer-table-heading div,
.burguer-table-row div {
  width: 19%;
}

.burguer-table-row {
  width: 100%;
  padding: 12px;
  border-bottom: 1px solid #ccc;
}

#burguer-table-heading .order-id,
.burguer-table-row .order-number {
  width: 5%;
}

select {
  padding: 6px;
  margin-right: 12px;
}

.delete-btn {
  background-color: rgb(212, 52, 52);
  color: #ffffff;
  font-weight: bold;
  border: 2px solid #ffffff;
  padding: 6px;
  font-size: 14px;
  margin: 0 auto;
  cursor: pointer;
  transition: 0.4s;
}

.delete-btn:hover {
  background-color: transparent;
  color: rgb(212, 52, 52);
  border: 2px solid rgb(212, 52, 52);
}
</style>
