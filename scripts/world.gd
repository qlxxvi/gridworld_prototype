extends Node2D  # Możesz zostawić Node2D

const GRID_SIZE = 32
const GRID_WIDTH = 10
const GRID_HEIGHT = 10

func _ready():
	# Na początku rysujemy siatkę
	queue_redraw()  # Zmienione z "update()" na "queue_redraw()"

func _process(delta):
	queue_redraw()  # Wywoływanie rysowania w każdej klatce, jeśli to konieczne

func _draw():
	for x in range(GRID_WIDTH):
		for y in range(GRID_HEIGHT):
			draw_rect(Rect2(Vector2(x * GRID_SIZE, y * GRID_SIZE), Vector2(GRID_SIZE, GRID_SIZE)), Color(0.8, 0.8, 0.8), false)
