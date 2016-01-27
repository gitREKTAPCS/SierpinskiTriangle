public void setup()
{
	size(500, 500);
}
public void draw()
{
	sierpinski(0,450,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, x+len, y, x+len/2, y-(int)((len*Math.sqrt(3))/2));
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-(int)((len*Math.sqrt(3))/2)/2,len/2);
	}
}