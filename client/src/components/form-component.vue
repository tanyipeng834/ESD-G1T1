<template>
  <form method="POST">
    <div class="form-group">
      <label for="inputCropName">Crop Name</label>
      <input
        type="text"
        class="form-control"
        id="cropName"
        aria-describedby="emailHelp"
        placeholder="Crop Name"
        v-model="cropName"
      />
    </div>
    <div class="form-group">
      <label for="inputShelfLife">Shelf Life</label>
      <input
        type="text"
        class="form-control"
        id="shelfLife"
        placeholder="Shelf Life in Days"
        v-model="shell_life"
      />
    </div>
    <div class="form-group">
      <label for="inputPrice">Price($)</label>
      <input
        type="number"
        class="form-control"
        id="price"
        placeholder="Price"
        v-model="price"
      />
    </div>
    <div class="form-group">
      <label for="inputQuantity">Quantity</label>
      <input
        type="number"
        class="form-control"
        id="quantity"
        placeholder="Quantity"
        v-model="quantity"
      />
    </div>
    <div class="form-group">
      <label for="inputHeight">Height(cm)</label>
      <input
        type="number"
        class="form-control"
        id="height"
        placeholder="Height"
        v-model="height"
      />
    </div>
    <button type="submit" class="btn btn-primary mx-auto" @click="submitForm()">
      Submit
    </button>
  </form>
</template>

<script>
import axios from "axios";
export default {
  name: "form",
  data() {
    return {
      cropName: "",
      shell_life: "",
      price: "",
      quantity: "",
      height: "",
    };
  },

  props: {
    msg: String,
  },
  methods: {
    submitForm() {
      console.log(this.cropName);
      
      axios
        .post("http://127.0.0.1:5000/inventory", {
          name: `${this.cropName}`,
          shell_life: `${this.shelf_life}`,
          price: `${this.price}`,
          quantity: `${this.quantity}`,
          height: `${this.height}`,
        })
        .then((response) => {
          console.log(response.data);
        })
        .catch((error) => {
          console.log(error.message);
        });
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped></style>
