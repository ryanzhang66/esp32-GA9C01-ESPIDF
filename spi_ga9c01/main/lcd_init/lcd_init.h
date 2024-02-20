#ifndef _LCD_INIT_H
#define _LCD_INIT_H	

#define GA_BLK 23
#define GA_CS (GPIO_NUM_14)
#define GA_DC (GPIO_NUM_27)
#define GA_RES (GPIO_NUM_13)
#define GA_SDA (GPIO_NUM_12)
#define GA_SCL (GPIO_NUM_26)

#define u8 unsigned char
#define u16 unsigned short

void LCD_SCLK_Clr();
void LCD_SCLK_Set();
void LCD_MOSI_Clr();
void LCD_MOSI_Set();
void LCD_RES_Clr();
void LCD_RES_Set();
void LCD_DC_Clr();
void LCD_DC_Set();
void LCD_CS_Clr();
void LCD_CS_Set();
void LCD_BLK_Clr();
void LCD_BLK_Set();

void LCD_Writ_Bus(u8 dat);
void LCD_WR_DATA8(u8 dat);
void LCD_WR_DATA(u16 dat);
void LCD_WR_REG(u8 dat);
void LCD_Address_Set(u16 x1,u16 y1,u16 x2,u16 y2);
void LCD_Init(void);

void LCD_Fill(u16 xsta,u16 ysta,u16 xend,u16 yend,u16 color);

#endif