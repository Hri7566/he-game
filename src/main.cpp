#include "../hengine/src/hengine/Engine.hpp"
#include <cstdio>
#include <raylib.h>

Engine *e;

void load(void);
void update(float delta);
void draw(void);

class Square : Actor {
public:
	Rectangle rect;
};

Square *square;

int main(void) {
	EngineConfig e_config;

	// Window config
	e_config.window_config.size.x = 640;
	e_config.window_config.size.y = 480;
	e_config.window_config.title = "hengine sample program";

	e = new Engine(e_config, &load, &update, &draw);

	square->rect = Rectangle{ 64, 64, 64, 64 };

	// Start engine loop
	e->start();

	// After engine is done running, free the memory
	free(e);
	free(square);
}

void load(void) {
	// When the engine is loaded...
	printf("Engine loaded\n");
	e->actor_list.add(&square);
}

void update(float delta) {
	// Every tick
}

void draw(void) {
	// Every render tick
	DrawRectangleRec(*square, Color{ 1, 1, 1, 1 });
}
