enchant()

window.onload = ->
  game = new Game(320, 320)

  game.fps = 15
  game.preload "images/chara1.png"
  game.onload = ->
    bear = new Sprite(32, 32)
    bear.image = game.assets["images/chara1.png"]
    bear.x = 0
    bear.y = 0
    bear.frame = 5
    game.rootScene.addChild bear

    bear.addEventListener "enterframe", ->
      this.x += 1;
      this.frame = this.age % 2 + 6

    bear.addEventListener "touchstart", ->
      game.rootScene.removeChild bear
  game.start()
