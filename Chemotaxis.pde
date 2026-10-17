 Mouse[] mice = new Mouse[40];
int bias = 1;

void setup()
{
size(500, 400);
for (int i = 0; i < mice.length; i++)
{
mice[i] = new Mouse((int)(Math.random() * width), (int)(Math.random() * height));
}
}

void draw()
{
background(235, 225, 200);
drawCheese();
for (int i = 0; i < mice.length; i++)
{
mice[i].move();
mice[i].show();
}
}

void mousePressed()
{
if (mouseButton == LEFT)
{
bias = 1;
}
else
{
bias = -1;
}
}

void drawCheese()
{
noStroke();
fill(255, 210, 40);
triangle(mouseX - 18, mouseY + 10, mouseX + 18, mouseY + 10, mouseX + 18, mouseY - 12);
fill(220, 165, 20);
ellipse(mouseX + 9, mouseY + 2, 6, 6);
ellipse(mouseX - 2, mouseY + 6, 5, 5);
}

class Mouse
{
int myX, myY, myColor;

Mouse(int x, int y)
{
myX = x;
myY = y;
int shade = (int)(Math.random() * 80) + 110;
myColor = color(shade, shade - 10, shade - 20);
}

void move()
{
myX += (int)(Math.random() * 5) - 2;
myY += (int)(Math.random() * 5) - 2;

if (myX < mouseX)
{
myX += bias;
}
else
{
myX -= bias;
}

if (myY < mouseY)
{
myY += bias;
}
else
{
myY -= bias;
}
}

void show()
{
stroke(myColor);
line(myX + 7, myY, myX + 15, myY + 3);
noStroke();
fill(myColor);
ellipse(myX, myY, 16, 10);
ellipse(myX + 3, myY - 5, 6, 6);
fill(255, 150, 170);
ellipse(myX - 8, myY, 3, 3);
fill(0);
ellipse(myX - 4, myY - 1, 2, 2);
}
}
