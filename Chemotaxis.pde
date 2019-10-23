 //declare bacteria variables here 
 Bacteria[] neww = new Bacteria[100];
 void setup()   
 {     

 	//initialize bacteria variables here   
 	size(500, 300);
	textAlign(CENTER,CENTER);
	background(220);
	for(int i = 0; i<100; i++){
		neww[i] = (new Bacteria(width/2,height/2));
	}
 }   
 void draw()   
 {   
 	// background(255);
 	for(int k = 0; k<100;k++){
 		// color col=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		// fill(col);
 		noStroke();
 		neww[k].walk();
 		neww[k].show();
 		// neww[k].move();
 	}
 }  

 void mouseClicked()
 {
 	// redraw();
 }

 class Bacteria    
 {     
 	int myX, myY, col;  
 	Bacteria(int x, int y) //contructor
 	{
 		myX = x;
 		myY = y;
 		// calar = (int)(Math.random()*255);
 		col=color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
 	}
 	// void move()
 	// {
 	// 	if(mouseX>myX){
 	// 		myX = myX+(int)(Math.random()*5)-1;
 	// 	}else{
 	// 		myX = myX+(int)(Math.random()*5)-3;
 	// 	}
 	// 	if(mouseY>myY){
 	// 		myY = myY+(int)(Math.random()*5)-1;
 	// 	}else{
 	// 		myY = myY+(int)(Math.random()*5)-3;
 	// 	}
 	// }
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}

 	void show()
 	{
 		ellipse(myX, myY,3,3);
 		fill(col);
 	}
 }    