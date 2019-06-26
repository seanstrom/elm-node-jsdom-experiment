const { JSDOM } = require('jsdom')

const create = (html, options = {}) => {
  return new JSDOM(html, {
    ...options,
    runScripts: 'dangerously'
  })
}

module.exports = { create }
