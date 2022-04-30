<template>
  <div id="burguer-table">
    <div>
      <div id="burguer-table-heading">
        <div class="order-id">#:</div>
        <div>Client:</div>
        <div>Bread:</div>
        <div>Meat:</div>
        <div>Optionals:</div>
        <div>Actions:</div>
      </div>
    </div>
    <div id="burguer-table-rows">
      <div class="burguer-table-row">
        <div class="order-number">1</div>
        <div>TEste</div>
        <div>TEstee</div>
        <div>TEsteee</div>
        <div>
          <ul>
            <li>Salame</li>
            <li>Queijo</li>
          </ul>
        </div>
        <div>
          <select name="status" class="status">
            <option value="">--Select Option--</option>
          </select>
          <button class="delete-btn">Delete</button>
        </div>
      </div>
    </div>
    <div id="burguer-table-rows">
      <div class="burguer-table-row">
        <div class="order-number">1</div>
        <div>TEste</div>
        <div>TEstee</div>
        <div>TEsteee</div>
        <div>
          <ul>
            <li>Salame</li>
            <li>Queijo</li>
          </ul>
        </div>
        <div>
          <select name="status" class="status">
            <option value="">--Select Option--</option>
          </select>
          <button class="delete-btn">Delete</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "DashboardComponent",
  data() {
    return {
      orders: null,
    };
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
