
build/tseDemo.elf:     file format elf32-littleriscv


Disassembly of section .init:

f9000000 <_start>:

_start:
#ifdef USE_GP
.option push
.option norelax
	la gp, __global_pointer$
f9000000:	00002197          	auipc	gp,0x2
f9000004:	ca018193          	addi	gp,gp,-864 # f9001ca0 <__global_pointer$>

f9000008 <init>:
	sw a0, smp_lottery_lock, a1
    ret
#endif

init:
	la sp, _sp
f9000008:	00002117          	auipc	sp,0x2
f900000c:	4b810113          	addi	sp,sp,1208 # f90024c0 <__freertos_irq_stack_top>

	/* Load data section */
	la a0, _data_lma
f9000010:	00001517          	auipc	a0,0x1
f9000014:	0bc50513          	addi	a0,a0,188 # f90010cc <__init_array_end>
	la a1, _data
f9000018:	00001597          	auipc	a1,0x1
f900001c:	0b458593          	addi	a1,a1,180 # f90010cc <__init_array_end>
	la a2, _edata
f9000020:	81c18613          	addi	a2,gp,-2020 # f90014bc <__bss_start>
	bgeu a1, a2, 2f
f9000024:	00c5fc63          	bgeu	a1,a2,f900003c <init+0x34>
1:
	lw t0, (a0)
f9000028:	00052283          	lw	t0,0(a0)
	sw t0, (a1)
f900002c:	0055a023          	sw	t0,0(a1)
	addi a0, a0, 4
f9000030:	00450513          	addi	a0,a0,4
	addi a1, a1, 4
f9000034:	00458593          	addi	a1,a1,4
	bltu a1, a2, 1b
f9000038:	fec5e8e3          	bltu	a1,a2,f9000028 <init+0x20>
2:

	/* Clear bss section */
	la a0, __bss_start
f900003c:	81c18513          	addi	a0,gp,-2020 # f90014bc <__bss_start>
	la a1, _end
f9000040:	82018593          	addi	a1,gp,-2016 # f90014c0 <_end>
	bgeu a0, a1, 2f
f9000044:	00b57863          	bgeu	a0,a1,f9000054 <init+0x4c>
1:
	sw zero, (a0)
f9000048:	00052023          	sw	zero,0(a0)
	addi a0, a0, 4
f900004c:	00450513          	addi	a0,a0,4
	bltu a0, a1, 1b
f9000050:	feb56ce3          	bltu	a0,a1,f9000048 <init+0x40>
2:

#ifndef NO_LIBC_INIT_ARRAY
	call __libc_init_array
f9000054:	010000ef          	jal	ra,f9000064 <__libc_init_array>
#endif

	call main
f9000058:	75c000ef          	jal	ra,f90007b4 <main>

f900005c <mainDone>:
mainDone:
    j mainDone
f900005c:	0000006f          	j	f900005c <mainDone>

f9000060 <_init>:


	.globl _init
_init:
    ret
f9000060:	00008067          	ret

Disassembly of section .text:

f9000064 <__libc_init_array>:
f9000064:	ff010113          	addi	sp,sp,-16
f9000068:	00812423          	sw	s0,8(sp)
f900006c:	01212023          	sw	s2,0(sp)
f9000070:	00001417          	auipc	s0,0x1
f9000074:	05c40413          	addi	s0,s0,92 # f90010cc <__init_array_end>
f9000078:	00001917          	auipc	s2,0x1
f900007c:	05490913          	addi	s2,s2,84 # f90010cc <__init_array_end>
f9000080:	40890933          	sub	s2,s2,s0
f9000084:	00112623          	sw	ra,12(sp)
f9000088:	00912223          	sw	s1,4(sp)
f900008c:	40295913          	srai	s2,s2,0x2
f9000090:	00090e63          	beqz	s2,f90000ac <__libc_init_array+0x48>
f9000094:	00000493          	li	s1,0
f9000098:	00042783          	lw	a5,0(s0)
f900009c:	00148493          	addi	s1,s1,1
f90000a0:	00440413          	addi	s0,s0,4
f90000a4:	000780e7          	jalr	a5
f90000a8:	fe9918e3          	bne	s2,s1,f9000098 <__libc_init_array+0x34>
f90000ac:	00001417          	auipc	s0,0x1
f90000b0:	02040413          	addi	s0,s0,32 # f90010cc <__init_array_end>
f90000b4:	00001917          	auipc	s2,0x1
f90000b8:	01890913          	addi	s2,s2,24 # f90010cc <__init_array_end>
f90000bc:	40890933          	sub	s2,s2,s0
f90000c0:	40295913          	srai	s2,s2,0x2
f90000c4:	00090e63          	beqz	s2,f90000e0 <__libc_init_array+0x7c>
f90000c8:	00000493          	li	s1,0
f90000cc:	00042783          	lw	a5,0(s0)
f90000d0:	00148493          	addi	s1,s1,1
f90000d4:	00440413          	addi	s0,s0,4
f90000d8:	000780e7          	jalr	a5
f90000dc:	fe9918e3          	bne	s2,s1,f90000cc <__libc_init_array+0x68>
f90000e0:	00c12083          	lw	ra,12(sp)
f90000e4:	00812403          	lw	s0,8(sp)
f90000e8:	00412483          	lw	s1,4(sp)
f90000ec:	00012903          	lw	s2,0(sp)
f90000f0:	01010113          	addi	sp,sp,16
f90000f4:	00008067          	ret

f90000f8 <uart_writeAvailability>:
#include "type.h"
#include "soc.h"


    static inline u32 read_u32(u32 address){
        return *((volatile u32*) address);
f90000f8:	00452503          	lw	a0,4(a0)
        enum UartStop stop;
        u32 clockDivider;
    } Uart_Config;
    
    static u32 uart_writeAvailability(u32 reg){
        return (read_u32(reg + UART_STATUS) >> 16) & 0xFF;
f90000fc:	01055513          	srli	a0,a0,0x10
    }
f9000100:	0ff57513          	andi	a0,a0,255
f9000104:	00008067          	ret

f9000108 <uart_write>:
    static u32 uart_readOccupancy(u32 reg){
        return read_u32(reg + UART_STATUS) >> 24;
    }
    
    static void uart_write(u32 reg, char data){
f9000108:	ff010113          	addi	sp,sp,-16
f900010c:	00112623          	sw	ra,12(sp)
f9000110:	00812423          	sw	s0,8(sp)
f9000114:	00912223          	sw	s1,4(sp)
f9000118:	00050413          	mv	s0,a0
f900011c:	00058493          	mv	s1,a1
        while(uart_writeAvailability(reg) == 0);
f9000120:	00040513          	mv	a0,s0
f9000124:	fd5ff0ef          	jal	ra,f90000f8 <uart_writeAvailability>
f9000128:	fe050ce3          	beqz	a0,f9000120 <uart_write+0x18>
    }
    
    static inline void write_u32(u32 data, u32 address){
        *((volatile u32*) address) = data;
f900012c:	00942023          	sw	s1,0(s0)
        write_u32(data, reg + UART_DATA);
    }
f9000130:	00c12083          	lw	ra,12(sp)
f9000134:	00812403          	lw	s0,8(sp)
f9000138:	00412483          	lw	s1,4(sp)
f900013c:	01010113          	addi	sp,sp,16
f9000140:	00008067          	ret

f9000144 <uart_writeStr>:
    
    static void uart_writeStr(u32 reg, const char* str){
f9000144:	ff010113          	addi	sp,sp,-16
f9000148:	00112623          	sw	ra,12(sp)
f900014c:	00812423          	sw	s0,8(sp)
f9000150:	00912223          	sw	s1,4(sp)
f9000154:	00050493          	mv	s1,a0
f9000158:	00058413          	mv	s0,a1
        while(*str) uart_write(reg, *str++);
f900015c:	00044583          	lbu	a1,0(s0)
f9000160:	00058a63          	beqz	a1,f9000174 <uart_writeStr+0x30>
f9000164:	00140413          	addi	s0,s0,1
f9000168:	00048513          	mv	a0,s1
f900016c:	f9dff0ef          	jal	ra,f9000108 <uart_write>
f9000170:	fedff06f          	j	f900015c <uart_writeStr+0x18>
    }
f9000174:	00c12083          	lw	ra,12(sp)
f9000178:	00812403          	lw	s0,8(sp)
f900017c:	00412483          	lw	s1,4(sp)
f9000180:	01010113          	addi	sp,sp,16
f9000184:	00008067          	ret

f9000188 <clint_uDelay>:
    
        return (((u64)hi) << 32) | lo;
    }
    
    static void clint_uDelay(u32 usec, u32 hz, u32 reg){
        u32 mTimePerUsec = hz/1000000;
f9000188:	000f47b7          	lui	a5,0xf4
f900018c:	24078793          	addi	a5,a5,576 # f4240 <__stack_size+0xf3240>
f9000190:	02f5d5b3          	divu	a1,a1,a5
    readReg_u32 (clint_getTimeLow , CLINT_TIME_ADDR)
f9000194:	0000c7b7          	lui	a5,0xc
f9000198:	ff878793          	addi	a5,a5,-8 # bff8 <__stack_size+0xaff8>
f900019c:	00f60633          	add	a2,a2,a5
        return *((volatile u32*) address);
f90001a0:	00062783          	lw	a5,0(a2)
        u32 limit = clint_getTimeLow(reg) + usec*mTimePerUsec;
f90001a4:	02a58533          	mul	a0,a1,a0
f90001a8:	00f50533          	add	a0,a0,a5
f90001ac:	00062783          	lw	a5,0(a2)
        while((int32_t)(limit-(clint_getTimeLow(reg))) >= 0);
f90001b0:	40f507b3          	sub	a5,a0,a5
f90001b4:	fe07dce3          	bgez	a5,f90001ac <clint_uDelay+0x24>
    }
f90001b8:	00008067          	ret

