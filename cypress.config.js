const { defineConfig } = require('cypress')

module.exports = defineConfig({
  baseUrl: 'http://localhost:3030',
  pluginsFile: './cypress/plugins/index.js'
})