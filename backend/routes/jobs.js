const express = require("express");
const jobControllers = require("../controllers/jobControllers");
const router = express.Router();

// @route GET && POST - /posts/
router
   .route("/")
   .get(jobControllers.getAllJobs)
   .post(jobControllers.createNewJob);

router
   .route("/:jobId")
   .get(jobControllers.getJobById)
   .put(jobControllers.updateJobById);

router.route("/delete/:jobId").get(jobControllers.deleteJobById);

module.exports = router;
