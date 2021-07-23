let bodypix;
let segmentation;
let img;
let poseNet;
let poses = [];

function preload() {
  img = loadImage('data/test.jpg');
  //bodypix = ml5.bodyPix();
}

function setup() {
  createCanvas(480, 560);
  background(51);
  //bodypix.segment(img, gotResults);
  imageReady();
}

function modelReady() {
    console.log("Model Loaded");
  
    poseNet.singlePose(img);
}

function imageReady() {
    // set some options
    const options = {
      minConfidence: 0.1,
      inputResolution: { width, height },
    };
  
    // assign poseNet
    poseNet = ml5.poseNet(modelReady, options);
    // This sets up an event that listens to 'pose' events
    poseNet.on("pose", function(results) {
      poses = results;
    });
  }

function draw() {
    if (poses.length > 0) {
    //   image(img, 0, 0, width, height);
      drawSkeleton(poses);
      drawKeypoints(poses);
    //   noLoop(); // stop looping when the poses are estimated
    }
  }
  

// function gotResults(err, result) {
//   if (err) {
//     console.log(err);
//     return;
//   }
//   segmentation = result;
//   console.log(segmentation);
//   background(0);
//   image(segmentation.backgroundMask, 0, 0, width, height);
// }

function drawKeypoints() {
    // Loop through all the poses detected
    for (let i = 0; i < poses.length; i += 1) {
      // For each pose detected, loop through all the keypoints
      const pose = poses[i].pose;
      for (let j = 0; j < pose.keypoints.length; j += 1) {
        // A keypoint is an object describing a body part (like rightArm or leftShoulder)
        const keypoint = pose.keypoints[j];
        // Only draw an ellipse is the pose probability is bigger than 0.2
        if (keypoint.score > 0.2) {
          fill(255);
          stroke(20);
          strokeWeight(4);
          ellipse(round(keypoint.position.x), round(keypoint.position.y), 8, 8);
        }
      }
    }
  }
  
  // A function to draw the skeletons
  function drawSkeleton() {
    // Loop through all the skeletons detected
    for (let i = 0; i < poses.length; i += 1) {
      const skeleton = poses[i].skeleton;
      // For every skeleton, loop through all body connections
      for (let j = 0; j < skeleton.length; j += 1) {
        const partA = skeleton[j][0];
        const partB = skeleton[j][1];
        stroke(255);
        strokeWeight(1);
        line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
      }
    }
  }