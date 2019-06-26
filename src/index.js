const fs = require('fs')
const fullUrl = require('full-url')
const Dom = require('./lib/dom')
const Channel = require('./lib/channel')

const mount = (config) => {
  const fileName = config.fileName
  const fileOptions = { encoding: 'utf8' }
  const html = fs.readFileSync(fileName, fileOptions)
  const dom = Dom.create(html)
  const elm = dom.window.app
  return { dom, elm }
}

const init = () => {
  const app = mount({ fileName: 'dist/app.html' })
  const channel = Channel.init(app.elm)
  return { ...app, channel }
}

const app = init()

module.exports = async (req, res) => {
  const url = fullUrl(req)
  
  app.channel.refresh()
  await app.channel.sendMessage({ url })
  const response = await app.channel.receiveMessage()

  return JSON.parse(response)
}
