#include "driver/gpio.h"
#include "esp_rom_sys.h"

#include "lcd_init/lcd_init.h"

void LCD_SCLK_Clr()
{
    gpio_set_direction(GA_SCL, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_SCL, 0);
}

void LCD_SCLK_Set()
{
    gpio_set_direction(GA_SCL, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_SCL, 1);
}

void LCD_MOSI_Clr()
{
    gpio_set_direction(GA_SDA, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_SDA, 0);
}

void LCD_MOSI_Set()
{
    gpio_set_direction(GA_SDA, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_SDA, 1);
}

void LCD_RES_Clr()
{
    gpio_set_direction(GA_RES, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_RES, 0);
}

void LCD_RES_Set()
{
    gpio_set_direction(GA_RES, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_RES, 1);
}

void LCD_DC_Clr()
{
    gpio_set_direction(GA_DC, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_DC, 0);
}

void LCD_DC_Set()
{
    gpio_set_direction(GA_DC, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_DC, 1);
}

void LCD_CS_Clr()
{
    gpio_set_direction(GA_CS, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_CS, 0);
}

void LCD_CS_Set()
{
    gpio_set_direction(GA_CS, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_CS, 1);
}

void LCD_BLK_Clr()
{
    gpio_set_direction(GA_BLK, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_BLK, 0);
}

void LCD_BLK_Set()
{
    gpio_set_direction(GA_BLK, GPIO_MODE_OUTPUT);
    gpio_set_level(GA_BLK, 1);
}

void LCD_Writ_Bus(u8 dat)
{
    u8 i;
	LCD_CS_Clr();
	for(i=0;i<8;i++)
	{			  
		LCD_SCLK_Clr();
		if(dat&0x80)
		{
		   LCD_MOSI_Set();
		}
		else
		{
		   LCD_MOSI_Clr();
		}
		LCD_SCLK_Set();
		dat<<=1;
	}	
    LCD_CS_Set();	
}
void LCD_WR_DATA8(u8 dat)
{
    LCD_Writ_Bus(dat);
}
void LCD_WR_DATA(u16 dat)
{
    LCD_Writ_Bus(dat>>8);
	LCD_Writ_Bus(dat);
}
void LCD_WR_REG(u8 dat)
{
    LCD_DC_Clr();//Ð´ÃüÁî
	LCD_Writ_Bus(dat);
	LCD_DC_Set();//Ð´Êý¾Ý
}
void LCD_Address_Set(u16 x1,u16 y1,u16 x2,u16 y2)
{
        LCD_WR_REG(0x2a);//ÁÐµØÖ·ÉèÖÃ
		LCD_WR_DATA(x1);
		LCD_WR_DATA(x2);
		LCD_WR_REG(0x2b);//ÐÐµØÖ·ÉèÖÃ
		LCD_WR_DATA(y1);
		LCD_WR_DATA(y2);
		LCD_WR_REG(0x2c);//´¢´æÆ÷Ð´
}

void delay_ms(int a)
{
    esp_rom_delay_us(a);
}

