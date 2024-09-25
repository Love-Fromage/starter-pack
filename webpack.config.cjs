const webpack = require("webpack");
const path = require("path");
const BrowserSyncPlugin = require("browser-sync-webpack-plugin");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
  entry: {
    main: "./scripts/main.js",
    styles: "./scss/main.scss",
  },

  output: {
    filename: "js/[name].js",
    path: path.resolve(__dirname, "dist"),
  },
  module: {
    rules: [
      {
        test: /\.scss$/,
        use: [MiniCssExtractPlugin.loader, "css-loader", "sass-loader"],
      },
    ],
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "css/[name].css", // Output CSS file name
    }),
    new BrowserSyncPlugin({
      proxy: "localhost:8000",
      port: 3000,
      files: ["./dist/js/*.js", "./dist/css/*.css", "./dist/*.html"],
      reloadDelay: 0,
      notify: false,
      open: false,
    }),
  ],
};
