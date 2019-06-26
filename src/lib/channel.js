const flyd = require('flyd')

class Channel {
  constructor (app, channel) {
    this.app = app
    this.channel = channel
    this.subscriber = message => { this.channel(message) }
    this.app.ports.outbound.subscribe(this.subscriber)
  }

  refresh () {
    const channel = flyd.stream()
    this.setChannel(channel)
  }

  setChannel (channel) {
    this.channel = channel
  }

  setSubscriber (subscriber) {
    this.subscriber = subscriber
  }

  sendMessage (message) {
    this.app.ports.inbound.send(message)
    return Promise.resolve()
  }

  receiveMessage () {
    return new Promise(resolve => {
      flyd.on(resolve, this.channel)
    })
  }
}

const init = (app, channel = flyd.stream()) => {
  return new Channel(app, channel)
}

module.exports = {
  init,
  Channel
}
