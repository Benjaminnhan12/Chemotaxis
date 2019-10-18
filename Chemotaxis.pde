 //declare bacteria variables here 
 Bacteria ok = new Bacteria(300,150); 
 void setup()   
 {     

 	//initialize bacteria variables here   
 	size(500, 300);
	textAlign(CENTER,CENTER);
	background(220);

 }   
 void draw()   
 {   
 	fill(255);
 	ok.walk();
 	ok.show();
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
 		myX = (int)(Math.random()*10)-1;
 		myY = (int)(Math.random()*10)-1;
 	}

 	void show()
 	{
 		ellipse(myX, myY,20,20);
 	}
 }    