f90001bc <bsp_printHex>:
#define configCPU_CLOCK_HZ              ( ( uint32_t ) ( BSP_CLINT_HZ ) )
#define BSP_LED_GPIO                    SYSTEM_GPIO_0_IO_CTRL
#define BSP_LED_MASK                    0xf

    static void bsp_printHex(uint32_t val)
    {
f90001bc:	ff010113          	addi	sp,sp,-16
f90001c0:	00112623          	sw	ra,12(sp)
f90001c4:	00812423          	sw	s0,8(sp)
f90001c8:	00912223          	sw	s1,4(sp)
f90001cc:	00050493          	mv	s1,a0
        uint32_t digits;
        digits =8;

        for (int i = (4*digits)-4; i >= 0; i -= 4) {
f90001d0:	01c00413          	li	s0,28
f90001d4:	0280006f          	j	f90001fc <bsp_printHex+0x40>
            uart_write(BSP_UART_TERMINAL, "0123456789ABCDEF"[(val >> i) % 16]);
f90001d8:	0084d7b3          	srl	a5,s1,s0
f90001dc:	00f7f713          	andi	a4,a5,15
f90001e0:	f90017b7          	lui	a5,0xf9001
f90001e4:	0cc78793          	addi	a5,a5,204 # f90010cc <__freertos_irq_stack_top+0xffffec0c>
f90001e8:	00e787b3          	add	a5,a5,a4
f90001ec:	0007c583          	lbu	a1,0(a5)
f90001f0:	f8010537          	lui	a0,0xf8010
f90001f4:	f15ff0ef          	jal	ra,f9000108 <uart_write>
        for (int i = (4*digits)-4; i >= 0; i -= 4) {
f90001f8:	ffc40413          	addi	s0,s0,-4
f90001fc:	fc045ee3          	bgez	s0,f90001d8 <bsp_printHex+0x1c>
        }
        uart_write(BSP_UART_TERMINAL, '\n');
f9000200:	00a00593          	li	a1,10
f9000204:	f8010537          	lui	a0,0xf8010
f9000208:	f01ff0ef          	jal	ra,f9000108 <uart_write>
        uart_write(BSP_UART_TERMINAL, '\r');
f900020c:	00d00593          	li	a1,13
f9000210:	f8010537          	lui	a0,0xf8010
f9000214:	ef5ff0ef          	jal	ra,f9000108 <uart_write>
    }
f9000218:	00c12083          	lw	ra,12(sp)
f900021c:	00812403          	lw	s0,8(sp)
f9000220:	00412483          	lw	s1,4(sp)
f9000224:	01010113          	addi	sp,sp,16
f9000228:	00008067          	ret

f900022c <bsp_print>:
    
    static void bsp_print(uint8_t * data) {
f900022c:	ff010113          	addi	sp,sp,-16
f9000230:	00112623          	sw	ra,12(sp)
        uart_writeStr(BSP_UART_TERMINAL, (const char*)data);
f9000234:	00050593          	mv	a1,a0
f9000238:	f8010537          	lui	a0,0xf8010
f900023c:	f09ff0ef          	jal	ra,f9000144 <uart_writeStr>
        uart_write(BSP_UART_TERMINAL, '\n');
f9000240:	00a00593          	li	a1,10
f9000244:	f8010537          	lui	a0,0xf8010
f9000248:	ec1ff0ef          	jal	ra,f9000108 <uart_write>
        uart_write(BSP_UART_TERMINAL, '\r');
f900024c:	00d00593          	li	a1,13
f9000250:	f8010537          	lui	a0,0xf8010
f9000254:	eb5ff0ef          	jal	ra,f9000108 <uart_write>
    }
f9000258:	00c12083          	lw	ra,12(sp)
f900025c:	01010113          	addi	sp,sp,16
f9000260:	00008067          	ret

f9000264 <bsp_printReg>:
        bsp_printHexDigit(byte >> 4);
        bsp_printHexDigit(byte & 0x0F);
    }

    static void bsp_printReg(char* s, u32 data)
    {
f9000264:	ff010113          	addi	sp,sp,-16
f9000268:	00112623          	sw	ra,12(sp)
f900026c:	00812423          	sw	s0,8(sp)
f9000270:	00058413          	mv	s0,a1
        bsp_putString(s);
f9000274:	00050593          	mv	a1,a0
f9000278:	f8010537          	lui	a0,0xf8010
f900027c:	ec9ff0ef          	jal	ra,f9000144 <uart_writeStr>
        bsp_printHex(data);
f9000280:	00040513          	mv	a0,s0
f9000284:	f39ff0ef          	jal	ra,f90001bc <bsp_printHex>
    }
f9000288:	00c12083          	lw	ra,12(sp)
f900028c:	00812403          	lw	s0,8(sp)
f9000290:	01010113          	addi	sp,sp,16
f9000294:	00008067          	ret

f9000298 <bsp_printf_c>:
        uart_writeStr(BSP_UART_TERMINAL, sval);
    }


    static void bsp_printf_c(int c)
    {
f9000298:	ff010113          	addi	sp,sp,-16
f900029c:	00112623          	sw	ra,12(sp)
        bsp_putChar(c);
f90002a0:	0ff57593          	andi	a1,a0,255
f90002a4:	f8010537          	lui	a0,0xf8010
f90002a8:	e61ff0ef          	jal	ra,f9000108 <uart_write>
    }
f90002ac:	00c12083          	lw	ra,12(sp)
f90002b0:	01010113          	addi	sp,sp,16
f90002b4:	00008067          	ret

f90002b8 <bsp_printf_s>:
    
    static void bsp_printf_s(char *p)
    {
f90002b8:	ff010113          	addi	sp,sp,-16
f90002bc:	00112623          	sw	ra,12(sp)
f90002c0:	00812423          	sw	s0,8(sp)
f90002c4:	00050413          	mv	s0,a0
        while (*p)
f90002c8:	00044583          	lbu	a1,0(s0)
f90002cc:	00058a63          	beqz	a1,f90002e0 <bsp_printf_s+0x28>
            bsp_putChar(*(p++));
f90002d0:	00140413          	addi	s0,s0,1
f90002d4:	f8010537          	lui	a0,0xf8010
f90002d8:	e31ff0ef          	jal	ra,f9000108 <uart_write>
f90002dc:	fedff06f          	j	f90002c8 <bsp_printf_s+0x10>
    }
f90002e0:	00c12083          	lw	ra,12(sp)
f90002e4:	00812403          	lw	s0,8(sp)
f90002e8:	01010113          	addi	sp,sp,16
f90002ec:	00008067          	ret

