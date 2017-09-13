#include<stdio.h>  
#include<stdlib.h>  
#include<Windows.h>  

void move(int x, int y) {  

    SetCursorPos(x, y);
    mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0,0);
    mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
}

void setup() {

    move(0, 1080);
    keybd_event('C', 0, 0, 0);
    keybd_event('C', 0, 2, 0);  
    Sleep(200);  
    keybd_event('H', 0, 0, 0);
    keybd_event('H', 0, 2, 0);  
    Sleep(200);  
    keybd_event('R', 0, 0, 0);
    keybd_event('R', 0, 2, 0);  
    Sleep(200);  
    keybd_event('O', 0, 0, 0);
    keybd_event('O', 0, 2, 0);  
    Sleep(200);  
    keybd_event('M', 0, 0, 0);
    keybd_event('M', 0, 2, 0);  
    Sleep(200);  
    keybd_event('E', 0, 0, 0);
    keybd_event('E', 0, 2, 0);  
    Sleep(200);  
    keybd_event(0x0d, 0, 0, 0);  
    keybd_event(0x0d, 0, 2, 0);
    Sleep(3000);
}
  
int main() {  

    int x[2] = {1919, 1920};
    int y[2] = {1079, 1080};
    int pos = 0;
    setup();

    while (true) {
        Sleep(30000);
        move(x[pos], y[pos]);
        pos = 1 - pos;
    }
}  
