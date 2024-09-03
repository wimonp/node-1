var express = require("express");
var router = express.Router();

/* GET users listing. */
router.get("/", function (req, res, next) {
  const users = [
    { id: 1, name: "John v10" },
    { id: 2, name: "Mary v10" },
  ];

  res.status(200).json(users);
});

module.exports = router;