void LCD_Init(void)
{
	LCD_RES_Clr();//¸´Î»
	delay_ms(100);
	LCD_RES_Set();
	delay_ms(100);
	
	LCD_BLK_Set();//´ò¿ª±³¹â
  delay_ms(100);
	
	LCD_WR_REG(0xEF);
	LCD_WR_REG(0xEB);
	LCD_WR_DATA8(0x14); 
	
  LCD_WR_REG(0xFE);			 
	LCD_WR_REG(0xEF); 

	LCD_WR_REG(0xEB);	
	LCD_WR_DATA8(0x14); 

	LCD_WR_REG(0x84);			
	LCD_WR_DATA8(0x40); 

	LCD_WR_REG(0x85);			
	LCD_WR_DATA8(0xFF); 

	LCD_WR_REG(0x86);			
	LCD_WR_DATA8(0xFF); 

	LCD_WR_REG(0x87);			
	LCD_WR_DATA8(0xFF);

	LCD_WR_REG(0x88);			
	LCD_WR_DATA8(0x0A);

	LCD_WR_REG(0x89);			
	LCD_WR_DATA8(0x21); 

	LCD_WR_REG(0x8A);			
	LCD_WR_DATA8(0x00); 

	LCD_WR_REG(0x8B);			
	LCD_WR_DATA8(0x80); 

	LCD_WR_REG(0x8C);			
	LCD_WR_DATA8(0x01); 

	LCD_WR_REG(0x8D);			
	LCD_WR_DATA8(0x01); 

	LCD_WR_REG(0x8E);			
	LCD_WR_DATA8(0xFF); 

	LCD_WR_REG(0x8F);			
	LCD_WR_DATA8(0xFF); 


	LCD_WR_REG(0xB6);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x20);

	LCD_WR_REG(0x90);			
	LCD_WR_DATA8(0x08);
	LCD_WR_DATA8(0x08);
	LCD_WR_DATA8(0x08);
	LCD_WR_DATA8(0x08); 

	LCD_WR_REG(0xBD);			
	LCD_WR_DATA8(0x06);
	
	LCD_WR_REG(0xBC);			
	LCD_WR_DATA8(0x00);	

	LCD_WR_REG(0xFF);			
	LCD_WR_DATA8(0x60);
	LCD_WR_DATA8(0x01);
	LCD_WR_DATA8(0x04);

	LCD_WR_REG(0xC3);			
	LCD_WR_DATA8(0x13);
	LCD_WR_REG(0xC4);			
	LCD_WR_DATA8(0x13);

	LCD_WR_REG(0xC9);			
	LCD_WR_DATA8(0x22);

	LCD_WR_REG(0xBE);			
	LCD_WR_DATA8(0x11); 

	LCD_WR_REG(0xE1);			
	LCD_WR_DATA8(0x10);
	LCD_WR_DATA8(0x0E);

	LCD_WR_REG(0xDF);			
	LCD_WR_DATA8(0x21);
	LCD_WR_DATA8(0x0c);
	LCD_WR_DATA8(0x02);

	LCD_WR_REG(0xF0);   
	LCD_WR_DATA8(0x45);
	LCD_WR_DATA8(0x09);
	LCD_WR_DATA8(0x08);
	LCD_WR_DATA8(0x08);
	LCD_WR_DATA8(0x26);
 	LCD_WR_DATA8(0x2A);

 	LCD_WR_REG(0xF1);    
 	LCD_WR_DATA8(0x43);
 	LCD_WR_DATA8(0x70);
 	LCD_WR_DATA8(0x72);
 	LCD_WR_DATA8(0x36);
 	LCD_WR_DATA8(0x37);  
 	LCD_WR_DATA8(0x6F);


 	LCD_WR_REG(0xF2);   
 	LCD_WR_DATA8(0x45);
 	LCD_WR_DATA8(0x09);
 	LCD_WR_DATA8(0x08);
 	LCD_WR_DATA8(0x08);
 	LCD_WR_DATA8(0x26);
 	LCD_WR_DATA8(0x2A);

 	LCD_WR_REG(0xF3);   
 	LCD_WR_DATA8(0x43);
 	LCD_WR_DATA8(0x70);
 	LCD_WR_DATA8(0x72);
 	LCD_WR_DATA8(0x36);
 	LCD_WR_DATA8(0x37); 
 	LCD_WR_DATA8(0x6F);

	LCD_WR_REG(0xED);	
	LCD_WR_DATA8(0x1B); 
	LCD_WR_DATA8(0x0B); 

	LCD_WR_REG(0xAE);			
	LCD_WR_DATA8(0x77);
	
	LCD_WR_REG(0xCD);			
	LCD_WR_DATA8(0x63);		


	LCD_WR_REG(0x70);			
	LCD_WR_DATA8(0x07);
	LCD_WR_DATA8(0x07);
	LCD_WR_DATA8(0x04);
	LCD_WR_DATA8(0x0E); 
	LCD_WR_DATA8(0x0F); 
	LCD_WR_DATA8(0x09);
	LCD_WR_DATA8(0x07);
	LCD_WR_DATA8(0x08);
	LCD_WR_DATA8(0x03);

	LCD_WR_REG(0xE8);			
	LCD_WR_DATA8(0x34);

	LCD_WR_REG(0x62);			
	LCD_WR_DATA8(0x18);
	LCD_WR_DATA8(0x0D);
	LCD_WR_DATA8(0x71);
	LCD_WR_DATA8(0xED);
	LCD_WR_DATA8(0x70); 
	LCD_WR_DATA8(0x70);
	LCD_WR_DATA8(0x18);
	LCD_WR_DATA8(0x0F);
	LCD_WR_DATA8(0x71);
	LCD_WR_DATA8(0xEF);
	LCD_WR_DATA8(0x70); 
	LCD_WR_DATA8(0x70);

	LCD_WR_REG(0x63);			
	LCD_WR_DATA8(0x18);
	LCD_WR_DATA8(0x11);
	LCD_WR_DATA8(0x71);
	LCD_WR_DATA8(0xF1);
	LCD_WR_DATA8(0x70); 
	LCD_WR_DATA8(0x70);
	LCD_WR_DATA8(0x18);
	LCD_WR_DATA8(0x13);
	LCD_WR_DATA8(0x71);
	LCD_WR_DATA8(0xF3);
	LCD_WR_DATA8(0x70); 
	LCD_WR_DATA8(0x70);

	LCD_WR_REG(0x64);			
	LCD_WR_DATA8(0x28);
	LCD_WR_DATA8(0x29);
	LCD_WR_DATA8(0xF1);
	LCD_WR_DATA8(0x01);
	LCD_WR_DATA8(0xF1);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x07);

	LCD_WR_REG(0x66);			
	LCD_WR_DATA8(0x3C);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0xCD);
	LCD_WR_DATA8(0x67);
	LCD_WR_DATA8(0x45);
	LCD_WR_DATA8(0x45);
	LCD_WR_DATA8(0x10);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x00);

	LCD_WR_REG(0x67);			
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x3C);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x00);
	LCD_WR_DATA8(0x01);
	LCD_WR_DATA8(0x54);
	LCD_WR_DATA8(0x10);
	LCD_WR_DATA8(0x32);
	LCD_WR_DATA8(0x98);

	LCD_WR_REG(0x74);			
	LCD_WR_DATA8(0x10);	
	LCD_WR_DATA8(0x85);	
	LCD_WR_DATA8(0x80);
	LCD_WR_DATA8(0x00); 
	LCD_WR_DATA8(0x00); 
	LCD_WR_DATA8(0x4E);
	LCD_WR_DATA8(0x00);					
	
  LCD_WR_REG(0x98);			
	LCD_WR_DATA8(0x3e);
	LCD_WR_DATA8(0x07);

	LCD_WR_REG(0x35);	
	LCD_WR_REG(0x21);

	LCD_WR_REG(0x11);
	delay_ms(120);
	LCD_WR_REG(0x29);
	delay_ms(20);
}

void LCD_Fill(u16 xsta,u16 ysta,u16 xend,u16 yend,u16 color)
{          
	u16 i,j; 
	LCD_Address_Set(xsta,ysta,xend-1,yend-1);//ÉèÖÃÏÔÊ¾·¶Î§
	for(i=ysta;i<yend;i++)
	{													   	 	
		for(j=xsta;j<xend;j++)
		{
			LCD_WR_DATA(color);
		}
	} 					  	    
}
