 //declare bacteria variables here 
 void setup()   
 {     

 	//initialize bacteria variables here   
 	size(500, 300);
	textAlign(CENTER,CENTER);
	background(220);

 }   
 void draw()   
 {    
 	Bacteria ok = new Bacteria(); 
 	ok.walk();
 }  

 void mouseClicked()
 {

 }

 class Bacteria    
 {     
 	int myX, myY, calar;  
 	ellipse(int x, int y) //contructor
 	{
 		myX = x;
 		myY = y;
 	}
 	void walk()
 	{
 		double x = x + (int)(Math.random()*3)-1;
 		double y = y + (int)(Math.random()*3)-1;
 	}

 	void show()
 }    