private int smallestShape = 10; 
public void setup()
{
	size(600,600);
	noLoop();
}
public void draw()
{
	background(0);
	myFractal(300,300,300);
}
public void myFractal(int x,int y,int siz)
{
	ellipse(x,y,siz,siz);
	if(siz>10)
	{
		fill(255,0,0);
		myFractal(x-siz/2,y+siz/2,siz/2);
		fill(0,255,0);
		myFractal(x-siz/2,y-siz/2,siz/2);
		fill(0,0,255);
		myFractal(x+siz/2,y+siz/2,siz/2);
		fill(255,255,255);
		myFractal(x+siz/2,y-siz/2,siz/2);
	}
}
