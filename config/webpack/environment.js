const { environment } = require("@rails/webpacker");

// To make Webpack “understand” .gql files we need to configure a specific loader
environment.loaders.append("graphql", {
  test: /\.(graphql|gql)$/,
  exclude: /node_modules/,
  loader: "graphql-tag/loader"
});

module.exports = environment;
