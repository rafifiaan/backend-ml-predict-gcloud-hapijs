const tf = require('@tensorflow/tfjs-node');

async function loadModel() {
    const url = "https://storage.googleapis.com/mlgc-rafialiefian/modul-prod/model.json"
    const modelUrl = process.env.MODEL_URL || url;
    return tf.loadGraphModel(modelUrl);
}

module.exports = loadModel;