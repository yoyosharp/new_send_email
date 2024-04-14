module.exports = {
  apps: [
    {
      name: "API",
      script: "index.js",
      exec_mode: "cluster_mode",
      instances: "max",
      env: {
        NODE_ENV: "production",
      },
    },
    {
      name: "otpOrder",
      args: "otpOrderMessage",
      exec_mode: "fork",
      watch: false,
      script: "queues/consumers/queue_otpOrder.js",
      instances: "1",
    },
    {
      name: "register",
      args: "consumeMessage",
      exec_mode: "fork",
      watch: false,
      script: "queues/consumers/queue_register.js",
      instances: "1",
    },
    {
      name: "forgotPassword",
      args: "forgotPasswordMessage",
      exec_mode: "fork",
      watch: false,
      script: "queues/consumers/queue_forgotPass.js",
      instances: "1",
    },
    {
      name: "ecommerce",
      args: "ecommerceMessage",
      exec_mode: "fork",
      watch: false,
      script: "queues/consumers/queue_ecommerce.js",
      instances: "1",
    },
    {
      name: "pdf",
      args: "pdfMessage",
      exec_mode: "fork",
      watch: false,
      script: "queues/consumers/queue_pdf.js",
      instances: "1",
    },
  ],
};
