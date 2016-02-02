int triangleX = 5;
int triangleY = 450;
int triangleLen = 1;
int red = 0;
int green = 0;
int blue = 0;

public void setup()
{
	size(500, 500);
	
	noStroke();
}
public void draw()
{
	background(255);
	sierpinski(triangleX,triangleY,triangleLen);

	if(mousePressed && (mouseButton == LEFT)){
		triangleLen+=25;
	}
	else if(mousePressed && (mouseButton == RIGHT) && triangleLen > 5){
		triangleLen-=25;
	}
}
public void mouseMoved()//optional
{
	triangleX = mouseX;
	triangleY = mouseY;	
	red = mouseX-200/2;
	green = mouseY/2;
	blue = mouseY/2;
}



public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		fill(red, green, blue);
		triangle(x, y, x+len, y, x+len/2, y-(int)((len*Math.sqrt(3))/2));
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-(int)((len*Math.sqrt(3))/2)/2,len/2);
	}
}