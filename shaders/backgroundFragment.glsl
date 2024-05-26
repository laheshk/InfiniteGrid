// Adapted from: https://www.shadertoy.com/view/MdlGRr

// It is required to set the float precision for fragment shaders in OpenGL ES
// More info here: https://stackoverflow.com/a/28540641/4908989
#ifdef GL_ES
precision mediump float;

  
#endif



uniform vec2 uPointerDiff;


// This function returns 1 if `coord` correspond to a grid line, 0 otherwise
float isGridLine (vec2 coord) {
  vec2 pixelsPerGrid = vec2(100.0, 100.0);
  vec2 gridCoords = fract(coord / pixelsPerGrid);
  vec2 gridPixelCoords = gridCoords * pixelsPerGrid;
  vec2 gridLine = step(gridPixelCoords, vec2(1.0));
  float isGridLine = max(gridLine.x, gridLine.y);
  return isGridLine;
  
}

// Main function
void main () {
  // Coordinates minus the `uPointerDiff` value, and plus an offset
  vec2 coord = gl_FragCoord.xy - uPointerDiff + vec2(10.0);
  // Set `color` to black
  
  vec3 color = vec3(0.7882, 0.7882, 0.7882);
  // vec3 color.a = 0.5;
  
  
  // If it is a grid line, change blue channel to 0.3
  // color.r = isGridLine(coord) * 0.4;
  // color.g = isGridLine(coord) * 0.4;
  // color.b = isGridLine(coord) * 0.4;

  // Assing the final rgba color to `gl_FragColor`
  gl_FragColor = vec4(color, 1.0);
  // gl.glEnable(GL.GL_BLEND);
  // gl.glBlendFunc(GL.GL_SRC_ALPHA, GL.GL_ONE_MINUS_SRC_ALPHA);
  
  
}
