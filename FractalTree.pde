private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
private int colorful = 10;
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(colorful);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2,colorful);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int nuColor) 
{   
	double angle1 = angle - 3.5*branchAngle;
	double angle2 = angle + 1.25*branchAngle;
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	//int nuColorful = colorful + 5;
	//stroke(nuColorful + 5);
	//colorful = nuColorful;
	if(branchLength<=10){
		//your code here  
		stroke(nuColor+10);  
		line(x,y,endX1,endY1);
		//stroke(colorful + 5);
		line(x,y,endX2,endY2);
		//stroke(0);
		//
	}else{
		stroke(nuColor+10);
		line(x,y,endX1,endY1);
		line(x,y,endX2,endY2);
		//stroke(0);
		
		drawBranches(endX1,endY1,branchLength,angle1,nuColor+10);
		drawBranches(endX2,endY2,branchLength,angle2,nuColor+10);

	}
	
} 
