 //declare bacteria variables here 
 Bacteria[] neww = new Bacteria[200];
 void setup()   
 {     

 	//initialize bacteria variables here   
 	size(500, 300);
	textAlign(CENTER,CENTER);
	background(220);
	for(int i = 0; i<200; i++){
		neww[i] = (new Bacteria(width/2,height/2));
	}
 }   
 void draw()   
 {   
 	background(255);
 	for(int k = 0; k<200;k++){
 		color col=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		fill(col);
 		noStroke();
 		neww[k].walk();
 		neww[k].show();
 	}
 }  

 void mouseClicked()
 {
 	redraw();
 }

 class Bacteria    
 {     
 	int myX, myY, calar;  
 	Bacteria(int x, int y) //contructor
 	{
 		myX = x;
 		myY = y;
 		calar = (int)(Math.random()*255);
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*2)-1;
 		myY = myY + (int)(Math.random()*2)-1;
 	}

 	void show()
 	{
 		ellipse(myX, myY,5,5);
 	}
 }    