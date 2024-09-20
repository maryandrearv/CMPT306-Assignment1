shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	// Animate the colorized background
    COLOR = vec4(
        0.6f + 0.2f * sin(TIME),          // Red channel
        0.7f + 0.2f * sin(TIME + 2.0f),   // Green channel
        1.0f + 0.1f * sin(TIME + 4.0f),   // Blue channel
        0.8f + 0.1f * sin(TIME * 0.3f)    // Alpha channel
    );

}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
