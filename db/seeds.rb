# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Game.destroy_all
# Piece.destroy_all

default = Game.create round: '0'

default.pieces << Piece.create(name: 'Rook', symbol: '&#9820', color: 'black', position: 'a8', default_position: 'a8', initial: 'R')
default.pieces << Piece.create(name: 'Knight', symbol: '&#9822', color: 'black', position: 'b8', default_position: 'b8', initial: 'N')
default.pieces << Piece.create(name: 'Bishop', symbol: '&#9821', color: 'black', position: 'c8', default_position: 'c8', initial: 'B')
default.pieces << Piece.create(name: 'Queen', symbol: '&#9819', color: 'black', position: 'e8', default_position: 'e8', initial: 'Q')
default.pieces << Piece.create(name: 'King', symbol: '&#9818', color: 'black', position: 'd8', default_position: 'd8', initial: 'K')
default.pieces << Piece.create(name: 'Bishop', symbol: '&#9821', color: 'black', position: 'f8', default_position: 'f8', initial: 'B')
default.pieces << Piece.create(name: 'Knight', symbol: '&#9822', color: 'black', position: 'g8', default_position: 'g8', initial: 'N')
default.pieces << Piece.create(name: 'Rook', symbol: '&#9820', color: 'black', position: 'h8', default_position: 'h8', initial: 'R')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'a7', default_position: 'a7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'b7', default_position: 'b7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'c7', default_position: 'c7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'd7', default_position: 'd7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'e7', default_position: 'e7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'f7', default_position: 'f7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'g7', default_position: 'g7', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9823', color: 'black', position: 'h7', default_position: 'h7', initial: 'P')


default.pieces << Piece.create(name: 'Rook', symbol: '&#9814', color: 'white', position: 'a1', default_position: 'a1', initial: 'R')
default.pieces << Piece.create(name: 'Knight', symbol: '&#9816', color: 'white', position: 'b1', default_position: 'b1', initial: 'N')
default.pieces << Piece.create(name: 'Bishop', symbol: '&#9815', color: 'white', position: 'c1', default_position: 'c1', initial: 'B')
default.pieces << Piece.create(name: 'Queen', symbol: '&#9813', color: 'white', position: 'e1', default_position: 'e1', initial: 'Q')
default.pieces << Piece.create(name: 'King', symbol: '&#9812', color: 'white', position: 'd1', default_position: 'd1', initial: 'K')
default.pieces << Piece.create(name: 'Bishop', symbol: '&#9815', color: 'white', position: 'f1', default_position: 'f1', initial: 'B')
default.pieces << Piece.create(name: 'Knight', symbol: '&#9816', color: 'white', position: 'g1', default_position: 'g1', initial: 'N')
default.pieces << Piece.create(name: 'Rook', symbol: '&#9814', color: 'white', position: 'h1', default_position: 'h1', initial: 'R')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'a2', default_position: 'a2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'b2', default_position: 'b2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'c2', default_position: 'c2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'd2', default_position: 'd2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'e2', default_position: 'e2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'f2', default_position: 'f2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'g2', default_position: 'g2', initial: 'P')
default.pieces << Piece.create(name: 'Pawn', symbol: '&#9817', color: 'white', position: 'h2', default_position: 'h2', initial: 'P')



