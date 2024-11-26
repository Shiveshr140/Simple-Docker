const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("hello listener");
});

app.listen(3007, () => {
  console.log("app is listening");
});