f90002f0 <bsp_printf_d>:
    
    static void bsp_printf_d(int val)
    {
f90002f0:	fd010113          	addi	sp,sp,-48
f90002f4:	02112623          	sw	ra,44(sp)
f90002f8:	02812423          	sw	s0,40(sp)
f90002fc:	02912223          	sw	s1,36(sp)
f9000300:	00050493          	mv	s1,a0
        char buffer[32];
        char *p = buffer;
        if (val < 0) {
f9000304:	00054663          	bltz	a0,f9000310 <bsp_printf_d+0x20>
    {
f9000308:	00010413          	mv	s0,sp
f900030c:	02c0006f          	j	f9000338 <bsp_printf_d+0x48>
            bsp_printf_c('-');
f9000310:	02d00513          	li	a0,45
f9000314:	f85ff0ef          	jal	ra,f9000298 <bsp_printf_c>
            val = -val;
f9000318:	409004b3          	neg	s1,s1
f900031c:	fedff06f          	j	f9000308 <bsp_printf_d+0x18>
        }
        while (val || p == buffer) {
            *(p++) = '0' + val % 10;
f9000320:	00a00713          	li	a4,10
f9000324:	02e4e7b3          	rem	a5,s1,a4
f9000328:	03078793          	addi	a5,a5,48
f900032c:	00f40023          	sb	a5,0(s0)
            val = val / 10;
f9000330:	02e4c4b3          	div	s1,s1,a4
            *(p++) = '0' + val % 10;
f9000334:	00140413          	addi	s0,s0,1
        while (val || p == buffer) {
f9000338:	fe0494e3          	bnez	s1,f9000320 <bsp_printf_d+0x30>
f900033c:	00010793          	mv	a5,sp
f9000340:	fef400e3          	beq	s0,a5,f9000320 <bsp_printf_d+0x30>
f9000344:	0100006f          	j	f9000354 <bsp_printf_d+0x64>
        }
        while (p != buffer)
            bsp_printf_c(*(--p));
f9000348:	fff40413          	addi	s0,s0,-1
f900034c:	00044503          	lbu	a0,0(s0)
f9000350:	f49ff0ef          	jal	ra,f9000298 <bsp_printf_c>
        while (p != buffer)
f9000354:	00010793          	mv	a5,sp
f9000358:	fef418e3          	bne	s0,a5,f9000348 <bsp_printf_d+0x58>
    }
f900035c:	02c12083          	lw	ra,44(sp)
f9000360:	02812403          	lw	s0,40(sp)
f9000364:	02412483          	lw	s1,36(sp)
f9000368:	03010113          	addi	sp,sp,48
f900036c:	00008067          	ret

f9000370 <bsp_printf_x>:
    
    static void bsp_printf_x(int val)
    {
f9000370:	ff010113          	addi	sp,sp,-16
f9000374:	00112623          	sw	ra,12(sp)
    	int i,digi=2;
    
    	for(i=0;i<8;i++)
f9000378:	00000713          	li	a4,0
f900037c:	00700793          	li	a5,7
f9000380:	02e7c063          	blt	a5,a4,f90003a0 <bsp_printf_x+0x30>
    	{
    		if((val & (0xFFFFFFF0 <<(4*i))) == 0)
f9000384:	00271693          	slli	a3,a4,0x2
f9000388:	ff000793          	li	a5,-16
f900038c:	00d797b3          	sll	a5,a5,a3
f9000390:	00f577b3          	and	a5,a0,a5
f9000394:	00078663          	beqz	a5,f90003a0 <bsp_printf_x+0x30>
    	for(i=0;i<8;i++)
f9000398:	00170713          	addi	a4,a4,1
f900039c:	fe1ff06f          	j	f900037c <bsp_printf_x+0xc>
    			digi=i+1;
    			break;
    		}
    	}
    
    	bsp_printHex(val);
f90003a0:	e1dff0ef          	jal	ra,f90001bc <bsp_printHex>
    }
f90003a4:	00c12083          	lw	ra,12(sp)
f90003a8:	01010113          	addi	sp,sp,16
f90003ac:	00008067          	ret

f90003b0 <MacSpeedSet>:
*             - 0x02: 100Mbps
*             - 0x04: 1000Mbps
*
******************************************************************************/
static void MacSpeedSet(u32 speed)
{
f90003b0:	ff010113          	addi	sp,sp,-16
f90003b4:	00112623          	sw	ra,12(sp)
f90003b8:	f81006b7          	lui	a3,0xf8100
f90003bc:	0086a783          	lw	a5,8(a3) # f8100008 <__freertos_irq_stack_top+0xff0fdb48>
	u32 Value;
	int phy_reg=0;
	//Set Mac Speed
	Value = read_u32(TSEMAC_CSR+0x008) & ETH_SPEED_MASK;
f90003c0:	fff90737          	lui	a4,0xfff90
f90003c4:	fff70713          	addi	a4,a4,-1 # fff8ffff <__freertos_irq_stack_top+0x6f8db3f>
f90003c8:	00e7f7b3          	and	a5,a5,a4
	Value |= (speed&0x7)<<16;
f90003cc:	01051513          	slli	a0,a0,0x10
f90003d0:	00070737          	lui	a4,0x70
f90003d4:	00e57533          	and	a0,a0,a4
f90003d8:	00f56533          	or	a0,a0,a5
        *((volatile u32*) address) = data;
f90003dc:	00a6a423          	sw	a0,8(a3)
	write_u32(Value, (TSEMAC_CSR+0x008));
	if(PRINTF_EN == 1) {
	    bsp_print("Info : Set Mac Speed.");
f90003e0:	f9001537          	lui	a0,0xf9001
f90003e4:	0e050513          	addi	a0,a0,224 # f90010e0 <__freertos_irq_stack_top+0xffffec20>
f90003e8:	e45ff0ef          	jal	ra,f900022c <bsp_print>
	}
}
f90003ec:	00c12083          	lw	ra,12(sp)
f90003f0:	01010113          	addi	sp,sp,16
f90003f4:	00008067          	ret

f90003f8 <MacIpgSet>:
*
* @param ipg The value of the inter-packet gap to be set.
*
******************************************************************************/
static void MacIpgSet(u32 ipg)
{
f90003f8:	ff010113          	addi	sp,sp,-16
f90003fc:	00112623          	sw	ra,12(sp)
	//Set Mac IPG
	write_u32(ipg&0x3f, (TSEMAC_CSR+0x5C));
f9000400:	03f57513          	andi	a0,a0,63
f9000404:	f81007b7          	lui	a5,0xf8100
f9000408:	04a7ae23          	sw	a0,92(a5) # f810005c <__freertos_irq_stack_top+0xff0fdb9c>
	if(PRINTF_EN == 1) {
	    bsp_print("Info : Set Mac IPG.");
f900040c:	f9001537          	lui	a0,0xf9001
f9000410:	0f850513          	addi	a0,a0,248 # f90010f8 <__freertos_irq_stack_top+0xffffec38>
f9000414:	e19ff0ef          	jal	ra,f900022c <bsp_print>
	}
}
f9000418:	00c12083          	lw	ra,12(sp)
f900041c:	01010113          	addi	sp,sp,16
f9000420:	00008067          	ret

f9000424 <MacCntClean>:
*
* @brief This function sets and clears the statistics counters in the TSEMAC control/status register.
*
******************************************************************************/
static void MacCntClean()
{
f9000424:	ff010113          	addi	sp,sp,-16
f9000428:	00112623          	sw	ra,12(sp)
f900042c:	00812423          	sw	s0,8(sp)
f9000430:	00912223          	sw	s1,4(sp)
        return *((volatile u32*) address);
f9000434:	f81004b7          	lui	s1,0xf8100
f9000438:	0084a403          	lw	s0,8(s1) # f8100008 <__freertos_irq_stack_top+0xff0fdb48>
	u32 Value;
	//Set cnt_reset 1
	Value = read_u32(TSEMAC_CSR+0x008) & CNT_RST_MASK;
f900043c:	800007b7          	lui	a5,0x80000
f9000440:	fff7c713          	not	a4,a5
f9000444:	00e47433          	and	s0,s0,a4
	Value |= 0x80000000;
f9000448:	00f467b3          	or	a5,s0,a5
        *((volatile u32*) address) = data;
f900044c:	00f4a423          	sw	a5,8(s1)
	write_u32(Value, (TSEMAC_CSR+0x008));
	bsp_uDelay(1);
f9000450:	f8b00637          	lui	a2,0xf8b00
f9000454:	02faf5b7          	lui	a1,0x2faf
f9000458:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f900045c:	00100513          	li	a0,1
f9000460:	d29ff0ef          	jal	ra,f9000188 <clint_uDelay>
f9000464:	0084a423          	sw	s0,8(s1)
	//Set cnt_reset 0
	Value &= CNT_RST_MASK;
	Value |= 0x0;
	write_u32(Value, (TSEMAC_CSR+0x008));
	if(PRINTF_EN == 1) {
		bsp_print("Info : Mac Reset Statistics Counters.");
f9000468:	f9001537          	lui	a0,0xf9001
f900046c:	10c50513          	addi	a0,a0,268 # f900110c <__freertos_irq_stack_top+0xffffec4c>
f9000470:	dbdff0ef          	jal	ra,f900022c <bsp_print>
	}
}
f9000474:	00c12083          	lw	ra,12(sp)
f9000478:	00812403          	lw	s0,8(sp)
f900047c:	00412483          	lw	s1,4(sp)
f9000480:	01010113          	addi	sp,sp,16
f9000484:	00008067          	ret

f9000488 <CntMonitor>:
*
* @note This function is usefult to track trasmit/receive frame error such as CRC errors, etc
*
******************************************************************************/
static void CntMonitor()
{
f9000488:	ff010113          	addi	sp,sp,-16
f900048c:	00112623          	sw	ra,12(sp)
f9000490:	00812423          	sw	s0,8(sp)
	bsp_print("--------------------");
f9000494:	f9001537          	lui	a0,0xf9001
f9000498:	13450513          	addi	a0,a0,308 # f9001134 <__freertos_irq_stack_top+0xffffec74>
f900049c:	d91ff0ef          	jal	ra,f900022c <bsp_print>
        return *((volatile u32*) address);
f90004a0:	f8100437          	lui	s0,0xf8100
f90004a4:	06842583          	lw	a1,104(s0) # f8100068 <__freertos_irq_stack_top+0xff0fdba8>
	bsp_printReg("aFramesTransmittedOK : 0x"       , read_u32(TSEMAC_CSR+0x68));
f90004a8:	f9001537          	lui	a0,0xf9001
f90004ac:	14c50513          	addi	a0,a0,332 # f900114c <__freertos_irq_stack_top+0xffffec8c>
f90004b0:	db5ff0ef          	jal	ra,f9000264 <bsp_printReg>
f90004b4:	06c42583          	lw	a1,108(s0)
	bsp_printReg("aFramesReceivedOK : 0x"          , read_u32(TSEMAC_CSR+0x6c));
f90004b8:	f9001537          	lui	a0,0xf9001
f90004bc:	16850513          	addi	a0,a0,360 # f9001168 <__freertos_irq_stack_top+0xffffeca8>
f90004c0:	da5ff0ef          	jal	ra,f9000264 <bsp_printReg>
f90004c4:	08842583          	lw	a1,136(s0)
	bsp_printReg("ifInErrors : 0x"                 , read_u32(TSEMAC_CSR+0x88));
f90004c8:	f9001537          	lui	a0,0xf9001
f90004cc:	18050513          	addi	a0,a0,384 # f9001180 <__freertos_irq_stack_top+0xffffecc0>
f90004d0:	d95ff0ef          	jal	ra,f9000264 <bsp_printReg>
f90004d4:	08c42583          	lw	a1,140(s0)
	bsp_printReg("ifOutErrors : 0x"                , read_u32(TSEMAC_CSR+0x8c));
f90004d8:	f9001537          	lui	a0,0xf9001
f90004dc:	19050513          	addi	a0,a0,400 # f9001190 <__freertos_irq_stack_top+0xffffecd0>
f90004e0:	d85ff0ef          	jal	ra,f9000264 <bsp_printReg>
f90004e4:	0b442583          	lw	a1,180(s0)
	bsp_printReg("etherStatsPkts : 0x"             , read_u32(TSEMAC_CSR+0xb4));
f90004e8:	f9001537          	lui	a0,0xf9001
f90004ec:	1a450513          	addi	a0,a0,420 # f90011a4 <__freertos_irq_stack_top+0xffffece4>
f90004f0:	d75ff0ef          	jal	ra,f9000264 <bsp_printReg>
f90004f4:	0b842583          	lw	a1,184(s0)
	bsp_printReg("etherStatsUndersizePkts : 0x"    , read_u32(TSEMAC_CSR+0xb8));
f90004f8:	f9001537          	lui	a0,0xf9001
f90004fc:	1b850513          	addi	a0,a0,440 # f90011b8 <__freertos_irq_stack_top+0xffffecf8>
f9000500:	d65ff0ef          	jal	ra,f9000264 <bsp_printReg>
f9000504:	0bc42583          	lw	a1,188(s0)
	bsp_printReg("etherStatsOversizePkts : 0x"     , read_u32(TSEMAC_CSR+0xbc));
f9000508:	f9001537          	lui	a0,0xf9001
f900050c:	1d850513          	addi	a0,a0,472 # f90011d8 <__freertos_irq_stack_top+0xffffed18>
f9000510:	d55ff0ef          	jal	ra,f9000264 <bsp_printReg>
f9000514:	09c42583          	lw	a1,156(s0)
	bsp_printReg("aRxFilterFramesErrors : 0x"      , read_u32(TSEMAC_CSR+0x9c));
f9000518:	f9001537          	lui	a0,0xf9001
f900051c:	1f450513          	addi	a0,a0,500 # f90011f4 <__freertos_irq_stack_top+0xffffed34>
f9000520:	d45ff0ef          	jal	ra,f9000264 <bsp_printReg>
f9000524:	07042583          	lw	a1,112(s0)
	bsp_printReg("aFrameCheckSequenceErrors : 0x"  , read_u32(TSEMAC_CSR+0x70));
f9000528:	f9001537          	lui	a0,0xf9001
f900052c:	21050513          	addi	a0,a0,528 # f9001210 <__freertos_irq_stack_top+0xffffed50>
f9000530:	d35ff0ef          	jal	ra,f9000264 <bsp_printReg>
f9000534:	08042583          	lw	a1,128(s0)
	bsp_printReg("aTxPAUSEMACCtrlFrames : 0x"      , read_u32(TSEMAC_CSR+0x80));
f9000538:	f9001537          	lui	a0,0xf9001
f900053c:	23050513          	addi	a0,a0,560 # f9001230 <__freertos_irq_stack_top+0xffffed70>
f9000540:	d25ff0ef          	jal	ra,f9000264 <bsp_printReg>
f9000544:	08442583          	lw	a1,132(s0)
	bsp_printReg("aRxPAUSEMACCtrlFrames : 0x"      , read_u32(TSEMAC_CSR+0x84));
f9000548:	f9001537          	lui	a0,0xf9001
f900054c:	24c50513          	addi	a0,a0,588 # f900124c <__freertos_irq_stack_top+0xffffed8c>
f9000550:	d15ff0ef          	jal	ra,f9000264 <bsp_printReg>
}
f9000554:	00c12083          	lw	ra,12(sp)
f9000558:	00812403          	lw	s0,8(sp)
f900055c:	01010113          	addi	sp,sp,16
f9000560:	00008067          	ret

f9000564 <MacNormalInit>:
*
* @param speed The speed setting to be applied to the TSEMAC.
*
******************************************************************************/
static void MacNormalInit(u32 speed)
{
f9000564:	ff010113          	addi	sp,sp,-16
f9000568:	00112623          	sw	ra,12(sp)
	MacSpeedSet(speed);
f900056c:	e45ff0ef          	jal	ra,f90003b0 <MacSpeedSet>
	MacIpgSet(0x0C);
f9000570:	00c00513          	li	a0,12
f9000574:	e85ff0ef          	jal	ra,f90003f8 <MacIpgSet>
}
f9000578:	00c12083          	lw	ra,12(sp)
f900057c:	01010113          	addi	sp,sp,16
f9000580:	00008067          	ret

f9000584 <bsp_printf>:
    
    static void bsp_printf(const char *format, ...)
    {
f9000584:	fc010113          	addi	sp,sp,-64
f9000588:	00112e23          	sw	ra,28(sp)
f900058c:	00812c23          	sw	s0,24(sp)
f9000590:	00912a23          	sw	s1,20(sp)
f9000594:	00050493          	mv	s1,a0
f9000598:	02b12223          	sw	a1,36(sp)
f900059c:	02c12423          	sw	a2,40(sp)
f90005a0:	02d12623          	sw	a3,44(sp)
f90005a4:	02e12823          	sw	a4,48(sp)
f90005a8:	02f12a23          	sw	a5,52(sp)
f90005ac:	03012c23          	sw	a6,56(sp)
f90005b0:	03112e23          	sw	a7,60(sp)
        int i;
        va_list ap;
    
        va_start(ap, format);
f90005b4:	02410793          	addi	a5,sp,36
f90005b8:	00f12623          	sw	a5,12(sp)
    
        for (i = 0; format[i]; i++)
f90005bc:	00000413          	li	s0,0
f90005c0:	01c0006f          	j	f90005dc <bsp_printf+0x58>
            if (format[i] == '%') {
                while (format[++i]) {
                    if (format[i] == 'c') {
                        bsp_printf_c(va_arg(ap,int));
f90005c4:	00c12783          	lw	a5,12(sp)
f90005c8:	00478713          	addi	a4,a5,4 # 80000004 <__freertos_irq_stack_top+0x86ffdb44>
f90005cc:	00e12623          	sw	a4,12(sp)
f90005d0:	0007a503          	lw	a0,0(a5)
f90005d4:	cc5ff0ef          	jal	ra,f9000298 <bsp_printf_c>
        for (i = 0; format[i]; i++)
f90005d8:	00140413          	addi	s0,s0,1
f90005dc:	008487b3          	add	a5,s1,s0
f90005e0:	0007c503          	lbu	a0,0(a5)
f90005e4:	08050663          	beqz	a0,f9000670 <bsp_printf+0xec>
            if (format[i] == '%') {
f90005e8:	02500793          	li	a5,37
f90005ec:	02f50e63          	beq	a0,a5,f9000628 <bsp_printf+0xa4>
    					bsp_printf_x(va_arg(ap,int));
    					break;
    				}
                }
            } else
                bsp_printf_c(format[i]);
f90005f0:	ca9ff0ef          	jal	ra,f9000298 <bsp_printf_c>
f90005f4:	fe5ff06f          	j	f90005d8 <bsp_printf+0x54>
                        bsp_printf_s(va_arg(ap,char*));
f90005f8:	00c12783          	lw	a5,12(sp)
f90005fc:	00478713          	addi	a4,a5,4
f9000600:	00e12623          	sw	a4,12(sp)
f9000604:	0007a503          	lw	a0,0(a5)
f9000608:	cb1ff0ef          	jal	ra,f90002b8 <bsp_printf_s>
                        break;
f900060c:	fcdff06f          	j	f90005d8 <bsp_printf+0x54>
                        bsp_printf_d(va_arg(ap,int));
f9000610:	00c12783          	lw	a5,12(sp)
f9000614:	00478713          	addi	a4,a5,4
f9000618:	00e12623          	sw	a4,12(sp)
f900061c:	0007a503          	lw	a0,0(a5)
f9000620:	cd1ff0ef          	jal	ra,f90002f0 <bsp_printf_d>
                        break;
f9000624:	fb5ff06f          	j	f90005d8 <bsp_printf+0x54>
                while (format[++i]) {
f9000628:	00140413          	addi	s0,s0,1
f900062c:	008487b3          	add	a5,s1,s0
f9000630:	0007c783          	lbu	a5,0(a5)
f9000634:	fa0782e3          	beqz	a5,f90005d8 <bsp_printf+0x54>
                    if (format[i] == 'c') {
f9000638:	06300713          	li	a4,99
f900063c:	f8e784e3          	beq	a5,a4,f90005c4 <bsp_printf+0x40>
                    if (format[i] == 's') {
f9000640:	07300713          	li	a4,115
f9000644:	fae78ae3          	beq	a5,a4,f90005f8 <bsp_printf+0x74>
                    if (format[i] == 'd') {
f9000648:	06400713          	li	a4,100
f900064c:	fce782e3          	beq	a5,a4,f9000610 <bsp_printf+0x8c>
                    if (format[i] == 'x') {
f9000650:	07800713          	li	a4,120
f9000654:	fce79ae3          	bne	a5,a4,f9000628 <bsp_printf+0xa4>
    					bsp_printf_x(va_arg(ap,int));
f9000658:	00c12783          	lw	a5,12(sp)
f900065c:	00478713          	addi	a4,a5,4
f9000660:	00e12623          	sw	a4,12(sp)
f9000664:	0007a503          	lw	a0,0(a5)
f9000668:	d09ff0ef          	jal	ra,f9000370 <bsp_printf_x>
    					break;
f900066c:	f6dff06f          	j	f90005d8 <bsp_printf+0x54>
    
        va_end(ap);
    }
f9000670:	01c12083          	lw	ra,28(sp)
f9000674:	01812403          	lw	s0,24(sp)
f9000678:	01412483          	lw	s1,20(sp)
f900067c:	04010113          	addi	sp,sp,64
f9000680:	00008067          	ret

f9000684 <PatGen>:
#else
#include "efx_tse_phy.h"
#endif
////////////////////////////////////////////////////////////////////////////////
void PatGen()
{
f9000684:	ff010113          	addi	sp,sp,-16
f9000688:	00112623          	sw	ra,12(sp)
        *((volatile u32*) address) = data;
f900068c:	f81007b7          	lui	a5,0xf8100
f9000690:	00010737          	lui	a4,0x10
f9000694:	fff70713          	addi	a4,a4,-1 # ffff <__stack_size+0xefff>
f9000698:	20e7aa23          	sw	a4,532(a5) # f8100214 <__freertos_irq_stack_top+0xff0fdd54>
f900069c:	fff00713          	li	a4,-1
f90006a0:	20e7a823          	sw	a4,528(a5)
f90006a4:	0000f737          	lui	a4,0xf
f90006a8:	ae870713          	addi	a4,a4,-1304 # eae8 <__stack_size+0xdae8>
f90006ac:	20e7ae23          	sw	a4,540(a5)
f90006b0:	5e006737          	lui	a4,0x5e006
f90006b4:	0c870713          	addi	a4,a4,200 # 5e0060c8 <__stack_size+0x5e0050c8>
f90006b8:	20e7ac23          	sw	a4,536(a5)
f90006bc:	c0a80737          	lui	a4,0xc0a80
f90006c0:	16470693          	addi	a3,a4,356 # c0a80164 <__freertos_irq_stack_top+0xc7a7dca4>
f90006c4:	22d7a223          	sw	a3,548(a5)
f90006c8:	16570713          	addi	a4,a4,357
f90006cc:	22e7a423          	sw	a4,552(a5)
f90006d0:	27150737          	lui	a4,0x27150
f90006d4:	52170713          	addi	a4,a4,1313 # 27150521 <__stack_size+0x2714f521>
f90006d8:	22e7a623          	sw	a4,556(a5)
f90006dc:	00640737          	lui	a4,0x640
f90006e0:	06470713          	addi	a4,a4,100 # 640064 <__stack_size+0x63f064>
f90006e4:	20e7a623          	sw	a4,524(a5)
f90006e8:	06400713          	li	a4,100
f90006ec:	22e7a023          	sw	a4,544(a5)
f90006f0:	22e7a823          	sw	a4,560(a5)
f90006f4:	2007a423          	sw	zero,520(a5)
f90006f8:	2007a223          	sw	zero,516(a5)
f90006fc:	00100713          	li	a4,1
f9000700:	20e7a423          	sw	a4,520(a5)
f9000704:	2007a423          	sw	zero,520(a5)
		write_u32(0x2, (TSEMAC_CSR+0x208));
        //ex_reg mac_pat_gen_en & udp_pat_gen_en
		write_u32(0x0, (TSEMAC_CSR+0x208));
	}
	if(PRINTF_EN == 1) {
        bsp_print("Info : Set Pattern Generator.");
f9000708:	f9001537          	lui	a0,0xf9001
f900070c:	26850513          	addi	a0,a0,616 # f9001268 <__freertos_irq_stack_top+0xffffeda8>
f9000710:	b1dff0ef          	jal	ra,f900022c <bsp_print>
	}
}
f9000714:	00c12083          	lw	ra,12(sp)
f9000718:	01010113          	addi	sp,sp,16
f900071c:	00008067          	ret

f9000720 <StartRunning>:

void StartRunning()
{
f9000720:	ff010113          	addi	sp,sp,-16
f9000724:	00112623          	sw	ra,12(sp)
f9000728:	00812423          	sw	s0,8(sp)
f900072c:	f8100437          	lui	s0,0xf8100
f9000730:	00100793          	li	a5,1
f9000734:	20f42023          	sw	a5,512(s0) # f8100200 <__freertos_irq_stack_top+0xff0fdd40>
    //mac_sw_rst
	write_u32(0x1, (TSEMAC_CSR+0x200));
	if(PRINTF_EN == 1) {
	    bsp_print("Info : Assert mac reset ");
f9000738:	f9001537          	lui	a0,0xf9001
f900073c:	28850513          	addi	a0,a0,648 # f9001288 <__freertos_irq_stack_top+0xffffedc8>
f9000740:	aedff0ef          	jal	ra,f900022c <bsp_print>
	}
	bsp_uDelay(1);
f9000744:	f8b00637          	lui	a2,0xf8b00
f9000748:	02faf5b7          	lui	a1,0x2faf
f900074c:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f9000750:	00100513          	li	a0,1
f9000754:	a35ff0ef          	jal	ra,f9000188 <clint_uDelay>
f9000758:	20042023          	sw	zero,512(s0)
    //mac_sw_rst
	write_u32(0x0, (TSEMAC_CSR+0x200));
	if(PRINTF_EN == 1) {
	    bsp_print("Info : Deassert mac reset ");
f900075c:	f9001537          	lui	a0,0xf9001
f9000760:	2a450513          	addi	a0,a0,676 # f90012a4 <__freertos_irq_stack_top+0xffffede4>
f9000764:	ac9ff0ef          	jal	ra,f900022c <bsp_print>
f9000768:	20042223          	sw	zero,516(s0)
    }

	if(TEST_MODE == 0) {
        //ex_reg pat_mux_select & axi4_st_mux_select
		write_u32(0x0, (TSEMAC_CSR+0x204));
		MacCntClean();
f900076c:	cb9ff0ef          	jal	ra,f9000424 <MacCntClean>
		PatGen();
f9000770:	f15ff0ef          	jal	ra,f9000684 <PatGen>
		MacCntClean();

	}

	while(1){
		bsp_uDelay(3000000);
f9000774:	f8b00637          	lui	a2,0xf8b00
f9000778:	02faf5b7          	lui	a1,0x2faf
f900077c:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f9000780:	002dc537          	lui	a0,0x2dc
f9000784:	6c050513          	addi	a0,a0,1728 # 2dc6c0 <__stack_size+0x2db6c0>
f9000788:	a01ff0ef          	jal	ra,f9000188 <clint_uDelay>
		CntMonitor();
f900078c:	cfdff0ef          	jal	ra,f9000488 <CntMonitor>
f9000790:	fe5ff06f          	j	f9000774 <StartRunning+0x54>

f9000794 <clock_sel>:

void clock_sel(int speed)
{
	int val=0;

	if(speed == Speed_1000Mhz)	val=0x03;
f9000794:	00400793          	li	a5,4
f9000798:	00f50a63          	beq	a0,a5,f90007ac <clock_sel+0x18>
	else						val=0x00;
f900079c:	00000713          	li	a4,0
f90007a0:	f81007b7          	lui	a5,0xf8100
f90007a4:	22e7aa23          	sw	a4,564(a5) # f8100234 <__freertos_irq_stack_top+0xff0fdd74>

	write_u32(val, (TSEMAC_CSR+0x234));
}
f90007a8:	00008067          	ret
	if(speed == Speed_1000Mhz)	val=0x03;
f90007ac:	00300713          	li	a4,3
f90007b0:	ff1ff06f          	j	f90007a0 <clock_sel+0xc>

f90007b4 <main>:


////////////////////////////////////////////////////////////////////////////////
void main() {
f90007b4:	ff010113          	addi	sp,sp,-16
f90007b8:	00112623          	sw	ra,12(sp)
f90007bc:	00812423          	sw	s0,8(sp)

    bsp_init();
    if(TEST_MODE == 1){
    	bsp_print("===   TSEMAC Example Design in Linked-Partner Mode   ===");
    } else {
    	bsp_print("===   TSEMAC Example Design in Normal Mode   ===");
f90007c0:	f9001537          	lui	a0,0xf9001
f90007c4:	2c050513          	addi	a0,a0,704 # f90012c0 <__freertos_irq_stack_top+0xffffee00>
f90007c8:	a65ff0ef          	jal	ra,f900022c <bsp_print>
    }

	#ifdef PHY8211
    	rtl8211_drv_init();
f90007cc:	714000ef          	jal	ra,f9000ee0 <rtl8211_drv_init>
    	bsp_print("Waiting Link Up...");
f90007d0:	f9001537          	lui	a0,0xf9001
f90007d4:	2f450513          	addi	a0,a0,756 # f90012f4 <__freertos_irq_stack_top+0xffffee34>
f90007d8:	a55ff0ef          	jal	ra,f900022c <bsp_print>
    	speed=rtl8211_drv_linkup();
f90007dc:	50c000ef          	jal	ra,f9000ce8 <rtl8211_drv_linkup>
f90007e0:	00050413          	mv	s0,a0

    	if(speed == Speed_1000Mhz)	link_speed = 1000;
f90007e4:	00400713          	li	a4,4
f90007e8:	02e50263          	beq	a0,a4,f900080c <main+0x58>
    	else if(speed == Speed_100Mhz)	link_speed = 100;
f90007ec:	00200713          	li	a4,2
f90007f0:	04e50663          	beq	a0,a4,f900083c <main+0x88>
    	else if(speed == Speed_10Mhz)	link_speed = 10;
f90007f4:	00100713          	li	a4,1
f90007f8:	00e50663          	beq	a0,a4,f9000804 <main+0x50>
    	else				link_speed = 0;
f90007fc:	00000593          	li	a1,0
f9000800:	0100006f          	j	f9000810 <main+0x5c>
    	else if(speed == Speed_10Mhz)	link_speed = 10;
f9000804:	00a00593          	li	a1,10
f9000808:	0080006f          	j	f9000810 <main+0x5c>
    	if(speed == Speed_1000Mhz)	link_speed = 1000;
f900080c:	3e800593          	li	a1,1000
    	bsp_printf("Link Speed: \t%d Mbps\n\r",link_speed);
f9000810:	f9001537          	lui	a0,0xf9001
f9000814:	30850513          	addi	a0,a0,776 # f9001308 <__freertos_irq_stack_top+0xffffee48>
f9000818:	d6dff0ef          	jal	ra,f9000584 <bsp_printf>
    	bsp_print("Switching RX clock mux...");
f900081c:	f9001537          	lui	a0,0xf9001
f9000820:	32050513          	addi	a0,a0,800 # f9001320 <__freertos_irq_stack_top+0xffffee60>
f9000824:	a09ff0ef          	jal	ra,f900022c <bsp_print>
    	clock_sel(speed);
f9000828:	00040513          	mv	a0,s0
f900082c:	f69ff0ef          	jal	ra,f9000794 <clock_sel>

    	if(TEST_MODE == 1){
    		MacAddrSet(1,1);
    	}
    	MacNormalInit(speed);
f9000830:	00040513          	mv	a0,s0
f9000834:	d31ff0ef          	jal	ra,f9000564 <MacNormalInit>

	#endif
	

    StartRunning();
f9000838:	ee9ff0ef          	jal	ra,f9000720 <StartRunning>
    	else if(speed == Speed_100Mhz)	link_speed = 100;
f900083c:	06400593          	li	a1,100
f9000840:	fd1ff06f          	j	f9000810 <main+0x5c>

f9000844 <uart_writeAvailability>:
        return *((volatile u32*) address);
f9000844:	00452503          	lw	a0,4(a0)
        return (read_u32(reg + UART_STATUS) >> 16) & 0xFF;
f9000848:	01055513          	srli	a0,a0,0x10
    }
f900084c:	0ff57513          	andi	a0,a0,255
f9000850:	00008067          	ret

f9000854 <uart_write>:
    static void uart_write(u32 reg, char data){
f9000854:	ff010113          	addi	sp,sp,-16
f9000858:	00112623          	sw	ra,12(sp)
f900085c:	00812423          	sw	s0,8(sp)
f9000860:	00912223          	sw	s1,4(sp)
f9000864:	00050413          	mv	s0,a0
f9000868:	00058493          	mv	s1,a1
        while(uart_writeAvailability(reg) == 0);
f900086c:	00040513          	mv	a0,s0
f9000870:	fd5ff0ef          	jal	ra,f9000844 <uart_writeAvailability>
f9000874:	fe050ce3          	beqz	a0,f900086c <uart_write+0x18>
        *((volatile u32*) address) = data;
f9000878:	00942023          	sw	s1,0(s0)
    }
f900087c:	00c12083          	lw	ra,12(sp)
f9000880:	00812403          	lw	s0,8(sp)
f9000884:	00412483          	lw	s1,4(sp)
f9000888:	01010113          	addi	sp,sp,16
f900088c:	00008067          	ret

f9000890 <uart_writeStr>:
    static void uart_writeStr(u32 reg, const char* str){
f9000890:	ff010113          	addi	sp,sp,-16
f9000894:	00112623          	sw	ra,12(sp)
f9000898:	00812423          	sw	s0,8(sp)
f900089c:	00912223          	sw	s1,4(sp)
f90008a0:	00050493          	mv	s1,a0
f90008a4:	00058413          	mv	s0,a1
        while(*str) uart_write(reg, *str++);
f90008a8:	00044583          	lbu	a1,0(s0)
f90008ac:	00058a63          	beqz	a1,f90008c0 <uart_writeStr+0x30>
f90008b0:	00140413          	addi	s0,s0,1
f90008b4:	00048513          	mv	a0,s1
f90008b8:	f9dff0ef          	jal	ra,f9000854 <uart_write>
f90008bc:	fedff06f          	j	f90008a8 <uart_writeStr+0x18>
    }
f90008c0:	00c12083          	lw	ra,12(sp)
f90008c4:	00812403          	lw	s0,8(sp)
f90008c8:	00412483          	lw	s1,4(sp)
f90008cc:	01010113          	addi	sp,sp,16
f90008d0:	00008067          	ret

f90008d4 <clint_uDelay>:
        u32 mTimePerUsec = hz/1000000;
f90008d4:	000f47b7          	lui	a5,0xf4
f90008d8:	24078793          	addi	a5,a5,576 # f4240 <__stack_size+0xf3240>
f90008dc:	02f5d5b3          	divu	a1,a1,a5
    readReg_u32 (clint_getTimeLow , CLINT_TIME_ADDR)
f90008e0:	0000c7b7          	lui	a5,0xc
f90008e4:	ff878793          	addi	a5,a5,-8 # bff8 <__stack_size+0xaff8>
f90008e8:	00f60633          	add	a2,a2,a5
        return *((volatile u32*) address);
f90008ec:	00062783          	lw	a5,0(a2) # f8b00000 <__freertos_irq_stack_top+0xffafdb40>
        u32 limit = clint_getTimeLow(reg) + usec*mTimePerUsec;
f90008f0:	02a58533          	mul	a0,a1,a0
f90008f4:	00f50533          	add	a0,a0,a5
f90008f8:	00062783          	lw	a5,0(a2)
        while((int32_t)(limit-(clint_getTimeLow(reg))) >= 0);
f90008fc:	40f507b3          	sub	a5,a0,a5
f9000900:	fe07dce3          	bgez	a5,f90008f8 <clint_uDelay+0x24>
    }
f9000904:	00008067          	ret

f9000908 <bsp_printHex>:
    {
f9000908:	ff010113          	addi	sp,sp,-16
f900090c:	00112623          	sw	ra,12(sp)
f9000910:	00812423          	sw	s0,8(sp)
f9000914:	00912223          	sw	s1,4(sp)
f9000918:	00050493          	mv	s1,a0
        for (int i = (4*digits)-4; i >= 0; i -= 4) {
f900091c:	01c00413          	li	s0,28
f9000920:	0280006f          	j	f9000948 <bsp_printHex+0x40>
            uart_write(BSP_UART_TERMINAL, "0123456789ABCDEF"[(val >> i) % 16]);
f9000924:	0084d7b3          	srl	a5,s1,s0
f9000928:	00f7f713          	andi	a4,a5,15
f900092c:	f90017b7          	lui	a5,0xf9001
f9000930:	0cc78793          	addi	a5,a5,204 # f90010cc <__freertos_irq_stack_top+0xffffec0c>
f9000934:	00e787b3          	add	a5,a5,a4
f9000938:	0007c583          	lbu	a1,0(a5)
f900093c:	f8010537          	lui	a0,0xf8010
f9000940:	f15ff0ef          	jal	ra,f9000854 <uart_write>
        for (int i = (4*digits)-4; i >= 0; i -= 4) {
f9000944:	ffc40413          	addi	s0,s0,-4
f9000948:	fc045ee3          	bgez	s0,f9000924 <bsp_printHex+0x1c>
        uart_write(BSP_UART_TERMINAL, '\n');
f900094c:	00a00593          	li	a1,10
f9000950:	f8010537          	lui	a0,0xf8010
f9000954:	f01ff0ef          	jal	ra,f9000854 <uart_write>
        uart_write(BSP_UART_TERMINAL, '\r');
f9000958:	00d00593          	li	a1,13
f900095c:	f8010537          	lui	a0,0xf8010
f9000960:	ef5ff0ef          	jal	ra,f9000854 <uart_write>
    }
f9000964:	00c12083          	lw	ra,12(sp)
f9000968:	00812403          	lw	s0,8(sp)
f900096c:	00412483          	lw	s1,4(sp)
f9000970:	01010113          	addi	sp,sp,16
f9000974:	00008067          	ret

f9000978 <bsp_print>:
    static void bsp_print(uint8_t * data) {
f9000978:	ff010113          	addi	sp,sp,-16
f900097c:	00112623          	sw	ra,12(sp)
        uart_writeStr(BSP_UART_TERMINAL, (const char*)data);
f9000980:	00050593          	mv	a1,a0
f9000984:	f8010537          	lui	a0,0xf8010
f9000988:	f09ff0ef          	jal	ra,f9000890 <uart_writeStr>
        uart_write(BSP_UART_TERMINAL, '\n');
f900098c:	00a00593          	li	a1,10
f9000990:	f8010537          	lui	a0,0xf8010
f9000994:	ec1ff0ef          	jal	ra,f9000854 <uart_write>
        uart_write(BSP_UART_TERMINAL, '\r');
f9000998:	00d00593          	li	a1,13
f900099c:	f8010537          	lui	a0,0xf8010
f90009a0:	eb5ff0ef          	jal	ra,f9000854 <uart_write>
    }
f90009a4:	00c12083          	lw	ra,12(sp)
f90009a8:	01010113          	addi	sp,sp,16
f90009ac:	00008067          	ret

f90009b0 <bsp_printf_c>:
    {
f90009b0:	ff010113          	addi	sp,sp,-16
f90009b4:	00112623          	sw	ra,12(sp)
        bsp_putChar(c);
f90009b8:	0ff57593          	andi	a1,a0,255
f90009bc:	f8010537          	lui	a0,0xf8010
f90009c0:	e95ff0ef          	jal	ra,f9000854 <uart_write>
    }
f90009c4:	00c12083          	lw	ra,12(sp)
f90009c8:	01010113          	addi	sp,sp,16
f90009cc:	00008067          	ret

f90009d0 <bsp_printf_s>:
    {
f90009d0:	ff010113          	addi	sp,sp,-16
f90009d4:	00112623          	sw	ra,12(sp)
f90009d8:	00812423          	sw	s0,8(sp)
f90009dc:	00050413          	mv	s0,a0
        while (*p)
f90009e0:	00044583          	lbu	a1,0(s0)
f90009e4:	00058a63          	beqz	a1,f90009f8 <bsp_printf_s+0x28>
            bsp_putChar(*(p++));
f90009e8:	00140413          	addi	s0,s0,1
f90009ec:	f8010537          	lui	a0,0xf8010
f90009f0:	e65ff0ef          	jal	ra,f9000854 <uart_write>
f90009f4:	fedff06f          	j	f90009e0 <bsp_printf_s+0x10>
    }
f90009f8:	00c12083          	lw	ra,12(sp)
f90009fc:	00812403          	lw	s0,8(sp)
f9000a00:	01010113          	addi	sp,sp,16
f9000a04:	00008067          	ret

f9000a08 <bsp_printf_d>:
    {
f9000a08:	fd010113          	addi	sp,sp,-48
f9000a0c:	02112623          	sw	ra,44(sp)
f9000a10:	02812423          	sw	s0,40(sp)
f9000a14:	02912223          	sw	s1,36(sp)
f9000a18:	00050493          	mv	s1,a0
        if (val < 0) {
f9000a1c:	00054663          	bltz	a0,f9000a28 <bsp_printf_d+0x20>
    {
f9000a20:	00010413          	mv	s0,sp
f9000a24:	02c0006f          	j	f9000a50 <bsp_printf_d+0x48>
            bsp_printf_c('-');
f9000a28:	02d00513          	li	a0,45
f9000a2c:	f85ff0ef          	jal	ra,f90009b0 <bsp_printf_c>
            val = -val;
f9000a30:	409004b3          	neg	s1,s1
f9000a34:	fedff06f          	j	f9000a20 <bsp_printf_d+0x18>
            *(p++) = '0' + val % 10;
f9000a38:	00a00713          	li	a4,10
f9000a3c:	02e4e7b3          	rem	a5,s1,a4
f9000a40:	03078793          	addi	a5,a5,48
f9000a44:	00f40023          	sb	a5,0(s0)
            val = val / 10;
f9000a48:	02e4c4b3          	div	s1,s1,a4
            *(p++) = '0' + val % 10;
f9000a4c:	00140413          	addi	s0,s0,1
        while (val || p == buffer) {
f9000a50:	fe0494e3          	bnez	s1,f9000a38 <bsp_printf_d+0x30>
f9000a54:	00010793          	mv	a5,sp
f9000a58:	fef400e3          	beq	s0,a5,f9000a38 <bsp_printf_d+0x30>
f9000a5c:	0100006f          	j	f9000a6c <bsp_printf_d+0x64>
            bsp_printf_c(*(--p));
f9000a60:	fff40413          	addi	s0,s0,-1
f9000a64:	00044503          	lbu	a0,0(s0)
f9000a68:	f49ff0ef          	jal	ra,f90009b0 <bsp_printf_c>
        while (p != buffer)
f9000a6c:	00010793          	mv	a5,sp
f9000a70:	fef418e3          	bne	s0,a5,f9000a60 <bsp_printf_d+0x58>
    }
f9000a74:	02c12083          	lw	ra,44(sp)
f9000a78:	02812403          	lw	s0,40(sp)
f9000a7c:	02412483          	lw	s1,36(sp)
f9000a80:	03010113          	addi	sp,sp,48
f9000a84:	00008067          	ret

f9000a88 <bsp_printf_x>:
    {
f9000a88:	ff010113          	addi	sp,sp,-16
f9000a8c:	00112623          	sw	ra,12(sp)
    	for(i=0;i<8;i++)
f9000a90:	00000713          	li	a4,0
f9000a94:	00700793          	li	a5,7
f9000a98:	02e7c063          	blt	a5,a4,f9000ab8 <bsp_printf_x+0x30>
    		if((val & (0xFFFFFFF0 <<(4*i))) == 0)
f9000a9c:	00271693          	slli	a3,a4,0x2
f9000aa0:	ff000793          	li	a5,-16
f9000aa4:	00d797b3          	sll	a5,a5,a3
f9000aa8:	00f577b3          	and	a5,a0,a5
f9000aac:	00078663          	beqz	a5,f9000ab8 <bsp_printf_x+0x30>
    	for(i=0;i<8;i++)
f9000ab0:	00170713          	addi	a4,a4,1
f9000ab4:	fe1ff06f          	j	f9000a94 <bsp_printf_x+0xc>
    	bsp_printHex(val);
f9000ab8:	e51ff0ef          	jal	ra,f9000908 <bsp_printHex>
    }
f9000abc:	00c12083          	lw	ra,12(sp)
f9000ac0:	01010113          	addi	sp,sp,16
f9000ac4:	00008067          	ret

f9000ac8 <bsp_printf>:
    {
f9000ac8:	fc010113          	addi	sp,sp,-64
f9000acc:	00112e23          	sw	ra,28(sp)
f9000ad0:	00812c23          	sw	s0,24(sp)
f9000ad4:	00912a23          	sw	s1,20(sp)
f9000ad8:	00050493          	mv	s1,a0
f9000adc:	02b12223          	sw	a1,36(sp)
f9000ae0:	02c12423          	sw	a2,40(sp)
f9000ae4:	02d12623          	sw	a3,44(sp)
f9000ae8:	02e12823          	sw	a4,48(sp)
f9000aec:	02f12a23          	sw	a5,52(sp)
f9000af0:	03012c23          	sw	a6,56(sp)
f9000af4:	03112e23          	sw	a7,60(sp)
        va_start(ap, format);
f9000af8:	02410793          	addi	a5,sp,36
f9000afc:	00f12623          	sw	a5,12(sp)
        for (i = 0; format[i]; i++)
f9000b00:	00000413          	li	s0,0
f9000b04:	01c0006f          	j	f9000b20 <bsp_printf+0x58>
                        bsp_printf_c(va_arg(ap,int));
f9000b08:	00c12783          	lw	a5,12(sp)
f9000b0c:	00478713          	addi	a4,a5,4
f9000b10:	00e12623          	sw	a4,12(sp)
f9000b14:	0007a503          	lw	a0,0(a5)
f9000b18:	e99ff0ef          	jal	ra,f90009b0 <bsp_printf_c>
        for (i = 0; format[i]; i++)
f9000b1c:	00140413          	addi	s0,s0,1
f9000b20:	008487b3          	add	a5,s1,s0
f9000b24:	0007c503          	lbu	a0,0(a5)
f9000b28:	08050663          	beqz	a0,f9000bb4 <bsp_printf+0xec>
            if (format[i] == '%') {
f9000b2c:	02500793          	li	a5,37
f9000b30:	02f50e63          	beq	a0,a5,f9000b6c <bsp_printf+0xa4>
                bsp_printf_c(format[i]);
f9000b34:	e7dff0ef          	jal	ra,f90009b0 <bsp_printf_c>
f9000b38:	fe5ff06f          	j	f9000b1c <bsp_printf+0x54>
                        bsp_printf_s(va_arg(ap,char*));
f9000b3c:	00c12783          	lw	a5,12(sp)
f9000b40:	00478713          	addi	a4,a5,4
f9000b44:	00e12623          	sw	a4,12(sp)
f9000b48:	0007a503          	lw	a0,0(a5)
f9000b4c:	e85ff0ef          	jal	ra,f90009d0 <bsp_printf_s>
                        break;
f9000b50:	fcdff06f          	j	f9000b1c <bsp_printf+0x54>
                        bsp_printf_d(va_arg(ap,int));
f9000b54:	00c12783          	lw	a5,12(sp)
f9000b58:	00478713          	addi	a4,a5,4
f9000b5c:	00e12623          	sw	a4,12(sp)
f9000b60:	0007a503          	lw	a0,0(a5)
f9000b64:	ea5ff0ef          	jal	ra,f9000a08 <bsp_printf_d>
                        break;
f9000b68:	fb5ff06f          	j	f9000b1c <bsp_printf+0x54>
                while (format[++i]) {
f9000b6c:	00140413          	addi	s0,s0,1
f9000b70:	008487b3          	add	a5,s1,s0
f9000b74:	0007c783          	lbu	a5,0(a5)
f9000b78:	fa0782e3          	beqz	a5,f9000b1c <bsp_printf+0x54>
                    if (format[i] == 'c') {
f9000b7c:	06300713          	li	a4,99
f9000b80:	f8e784e3          	beq	a5,a4,f9000b08 <bsp_printf+0x40>
                    if (format[i] == 's') {
f9000b84:	07300713          	li	a4,115
f9000b88:	fae78ae3          	beq	a5,a4,f9000b3c <bsp_printf+0x74>
                    if (format[i] == 'd') {
f9000b8c:	06400713          	li	a4,100
f9000b90:	fce782e3          	beq	a5,a4,f9000b54 <bsp_printf+0x8c>
                    if (format[i] == 'x') {
f9000b94:	07800713          	li	a4,120
f9000b98:	fce79ae3          	bne	a5,a4,f9000b6c <bsp_printf+0xa4>
    					bsp_printf_x(va_arg(ap,int));
f9000b9c:	00c12783          	lw	a5,12(sp)
f9000ba0:	00478713          	addi	a4,a5,4
f9000ba4:	00e12623          	sw	a4,12(sp)
f9000ba8:	0007a503          	lw	a0,0(a5)
f9000bac:	eddff0ef          	jal	ra,f9000a88 <bsp_printf_x>
    					break;
f9000bb0:	f6dff06f          	j	f9000b1c <bsp_printf+0x54>
    }
f9000bb4:	01c12083          	lw	ra,28(sp)
f9000bb8:	01812403          	lw	s0,24(sp)
f9000bbc:	01412483          	lw	s1,20(sp)
f9000bc0:	04010113          	addi	sp,sp,64
f9000bc4:	00008067          	ret

f9000bc8 <Phy_Rd>:
//#include "mac.h"
#include "tseDemo.h"
#include "compatibility.h"

u32 Phy_Rd(u32 RegAddr)
{
f9000bc8:	ff010113          	addi	sp,sp,-16
f9000bcc:	00112623          	sw	ra,12(sp)
f9000bd0:	00812423          	sw	s0,8(sp)
    u32 Value;
    Reg_Out32((TSEMAC_CSR+0x108), ((PHY_ADDR&0x1f)<<8)|(RegAddr&0x1f));
f9000bd4:	01f57593          	andi	a1,a0,31
f9000bd8:	f8100437          	lui	s0,0xf8100
f9000bdc:	10840513          	addi	a0,s0,264 # f8100108 <__freertos_irq_stack_top+0xff0fdc48>
f9000be0:	408000ef          	jal	ra,f9000fe8 <Reg_Out32>
    Reg_Out32((TSEMAC_CSR+0x104), 0x1);
f9000be4:	00100593          	li	a1,1
f9000be8:	10440513          	addi	a0,s0,260
f9000bec:	3fc000ef          	jal	ra,f9000fe8 <Reg_Out32>
    bsp_uDelay(1000);
f9000bf0:	f8b00637          	lui	a2,0xf8b00
f9000bf4:	02faf5b7          	lui	a1,0x2faf
f9000bf8:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f9000bfc:	3e800513          	li	a0,1000
f9000c00:	cd5ff0ef          	jal	ra,f90008d4 <clint_uDelay>
    Value = Reg_In32(TSEMAC_CSR+0x110);
f9000c04:	11040513          	addi	a0,s0,272
f9000c08:	3e8000ef          	jal	ra,f9000ff0 <Reg_In32>

    return Value;
}
f9000c0c:	00c12083          	lw	ra,12(sp)
f9000c10:	00812403          	lw	s0,8(sp)
f9000c14:	01010113          	addi	sp,sp,16
f9000c18:	00008067          	ret

f9000c1c <Phy_Wr>:
void Phy_Wr(u32 RegAddr,u32 Data)
{
f9000c1c:	ff010113          	addi	sp,sp,-16
f9000c20:	00112623          	sw	ra,12(sp)
f9000c24:	00812423          	sw	s0,8(sp)
f9000c28:	00912223          	sw	s1,4(sp)
f9000c2c:	00058493          	mv	s1,a1
    Reg_Out32((TSEMAC_CSR+0x108), ((PHY_ADDR&0x1f)<<8)|(RegAddr&0x1f));
f9000c30:	01f57593          	andi	a1,a0,31
f9000c34:	f8100437          	lui	s0,0xf8100
f9000c38:	10840513          	addi	a0,s0,264 # f8100108 <__freertos_irq_stack_top+0xff0fdc48>
f9000c3c:	3ac000ef          	jal	ra,f9000fe8 <Reg_Out32>
    Reg_Out32((TSEMAC_CSR+0x10c), Data);
f9000c40:	00048593          	mv	a1,s1
f9000c44:	10c40513          	addi	a0,s0,268
f9000c48:	3a0000ef          	jal	ra,f9000fe8 <Reg_Out32>
    Reg_Out32((TSEMAC_CSR+0x104), 0x2);
f9000c4c:	00200593          	li	a1,2
f9000c50:	10440513          	addi	a0,s0,260
f9000c54:	394000ef          	jal	ra,f9000fe8 <Reg_Out32>
}
f9000c58:	00c12083          	lw	ra,12(sp)
f9000c5c:	00812403          	lw	s0,8(sp)
f9000c60:	00412483          	lw	s1,4(sp)
f9000c64:	01010113          	addi	sp,sp,16
f9000c68:	00008067          	ret

f9000c6c <rtl8211_drv_rddata>:

int rtl8211_drv_rddata(int addr)
{
f9000c6c:	ff010113          	addi	sp,sp,-16
f9000c70:	00112623          	sw	ra,12(sp)
	 return Phy_Rd(addr);
f9000c74:	f55ff0ef          	jal	ra,f9000bc8 <Phy_Rd>
}
f9000c78:	00c12083          	lw	ra,12(sp)
f9000c7c:	01010113          	addi	sp,sp,16
f9000c80:	00008067          	ret

f9000c84 <rtl8211_drv_wrdata>:

void rtl8211_drv_wrdata(int addr ,int data)
{
f9000c84:	ff010113          	addi	sp,sp,-16
f9000c88:	00112623          	sw	ra,12(sp)
	 Phy_Wr(addr,data);
f9000c8c:	f91ff0ef          	jal	ra,f9000c1c <Phy_Wr>
	 bsp_uDelay(100);
f9000c90:	f8b00637          	lui	a2,0xf8b00
f9000c94:	02faf5b7          	lui	a1,0x2faf
f9000c98:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f9000c9c:	06400513          	li	a0,100
f9000ca0:	c35ff0ef          	jal	ra,f90008d4 <clint_uDelay>
}
f9000ca4:	00c12083          	lw	ra,12(sp)
f9000ca8:	01010113          	addi	sp,sp,16
f9000cac:	00008067          	ret

f9000cb0 <rtl8211_drv_setpage>:

void rtl8211_drv_setpage(int page)
{
f9000cb0:	ff010113          	addi	sp,sp,-16
f9000cb4:	00112623          	sw	ra,12(sp)
	 Phy_Wr(31,page & 0xFFFF);
f9000cb8:	01051593          	slli	a1,a0,0x10
f9000cbc:	0105d593          	srli	a1,a1,0x10
f9000cc0:	01f00513          	li	a0,31
f9000cc4:	f59ff0ef          	jal	ra,f9000c1c <Phy_Wr>
	 bsp_uDelay(100);
f9000cc8:	f8b00637          	lui	a2,0xf8b00
f9000ccc:	02faf5b7          	lui	a1,0x2faf
f9000cd0:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f9000cd4:	06400513          	li	a0,100
f9000cd8:	bfdff0ef          	jal	ra,f90008d4 <clint_uDelay>
}
f9000cdc:	00c12083          	lw	ra,12(sp)
f9000ce0:	01010113          	addi	sp,sp,16
f9000ce4:	00008067          	ret

f9000ce8 <rtl8211_drv_linkup>:

int rtl8211_drv_linkup(void)
{
f9000ce8:	fe010113          	addi	sp,sp,-32
f9000cec:	00112e23          	sw	ra,28(sp)
f9000cf0:	00812c23          	sw	s0,24(sp)
f9000cf4:	00912a23          	sw	s1,20(sp)
f9000cf8:	01212823          	sw	s2,16(sp)
f9000cfc:	01312623          	sw	s3,12(sp)
f9000d00:	01412423          	sw	s4,8(sp)
f9000d04:	01512223          	sw	s5,4(sp)
	int gbsr=0;
	int phycr1=0;
	int physr=0;
	int speed=Speed_100Mhz;//i change from Speed_1000Mhz

	bmcr=rtl8211_drv_rddata(0);
f9000d08:	00000513          	li	a0,0
f9000d0c:	f61ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000d10:	00050a93          	mv	s5,a0
    anar=rtl8211_drv_rddata(4);
f9000d14:	00400513          	li	a0,4
f9000d18:	f55ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000d1c:	00050a13          	mv	s4,a0
	gbcr=rtl8211_drv_rddata(9);
f9000d20:	00900513          	li	a0,9
f9000d24:	f49ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000d28:	00050993          	mv	s3,a0
	gbsr=rtl8211_drv_rddata(10);
f9000d2c:	00a00513          	li	a0,10
f9000d30:	f3dff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000d34:	00050913          	mv	s2,a0
	phycr1=rtl8211_drv_rddata(24);
f9000d38:	01800513          	li	a0,24
f9000d3c:	f31ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000d40:	00050493          	mv	s1,a0
	physr=rtl8211_drv_rddata(26);
f9000d44:	01a00513          	li	a0,26
f9000d48:	f25ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000d4c:	00050413          	mv	s0,a0

	if(REPORT_REG == 1) {
	  bsp_printf("BMCR: 0x%x", bmcr);
f9000d50:	000a8593          	mv	a1,s5
f9000d54:	f9001537          	lui	a0,0xf9001
f9000d58:	33c50513          	addi	a0,a0,828 # f900133c <__freertos_irq_stack_top+0xffffee7c>
f9000d5c:	d6dff0ef          	jal	ra,f9000ac8 <bsp_printf>
	  bsp_printf("ANAR: 0x%x", anar);
f9000d60:	000a0593          	mv	a1,s4
f9000d64:	f9001537          	lui	a0,0xf9001
f9000d68:	34850513          	addi	a0,a0,840 # f9001348 <__freertos_irq_stack_top+0xffffee88>
f9000d6c:	d5dff0ef          	jal	ra,f9000ac8 <bsp_printf>
	  bsp_printf("GBCR: 0x%x", gbcr);
f9000d70:	00098593          	mv	a1,s3
f9000d74:	f9001537          	lui	a0,0xf9001
f9000d78:	35450513          	addi	a0,a0,852 # f9001354 <__freertos_irq_stack_top+0xffffee94>
f9000d7c:	d4dff0ef          	jal	ra,f9000ac8 <bsp_printf>
	  bsp_printf("GBSR: 0x%x", gbsr);
f9000d80:	00090593          	mv	a1,s2
f9000d84:	f9001537          	lui	a0,0xf9001
f9000d88:	36050513          	addi	a0,a0,864 # f9001360 <__freertos_irq_stack_top+0xffffeea0>
f9000d8c:	d3dff0ef          	jal	ra,f9000ac8 <bsp_printf>
	  bsp_printf("PHYCR1: 0x%x", phycr1);
f9000d90:	00048593          	mv	a1,s1
f9000d94:	f9001537          	lui	a0,0xf9001
f9000d98:	36c50513          	addi	a0,a0,876 # f900136c <__freertos_irq_stack_top+0xffffeeac>
f9000d9c:	d2dff0ef          	jal	ra,f9000ac8 <bsp_printf>
	  bsp_printf("PHYSR: 0x%x", physr);
f9000da0:	00040593          	mv	a1,s0
f9000da4:	f9001537          	lui	a0,0xf9001
f9000da8:	37c50513          	addi	a0,a0,892 # f900137c <__freertos_irq_stack_top+0xffffeebc>
f9000dac:	d1dff0ef          	jal	ra,f9000ac8 <bsp_printf>
	}

	 while(1)
	{
		phy_reg=rtl8211_drv_rddata(26); //Phy_Rd(addr) addr = 26, this is just to read link status
f9000db0:	01a00513          	li	a0,26
f9000db4:	eb9ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>
f9000db8:	00050413          	mv	s0,a0

		if(phy_reg & 0x04)
f9000dbc:	00457793          	andi	a5,a0,4
f9000dc0:	02079063          	bnez	a5,f9000de0 <rtl8211_drv_linkup+0xf8>
			bsp_printf("Linked Up");
			bsp_print("");
			break;
		}

		bsp_uDelay(10000);
f9000dc4:	f8b00637          	lui	a2,0xf8b00
f9000dc8:	02faf5b7          	lui	a1,0x2faf
f9000dcc:	08058593          	addi	a1,a1,128 # 2faf080 <__stack_size+0x2fae080>
f9000dd0:	00002537          	lui	a0,0x2
f9000dd4:	71050513          	addi	a0,a0,1808 # 2710 <__stack_size+0x1710>
f9000dd8:	afdff0ef          	jal	ra,f90008d4 <clint_uDelay>
		phy_reg=rtl8211_drv_rddata(26); //Phy_Rd(addr) addr = 26, this is just to read link status
f9000ddc:	fd5ff06f          	j	f9000db0 <rtl8211_drv_linkup+0xc8>
			bsp_printf("Linked Up");
f9000de0:	f9001537          	lui	a0,0xf9001
f9000de4:	38850513          	addi	a0,a0,904 # f9001388 <__freertos_irq_stack_top+0xffffeec8>
f9000de8:	ce1ff0ef          	jal	ra,f9000ac8 <bsp_printf>
			bsp_print("");
f9000dec:	f9001537          	lui	a0,0xf9001
f9000df0:	2a050513          	addi	a0,a0,672 # f90012a0 <__freertos_irq_stack_top+0xffffede0>
f9000df4:	b85ff0ef          	jal	ra,f9000978 <bsp_print>
	}

	if((phy_reg & 0x30) == 0x20)//check bit 4&5 for speed 1000Mbps, and maybeeeeeeee linked partner mode
f9000df8:	03047793          	andi	a5,s0,48
f9000dfc:	02000713          	li	a4,32
f9000e00:	02e78863          	beq	a5,a4,f9000e30 <rtl8211_drv_linkup+0x148>
			bsp_printf("Link Partner Full duplex 1000 Mbps Reg26 0x%x",phy_reg);
		else
			bsp_printf("Link Partner half duplex 1000 Mbps Reg26 0x%x",phy_reg);
		speed = Speed_1000Mhz;
	}
	else if((phy_reg & 0x30) == 0x10)
f9000e04:	01000713          	li	a4,16
f9000e08:	08e78063          	beq	a5,a4,f9000e88 <rtl8211_drv_linkup+0x1a0>
			bsp_printf("Link Partner Full duplex 100 Mbps Reg26 0x%x",phy_reg);
		else
			bsp_printf("Link Partner half duplex 100 Mbps Reg26 0x%x",phy_reg);
		speed = Speed_100Mhz;
	}
	else if((phy_reg & 0x30) == 0)
f9000e0c:	0c079663          	bnez	a5,f9000ed8 <rtl8211_drv_linkup+0x1f0>
	{
		if(phy_reg & 0x08)
f9000e10:	00847793          	andi	a5,s0,8
f9000e14:	0a078663          	beqz	a5,f9000ec0 <rtl8211_drv_linkup+0x1d8>
			bsp_printf("Link Partner Full duplex 10 Mbps Reg26 0x%x",phy_reg);
f9000e18:	00040593          	mv	a1,s0
f9000e1c:	f9001537          	lui	a0,0xf9001
f9000e20:	45450513          	addi	a0,a0,1108 # f9001454 <__freertos_irq_stack_top+0xffffef94>
f9000e24:	ca5ff0ef          	jal	ra,f9000ac8 <bsp_printf>
		else
			bsp_printf("Link Partner half duplex 10 Mbps Reg26 0x%x",phy_reg);
		speed = Speed_10Mhz;
f9000e28:	00100513          	li	a0,1
f9000e2c:	0200006f          	j	f9000e4c <rtl8211_drv_linkup+0x164>
		if(phy_reg & 0x08)//check if full duplex
f9000e30:	00847793          	andi	a5,s0,8
f9000e34:	02078e63          	beqz	a5,f9000e70 <rtl8211_drv_linkup+0x188>
			bsp_printf("Link Partner Full duplex 1000 Mbps Reg26 0x%x",phy_reg);
f9000e38:	00040593          	mv	a1,s0
f9000e3c:	f9001537          	lui	a0,0xf9001
f9000e40:	39450513          	addi	a0,a0,916 # f9001394 <__freertos_irq_stack_top+0xffffeed4>
f9000e44:	c85ff0ef          	jal	ra,f9000ac8 <bsp_printf>
		speed = Speed_1000Mhz;
f9000e48:	00400513          	li	a0,4
	}

	return speed;
}
f9000e4c:	01c12083          	lw	ra,28(sp)
f9000e50:	01812403          	lw	s0,24(sp)
f9000e54:	01412483          	lw	s1,20(sp)
f9000e58:	01012903          	lw	s2,16(sp)
f9000e5c:	00c12983          	lw	s3,12(sp)
f9000e60:	00812a03          	lw	s4,8(sp)
f9000e64:	00412a83          	lw	s5,4(sp)
f9000e68:	02010113          	addi	sp,sp,32
f9000e6c:	00008067          	ret
			bsp_printf("Link Partner half duplex 1000 Mbps Reg26 0x%x",phy_reg);
f9000e70:	00040593          	mv	a1,s0
f9000e74:	f9001537          	lui	a0,0xf9001
f9000e78:	3c450513          	addi	a0,a0,964 # f90013c4 <__freertos_irq_stack_top+0xffffef04>
f9000e7c:	c4dff0ef          	jal	ra,f9000ac8 <bsp_printf>
		speed = Speed_1000Mhz;
f9000e80:	00400513          	li	a0,4
f9000e84:	fc9ff06f          	j	f9000e4c <rtl8211_drv_linkup+0x164>
		if(phy_reg & 0x08)
f9000e88:	00847793          	andi	a5,s0,8
f9000e8c:	00078e63          	beqz	a5,f9000ea8 <rtl8211_drv_linkup+0x1c0>
			bsp_printf("Link Partner Full duplex 100 Mbps Reg26 0x%x",phy_reg);
f9000e90:	00040593          	mv	a1,s0
f9000e94:	f9001537          	lui	a0,0xf9001
f9000e98:	3f450513          	addi	a0,a0,1012 # f90013f4 <__freertos_irq_stack_top+0xffffef34>
f9000e9c:	c2dff0ef          	jal	ra,f9000ac8 <bsp_printf>
		speed = Speed_100Mhz;
f9000ea0:	00200513          	li	a0,2
f9000ea4:	fa9ff06f          	j	f9000e4c <rtl8211_drv_linkup+0x164>
			bsp_printf("Link Partner half duplex 100 Mbps Reg26 0x%x",phy_reg);
f9000ea8:	00040593          	mv	a1,s0
f9000eac:	f9001537          	lui	a0,0xf9001
f9000eb0:	42450513          	addi	a0,a0,1060 # f9001424 <__freertos_irq_stack_top+0xffffef64>
f9000eb4:	c15ff0ef          	jal	ra,f9000ac8 <bsp_printf>
		speed = Speed_100Mhz;
f9000eb8:	00200513          	li	a0,2
f9000ebc:	f91ff06f          	j	f9000e4c <rtl8211_drv_linkup+0x164>
			bsp_printf("Link Partner half duplex 10 Mbps Reg26 0x%x",phy_reg);
f9000ec0:	00040593          	mv	a1,s0
f9000ec4:	f9001537          	lui	a0,0xf9001
f9000ec8:	48050513          	addi	a0,a0,1152 # f9001480 <__freertos_irq_stack_top+0xffffefc0>
f9000ecc:	bfdff0ef          	jal	ra,f9000ac8 <bsp_printf>
		speed = Speed_10Mhz;
f9000ed0:	00100513          	li	a0,1
f9000ed4:	f79ff06f          	j	f9000e4c <rtl8211_drv_linkup+0x164>
	int speed=Speed_100Mhz;//i change from Speed_1000Mhz
f9000ed8:	00200513          	li	a0,2
	return speed;
f9000edc:	f71ff06f          	j	f9000e4c <rtl8211_drv_linkup+0x164>

f9000ee0 <rtl8211_drv_init>:

void rtl8211_drv_init(void)
{
f9000ee0:	ff010113          	addi	sp,sp,-16
f9000ee4:	00112623          	sw	ra,12(sp)
f9000ee8:	00812423          	sw	s0,8(sp)
f9000eec:	00912223          	sw	s1,4(sp)
	int reg = 0;
	reg=rtl8211_drv_rddata(0);
f9000ef0:	00000513          	li	a0,0
f9000ef4:	d79ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>

	rtl8211_drv_setpage(0);//Phy_Wr(31,page & 0xFFFF);
f9000ef8:	00000513          	li	a0,0
f9000efc:	db5ff0ef          	jal	ra,f9000cb0 <rtl8211_drv_setpage>

	// Enable Auto negotiation and make a PHY reset
	rtl8211_drv_wrdata(0,0x9000); //Phy_Wr(addr,data);
f9000f00:	000095b7          	lui	a1,0x9
f9000f04:	00000513          	li	a0,0
f9000f08:	d7dff0ef          	jal	ra,f9000c84 <rtl8211_drv_wrdata>
	bsp_uDelay(1000*50);
f9000f0c:	f8b00637          	lui	a2,0xf8b00
f9000f10:	02faf4b7          	lui	s1,0x2faf
f9000f14:	08048593          	addi	a1,s1,128 # 2faf080 <__stack_size+0x2fae080>
f9000f18:	0000c437          	lui	s0,0xc
f9000f1c:	35040513          	addi	a0,s0,848 # c350 <__stack_size+0xb350>
f9000f20:	9b5ff0ef          	jal	ra,f90008d4 <clint_uDelay>
	rtl8211_drv_wrdata(0,0x1000);
f9000f24:	000015b7          	lui	a1,0x1
f9000f28:	00000513          	li	a0,0
f9000f2c:	d59ff0ef          	jal	ra,f9000c84 <rtl8211_drv_wrdata>
	bsp_uDelay(1000*50);
f9000f30:	f8b00637          	lui	a2,0xf8b00
f9000f34:	08048593          	addi	a1,s1,128
f9000f38:	35040513          	addi	a0,s0,848
f9000f3c:	999ff0ef          	jal	ra,f90008d4 <clint_uDelay>
	reg=rtl8211_drv_rddata(0);
f9000f40:	00000513          	li	a0,0
f9000f44:	d29ff0ef          	jal	ra,f9000c6c <rtl8211_drv_rddata>

	// Enable Green Ethernet (1000/100 Mbps Mode only)
	rtl8211_drv_setpage(0x0A43);
f9000f48:	000014b7          	lui	s1,0x1
f9000f4c:	a4348513          	addi	a0,s1,-1469 # a43 <CUSTOM1+0xa18>
f9000f50:	d61ff0ef          	jal	ra,f9000cb0 <rtl8211_drv_setpage>
	rtl8211_drv_wrdata(27,0x8011);
f9000f54:	00008437          	lui	s0,0x8
f9000f58:	01140593          	addi	a1,s0,17 # 8011 <__stack_size+0x7011>
f9000f5c:	01b00513          	li	a0,27
f9000f60:	d25ff0ef          	jal	ra,f9000c84 <rtl8211_drv_wrdata>
	rtl8211_drv_wrdata(28,0xD73F);
f9000f64:	0000d5b7          	lui	a1,0xd
f9000f68:	73f58593          	addi	a1,a1,1855 # d73f <__stack_size+0xc73f>
f9000f6c:	01c00513          	li	a0,28
f9000f70:	d15ff0ef          	jal	ra,f9000c84 <rtl8211_drv_wrdata>

	// LCR (LED Control Register)
	// Page 0xd04 Register 16
	// LED0 Link Indication: 1000Mbps & 100Mbps & 10Mbps
	// LED1 Active (TX or RX) Indication
	rtl8211_drv_setpage(0xD04);
f9000f74:	d0448513          	addi	a0,s1,-764
f9000f78:	d39ff0ef          	jal	ra,f9000cb0 <rtl8211_drv_setpage>
	rtl8211_drv_wrdata(0x10,0x820B);
f9000f7c:	20b40593          	addi	a1,s0,523
f9000f80:	01000513          	li	a0,16
f9000f84:	d01ff0ef          	jal	ra,f9000c84 <rtl8211_drv_wrdata>
}
f9000f88:	00c12083          	lw	ra,12(sp)
f9000f8c:	00812403          	lw	s0,8(sp)
f9000f90:	00412483          	lw	s1,4(sp)
f9000f94:	01010113          	addi	sp,sp,16
f9000f98:	00008067          	ret

f9000f9c <uart_writeAvailability>:
f9000f9c:	00452503          	lw	a0,4(a0)
        return (read_u32(reg + UART_STATUS) >> 16) & 0xFF;
f9000fa0:	01055513          	srli	a0,a0,0x10
    }
f9000fa4:	0ff57513          	andi	a0,a0,255
f9000fa8:	00008067          	ret

f9000fac <uart_write>:
    static void uart_write(u32 reg, char data){
f9000fac:	ff010113          	addi	sp,sp,-16
f9000fb0:	00112623          	sw	ra,12(sp)
f9000fb4:	00812423          	sw	s0,8(sp)
f9000fb8:	00912223          	sw	s1,4(sp)
f9000fbc:	00050413          	mv	s0,a0
f9000fc0:	00058493          	mv	s1,a1
        while(uart_writeAvailability(reg) == 0);
f9000fc4:	00040513          	mv	a0,s0
f9000fc8:	fd5ff0ef          	jal	ra,f9000f9c <uart_writeAvailability>
f9000fcc:	fe050ce3          	beqz	a0,f9000fc4 <uart_write+0x18>
        *((volatile u32*) address) = data;
f9000fd0:	00942023          	sw	s1,0(s0)
    }
f9000fd4:	00c12083          	lw	ra,12(sp)
f9000fd8:	00812403          	lw	s0,8(sp)
f9000fdc:	00412483          	lw	s1,4(sp)
f9000fe0:	01010113          	addi	sp,sp,16
f9000fe4:	00008067          	ret

f9000fe8 <Reg_Out32>:
f9000fe8:	00b52023          	sw	a1,0(a0)

/************************** Function File ***************************/
void Reg_Out32(u32 addr,u32 data)
{
    write_u32(data,addr);
}
f9000fec:	00008067          	ret

f9000ff0 <Reg_In32>:
        return *((volatile u32*) address);
f9000ff0:	00052503          	lw	a0,0(a0)

u32 Reg_In32(u32 addr)
{
    return read_u32(addr);
}
f9000ff4:	00008067          	ret

f9000ff8 <putchar>:
  }
  putchar('\n');
  return 0;
}

int putchar(int c){
f9000ff8:	ff010113          	addi	sp,sp,-16
f9000ffc:	00112623          	sw	ra,12(sp)
f9001000:	00812423          	sw	s0,8(sp)
f9001004:	00050413          	mv	s0,a0
    bsp_putChar(c);
f9001008:	0ff57593          	andi	a1,a0,255
f900100c:	f8010537          	lui	a0,0xf8010
f9001010:	f9dff0ef          	jal	ra,f9000fac <uart_write>
    return c;
}
f9001014:	00040513          	mv	a0,s0
f9001018:	00c12083          	lw	ra,12(sp)
f900101c:	00812403          	lw	s0,8(sp)
f9001020:	01010113          	addi	sp,sp,16
f9001024:	00008067          	ret

f9001028 <bsp_puts>:
int bsp_puts(char *s){
f9001028:	ff010113          	addi	sp,sp,-16
f900102c:	00112623          	sw	ra,12(sp)
f9001030:	00812423          	sw	s0,8(sp)
f9001034:	00050413          	mv	s0,a0
  while (*s) {
f9001038:	00044503          	lbu	a0,0(s0)
f900103c:	00050863          	beqz	a0,f900104c <bsp_puts+0x24>
    putchar(*s);
f9001040:	fb9ff0ef          	jal	ra,f9000ff8 <putchar>
    s++;
f9001044:	00140413          	addi	s0,s0,1
f9001048:	ff1ff06f          	j	f9001038 <bsp_puts+0x10>
  putchar('\n');
f900104c:	00a00513          	li	a0,10
f9001050:	fa9ff0ef          	jal	ra,f9000ff8 <putchar>
}
f9001054:	00000513          	li	a0,0
f9001058:	00c12083          	lw	ra,12(sp)
f900105c:	00812403          	lw	s0,8(sp)
f9001060:	01010113          	addi	sp,sp,16
f9001064:	00008067          	ret

f9001068 <print_hex>:

void print_hex(uint32_t val, uint32_t digits)
{
f9001068:	ff010113          	addi	sp,sp,-16
f900106c:	00112623          	sw	ra,12(sp)
f9001070:	00812423          	sw	s0,8(sp)
f9001074:	00912223          	sw	s1,4(sp)
f9001078:	00050493          	mv	s1,a0
	for (int i = (4*digits)-4; i >= 0; i -= 4)
f900107c:	40000437          	lui	s0,0x40000
f9001080:	fff40413          	addi	s0,s0,-1 # 3fffffff <__stack_size+0x3fffefff>
f9001084:	00858433          	add	s0,a1,s0
f9001088:	00241413          	slli	s0,s0,0x2
f900108c:	02044663          	bltz	s0,f90010b8 <print_hex+0x50>
		uart_write(BSP_UART_TERMINAL, "0123456789ABCDEF"[(val >> i) % 16]);
f9001090:	0084d7b3          	srl	a5,s1,s0
f9001094:	00f7f713          	andi	a4,a5,15
f9001098:	f90017b7          	lui	a5,0xf9001
f900109c:	0cc78793          	addi	a5,a5,204 # f90010cc <__freertos_irq_stack_top+0xffffec0c>
f90010a0:	00e787b3          	add	a5,a5,a4
f90010a4:	0007c583          	lbu	a1,0(a5)
f90010a8:	f8010537          	lui	a0,0xf8010
f90010ac:	f01ff0ef          	jal	ra,f9000fac <uart_write>
	for (int i = (4*digits)-4; i >= 0; i -= 4)
f90010b0:	ffc40413          	addi	s0,s0,-4
f90010b4:	fd9ff06f          	j	f900108c <print_hex+0x24>
}
f90010b8:	00c12083          	lw	ra,12(sp)
f90010bc:	00812403          	lw	s0,8(sp)
f90010c0:	00412483          	lw	s1,4(sp)
f90010c4:	01010113          	addi	sp,sp,16
f90010c8:	00008067          	ret
