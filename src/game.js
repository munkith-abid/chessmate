class Game {
  static turn = 'white'
  static selectedPiece = ''
  static currentGameId = 0

  constructor(event = '', site = '', white = 'White', black = 'Black') {
    this.event = event
    this.site = site
    this.white = white
    this.black = black
  }

  set id(gameId) {
    this._id = gameId
  }

  get id() {
    return this.id
  }

  static fetchGame(round = 0) {
    Game.currentGameId = round
    document.getElementById('game-id').innerText = `Game ID: ${Game.currentGameId}`
    fetch(`http://127.0.0.1:3000/games/${round}`)
      .then(resp => resp.json())
      .then(game => this.initializeBoard(game));
  }

  static clearBoard() {
    document.querySelectorAll('.piece').forEach(piece => piece.remove())
  }

  static setScene() {
    document.body.style.backgroundColor = 'black'
    document.body.style.backgroundImage = ""
    Game.clearBoard()
    Menu.show('board', 'game-menu')
  }

  static switchTurn() {
    return Game.turn == 'black' ? Game.turn = 'white' : Game.turn = 'black'
  }



  static initializeBoard(game) {

    game.pieces.forEach(p => {
      let handler
      const pieceObj = new Piece(p)
      const div = pieceObj.toDiv()
      if (p.position.startsWith('x')) {
        div.className = 'captured'
        document.getElementById('board').appendChild(div)
      }
      else {
        div.addEventListener('click', handler = (e) => {
          if (e.target.dataset.color != Game.turn && !this.selectedPiece)
            alert(`its ${Game.turn}'s turn`)
          else if (this.selectedPiece) {
            if (this.selectedPiece.dataset.defaultPos === e.target.dataset.defaultPos) {
              e.target.style.border = ''
              this.selectedPiece = ''
            }
            else if (this.selectedPiece.dataset.color === e.target.dataset.color) {
              this.selectedPiece.style.border = ''
              this.selectedPiece = e.target
              e.target.style.border = '3px dashed #131b47'
            }
            else {
              pieceObj.capture(e.target)
              e.target.removeEventListener('click', handler)
            }

          }
          else {
            div.style.border = '3px dashed #131b47'
            this.selectedPiece = div
          }

        },
        )
        document.getElementById('board').appendChild(div)
      }

    })
  }


  persistAndRetrieve() {
    fetch("http://127.0.0.1:3000/games", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: JSON.stringify(this)
    })
      .then(resp => resp.json())
      .then(game => Game.fetchGame(game.id))
  }

  static squareClickHandler() {
    // const squares = document.querySelectorAll('.square')
    squares.forEach((square) => square.addEventListener('click', () => {
      if (Game.selectedPiece) {
        // const sParent = square.parentElement
        // const t = Game.selectedPiece
        // t.animate([
        //   // keyframes
        //   { transform: `translateY(${t.offsetTop}px)` },
        //   { transform: `translateY(${square.offsetTop}px)` }
        // ], {
        //   // timing options
        //   duration: 1000,
        //   // iterations: Infinity
        // })
        // setTimeout(() => {
        Game.selectedPiece.style.gridArea = square.style.gridArea
        Game.selectedPiece.dataset.position = square.style.gridArea.slice(0, 2)
        Game.selectedPiece.style.border = ''
        Game.switchTurn()
    
        fetch(`http://localhost:3000/games/${Game.currentGameId}/pieces/${Game.selectedPiece.dataset.id}`, {
          method: "PATCH",
          headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
          },
          body: JSON.stringify({
            position: Game.selectedPiece.dataset.position
          }),
        })
        Game.selectedPiece = ''
      }
    }))
    
}


}