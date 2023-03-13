
lunch_scanner.elf:     file format elf32-littlearm


Disassembly of section .text:

10000000 <_user_entry>:
10000000:	4813      	ldr	r0, [pc, #76]	; (10000050 <_upgrade_data_end+0x30>)
10000002:	4914      	ldr	r1, [pc, #80]	; (10000054 <_upgrade_data_end+0x34>)
10000004:	4a14      	ldr	r2, [pc, #80]	; (10000058 <_upgrade_data_end+0x38>)
10000006:	4b15      	ldr	r3, [pc, #84]	; (1000005c <_upgrade_data_end+0x3c>)
10000008:	1a9b      	subs	r3, r3, r2
1000000a:	c00e      	stmia	r0!, {r1, r2, r3}
1000000c:	3814      	subs	r0, #20
1000000e:	e007      	b.n	10000020 <_upgrade_data_end>

10000010 <_upgrade_data>:
10000010:	525355fe 	.word	0x525355fe
10000014:	10000000 	.word	0x10000000
10000018:	ffffffff 	.word	0xffffffff
1000001c:	ffffffff 	.word	0xffffffff

10000020 <_upgrade_data_end>:
10000020:	2180      	movs	r1, #128	; 0x80
10000022:	0609      	lsls	r1, r1, #24
10000024:	6001      	str	r1, [r0, #0]
10000026:	2100      	movs	r1, #0
10000028:	6001      	str	r1, [r0, #0]
1000002a:	2300      	movs	r3, #0
1000002c:	6043      	str	r3, [r0, #4]
1000002e:	490c      	ldr	r1, [pc, #48]	; (10000060 <_upgrade_data_end+0x40>)
10000030:	60c1      	str	r1, [r0, #12]
10000032:	4a0c      	ldr	r2, [pc, #48]	; (10000064 <_upgrade_data_end+0x44>)
10000034:	1a52      	subs	r2, r2, r1
10000036:	6102      	str	r2, [r0, #16]
10000038:	490b      	ldr	r1, [pc, #44]	; (10000068 <_upgrade_data_end+0x48>)
1000003a:	6001      	str	r1, [r0, #0]
1000003c:	6003      	str	r3, [r0, #0]
1000003e:	b500      	push	{lr}
10000040:	f009 f8ae 	bl	100091a0 <__libc_init_array>
10000044:	bc01      	pop	{r0}
10000046:	4686      	mov	lr, r0
10000048:	2000      	movs	r0, #0
1000004a:	2100      	movs	r1, #0
1000004c:	4b07      	ldr	r3, [pc, #28]	; (1000006c <_upgrade_data_end+0x4c>)
1000004e:	4718      	bx	r3
10000050:	70000008 	.word	0x70000008
10000054:	1000b850 	.word	0x1000b850
10000058:	20014000 	.word	0x20014000
1000005c:	20014d54 	.word	0x20014d54
10000060:	20014d58 	.word	0x20014d58
10000064:	20015218 	.word	0x20015218
10000068:	80000001 	.word	0x80000001
1000006c:	10002c55 	.word	0x10002c55

10000070 <_init>:
10000070:	4770      	bx	lr
	...

10000074 <try_parse_lunch_data>:
10000074:	b5f0      	push	{r4, r5, r6, r7, lr}
10000076:	2400      	movs	r4, #0
10000078:	b08b      	sub	sp, #44	; 0x2c
1000007a:	af02      	add	r7, sp, #8
1000007c:	60b8      	str	r0, [r7, #8]
1000007e:	6039      	str	r1, [r7, #0]
10000080:	607a      	str	r2, [r7, #4]
10000082:	683b      	ldr	r3, [r7, #0]
10000084:	429c      	cmp	r4, r3
10000086:	da0c      	bge.n	100000a2 <try_parse_lunch_data+0x2e>
10000088:	68ba      	ldr	r2, [r7, #8]
1000008a:	68bb      	ldr	r3, [r7, #8]
1000008c:	5d12      	ldrb	r2, [r2, r4]
1000008e:	191b      	adds	r3, r3, r4
10000090:	60fa      	str	r2, [r7, #12]
10000092:	68f9      	ldr	r1, [r7, #12]
10000094:	785a      	ldrb	r2, [r3, #1]
10000096:	2900      	cmp	r1, #0
10000098:	d105      	bne.n	100000a6 <try_parse_lunch_data+0x32>
1000009a:	492b      	ldr	r1, [pc, #172]	; (10000148 <try_parse_lunch_data+0xd4>)
1000009c:	482b      	ldr	r0, [pc, #172]	; (1000014c <try_parse_lunch_data+0xd8>)
1000009e:	4b2c      	ldr	r3, [pc, #176]	; (10000150 <try_parse_lunch_data+0xdc>)
100000a0:	4798      	blx	r3
100000a2:	2002      	movs	r0, #2
100000a4:	e025      	b.n	100000f2 <try_parse_lunch_data+0x7e>
100000a6:	2a2a      	cmp	r2, #42	; 0x2a
100000a8:	d12b      	bne.n	10000102 <try_parse_lunch_data+0x8e>
100000aa:	466e      	mov	r6, sp
100000ac:	68fb      	ldr	r3, [r7, #12]
100000ae:	1ca1      	adds	r1, r4, #2
100000b0:	1e5a      	subs	r2, r3, #1
100000b2:	3306      	adds	r3, #6
100000b4:	08db      	lsrs	r3, r3, #3
100000b6:	00db      	lsls	r3, r3, #3
100000b8:	1af3      	subs	r3, r6, r3
100000ba:	469d      	mov	sp, r3
100000bc:	68bb      	ldr	r3, [r7, #8]
100000be:	ad02      	add	r5, sp, #8
100000c0:	1859      	adds	r1, r3, r1
100000c2:	0028      	movs	r0, r5
100000c4:	4b23      	ldr	r3, [pc, #140]	; (10000154 <try_parse_lunch_data+0xe0>)
100000c6:	4798      	blx	r3
100000c8:	782b      	ldrb	r3, [r5, #0]
100000ca:	2bf5      	cmp	r3, #245	; 0xf5
100000cc:	d114      	bne.n	100000f8 <try_parse_lunch_data+0x84>
100000ce:	786b      	ldrb	r3, [r5, #1]
100000d0:	2b2a      	cmp	r3, #42	; 0x2a
100000d2:	d111      	bne.n	100000f8 <try_parse_lunch_data+0x84>
100000d4:	210a      	movs	r1, #10
100000d6:	2206      	movs	r2, #6
100000d8:	4469      	add	r1, sp
100000da:	4b1e      	ldr	r3, [pc, #120]	; (10000154 <try_parse_lunch_data+0xe0>)
100000dc:	6878      	ldr	r0, [r7, #4]
100000de:	4798      	blx	r3
100000e0:	0029      	movs	r1, r5
100000e2:	6878      	ldr	r0, [r7, #4]
100000e4:	220a      	movs	r2, #10
100000e6:	4b1b      	ldr	r3, [pc, #108]	; (10000154 <try_parse_lunch_data+0xe0>)
100000e8:	3006      	adds	r0, #6
100000ea:	3108      	adds	r1, #8
100000ec:	4798      	blx	r3
100000ee:	2000      	movs	r0, #0
100000f0:	46b5      	mov	sp, r6
100000f2:	46bd      	mov	sp, r7
100000f4:	b009      	add	sp, #36	; 0x24
100000f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
100000f8:	46b5      	mov	sp, r6
100000fa:	68fb      	ldr	r3, [r7, #12]
100000fc:	3301      	adds	r3, #1
100000fe:	18e4      	adds	r4, r4, r3
10000100:	e7bf      	b.n	10000082 <try_parse_lunch_data+0xe>
10000102:	2aff      	cmp	r2, #255	; 0xff
10000104:	d1f9      	bne.n	100000fa <try_parse_lunch_data+0x86>
10000106:	250b      	movs	r5, #11
10000108:	001c      	movs	r4, r3
1000010a:	789b      	ldrb	r3, [r3, #2]
1000010c:	435d      	muls	r5, r3
1000010e:	1965      	adds	r5, r4, r5
10000110:	42ac      	cmp	r4, r5
10000112:	d101      	bne.n	10000118 <try_parse_lunch_data+0xa4>
10000114:	2001      	movs	r0, #1
10000116:	e7ec      	b.n	100000f2 <try_parse_lunch_data+0x7e>
10000118:	2310      	movs	r3, #16
1000011a:	2603      	movs	r6, #3
1000011c:	2206      	movs	r2, #6
1000011e:	2100      	movs	r1, #0
10000120:	18f8      	adds	r0, r7, r3
10000122:	4b0d      	ldr	r3, [pc, #52]	; (10000158 <try_parse_lunch_data+0xe4>)
10000124:	57a6      	ldrsb	r6, [r4, r6]
10000126:	4798      	blx	r3
10000128:	2316      	movs	r3, #22
1000012a:	1d21      	adds	r1, r4, #4
1000012c:	220a      	movs	r2, #10
1000012e:	18f8      	adds	r0, r7, r3
10000130:	4b08      	ldr	r3, [pc, #32]	; (10000154 <try_parse_lunch_data+0xe0>)
10000132:	4798      	blx	r3
10000134:	9600      	str	r6, [sp, #0]
10000136:	6938      	ldr	r0, [r7, #16]
10000138:	6979      	ldr	r1, [r7, #20]
1000013a:	69ba      	ldr	r2, [r7, #24]
1000013c:	69fb      	ldr	r3, [r7, #28]
1000013e:	4e07      	ldr	r6, [pc, #28]	; (1000015c <try_parse_lunch_data+0xe8>)
10000140:	47b0      	blx	r6
10000142:	340b      	adds	r4, #11
10000144:	e7e4      	b.n	10000110 <try_parse_lunch_data+0x9c>
10000146:	46c0      	nop			; (mov r8, r8)
10000148:	10009283 	.word	0x10009283
1000014c:	10009258 	.word	0x10009258
10000150:	000066b1 	.word	0x000066b1
10000154:	00005821 	.word	0x00005821
10000158:	00005859 	.word	0x00005859
1000015c:	10000765 	.word	0x10000765

10000160 <print_bd_addr>:
10000160:	4770      	bx	lr

10000162 <matches_bd_vendor>:
10000162:	7942      	ldrb	r2, [r0, #5]
10000164:	0003      	movs	r3, r0
10000166:	2000      	movs	r0, #0
10000168:	2a7c      	cmp	r2, #124	; 0x7c
1000016a:	d106      	bne.n	1000017a <matches_bd_vendor+0x18>
1000016c:	791a      	ldrb	r2, [r3, #4]
1000016e:	2a69      	cmp	r2, #105	; 0x69
10000170:	d103      	bne.n	1000017a <matches_bd_vendor+0x18>
10000172:	78d8      	ldrb	r0, [r3, #3]
10000174:	386b      	subs	r0, #107	; 0x6b
10000176:	4243      	negs	r3, r0
10000178:	4158      	adcs	r0, r3
1000017a:	4770      	bx	lr

1000017c <kh_resize_check_in>:
1000017c:	b5f0      	push	{r4, r5, r6, r7, lr}
1000017e:	231f      	movs	r3, #31
10000180:	0004      	movs	r4, r0
10000182:	4a51      	ldr	r2, [pc, #324]	; (100002c8 <kh_resize_check_in+0x14c>)
10000184:	b087      	sub	sp, #28
10000186:	0098      	lsls	r0, r3, #2
10000188:	5810      	ldr	r0, [r2, r0]
1000018a:	4288      	cmp	r0, r1
1000018c:	d83f      	bhi.n	1000020e <kh_resize_check_in+0x92>
1000018e:	3301      	adds	r3, #1
10000190:	009b      	lsls	r3, r3, #2
10000192:	589d      	ldr	r5, [r3, r2]
10000194:	4b4d      	ldr	r3, [pc, #308]	; (100002cc <kh_resize_check_in+0x150>)
10000196:	0028      	movs	r0, r5
10000198:	4798      	blx	r3
1000019a:	4a4d      	ldr	r2, [pc, #308]	; (100002d0 <kh_resize_check_in+0x154>)
1000019c:	4b4d      	ldr	r3, [pc, #308]	; (100002d4 <kh_resize_check_in+0x158>)
1000019e:	4e4e      	ldr	r6, [pc, #312]	; (100002d8 <kh_resize_check_in+0x15c>)
100001a0:	47b0      	blx	r6
100001a2:	2200      	movs	r2, #0
100001a4:	4b4d      	ldr	r3, [pc, #308]	; (100002dc <kh_resize_check_in+0x160>)
100001a6:	4e4e      	ldr	r6, [pc, #312]	; (100002e0 <kh_resize_check_in+0x164>)
100001a8:	47b0      	blx	r6
100001aa:	4b4e      	ldr	r3, [pc, #312]	; (100002e4 <kh_resize_check_in+0x168>)
100001ac:	4798      	blx	r3
100001ae:	6863      	ldr	r3, [r4, #4]
100001b0:	9004      	str	r0, [sp, #16]
100001b2:	4283      	cmp	r3, r0
100001b4:	d229      	bcs.n	1000020a <kh_resize_check_in+0x8e>
100001b6:	092e      	lsrs	r6, r5, #4
100001b8:	3601      	adds	r6, #1
100001ba:	00b6      	lsls	r6, r6, #2
100001bc:	4b4a      	ldr	r3, [pc, #296]	; (100002e8 <kh_resize_check_in+0x16c>)
100001be:	0030      	movs	r0, r6
100001c0:	4798      	blx	r3
100001c2:	4b4a      	ldr	r3, [pc, #296]	; (100002ec <kh_resize_check_in+0x170>)
100001c4:	0032      	movs	r2, r6
100001c6:	21aa      	movs	r1, #170	; 0xaa
100001c8:	9003      	str	r0, [sp, #12]
100001ca:	4798      	blx	r3
100001cc:	6823      	ldr	r3, [r4, #0]
100001ce:	42ab      	cmp	r3, r5
100001d0:	d204      	bcs.n	100001dc <kh_resize_check_in+0x60>
100001d2:	6960      	ldr	r0, [r4, #20]
100001d4:	4b46      	ldr	r3, [pc, #280]	; (100002f0 <kh_resize_check_in+0x174>)
100001d6:	00a9      	lsls	r1, r5, #2
100001d8:	4798      	blx	r3
100001da:	6160      	str	r0, [r4, #20]
100001dc:	2300      	movs	r3, #0
100001de:	9301      	str	r3, [sp, #4]
100001e0:	9b01      	ldr	r3, [sp, #4]
100001e2:	6822      	ldr	r2, [r4, #0]
100001e4:	4293      	cmp	r3, r2
100001e6:	d114      	bne.n	10000212 <kh_resize_check_in+0x96>
100001e8:	42ab      	cmp	r3, r5
100001ea:	d904      	bls.n	100001f6 <kh_resize_check_in+0x7a>
100001ec:	6960      	ldr	r0, [r4, #20]
100001ee:	4b40      	ldr	r3, [pc, #256]	; (100002f0 <kh_resize_check_in+0x174>)
100001f0:	00a9      	lsls	r1, r5, #2
100001f2:	4798      	blx	r3
100001f4:	6160      	str	r0, [r4, #20]
100001f6:	4b3f      	ldr	r3, [pc, #252]	; (100002f4 <kh_resize_check_in+0x178>)
100001f8:	6920      	ldr	r0, [r4, #16]
100001fa:	4798      	blx	r3
100001fc:	9b03      	ldr	r3, [sp, #12]
100001fe:	6025      	str	r5, [r4, #0]
10000200:	6123      	str	r3, [r4, #16]
10000202:	6863      	ldr	r3, [r4, #4]
10000204:	60a3      	str	r3, [r4, #8]
10000206:	9b04      	ldr	r3, [sp, #16]
10000208:	60e3      	str	r3, [r4, #12]
1000020a:	b007      	add	sp, #28
1000020c:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000020e:	3b01      	subs	r3, #1
10000210:	e7b9      	b.n	10000186 <kh_resize_check_in+0xa>
10000212:	201e      	movs	r0, #30
10000214:	9b01      	ldr	r3, [sp, #4]
10000216:	6922      	ldr	r2, [r4, #16]
10000218:	091b      	lsrs	r3, r3, #4
1000021a:	009b      	lsls	r3, r3, #2
1000021c:	18d3      	adds	r3, r2, r3
1000021e:	9a01      	ldr	r2, [sp, #4]
10000220:	6819      	ldr	r1, [r3, #0]
10000222:	0052      	lsls	r2, r2, #1
10000224:	4002      	ands	r2, r0
10000226:	0008      	movs	r0, r1
10000228:	2603      	movs	r6, #3
1000022a:	40d0      	lsrs	r0, r2
1000022c:	4230      	tst	r0, r6
1000022e:	d147      	bne.n	100002c0 <kh_resize_check_in+0x144>
10000230:	9801      	ldr	r0, [sp, #4]
10000232:	6966      	ldr	r6, [r4, #20]
10000234:	0080      	lsls	r0, r0, #2
10000236:	5980      	ldr	r0, [r0, r6]
10000238:	9002      	str	r0, [sp, #8]
1000023a:	2001      	movs	r0, #1
1000023c:	4090      	lsls	r0, r2
1000023e:	0002      	movs	r2, r0
10000240:	430a      	orrs	r2, r1
10000242:	601a      	str	r2, [r3, #0]
10000244:	4f2c      	ldr	r7, [pc, #176]	; (100002f8 <kh_resize_check_in+0x17c>)
10000246:	0029      	movs	r1, r5
10000248:	9802      	ldr	r0, [sp, #8]
1000024a:	47b8      	blx	r7
1000024c:	9802      	ldr	r0, [sp, #8]
1000024e:	000e      	movs	r6, r1
10000250:	1e69      	subs	r1, r5, #1
10000252:	47b8      	blx	r7
10000254:	1c4b      	adds	r3, r1, #1
10000256:	469c      	mov	ip, r3
10000258:	271e      	movs	r7, #30
1000025a:	9b03      	ldr	r3, [sp, #12]
1000025c:	0932      	lsrs	r2, r6, #4
1000025e:	0092      	lsls	r2, r2, #2
10000260:	1898      	adds	r0, r3, r2
10000262:	6803      	ldr	r3, [r0, #0]
10000264:	2102      	movs	r1, #2
10000266:	9305      	str	r3, [sp, #20]
10000268:	0073      	lsls	r3, r6, #1
1000026a:	403b      	ands	r3, r7
1000026c:	9f05      	ldr	r7, [sp, #20]
1000026e:	40df      	lsrs	r7, r3
10000270:	420f      	tst	r7, r1
10000272:	d01d      	beq.n	100002b0 <kh_resize_check_in+0x134>
10000274:	000f      	movs	r7, r1
10000276:	409f      	lsls	r7, r3
10000278:	9905      	ldr	r1, [sp, #20]
1000027a:	43b9      	bics	r1, r7
1000027c:	6001      	str	r1, [r0, #0]
1000027e:	6821      	ldr	r1, [r4, #0]
10000280:	00b7      	lsls	r7, r6, #2
10000282:	42b1      	cmp	r1, r6
10000284:	d919      	bls.n	100002ba <kh_resize_check_in+0x13e>
10000286:	6920      	ldr	r0, [r4, #16]
10000288:	2603      	movs	r6, #3
1000028a:	5880      	ldr	r0, [r0, r2]
1000028c:	6961      	ldr	r1, [r4, #20]
1000028e:	40d8      	lsrs	r0, r3
10000290:	19c9      	adds	r1, r1, r7
10000292:	4230      	tst	r0, r6
10000294:	d111      	bne.n	100002ba <kh_resize_check_in+0x13e>
10000296:	9e02      	ldr	r6, [sp, #8]
10000298:	6808      	ldr	r0, [r1, #0]
1000029a:	600e      	str	r6, [r1, #0]
1000029c:	6921      	ldr	r1, [r4, #16]
1000029e:	9002      	str	r0, [sp, #8]
100002a0:	188a      	adds	r2, r1, r2
100002a2:	2101      	movs	r1, #1
100002a4:	4099      	lsls	r1, r3
100002a6:	000b      	movs	r3, r1
100002a8:	6811      	ldr	r1, [r2, #0]
100002aa:	430b      	orrs	r3, r1
100002ac:	6013      	str	r3, [r2, #0]
100002ae:	e7c9      	b.n	10000244 <kh_resize_check_in+0xc8>
100002b0:	4466      	add	r6, ip
100002b2:	42ae      	cmp	r6, r5
100002b4:	d3d0      	bcc.n	10000258 <kh_resize_check_in+0xdc>
100002b6:	1b76      	subs	r6, r6, r5
100002b8:	e7ce      	b.n	10000258 <kh_resize_check_in+0xdc>
100002ba:	6963      	ldr	r3, [r4, #20]
100002bc:	9a02      	ldr	r2, [sp, #8]
100002be:	51da      	str	r2, [r3, r7]
100002c0:	9b01      	ldr	r3, [sp, #4]
100002c2:	3301      	adds	r3, #1
100002c4:	e78b      	b.n	100001de <kh_resize_check_in+0x62>
100002c6:	46c0      	nop			; (mov r8, r8)
100002c8:	10009410 	.word	0x10009410
100002cc:	0003ae69 	.word	0x0003ae69
100002d0:	0a3d70a4 	.word	0x0a3d70a4
100002d4:	3fe8a3d7 	.word	0x3fe8a3d7
100002d8:	0003a211 	.word	0x0003a211
100002dc:	3fe00000 	.word	0x3fe00000
100002e0:	00039389 	.word	0x00039389
100002e4:	0003c255 	.word	0x0003c255
100002e8:	0002f615 	.word	0x0002f615
100002ec:	00005859 	.word	0x00005859
100002f0:	0002fe0d 	.word	0x0002fe0d
100002f4:	0002f629 	.word	0x0002f629
100002f8:	0002ee49 	.word	0x0002ee49

100002fc <kh_resize_rssi>:
100002fc:	b5f0      	push	{r4, r5, r6, r7, lr}
100002fe:	231f      	movs	r3, #31
10000300:	0004      	movs	r4, r0
10000302:	4a76      	ldr	r2, [pc, #472]	; (100004dc <kh_resize_rssi+0x1e0>)
10000304:	b095      	sub	sp, #84	; 0x54
10000306:	0098      	lsls	r0, r3, #2
10000308:	5810      	ldr	r0, [r2, r0]
1000030a:	4288      	cmp	r0, r1
1000030c:	d849      	bhi.n	100003a2 <kh_resize_rssi+0xa6>
1000030e:	3301      	adds	r3, #1
10000310:	009b      	lsls	r3, r3, #2
10000312:	589d      	ldr	r5, [r3, r2]
10000314:	4b72      	ldr	r3, [pc, #456]	; (100004e0 <kh_resize_rssi+0x1e4>)
10000316:	0028      	movs	r0, r5
10000318:	4798      	blx	r3
1000031a:	4a72      	ldr	r2, [pc, #456]	; (100004e4 <kh_resize_rssi+0x1e8>)
1000031c:	4b72      	ldr	r3, [pc, #456]	; (100004e8 <kh_resize_rssi+0x1ec>)
1000031e:	4e73      	ldr	r6, [pc, #460]	; (100004ec <kh_resize_rssi+0x1f0>)
10000320:	47b0      	blx	r6
10000322:	2200      	movs	r2, #0
10000324:	4b72      	ldr	r3, [pc, #456]	; (100004f0 <kh_resize_rssi+0x1f4>)
10000326:	4e73      	ldr	r6, [pc, #460]	; (100004f4 <kh_resize_rssi+0x1f8>)
10000328:	47b0      	blx	r6
1000032a:	4b73      	ldr	r3, [pc, #460]	; (100004f8 <kh_resize_rssi+0x1fc>)
1000032c:	4798      	blx	r3
1000032e:	6863      	ldr	r3, [r4, #4]
10000330:	9004      	str	r0, [sp, #16]
10000332:	4283      	cmp	r3, r0
10000334:	d233      	bcs.n	1000039e <kh_resize_rssi+0xa2>
10000336:	092e      	lsrs	r6, r5, #4
10000338:	3601      	adds	r6, #1
1000033a:	00b6      	lsls	r6, r6, #2
1000033c:	4b6f      	ldr	r3, [pc, #444]	; (100004fc <kh_resize_rssi+0x200>)
1000033e:	0030      	movs	r0, r6
10000340:	4798      	blx	r3
10000342:	4b6f      	ldr	r3, [pc, #444]	; (10000500 <kh_resize_rssi+0x204>)
10000344:	0032      	movs	r2, r6
10000346:	21aa      	movs	r1, #170	; 0xaa
10000348:	9003      	str	r0, [sp, #12]
1000034a:	4798      	blx	r3
1000034c:	6823      	ldr	r3, [r4, #0]
1000034e:	42ab      	cmp	r3, r5
10000350:	d209      	bcs.n	10000366 <kh_resize_rssi+0x6a>
10000352:	4e6c      	ldr	r6, [pc, #432]	; (10000504 <kh_resize_rssi+0x208>)
10000354:	00a9      	lsls	r1, r5, #2
10000356:	6960      	ldr	r0, [r4, #20]
10000358:	47b0      	blx	r6
1000035a:	211c      	movs	r1, #28
1000035c:	6160      	str	r0, [r4, #20]
1000035e:	4369      	muls	r1, r5
10000360:	69a0      	ldr	r0, [r4, #24]
10000362:	47b0      	blx	r6
10000364:	61a0      	str	r0, [r4, #24]
10000366:	2300      	movs	r3, #0
10000368:	9300      	str	r3, [sp, #0]
1000036a:	9a00      	ldr	r2, [sp, #0]
1000036c:	6823      	ldr	r3, [r4, #0]
1000036e:	4293      	cmp	r3, r2
10000370:	d119      	bne.n	100003a6 <kh_resize_rssi+0xaa>
10000372:	42aa      	cmp	r2, r5
10000374:	d909      	bls.n	1000038a <kh_resize_rssi+0x8e>
10000376:	4e63      	ldr	r6, [pc, #396]	; (10000504 <kh_resize_rssi+0x208>)
10000378:	00a9      	lsls	r1, r5, #2
1000037a:	6960      	ldr	r0, [r4, #20]
1000037c:	47b0      	blx	r6
1000037e:	211c      	movs	r1, #28
10000380:	6160      	str	r0, [r4, #20]
10000382:	4369      	muls	r1, r5
10000384:	69a0      	ldr	r0, [r4, #24]
10000386:	47b0      	blx	r6
10000388:	61a0      	str	r0, [r4, #24]
1000038a:	4b5f      	ldr	r3, [pc, #380]	; (10000508 <kh_resize_rssi+0x20c>)
1000038c:	6920      	ldr	r0, [r4, #16]
1000038e:	4798      	blx	r3
10000390:	9b03      	ldr	r3, [sp, #12]
10000392:	6025      	str	r5, [r4, #0]
10000394:	6123      	str	r3, [r4, #16]
10000396:	6863      	ldr	r3, [r4, #4]
10000398:	60a3      	str	r3, [r4, #8]
1000039a:	9b04      	ldr	r3, [sp, #16]
1000039c:	60e3      	str	r3, [r4, #12]
1000039e:	b015      	add	sp, #84	; 0x54
100003a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
100003a2:	3b01      	subs	r3, #1
100003a4:	e7af      	b.n	10000306 <kh_resize_rssi+0xa>
100003a6:	9b00      	ldr	r3, [sp, #0]
100003a8:	2203      	movs	r2, #3
100003aa:	0919      	lsrs	r1, r3, #4
100003ac:	6923      	ldr	r3, [r4, #16]
100003ae:	0089      	lsls	r1, r1, #2
100003b0:	185b      	adds	r3, r3, r1
100003b2:	681f      	ldr	r7, [r3, #0]
100003b4:	469c      	mov	ip, r3
100003b6:	9b00      	ldr	r3, [sp, #0]
100003b8:	0058      	lsls	r0, r3, #1
100003ba:	231e      	movs	r3, #30
100003bc:	4018      	ands	r0, r3
100003be:	003b      	movs	r3, r7
100003c0:	40c3      	lsrs	r3, r0
100003c2:	9002      	str	r0, [sp, #8]
100003c4:	4213      	tst	r3, r2
100003c6:	d000      	beq.n	100003ca <kh_resize_rssi+0xce>
100003c8:	e084      	b.n	100004d4 <kh_resize_rssi+0x1d8>
100003ca:	9b00      	ldr	r3, [sp, #0]
100003cc:	6962      	ldr	r2, [r4, #20]
100003ce:	009b      	lsls	r3, r3, #2
100003d0:	589b      	ldr	r3, [r3, r2]
100003d2:	9a00      	ldr	r2, [sp, #0]
100003d4:	9301      	str	r3, [sp, #4]
100003d6:	231c      	movs	r3, #28
100003d8:	4353      	muls	r3, r2
100003da:	69a2      	ldr	r2, [r4, #24]
100003dc:	ae06      	add	r6, sp, #24
100003de:	18d3      	adds	r3, r2, r3
100003e0:	0032      	movs	r2, r6
100003e2:	cb43      	ldmia	r3!, {r0, r1, r6}
100003e4:	c243      	stmia	r2!, {r0, r1, r6}
100003e6:	cb43      	ldmia	r3!, {r0, r1, r6}
100003e8:	c243      	stmia	r2!, {r0, r1, r6}
100003ea:	681b      	ldr	r3, [r3, #0]
100003ec:	6013      	str	r3, [r2, #0]
100003ee:	2301      	movs	r3, #1
100003f0:	9a02      	ldr	r2, [sp, #8]
100003f2:	4093      	lsls	r3, r2
100003f4:	431f      	orrs	r7, r3
100003f6:	4663      	mov	r3, ip
100003f8:	601f      	str	r7, [r3, #0]
100003fa:	4f44      	ldr	r7, [pc, #272]	; (1000050c <kh_resize_rssi+0x210>)
100003fc:	0029      	movs	r1, r5
100003fe:	9801      	ldr	r0, [sp, #4]
10000400:	47b8      	blx	r7
10000402:	9801      	ldr	r0, [sp, #4]
10000404:	000e      	movs	r6, r1
10000406:	1e69      	subs	r1, r5, #1
10000408:	47b8      	blx	r7
1000040a:	3101      	adds	r1, #1
1000040c:	0933      	lsrs	r3, r6, #4
1000040e:	009b      	lsls	r3, r3, #2
10000410:	469c      	mov	ip, r3
10000412:	4662      	mov	r2, ip
10000414:	271e      	movs	r7, #30
10000416:	9b03      	ldr	r3, [sp, #12]
10000418:	0070      	lsls	r0, r6, #1
1000041a:	189a      	adds	r2, r3, r2
1000041c:	6813      	ldr	r3, [r2, #0]
1000041e:	4007      	ands	r7, r0
10000420:	0018      	movs	r0, r3
10000422:	9702      	str	r7, [sp, #8]
10000424:	40f8      	lsrs	r0, r7
10000426:	2702      	movs	r7, #2
10000428:	4238      	tst	r0, r7
1000042a:	d042      	beq.n	100004b2 <kh_resize_rssi+0x1b6>
1000042c:	0039      	movs	r1, r7
1000042e:	9802      	ldr	r0, [sp, #8]
10000430:	4081      	lsls	r1, r0
10000432:	438b      	bics	r3, r1
10000434:	6013      	str	r3, [r2, #0]
10000436:	221c      	movs	r2, #28
10000438:	6823      	ldr	r3, [r4, #0]
1000043a:	4372      	muls	r2, r6
1000043c:	00b1      	lsls	r1, r6, #2
1000043e:	42b3      	cmp	r3, r6
10000440:	d93c      	bls.n	100004bc <kh_resize_rssi+0x1c0>
10000442:	4666      	mov	r6, ip
10000444:	6920      	ldr	r0, [r4, #16]
10000446:	6963      	ldr	r3, [r4, #20]
10000448:	5980      	ldr	r0, [r0, r6]
1000044a:	9e02      	ldr	r6, [sp, #8]
1000044c:	185b      	adds	r3, r3, r1
1000044e:	40f0      	lsrs	r0, r6
10000450:	2603      	movs	r6, #3
10000452:	4230      	tst	r0, r6
10000454:	d132      	bne.n	100004bc <kh_resize_rssi+0x1c0>
10000456:	6819      	ldr	r1, [r3, #0]
10000458:	9105      	str	r1, [sp, #20]
1000045a:	9901      	ldr	r1, [sp, #4]
1000045c:	6019      	str	r1, [r3, #0]
1000045e:	69a3      	ldr	r3, [r4, #24]
10000460:	189a      	adds	r2, r3, r2
10000462:	ab0d      	add	r3, sp, #52	; 0x34
10000464:	001e      	movs	r6, r3
10000466:	0017      	movs	r7, r2
10000468:	cf0b      	ldmia	r7!, {r0, r1, r3}
1000046a:	c60b      	stmia	r6!, {r0, r1, r3}
1000046c:	9601      	str	r6, [sp, #4]
1000046e:	cf0b      	ldmia	r7!, {r0, r1, r3}
10000470:	c60b      	stmia	r6!, {r0, r1, r3}
10000472:	9601      	str	r6, [sp, #4]
10000474:	6839      	ldr	r1, [r7, #0]
10000476:	a806      	add	r0, sp, #24
10000478:	6031      	str	r1, [r6, #0]
1000047a:	c84a      	ldmia	r0!, {r1, r3, r6}
1000047c:	c24a      	stmia	r2!, {r1, r3, r6}
1000047e:	c84a      	ldmia	r0!, {r1, r3, r6}
10000480:	c24a      	stmia	r2!, {r1, r3, r6}
10000482:	6802      	ldr	r2, [r0, #0]
10000484:	ab0d      	add	r3, sp, #52	; 0x34
10000486:	603a      	str	r2, [r7, #0]
10000488:	aa06      	add	r2, sp, #24
1000048a:	cbc2      	ldmia	r3!, {r1, r6, r7}
1000048c:	c2c2      	stmia	r2!, {r1, r6, r7}
1000048e:	cbc2      	ldmia	r3!, {r1, r6, r7}
10000490:	c2c2      	stmia	r2!, {r1, r6, r7}
10000492:	9b01      	ldr	r3, [sp, #4]
10000494:	681b      	ldr	r3, [r3, #0]
10000496:	6003      	str	r3, [r0, #0]
10000498:	6922      	ldr	r2, [r4, #16]
1000049a:	4663      	mov	r3, ip
1000049c:	4694      	mov	ip, r2
1000049e:	2201      	movs	r2, #1
100004a0:	9902      	ldr	r1, [sp, #8]
100004a2:	4463      	add	r3, ip
100004a4:	408a      	lsls	r2, r1
100004a6:	6819      	ldr	r1, [r3, #0]
100004a8:	430a      	orrs	r2, r1
100004aa:	601a      	str	r2, [r3, #0]
100004ac:	9b05      	ldr	r3, [sp, #20]
100004ae:	9301      	str	r3, [sp, #4]
100004b0:	e7a3      	b.n	100003fa <kh_resize_rssi+0xfe>
100004b2:	1876      	adds	r6, r6, r1
100004b4:	42ae      	cmp	r6, r5
100004b6:	d3a9      	bcc.n	1000040c <kh_resize_rssi+0x110>
100004b8:	1b76      	subs	r6, r6, r5
100004ba:	e7a7      	b.n	1000040c <kh_resize_rssi+0x110>
100004bc:	6963      	ldr	r3, [r4, #20]
100004be:	9801      	ldr	r0, [sp, #4]
100004c0:	5058      	str	r0, [r3, r1]
100004c2:	69a1      	ldr	r1, [r4, #24]
100004c4:	ab06      	add	r3, sp, #24
100004c6:	188a      	adds	r2, r1, r2
100004c8:	cb43      	ldmia	r3!, {r0, r1, r6}
100004ca:	c243      	stmia	r2!, {r0, r1, r6}
100004cc:	cb43      	ldmia	r3!, {r0, r1, r6}
100004ce:	c243      	stmia	r2!, {r0, r1, r6}
100004d0:	681b      	ldr	r3, [r3, #0]
100004d2:	6013      	str	r3, [r2, #0]
100004d4:	9b00      	ldr	r3, [sp, #0]
100004d6:	3301      	adds	r3, #1
100004d8:	e746      	b.n	10000368 <kh_resize_rssi+0x6c>
100004da:	46c0      	nop			; (mov r8, r8)
100004dc:	10009410 	.word	0x10009410
100004e0:	0003ae69 	.word	0x0003ae69
100004e4:	0a3d70a4 	.word	0x0a3d70a4
100004e8:	3fe8a3d7 	.word	0x3fe8a3d7
100004ec:	0003a211 	.word	0x0003a211
100004f0:	3fe00000 	.word	0x3fe00000
100004f4:	00039389 	.word	0x00039389
100004f8:	0003c255 	.word	0x0003c255
100004fc:	0002f615 	.word	0x0002f615
10000500:	00005859 	.word	0x00005859
10000504:	0002fe0d 	.word	0x0002fe0d
10000508:	0002f629 	.word	0x0002f629
1000050c:	0002ee49 	.word	0x0002ee49

10000510 <check_in_student>:
10000510:	b5f0      	push	{r4, r5, r6, r7, lr}
10000512:	b08d      	sub	sp, #52	; 0x34
10000514:	9206      	str	r2, [sp, #24]
10000516:	4a61      	ldr	r2, [pc, #388]	; (1000069c <check_in_student+0x18c>)
10000518:	9105      	str	r1, [sp, #20]
1000051a:	6815      	ldr	r5, [r2, #0]
1000051c:	aa08      	add	r2, sp, #32
1000051e:	0011      	movs	r1, r2
10000520:	9004      	str	r0, [sp, #16]
10000522:	9307      	str	r3, [sp, #28]
10000524:	ac04      	add	r4, sp, #16
10000526:	ccc1      	ldmia	r4!, {r0, r6, r7}
10000528:	c1c1      	stmia	r1!, {r0, r6, r7}
1000052a:	2600      	movs	r6, #0
1000052c:	600b      	str	r3, [r1, #0]
1000052e:	200a      	movs	r0, #10
10000530:	2109      	movs	r1, #9
10000532:	1853      	adds	r3, r2, r1
10000534:	799b      	ldrb	r3, [r3, #6]
10000536:	3b30      	subs	r3, #48	; 0x30
10000538:	199e      	adds	r6, r3, r6
1000053a:	4346      	muls	r6, r0
1000053c:	3901      	subs	r1, #1
1000053e:	d2f8      	bcs.n	10000532 <check_in_student+0x22>
10000540:	68ab      	ldr	r3, [r5, #8]
10000542:	68ea      	ldr	r2, [r5, #12]
10000544:	4293      	cmp	r3, r2
10000546:	d309      	bcc.n	1000055c <check_in_student+0x4c>
10000548:	686b      	ldr	r3, [r5, #4]
1000054a:	6829      	ldr	r1, [r5, #0]
1000054c:	005a      	lsls	r2, r3, #1
1000054e:	4b54      	ldr	r3, [pc, #336]	; (100006a0 <check_in_student+0x190>)
10000550:	428a      	cmp	r2, r1
10000552:	d300      	bcc.n	10000556 <check_in_student+0x46>
10000554:	e06d      	b.n	10000632 <check_in_student+0x122>
10000556:	3901      	subs	r1, #1
10000558:	0028      	movs	r0, r5
1000055a:	4798      	blx	r3
1000055c:	682f      	ldr	r7, [r5, #0]
1000055e:	4b51      	ldr	r3, [pc, #324]	; (100006a4 <check_in_student+0x194>)
10000560:	0039      	movs	r1, r7
10000562:	0030      	movs	r0, r6
10000564:	4798      	blx	r3
10000566:	692b      	ldr	r3, [r5, #16]
10000568:	9101      	str	r1, [sp, #4]
1000056a:	9302      	str	r3, [sp, #8]
1000056c:	004a      	lsls	r2, r1, #1
1000056e:	090b      	lsrs	r3, r1, #4
10000570:	211e      	movs	r1, #30
10000572:	400a      	ands	r2, r1
10000574:	9902      	ldr	r1, [sp, #8]
10000576:	009b      	lsls	r3, r3, #2
10000578:	585b      	ldr	r3, [r3, r1]
1000057a:	9c01      	ldr	r4, [sp, #4]
1000057c:	40d3      	lsrs	r3, r2
1000057e:	2202      	movs	r2, #2
10000580:	4213      	tst	r3, r2
10000582:	d128      	bne.n	100005d6 <check_in_student+0xc6>
10000584:	4b47      	ldr	r3, [pc, #284]	; (100006a4 <check_in_student+0x194>)
10000586:	0030      	movs	r0, r6
10000588:	1e79      	subs	r1, r7, #1
1000058a:	4798      	blx	r3
1000058c:	003b      	movs	r3, r7
1000058e:	3101      	adds	r1, #1
10000590:	0922      	lsrs	r2, r4, #4
10000592:	0092      	lsls	r2, r2, #2
10000594:	9203      	str	r2, [sp, #12]
10000596:	221e      	movs	r2, #30
10000598:	0060      	lsls	r0, r4, #1
1000059a:	4010      	ands	r0, r2
1000059c:	4684      	mov	ip, r0
1000059e:	9a02      	ldr	r2, [sp, #8]
100005a0:	9803      	ldr	r0, [sp, #12]
100005a2:	5882      	ldr	r2, [r0, r2]
100005a4:	4660      	mov	r0, ip
100005a6:	40c2      	lsrs	r2, r0
100005a8:	2002      	movs	r0, #2
100005aa:	4202      	tst	r2, r0
100005ac:	d107      	bne.n	100005be <check_in_student+0xae>
100005ae:	3801      	subs	r0, #1
100005b0:	4202      	tst	r2, r0
100005b2:	d140      	bne.n	10000636 <check_in_student+0x126>
100005b4:	6968      	ldr	r0, [r5, #20]
100005b6:	00a2      	lsls	r2, r4, #2
100005b8:	5812      	ldr	r2, [r2, r0]
100005ba:	4296      	cmp	r6, r2
100005bc:	d13c      	bne.n	10000638 <check_in_student+0x128>
100005be:	201e      	movs	r0, #30
100005c0:	0061      	lsls	r1, r4, #1
100005c2:	4001      	ands	r1, r0
100005c4:	0922      	lsrs	r2, r4, #4
100005c6:	9802      	ldr	r0, [sp, #8]
100005c8:	0092      	lsls	r2, r2, #2
100005ca:	5812      	ldr	r2, [r2, r0]
100005cc:	40ca      	lsrs	r2, r1
100005ce:	0792      	lsls	r2, r2, #30
100005d0:	d501      	bpl.n	100005d6 <check_in_student+0xc6>
100005d2:	429f      	cmp	r7, r3
100005d4:	d139      	bne.n	1000064a <check_in_student+0x13a>
100005d6:	231e      	movs	r3, #30
100005d8:	0062      	lsls	r2, r4, #1
100005da:	4013      	ands	r3, r2
100005dc:	0921      	lsrs	r1, r4, #4
100005de:	9a02      	ldr	r2, [sp, #8]
100005e0:	0089      	lsls	r1, r1, #2
100005e2:	5850      	ldr	r0, [r2, r1]
100005e4:	40d8      	lsrs	r0, r3
100005e6:	0782      	lsls	r2, r0, #30
100005e8:	d531      	bpl.n	1000064e <check_in_student+0x13e>
100005ea:	696a      	ldr	r2, [r5, #20]
100005ec:	00a4      	lsls	r4, r4, #2
100005ee:	50a6      	str	r6, [r4, r2]
100005f0:	692a      	ldr	r2, [r5, #16]
100005f2:	1851      	adds	r1, r2, r1
100005f4:	2203      	movs	r2, #3
100005f6:	409a      	lsls	r2, r3
100005f8:	680b      	ldr	r3, [r1, #0]
100005fa:	4393      	bics	r3, r2
100005fc:	600b      	str	r3, [r1, #0]
100005fe:	686b      	ldr	r3, [r5, #4]
10000600:	3301      	adds	r3, #1
10000602:	606b      	str	r3, [r5, #4]
10000604:	68ab      	ldr	r3, [r5, #8]
10000606:	3301      	adds	r3, #1
10000608:	60ab      	str	r3, [r5, #8]
1000060a:	2600      	movs	r6, #0
1000060c:	ad04      	add	r5, sp, #16
1000060e:	79a8      	ldrb	r0, [r5, #6]
10000610:	4c25      	ldr	r4, [pc, #148]	; (100006a8 <check_in_student+0x198>)
10000612:	2800      	cmp	r0, #0
10000614:	d133      	bne.n	1000067e <check_in_student+0x16e>
10000616:	2101      	movs	r1, #1
10000618:	2028      	movs	r0, #40	; 0x28
1000061a:	47a0      	blx	r4
1000061c:	2100      	movs	r1, #0
1000061e:	2028      	movs	r0, #40	; 0x28
10000620:	47a0      	blx	r4
10000622:	ab04      	add	r3, sp, #16
10000624:	1d9a      	adds	r2, r3, #6
10000626:	4921      	ldr	r1, [pc, #132]	; (100006ac <check_in_student+0x19c>)
10000628:	4b21      	ldr	r3, [pc, #132]	; (100006b0 <check_in_student+0x1a0>)
1000062a:	4822      	ldr	r0, [pc, #136]	; (100006b4 <check_in_student+0x1a4>)
1000062c:	4798      	blx	r3
1000062e:	b00d      	add	sp, #52	; 0x34
10000630:	bdf0      	pop	{r4, r5, r6, r7, pc}
10000632:	3101      	adds	r1, #1
10000634:	e790      	b.n	10000558 <check_in_student+0x48>
10000636:	0023      	movs	r3, r4
10000638:	1864      	adds	r4, r4, r1
1000063a:	42a7      	cmp	r7, r4
1000063c:	d800      	bhi.n	10000640 <check_in_student+0x130>
1000063e:	1be4      	subs	r4, r4, r7
10000640:	9a01      	ldr	r2, [sp, #4]
10000642:	42a2      	cmp	r2, r4
10000644:	d1a4      	bne.n	10000590 <check_in_student+0x80>
10000646:	429f      	cmp	r7, r3
10000648:	d0b9      	beq.n	100005be <check_in_student+0xae>
1000064a:	001c      	movs	r4, r3
1000064c:	e7c3      	b.n	100005d6 <check_in_student+0xc6>
1000064e:	2701      	movs	r7, #1
10000650:	0002      	movs	r2, r0
10000652:	403a      	ands	r2, r7
10000654:	4238      	tst	r0, r7
10000656:	d104      	bne.n	10000662 <check_in_student+0x152>
10000658:	4914      	ldr	r1, [pc, #80]	; (100006ac <check_in_student+0x19c>)
1000065a:	4b15      	ldr	r3, [pc, #84]	; (100006b0 <check_in_student+0x1a0>)
1000065c:	4816      	ldr	r0, [pc, #88]	; (100006b8 <check_in_student+0x1a8>)
1000065e:	4798      	blx	r3
10000660:	e7d3      	b.n	1000060a <check_in_student+0xfa>
10000662:	696a      	ldr	r2, [r5, #20]
10000664:	00a4      	lsls	r4, r4, #2
10000666:	50a6      	str	r6, [r4, r2]
10000668:	692a      	ldr	r2, [r5, #16]
1000066a:	1851      	adds	r1, r2, r1
1000066c:	2203      	movs	r2, #3
1000066e:	409a      	lsls	r2, r3
10000670:	680b      	ldr	r3, [r1, #0]
10000672:	4393      	bics	r3, r2
10000674:	600b      	str	r3, [r1, #0]
10000676:	686b      	ldr	r3, [r5, #4]
10000678:	3301      	adds	r3, #1
1000067a:	606b      	str	r3, [r5, #4]
1000067c:	e7c5      	b.n	1000060a <check_in_student+0xfa>
1000067e:	4f0f      	ldr	r7, [pc, #60]	; (100006bc <check_in_student+0x1ac>)
10000680:	47b8      	blx	r7
10000682:	2101      	movs	r1, #1
10000684:	b280      	uxth	r0, r0
10000686:	47a0      	blx	r4
10000688:	79a8      	ldrb	r0, [r5, #6]
1000068a:	47b8      	blx	r7
1000068c:	3601      	adds	r6, #1
1000068e:	2100      	movs	r1, #0
10000690:	b280      	uxth	r0, r0
10000692:	47a0      	blx	r4
10000694:	3501      	adds	r5, #1
10000696:	2e0a      	cmp	r6, #10
10000698:	d1b9      	bne.n	1000060e <check_in_student+0xfe>
1000069a:	e7bc      	b.n	10000616 <check_in_student+0x106>
1000069c:	20014d58 	.word	0x20014d58
100006a0:	1000017d 	.word	0x1000017d
100006a4:	0002ee49 	.word	0x0002ee49
100006a8:	10001385 	.word	0x10001385
100006ac:	10009401 	.word	0x10009401
100006b0:	000066b1 	.word	0x000066b1
100006b4:	100092c7 	.word	0x100092c7
100006b8:	10009290 	.word	0x10009290
100006bc:	10000b45 	.word	0x10000b45

100006c0 <student_is_checked_in>:
100006c0:	b5f0      	push	{r4, r5, r6, r7, lr}
100006c2:	b08b      	sub	sp, #44	; 0x2c
100006c4:	9204      	str	r2, [sp, #16]
100006c6:	4a25      	ldr	r2, [pc, #148]	; (1000075c <student_is_checked_in+0x9c>)
100006c8:	9103      	str	r1, [sp, #12]
100006ca:	6816      	ldr	r6, [r2, #0]
100006cc:	aa06      	add	r2, sp, #24
100006ce:	0011      	movs	r1, r2
100006d0:	9002      	str	r0, [sp, #8]
100006d2:	9305      	str	r3, [sp, #20]
100006d4:	ac02      	add	r4, sp, #8
100006d6:	cca1      	ldmia	r4!, {r0, r5, r7}
100006d8:	c1a1      	stmia	r1!, {r0, r5, r7}
100006da:	2500      	movs	r5, #0
100006dc:	600b      	str	r3, [r1, #0]
100006de:	200a      	movs	r0, #10
100006e0:	2109      	movs	r1, #9
100006e2:	1853      	adds	r3, r2, r1
100006e4:	799b      	ldrb	r3, [r3, #6]
100006e6:	3b30      	subs	r3, #48	; 0x30
100006e8:	195d      	adds	r5, r3, r5
100006ea:	4345      	muls	r5, r0
100006ec:	3901      	subs	r1, #1
100006ee:	d2f8      	bcs.n	100006e2 <student_is_checked_in+0x22>
100006f0:	6834      	ldr	r4, [r6, #0]
100006f2:	1e20      	subs	r0, r4, #0
100006f4:	d01a      	beq.n	1000072c <student_is_checked_in+0x6c>
100006f6:	4f1a      	ldr	r7, [pc, #104]	; (10000760 <student_is_checked_in+0xa0>)
100006f8:	0021      	movs	r1, r4
100006fa:	0028      	movs	r0, r5
100006fc:	47b8      	blx	r7
100006fe:	0028      	movs	r0, r5
10000700:	9100      	str	r1, [sp, #0]
10000702:	1e61      	subs	r1, r4, #1
10000704:	47b8      	blx	r7
10000706:	6933      	ldr	r3, [r6, #16]
10000708:	9800      	ldr	r0, [sp, #0]
1000070a:	9301      	str	r3, [sp, #4]
1000070c:	231e      	movs	r3, #30
1000070e:	469c      	mov	ip, r3
10000710:	3101      	adds	r1, #1
10000712:	4667      	mov	r7, ip
10000714:	0042      	lsls	r2, r0, #1
10000716:	403a      	ands	r2, r7
10000718:	0903      	lsrs	r3, r0, #4
1000071a:	9f01      	ldr	r7, [sp, #4]
1000071c:	009b      	lsls	r3, r3, #2
1000071e:	59db      	ldr	r3, [r3, r7]
10000720:	40d3      	lsrs	r3, r2
10000722:	2202      	movs	r2, #2
10000724:	4213      	tst	r3, r2
10000726:	d007      	beq.n	10000738 <student_is_checked_in+0x78>
10000728:	079b      	lsls	r3, r3, #30
1000072a:	d114      	bne.n	10000756 <student_is_checked_in+0x96>
1000072c:	1a20      	subs	r0, r4, r0
1000072e:	1e43      	subs	r3, r0, #1
10000730:	4198      	sbcs	r0, r3
10000732:	b2c0      	uxtb	r0, r0
10000734:	b00b      	add	sp, #44	; 0x2c
10000736:	bdf0      	pop	{r4, r5, r6, r7, pc}
10000738:	2201      	movs	r2, #1
1000073a:	4213      	tst	r3, r2
1000073c:	d104      	bne.n	10000748 <student_is_checked_in+0x88>
1000073e:	6977      	ldr	r7, [r6, #20]
10000740:	0082      	lsls	r2, r0, #2
10000742:	59d2      	ldr	r2, [r2, r7]
10000744:	4295      	cmp	r5, r2
10000746:	d0ef      	beq.n	10000728 <student_is_checked_in+0x68>
10000748:	1840      	adds	r0, r0, r1
1000074a:	4284      	cmp	r4, r0
1000074c:	d800      	bhi.n	10000750 <student_is_checked_in+0x90>
1000074e:	1b00      	subs	r0, r0, r4
10000750:	9b00      	ldr	r3, [sp, #0]
10000752:	4283      	cmp	r3, r0
10000754:	d1dd      	bne.n	10000712 <student_is_checked_in+0x52>
10000756:	0020      	movs	r0, r4
10000758:	e7e8      	b.n	1000072c <student_is_checked_in+0x6c>
1000075a:	46c0      	nop			; (mov r8, r8)
1000075c:	20014d58 	.word	0x20014d58
10000760:	0002ee49 	.word	0x0002ee49

10000764 <receive_special_lunch_data>:
10000764:	b5f0      	push	{r4, r5, r6, r7, lr}
10000766:	2600      	movs	r6, #0
10000768:	b085      	sub	sp, #20
1000076a:	9000      	str	r0, [sp, #0]
1000076c:	9101      	str	r1, [sp, #4]
1000076e:	9202      	str	r2, [sp, #8]
10000770:	9303      	str	r3, [sp, #12]
10000772:	ab0a      	add	r3, sp, #40	; 0x28
10000774:	579e      	ldrsb	r6, [r3, r6]
10000776:	466b      	mov	r3, sp
10000778:	4d0e      	ldr	r5, [pc, #56]	; (100007b4 <receive_special_lunch_data+0x50>)
1000077a:	1d9a      	adds	r2, r3, #6
1000077c:	0029      	movs	r1, r5
1000077e:	480e      	ldr	r0, [pc, #56]	; (100007b8 <receive_special_lunch_data+0x54>)
10000780:	4c0e      	ldr	r4, [pc, #56]	; (100007bc <receive_special_lunch_data+0x58>)
10000782:	47a0      	blx	r4
10000784:	9800      	ldr	r0, [sp, #0]
10000786:	9901      	ldr	r1, [sp, #4]
10000788:	9a02      	ldr	r2, [sp, #8]
1000078a:	9b03      	ldr	r3, [sp, #12]
1000078c:	4f0c      	ldr	r7, [pc, #48]	; (100007c0 <receive_special_lunch_data+0x5c>)
1000078e:	47b8      	blx	r7
10000790:	2800      	cmp	r0, #0
10000792:	d10c      	bne.n	100007ae <receive_special_lunch_data+0x4a>
10000794:	0033      	movs	r3, r6
10000796:	333a      	adds	r3, #58	; 0x3a
10000798:	db09      	blt.n	100007ae <receive_special_lunch_data+0x4a>
1000079a:	0032      	movs	r2, r6
1000079c:	0029      	movs	r1, r5
1000079e:	4809      	ldr	r0, [pc, #36]	; (100007c4 <receive_special_lunch_data+0x60>)
100007a0:	47a0      	blx	r4
100007a2:	9800      	ldr	r0, [sp, #0]
100007a4:	9901      	ldr	r1, [sp, #4]
100007a6:	9a02      	ldr	r2, [sp, #8]
100007a8:	9b03      	ldr	r3, [sp, #12]
100007aa:	4c07      	ldr	r4, [pc, #28]	; (100007c8 <receive_special_lunch_data+0x64>)
100007ac:	47a0      	blx	r4
100007ae:	b005      	add	sp, #20
100007b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
100007b2:	46c0      	nop			; (mov r8, r8)
100007b4:	10009401 	.word	0x10009401
100007b8:	100092ec 	.word	0x100092ec
100007bc:	000066b1 	.word	0x000066b1
100007c0:	100006c1 	.word	0x100006c1
100007c4:	10009318 	.word	0x10009318
100007c8:	10000511 	.word	0x10000511

100007cc <receive_lunch_data>:
100007cc:	b5f0      	push	{r4, r5, r6, r7, lr}
100007ce:	b09f      	sub	sp, #124	; 0x7c
100007d0:	930f      	str	r3, [sp, #60]	; 0x3c
100007d2:	ab24      	add	r3, sp, #144	; 0x90
100007d4:	781b      	ldrb	r3, [r3, #0]
100007d6:	ad11      	add	r5, sp, #68	; 0x44
100007d8:	b25b      	sxtb	r3, r3
100007da:	900c      	str	r0, [sp, #48]	; 0x30
100007dc:	9306      	str	r3, [sp, #24]
100007de:	910d      	str	r1, [sp, #52]	; 0x34
100007e0:	4bb8      	ldr	r3, [pc, #736]	; (10000ac4 <receive_lunch_data+0x2f8>)
100007e2:	49b9      	ldr	r1, [pc, #740]	; (10000ac8 <receive_lunch_data+0x2fc>)
100007e4:	920e      	str	r2, [sp, #56]	; 0x38
100007e6:	0028      	movs	r0, r5
100007e8:	2215      	movs	r2, #21
100007ea:	4798      	blx	r3
100007ec:	4bb7      	ldr	r3, [pc, #732]	; (10000acc <receive_lunch_data+0x300>)
100007ee:	9806      	ldr	r0, [sp, #24]
100007f0:	4798      	blx	r3
100007f2:	2200      	movs	r2, #0
100007f4:	4bb6      	ldr	r3, [pc, #728]	; (10000ad0 <receive_lunch_data+0x304>)
100007f6:	4eb7      	ldr	r6, [pc, #732]	; (10000ad4 <receive_lunch_data+0x308>)
100007f8:	47b0      	blx	r6
100007fa:	2200      	movs	r2, #0
100007fc:	4bb6      	ldr	r3, [pc, #728]	; (10000ad8 <receive_lunch_data+0x30c>)
100007fe:	4eb7      	ldr	r6, [pc, #732]	; (10000adc <receive_lunch_data+0x310>)
10000800:	47b0      	blx	r6
10000802:	2200      	movs	r2, #0
10000804:	4bb6      	ldr	r3, [pc, #728]	; (10000ae0 <receive_lunch_data+0x314>)
10000806:	4eb7      	ldr	r6, [pc, #732]	; (10000ae4 <receive_lunch_data+0x318>)
10000808:	47b0      	blx	r6
1000080a:	4bb7      	ldr	r3, [pc, #732]	; (10000ae8 <receive_lunch_data+0x31c>)
1000080c:	4798      	blx	r3
1000080e:	ac0c      	add	r4, sp, #48	; 0x30
10000810:	2200      	movs	r2, #0
10000812:	2814      	cmp	r0, #20
10000814:	dc01      	bgt.n	1000081a <receive_lunch_data+0x4e>
10000816:	3214      	adds	r2, #20
10000818:	1a12      	subs	r2, r2, r0
1000081a:	212d      	movs	r1, #45	; 0x2d
1000081c:	4bb3      	ldr	r3, [pc, #716]	; (10000aec <receive_lunch_data+0x320>)
1000081e:	1828      	adds	r0, r5, r0
10000820:	4798      	blx	r3
10000822:	2300      	movs	r3, #0
10000824:	002a      	movs	r2, r5
10000826:	752b      	strb	r3, [r5, #20]
10000828:	49b1      	ldr	r1, [pc, #708]	; (10000af0 <receive_lunch_data+0x324>)
1000082a:	9b06      	ldr	r3, [sp, #24]
1000082c:	4db1      	ldr	r5, [pc, #708]	; (10000af4 <receive_lunch_data+0x328>)
1000082e:	48b2      	ldr	r0, [pc, #712]	; (10000af8 <receive_lunch_data+0x32c>)
10000830:	47a8      	blx	r5
10000832:	980c      	ldr	r0, [sp, #48]	; 0x30
10000834:	6861      	ldr	r1, [r4, #4]
10000836:	68a2      	ldr	r2, [r4, #8]
10000838:	68e3      	ldr	r3, [r4, #12]
1000083a:	4db0      	ldr	r5, [pc, #704]	; (10000afc <receive_lunch_data+0x330>)
1000083c:	47a8      	blx	r5
1000083e:	2800      	cmp	r0, #0
10000840:	d000      	beq.n	10000844 <receive_lunch_data+0x78>
10000842:	e0f6      	b.n	10000a32 <receive_lunch_data+0x266>
10000844:	4bae      	ldr	r3, [pc, #696]	; (10000b00 <receive_lunch_data+0x334>)
10000846:	681f      	ldr	r7, [r3, #0]
10000848:	ab17      	add	r3, sp, #92	; 0x5c
1000084a:	001a      	movs	r2, r3
1000084c:	cc62      	ldmia	r4!, {r1, r5, r6}
1000084e:	c262      	stmia	r2!, {r1, r5, r6}
10000850:	6821      	ldr	r1, [r4, #0]
10000852:	0006      	movs	r6, r0
10000854:	6011      	str	r1, [r2, #0]
10000856:	2209      	movs	r2, #9
10000858:	210a      	movs	r1, #10
1000085a:	1898      	adds	r0, r3, r2
1000085c:	7980      	ldrb	r0, [r0, #6]
1000085e:	3830      	subs	r0, #48	; 0x30
10000860:	1986      	adds	r6, r0, r6
10000862:	434e      	muls	r6, r1
10000864:	3a01      	subs	r2, #1
10000866:	d2f8      	bcs.n	1000085a <receive_lunch_data+0x8e>
10000868:	683c      	ldr	r4, [r7, #0]
1000086a:	2c00      	cmp	r4, #0
1000086c:	d066      	beq.n	1000093c <receive_lunch_data+0x170>
1000086e:	4da5      	ldr	r5, [pc, #660]	; (10000b04 <receive_lunch_data+0x338>)
10000870:	0021      	movs	r1, r4
10000872:	0030      	movs	r0, r6
10000874:	47a8      	blx	r5
10000876:	0030      	movs	r0, r6
10000878:	9108      	str	r1, [sp, #32]
1000087a:	1e61      	subs	r1, r4, #1
1000087c:	47a8      	blx	r5
1000087e:	1c4b      	adds	r3, r1, #1
10000880:	930a      	str	r3, [sp, #40]	; 0x28
10000882:	2301      	movs	r3, #1
10000884:	469c      	mov	ip, r3
10000886:	6939      	ldr	r1, [r7, #16]
10000888:	9d08      	ldr	r5, [sp, #32]
1000088a:	221e      	movs	r2, #30
1000088c:	092b      	lsrs	r3, r5, #4
1000088e:	009b      	lsls	r3, r3, #2
10000890:	9309      	str	r3, [sp, #36]	; 0x24
10000892:	006b      	lsls	r3, r5, #1
10000894:	401a      	ands	r2, r3
10000896:	9b09      	ldr	r3, [sp, #36]	; 0x24
10000898:	9207      	str	r2, [sp, #28]
1000089a:	58cb      	ldr	r3, [r1, r3]
1000089c:	930b      	str	r3, [sp, #44]	; 0x2c
1000089e:	40d3      	lsrs	r3, r2
100008a0:	2202      	movs	r2, #2
100008a2:	4213      	tst	r3, r2
100008a4:	d107      	bne.n	100008b6 <receive_lunch_data+0xea>
100008a6:	4662      	mov	r2, ip
100008a8:	4213      	tst	r3, r2
100008aa:	d13f      	bne.n	1000092c <receive_lunch_data+0x160>
100008ac:	6978      	ldr	r0, [r7, #20]
100008ae:	00aa      	lsls	r2, r5, #2
100008b0:	5812      	ldr	r2, [r2, r0]
100008b2:	4296      	cmp	r6, r2
100008b4:	d13a      	bne.n	1000092c <receive_lunch_data+0x160>
100008b6:	2203      	movs	r2, #3
100008b8:	0019      	movs	r1, r3
100008ba:	4011      	ands	r1, r2
100008bc:	4213      	tst	r3, r2
100008be:	d13d      	bne.n	1000093c <receive_lunch_data+0x170>
100008c0:	42ac      	cmp	r4, r5
100008c2:	d03b      	beq.n	1000093c <receive_lunch_data+0x170>
100008c4:	241c      	movs	r4, #28
100008c6:	436c      	muls	r4, r5
100008c8:	69bb      	ldr	r3, [r7, #24]
100008ca:	000e      	movs	r6, r1
100008cc:	191c      	adds	r4, r3, r4
100008ce:	6922      	ldr	r2, [r4, #16]
100008d0:	2a02      	cmp	r2, #2
100008d2:	dc00      	bgt.n	100008d6 <receive_lunch_data+0x10a>
100008d4:	1c56      	adds	r6, r2, #1
100008d6:	7e21      	ldrb	r1, [r4, #24]
100008d8:	6963      	ldr	r3, [r4, #20]
100008da:	2900      	cmp	r1, #0
100008dc:	d000      	beq.n	100008e0 <receive_lunch_data+0x114>
100008de:	e0c6      	b.n	10000a6e <receive_lunch_data+0x2a2>
100008e0:	2e00      	cmp	r6, #0
100008e2:	d104      	bne.n	100008ee <receive_lunch_data+0x122>
100008e4:	2201      	movs	r2, #1
100008e6:	7622      	strb	r2, [r4, #24]
100008e8:	6822      	ldr	r2, [r4, #0]
100008ea:	1a9b      	subs	r3, r3, r2
100008ec:	6163      	str	r3, [r4, #20]
100008ee:	9a06      	ldr	r2, [sp, #24]
100008f0:	00b3      	lsls	r3, r6, #2
100008f2:	511a      	str	r2, [r3, r4]
100008f4:	0013      	movs	r3, r2
100008f6:	6962      	ldr	r2, [r4, #20]
100008f8:	4694      	mov	ip, r2
100008fa:	4463      	add	r3, ip
100008fc:	6163      	str	r3, [r4, #20]
100008fe:	7e20      	ldrb	r0, [r4, #24]
10000900:	6962      	ldr	r2, [r4, #20]
10000902:	6923      	ldr	r3, [r4, #16]
10000904:	4980      	ldr	r1, [pc, #512]	; (10000b08 <receive_lunch_data+0x33c>)
10000906:	2800      	cmp	r0, #0
10000908:	d100      	bne.n	1000090c <receive_lunch_data+0x140>
1000090a:	4980      	ldr	r1, [pc, #512]	; (10000b0c <receive_lunch_data+0x340>)
1000090c:	9305      	str	r3, [sp, #20]
1000090e:	68e0      	ldr	r0, [r4, #12]
10000910:	4d78      	ldr	r5, [pc, #480]	; (10000af4 <receive_lunch_data+0x328>)
10000912:	9004      	str	r0, [sp, #16]
10000914:	68a0      	ldr	r0, [r4, #8]
10000916:	9003      	str	r0, [sp, #12]
10000918:	6860      	ldr	r0, [r4, #4]
1000091a:	9002      	str	r0, [sp, #8]
1000091c:	6820      	ldr	r0, [r4, #0]
1000091e:	9100      	str	r1, [sp, #0]
10000920:	9001      	str	r0, [sp, #4]
10000922:	4973      	ldr	r1, [pc, #460]	; (10000af0 <receive_lunch_data+0x324>)
10000924:	487a      	ldr	r0, [pc, #488]	; (10000b10 <receive_lunch_data+0x344>)
10000926:	47a8      	blx	r5
10000928:	6126      	str	r6, [r4, #16]
1000092a:	e082      	b.n	10000a32 <receive_lunch_data+0x266>
1000092c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
1000092e:	18ed      	adds	r5, r5, r3
10000930:	42ac      	cmp	r4, r5
10000932:	d800      	bhi.n	10000936 <receive_lunch_data+0x16a>
10000934:	1b2d      	subs	r5, r5, r4
10000936:	9b08      	ldr	r3, [sp, #32]
10000938:	42ab      	cmp	r3, r5
1000093a:	d1a6      	bne.n	1000088a <receive_lunch_data+0xbe>
1000093c:	9b06      	ldr	r3, [sp, #24]
1000093e:	333a      	adds	r3, #58	; 0x3a
10000940:	db77      	blt.n	10000a32 <receive_lunch_data+0x266>
10000942:	68bb      	ldr	r3, [r7, #8]
10000944:	68fa      	ldr	r2, [r7, #12]
10000946:	4293      	cmp	r3, r2
10000948:	d308      	bcc.n	1000095c <receive_lunch_data+0x190>
1000094a:	687b      	ldr	r3, [r7, #4]
1000094c:	1e61      	subs	r1, r4, #1
1000094e:	005a      	lsls	r2, r3, #1
10000950:	4b70      	ldr	r3, [pc, #448]	; (10000b14 <receive_lunch_data+0x348>)
10000952:	4294      	cmp	r4, r2
10000954:	d800      	bhi.n	10000958 <receive_lunch_data+0x18c>
10000956:	1c61      	adds	r1, r4, #1
10000958:	0038      	movs	r0, r7
1000095a:	4798      	blx	r3
1000095c:	683d      	ldr	r5, [r7, #0]
1000095e:	4b69      	ldr	r3, [pc, #420]	; (10000b04 <receive_lunch_data+0x338>)
10000960:	0029      	movs	r1, r5
10000962:	0030      	movs	r0, r6
10000964:	4798      	blx	r3
10000966:	693b      	ldr	r3, [r7, #16]
10000968:	9107      	str	r1, [sp, #28]
1000096a:	9308      	str	r3, [sp, #32]
1000096c:	004a      	lsls	r2, r1, #1
1000096e:	090b      	lsrs	r3, r1, #4
10000970:	211e      	movs	r1, #30
10000972:	400a      	ands	r2, r1
10000974:	9908      	ldr	r1, [sp, #32]
10000976:	009b      	lsls	r3, r3, #2
10000978:	585b      	ldr	r3, [r3, r1]
1000097a:	9c07      	ldr	r4, [sp, #28]
1000097c:	40d3      	lsrs	r3, r2
1000097e:	2202      	movs	r2, #2
10000980:	4213      	tst	r3, r2
10000982:	d128      	bne.n	100009d6 <receive_lunch_data+0x20a>
10000984:	4b5f      	ldr	r3, [pc, #380]	; (10000b04 <receive_lunch_data+0x338>)
10000986:	0030      	movs	r0, r6
10000988:	1e69      	subs	r1, r5, #1
1000098a:	4798      	blx	r3
1000098c:	002b      	movs	r3, r5
1000098e:	3101      	adds	r1, #1
10000990:	0922      	lsrs	r2, r4, #4
10000992:	0092      	lsls	r2, r2, #2
10000994:	9209      	str	r2, [sp, #36]	; 0x24
10000996:	221e      	movs	r2, #30
10000998:	0060      	lsls	r0, r4, #1
1000099a:	4010      	ands	r0, r2
1000099c:	4684      	mov	ip, r0
1000099e:	9a08      	ldr	r2, [sp, #32]
100009a0:	9809      	ldr	r0, [sp, #36]	; 0x24
100009a2:	5882      	ldr	r2, [r0, r2]
100009a4:	4660      	mov	r0, ip
100009a6:	40c2      	lsrs	r2, r0
100009a8:	2002      	movs	r0, #2
100009aa:	4202      	tst	r2, r0
100009ac:	d107      	bne.n	100009be <receive_lunch_data+0x1f2>
100009ae:	3801      	subs	r0, #1
100009b0:	4202      	tst	r2, r0
100009b2:	d140      	bne.n	10000a36 <receive_lunch_data+0x26a>
100009b4:	6978      	ldr	r0, [r7, #20]
100009b6:	00a2      	lsls	r2, r4, #2
100009b8:	5812      	ldr	r2, [r2, r0]
100009ba:	4296      	cmp	r6, r2
100009bc:	d13c      	bne.n	10000a38 <receive_lunch_data+0x26c>
100009be:	201e      	movs	r0, #30
100009c0:	0061      	lsls	r1, r4, #1
100009c2:	4001      	ands	r1, r0
100009c4:	0922      	lsrs	r2, r4, #4
100009c6:	9808      	ldr	r0, [sp, #32]
100009c8:	0092      	lsls	r2, r2, #2
100009ca:	5812      	ldr	r2, [r2, r0]
100009cc:	40ca      	lsrs	r2, r1
100009ce:	0792      	lsls	r2, r2, #30
100009d0:	d501      	bpl.n	100009d6 <receive_lunch_data+0x20a>
100009d2:	429d      	cmp	r5, r3
100009d4:	d139      	bne.n	10000a4a <receive_lunch_data+0x27e>
100009d6:	231e      	movs	r3, #30
100009d8:	0061      	lsls	r1, r4, #1
100009da:	400b      	ands	r3, r1
100009dc:	0922      	lsrs	r2, r4, #4
100009de:	9908      	ldr	r1, [sp, #32]
100009e0:	0092      	lsls	r2, r2, #2
100009e2:	5889      	ldr	r1, [r1, r2]
100009e4:	40d9      	lsrs	r1, r3
100009e6:	0788      	lsls	r0, r1, #30
100009e8:	d531      	bpl.n	10000a4e <receive_lunch_data+0x282>
100009ea:	6978      	ldr	r0, [r7, #20]
100009ec:	00a1      	lsls	r1, r4, #2
100009ee:	500e      	str	r6, [r1, r0]
100009f0:	6939      	ldr	r1, [r7, #16]
100009f2:	188a      	adds	r2, r1, r2
100009f4:	2103      	movs	r1, #3
100009f6:	4099      	lsls	r1, r3
100009f8:	6813      	ldr	r3, [r2, #0]
100009fa:	438b      	bics	r3, r1
100009fc:	6013      	str	r3, [r2, #0]
100009fe:	687b      	ldr	r3, [r7, #4]
10000a00:	3301      	adds	r3, #1
10000a02:	607b      	str	r3, [r7, #4]
10000a04:	68bb      	ldr	r3, [r7, #8]
10000a06:	3301      	adds	r3, #1
10000a08:	60bb      	str	r3, [r7, #8]
10000a0a:	2100      	movs	r1, #0
10000a0c:	2218      	movs	r2, #24
10000a0e:	4b37      	ldr	r3, [pc, #220]	; (10000aec <receive_lunch_data+0x320>)
10000a10:	a818      	add	r0, sp, #96	; 0x60
10000a12:	4798      	blx	r3
10000a14:	231c      	movs	r3, #28
10000a16:	4363      	muls	r3, r4
10000a18:	69bc      	ldr	r4, [r7, #24]
10000a1a:	ad17      	add	r5, sp, #92	; 0x5c
10000a1c:	18e4      	adds	r4, r4, r3
10000a1e:	0022      	movs	r2, r4
10000a20:	9b06      	ldr	r3, [sp, #24]
10000a22:	9317      	str	r3, [sp, #92]	; 0x5c
10000a24:	931c      	str	r3, [sp, #112]	; 0x70
10000a26:	cd0b      	ldmia	r5!, {r0, r1, r3}
10000a28:	c20b      	stmia	r2!, {r0, r1, r3}
10000a2a:	cd0b      	ldmia	r5!, {r0, r1, r3}
10000a2c:	c20b      	stmia	r2!, {r0, r1, r3}
10000a2e:	682b      	ldr	r3, [r5, #0]
10000a30:	6013      	str	r3, [r2, #0]
10000a32:	b01f      	add	sp, #124	; 0x7c
10000a34:	bdf0      	pop	{r4, r5, r6, r7, pc}
10000a36:	0023      	movs	r3, r4
10000a38:	1864      	adds	r4, r4, r1
10000a3a:	42a5      	cmp	r5, r4
10000a3c:	d800      	bhi.n	10000a40 <receive_lunch_data+0x274>
10000a3e:	1b64      	subs	r4, r4, r5
10000a40:	9a07      	ldr	r2, [sp, #28]
10000a42:	42a2      	cmp	r2, r4
10000a44:	d1a4      	bne.n	10000990 <receive_lunch_data+0x1c4>
10000a46:	429d      	cmp	r5, r3
10000a48:	d0b9      	beq.n	100009be <receive_lunch_data+0x1f2>
10000a4a:	001c      	movs	r4, r3
10000a4c:	e7c3      	b.n	100009d6 <receive_lunch_data+0x20a>
10000a4e:	07c9      	lsls	r1, r1, #31
10000a50:	d5db      	bpl.n	10000a0a <receive_lunch_data+0x23e>
10000a52:	6978      	ldr	r0, [r7, #20]
10000a54:	00a1      	lsls	r1, r4, #2
10000a56:	500e      	str	r6, [r1, r0]
10000a58:	6939      	ldr	r1, [r7, #16]
10000a5a:	188a      	adds	r2, r1, r2
10000a5c:	2103      	movs	r1, #3
10000a5e:	4099      	lsls	r1, r3
10000a60:	6813      	ldr	r3, [r2, #0]
10000a62:	438b      	bics	r3, r1
10000a64:	6013      	str	r3, [r2, #0]
10000a66:	687b      	ldr	r3, [r7, #4]
10000a68:	3301      	adds	r3, #1
10000a6a:	607b      	str	r3, [r7, #4]
10000a6c:	e7cd      	b.n	10000a0a <receive_lunch_data+0x23e>
10000a6e:	0092      	lsls	r2, r2, #2
10000a70:	18a2      	adds	r2, r4, r2
10000a72:	6811      	ldr	r1, [r2, #0]
10000a74:	1a5b      	subs	r3, r3, r1
10000a76:	9906      	ldr	r1, [sp, #24]
10000a78:	18cb      	adds	r3, r1, r3
10000a7a:	6011      	str	r1, [r2, #0]
10000a7c:	6163      	str	r3, [r4, #20]
10000a7e:	33e8      	adds	r3, #232	; 0xe8
10000a80:	da00      	bge.n	10000a84 <receive_lunch_data+0x2b8>
10000a82:	e73c      	b.n	100008fe <receive_lunch_data+0x132>
10000a84:	9a0e      	ldr	r2, [sp, #56]	; 0x38
10000a86:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
10000a88:	980c      	ldr	r0, [sp, #48]	; 0x30
10000a8a:	990d      	ldr	r1, [sp, #52]	; 0x34
10000a8c:	4f22      	ldr	r7, [pc, #136]	; (10000b18 <receive_lunch_data+0x34c>)
10000a8e:	47b8      	blx	r7
10000a90:	4b1b      	ldr	r3, [pc, #108]	; (10000b00 <receive_lunch_data+0x334>)
10000a92:	681a      	ldr	r2, [r3, #0]
10000a94:	6813      	ldr	r3, [r2, #0]
10000a96:	429d      	cmp	r5, r3
10000a98:	d100      	bne.n	10000a9c <receive_lunch_data+0x2d0>
10000a9a:	e730      	b.n	100008fe <receive_lunch_data+0x132>
10000a9c:	6913      	ldr	r3, [r2, #16]
10000a9e:	9909      	ldr	r1, [sp, #36]	; 0x24
10000aa0:	469c      	mov	ip, r3
10000aa2:	4461      	add	r1, ip
10000aa4:	6808      	ldr	r0, [r1, #0]
10000aa6:	9d07      	ldr	r5, [sp, #28]
10000aa8:	0003      	movs	r3, r0
10000aaa:	40eb      	lsrs	r3, r5
10000aac:	079b      	lsls	r3, r3, #30
10000aae:	d000      	beq.n	10000ab2 <receive_lunch_data+0x2e6>
10000ab0:	e725      	b.n	100008fe <receive_lunch_data+0x132>
10000ab2:	2301      	movs	r3, #1
10000ab4:	40ab      	lsls	r3, r5
10000ab6:	4303      	orrs	r3, r0
10000ab8:	600b      	str	r3, [r1, #0]
10000aba:	6853      	ldr	r3, [r2, #4]
10000abc:	3b01      	subs	r3, #1
10000abe:	6053      	str	r3, [r2, #4]
10000ac0:	e71d      	b.n	100008fe <receive_lunch_data+0x132>
10000ac2:	46c0      	nop			; (mov r8, r8)
10000ac4:	00005821 	.word	0x00005821
10000ac8:	100093ec 	.word	0x100093ec
10000acc:	0003ade5 	.word	0x0003ade5
10000ad0:	40568000 	.word	0x40568000
10000ad4:	00039389 	.word	0x00039389
10000ad8:	40330000 	.word	0x40330000
10000adc:	0003a211 	.word	0x0003a211
10000ae0:	404e0000 	.word	0x404e0000
10000ae4:	000399a9 	.word	0x000399a9
10000ae8:	0003ad7d 	.word	0x0003ad7d
10000aec:	00005859 	.word	0x00005859
10000af0:	10009401 	.word	0x10009401
10000af4:	000066b1 	.word	0x000066b1
10000af8:	10009370 	.word	0x10009370
10000afc:	100006c1 	.word	0x100006c1
10000b00:	20014d5c 	.word	0x20014d5c
10000b04:	0002ee49 	.word	0x0002ee49
10000b08:	10009369 	.word	0x10009369
10000b0c:	1000936d 	.word	0x1000936d
10000b10:	1000938f 	.word	0x1000938f
10000b14:	100002fd 	.word	0x100002fd
10000b18:	10000511 	.word	0x10000511

10000b1c <init_lunch_manager>:
10000b1c:	b510      	push	{r4, lr}
10000b1e:	211c      	movs	r1, #28
10000b20:	4c05      	ldr	r4, [pc, #20]	; (10000b38 <init_lunch_manager+0x1c>)
10000b22:	2001      	movs	r0, #1
10000b24:	47a0      	blx	r4
10000b26:	4b05      	ldr	r3, [pc, #20]	; (10000b3c <init_lunch_manager+0x20>)
10000b28:	211c      	movs	r1, #28
10000b2a:	6018      	str	r0, [r3, #0]
10000b2c:	2001      	movs	r0, #1
10000b2e:	47a0      	blx	r4
10000b30:	4b03      	ldr	r3, [pc, #12]	; (10000b40 <init_lunch_manager+0x24>)
10000b32:	6018      	str	r0, [r3, #0]
10000b34:	bd10      	pop	{r4, pc}
10000b36:	46c0      	nop			; (mov r8, r8)
10000b38:	0002f53d 	.word	0x0002f53d
10000b3c:	20014d58 	.word	0x20014d58
10000b40:	20014d5c 	.word	0x20014d5c

10000b44 <get_key_code>:
10000b44:	3830      	subs	r0, #48	; 0x30
10000b46:	b2c0      	uxtb	r0, r0
10000b48:	b510      	push	{r4, lr}
10000b4a:	2809      	cmp	r0, #9
10000b4c:	d802      	bhi.n	10000b54 <get_key_code+0x10>
10000b4e:	4b05      	ldr	r3, [pc, #20]	; (10000b64 <get_key_code+0x20>)
10000b50:	5618      	ldrsb	r0, [r3, r0]
10000b52:	bd10      	pop	{r4, pc}
10000b54:	4904      	ldr	r1, [pc, #16]	; (10000b68 <get_key_code+0x24>)
10000b56:	4805      	ldr	r0, [pc, #20]	; (10000b6c <get_key_code+0x28>)
10000b58:	4b05      	ldr	r3, [pc, #20]	; (10000b70 <get_key_code+0x2c>)
10000b5a:	4798      	blx	r3
10000b5c:	2001      	movs	r0, #1
10000b5e:	4240      	negs	r0, r0
10000b60:	e7f7      	b.n	10000b52 <get_key_code+0xe>
10000b62:	46c0      	nop			; (mov r8, r8)
10000b64:	100094ba 	.word	0x100094ba
10000b68:	100094c4 	.word	0x100094c4
10000b6c:	10009490 	.word	0x10009490
10000b70:	000066b1 	.word	0x000066b1

10000b74 <check_press>:
10000b74:	b570      	push	{r4, r5, r6, lr}
10000b76:	4d0e      	ldr	r5, [pc, #56]	; (10000bb0 <check_press+0x3c>)
10000b78:	4b0e      	ldr	r3, [pc, #56]	; (10000bb4 <check_press+0x40>)
10000b7a:	7828      	ldrb	r0, [r5, #0]
10000b7c:	4798      	blx	r3
10000b7e:	4c0e      	ldr	r4, [pc, #56]	; (10000bb8 <check_press+0x44>)
10000b80:	6823      	ldr	r3, [r4, #0]
10000b82:	3301      	adds	r3, #1
10000b84:	6023      	str	r3, [r4, #0]
10000b86:	2b0e      	cmp	r3, #14
10000b88:	dd05      	ble.n	10000b96 <check_press+0x22>
10000b8a:	4b0c      	ldr	r3, [pc, #48]	; (10000bbc <check_press+0x48>)
10000b8c:	681b      	ldr	r3, [r3, #0]
10000b8e:	4798      	blx	r3
10000b90:	2300      	movs	r3, #0
10000b92:	6023      	str	r3, [r4, #0]
10000b94:	bd70      	pop	{r4, r5, r6, pc}
10000b96:	200a      	movs	r0, #10
10000b98:	4b09      	ldr	r3, [pc, #36]	; (10000bc0 <check_press+0x4c>)
10000b9a:	4798      	blx	r3
10000b9c:	2800      	cmp	r0, #0
10000b9e:	d004      	beq.n	10000baa <check_press+0x36>
10000ba0:	2114      	movs	r1, #20
10000ba2:	7828      	ldrb	r0, [r5, #0]
10000ba4:	4b07      	ldr	r3, [pc, #28]	; (10000bc4 <check_press+0x50>)
10000ba6:	4798      	blx	r3
10000ba8:	e7f4      	b.n	10000b94 <check_press+0x20>
10000baa:	6020      	str	r0, [r4, #0]
10000bac:	e7f2      	b.n	10000b94 <check_press+0x20>
10000bae:	46c0      	nop			; (mov r8, r8)
10000bb0:	20014d64 	.word	0x20014d64
10000bb4:	1000330d 	.word	0x1000330d
10000bb8:	20014d60 	.word	0x20014d60
10000bbc:	20014d68 	.word	0x20014d68
10000bc0:	100036ad 	.word	0x100036ad
10000bc4:	100032b9 	.word	0x100032b9

10000bc8 <lunch_pair_button_init>:
10000bc8:	4b0d      	ldr	r3, [pc, #52]	; (10000c00 <lunch_pair_button_init+0x38>)
10000bca:	b510      	push	{r4, lr}
10000bcc:	2100      	movs	r1, #0
10000bce:	6018      	str	r0, [r3, #0]
10000bd0:	4b0c      	ldr	r3, [pc, #48]	; (10000c04 <lunch_pair_button_init+0x3c>)
10000bd2:	480d      	ldr	r0, [pc, #52]	; (10000c08 <lunch_pair_button_init+0x40>)
10000bd4:	4798      	blx	r3
10000bd6:	4b0d      	ldr	r3, [pc, #52]	; (10000c0c <lunch_pair_button_init+0x44>)
10000bd8:	7018      	strb	r0, [r3, #0]
10000bda:	200a      	movs	r0, #10
10000bdc:	4b0c      	ldr	r3, [pc, #48]	; (10000c10 <lunch_pair_button_init+0x48>)
10000bde:	4798      	blx	r3
10000be0:	200a      	movs	r0, #10
10000be2:	4b0c      	ldr	r3, [pc, #48]	; (10000c14 <lunch_pair_button_init+0x4c>)
10000be4:	4798      	blx	r3
10000be6:	2103      	movs	r1, #3
10000be8:	4a0b      	ldr	r2, [pc, #44]	; (10000c18 <lunch_pair_button_init+0x50>)
10000bea:	200a      	movs	r0, #10
10000bec:	4b0b      	ldr	r3, [pc, #44]	; (10000c1c <lunch_pair_button_init+0x54>)
10000bee:	4798      	blx	r3
10000bf0:	200a      	movs	r0, #10
10000bf2:	4b0b      	ldr	r3, [pc, #44]	; (10000c20 <lunch_pair_button_init+0x58>)
10000bf4:	4798      	blx	r3
10000bf6:	200a      	movs	r0, #10
10000bf8:	4b0a      	ldr	r3, [pc, #40]	; (10000c24 <lunch_pair_button_init+0x5c>)
10000bfa:	4798      	blx	r3
10000bfc:	bd10      	pop	{r4, pc}
10000bfe:	46c0      	nop			; (mov r8, r8)
10000c00:	20014d68 	.word	0x20014d68
10000c04:	100031f1 	.word	0x100031f1
10000c08:	10000b75 	.word	0x10000b75
10000c0c:	20014d64 	.word	0x20014d64
10000c10:	1000345d 	.word	0x1000345d
10000c14:	10003549 	.word	0x10003549
10000c18:	20014001 	.word	0x20014001
10000c1c:	100030f9 	.word	0x100030f9
10000c20:	10003665 	.word	0x10003665
10000c24:	200143ad 	.word	0x200143ad

10000c28 <scan_create_cfm>:
10000c28:	4b01      	ldr	r3, [pc, #4]	; (10000c30 <scan_create_cfm+0x8>)
10000c2a:	7018      	strb	r0, [r3, #0]
10000c2c:	4770      	bx	lr
10000c2e:	46c0      	nop			; (mov r8, r8)
10000c30:	20014056 	.word	0x20014056

10000c34 <lunch_gap_s_start_scan>:
10000c34:	b51f      	push	{r0, r1, r2, r3, r4, lr}
10000c36:	4b08      	ldr	r3, [pc, #32]	; (10000c58 <lunch_gap_s_start_scan+0x24>)
10000c38:	4668      	mov	r0, sp
10000c3a:	4798      	blx	r3
10000c3c:	4b07      	ldr	r3, [pc, #28]	; (10000c5c <lunch_gap_s_start_scan+0x28>)
10000c3e:	4669      	mov	r1, sp
10000c40:	7818      	ldrb	r0, [r3, #0]
10000c42:	4b07      	ldr	r3, [pc, #28]	; (10000c60 <lunch_gap_s_start_scan+0x2c>)
10000c44:	4798      	blx	r3
10000c46:	1e03      	subs	r3, r0, #0
10000c48:	d004      	beq.n	10000c54 <lunch_gap_s_start_scan+0x20>
10000c4a:	4a06      	ldr	r2, [pc, #24]	; (10000c64 <lunch_gap_s_start_scan+0x30>)
10000c4c:	4906      	ldr	r1, [pc, #24]	; (10000c68 <lunch_gap_s_start_scan+0x34>)
10000c4e:	4807      	ldr	r0, [pc, #28]	; (10000c6c <lunch_gap_s_start_scan+0x38>)
10000c50:	4c07      	ldr	r4, [pc, #28]	; (10000c70 <lunch_gap_s_start_scan+0x3c>)
10000c52:	47a0      	blx	r4
10000c54:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
10000c56:	46c0      	nop			; (mov r8, r8)
10000c58:	100061d1 	.word	0x100061d1
10000c5c:	20014056 	.word	0x20014056
10000c60:	1000607d 	.word	0x1000607d
10000c64:	10009789 	.word	0x10009789
10000c68:	10009743 	.word	0x10009743
10000c6c:	10009509 	.word	0x10009509
10000c70:	000066b1 	.word	0x000066b1

10000c74 <lunch_gap_s_disc>:
10000c74:	b510      	push	{r4, lr}
10000c76:	2008      	movs	r0, #8
10000c78:	4b01      	ldr	r3, [pc, #4]	; (10000c80 <lunch_gap_s_disc+0xc>)
10000c7a:	4798      	blx	r3
10000c7c:	bd10      	pop	{r4, pc}
10000c7e:	46c0      	nop			; (mov r8, r8)
10000c80:	10002ba5 	.word	0x10002ba5

10000c84 <lunch_gap_s_adv_stop>:
10000c84:	b510      	push	{r4, lr}
10000c86:	200e      	movs	r0, #14
10000c88:	4b01      	ldr	r3, [pc, #4]	; (10000c90 <lunch_gap_s_adv_stop+0xc>)
10000c8a:	4798      	blx	r3
10000c8c:	bd10      	pop	{r4, pc}
10000c8e:	46c0      	nop			; (mov r8, r8)
10000c90:	10002ba5 	.word	0x10002ba5

10000c94 <lunch_gap_s_adv1_stop_reconning>:
10000c94:	b510      	push	{r4, lr}
10000c96:	2005      	movs	r0, #5
10000c98:	4b01      	ldr	r3, [pc, #4]	; (10000ca0 <lunch_gap_s_adv1_stop_reconning+0xc>)
10000c9a:	4798      	blx	r3
10000c9c:	bd10      	pop	{r4, pc}
10000c9e:	46c0      	nop			; (mov r8, r8)
10000ca0:	10002ba5 	.word	0x10002ba5

10000ca4 <lunch_gap_s_adv0_stop_reconning>:
10000ca4:	b510      	push	{r4, lr}
10000ca6:	2004      	movs	r0, #4
10000ca8:	4b01      	ldr	r3, [pc, #4]	; (10000cb0 <lunch_gap_s_adv0_stop_reconning+0xc>)
10000caa:	4798      	blx	r3
10000cac:	bd10      	pop	{r4, pc}
10000cae:	46c0      	nop			; (mov r8, r8)
10000cb0:	10002ba5 	.word	0x10002ba5

10000cb4 <lunch_gap_s_adv1_pairing>:
10000cb4:	b510      	push	{r4, lr}
10000cb6:	2003      	movs	r0, #3
10000cb8:	4b01      	ldr	r3, [pc, #4]	; (10000cc0 <lunch_gap_s_adv1_pairing+0xc>)
10000cba:	4798      	blx	r3
10000cbc:	bd10      	pop	{r4, pc}
10000cbe:	46c0      	nop			; (mov r8, r8)
10000cc0:	10002ba5 	.word	0x10002ba5

10000cc4 <lunch_gap_s_adv0_reconning>:
10000cc4:	b510      	push	{r4, lr}
10000cc6:	2002      	movs	r0, #2
10000cc8:	4b01      	ldr	r3, [pc, #4]	; (10000cd0 <lunch_gap_s_adv0_reconning+0xc>)
10000cca:	4798      	blx	r3
10000ccc:	bd10      	pop	{r4, pc}
10000cce:	46c0      	nop			; (mov r8, r8)
10000cd0:	10002ba5 	.word	0x10002ba5

10000cd4 <gap_pair_ind>:
10000cd4:	b510      	push	{r4, lr}
10000cd6:	884a      	ldrh	r2, [r1, #2]
10000cd8:	2006      	movs	r0, #6
10000cda:	4b03      	ldr	r3, [pc, #12]	; (10000ce8 <gap_pair_ind+0x14>)
10000cdc:	2a00      	cmp	r2, #0
10000cde:	d000      	beq.n	10000ce2 <gap_pair_ind+0xe>
10000ce0:	2005      	movs	r0, #5
10000ce2:	4798      	blx	r3
10000ce4:	bd10      	pop	{r4, pc}
10000ce6:	46c0      	nop			; (mov r8, r8)
10000ce8:	10002ba5 	.word	0x10002ba5

10000cec <lunch_gap_s_conn>:
10000cec:	b510      	push	{r4, lr}
10000cee:	4906      	ldr	r1, [pc, #24]	; (10000d08 <lunch_gap_s_conn+0x1c>)
10000cf0:	4b06      	ldr	r3, [pc, #24]	; (10000d0c <lunch_gap_s_conn+0x20>)
10000cf2:	4807      	ldr	r0, [pc, #28]	; (10000d10 <lunch_gap_s_conn+0x24>)
10000cf4:	4798      	blx	r3
10000cf6:	4b07      	ldr	r3, [pc, #28]	; (10000d14 <lunch_gap_s_conn+0x28>)
10000cf8:	2100      	movs	r1, #0
10000cfa:	7818      	ldrb	r0, [r3, #0]
10000cfc:	4b06      	ldr	r3, [pc, #24]	; (10000d18 <lunch_gap_s_conn+0x2c>)
10000cfe:	4798      	blx	r3
10000d00:	2007      	movs	r0, #7
10000d02:	4b06      	ldr	r3, [pc, #24]	; (10000d1c <lunch_gap_s_conn+0x30>)
10000d04:	4798      	blx	r3
10000d06:	bd10      	pop	{r4, pc}
10000d08:	10009743 	.word	0x10009743
10000d0c:	000066b1 	.word	0x000066b1
10000d10:	10009545 	.word	0x10009545
10000d14:	20014055 	.word	0x20014055
10000d18:	10005f1d 	.word	0x10005f1d
10000d1c:	10002ba5 	.word	0x10002ba5

10000d20 <lunch_start_adv>:
10000d20:	b510      	push	{r4, lr}
10000d22:	4b09      	ldr	r3, [pc, #36]	; (10000d48 <lunch_start_adv+0x28>)
10000d24:	781c      	ldrb	r4, [r3, #0]
10000d26:	4b09      	ldr	r3, [pc, #36]	; (10000d4c <lunch_start_adv+0x2c>)
10000d28:	7818      	ldrb	r0, [r3, #0]
10000d2a:	4b09      	ldr	r3, [pc, #36]	; (10000d50 <lunch_start_adv+0x30>)
10000d2c:	4798      	blx	r3
10000d2e:	4b09      	ldr	r3, [pc, #36]	; (10000d54 <lunch_start_adv+0x34>)
10000d30:	0001      	movs	r1, r0
10000d32:	0020      	movs	r0, r4
10000d34:	4798      	blx	r3
10000d36:	1e03      	subs	r3, r0, #0
10000d38:	d004      	beq.n	10000d44 <lunch_start_adv+0x24>
10000d3a:	4a07      	ldr	r2, [pc, #28]	; (10000d58 <lunch_start_adv+0x38>)
10000d3c:	4907      	ldr	r1, [pc, #28]	; (10000d5c <lunch_start_adv+0x3c>)
10000d3e:	4808      	ldr	r0, [pc, #32]	; (10000d60 <lunch_start_adv+0x40>)
10000d40:	4c08      	ldr	r4, [pc, #32]	; (10000d64 <lunch_start_adv+0x44>)
10000d42:	47a0      	blx	r4
10000d44:	bd10      	pop	{r4, pc}
10000d46:	46c0      	nop			; (mov r8, r8)
10000d48:	20014054 	.word	0x20014054
10000d4c:	20014d6f 	.word	0x20014d6f
10000d50:	10005225 	.word	0x10005225
10000d54:	100050a1 	.word	0x100050a1
10000d58:	10009768 	.word	0x10009768
10000d5c:	10009743 	.word	0x10009743
10000d60:	1000956f 	.word	0x1000956f
10000d64:	000066b1 	.word	0x000066b1

10000d68 <lunch_gap_update_bond_information>:
10000d68:	b510      	push	{r4, lr}
10000d6a:	4b09      	ldr	r3, [pc, #36]	; (10000d90 <lunch_gap_update_bond_information+0x28>)
10000d6c:	4798      	blx	r3
10000d6e:	4c09      	ldr	r4, [pc, #36]	; (10000d94 <lunch_gap_update_bond_information+0x2c>)
10000d70:	1c43      	adds	r3, r0, #1
10000d72:	d00a      	beq.n	10000d8a <lunch_gap_update_bond_information+0x22>
10000d74:	7020      	strb	r0, [r4, #0]
10000d76:	4b08      	ldr	r3, [pc, #32]	; (10000d98 <lunch_gap_update_bond_information+0x30>)
10000d78:	4798      	blx	r3
10000d7a:	2300      	movs	r3, #0
10000d7c:	56e3      	ldrsb	r3, [r4, r3]
10000d7e:	4a07      	ldr	r2, [pc, #28]	; (10000d9c <lunch_gap_update_bond_information+0x34>)
10000d80:	4118      	asrs	r0, r3
10000d82:	2301      	movs	r3, #1
10000d84:	4383      	bics	r3, r0
10000d86:	7013      	strb	r3, [r2, #0]
10000d88:	bd10      	pop	{r4, pc}
10000d8a:	2300      	movs	r3, #0
10000d8c:	7023      	strb	r3, [r4, #0]
10000d8e:	e7f2      	b.n	10000d76 <lunch_gap_update_bond_information+0xe>
10000d90:	10007e21 	.word	0x10007e21
10000d94:	20014d6d 	.word	0x20014d6d
10000d98:	10007db9 	.word	0x10007db9
10000d9c:	20014d6f 	.word	0x20014d6f

10000da0 <lunch_gap_s_init>:
10000da0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10000da2:	4b1b      	ldr	r3, [pc, #108]	; (10000e10 <lunch_gap_s_init+0x70>)
10000da4:	4798      	blx	r3
10000da6:	4c1b      	ldr	r4, [pc, #108]	; (10000e14 <lunch_gap_s_init+0x74>)
10000da8:	4f1b      	ldr	r7, [pc, #108]	; (10000e18 <lunch_gap_s_init+0x78>)
10000daa:	7825      	ldrb	r5, [r4, #0]
10000dac:	2d00      	cmp	r5, #0
10000dae:	d109      	bne.n	10000dc4 <lunch_gap_s_init+0x24>
10000db0:	4b1a      	ldr	r3, [pc, #104]	; (10000e1c <lunch_gap_s_init+0x7c>)
10000db2:	4668      	mov	r0, sp
10000db4:	4798      	blx	r3
10000db6:	0028      	movs	r0, r5
10000db8:	47b8      	blx	r7
10000dba:	2207      	movs	r2, #7
10000dbc:	4669      	mov	r1, sp
10000dbe:	4b18      	ldr	r3, [pc, #96]	; (10000e20 <lunch_gap_s_init+0x80>)
10000dc0:	300a      	adds	r0, #10
10000dc2:	4798      	blx	r3
10000dc4:	2200      	movs	r2, #0
10000dc6:	4e17      	ldr	r6, [pc, #92]	; (10000e24 <lunch_gap_s_init+0x84>)
10000dc8:	7821      	ldrb	r1, [r4, #0]
10000dca:	56b2      	ldrsb	r2, [r6, r2]
10000dcc:	4b16      	ldr	r3, [pc, #88]	; (10000e28 <lunch_gap_s_init+0x88>)
10000dce:	3201      	adds	r2, #1
10000dd0:	2900      	cmp	r1, #0
10000dd2:	d100      	bne.n	10000dd6 <lunch_gap_s_init+0x36>
10000dd4:	4b15      	ldr	r3, [pc, #84]	; (10000e2c <lunch_gap_s_init+0x8c>)
10000dd6:	4916      	ldr	r1, [pc, #88]	; (10000e30 <lunch_gap_s_init+0x90>)
10000dd8:	4816      	ldr	r0, [pc, #88]	; (10000e34 <lunch_gap_s_init+0x94>)
10000dda:	4d17      	ldr	r5, [pc, #92]	; (10000e38 <lunch_gap_s_init+0x98>)
10000ddc:	47a8      	blx	r5
10000dde:	4b17      	ldr	r3, [pc, #92]	; (10000e3c <lunch_gap_s_init+0x9c>)
10000de0:	4817      	ldr	r0, [pc, #92]	; (10000e40 <lunch_gap_s_init+0xa0>)
10000de2:	4798      	blx	r3
10000de4:	7820      	ldrb	r0, [r4, #0]
10000de6:	47b8      	blx	r7
10000de8:	4b16      	ldr	r3, [pc, #88]	; (10000e44 <lunch_gap_s_init+0xa4>)
10000dea:	4798      	blx	r3
10000dec:	7830      	ldrb	r0, [r6, #0]
10000dee:	4b16      	ldr	r3, [pc, #88]	; (10000e48 <lunch_gap_s_init+0xa8>)
10000df0:	4798      	blx	r3
10000df2:	4b16      	ldr	r3, [pc, #88]	; (10000e4c <lunch_gap_s_init+0xac>)
10000df4:	2000      	movs	r0, #0
10000df6:	4916      	ldr	r1, [pc, #88]	; (10000e50 <lunch_gap_s_init+0xb0>)
10000df8:	4798      	blx	r3
10000dfa:	1e03      	subs	r3, r0, #0
10000dfc:	d004      	beq.n	10000e08 <lunch_gap_s_init+0x68>
10000dfe:	4a15      	ldr	r2, [pc, #84]	; (10000e54 <lunch_gap_s_init+0xb4>)
10000e00:	490b      	ldr	r1, [pc, #44]	; (10000e30 <lunch_gap_s_init+0x90>)
10000e02:	4815      	ldr	r0, [pc, #84]	; (10000e58 <lunch_gap_s_init+0xb8>)
10000e04:	4c0c      	ldr	r4, [pc, #48]	; (10000e38 <lunch_gap_s_init+0x98>)
10000e06:	47a0      	blx	r4
10000e08:	2001      	movs	r0, #1
10000e0a:	4b14      	ldr	r3, [pc, #80]	; (10000e5c <lunch_gap_s_init+0xbc>)
10000e0c:	4798      	blx	r3
10000e0e:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10000e10:	10000d69 	.word	0x10000d69
10000e14:	20014d6f 	.word	0x20014d6f
10000e18:	10005215 	.word	0x10005215
10000e1c:	10007e2d 	.word	0x10007e2d
10000e20:	00005821 	.word	0x00005821
10000e24:	20014d6d 	.word	0x20014d6d
10000e28:	100095aa 	.word	0x100095aa
10000e2c:	100095b2 	.word	0x100095b2
10000e30:	10009743 	.word	0x10009743
10000e34:	100095bf 	.word	0x100095bf
10000e38:	000066b1 	.word	0x000066b1
10000e3c:	10004c99 	.word	0x10004c99
10000e40:	100010dd 	.word	0x100010dd
10000e44:	10004cbd 	.word	0x10004cbd
10000e48:	10007dc5 	.word	0x10007dc5
10000e4c:	10006031 	.word	0x10006031
10000e50:	10009888 	.word	0x10009888
10000e54:	10009756 	.word	0x10009756
10000e58:	100095de 	.word	0x100095de
10000e5c:	10002ba5 	.word	0x10002ba5

10000e60 <gap_pair_numeric_ind>:
10000e60:	b510      	push	{r4, lr}
10000e62:	0004      	movs	r4, r0
10000e64:	000a      	movs	r2, r1
10000e66:	4b04      	ldr	r3, [pc, #16]	; (10000e78 <gap_pair_numeric_ind+0x18>)
10000e68:	4904      	ldr	r1, [pc, #16]	; (10000e7c <gap_pair_numeric_ind+0x1c>)
10000e6a:	4805      	ldr	r0, [pc, #20]	; (10000e80 <gap_pair_numeric_ind+0x20>)
10000e6c:	4798      	blx	r3
10000e6e:	2101      	movs	r1, #1
10000e70:	0020      	movs	r0, r4
10000e72:	4b04      	ldr	r3, [pc, #16]	; (10000e84 <gap_pair_numeric_ind+0x24>)
10000e74:	4798      	blx	r3
10000e76:	bd10      	pop	{r4, pc}
10000e78:	000066b1 	.word	0x000066b1
10000e7c:	10009743 	.word	0x10009743
10000e80:	1000960f 	.word	0x1000960f
10000e84:	10007fe9 	.word	0x10007fe9

10000e88 <gap_pair_req_ind>:
10000e88:	b510      	push	{r4, lr}
10000e8a:	4b03      	ldr	r3, [pc, #12]	; (10000e98 <gap_pair_req_ind+0x10>)
10000e8c:	2200      	movs	r2, #0
10000e8e:	7019      	strb	r1, [r3, #0]
10000e90:	4902      	ldr	r1, [pc, #8]	; (10000e9c <gap_pair_req_ind+0x14>)
10000e92:	4b03      	ldr	r3, [pc, #12]	; (10000ea0 <gap_pair_req_ind+0x18>)
10000e94:	4798      	blx	r3
10000e96:	bd10      	pop	{r4, pc}
10000e98:	20014d6c 	.word	0x20014d6c
10000e9c:	10000ea5 	.word	0x10000ea5
10000ea0:	10008055 	.word	0x10008055

10000ea4 <cb_already_bonded>:
10000ea4:	b537      	push	{r0, r1, r2, r4, r5, lr}
10000ea6:	4b1a      	ldr	r3, [pc, #104]	; (10000f10 <cb_already_bonded+0x6c>)
10000ea8:	0004      	movs	r4, r0
10000eaa:	781b      	ldrb	r3, [r3, #0]
10000eac:	000a      	movs	r2, r1
10000eae:	b25b      	sxtb	r3, r3
10000eb0:	2501      	movs	r5, #1
10000eb2:	428b      	cmp	r3, r1
10000eb4:	d005      	beq.n	10000ec2 <cb_already_bonded+0x1e>
10000eb6:	4b17      	ldr	r3, [pc, #92]	; (10000f14 <cb_already_bonded+0x70>)
10000eb8:	781d      	ldrb	r5, [r3, #0]
10000eba:	2d00      	cmp	r5, #0
10000ebc:	d019      	beq.n	10000ef2 <cb_already_bonded+0x4e>
10000ebe:	1c4b      	adds	r3, r1, #1
10000ec0:	d119      	bne.n	10000ef6 <cb_already_bonded+0x52>
10000ec2:	4b15      	ldr	r3, [pc, #84]	; (10000f18 <cb_already_bonded+0x74>)
10000ec4:	4669      	mov	r1, sp
10000ec6:	781a      	ldrb	r2, [r3, #0]
10000ec8:	2303      	movs	r3, #3
10000eca:	700b      	strb	r3, [r1, #0]
10000ecc:	2300      	movs	r3, #0
10000ece:	704b      	strb	r3, [r1, #1]
10000ed0:	3309      	adds	r3, #9
10000ed2:	0712      	lsls	r2, r2, #28
10000ed4:	d400      	bmi.n	10000ed8 <cb_already_bonded+0x34>
10000ed6:	3b08      	subs	r3, #8
10000ed8:	466a      	mov	r2, sp
10000eda:	7093      	strb	r3, [r2, #2]
10000edc:	2310      	movs	r3, #16
10000ede:	70d3      	strb	r3, [r2, #3]
10000ee0:	3b0d      	subs	r3, #13
10000ee2:	0029      	movs	r1, r5
10000ee4:	0020      	movs	r0, r4
10000ee6:	7113      	strb	r3, [r2, #4]
10000ee8:	7153      	strb	r3, [r2, #5]
10000eea:	4c0c      	ldr	r4, [pc, #48]	; (10000f1c <cb_already_bonded+0x78>)
10000eec:	2300      	movs	r3, #0
10000eee:	47a0      	blx	r4
10000ef0:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
10000ef2:	1c4b      	adds	r3, r1, #1
10000ef4:	d006      	beq.n	10000f04 <cb_already_bonded+0x60>
10000ef6:	490a      	ldr	r1, [pc, #40]	; (10000f20 <cb_already_bonded+0x7c>)
10000ef8:	480a      	ldr	r0, [pc, #40]	; (10000f24 <cb_already_bonded+0x80>)
10000efa:	4b0b      	ldr	r3, [pc, #44]	; (10000f28 <cb_already_bonded+0x84>)
10000efc:	3201      	adds	r2, #1
10000efe:	4798      	blx	r3
10000f00:	2500      	movs	r5, #0
10000f02:	e7de      	b.n	10000ec2 <cb_already_bonded+0x1e>
10000f04:	4906      	ldr	r1, [pc, #24]	; (10000f20 <cb_already_bonded+0x7c>)
10000f06:	4b08      	ldr	r3, [pc, #32]	; (10000f28 <cb_already_bonded+0x84>)
10000f08:	4808      	ldr	r0, [pc, #32]	; (10000f2c <cb_already_bonded+0x88>)
10000f0a:	4798      	blx	r3
10000f0c:	e7d9      	b.n	10000ec2 <cb_already_bonded+0x1e>
10000f0e:	46c0      	nop			; (mov r8, r8)
10000f10:	20014d6d 	.word	0x20014d6d
10000f14:	20014d6f 	.word	0x20014d6f
10000f18:	20014d6c 	.word	0x20014d6c
10000f1c:	10007f59 	.word	0x10007f59
10000f20:	10009743 	.word	0x10009743
10000f24:	10009634 	.word	0x10009634
10000f28:	000066b1 	.word	0x000066b1
10000f2c:	1000966a 	.word	0x1000966a

10000f30 <gap_ext_adv_ind>:
10000f30:	b530      	push	{r4, r5, lr}
10000f32:	7803      	ldrb	r3, [r0, #0]
10000f34:	0004      	movs	r4, r0
10000f36:	b087      	sub	sp, #28
10000f38:	071b      	lsls	r3, r3, #28
10000f3a:	d51e      	bpl.n	10000f7a <gap_ext_adv_ind+0x4a>
10000f3c:	1c45      	adds	r5, r0, #1
10000f3e:	0028      	movs	r0, r5
10000f40:	4b12      	ldr	r3, [pc, #72]	; (10000f8c <gap_ext_adv_ind+0x5c>)
10000f42:	4798      	blx	r3
10000f44:	2800      	cmp	r0, #0
10000f46:	d018      	beq.n	10000f7a <gap_ext_adv_ind+0x4a>
10000f48:	0028      	movs	r0, r5
10000f4a:	4b11      	ldr	r3, [pc, #68]	; (10000f90 <gap_ext_adv_ind+0x60>)
10000f4c:	4798      	blx	r3
10000f4e:	2210      	movs	r2, #16
10000f50:	2100      	movs	r1, #0
10000f52:	4b10      	ldr	r3, [pc, #64]	; (10000f94 <gap_ext_adv_ind+0x64>)
10000f54:	a802      	add	r0, sp, #8
10000f56:	4798      	blx	r3
10000f58:	0020      	movs	r0, r4
10000f5a:	7da1      	ldrb	r1, [r4, #22]
10000f5c:	4b0e      	ldr	r3, [pc, #56]	; (10000f98 <gap_ext_adv_ind+0x68>)
10000f5e:	aa02      	add	r2, sp, #8
10000f60:	3018      	adds	r0, #24
10000f62:	4798      	blx	r3
10000f64:	2800      	cmp	r0, #0
10000f66:	d10a      	bne.n	10000f7e <gap_ext_adv_ind+0x4e>
10000f68:	2310      	movs	r3, #16
10000f6a:	56e3      	ldrsb	r3, [r4, r3]
10000f6c:	9802      	ldr	r0, [sp, #8]
10000f6e:	9300      	str	r3, [sp, #0]
10000f70:	9903      	ldr	r1, [sp, #12]
10000f72:	9a04      	ldr	r2, [sp, #16]
10000f74:	9b05      	ldr	r3, [sp, #20]
10000f76:	4c09      	ldr	r4, [pc, #36]	; (10000f9c <gap_ext_adv_ind+0x6c>)
10000f78:	47a0      	blx	r4
10000f7a:	b007      	add	sp, #28
10000f7c:	bd30      	pop	{r4, r5, pc}
10000f7e:	2801      	cmp	r0, #1
10000f80:	d0fb      	beq.n	10000f7a <gap_ext_adv_ind+0x4a>
10000f82:	4907      	ldr	r1, [pc, #28]	; (10000fa0 <gap_ext_adv_ind+0x70>)
10000f84:	4b07      	ldr	r3, [pc, #28]	; (10000fa4 <gap_ext_adv_ind+0x74>)
10000f86:	4808      	ldr	r0, [pc, #32]	; (10000fa8 <gap_ext_adv_ind+0x78>)
10000f88:	4798      	blx	r3
10000f8a:	e7f6      	b.n	10000f7a <gap_ext_adv_ind+0x4a>
10000f8c:	10000163 	.word	0x10000163
10000f90:	10000161 	.word	0x10000161
10000f94:	00005859 	.word	0x00005859
10000f98:	10000075 	.word	0x10000075
10000f9c:	100007cd 	.word	0x100007cd
10000fa0:	10009743 	.word	0x10009743
10000fa4:	000066b1 	.word	0x000066b1
10000fa8:	10009691 	.word	0x10009691

10000fac <lunch_gap_delete_bond_callback>:
10000fac:	2000      	movs	r0, #0
10000fae:	b510      	push	{r4, lr}
10000fb0:	4b00      	ldr	r3, [pc, #0]	; (10000fb4 <lunch_gap_delete_bond_callback+0x8>)
10000fb2:	4798      	blx	r3
10000fb4:	00005d79 	.word	0x00005d79

10000fb8 <lunch_gap_param_nego_cfm>:
10000fb8:	b510      	push	{r4, lr}
10000fba:	2900      	cmp	r1, #0
10000fbc:	d009      	beq.n	10000fd2 <lunch_gap_param_nego_cfm+0x1a>
10000fbe:	293b      	cmp	r1, #59	; 0x3b
10000fc0:	d007      	beq.n	10000fd2 <lunch_gap_param_nego_cfm+0x1a>
10000fc2:	4b04      	ldr	r3, [pc, #16]	; (10000fd4 <lunch_gap_param_nego_cfm+0x1c>)
10000fc4:	4299      	cmp	r1, r3
10000fc6:	d004      	beq.n	10000fd2 <lunch_gap_param_nego_cfm+0x1a>
10000fc8:	4b03      	ldr	r3, [pc, #12]	; (10000fd8 <lunch_gap_param_nego_cfm+0x20>)
10000fca:	4904      	ldr	r1, [pc, #16]	; (10000fdc <lunch_gap_param_nego_cfm+0x24>)
10000fcc:	7818      	ldrb	r0, [r3, #0]
10000fce:	4b04      	ldr	r3, [pc, #16]	; (10000fe0 <lunch_gap_param_nego_cfm+0x28>)
10000fd0:	4798      	blx	r3
10000fd2:	bd10      	pop	{r4, pc}
10000fd4:	00000409 	.word	0x00000409
10000fd8:	20014055 	.word	0x20014055
10000fdc:	10009878 	.word	0x10009878
10000fe0:	10005ecd 	.word	0x10005ecd

10000fe4 <lunch_gap_init>:
10000fe4:	b510      	push	{r4, lr}
10000fe6:	4b08      	ldr	r3, [pc, #32]	; (10001008 <lunch_gap_init+0x24>)
10000fe8:	4798      	blx	r3
10000fea:	4908      	ldr	r1, [pc, #32]	; (1000100c <lunch_gap_init+0x28>)
10000fec:	4b08      	ldr	r3, [pc, #32]	; (10001010 <lunch_gap_init+0x2c>)
10000fee:	4798      	blx	r3
10000ff0:	2214      	movs	r2, #20
10000ff2:	2001      	movs	r0, #1
10000ff4:	4907      	ldr	r1, [pc, #28]	; (10001014 <lunch_gap_init+0x30>)
10000ff6:	4b08      	ldr	r3, [pc, #32]	; (10001018 <lunch_gap_init+0x34>)
10000ff8:	4798      	blx	r3
10000ffa:	2200      	movs	r2, #0
10000ffc:	2001      	movs	r0, #1
10000ffe:	0011      	movs	r1, r2
10001000:	4b06      	ldr	r3, [pc, #24]	; (1000101c <lunch_gap_init+0x38>)
10001002:	4798      	blx	r3
10001004:	bd10      	pop	{r4, pc}
10001006:	46c0      	nop			; (mov r8, r8)
10001008:	10005fb1 	.word	0x10005fb1
1000100c:	1000979c 	.word	0x1000979c
10001010:	100059a1 	.word	0x100059a1
10001014:	100097d8 	.word	0x100097d8
10001018:	1000524d 	.word	0x1000524d
1000101c:	10005281 	.word	0x10005281

10001020 <lunch_gap_disconnect>:
10001020:	b510      	push	{r4, lr}
10001022:	4b03      	ldr	r3, [pc, #12]	; (10001030 <lunch_gap_disconnect+0x10>)
10001024:	2113      	movs	r1, #19
10001026:	7818      	ldrb	r0, [r3, #0]
10001028:	4b02      	ldr	r3, [pc, #8]	; (10001034 <lunch_gap_disconnect+0x14>)
1000102a:	4798      	blx	r3
1000102c:	bd10      	pop	{r4, pc}
1000102e:	46c0      	nop			; (mov r8, r8)
10001030:	20014055 	.word	0x20014055
10001034:	10005a79 	.word	0x10005a79

10001038 <lunch_gap_nego_parameter>:
10001038:	2201      	movs	r2, #1
1000103a:	b510      	push	{r4, lr}
1000103c:	4b03      	ldr	r3, [pc, #12]	; (1000104c <lunch_gap_nego_parameter+0x14>)
1000103e:	4904      	ldr	r1, [pc, #16]	; (10001050 <lunch_gap_nego_parameter+0x18>)
10001040:	701a      	strb	r2, [r3, #0]
10001042:	4b04      	ldr	r3, [pc, #16]	; (10001054 <lunch_gap_nego_parameter+0x1c>)
10001044:	7818      	ldrb	r0, [r3, #0]
10001046:	4b04      	ldr	r3, [pc, #16]	; (10001058 <lunch_gap_nego_parameter+0x20>)
10001048:	4798      	blx	r3
1000104a:	bd10      	pop	{r4, pc}
1000104c:	20014d6e 	.word	0x20014d6e
10001050:	10009878 	.word	0x10009878
10001054:	20014055 	.word	0x20014055
10001058:	10005ecd 	.word	0x10005ecd

1000105c <lunch_gap_conn_param_updated_ind>:
1000105c:	b510      	push	{r4, lr}
1000105e:	4b05      	ldr	r3, [pc, #20]	; (10001074 <lunch_gap_conn_param_updated_ind+0x18>)
10001060:	4798      	blx	r3
10001062:	4b05      	ldr	r3, [pc, #20]	; (10001078 <lunch_gap_conn_param_updated_ind+0x1c>)
10001064:	4798      	blx	r3
10001066:	4b05      	ldr	r3, [pc, #20]	; (1000107c <lunch_gap_conn_param_updated_ind+0x20>)
10001068:	781b      	ldrb	r3, [r3, #0]
1000106a:	2b00      	cmp	r3, #0
1000106c:	d001      	beq.n	10001072 <lunch_gap_conn_param_updated_ind+0x16>
1000106e:	4b04      	ldr	r3, [pc, #16]	; (10001080 <lunch_gap_conn_param_updated_ind+0x24>)
10001070:	4798      	blx	r3
10001072:	bd10      	pop	{r4, pc}
10001074:	10005eb5 	.word	0x10005eb5
10001078:	10005f55 	.word	0x10005f55
1000107c:	20014d6e 	.word	0x20014d6e
10001080:	10001039 	.word	0x10001039

10001084 <lunch_gap_local_slave_latency>:
10001084:	2100      	movs	r1, #0
10001086:	b510      	push	{r4, lr}
10001088:	4b05      	ldr	r3, [pc, #20]	; (100010a0 <lunch_gap_local_slave_latency+0x1c>)
1000108a:	781c      	ldrb	r4, [r3, #0]
1000108c:	4288      	cmp	r0, r1
1000108e:	d103      	bne.n	10001098 <lunch_gap_local_slave_latency+0x14>
10001090:	0020      	movs	r0, r4
10001092:	4b04      	ldr	r3, [pc, #16]	; (100010a4 <lunch_gap_local_slave_latency+0x20>)
10001094:	4798      	blx	r3
10001096:	8881      	ldrh	r1, [r0, #4]
10001098:	0020      	movs	r0, r4
1000109a:	4b03      	ldr	r3, [pc, #12]	; (100010a8 <lunch_gap_local_slave_latency+0x24>)
1000109c:	4798      	blx	r3
1000109e:	bd10      	pop	{r4, pc}
100010a0:	20014055 	.word	0x20014055
100010a4:	10005eb5 	.word	0x10005eb5
100010a8:	10005f1d 	.word	0x10005f1d

100010ac <lunch_gap_remove_current_bond>:
100010ac:	b507      	push	{r0, r1, r2, lr}
100010ae:	4b04      	ldr	r3, [pc, #16]	; (100010c0 <lunch_gap_remove_current_bond+0x14>)
100010b0:	4668      	mov	r0, sp
100010b2:	4798      	blx	r3
100010b4:	2200      	movs	r2, #0
100010b6:	4668      	mov	r0, sp
100010b8:	4902      	ldr	r1, [pc, #8]	; (100010c4 <lunch_gap_remove_current_bond+0x18>)
100010ba:	4b03      	ldr	r3, [pc, #12]	; (100010c8 <lunch_gap_remove_current_bond+0x1c>)
100010bc:	4798      	blx	r3
100010be:	bd07      	pop	{r0, r1, r2, pc}
100010c0:	10007e2d 	.word	0x10007e2d
100010c4:	10000fad 	.word	0x10000fad
100010c8:	10008015 	.word	0x10008015

100010cc <lunch_gap_asm_move>:
100010cc:	b510      	push	{r4, lr}
100010ce:	0001      	movs	r1, r0
100010d0:	2001      	movs	r0, #1
100010d2:	4b01      	ldr	r3, [pc, #4]	; (100010d8 <lunch_gap_asm_move+0xc>)
100010d4:	4798      	blx	r3
100010d6:	bd10      	pop	{r4, pc}
100010d8:	100052f9 	.word	0x100052f9

100010dc <adv_state_change>:
100010dc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100010de:	0006      	movs	r6, r0
100010e0:	000b      	movs	r3, r1
100010e2:	9000      	str	r0, [sp, #0]
100010e4:	000c      	movs	r4, r1
100010e6:	0015      	movs	r5, r2
100010e8:	4929      	ldr	r1, [pc, #164]	; (10001190 <adv_state_change+0xb4>)
100010ea:	4a2a      	ldr	r2, [pc, #168]	; (10001194 <adv_state_change+0xb8>)
100010ec:	482a      	ldr	r0, [pc, #168]	; (10001198 <adv_state_change+0xbc>)
100010ee:	4f2b      	ldr	r7, [pc, #172]	; (1000119c <adv_state_change+0xc0>)
100010f0:	47b8      	blx	r7
100010f2:	1e70      	subs	r0, r6, #1
100010f4:	280a      	cmp	r0, #10
100010f6:	d80d      	bhi.n	10001114 <adv_state_change+0x38>
100010f8:	f008 f87e 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
100010fc:	24060d06 	.word	0x24060d06
10001100:	06411806 	.word	0x06411806
10001104:	0631      	.short	0x0631
10001106:	06          	.byte	0x06
10001107:	00          	.byte	0x00
10001108:	002b      	movs	r3, r5
1000110a:	0032      	movs	r2, r6
1000110c:	4920      	ldr	r1, [pc, #128]	; (10001190 <adv_state_change+0xb4>)
1000110e:	4824      	ldr	r0, [pc, #144]	; (100011a0 <adv_state_change+0xc4>)
10001110:	4c22      	ldr	r4, [pc, #136]	; (1000119c <adv_state_change+0xc0>)
10001112:	47a0      	blx	r4
10001114:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10001116:	4d23      	ldr	r5, [pc, #140]	; (100011a4 <adv_state_change+0xc8>)
10001118:	4e23      	ldr	r6, [pc, #140]	; (100011a8 <adv_state_change+0xcc>)
1000111a:	7828      	ldrb	r0, [r5, #0]
1000111c:	2800      	cmp	r0, #0
1000111e:	d108      	bne.n	10001132 <adv_state_change+0x56>
10001120:	4b22      	ldr	r3, [pc, #136]	; (100011ac <adv_state_change+0xd0>)
10001122:	4798      	blx	r3
10001124:	88c3      	ldrh	r3, [r0, #6]
10001126:	075b      	lsls	r3, r3, #29
10001128:	d503      	bpl.n	10001132 <adv_state_change+0x56>
1000112a:	7034      	strb	r4, [r6, #0]
1000112c:	4b20      	ldr	r3, [pc, #128]	; (100011b0 <adv_state_change+0xd4>)
1000112e:	4798      	blx	r3
10001130:	e7f0      	b.n	10001114 <adv_state_change+0x38>
10001132:	4b20      	ldr	r3, [pc, #128]	; (100011b4 <adv_state_change+0xd8>)
10001134:	7828      	ldrb	r0, [r5, #0]
10001136:	7034      	strb	r4, [r6, #0]
10001138:	4798      	blx	r3
1000113a:	0001      	movs	r1, r0
1000113c:	0020      	movs	r0, r4
1000113e:	4b1e      	ldr	r3, [pc, #120]	; (100011b8 <adv_state_change+0xdc>)
10001140:	4798      	blx	r3
10001142:	e7e7      	b.n	10001114 <adv_state_change+0x38>
10001144:	4b17      	ldr	r3, [pc, #92]	; (100011a4 <adv_state_change+0xc8>)
10001146:	781b      	ldrb	r3, [r3, #0]
10001148:	2b00      	cmp	r3, #0
1000114a:	d0ef      	beq.n	1000112c <adv_state_change+0x50>
1000114c:	4b16      	ldr	r3, [pc, #88]	; (100011a8 <adv_state_change+0xcc>)
1000114e:	2001      	movs	r0, #1
10001150:	781c      	ldrb	r4, [r3, #0]
10001152:	4b1a      	ldr	r3, [pc, #104]	; (100011bc <adv_state_change+0xe0>)
10001154:	4798      	blx	r3
10001156:	4b1a      	ldr	r3, [pc, #104]	; (100011c0 <adv_state_change+0xe4>)
10001158:	0001      	movs	r1, r0
1000115a:	0020      	movs	r0, r4
1000115c:	e7f0      	b.n	10001140 <adv_state_change+0x64>
1000115e:	2d00      	cmp	r5, #0
10001160:	d005      	beq.n	1000116e <adv_state_change+0x92>
10001162:	0020      	movs	r0, r4
10001164:	2364      	movs	r3, #100	; 0x64
10001166:	0029      	movs	r1, r5
10001168:	4a16      	ldr	r2, [pc, #88]	; (100011c4 <adv_state_change+0xe8>)
1000116a:	4c17      	ldr	r4, [pc, #92]	; (100011c8 <adv_state_change+0xec>)
1000116c:	47a0      	blx	r4
1000116e:	4b0d      	ldr	r3, [pc, #52]	; (100011a4 <adv_state_change+0xc8>)
10001170:	7818      	ldrb	r0, [r3, #0]
10001172:	1e43      	subs	r3, r0, #1
10001174:	4198      	sbcs	r0, r3
10001176:	4b15      	ldr	r3, [pc, #84]	; (100011cc <adv_state_change+0xf0>)
10001178:	3002      	adds	r0, #2
1000117a:	4798      	blx	r3
1000117c:	e7ca      	b.n	10001114 <adv_state_change+0x38>
1000117e:	2cff      	cmp	r4, #255	; 0xff
10001180:	d0c8      	beq.n	10001114 <adv_state_change+0x38>
10001182:	4a13      	ldr	r2, [pc, #76]	; (100011d0 <adv_state_change+0xf4>)
10001184:	2005      	movs	r0, #5
10001186:	4b11      	ldr	r3, [pc, #68]	; (100011cc <adv_state_change+0xf0>)
10001188:	4295      	cmp	r5, r2
1000118a:	d0f6      	beq.n	1000117a <adv_state_change+0x9e>
1000118c:	2004      	movs	r0, #4
1000118e:	e7f4      	b.n	1000117a <adv_state_change+0x9e>
10001190:	10009743 	.word	0x10009743
10001194:	10009778 	.word	0x10009778
10001198:	100096cb 	.word	0x100096cb
1000119c:	000066b1 	.word	0x000066b1
100011a0:	100096fe 	.word	0x100096fe
100011a4:	20014d6f 	.word	0x20014d6f
100011a8:	20014054 	.word	0x20014054
100011ac:	10005215 	.word	0x10005215
100011b0:	10000d21 	.word	0x10000d21
100011b4:	10005231 	.word	0x10005231
100011b8:	10004e19 	.word	0x10004e19
100011bc:	1000523d 	.word	0x1000523d
100011c0:	10005021 	.word	0x10005021
100011c4:	10009737 	.word	0x10009737
100011c8:	00006641 	.word	0x00006641
100011cc:	100010cd 	.word	0x100010cd
100011d0:	00000406 	.word	0x00000406

100011d4 <scan_stop_ind>:
100011d4:	b510      	push	{r4, lr}
100011d6:	200b      	movs	r0, #11
100011d8:	4b02      	ldr	r3, [pc, #8]	; (100011e4 <scan_stop_ind+0x10>)
100011da:	4798      	blx	r3
100011dc:	200c      	movs	r0, #12
100011de:	4b02      	ldr	r3, [pc, #8]	; (100011e8 <scan_stop_ind+0x14>)
100011e0:	4798      	blx	r3
100011e2:	bd10      	pop	{r4, pc}
100011e4:	100010cd 	.word	0x100010cd
100011e8:	10002ba5 	.word	0x10002ba5

100011ec <scan_start_cfm>:
100011ec:	4b08      	ldr	r3, [pc, #32]	; (10001210 <scan_start_cfm+0x24>)
100011ee:	b510      	push	{r4, lr}
100011f0:	7018      	strb	r0, [r3, #0]
100011f2:	2900      	cmp	r1, #0
100011f4:	d004      	beq.n	10001200 <scan_start_cfm+0x14>
100011f6:	23a8      	movs	r3, #168	; 0xa8
100011f8:	4a06      	ldr	r2, [pc, #24]	; (10001214 <scan_start_cfm+0x28>)
100011fa:	4c07      	ldr	r4, [pc, #28]	; (10001218 <scan_start_cfm+0x2c>)
100011fc:	005b      	lsls	r3, r3, #1
100011fe:	47a0      	blx	r4
10001200:	200a      	movs	r0, #10
10001202:	4b06      	ldr	r3, [pc, #24]	; (1000121c <scan_start_cfm+0x30>)
10001204:	4798      	blx	r3
10001206:	200b      	movs	r0, #11
10001208:	4b05      	ldr	r3, [pc, #20]	; (10001220 <scan_start_cfm+0x34>)
1000120a:	4798      	blx	r3
1000120c:	bd10      	pop	{r4, pc}
1000120e:	46c0      	nop			; (mov r8, r8)
10001210:	20014056 	.word	0x20014056
10001214:	10009737 	.word	0x10009737
10001218:	00006641 	.word	0x00006641
1000121c:	100010cd 	.word	0x100010cd
10001220:	10002ba5 	.word	0x10002ba5

10001224 <gap_init_cfm>:
10001224:	b510      	push	{r4, lr}
10001226:	2800      	cmp	r0, #0
10001228:	d004      	beq.n	10001234 <gap_init_cfm+0x10>
1000122a:	22c3      	movs	r2, #195	; 0xc3
1000122c:	4905      	ldr	r1, [pc, #20]	; (10001244 <gap_init_cfm+0x20>)
1000122e:	4806      	ldr	r0, [pc, #24]	; (10001248 <gap_init_cfm+0x24>)
10001230:	4b06      	ldr	r3, [pc, #24]	; (1000124c <gap_init_cfm+0x28>)
10001232:	4798      	blx	r3
10001234:	2000      	movs	r0, #0
10001236:	4b06      	ldr	r3, [pc, #24]	; (10001250 <gap_init_cfm+0x2c>)
10001238:	4798      	blx	r3
1000123a:	2001      	movs	r0, #1
1000123c:	4b05      	ldr	r3, [pc, #20]	; (10001254 <gap_init_cfm+0x30>)
1000123e:	4798      	blx	r3
10001240:	bd10      	pop	{r4, pc}
10001242:	46c0      	nop			; (mov r8, r8)
10001244:	10009737 	.word	0x10009737
10001248:	1000b4d2 	.word	0x1000b4d2
1000124c:	00006609 	.word	0x00006609
10001250:	10002ea9 	.word	0x10002ea9
10001254:	100010cd 	.word	0x100010cd

10001258 <gap_disc_ind>:
10001258:	b510      	push	{r4, lr}
1000125a:	4b05      	ldr	r3, [pc, #20]	; (10001270 <gap_disc_ind+0x18>)
1000125c:	781b      	ldrb	r3, [r3, #0]
1000125e:	2b00      	cmp	r3, #0
10001260:	d001      	beq.n	10001266 <gap_disc_ind+0xe>
10001262:	4b04      	ldr	r3, [pc, #16]	; (10001274 <gap_disc_ind+0x1c>)
10001264:	4798      	blx	r3
10001266:	2008      	movs	r0, #8
10001268:	4b03      	ldr	r3, [pc, #12]	; (10001278 <gap_disc_ind+0x20>)
1000126a:	4798      	blx	r3
1000126c:	bd10      	pop	{r4, pc}
1000126e:	46c0      	nop			; (mov r8, r8)
10001270:	20014d6f 	.word	0x20014d6f
10001274:	10000d69 	.word	0x10000d69
10001278:	100010cd 	.word	0x100010cd

1000127c <gap_conn_ind>:
1000127c:	b570      	push	{r4, r5, r6, lr}
1000127e:	0004      	movs	r4, r0
10001280:	000d      	movs	r5, r1
10001282:	4b07      	ldr	r3, [pc, #28]	; (100012a0 <gap_conn_ind+0x24>)
10001284:	7018      	strb	r0, [r3, #0]
10001286:	4b07      	ldr	r3, [pc, #28]	; (100012a4 <gap_conn_ind+0x28>)
10001288:	4798      	blx	r3
1000128a:	2100      	movs	r1, #0
1000128c:	0020      	movs	r0, r4
1000128e:	4b06      	ldr	r3, [pc, #24]	; (100012a8 <gap_conn_ind+0x2c>)
10001290:	4798      	blx	r3
10001292:	0028      	movs	r0, r5
10001294:	4b05      	ldr	r3, [pc, #20]	; (100012ac <gap_conn_ind+0x30>)
10001296:	4798      	blx	r3
10001298:	2007      	movs	r0, #7
1000129a:	4b05      	ldr	r3, [pc, #20]	; (100012b0 <gap_conn_ind+0x34>)
1000129c:	4798      	blx	r3
1000129e:	bd70      	pop	{r4, r5, r6, pc}
100012a0:	20014055 	.word	0x20014055
100012a4:	10005a49 	.word	0x10005a49
100012a8:	10002eb5 	.word	0x10002eb5
100012ac:	10005f55 	.word	0x10005f55
100012b0:	100010cd 	.word	0x100010cd

100012b4 <lunch_gap_discoverable>:
100012b4:	b570      	push	{r4, r5, r6, lr}
100012b6:	4c16      	ldr	r4, [pc, #88]	; (10001310 <lunch_gap_discoverable+0x5c>)
100012b8:	2800      	cmp	r0, #0
100012ba:	d017      	beq.n	100012ec <lunch_gap_discoverable+0x38>
100012bc:	4b15      	ldr	r3, [pc, #84]	; (10001314 <lunch_gap_discoverable+0x60>)
100012be:	2001      	movs	r0, #1
100012c0:	781d      	ldrb	r5, [r3, #0]
100012c2:	2d00      	cmp	r5, #0
100012c4:	d10c      	bne.n	100012e0 <lunch_gap_discoverable+0x2c>
100012c6:	47a0      	blx	r4
100012c8:	2801      	cmp	r0, #1
100012ca:	d108      	bne.n	100012de <lunch_gap_discoverable+0x2a>
100012cc:	0028      	movs	r0, r5
100012ce:	4b12      	ldr	r3, [pc, #72]	; (10001318 <lunch_gap_discoverable+0x64>)
100012d0:	781c      	ldrb	r4, [r3, #0]
100012d2:	4b12      	ldr	r3, [pc, #72]	; (1000131c <lunch_gap_discoverable+0x68>)
100012d4:	4798      	blx	r3
100012d6:	4b12      	ldr	r3, [pc, #72]	; (10001320 <lunch_gap_discoverable+0x6c>)
100012d8:	0001      	movs	r1, r0
100012da:	0020      	movs	r0, r4
100012dc:	4798      	blx	r3
100012de:	bd70      	pop	{r4, r5, r6, pc}
100012e0:	47a0      	blx	r4
100012e2:	2801      	cmp	r0, #1
100012e4:	d1fb      	bne.n	100012de <lunch_gap_discoverable+0x2a>
100012e6:	4b0c      	ldr	r3, [pc, #48]	; (10001318 <lunch_gap_discoverable+0x64>)
100012e8:	781c      	ldrb	r4, [r3, #0]
100012ea:	e7f2      	b.n	100012d2 <lunch_gap_discoverable+0x1e>
100012ec:	2001      	movs	r0, #1
100012ee:	47a0      	blx	r4
100012f0:	2803      	cmp	r0, #3
100012f2:	d107      	bne.n	10001304 <lunch_gap_discoverable+0x50>
100012f4:	4b08      	ldr	r3, [pc, #32]	; (10001318 <lunch_gap_discoverable+0x64>)
100012f6:	7818      	ldrb	r0, [r3, #0]
100012f8:	4b0a      	ldr	r3, [pc, #40]	; (10001324 <lunch_gap_discoverable+0x70>)
100012fa:	4798      	blx	r3
100012fc:	2006      	movs	r0, #6
100012fe:	4b0a      	ldr	r3, [pc, #40]	; (10001328 <lunch_gap_discoverable+0x74>)
10001300:	4798      	blx	r3
10001302:	e7ec      	b.n	100012de <lunch_gap_discoverable+0x2a>
10001304:	2001      	movs	r0, #1
10001306:	47a0      	blx	r4
10001308:	2802      	cmp	r0, #2
1000130a:	d1e8      	bne.n	100012de <lunch_gap_discoverable+0x2a>
1000130c:	e7f2      	b.n	100012f4 <lunch_gap_discoverable+0x40>
1000130e:	46c0      	nop			; (mov r8, r8)
10001310:	100052cd 	.word	0x100052cd
10001314:	20014d6f 	.word	0x20014d6f
10001318:	20014054 	.word	0x20014054
1000131c:	10005225 	.word	0x10005225
10001320:	100050a1 	.word	0x100050a1
10001324:	10005139 	.word	0x10005139
10001328:	100010cd 	.word	0x100010cd

1000132c <lunch_hogp_state_ind>:
1000132c:	b573      	push	{r0, r1, r4, r5, r6, lr}
1000132e:	4d0c      	ldr	r5, [pc, #48]	; (10001360 <lunch_hogp_state_ind+0x34>)
10001330:	0004      	movs	r4, r0
10001332:	47a8      	blx	r5
10001334:	2200      	movs	r2, #0
10001336:	7803      	ldrb	r3, [r0, #0]
10001338:	9200      	str	r2, [sp, #0]
1000133a:	4a0a      	ldr	r2, [pc, #40]	; (10001364 <lunch_hogp_state_ind+0x38>)
1000133c:	009b      	lsls	r3, r3, #2
1000133e:	589b      	ldr	r3, [r3, r2]
10001340:	4909      	ldr	r1, [pc, #36]	; (10001368 <lunch_hogp_state_ind+0x3c>)
10001342:	2220      	movs	r2, #32
10001344:	4809      	ldr	r0, [pc, #36]	; (1000136c <lunch_hogp_state_ind+0x40>)
10001346:	4e0a      	ldr	r6, [pc, #40]	; (10001370 <lunch_hogp_state_ind+0x44>)
10001348:	47b0      	blx	r6
1000134a:	4b0a      	ldr	r3, [pc, #40]	; (10001374 <lunch_hogp_state_ind+0x48>)
1000134c:	701c      	strb	r4, [r3, #0]
1000134e:	47a8      	blx	r5
10001350:	7803      	ldrb	r3, [r0, #0]
10001352:	2b03      	cmp	r3, #3
10001354:	d102      	bne.n	1000135c <lunch_hogp_state_ind+0x30>
10001356:	2009      	movs	r0, #9
10001358:	4b07      	ldr	r3, [pc, #28]	; (10001378 <lunch_hogp_state_ind+0x4c>)
1000135a:	4798      	blx	r3
1000135c:	bd73      	pop	{r0, r1, r4, r5, r6, pc}
1000135e:	46c0      	nop			; (mov r8, r8)
10001360:	100088f1 	.word	0x100088f1
10001364:	10009900 	.word	0x10009900
10001368:	10009910 	.word	0x10009910
1000136c:	10009898 	.word	0x10009898
10001370:	000066b1 	.word	0x000066b1
10001374:	20014057 	.word	0x20014057
10001378:	10002ba5 	.word	0x10002ba5

1000137c <lunch_hogp_param>:
1000137c:	4800      	ldr	r0, [pc, #0]	; (10001380 <lunch_hogp_param+0x4>)
1000137e:	4770      	bx	lr
10001380:	10009978 	.word	0x10009978

10001384 <lunch_hogp_send_report>:
10001384:	b5f0      	push	{r4, r5, r6, r7, lr}
10001386:	4b2a      	ldr	r3, [pc, #168]	; (10001430 <lunch_hogp_send_report+0xac>)
10001388:	b085      	sub	sp, #20
1000138a:	0006      	movs	r6, r0
1000138c:	000c      	movs	r4, r1
1000138e:	4798      	blx	r3
10001390:	7803      	ldrb	r3, [r0, #0]
10001392:	2b03      	cmp	r3, #3
10001394:	d111      	bne.n	100013ba <lunch_hogp_send_report+0x36>
10001396:	0032      	movs	r2, r6
10001398:	3ae0      	subs	r2, #224	; 0xe0
1000139a:	b293      	uxth	r3, r2
1000139c:	4d25      	ldr	r5, [pc, #148]	; (10001434 <lunch_hogp_send_report+0xb0>)
1000139e:	2b07      	cmp	r3, #7
100013a0:	d80d      	bhi.n	100013be <lunch_hogp_send_report+0x3a>
100013a2:	2301      	movs	r3, #1
100013a4:	4093      	lsls	r3, r2
100013a6:	782a      	ldrb	r2, [r5, #0]
100013a8:	0011      	movs	r1, r2
100013aa:	4399      	bics	r1, r3
100013ac:	2c00      	cmp	r4, #0
100013ae:	d001      	beq.n	100013b4 <lunch_hogp_send_report+0x30>
100013b0:	4313      	orrs	r3, r2
100013b2:	b2d9      	uxtb	r1, r3
100013b4:	7029      	strb	r1, [r5, #0]
100013b6:	4291      	cmp	r1, r2
100013b8:	d109      	bne.n	100013ce <lunch_hogp_send_report+0x4a>
100013ba:	b005      	add	sp, #20
100013bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
100013be:	2c00      	cmp	r4, #0
100013c0:	d01d      	beq.n	100013fe <lunch_hogp_send_report+0x7a>
100013c2:	2300      	movs	r3, #0
100013c4:	18e9      	adds	r1, r5, r3
100013c6:	788a      	ldrb	r2, [r1, #2]
100013c8:	2a00      	cmp	r2, #0
100013ca:	d112      	bne.n	100013f2 <lunch_hogp_send_report+0x6e>
100013cc:	708e      	strb	r6, [r1, #2]
100013ce:	2408      	movs	r4, #8
100013d0:	2100      	movs	r1, #0
100013d2:	0022      	movs	r2, r4
100013d4:	4b18      	ldr	r3, [pc, #96]	; (10001438 <lunch_hogp_send_report+0xb4>)
100013d6:	a801      	add	r0, sp, #4
100013d8:	4798      	blx	r3
100013da:	466a      	mov	r2, sp
100013dc:	4b17      	ldr	r3, [pc, #92]	; (1000143c <lunch_hogp_send_report+0xb8>)
100013de:	8114      	strh	r4, [r2, #8]
100013e0:	781b      	ldrb	r3, [r3, #0]
100013e2:	a801      	add	r0, sp, #4
100013e4:	7113      	strb	r3, [r2, #4]
100013e6:	2200      	movs	r2, #0
100013e8:	4b15      	ldr	r3, [pc, #84]	; (10001440 <lunch_hogp_send_report+0xbc>)
100013ea:	0011      	movs	r1, r2
100013ec:	9503      	str	r5, [sp, #12]
100013ee:	4798      	blx	r3
100013f0:	e7e3      	b.n	100013ba <lunch_hogp_send_report+0x36>
100013f2:	42b2      	cmp	r2, r6
100013f4:	d0e1      	beq.n	100013ba <lunch_hogp_send_report+0x36>
100013f6:	3301      	adds	r3, #1
100013f8:	2b06      	cmp	r3, #6
100013fa:	d1e3      	bne.n	100013c4 <lunch_hogp_send_report+0x40>
100013fc:	e7dd      	b.n	100013ba <lunch_hogp_send_report+0x36>
100013fe:	002b      	movs	r3, r5
10001400:	2206      	movs	r2, #6
10001402:	2001      	movs	r0, #1
10001404:	7899      	ldrb	r1, [r3, #2]
10001406:	2c00      	cmp	r4, #0
10001408:	d00b      	beq.n	10001422 <lunch_hogp_send_report+0x9e>
1000140a:	785f      	ldrb	r7, [r3, #1]
1000140c:	2f00      	cmp	r7, #0
1000140e:	d0de      	beq.n	100013ce <lunch_hogp_send_report+0x4a>
10001410:	7059      	strb	r1, [r3, #1]
10001412:	3a01      	subs	r2, #1
10001414:	3301      	adds	r3, #1
10001416:	2a00      	cmp	r2, #0
10001418:	d1f4      	bne.n	10001404 <lunch_hogp_send_report+0x80>
1000141a:	2c00      	cmp	r4, #0
1000141c:	d0cd      	beq.n	100013ba <lunch_hogp_send_report+0x36>
1000141e:	71ea      	strb	r2, [r5, #7]
10001420:	e7d5      	b.n	100013ce <lunch_hogp_send_report+0x4a>
10001422:	42b1      	cmp	r1, r6
10001424:	d002      	beq.n	1000142c <lunch_hogp_send_report+0xa8>
10001426:	2900      	cmp	r1, #0
10001428:	d1f3      	bne.n	10001412 <lunch_hogp_send_report+0x8e>
1000142a:	e7c6      	b.n	100013ba <lunch_hogp_send_report+0x36>
1000142c:	0004      	movs	r4, r0
1000142e:	e7f0      	b.n	10001412 <lunch_hogp_send_report+0x8e>
10001430:	100088f1 	.word	0x100088f1
10001434:	20014d70 	.word	0x20014d70
10001438:	00005859 	.word	0x00005859
1000143c:	20014057 	.word	0x20014057
10001440:	100088b9 	.word	0x100088b9

10001444 <lunch_hogp_state>:
10001444:	b510      	push	{r4, lr}
10001446:	4b02      	ldr	r3, [pc, #8]	; (10001450 <lunch_hogp_state+0xc>)
10001448:	4798      	blx	r3
1000144a:	7800      	ldrb	r0, [r0, #0]
1000144c:	bd10      	pop	{r4, pc}
1000144e:	46c0      	nop			; (mov r8, r8)
10001450:	100088f1 	.word	0x100088f1

10001454 <diss_create>:
10001454:	4770      	bx	lr

10001456 <diss_cleanup>:
10001456:	4770      	bx	lr

10001458 <diss_destroy>:
10001458:	b570      	push	{r4, r5, r6, lr}
1000145a:	0004      	movs	r4, r0
1000145c:	68c5      	ldr	r5, [r0, #12]
1000145e:	686b      	ldr	r3, [r5, #4]
10001460:	4e05      	ldr	r6, [pc, #20]	; (10001478 <diss_destroy+0x20>)
10001462:	2b00      	cmp	r3, #0
10001464:	d103      	bne.n	1000146e <diss_destroy+0x16>
10001466:	0028      	movs	r0, r5
10001468:	60e3      	str	r3, [r4, #12]
1000146a:	47b0      	blx	r6
1000146c:	bd70      	pop	{r4, r5, r6, pc}
1000146e:	4b03      	ldr	r3, [pc, #12]	; (1000147c <diss_destroy+0x24>)
10001470:	1d28      	adds	r0, r5, #4
10001472:	4798      	blx	r3
10001474:	47b0      	blx	r6
10001476:	e7f2      	b.n	1000145e <diss_destroy+0x6>
10001478:	000014ed 	.word	0x000014ed
1000147c:	00002715 	.word	0x00002715

10001480 <diss_prf_itf_get>:
10001480:	4800      	ldr	r0, [pc, #0]	; (10001484 <diss_prf_itf_get+0x4>)
10001482:	4770      	bx	lr
10001484:	10009a5c 	.word	0x10009a5c

10001488 <diss_compute_cfg_flag>:
10001488:	0002      	movs	r2, r0
1000148a:	2001      	movs	r0, #1
1000148c:	b570      	push	{r4, r5, r6, lr}
1000148e:	2300      	movs	r3, #0
10001490:	0004      	movs	r4, r0
10001492:	2503      	movs	r5, #3
10001494:	0011      	movs	r1, r2
10001496:	4119      	asrs	r1, r3
10001498:	4221      	tst	r1, r4
1000149a:	d004      	beq.n	100014a6 <diss_compute_cfg_flag+0x1e>
1000149c:	002e      	movs	r6, r5
1000149e:	0059      	lsls	r1, r3, #1
100014a0:	3101      	adds	r1, #1
100014a2:	408e      	lsls	r6, r1
100014a4:	4330      	orrs	r0, r6
100014a6:	3301      	adds	r3, #1
100014a8:	2b09      	cmp	r3, #9
100014aa:	d1f3      	bne.n	10001494 <diss_compute_cfg_flag+0xc>
100014ac:	bd70      	pop	{r4, r5, r6, pc}
	...

100014b0 <diss_init>:
100014b0:	b5f0      	push	{r4, r5, r6, r7, lr}
100014b2:	b089      	sub	sp, #36	; 0x24
100014b4:	9304      	str	r3, [sp, #16]
100014b6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
100014b8:	0005      	movs	r5, r0
100014ba:	8818      	ldrh	r0, [r3, #0]
100014bc:	4b1c      	ldr	r3, [pc, #112]	; (10001530 <diss_init+0x80>)
100014be:	000f      	movs	r7, r1
100014c0:	9205      	str	r2, [sp, #20]
100014c2:	4798      	blx	r3
100014c4:	231e      	movs	r3, #30
100014c6:	9a04      	ldr	r2, [sp, #16]
100014c8:	9007      	str	r0, [sp, #28]
100014ca:	4013      	ands	r3, r2
100014cc:	9303      	str	r3, [sp, #12]
100014ce:	4b19      	ldr	r3, [pc, #100]	; (10001534 <diss_init+0x84>)
100014d0:	0038      	movs	r0, r7
100014d2:	9302      	str	r3, [sp, #8]
100014d4:	8a2b      	ldrh	r3, [r5, #16]
100014d6:	4918      	ldr	r1, [pc, #96]	; (10001538 <diss_init+0x88>)
100014d8:	9301      	str	r3, [sp, #4]
100014da:	2300      	movs	r3, #0
100014dc:	4c17      	ldr	r4, [pc, #92]	; (1000153c <diss_init+0x8c>)
100014de:	9300      	str	r3, [sp, #0]
100014e0:	aa07      	add	r2, sp, #28
100014e2:	3313      	adds	r3, #19
100014e4:	47a0      	blx	r4
100014e6:	1e06      	subs	r6, r0, #0
100014e8:	d11e      	bne.n	10001528 <diss_init+0x78>
100014ea:	2101      	movs	r1, #1
100014ec:	4b14      	ldr	r3, [pc, #80]	; (10001540 <diss_init+0x90>)
100014ee:	2020      	movs	r0, #32
100014f0:	4798      	blx	r3
100014f2:	60e8      	str	r0, [r5, #12]
100014f4:	883b      	ldrh	r3, [r7, #0]
100014f6:	0004      	movs	r4, r0
100014f8:	8303      	strh	r3, [r0, #24]
100014fa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
100014fc:	881b      	ldrh	r3, [r3, #0]
100014fe:	8343      	strh	r3, [r0, #26]
10001500:	9b04      	ldr	r3, [sp, #16]
10001502:	03da      	lsls	r2, r3, #15
10001504:	9b05      	ldr	r3, [sp, #20]
10001506:	431a      	orrs	r2, r3
10001508:	8002      	strh	r2, [r0, #0]
1000150a:	8a2b      	ldrh	r3, [r5, #16]
1000150c:	7786      	strb	r6, [r0, #30]
1000150e:	8043      	strh	r3, [r0, #2]
10001510:	2314      	movs	r3, #20
10001512:	0028      	movs	r0, r5
10001514:	826b      	strh	r3, [r5, #18]
10001516:	4b0b      	ldr	r3, [pc, #44]	; (10001544 <diss_init+0x94>)
10001518:	4798      	blx	r3
1000151a:	4b0b      	ldr	r3, [pc, #44]	; (10001548 <diss_init+0x98>)
1000151c:	1d20      	adds	r0, r4, #4
1000151e:	4798      	blx	r3
10001520:	0031      	movs	r1, r6
10001522:	8a28      	ldrh	r0, [r5, #16]
10001524:	4b09      	ldr	r3, [pc, #36]	; (1000154c <diss_init+0x9c>)
10001526:	4798      	blx	r3
10001528:	0030      	movs	r0, r6
1000152a:	b009      	add	sp, #36	; 0x24
1000152c:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000152e:	46c0      	nop			; (mov r8, r8)
10001530:	10001489 	.word	0x10001489
10001534:	100099c4 	.word	0x100099c4
10001538:	0000180a 	.word	0x0000180a
1000153c:	0001e14d 	.word	0x0001e14d
10001540:	000013b9 	.word	0x000013b9
10001544:	10001811 	.word	0x10001811
10001548:	00002657 	.word	0x00002657
1000154c:	000017c1 	.word	0x000017c1

10001550 <diss_handle_to_value>:
10001550:	b570      	push	{r4, r5, r6, lr}
10001552:	2200      	movs	r2, #0
10001554:	2501      	movs	r5, #1
10001556:	8b03      	ldrh	r3, [r0, #24]
10001558:	8b44      	ldrh	r4, [r0, #26]
1000155a:	3301      	adds	r3, #1
1000155c:	b29b      	uxth	r3, r3
1000155e:	0026      	movs	r6, r4
10001560:	4116      	asrs	r6, r2
10001562:	b2d0      	uxtb	r0, r2
10001564:	422e      	tst	r6, r5
10001566:	d004      	beq.n	10001572 <diss_handle_to_value+0x22>
10001568:	1c5e      	adds	r6, r3, #1
1000156a:	428e      	cmp	r6, r1
1000156c:	d005      	beq.n	1000157a <diss_handle_to_value+0x2a>
1000156e:	3302      	adds	r3, #2
10001570:	b29b      	uxth	r3, r3
10001572:	3201      	adds	r2, #1
10001574:	2a09      	cmp	r2, #9
10001576:	d1f2      	bne.n	1000155e <diss_handle_to_value+0xe>
10001578:	0010      	movs	r0, r2
1000157a:	bd70      	pop	{r4, r5, r6, pc}

1000157c <diss_value_to_handle>:
1000157c:	b530      	push	{r4, r5, lr}
1000157e:	2200      	movs	r2, #0
10001580:	2401      	movs	r4, #1
10001582:	8b03      	ldrh	r3, [r0, #24]
10001584:	8b40      	ldrh	r0, [r0, #26]
10001586:	3301      	adds	r3, #1
10001588:	b29b      	uxth	r3, r3
1000158a:	0005      	movs	r5, r0
1000158c:	4115      	asrs	r5, r2
1000158e:	4225      	tst	r5, r4
10001590:	d006      	beq.n	100015a0 <diss_value_to_handle+0x24>
10001592:	428a      	cmp	r2, r1
10001594:	d102      	bne.n	1000159c <diss_value_to_handle+0x20>
10001596:	3301      	adds	r3, #1
10001598:	b298      	uxth	r0, r3
1000159a:	bd30      	pop	{r4, r5, pc}
1000159c:	3302      	adds	r3, #2
1000159e:	b29b      	uxth	r3, r3
100015a0:	3201      	adds	r2, #1
100015a2:	2a09      	cmp	r2, #9
100015a4:	d1f1      	bne.n	1000158a <diss_value_to_handle+0xe>
100015a6:	2000      	movs	r0, #0
100015a8:	e7f7      	b.n	1000159a <diss_value_to_handle+0x1e>

100015aa <diss_check_val_len>:
100015aa:	0003      	movs	r3, r0
100015ac:	208d      	movs	r0, #141	; 0x8d
100015ae:	2980      	cmp	r1, #128	; 0x80
100015b0:	d80c      	bhi.n	100015cc <diss_check_val_len+0x22>
100015b2:	2000      	movs	r0, #0
100015b4:	2b07      	cmp	r3, #7
100015b6:	d007      	beq.n	100015c8 <diss_check_val_len+0x1e>
100015b8:	2b08      	cmp	r3, #8
100015ba:	d008      	beq.n	100015ce <diss_check_val_len+0x24>
100015bc:	2b06      	cmp	r3, #6
100015be:	d105      	bne.n	100015cc <diss_check_val_len+0x22>
100015c0:	2908      	cmp	r1, #8
100015c2:	d003      	beq.n	100015cc <diss_check_val_len+0x22>
100015c4:	308d      	adds	r0, #141	; 0x8d
100015c6:	e001      	b.n	100015cc <diss_check_val_len+0x22>
100015c8:	2905      	cmp	r1, #5
100015ca:	d9fb      	bls.n	100015c4 <diss_check_val_len+0x1a>
100015cc:	4770      	bx	lr
100015ce:	2907      	cmp	r1, #7
100015d0:	d1f8      	bne.n	100015c4 <diss_check_val_len+0x1a>
100015d2:	e7fb      	b.n	100015cc <diss_check_val_len+0x22>

100015d4 <diss_set_value_req_handler>:
100015d4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100015d6:	000c      	movs	r4, r1
100015d8:	9301      	str	r3, [sp, #4]
100015da:	2014      	movs	r0, #20
100015dc:	4b20      	ldr	r3, [pc, #128]	; (10001660 <diss_set_value_req_handler+0x8c>)
100015de:	9200      	str	r2, [sp, #0]
100015e0:	4798      	blx	r3
100015e2:	7821      	ldrb	r1, [r4, #0]
100015e4:	0005      	movs	r5, r0
100015e6:	2681      	movs	r6, #129	; 0x81
100015e8:	2908      	cmp	r1, #8
100015ea:	d82a      	bhi.n	10001642 <diss_set_value_req_handler+0x6e>
100015ec:	4b1d      	ldr	r3, [pc, #116]	; (10001664 <diss_set_value_req_handler+0x90>)
100015ee:	4798      	blx	r3
100015f0:	3601      	adds	r6, #1
100015f2:	2800      	cmp	r0, #0
100015f4:	d025      	beq.n	10001642 <diss_set_value_req_handler+0x6e>
100015f6:	7861      	ldrb	r1, [r4, #1]
100015f8:	7820      	ldrb	r0, [r4, #0]
100015fa:	4b1b      	ldr	r3, [pc, #108]	; (10001668 <diss_set_value_req_handler+0x94>)
100015fc:	4798      	blx	r3
100015fe:	1e06      	subs	r6, r0, #0
10001600:	d11f      	bne.n	10001642 <diss_set_value_req_handler+0x6e>
10001602:	686f      	ldr	r7, [r5, #4]
10001604:	2f00      	cmp	r7, #0
10001606:	d00a      	beq.n	1000161e <diss_set_value_req_handler+0x4a>
10001608:	793a      	ldrb	r2, [r7, #4]
1000160a:	7823      	ldrb	r3, [r4, #0]
1000160c:	429a      	cmp	r2, r3
1000160e:	d125      	bne.n	1000165c <diss_set_value_req_handler+0x88>
10001610:	4b16      	ldr	r3, [pc, #88]	; (1000166c <diss_set_value_req_handler+0x98>)
10001612:	0039      	movs	r1, r7
10001614:	1d28      	adds	r0, r5, #4
10001616:	4798      	blx	r3
10001618:	0038      	movs	r0, r7
1000161a:	4b15      	ldr	r3, [pc, #84]	; (10001670 <diss_set_value_req_handler+0x9c>)
1000161c:	4798      	blx	r3
1000161e:	7860      	ldrb	r0, [r4, #1]
10001620:	2101      	movs	r1, #1
10001622:	4b14      	ldr	r3, [pc, #80]	; (10001674 <diss_set_value_req_handler+0xa0>)
10001624:	3008      	adds	r0, #8
10001626:	4798      	blx	r3
10001628:	0007      	movs	r7, r0
1000162a:	7823      	ldrb	r3, [r4, #0]
1000162c:	1ca1      	adds	r1, r4, #2
1000162e:	7103      	strb	r3, [r0, #4]
10001630:	7862      	ldrb	r2, [r4, #1]
10001632:	4b11      	ldr	r3, [pc, #68]	; (10001678 <diss_set_value_req_handler+0xa4>)
10001634:	7142      	strb	r2, [r0, #5]
10001636:	3006      	adds	r0, #6
10001638:	4798      	blx	r3
1000163a:	0039      	movs	r1, r7
1000163c:	4b0f      	ldr	r3, [pc, #60]	; (1000167c <diss_set_value_req_handler+0xa8>)
1000163e:	1d28      	adds	r0, r5, #4
10001640:	4798      	blx	r3
10001642:	9a00      	ldr	r2, [sp, #0]
10001644:	9901      	ldr	r1, [sp, #4]
10001646:	4d0e      	ldr	r5, [pc, #56]	; (10001680 <diss_set_value_req_handler+0xac>)
10001648:	2302      	movs	r3, #2
1000164a:	480e      	ldr	r0, [pc, #56]	; (10001684 <diss_set_value_req_handler+0xb0>)
1000164c:	47a8      	blx	r5
1000164e:	7823      	ldrb	r3, [r4, #0]
10001650:	7046      	strb	r6, [r0, #1]
10001652:	7003      	strb	r3, [r0, #0]
10001654:	4b0c      	ldr	r3, [pc, #48]	; (10001688 <diss_set_value_req_handler+0xb4>)
10001656:	4798      	blx	r3
10001658:	2000      	movs	r0, #0
1000165a:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
1000165c:	683f      	ldr	r7, [r7, #0]
1000165e:	e7d1      	b.n	10001604 <diss_set_value_req_handler+0x30>
10001660:	0002b38d 	.word	0x0002b38d
10001664:	1000157d 	.word	0x1000157d
10001668:	100015ab 	.word	0x100015ab
1000166c:	00002737 	.word	0x00002737
10001670:	000014ed 	.word	0x000014ed
10001674:	000013b9 	.word	0x000013b9
10001678:	00005821 	.word	0x00005821
1000167c:	0000268f 	.word	0x0000268f
10001680:	00001171 	.word	0x00001171
10001684:	00001401 	.word	0x00001401
10001688:	000011a9 	.word	0x000011a9

1000168c <diss_value_cfm_handler>:
1000168c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000168e:	0010      	movs	r0, r2
10001690:	4b1d      	ldr	r3, [pc, #116]	; (10001708 <diss_value_cfm_handler+0x7c>)
10001692:	000c      	movs	r4, r1
10001694:	0016      	movs	r6, r2
10001696:	4798      	blx	r3
10001698:	2801      	cmp	r0, #1
1000169a:	d127      	bne.n	100016ec <diss_value_cfm_handler+0x60>
1000169c:	4b1b      	ldr	r3, [pc, #108]	; (1000170c <diss_value_cfm_handler+0x80>)
1000169e:	3013      	adds	r0, #19
100016a0:	4798      	blx	r3
100016a2:	0005      	movs	r5, r0
100016a4:	7f01      	ldrb	r1, [r0, #28]
100016a6:	4b1a      	ldr	r3, [pc, #104]	; (10001710 <diss_value_cfm_handler+0x84>)
100016a8:	4798      	blx	r3
100016aa:	7f2a      	ldrb	r2, [r5, #28]
100016ac:	7823      	ldrb	r3, [r4, #0]
100016ae:	7f69      	ldrb	r1, [r5, #29]
100016b0:	0007      	movs	r7, r0
100016b2:	4d18      	ldr	r5, [pc, #96]	; (10001714 <diss_value_cfm_handler+0x88>)
100016b4:	429a      	cmp	r2, r3
100016b6:	d11b      	bne.n	100016f0 <diss_value_cfm_handler+0x64>
100016b8:	2207      	movs	r2, #7
100016ba:	7863      	ldrb	r3, [r4, #1]
100016bc:	0209      	lsls	r1, r1, #8
100016be:	4311      	orrs	r1, r2
100016c0:	3306      	adds	r3, #6
100016c2:	0032      	movs	r2, r6
100016c4:	4814      	ldr	r0, [pc, #80]	; (10001718 <diss_value_cfm_handler+0x8c>)
100016c6:	47a8      	blx	r5
100016c8:	2300      	movs	r3, #0
100016ca:	0005      	movs	r5, r0
100016cc:	8007      	strh	r7, [r0, #0]
100016ce:	7103      	strb	r3, [r0, #4]
100016d0:	7863      	ldrb	r3, [r4, #1]
100016d2:	1ca1      	adds	r1, r4, #2
100016d4:	8043      	strh	r3, [r0, #2]
100016d6:	7862      	ldrb	r2, [r4, #1]
100016d8:	4b10      	ldr	r3, [pc, #64]	; (1000171c <diss_value_cfm_handler+0x90>)
100016da:	3005      	adds	r0, #5
100016dc:	4798      	blx	r3
100016de:	0028      	movs	r0, r5
100016e0:	4b0f      	ldr	r3, [pc, #60]	; (10001720 <diss_value_cfm_handler+0x94>)
100016e2:	4798      	blx	r3
100016e4:	2100      	movs	r1, #0
100016e6:	0030      	movs	r0, r6
100016e8:	4b0e      	ldr	r3, [pc, #56]	; (10001724 <diss_value_cfm_handler+0x98>)
100016ea:	4798      	blx	r3
100016ec:	2000      	movs	r0, #0
100016ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100016f0:	2307      	movs	r3, #7
100016f2:	0209      	lsls	r1, r1, #8
100016f4:	4319      	orrs	r1, r3
100016f6:	0032      	movs	r2, r6
100016f8:	3b01      	subs	r3, #1
100016fa:	4807      	ldr	r0, [pc, #28]	; (10001718 <diss_value_cfm_handler+0x8c>)
100016fc:	47a8      	blx	r5
100016fe:	2380      	movs	r3, #128	; 0x80
10001700:	8007      	strh	r7, [r0, #0]
10001702:	7103      	strb	r3, [r0, #4]
10001704:	e7ec      	b.n	100016e0 <diss_value_cfm_handler+0x54>
10001706:	46c0      	nop			; (mov r8, r8)
10001708:	0000182d 	.word	0x0000182d
1000170c:	0002b38d 	.word	0x0002b38d
10001710:	1000157d 	.word	0x1000157d
10001714:	00001171 	.word	0x00001171
10001718:	00000c14 	.word	0x00000c14
1000171c:	00005821 	.word	0x00005821
10001720:	000011a9 	.word	0x000011a9
10001724:	000017c1 	.word	0x000017c1

10001728 <gattc_read_req_ind_handler>:
10001728:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000172a:	001d      	movs	r5, r3
1000172c:	0010      	movs	r0, r2
1000172e:	4b2e      	ldr	r3, [pc, #184]	; (100017e8 <gattc_read_req_ind_handler+0xc0>)
10001730:	0016      	movs	r6, r2
10001732:	9101      	str	r1, [sp, #4]
10001734:	4798      	blx	r3
10001736:	1e04      	subs	r4, r0, #0
10001738:	d138      	bne.n	100017ac <gattc_read_req_ind_handler+0x84>
1000173a:	4b2c      	ldr	r3, [pc, #176]	; (100017ec <gattc_read_req_ind_handler+0xc4>)
1000173c:	2014      	movs	r0, #20
1000173e:	4798      	blx	r3
10001740:	9b01      	ldr	r3, [sp, #4]
10001742:	0007      	movs	r7, r0
10001744:	8819      	ldrh	r1, [r3, #0]
10001746:	4b2a      	ldr	r3, [pc, #168]	; (100017f0 <gattc_read_req_ind_handler+0xc8>)
10001748:	4798      	blx	r3
1000174a:	9000      	str	r0, [sp, #0]
1000174c:	2808      	cmp	r0, #8
1000174e:	d81e      	bhi.n	1000178e <gattc_read_req_ind_handler+0x66>
10001750:	687c      	ldr	r4, [r7, #4]
10001752:	2c00      	cmp	r4, #0
10001754:	d115      	bne.n	10001782 <gattc_read_req_ind_handler+0x5a>
10001756:	9b00      	ldr	r3, [sp, #0]
10001758:	0a29      	lsrs	r1, r5, #8
1000175a:	773b      	strb	r3, [r7, #28]
1000175c:	7779      	strb	r1, [r7, #29]
1000175e:	0038      	movs	r0, r7
10001760:	4b24      	ldr	r3, [pc, #144]	; (100017f4 <gattc_read_req_ind_handler+0xcc>)
10001762:	4798      	blx	r3
10001764:	0032      	movs	r2, r6
10001766:	0001      	movs	r1, r0
10001768:	2301      	movs	r3, #1
1000176a:	4d23      	ldr	r5, [pc, #140]	; (100017f8 <gattc_read_req_ind_handler+0xd0>)
1000176c:	4823      	ldr	r0, [pc, #140]	; (100017fc <gattc_read_req_ind_handler+0xd4>)
1000176e:	47a8      	blx	r5
10001770:	9b00      	ldr	r3, [sp, #0]
10001772:	7003      	strb	r3, [r0, #0]
10001774:	4b22      	ldr	r3, [pc, #136]	; (10001800 <gattc_read_req_ind_handler+0xd8>)
10001776:	4798      	blx	r3
10001778:	2101      	movs	r1, #1
1000177a:	0030      	movs	r0, r6
1000177c:	4b21      	ldr	r3, [pc, #132]	; (10001804 <gattc_read_req_ind_handler+0xdc>)
1000177e:	4798      	blx	r3
10001780:	e012      	b.n	100017a8 <gattc_read_req_ind_handler+0x80>
10001782:	7923      	ldrb	r3, [r4, #4]
10001784:	9a00      	ldr	r2, [sp, #0]
10001786:	4293      	cmp	r3, r2
10001788:	d015      	beq.n	100017b6 <gattc_read_req_ind_handler+0x8e>
1000178a:	6824      	ldr	r4, [r4, #0]
1000178c:	e7e1      	b.n	10001752 <gattc_read_req_ind_handler+0x2a>
1000178e:	2306      	movs	r3, #6
10001790:	0029      	movs	r1, r5
10001792:	0032      	movs	r2, r6
10001794:	481c      	ldr	r0, [pc, #112]	; (10001808 <gattc_read_req_ind_handler+0xe0>)
10001796:	4d18      	ldr	r5, [pc, #96]	; (100017f8 <gattc_read_req_ind_handler+0xd0>)
10001798:	47a8      	blx	r5
1000179a:	9b01      	ldr	r3, [sp, #4]
1000179c:	881b      	ldrh	r3, [r3, #0]
1000179e:	8003      	strh	r3, [r0, #0]
100017a0:	2380      	movs	r3, #128	; 0x80
100017a2:	7103      	strb	r3, [r0, #4]
100017a4:	4b16      	ldr	r3, [pc, #88]	; (10001800 <gattc_read_req_ind_handler+0xd8>)
100017a6:	4798      	blx	r3
100017a8:	0020      	movs	r0, r4
100017aa:	e003      	b.n	100017b4 <gattc_read_req_ind_handler+0x8c>
100017ac:	3c01      	subs	r4, #1
100017ae:	4263      	negs	r3, r4
100017b0:	415c      	adcs	r4, r3
100017b2:	0060      	lsls	r0, r4, #1
100017b4:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
100017b6:	7963      	ldrb	r3, [r4, #5]
100017b8:	0032      	movs	r2, r6
100017ba:	0029      	movs	r1, r5
100017bc:	3306      	adds	r3, #6
100017be:	4d0e      	ldr	r5, [pc, #56]	; (100017f8 <gattc_read_req_ind_handler+0xd0>)
100017c0:	4811      	ldr	r0, [pc, #68]	; (10001808 <gattc_read_req_ind_handler+0xe0>)
100017c2:	47a8      	blx	r5
100017c4:	2600      	movs	r6, #0
100017c6:	0005      	movs	r5, r0
100017c8:	9b01      	ldr	r3, [sp, #4]
100017ca:	1da1      	adds	r1, r4, #6
100017cc:	881b      	ldrh	r3, [r3, #0]
100017ce:	7106      	strb	r6, [r0, #4]
100017d0:	8003      	strh	r3, [r0, #0]
100017d2:	7963      	ldrb	r3, [r4, #5]
100017d4:	8043      	strh	r3, [r0, #2]
100017d6:	7962      	ldrb	r2, [r4, #5]
100017d8:	4b0c      	ldr	r3, [pc, #48]	; (1000180c <gattc_read_req_ind_handler+0xe4>)
100017da:	3005      	adds	r0, #5
100017dc:	4798      	blx	r3
100017de:	0028      	movs	r0, r5
100017e0:	4b07      	ldr	r3, [pc, #28]	; (10001800 <gattc_read_req_ind_handler+0xd8>)
100017e2:	4798      	blx	r3
100017e4:	0030      	movs	r0, r6
100017e6:	e7e5      	b.n	100017b4 <gattc_read_req_ind_handler+0x8c>
100017e8:	0000182d 	.word	0x0000182d
100017ec:	0002b38d 	.word	0x0002b38d
100017f0:	10001551 	.word	0x10001551
100017f4:	0002b3c7 	.word	0x0002b3c7
100017f8:	00001171 	.word	0x00001171
100017fc:	00001402 	.word	0x00001402
10001800:	000011a9 	.word	0x000011a9
10001804:	000017c1 	.word	0x000017c1
10001808:	00000c14 	.word	0x00000c14
1000180c:	00005821 	.word	0x00005821

10001810 <diss_task_init>:
10001810:	b510      	push	{r4, lr}
10001812:	4b05      	ldr	r3, [pc, #20]	; (10001828 <diss_task_init+0x18>)
10001814:	0004      	movs	r4, r0
10001816:	2014      	movs	r0, #20
10001818:	4798      	blx	r3
1000181a:	4b04      	ldr	r3, [pc, #16]	; (1000182c <diss_task_init+0x1c>)
1000181c:	301e      	adds	r0, #30
1000181e:	6023      	str	r3, [r4, #0]
10001820:	4b03      	ldr	r3, [pc, #12]	; (10001830 <diss_task_init+0x20>)
10001822:	6060      	str	r0, [r4, #4]
10001824:	60a3      	str	r3, [r4, #8]
10001826:	bd10      	pop	{r4, pc}
10001828:	0002b38d 	.word	0x0002b38d
1000182c:	10009a6c 	.word	0x10009a6c
10001830:	00030001 	.word	0x00030001

10001834 <hogpd_create>:
10001834:	4770      	bx	lr
	...

10001838 <hogpd_cleanup>:
10001838:	b570      	push	{r4, r5, r6, lr}
1000183a:	000c      	movs	r4, r1
1000183c:	68c5      	ldr	r5, [r0, #12]
1000183e:	2904      	cmp	r1, #4
10001840:	d905      	bls.n	1000184e <hogpd_cleanup+0x16>
10001842:	22e1      	movs	r2, #225	; 0xe1
10001844:	490a      	ldr	r1, [pc, #40]	; (10001870 <hogpd_cleanup+0x38>)
10001846:	480b      	ldr	r0, [pc, #44]	; (10001874 <hogpd_cleanup+0x3c>)
10001848:	4b0b      	ldr	r3, [pc, #44]	; (10001878 <hogpd_cleanup+0x40>)
1000184a:	0052      	lsls	r2, r2, #1
1000184c:	4798      	blx	r3
1000184e:	002b      	movs	r3, r5
10001850:	332b      	adds	r3, #43	; 0x2b
10001852:	7819      	ldrb	r1, [r3, #0]
10001854:	2900      	cmp	r1, #0
10001856:	d009      	beq.n	1000186c <hogpd_cleanup+0x34>
10001858:	2200      	movs	r2, #0
1000185a:	0063      	lsls	r3, r4, #1
1000185c:	18eb      	adds	r3, r5, r3
1000185e:	80da      	strh	r2, [r3, #6]
10001860:	2901      	cmp	r1, #1
10001862:	d003      	beq.n	1000186c <hogpd_cleanup+0x34>
10001864:	3408      	adds	r4, #8
10001866:	0064      	lsls	r4, r4, #1
10001868:	192c      	adds	r4, r5, r4
1000186a:	80e2      	strh	r2, [r4, #6]
1000186c:	bd70      	pop	{r4, r5, r6, pc}
1000186e:	46c0      	nop			; (mov r8, r8)
10001870:	1000b4b4 	.word	0x1000b4b4
10001874:	10009a84 	.word	0x10009a84
10001878:	00006609 	.word	0x00006609

1000187c <hogpd_destroy>:
1000187c:	0003      	movs	r3, r0
1000187e:	2200      	movs	r2, #0
10001880:	b510      	push	{r4, lr}
10001882:	68c0      	ldr	r0, [r0, #12]
10001884:	60da      	str	r2, [r3, #12]
10001886:	4b01      	ldr	r3, [pc, #4]	; (1000188c <hogpd_destroy+0x10>)
10001888:	4798      	blx	r3
1000188a:	bd10      	pop	{r4, pc}
1000188c:	000014ed 	.word	0x000014ed

10001890 <hogpd_prf_itf_get>:
10001890:	4800      	ldr	r0, [pc, #0]	; (10001894 <hogpd_prf_itf_get+0x4>)
10001892:	4770      	bx	lr
10001894:	10009b8c 	.word	0x10009b8c

10001898 <hogpd_get_att_handle>:
10001898:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000189a:	0004      	movs	r4, r0
1000189c:	302b      	adds	r0, #43	; 0x2b
1000189e:	7805      	ldrb	r5, [r0, #0]
100018a0:	2000      	movs	r0, #0
100018a2:	428d      	cmp	r5, r1
100018a4:	d93f      	bls.n	10001926 <hogpd_get_att_handle+0x8e>
100018a6:	2a16      	cmp	r2, #22
100018a8:	d83d      	bhi.n	10001926 <hogpd_get_att_handle+0x8e>
100018aa:	010d      	lsls	r5, r1, #4
100018ac:	2a12      	cmp	r2, #18
100018ae:	d903      	bls.n	100018b8 <hogpd_get_att_handle+0x20>
100018b0:	1966      	adds	r6, r4, r5
100018b2:	7c76      	ldrb	r6, [r6, #17]
100018b4:	429e      	cmp	r6, r3
100018b6:	d936      	bls.n	10001926 <hogpd_get_att_handle+0x8e>
100018b8:	8ca0      	ldrh	r0, [r4, #36]	; 0x24
100018ba:	2900      	cmp	r1, #0
100018bc:	d008      	beq.n	100018d0 <hogpd_get_att_handle+0x38>
100018be:	7c26      	ldrb	r6, [r4, #16]
100018c0:	1980      	adds	r0, r0, r6
100018c2:	b280      	uxth	r0, r0
100018c4:	2901      	cmp	r1, #1
100018c6:	d003      	beq.n	100018d0 <hogpd_get_att_handle+0x38>
100018c8:	1c61      	adds	r1, r4, #1
100018ca:	7fc9      	ldrb	r1, [r1, #31]
100018cc:	1840      	adds	r0, r0, r1
100018ce:	b280      	uxth	r0, r0
100018d0:	2a12      	cmp	r2, #18
100018d2:	d83d      	bhi.n	10001950 <hogpd_get_att_handle+0xb8>
100018d4:	1964      	adds	r4, r4, r5
100018d6:	88a3      	ldrh	r3, [r4, #4]
100018d8:	2101      	movs	r1, #1
100018da:	001c      	movs	r4, r3
100018dc:	1880      	adds	r0, r0, r2
100018de:	b280      	uxth	r0, r0
100018e0:	400c      	ands	r4, r1
100018e2:	420b      	tst	r3, r1
100018e4:	d103      	bne.n	100018ee <hogpd_get_att_handle+0x56>
100018e6:	2a0f      	cmp	r2, #15
100018e8:	d91e      	bls.n	10001928 <hogpd_get_att_handle+0x90>
100018ea:	3805      	subs	r0, #5
100018ec:	b280      	uxth	r0, r0
100018ee:	2102      	movs	r1, #2
100018f0:	001c      	movs	r4, r3
100018f2:	400c      	ands	r4, r1
100018f4:	420b      	tst	r3, r1
100018f6:	d104      	bne.n	10001902 <hogpd_get_att_handle+0x6a>
100018f8:	0011      	movs	r1, r2
100018fa:	3910      	subs	r1, #16
100018fc:	2902      	cmp	r1, #2
100018fe:	d800      	bhi.n	10001902 <hogpd_get_att_handle+0x6a>
10001900:	0020      	movs	r0, r4
10001902:	2104      	movs	r1, #4
10001904:	001c      	movs	r4, r3
10001906:	400c      	ands	r4, r1
10001908:	420b      	tst	r3, r1
1000190a:	d103      	bne.n	10001914 <hogpd_get_att_handle+0x7c>
1000190c:	2a0a      	cmp	r2, #10
1000190e:	d911      	bls.n	10001934 <hogpd_get_att_handle+0x9c>
10001910:	3802      	subs	r0, #2
10001912:	b280      	uxth	r0, r0
10001914:	2108      	movs	r1, #8
10001916:	001c      	movs	r4, r3
10001918:	400c      	ands	r4, r1
1000191a:	420b      	tst	r3, r1
1000191c:	d103      	bne.n	10001926 <hogpd_get_att_handle+0x8e>
1000191e:	428a      	cmp	r2, r1
10001920:	d90e      	bls.n	10001940 <hogpd_get_att_handle+0xa8>
10001922:	3802      	subs	r0, #2
10001924:	b280      	uxth	r0, r0
10001926:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
10001928:	0011      	movs	r1, r2
1000192a:	390b      	subs	r1, #11
1000192c:	2904      	cmp	r1, #4
1000192e:	d8de      	bhi.n	100018ee <hogpd_get_att_handle+0x56>
10001930:	0020      	movs	r0, r4
10001932:	e7dc      	b.n	100018ee <hogpd_get_att_handle+0x56>
10001934:	0011      	movs	r1, r2
10001936:	3909      	subs	r1, #9
10001938:	2901      	cmp	r1, #1
1000193a:	d8eb      	bhi.n	10001914 <hogpd_get_att_handle+0x7c>
1000193c:	0020      	movs	r0, r4
1000193e:	e7e9      	b.n	10001914 <hogpd_get_att_handle+0x7c>
10001940:	2a01      	cmp	r2, #1
10001942:	d901      	bls.n	10001948 <hogpd_get_att_handle+0xb0>
10001944:	3801      	subs	r0, #1
10001946:	e7ed      	b.n	10001924 <hogpd_get_att_handle+0x8c>
10001948:	2a01      	cmp	r2, #1
1000194a:	d1ec      	bne.n	10001926 <hogpd_get_att_handle+0x8e>
1000194c:	0020      	movs	r0, r4
1000194e:	e7ea      	b.n	10001926 <hogpd_get_att_handle+0x8e>
10001950:	1961      	adds	r1, r4, r5
10001952:	9101      	str	r1, [sp, #4]
10001954:	7c89      	ldrb	r1, [r1, #18]
10001956:	1841      	adds	r1, r0, r1
10001958:	2000      	movs	r0, #0
1000195a:	b289      	uxth	r1, r1
1000195c:	b2c7      	uxtb	r7, r0
1000195e:	42bb      	cmp	r3, r7
10001960:	d80d      	bhi.n	1000197e <hogpd_get_att_handle+0xe6>
10001962:	2a16      	cmp	r2, #22
10001964:	d107      	bne.n	10001976 <hogpd_get_att_handle+0xde>
10001966:	2040      	movs	r0, #64	; 0x40
10001968:	4098      	lsls	r0, r3
1000196a:	0003      	movs	r3, r0
1000196c:	1964      	adds	r4, r4, r5
1000196e:	88a4      	ldrh	r4, [r4, #4]
10001970:	2000      	movs	r0, #0
10001972:	4223      	tst	r3, r4
10001974:	d1d7      	bne.n	10001926 <hogpd_get_att_handle+0x8e>
10001976:	3a13      	subs	r2, #19
10001978:	188a      	adds	r2, r1, r2
1000197a:	b290      	uxth	r0, r2
1000197c:	e7d3      	b.n	10001926 <hogpd_get_att_handle+0x8e>
1000197e:	2740      	movs	r7, #64	; 0x40
10001980:	4087      	lsls	r7, r0
10001982:	9e01      	ldr	r6, [sp, #4]
10001984:	88b6      	ldrh	r6, [r6, #4]
10001986:	4237      	tst	r7, r6
10001988:	d103      	bne.n	10001992 <hogpd_get_att_handle+0xfa>
1000198a:	3103      	adds	r1, #3
1000198c:	b289      	uxth	r1, r1
1000198e:	3001      	adds	r0, #1
10001990:	e7e4      	b.n	1000195c <hogpd_get_att_handle+0xc4>
10001992:	3104      	adds	r1, #4
10001994:	e7fa      	b.n	1000198c <hogpd_get_att_handle+0xf4>
	...

10001998 <hogpd_init>:
10001998:	b5f0      	push	{r4, r5, r6, r7, lr}
1000199a:	b09b      	sub	sp, #108	; 0x6c
1000199c:	9009      	str	r0, [sp, #36]	; 0x24
1000199e:	910e      	str	r1, [sp, #56]	; 0x38
100019a0:	930f      	str	r3, [sp, #60]	; 0x3c
100019a2:	2101      	movs	r1, #1
100019a4:	4bb9      	ldr	r3, [pc, #740]	; (10001c8c <hogpd_init+0x2f4>)
100019a6:	202c      	movs	r0, #44	; 0x2c
100019a8:	9210      	str	r2, [sp, #64]	; 0x40
100019aa:	4798      	blx	r3
100019ac:	0007      	movs	r7, r0
100019ae:	4cb8      	ldr	r4, [pc, #736]	; (10001c90 <hogpd_init+0x2f8>)
100019b0:	2208      	movs	r2, #8
100019b2:	2100      	movs	r1, #0
100019b4:	a814      	add	r0, sp, #80	; 0x50
100019b6:	47a0      	blx	r4
100019b8:	2210      	movs	r2, #16
100019ba:	2100      	movs	r1, #0
100019bc:	a816      	add	r0, sp, #88	; 0x58
100019be:	47a0      	blx	r4
100019c0:	222c      	movs	r2, #44	; 0x2c
100019c2:	2100      	movs	r1, #0
100019c4:	0038      	movs	r0, r7
100019c6:	47a0      	blx	r4
100019c8:	9b20      	ldr	r3, [sp, #128]	; 0x80
100019ca:	2400      	movs	r4, #0
100019cc:	781b      	ldrb	r3, [r3, #0]
100019ce:	3b01      	subs	r3, #1
100019d0:	2b01      	cmp	r3, #1
100019d2:	d900      	bls.n	100019d6 <hogpd_init+0x3e>
100019d4:	3481      	adds	r4, #129	; 0x81
100019d6:	2600      	movs	r6, #0
100019d8:	960c      	str	r6, [sp, #48]	; 0x30
100019da:	9b20      	ldr	r3, [sp, #128]	; 0x80
100019dc:	781b      	ldrb	r3, [r3, #0]
100019de:	42b3      	cmp	r3, r6
100019e0:	d800      	bhi.n	100019e4 <hogpd_init+0x4c>
100019e2:	e147      	b.n	10001c74 <hogpd_init+0x2dc>
100019e4:	2c00      	cmp	r4, #0
100019e6:	d01a      	beq.n	10001a1e <hogpd_init+0x86>
100019e8:	2216      	movs	r2, #22
100019ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
100019ec:	a90e      	add	r1, sp, #56	; 0x38
100019ee:	881b      	ldrh	r3, [r3, #0]
100019f0:	1852      	adds	r2, r2, r1
100019f2:	84bb      	strh	r3, [r7, #36]	; 0x24
100019f4:	8013      	strh	r3, [r2, #0]
100019f6:	9b20      	ldr	r3, [sp, #128]	; 0x80
100019f8:	2500      	movs	r5, #0
100019fa:	781a      	ldrb	r2, [r3, #0]
100019fc:	003b      	movs	r3, r7
100019fe:	332b      	adds	r3, #43	; 0x2b
10001a00:	701a      	strb	r2, [r3, #0]
10001a02:	ab13      	add	r3, sp, #76	; 0x4c
10001a04:	701d      	strb	r5, [r3, #0]
10001a06:	9b20      	ldr	r3, [sp, #128]	; 0x80
10001a08:	781b      	ldrb	r3, [r3, #0]
10001a0a:	42ab      	cmp	r3, r5
10001a0c:	d800      	bhi.n	10001a10 <hogpd_init+0x78>
10001a0e:	e1d9      	b.n	10001dc4 <hogpd_init+0x42c>
10001a10:	2c00      	cmp	r4, #0
10001a12:	d100      	bne.n	10001a16 <hogpd_init+0x7e>
10001a14:	e148      	b.n	10001ca8 <hogpd_init+0x310>
10001a16:	0038      	movs	r0, r7
10001a18:	4b9e      	ldr	r3, [pc, #632]	; (10001c94 <hogpd_init+0x2fc>)
10001a1a:	4798      	blx	r3
10001a1c:	e1ea      	b.n	10001df4 <hogpd_init+0x45c>
10001a1e:	2314      	movs	r3, #20
10001a20:	4373      	muls	r3, r6
10001a22:	9a20      	ldr	r2, [sp, #128]	; 0x80
10001a24:	18d3      	adds	r3, r2, r3
10001a26:	9305      	str	r3, [sp, #20]
10001a28:	78db      	ldrb	r3, [r3, #3]
10001a2a:	2b05      	cmp	r3, #5
10001a2c:	d900      	bls.n	10001a30 <hogpd_init+0x98>
10001a2e:	e12a      	b.n	10001c86 <hogpd_init+0x2ee>
10001a30:	223f      	movs	r2, #63	; 0x3f
10001a32:	209c      	movs	r0, #156	; 0x9c
10001a34:	0133      	lsls	r3, r6, #4
10001a36:	18fb      	adds	r3, r7, r3
10001a38:	9306      	str	r3, [sp, #24]
10001a3a:	9b05      	ldr	r3, [sp, #20]
10001a3c:	2103      	movs	r1, #3
10001a3e:	789b      	ldrb	r3, [r3, #2]
10001a40:	0040      	lsls	r0, r0, #1
10001a42:	4013      	ands	r3, r2
10001a44:	9a06      	ldr	r2, [sp, #24]
10001a46:	ad16      	add	r5, sp, #88	; 0x58
10001a48:	8093      	strh	r3, [r2, #4]
10001a4a:	9b05      	ldr	r3, [sp, #20]
10001a4c:	78db      	ldrb	r3, [r3, #3]
10001a4e:	7453      	strb	r3, [r2, #17]
10001a50:	4b8e      	ldr	r3, [pc, #568]	; (10001c8c <hogpd_init+0x2f4>)
10001a52:	4798      	blx	r3
10001a54:	00b3      	lsls	r3, r6, #2
10001a56:	aa14      	add	r2, sp, #80	; 0x50
10001a58:	5098      	str	r0, [r3, r2]
10001a5a:	00f3      	lsls	r3, r6, #3
10001a5c:	9308      	str	r3, [sp, #32]
10001a5e:	23fd      	movs	r3, #253	; 0xfd
10001a60:	00f2      	lsls	r2, r6, #3
10001a62:	5153      	str	r3, [r2, r5]
10001a64:	9b06      	ldr	r3, [sp, #24]
10001a66:	9a06      	ldr	r2, [sp, #24]
10001a68:	7c1b      	ldrb	r3, [r3, #16]
10001a6a:	498b      	ldr	r1, [pc, #556]	; (10001c98 <hogpd_init+0x300>)
10001a6c:	3307      	adds	r3, #7
10001a6e:	7413      	strb	r3, [r2, #16]
10001a70:	4b8a      	ldr	r3, [pc, #552]	; (10001c9c <hogpd_init+0x304>)
10001a72:	2298      	movs	r2, #152	; 0x98
10001a74:	9007      	str	r0, [sp, #28]
10001a76:	4798      	blx	r3
10001a78:	9b05      	ldr	r3, [sp, #20]
10001a7a:	789b      	ldrb	r3, [r3, #2]
10001a7c:	071b      	lsls	r3, r3, #28
10001a7e:	d511      	bpl.n	10001aa4 <hogpd_init+0x10c>
10001a80:	00f3      	lsls	r3, r6, #3
10001a82:	595b      	ldr	r3, [r3, r5]
10001a84:	9308      	str	r3, [sp, #32]
10001a86:	2381      	movs	r3, #129	; 0x81
10001a88:	9a08      	ldr	r2, [sp, #32]
10001a8a:	005b      	lsls	r3, r3, #1
10001a8c:	4313      	orrs	r3, r2
10001a8e:	00f2      	lsls	r2, r6, #3
10001a90:	5153      	str	r3, [r2, r5]
10001a92:	9b06      	ldr	r3, [sp, #24]
10001a94:	9a06      	ldr	r2, [sp, #24]
10001a96:	7c1b      	ldrb	r3, [r3, #16]
10001a98:	3302      	adds	r3, #2
10001a9a:	7413      	strb	r3, [r2, #16]
10001a9c:	9b05      	ldr	r3, [sp, #20]
10001a9e:	9a07      	ldr	r2, [sp, #28]
10001aa0:	8a5b      	ldrh	r3, [r3, #18]
10001aa2:	81d3      	strh	r3, [r2, #14]
10001aa4:	9b05      	ldr	r3, [sp, #20]
10001aa6:	789b      	ldrb	r3, [r3, #2]
10001aa8:	075b      	lsls	r3, r3, #29
10001aaa:	d50d      	bpl.n	10001ac8 <hogpd_init+0x130>
10001aac:	0133      	lsls	r3, r6, #4
10001aae:	18fb      	adds	r3, r7, r3
10001ab0:	7c1a      	ldrb	r2, [r3, #16]
10001ab2:	21c0      	movs	r1, #192	; 0xc0
10001ab4:	4694      	mov	ip, r2
10001ab6:	a816      	add	r0, sp, #88	; 0x58
10001ab8:	00f5      	lsls	r5, r6, #3
10001aba:	582a      	ldr	r2, [r5, r0]
10001abc:	00c9      	lsls	r1, r1, #3
10001abe:	4311      	orrs	r1, r2
10001ac0:	4662      	mov	r2, ip
10001ac2:	3202      	adds	r2, #2
10001ac4:	5029      	str	r1, [r5, r0]
10001ac6:	741a      	strb	r2, [r3, #16]
10001ac8:	9b05      	ldr	r3, [sp, #20]
10001aca:	789b      	ldrb	r3, [r3, #2]
10001acc:	07db      	lsls	r3, r3, #31
10001ace:	d518      	bpl.n	10001b02 <hogpd_init+0x16a>
10001ad0:	0133      	lsls	r3, r6, #4
10001ad2:	18fb      	adds	r3, r7, r3
10001ad4:	7c1a      	ldrb	r2, [r3, #16]
10001ad6:	21f8      	movs	r1, #248	; 0xf8
10001ad8:	4694      	mov	ip, r2
10001ada:	a816      	add	r0, sp, #88	; 0x58
10001adc:	00f5      	lsls	r5, r6, #3
10001ade:	582a      	ldr	r2, [r5, r0]
10001ae0:	0209      	lsls	r1, r1, #8
10001ae2:	4311      	orrs	r1, r2
10001ae4:	4662      	mov	r2, ip
10001ae6:	3205      	adds	r2, #5
10001ae8:	741a      	strb	r2, [r3, #16]
10001aea:	9b05      	ldr	r3, [sp, #20]
10001aec:	5029      	str	r1, [r5, r0]
10001aee:	789b      	ldrb	r3, [r3, #2]
10001af0:	06db      	lsls	r3, r3, #27
10001af2:	d506      	bpl.n	10001b02 <hogpd_init+0x16a>
10001af4:	2380      	movs	r3, #128	; 0x80
10001af6:	9a07      	ldr	r2, [sp, #28]
10001af8:	011b      	lsls	r3, r3, #4
10001afa:	3260      	adds	r2, #96	; 0x60
10001afc:	8851      	ldrh	r1, [r2, #2]
10001afe:	430b      	orrs	r3, r1
10001b00:	8053      	strh	r3, [r2, #2]
10001b02:	9b05      	ldr	r3, [sp, #20]
10001b04:	789b      	ldrb	r3, [r3, #2]
10001b06:	079b      	lsls	r3, r3, #30
10001b08:	d518      	bpl.n	10001b3c <hogpd_init+0x1a4>
10001b0a:	0133      	lsls	r3, r6, #4
10001b0c:	18fb      	adds	r3, r7, r3
10001b0e:	7c1a      	ldrb	r2, [r3, #16]
10001b10:	21e0      	movs	r1, #224	; 0xe0
10001b12:	4694      	mov	ip, r2
10001b14:	a816      	add	r0, sp, #88	; 0x58
10001b16:	00f5      	lsls	r5, r6, #3
10001b18:	582a      	ldr	r2, [r5, r0]
10001b1a:	02c9      	lsls	r1, r1, #11
10001b1c:	4311      	orrs	r1, r2
10001b1e:	4662      	mov	r2, ip
10001b20:	3203      	adds	r2, #3
10001b22:	741a      	strb	r2, [r3, #16]
10001b24:	9b05      	ldr	r3, [sp, #20]
10001b26:	5029      	str	r1, [r5, r0]
10001b28:	789b      	ldrb	r3, [r3, #2]
10001b2a:	069b      	lsls	r3, r3, #26
10001b2c:	d506      	bpl.n	10001b3c <hogpd_init+0x1a4>
10001b2e:	2380      	movs	r3, #128	; 0x80
10001b30:	9a07      	ldr	r2, [sp, #28]
10001b32:	011b      	lsls	r3, r3, #4
10001b34:	3288      	adds	r2, #136	; 0x88
10001b36:	8851      	ldrh	r1, [r2, #2]
10001b38:	430b      	orrs	r3, r1
10001b3a:	8053      	strh	r3, [r2, #2]
10001b3c:	0133      	lsls	r3, r6, #4
10001b3e:	18fb      	adds	r3, r7, r3
10001b40:	930a      	str	r3, [sp, #40]	; 0x28
10001b42:	9a0a      	ldr	r2, [sp, #40]	; 0x28
10001b44:	7c1b      	ldrb	r3, [r3, #16]
10001b46:	7493      	strb	r3, [r2, #18]
10001b48:	2300      	movs	r3, #0
10001b4a:	9308      	str	r3, [sp, #32]
10001b4c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
10001b4e:	9a08      	ldr	r2, [sp, #32]
10001b50:	7c1b      	ldrb	r3, [r3, #16]
10001b52:	930d      	str	r3, [sp, #52]	; 0x34
10001b54:	9b05      	ldr	r3, [sp, #20]
10001b56:	78db      	ldrb	r3, [r3, #3]
10001b58:	4293      	cmp	r3, r2
10001b5a:	d807      	bhi.n	10001b6c <hogpd_init+0x1d4>
10001b5c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
10001b5e:	9a0d      	ldr	r2, [sp, #52]	; 0x34
10001b60:	3601      	adds	r6, #1
10001b62:	189a      	adds	r2, r3, r2
10001b64:	b2d3      	uxtb	r3, r2
10001b66:	930c      	str	r3, [sp, #48]	; 0x30
10001b68:	b2f6      	uxtb	r6, r6
10001b6a:	e736      	b.n	100019da <hogpd_init+0x42>
10001b6c:	9b08      	ldr	r3, [sp, #32]
10001b6e:	2201      	movs	r2, #1
10001b70:	009b      	lsls	r3, r3, #2
10001b72:	0018      	movs	r0, r3
10001b74:	3013      	adds	r0, #19
10001b76:	930b      	str	r3, [sp, #44]	; 0x2c
10001b78:	1141      	asrs	r1, r0, #5
10001b7a:	0073      	lsls	r3, r6, #1
10001b7c:	9311      	str	r3, [sp, #68]	; 0x44
10001b7e:	1859      	adds	r1, r3, r1
10001b80:	231f      	movs	r3, #31
10001b82:	4003      	ands	r3, r0
10001b84:	409a      	lsls	r2, r3
10001b86:	ad16      	add	r5, sp, #88	; 0x58
10001b88:	0089      	lsls	r1, r1, #2
10001b8a:	594b      	ldr	r3, [r1, r5]
10001b8c:	00c0      	lsls	r0, r0, #3
10001b8e:	431a      	orrs	r2, r3
10001b90:	514a      	str	r2, [r1, r5]
10001b92:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
10001b94:	0073      	lsls	r3, r6, #1
10001b96:	3214      	adds	r2, #20
10001b98:	1151      	asrs	r1, r2, #5
10001b9a:	1859      	adds	r1, r3, r1
10001b9c:	231f      	movs	r3, #31
10001b9e:	401a      	ands	r2, r3
10001ba0:	4694      	mov	ip, r2
10001ba2:	2201      	movs	r2, #1
10001ba4:	4663      	mov	r3, ip
10001ba6:	409a      	lsls	r2, r3
10001ba8:	0089      	lsls	r1, r1, #2
10001baa:	594b      	ldr	r3, [r1, r5]
10001bac:	431a      	orrs	r2, r3
10001bae:	514a      	str	r2, [r1, r5]
10001bb0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
10001bb2:	231f      	movs	r3, #31
10001bb4:	3215      	adds	r2, #21
10001bb6:	4694      	mov	ip, r2
10001bb8:	1151      	asrs	r1, r2, #5
10001bba:	0072      	lsls	r2, r6, #1
10001bbc:	1851      	adds	r1, r2, r1
10001bbe:	4662      	mov	r2, ip
10001bc0:	401a      	ands	r2, r3
10001bc2:	0013      	movs	r3, r2
10001bc4:	2201      	movs	r2, #1
10001bc6:	409a      	lsls	r2, r3
10001bc8:	0013      	movs	r3, r2
10001bca:	0089      	lsls	r1, r1, #2
10001bcc:	594a      	ldr	r2, [r1, r5]
10001bce:	4313      	orrs	r3, r2
10001bd0:	9a0d      	ldr	r2, [sp, #52]	; 0x34
10001bd2:	514b      	str	r3, [r1, r5]
10001bd4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
10001bd6:	3203      	adds	r2, #3
10001bd8:	741a      	strb	r2, [r3, #16]
10001bda:	9b07      	ldr	r3, [sp, #28]
10001bdc:	2220      	movs	r2, #32
10001bde:	4930      	ldr	r1, [pc, #192]	; (10001ca0 <hogpd_init+0x308>)
10001be0:	1818      	adds	r0, r3, r0
10001be2:	4b2e      	ldr	r3, [pc, #184]	; (10001c9c <hogpd_init+0x304>)
10001be4:	4798      	blx	r3
10001be6:	2214      	movs	r2, #20
10001be8:	4372      	muls	r2, r6
10001bea:	9b20      	ldr	r3, [sp, #128]	; 0x80
10001bec:	189a      	adds	r2, r3, r2
10001bee:	9b08      	ldr	r3, [sp, #32]
10001bf0:	18d3      	adds	r3, r2, r3
10001bf2:	7919      	ldrb	r1, [r3, #4]
10001bf4:	469c      	mov	ip, r3
10001bf6:	2303      	movs	r3, #3
10001bf8:	400b      	ands	r3, r1
10001bfa:	2b02      	cmp	r3, #2
10001bfc:	d032      	beq.n	10001c64 <hogpd_init+0x2cc>
10001bfe:	2b03      	cmp	r3, #3
10001c00:	d033      	beq.n	10001c6a <hogpd_init+0x2d2>
10001c02:	2b01      	cmp	r3, #1
10001c04:	d133      	bne.n	10001c6e <hogpd_init+0x2d6>
10001c06:	980b      	ldr	r0, [sp, #44]	; 0x2c
10001c08:	0072      	lsls	r2, r6, #1
10001c0a:	3016      	adds	r0, #22
10001c0c:	1141      	asrs	r1, r0, #5
10001c0e:	1851      	adds	r1, r2, r1
10001c10:	221f      	movs	r2, #31
10001c12:	4010      	ands	r0, r2
10001c14:	4083      	lsls	r3, r0
10001c16:	0089      	lsls	r1, r1, #2
10001c18:	594a      	ldr	r2, [r1, r5]
10001c1a:	4313      	orrs	r3, r2
10001c1c:	514b      	str	r3, [r1, r5]
10001c1e:	2140      	movs	r1, #64	; 0x40
10001c20:	9b0a      	ldr	r3, [sp, #40]	; 0x28
10001c22:	9a0a      	ldr	r2, [sp, #40]	; 0x28
10001c24:	7c1b      	ldrb	r3, [r3, #16]
10001c26:	3301      	adds	r3, #1
10001c28:	7413      	strb	r3, [r2, #16]
10001c2a:	9b08      	ldr	r3, [sp, #32]
10001c2c:	9a06      	ldr	r2, [sp, #24]
10001c2e:	4099      	lsls	r1, r3
10001c30:	9b06      	ldr	r3, [sp, #24]
10001c32:	889b      	ldrh	r3, [r3, #4]
10001c34:	430b      	orrs	r3, r1
10001c36:	8093      	strh	r3, [r2, #4]
10001c38:	4663      	mov	r3, ip
10001c3a:	2210      	movs	r2, #16
10001c3c:	791b      	ldrb	r3, [r3, #4]
10001c3e:	4013      	ands	r3, r2
10001c40:	425a      	negs	r2, r3
10001c42:	4153      	adcs	r3, r2
10001c44:	22d0      	movs	r2, #208	; 0xd0
10001c46:	425b      	negs	r3, r3
10001c48:	0adb      	lsrs	r3, r3, #11
10001c4a:	02db      	lsls	r3, r3, #11
10001c4c:	0152      	lsls	r2, r2, #5
10001c4e:	189b      	adds	r3, r3, r2
10001c50:	9a08      	ldr	r2, [sp, #32]
10001c52:	9907      	ldr	r1, [sp, #28]
10001c54:	3205      	adds	r2, #5
10001c56:	0152      	lsls	r2, r2, #5
10001c58:	188a      	adds	r2, r1, r2
10001c5a:	8053      	strh	r3, [r2, #2]
10001c5c:	9b08      	ldr	r3, [sp, #32]
10001c5e:	3301      	adds	r3, #1
10001c60:	b2db      	uxtb	r3, r3
10001c62:	e772      	b.n	10001b4a <hogpd_init+0x1b2>
10001c64:	23e0      	movs	r3, #224	; 0xe0
10001c66:	011b      	lsls	r3, r3, #4
10001c68:	e7f2      	b.n	10001c50 <hogpd_init+0x2b8>
10001c6a:	23a0      	movs	r3, #160	; 0xa0
10001c6c:	e7fb      	b.n	10001c66 <hogpd_init+0x2ce>
10001c6e:	2300      	movs	r3, #0
10001c70:	2481      	movs	r4, #129	; 0x81
10001c72:	e7ed      	b.n	10001c50 <hogpd_init+0x2b8>
10001c74:	2c00      	cmp	r4, #0
10001c76:	d000      	beq.n	10001c7a <hogpd_init+0x2e2>
10001c78:	e6b6      	b.n	100019e8 <hogpd_init+0x50>
10001c7a:	990c      	ldr	r1, [sp, #48]	; 0x30
10001c7c:	980e      	ldr	r0, [sp, #56]	; 0x38
10001c7e:	4b09      	ldr	r3, [pc, #36]	; (10001ca4 <hogpd_init+0x30c>)
10001c80:	4798      	blx	r3
10001c82:	0004      	movs	r4, r0
10001c84:	e6b0      	b.n	100019e8 <hogpd_init+0x50>
10001c86:	2481      	movs	r4, #129	; 0x81
10001c88:	e6ae      	b.n	100019e8 <hogpd_init+0x50>
10001c8a:	46c0      	nop			; (mov r8, r8)
10001c8c:	000013b9 	.word	0x000013b9
10001c90:	00005859 	.word	0x00005859
10001c94:	000014ed 	.word	0x000014ed
10001c98:	10009ad4 	.word	0x10009ad4
10001c9c:	00005821 	.word	0x00005821
10001ca0:	10009b6c 	.word	0x10009b6c
10001ca4:	0001e3bf 	.word	0x0001e3bf
10001ca8:	ab16      	add	r3, sp, #88	; 0x58
10001caa:	00ea      	lsls	r2, r5, #3
10001cac:	189a      	adds	r2, r3, r2
10001cae:	231e      	movs	r3, #30
10001cb0:	2016      	movs	r0, #22
10001cb2:	990f      	ldr	r1, [sp, #60]	; 0x3c
10001cb4:	400b      	ands	r3, r1
10001cb6:	9303      	str	r3, [sp, #12]
10001cb8:	a914      	add	r1, sp, #80	; 0x50
10001cba:	00ab      	lsls	r3, r5, #2
10001cbc:	585b      	ldr	r3, [r3, r1]
10001cbe:	4954      	ldr	r1, [pc, #336]	; (10001e10 <hogpd_init+0x478>)
10001cc0:	9302      	str	r3, [sp, #8]
10001cc2:	9b09      	ldr	r3, [sp, #36]	; 0x24
10001cc4:	8a1b      	ldrh	r3, [r3, #16]
10001cc6:	9400      	str	r4, [sp, #0]
10001cc8:	ac0e      	add	r4, sp, #56	; 0x38
10001cca:	9301      	str	r3, [sp, #4]
10001ccc:	1900      	adds	r0, r0, r4
10001cce:	2327      	movs	r3, #39	; 0x27
10001cd0:	4c50      	ldr	r4, [pc, #320]	; (10001e14 <hogpd_init+0x47c>)
10001cd2:	47a0      	blx	r4
10001cd4:	012b      	lsls	r3, r5, #4
10001cd6:	18fb      	adds	r3, r7, r3
10001cd8:	aa0e      	add	r2, sp, #56	; 0x38
10001cda:	8ad2      	ldrh	r2, [r2, #22]
10001cdc:	7c1b      	ldrb	r3, [r3, #16]
10001cde:	0004      	movs	r4, r0
10001ce0:	189b      	adds	r3, r3, r2
10001ce2:	aa0e      	add	r2, sp, #56	; 0x38
10001ce4:	82d3      	strh	r3, [r2, #22]
10001ce6:	2800      	cmp	r0, #0
10001ce8:	d141      	bne.n	10001d6e <hogpd_init+0x3d6>
10001cea:	0003      	movs	r3, r0
10001cec:	4c4a      	ldr	r4, [pc, #296]	; (10001e18 <hogpd_init+0x480>)
10001cee:	2203      	movs	r2, #3
10001cf0:	0029      	movs	r1, r5
10001cf2:	0038      	movs	r0, r7
10001cf4:	47a0      	blx	r4
10001cf6:	1e04      	subs	r4, r0, #0
10001cf8:	d105      	bne.n	10001d06 <hogpd_init+0x36e>
10001cfa:	22aa      	movs	r2, #170	; 0xaa
10001cfc:	4947      	ldr	r1, [pc, #284]	; (10001e1c <hogpd_init+0x484>)
10001cfe:	4848      	ldr	r0, [pc, #288]	; (10001e20 <hogpd_init+0x488>)
10001d00:	4b48      	ldr	r3, [pc, #288]	; (10001e24 <hogpd_init+0x48c>)
10001d02:	0052      	lsls	r2, r2, #1
10001d04:	4798      	blx	r3
10001d06:	2614      	movs	r6, #20
10001d08:	436e      	muls	r6, r5
10001d0a:	0033      	movs	r3, r6
10001d0c:	9a20      	ldr	r2, [sp, #128]	; 0x80
10001d0e:	330e      	adds	r3, #14
10001d10:	0020      	movs	r0, r4
10001d12:	18d3      	adds	r3, r2, r3
10001d14:	4c44      	ldr	r4, [pc, #272]	; (10001e28 <hogpd_init+0x490>)
10001d16:	2200      	movs	r2, #0
10001d18:	2104      	movs	r1, #4
10001d1a:	47a0      	blx	r4
10001d1c:	1e04      	subs	r4, r0, #0
10001d1e:	d126      	bne.n	10001d6e <hogpd_init+0x3d6>
10001d20:	9b20      	ldr	r3, [sp, #128]	; 0x80
10001d22:	2208      	movs	r2, #8
10001d24:	199b      	adds	r3, r3, r6
10001d26:	9305      	str	r3, [sp, #20]
10001d28:	789b      	ldrb	r3, [r3, #2]
10001d2a:	0018      	movs	r0, r3
10001d2c:	4010      	ands	r0, r2
10001d2e:	4213      	tst	r3, r2
10001d30:	d015      	beq.n	10001d5e <hogpd_init+0x3c6>
10001d32:	0023      	movs	r3, r4
10001d34:	0029      	movs	r1, r5
10001d36:	4c38      	ldr	r4, [pc, #224]	; (10001e18 <hogpd_init+0x480>)
10001d38:	0038      	movs	r0, r7
10001d3a:	47a0      	blx	r4
10001d3c:	1e04      	subs	r4, r0, #0
10001d3e:	d105      	bne.n	10001d4c <hogpd_init+0x3b4>
10001d40:	225e      	movs	r2, #94	; 0x5e
10001d42:	4936      	ldr	r1, [pc, #216]	; (10001e1c <hogpd_init+0x484>)
10001d44:	4836      	ldr	r0, [pc, #216]	; (10001e20 <hogpd_init+0x488>)
10001d46:	4b37      	ldr	r3, [pc, #220]	; (10001e24 <hogpd_init+0x48c>)
10001d48:	32ff      	adds	r2, #255	; 0xff
10001d4a:	4798      	blx	r3
10001d4c:	0033      	movs	r3, r6
10001d4e:	9a20      	ldr	r2, [sp, #128]	; 0x80
10001d50:	3314      	adds	r3, #20
10001d52:	0020      	movs	r0, r4
10001d54:	18d3      	adds	r3, r2, r3
10001d56:	2102      	movs	r1, #2
10001d58:	2200      	movs	r2, #0
10001d5a:	4c33      	ldr	r4, [pc, #204]	; (10001e28 <hogpd_init+0x490>)
10001d5c:	47a0      	blx	r4
10001d5e:	2600      	movs	r6, #0
10001d60:	0004      	movs	r4, r0
10001d62:	2c00      	cmp	r4, #0
10001d64:	d103      	bne.n	10001d6e <hogpd_init+0x3d6>
10001d66:	9b05      	ldr	r3, [sp, #20]
10001d68:	78db      	ldrb	r3, [r3, #3]
10001d6a:	42b3      	cmp	r3, r6
10001d6c:	d806      	bhi.n	10001d7c <hogpd_init+0x3e4>
10001d6e:	2201      	movs	r2, #1
10001d70:	012b      	lsls	r3, r5, #4
10001d72:	18fb      	adds	r3, r7, r3
10001d74:	18ad      	adds	r5, r5, r2
10001d76:	74da      	strb	r2, [r3, #19]
10001d78:	b2ed      	uxtb	r5, r5
10001d7a:	e644      	b.n	10001a06 <hogpd_init+0x6e>
10001d7c:	2314      	movs	r3, #20
10001d7e:	436b      	muls	r3, r5
10001d80:	9920      	ldr	r1, [sp, #128]	; 0x80
10001d82:	aa13      	add	r2, sp, #76	; 0x4c
10001d84:	18cb      	adds	r3, r1, r3
10001d86:	199b      	adds	r3, r3, r6
10001d88:	7a59      	ldrb	r1, [r3, #9]
10001d8a:	791b      	ldrb	r3, [r3, #4]
10001d8c:	7011      	strb	r1, [r2, #0]
10001d8e:	2103      	movs	r1, #3
10001d90:	400b      	ands	r3, r1
10001d92:	7053      	strb	r3, [r2, #1]
10001d94:	4c20      	ldr	r4, [pc, #128]	; (10001e18 <hogpd_init+0x480>)
10001d96:	0033      	movs	r3, r6
10001d98:	2215      	movs	r2, #21
10001d9a:	0029      	movs	r1, r5
10001d9c:	0038      	movs	r0, r7
10001d9e:	47a0      	blx	r4
10001da0:	1e04      	subs	r4, r0, #0
10001da2:	d105      	bne.n	10001db0 <hogpd_init+0x418>
10001da4:	226c      	movs	r2, #108	; 0x6c
10001da6:	491d      	ldr	r1, [pc, #116]	; (10001e1c <hogpd_init+0x484>)
10001da8:	481d      	ldr	r0, [pc, #116]	; (10001e20 <hogpd_init+0x488>)
10001daa:	4b1e      	ldr	r3, [pc, #120]	; (10001e24 <hogpd_init+0x48c>)
10001dac:	32ff      	adds	r2, #255	; 0xff
10001dae:	4798      	blx	r3
10001db0:	0020      	movs	r0, r4
10001db2:	2200      	movs	r2, #0
10001db4:	4c1c      	ldr	r4, [pc, #112]	; (10001e28 <hogpd_init+0x490>)
10001db6:	2102      	movs	r1, #2
10001db8:	ab13      	add	r3, sp, #76	; 0x4c
10001dba:	47a0      	blx	r4
10001dbc:	3601      	adds	r6, #1
10001dbe:	0004      	movs	r4, r0
10001dc0:	b2f6      	uxtb	r6, r6
10001dc2:	e7ce      	b.n	10001d62 <hogpd_init+0x3ca>
10001dc4:	2c00      	cmp	r4, #0
10001dc6:	d000      	beq.n	10001dca <hogpd_init+0x432>
10001dc8:	e625      	b.n	10001a16 <hogpd_init+0x7e>
10001dca:	9b09      	ldr	r3, [sp, #36]	; 0x24
10001dcc:	60df      	str	r7, [r3, #12]
10001dce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
10001dd0:	03da      	lsls	r2, r3, #15
10001dd2:	9b10      	ldr	r3, [sp, #64]	; 0x40
10001dd4:	431a      	orrs	r2, r3
10001dd6:	9b09      	ldr	r3, [sp, #36]	; 0x24
10001dd8:	803a      	strh	r2, [r7, #0]
10001dda:	8a1b      	ldrh	r3, [r3, #16]
10001ddc:	9a09      	ldr	r2, [sp, #36]	; 0x24
10001dde:	807b      	strh	r3, [r7, #2]
10001de0:	2326      	movs	r3, #38	; 0x26
10001de2:	0010      	movs	r0, r2
10001de4:	8253      	strh	r3, [r2, #18]
10001de6:	4b11      	ldr	r3, [pc, #68]	; (10001e2c <hogpd_init+0x494>)
10001de8:	4798      	blx	r3
10001dea:	9b09      	ldr	r3, [sp, #36]	; 0x24
10001dec:	0021      	movs	r1, r4
10001dee:	8a18      	ldrh	r0, [r3, #16]
10001df0:	4b0f      	ldr	r3, [pc, #60]	; (10001e30 <hogpd_init+0x498>)
10001df2:	4798      	blx	r3
10001df4:	9814      	ldr	r0, [sp, #80]	; 0x50
10001df6:	2800      	cmp	r0, #0
10001df8:	d001      	beq.n	10001dfe <hogpd_init+0x466>
10001dfa:	4b0e      	ldr	r3, [pc, #56]	; (10001e34 <hogpd_init+0x49c>)
10001dfc:	4798      	blx	r3
10001dfe:	9815      	ldr	r0, [sp, #84]	; 0x54
10001e00:	2800      	cmp	r0, #0
10001e02:	d001      	beq.n	10001e08 <hogpd_init+0x470>
10001e04:	4b0b      	ldr	r3, [pc, #44]	; (10001e34 <hogpd_init+0x49c>)
10001e06:	4798      	blx	r3
10001e08:	0020      	movs	r0, r4
10001e0a:	b01b      	add	sp, #108	; 0x6c
10001e0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
10001e0e:	46c0      	nop			; (mov r8, r8)
10001e10:	00001812 	.word	0x00001812
10001e14:	0001e14d 	.word	0x0001e14d
10001e18:	10001899 	.word	0x10001899
10001e1c:	1000b4b4 	.word	0x1000b4b4
10001e20:	10009aa0 	.word	0x10009aa0
10001e24:	00006609 	.word	0x00006609
10001e28:	0001e3e1 	.word	0x0001e3e1
10001e2c:	100028fd 	.word	0x100028fd
10001e30:	000017c1 	.word	0x000017c1
10001e34:	000014ed 	.word	0x000014ed

10001e38 <hogpd_get_att_idx>:
10001e38:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10001e3a:	2417      	movs	r4, #23
10001e3c:	8c87      	ldrh	r7, [r0, #36]	; 0x24
10001e3e:	701c      	strb	r4, [r3, #0]
10001e40:	2400      	movs	r4, #0
10001e42:	7014      	strb	r4, [r2, #0]
10001e44:	342b      	adds	r4, #43	; 0x2b
10001e46:	46a4      	mov	ip, r4
10001e48:	4484      	add	ip, r0
10001e4a:	4665      	mov	r5, ip
10001e4c:	7814      	ldrb	r4, [r2, #0]
10001e4e:	782d      	ldrb	r5, [r5, #0]
10001e50:	42a5      	cmp	r5, r4
10001e52:	d901      	bls.n	10001e58 <hogpd_get_att_idx+0x20>
10001e54:	428f      	cmp	r7, r1
10001e56:	d901      	bls.n	10001e5c <hogpd_get_att_idx+0x24>
10001e58:	2480      	movs	r4, #128	; 0x80
10001e5a:	e016      	b.n	10001e8a <hogpd_get_att_idx+0x52>
10001e5c:	0125      	lsls	r5, r4, #4
10001e5e:	1945      	adds	r5, r0, r5
10001e60:	7c2d      	ldrb	r5, [r5, #16]
10001e62:	19ed      	adds	r5, r5, r7
10001e64:	42a9      	cmp	r1, r5
10001e66:	db03      	blt.n	10001e70 <hogpd_get_att_idx+0x38>
10001e68:	3401      	adds	r4, #1
10001e6a:	b2af      	uxth	r7, r5
10001e6c:	7014      	strb	r4, [r2, #0]
10001e6e:	e7ec      	b.n	10001e4a <hogpd_get_att_idx+0x12>
10001e70:	2400      	movs	r4, #0
10001e72:	9d08      	ldr	r5, [sp, #32]
10001e74:	702c      	strb	r4, [r5, #0]
10001e76:	7815      	ldrb	r5, [r2, #0]
10001e78:	012d      	lsls	r5, r5, #4
10001e7a:	1945      	adds	r5, r0, r5
10001e7c:	7cae      	ldrb	r6, [r5, #18]
10001e7e:	19f6      	adds	r6, r6, r7
10001e80:	42b1      	cmp	r1, r6
10001e82:	da41      	bge.n	10001f08 <hogpd_get_att_idx+0xd0>
10001e84:	428f      	cmp	r7, r1
10001e86:	d102      	bne.n	10001e8e <hogpd_get_att_idx+0x56>
10001e88:	701c      	strb	r4, [r3, #0]
10001e8a:	0020      	movs	r0, r4
10001e8c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
10001e8e:	88ad      	ldrh	r5, [r5, #4]
10001e90:	2208      	movs	r2, #8
10001e92:	002e      	movs	r6, r5
10001e94:	4016      	ands	r6, r2
10001e96:	4215      	tst	r5, r2
10001e98:	d006      	beq.n	10001ea8 <hogpd_get_att_idx+0x70>
10001e9a:	3701      	adds	r7, #1
10001e9c:	b2bf      	uxth	r7, r7
10001e9e:	42b9      	cmp	r1, r7
10001ea0:	d102      	bne.n	10001ea8 <hogpd_get_att_idx+0x70>
10001ea2:	3a07      	subs	r2, #7
10001ea4:	701a      	strb	r2, [r3, #0]
10001ea6:	e7f0      	b.n	10001e8a <hogpd_get_att_idx+0x52>
10001ea8:	1dfa      	adds	r2, r7, #7
10001eaa:	b292      	uxth	r2, r2
10001eac:	4291      	cmp	r1, r2
10001eae:	d802      	bhi.n	10001eb6 <hogpd_get_att_idx+0x7e>
10001eb0:	3108      	adds	r1, #8
10001eb2:	1a8a      	subs	r2, r1, r2
10001eb4:	e007      	b.n	10001ec6 <hogpd_get_att_idx+0x8e>
10001eb6:	2e00      	cmp	r6, #0
10001eb8:	d008      	beq.n	10001ecc <hogpd_get_att_idx+0x94>
10001eba:	003a      	movs	r2, r7
10001ebc:	3208      	adds	r2, #8
10001ebe:	b292      	uxth	r2, r2
10001ec0:	4291      	cmp	r1, r2
10001ec2:	d103      	bne.n	10001ecc <hogpd_get_att_idx+0x94>
10001ec4:	2208      	movs	r2, #8
10001ec6:	701a      	strb	r2, [r3, #0]
10001ec8:	2400      	movs	r4, #0
10001eca:	e7de      	b.n	10001e8a <hogpd_get_att_idx+0x52>
10001ecc:	0768      	lsls	r0, r5, #29
10001ece:	d505      	bpl.n	10001edc <hogpd_get_att_idx+0xa4>
10001ed0:	3202      	adds	r2, #2
10001ed2:	b292      	uxth	r2, r2
10001ed4:	4291      	cmp	r1, r2
10001ed6:	d801      	bhi.n	10001edc <hogpd_get_att_idx+0xa4>
10001ed8:	310b      	adds	r1, #11
10001eda:	e7ea      	b.n	10001eb2 <hogpd_get_att_idx+0x7a>
10001edc:	07e8      	lsls	r0, r5, #31
10001ede:	d505      	bpl.n	10001eec <hogpd_get_att_idx+0xb4>
10001ee0:	3205      	adds	r2, #5
10001ee2:	b292      	uxth	r2, r2
10001ee4:	4291      	cmp	r1, r2
10001ee6:	d801      	bhi.n	10001eec <hogpd_get_att_idx+0xb4>
10001ee8:	3110      	adds	r1, #16
10001eea:	e7e2      	b.n	10001eb2 <hogpd_get_att_idx+0x7a>
10001eec:	07a8      	lsls	r0, r5, #30
10001eee:	d505      	bpl.n	10001efc <hogpd_get_att_idx+0xc4>
10001ef0:	3203      	adds	r2, #3
10001ef2:	b292      	uxth	r2, r2
10001ef4:	4291      	cmp	r1, r2
10001ef6:	d801      	bhi.n	10001efc <hogpd_get_att_idx+0xc4>
10001ef8:	3113      	adds	r1, #19
10001efa:	e7da      	b.n	10001eb2 <hogpd_get_att_idx+0x7a>
10001efc:	4a18      	ldr	r2, [pc, #96]	; (10001f60 <hogpd_get_att_idx+0x128>)
10001efe:	4919      	ldr	r1, [pc, #100]	; (10001f64 <hogpd_get_att_idx+0x12c>)
10001f00:	4819      	ldr	r0, [pc, #100]	; (10001f68 <hogpd_get_att_idx+0x130>)
10001f02:	4b1a      	ldr	r3, [pc, #104]	; (10001f6c <hogpd_get_att_idx+0x134>)
10001f04:	4798      	blx	r3
10001f06:	e7df      	b.n	10001ec8 <hogpd_get_att_idx+0x90>
10001f08:	b2b4      	uxth	r4, r6
10001f0a:	7817      	ldrb	r7, [r2, #0]
10001f0c:	9401      	str	r4, [sp, #4]
10001f0e:	013f      	lsls	r7, r7, #4
10001f10:	9c08      	ldr	r4, [sp, #32]
10001f12:	19c7      	adds	r7, r0, r7
10001f14:	7826      	ldrb	r6, [r4, #0]
10001f16:	7c7c      	ldrb	r4, [r7, #17]
10001f18:	42b4      	cmp	r4, r6
10001f1a:	d907      	bls.n	10001f2c <hogpd_get_att_idx+0xf4>
10001f1c:	9c01      	ldr	r4, [sp, #4]
10001f1e:	3403      	adds	r4, #3
10001f20:	b2a4      	uxth	r4, r4
10001f22:	42a1      	cmp	r1, r4
10001f24:	d80c      	bhi.n	10001f40 <hogpd_get_att_idx+0x108>
10001f26:	3116      	adds	r1, #22
10001f28:	1b0c      	subs	r4, r1, r4
10001f2a:	701c      	strb	r4, [r3, #0]
10001f2c:	781b      	ldrb	r3, [r3, #0]
10001f2e:	2400      	movs	r4, #0
10001f30:	2b17      	cmp	r3, #23
10001f32:	d1aa      	bne.n	10001e8a <hogpd_get_att_idx+0x52>
10001f34:	4a0e      	ldr	r2, [pc, #56]	; (10001f70 <hogpd_get_att_idx+0x138>)
10001f36:	490b      	ldr	r1, [pc, #44]	; (10001f64 <hogpd_get_att_idx+0x12c>)
10001f38:	480e      	ldr	r0, [pc, #56]	; (10001f74 <hogpd_get_att_idx+0x13c>)
10001f3a:	4b0c      	ldr	r3, [pc, #48]	; (10001f6c <hogpd_get_att_idx+0x134>)
10001f3c:	4798      	blx	r3
10001f3e:	e7a4      	b.n	10001e8a <hogpd_get_att_idx+0x52>
10001f40:	88bd      	ldrh	r5, [r7, #4]
10001f42:	2740      	movs	r7, #64	; 0x40
10001f44:	40b7      	lsls	r7, r6
10001f46:	422f      	tst	r7, r5
10001f48:	d006      	beq.n	10001f58 <hogpd_get_att_idx+0x120>
10001f4a:	9c01      	ldr	r4, [sp, #4]
10001f4c:	3404      	adds	r4, #4
10001f4e:	b2a4      	uxth	r4, r4
10001f50:	42a1      	cmp	r1, r4
10001f52:	d101      	bne.n	10001f58 <hogpd_get_att_idx+0x120>
10001f54:	2216      	movs	r2, #22
10001f56:	e7b6      	b.n	10001ec6 <hogpd_get_att_idx+0x8e>
10001f58:	9d08      	ldr	r5, [sp, #32]
10001f5a:	3601      	adds	r6, #1
10001f5c:	702e      	strb	r6, [r5, #0]
10001f5e:	e7d4      	b.n	10001f0a <hogpd_get_att_idx+0xd2>
10001f60:	000002be 	.word	0x000002be
10001f64:	1000b4b4 	.word	0x1000b4b4
10001f68:	1000b4d2 	.word	0x1000b4d2
10001f6c:	00006609 	.word	0x00006609
10001f70:	000002da 	.word	0x000002da
10001f74:	10009aba 	.word	0x10009aba

10001f78 <hogpd_ntf_send>:
10001f78:	b5f0      	push	{r4, r5, r6, r7, lr}
10001f7a:	000c      	movs	r4, r1
10001f7c:	b087      	sub	sp, #28
10001f7e:	4b43      	ldr	r3, [pc, #268]	; (1000208c <hogpd_ntf_send+0x114>)
10001f80:	9003      	str	r0, [sp, #12]
10001f82:	2026      	movs	r0, #38	; 0x26
10001f84:	4798      	blx	r3
10001f86:	7922      	ldrb	r2, [r4, #4]
10001f88:	7863      	ldrb	r3, [r4, #1]
10001f8a:	0006      	movs	r6, r0
10001f8c:	9204      	str	r2, [sp, #16]
10001f8e:	2b02      	cmp	r3, #2
10001f90:	d02e      	beq.n	10001ff0 <hogpd_ntf_send+0x78>
10001f92:	2b04      	cmp	r3, #4
10001f94:	d033      	beq.n	10001ffe <hogpd_ntf_send+0x86>
10001f96:	2b00      	cmp	r3, #0
10001f98:	d138      	bne.n	1000200c <hogpd_ntf_send+0x94>
10001f9a:	2540      	movs	r5, #64	; 0x40
10001f9c:	4095      	lsls	r5, r2
10001f9e:	b2ab      	uxth	r3, r5
10001fa0:	9300      	str	r3, [sp, #0]
10001fa2:	2380      	movs	r3, #128	; 0x80
10001fa4:	2701      	movs	r7, #1
10001fa6:	2214      	movs	r2, #20
10001fa8:	009b      	lsls	r3, r3, #2
10001faa:	9302      	str	r3, [sp, #8]
10001fac:	7823      	ldrb	r3, [r4, #0]
10001fae:	0030      	movs	r0, r6
10001fb0:	9301      	str	r3, [sp, #4]
10001fb2:	9901      	ldr	r1, [sp, #4]
10001fb4:	9b04      	ldr	r3, [sp, #16]
10001fb6:	4d36      	ldr	r5, [pc, #216]	; (10002090 <hogpd_ntf_send+0x118>)
10001fb8:	47a8      	blx	r5
10001fba:	9005      	str	r0, [sp, #20]
10001fbc:	2800      	cmp	r0, #0
10001fbe:	d12a      	bne.n	10002016 <hogpd_ntf_send+0x9e>
10001fc0:	9b00      	ldr	r3, [sp, #0]
10001fc2:	2081      	movs	r0, #129	; 0x81
10001fc4:	2b00      	cmp	r3, #0
10001fc6:	d011      	beq.n	10001fec <hogpd_ntf_send+0x74>
10001fc8:	0033      	movs	r3, r6
10001fca:	332b      	adds	r3, #43	; 0x2b
10001fcc:	781b      	ldrb	r3, [r3, #0]
10001fce:	9a01      	ldr	r2, [sp, #4]
10001fd0:	4293      	cmp	r3, r2
10001fd2:	d90b      	bls.n	10001fec <hogpd_ntf_send+0x74>
10001fd4:	0110      	lsls	r0, r2, #4
10001fd6:	1836      	adds	r6, r6, r0
10001fd8:	7c73      	ldrb	r3, [r6, #17]
10001fda:	9a04      	ldr	r2, [sp, #16]
10001fdc:	2081      	movs	r0, #129	; 0x81
10001fde:	4293      	cmp	r3, r2
10001fe0:	d904      	bls.n	10001fec <hogpd_ntf_send+0x74>
10001fe2:	88b3      	ldrh	r3, [r6, #4]
10001fe4:	9a00      	ldr	r2, [sp, #0]
10001fe6:	4213      	tst	r3, r2
10001fe8:	d100      	bne.n	10001fec <hogpd_ntf_send+0x74>
10001fea:	300b      	adds	r0, #11
10001fec:	b007      	add	sp, #28
10001fee:	bdf0      	pop	{r4, r5, r6, r7, pc}
10001ff0:	2301      	movs	r3, #1
10001ff2:	9300      	str	r3, [sp, #0]
10001ff4:	3307      	adds	r3, #7
10001ff6:	2700      	movs	r7, #0
10001ff8:	220c      	movs	r2, #12
10001ffa:	9302      	str	r3, [sp, #8]
10001ffc:	e7d6      	b.n	10001fac <hogpd_ntf_send+0x34>
10001ffe:	2302      	movs	r3, #2
10002000:	9300      	str	r3, [sp, #0]
10002002:	3306      	adds	r3, #6
10002004:	2700      	movs	r7, #0
10002006:	2211      	movs	r2, #17
10002008:	9302      	str	r3, [sp, #8]
1000200a:	e7cf      	b.n	10001fac <hogpd_ntf_send+0x34>
1000200c:	2700      	movs	r7, #0
1000200e:	2217      	movs	r2, #23
10002010:	9700      	str	r7, [sp, #0]
10002012:	9702      	str	r7, [sp, #8]
10002014:	e7ca      	b.n	10001fac <hogpd_ntf_send+0x34>
10002016:	8863      	ldrh	r3, [r4, #2]
10002018:	9a02      	ldr	r2, [sp, #8]
1000201a:	208d      	movs	r0, #141	; 0x8d
1000201c:	4293      	cmp	r3, r2
1000201e:	d8e5      	bhi.n	10001fec <hogpd_ntf_send+0x74>
10002020:	9b01      	ldr	r3, [sp, #4]
10002022:	9a03      	ldr	r2, [sp, #12]
10002024:	00db      	lsls	r3, r3, #3
10002026:	189b      	adds	r3, r3, r2
10002028:	005b      	lsls	r3, r3, #1
1000202a:	18f3      	adds	r3, r6, r3
1000202c:	88db      	ldrh	r3, [r3, #6]
1000202e:	9a00      	ldr	r2, [sp, #0]
10002030:	3803      	subs	r0, #3
10002032:	4213      	tst	r3, r2
10002034:	d0da      	beq.n	10001fec <hogpd_ntf_send+0x74>
10002036:	9b01      	ldr	r3, [sp, #4]
10002038:	0118      	lsls	r0, r3, #4
1000203a:	1830      	adds	r0, r6, r0
1000203c:	7cc3      	ldrb	r3, [r0, #19]
1000203e:	42bb      	cmp	r3, r7
10002040:	d003      	beq.n	1000204a <hogpd_ntf_send+0xd2>
10002042:	8883      	ldrh	r3, [r0, #4]
10002044:	2089      	movs	r0, #137	; 0x89
10002046:	075b      	lsls	r3, r3, #29
10002048:	d4d0      	bmi.n	10001fec <hogpd_ntf_send+0x74>
1000204a:	9903      	ldr	r1, [sp, #12]
1000204c:	4b11      	ldr	r3, [pc, #68]	; (10002094 <hogpd_ntf_send+0x11c>)
1000204e:	0030      	movs	r0, r6
10002050:	4798      	blx	r3
10002052:	0002      	movs	r2, r0
10002054:	2007      	movs	r0, #7
10002056:	9903      	ldr	r1, [sp, #12]
10002058:	8863      	ldrh	r3, [r4, #2]
1000205a:	0209      	lsls	r1, r1, #8
1000205c:	4301      	orrs	r1, r0
1000205e:	20c1      	movs	r0, #193	; 0xc1
10002060:	3308      	adds	r3, #8
10002062:	4d0d      	ldr	r5, [pc, #52]	; (10002098 <hogpd_ntf_send+0x120>)
10002064:	b29b      	uxth	r3, r3
10002066:	0100      	lsls	r0, r0, #4
10002068:	47a8      	blx	r5
1000206a:	2312      	movs	r3, #18
1000206c:	0005      	movs	r5, r0
1000206e:	7003      	strb	r3, [r0, #0]
10002070:	9b05      	ldr	r3, [sp, #20]
10002072:	1d61      	adds	r1, r4, #5
10002074:	8083      	strh	r3, [r0, #4]
10002076:	8862      	ldrh	r2, [r4, #2]
10002078:	4b08      	ldr	r3, [pc, #32]	; (1000209c <hogpd_ntf_send+0x124>)
1000207a:	80c2      	strh	r2, [r0, #6]
1000207c:	3008      	adds	r0, #8
1000207e:	4798      	blx	r3
10002080:	0028      	movs	r0, r5
10002082:	4b07      	ldr	r3, [pc, #28]	; (100020a0 <hogpd_ntf_send+0x128>)
10002084:	4798      	blx	r3
10002086:	2000      	movs	r0, #0
10002088:	e7b0      	b.n	10001fec <hogpd_ntf_send+0x74>
1000208a:	46c0      	nop			; (mov r8, r8)
1000208c:	0002b38d 	.word	0x0002b38d
10002090:	10001899 	.word	0x10001899
10002094:	0002b3b5 	.word	0x0002b3b5
10002098:	00001171 	.word	0x00001171
1000209c:	00005821 	.word	0x00005821
100020a0:	000011a9 	.word	0x000011a9

100020a4 <hogpd_ntf_cfg_ind_send>:
100020a4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100020a6:	9301      	str	r3, [sp, #4]
100020a8:	ab08      	add	r3, sp, #32
100020aa:	881f      	ldrh	r7, [r3, #0]
100020ac:	0005      	movs	r5, r0
100020ae:	4b25      	ldr	r3, [pc, #148]	; (10002144 <hogpd_ntf_cfg_ind_send+0xa0>)
100020b0:	2026      	movs	r0, #38	; 0x26
100020b2:	0016      	movs	r6, r2
100020b4:	9100      	str	r1, [sp, #0]
100020b6:	4798      	blx	r3
100020b8:	2302      	movs	r3, #2
100020ba:	0004      	movs	r4, r0
100020bc:	2e12      	cmp	r6, #18
100020be:	d004      	beq.n	100020ca <hogpd_ntf_cfg_ind_send+0x26>
100020c0:	2e16      	cmp	r6, #22
100020c2:	d026      	beq.n	10002112 <hogpd_ntf_cfg_ind_send+0x6e>
100020c4:	3b01      	subs	r3, #1
100020c6:	2e0d      	cmp	r6, #13
100020c8:	d128      	bne.n	1000211c <hogpd_ntf_cfg_ind_send+0x78>
100020ca:	2f00      	cmp	r7, #0
100020cc:	d12d      	bne.n	1000212a <hogpd_ntf_cfg_ind_send+0x86>
100020ce:	9a00      	ldr	r2, [sp, #0]
100020d0:	00d1      	lsls	r1, r2, #3
100020d2:	1949      	adds	r1, r1, r5
100020d4:	0049      	lsls	r1, r1, #1
100020d6:	1861      	adds	r1, r4, r1
100020d8:	88ca      	ldrh	r2, [r1, #6]
100020da:	439a      	bics	r2, r3
100020dc:	80ca      	strh	r2, [r1, #6]
100020de:	0029      	movs	r1, r5
100020e0:	0020      	movs	r0, r4
100020e2:	4b19      	ldr	r3, [pc, #100]	; (10002148 <hogpd_ntf_cfg_ind_send+0xa4>)
100020e4:	4798      	blx	r3
100020e6:	0029      	movs	r1, r5
100020e8:	0006      	movs	r6, r0
100020ea:	4b18      	ldr	r3, [pc, #96]	; (1000214c <hogpd_ntf_cfg_ind_send+0xa8>)
100020ec:	0020      	movs	r0, r4
100020ee:	4798      	blx	r3
100020f0:	0031      	movs	r1, r6
100020f2:	0002      	movs	r2, r0
100020f4:	2306      	movs	r3, #6
100020f6:	4816      	ldr	r0, [pc, #88]	; (10002150 <hogpd_ntf_cfg_ind_send+0xac>)
100020f8:	4e16      	ldr	r6, [pc, #88]	; (10002154 <hogpd_ntf_cfg_ind_send+0xb0>)
100020fa:	47b0      	blx	r6
100020fc:	7005      	strb	r5, [r0, #0]
100020fe:	006d      	lsls	r5, r5, #1
10002100:	1964      	adds	r4, r4, r5
10002102:	88e3      	ldrh	r3, [r4, #6]
10002104:	8043      	strh	r3, [r0, #2]
10002106:	8ae3      	ldrh	r3, [r4, #22]
10002108:	8083      	strh	r3, [r0, #4]
1000210a:	4b13      	ldr	r3, [pc, #76]	; (10002158 <hogpd_ntf_cfg_ind_send+0xb4>)
1000210c:	4798      	blx	r3
1000210e:	2000      	movs	r0, #0
10002110:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
10002112:	2340      	movs	r3, #64	; 0x40
10002114:	9a01      	ldr	r2, [sp, #4]
10002116:	4093      	lsls	r3, r2
10002118:	b29b      	uxth	r3, r3
1000211a:	e7d6      	b.n	100020ca <hogpd_ntf_cfg_ind_send+0x26>
1000211c:	4b0f      	ldr	r3, [pc, #60]	; (1000215c <hogpd_ntf_cfg_ind_send+0xb8>)
1000211e:	4a10      	ldr	r2, [pc, #64]	; (10002160 <hogpd_ntf_cfg_ind_send+0xbc>)
10002120:	4910      	ldr	r1, [pc, #64]	; (10002164 <hogpd_ntf_cfg_ind_send+0xc0>)
10002122:	4811      	ldr	r0, [pc, #68]	; (10002168 <hogpd_ntf_cfg_ind_send+0xc4>)
10002124:	4798      	blx	r3
10002126:	2300      	movs	r3, #0
10002128:	e7cf      	b.n	100020ca <hogpd_ntf_cfg_ind_send+0x26>
1000212a:	2080      	movs	r0, #128	; 0x80
1000212c:	2f01      	cmp	r7, #1
1000212e:	d1ef      	bne.n	10002110 <hogpd_ntf_cfg_ind_send+0x6c>
10002130:	9a00      	ldr	r2, [sp, #0]
10002132:	00d1      	lsls	r1, r2, #3
10002134:	1949      	adds	r1, r1, r5
10002136:	0049      	lsls	r1, r1, #1
10002138:	1861      	adds	r1, r4, r1
1000213a:	88ca      	ldrh	r2, [r1, #6]
1000213c:	4313      	orrs	r3, r2
1000213e:	80cb      	strh	r3, [r1, #6]
10002140:	e7cd      	b.n	100020de <hogpd_ntf_cfg_ind_send+0x3a>
10002142:	46c0      	nop			; (mov r8, r8)
10002144:	0002b38d 	.word	0x0002b38d
10002148:	0002b3c7 	.word	0x0002b3c7
1000214c:	0002b3b5 	.word	0x0002b3b5
10002150:	00002608 	.word	0x00002608
10002154:	00001171 	.word	0x00001171
10002158:	000011a9 	.word	0x000011a9
1000215c:	00006609 	.word	0x00006609
10002160:	00000365 	.word	0x00000365
10002164:	1000b4b4 	.word	0x1000b4b4
10002168:	1000b4d2 	.word	0x1000b4d2

1000216c <gattc_att_info_req_ind_handler>:
1000216c:	b5f0      	push	{r4, r5, r6, r7, lr}
1000216e:	270e      	movs	r7, #14
10002170:	b087      	sub	sp, #28
10002172:	001d      	movs	r5, r3
10002174:	2026      	movs	r0, #38	; 0x26
10002176:	4b1c      	ldr	r3, [pc, #112]	; (100021e8 <gattc_att_info_req_ind_handler+0x7c>)
10002178:	000e      	movs	r6, r1
1000217a:	9203      	str	r2, [sp, #12]
1000217c:	4798      	blx	r3
1000217e:	ab02      	add	r3, sp, #8
10002180:	18ff      	adds	r7, r7, r3
10002182:	230f      	movs	r3, #15
10002184:	aa02      	add	r2, sp, #8
10002186:	189b      	adds	r3, r3, r2
10002188:	220d      	movs	r2, #13
1000218a:	ac02      	add	r4, sp, #8
1000218c:	1912      	adds	r2, r2, r4
1000218e:	8831      	ldrh	r1, [r6, #0]
10002190:	4c16      	ldr	r4, [pc, #88]	; (100021ec <gattc_att_info_req_ind_handler+0x80>)
10002192:	9300      	str	r3, [sp, #0]
10002194:	003b      	movs	r3, r7
10002196:	47a0      	blx	r4
10002198:	2306      	movs	r3, #6
1000219a:	0029      	movs	r1, r5
1000219c:	9a03      	ldr	r2, [sp, #12]
1000219e:	0004      	movs	r4, r0
100021a0:	4d13      	ldr	r5, [pc, #76]	; (100021f0 <gattc_att_info_req_ind_handler+0x84>)
100021a2:	4814      	ldr	r0, [pc, #80]	; (100021f4 <gattc_att_info_req_ind_handler+0x88>)
100021a4:	47a8      	blx	r5
100021a6:	8832      	ldrh	r2, [r6, #0]
100021a8:	0003      	movs	r3, r0
100021aa:	8002      	strh	r2, [r0, #0]
100021ac:	2c00      	cmp	r4, #0
100021ae:	d10d      	bne.n	100021cc <gattc_att_info_req_ind_handler+0x60>
100021b0:	7838      	ldrb	r0, [r7, #0]
100021b2:	380c      	subs	r0, #12
100021b4:	280a      	cmp	r0, #10
100021b6:	d812      	bhi.n	100021de <gattc_att_info_req_ind_handler+0x72>
100021b8:	f007 f81e 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
100021bc:	06110f06 	.word	0x06110f06
100021c0:	110f0611 	.word	0x110f0611
100021c4:	1106      	.short	0x1106
100021c6:	0f          	.byte	0x0f
100021c7:	00          	.byte	0x00
100021c8:	2200      	movs	r2, #0
100021ca:	805a      	strh	r2, [r3, #2]
100021cc:	0018      	movs	r0, r3
100021ce:	711c      	strb	r4, [r3, #4]
100021d0:	4b09      	ldr	r3, [pc, #36]	; (100021f8 <gattc_att_info_req_ind_handler+0x8c>)
100021d2:	4798      	blx	r3
100021d4:	2000      	movs	r0, #0
100021d6:	b007      	add	sp, #28
100021d8:	bdf0      	pop	{r4, r5, r6, r7, pc}
100021da:	2202      	movs	r2, #2
100021dc:	e7f5      	b.n	100021ca <gattc_att_info_req_ind_handler+0x5e>
100021de:	2200      	movs	r2, #0
100021e0:	2403      	movs	r4, #3
100021e2:	805a      	strh	r2, [r3, #2]
100021e4:	e7f2      	b.n	100021cc <gattc_att_info_req_ind_handler+0x60>
100021e6:	46c0      	nop			; (mov r8, r8)
100021e8:	0002b38d 	.word	0x0002b38d
100021ec:	10001e39 	.word	0x10001e39
100021f0:	00001171 	.word	0x00001171
100021f4:	00000c18 	.word	0x00000c18
100021f8:	000011a9 	.word	0x000011a9

100021fc <gattc_read_req_ind_handler>:
100021fc:	b5f0      	push	{r4, r5, r6, r7, lr}
100021fe:	b08b      	sub	sp, #44	; 0x2c
10002200:	9306      	str	r3, [sp, #24]
10002202:	0010      	movs	r0, r2
10002204:	4b5a      	ldr	r3, [pc, #360]	; (10002370 <gattc_read_req_ind_handler+0x174>)
10002206:	9104      	str	r1, [sp, #16]
10002208:	9203      	str	r2, [sp, #12]
1000220a:	4798      	blx	r3
1000220c:	9005      	str	r0, [sp, #20]
1000220e:	2002      	movs	r0, #2
10002210:	9b05      	ldr	r3, [sp, #20]
10002212:	4003      	ands	r3, r0
10002214:	9307      	str	r3, [sp, #28]
10002216:	9b05      	ldr	r3, [sp, #20]
10002218:	4203      	tst	r3, r0
1000221a:	d156      	bne.n	100022ca <gattc_read_req_ind_handler+0xce>
1000221c:	270e      	movs	r7, #14
1000221e:	ab06      	add	r3, sp, #24
10002220:	18ff      	adds	r7, r7, r3
10002222:	9b07      	ldr	r3, [sp, #28]
10002224:	3024      	adds	r0, #36	; 0x24
10002226:	803b      	strh	r3, [r7, #0]
10002228:	4b52      	ldr	r3, [pc, #328]	; (10002374 <gattc_read_req_ind_handler+0x178>)
1000222a:	4798      	blx	r3
1000222c:	9b04      	ldr	r3, [sp, #16]
1000222e:	aa06      	add	r2, sp, #24
10002230:	8819      	ldrh	r1, [r3, #0]
10002232:	230d      	movs	r3, #13
10002234:	0004      	movs	r4, r0
10002236:	189b      	adds	r3, r3, r2
10002238:	220b      	movs	r2, #11
1000223a:	a806      	add	r0, sp, #24
1000223c:	ae09      	add	r6, sp, #36	; 0x24
1000223e:	4d4e      	ldr	r5, [pc, #312]	; (10002378 <gattc_read_req_ind_handler+0x17c>)
10002240:	9300      	str	r3, [sp, #0]
10002242:	1812      	adds	r2, r2, r0
10002244:	0033      	movs	r3, r6
10002246:	0020      	movs	r0, r4
10002248:	47a8      	blx	r5
1000224a:	1e05      	subs	r5, r0, #0
1000224c:	d000      	beq.n	10002250 <gattc_read_req_ind_handler+0x54>
1000224e:	e08b      	b.n	10002368 <gattc_read_req_ind_handler+0x16c>
10002250:	7830      	ldrb	r0, [r6, #0]
10002252:	9b06      	ldr	r3, [sp, #24]
10002254:	3807      	subs	r0, #7
10002256:	0a1b      	lsrs	r3, r3, #8
10002258:	280f      	cmp	r0, #15
1000225a:	d900      	bls.n	1000225e <gattc_read_req_ind_handler+0x62>
1000225c:	e083      	b.n	10002366 <gattc_read_req_ind_handler+0x16a>
1000225e:	f006 ffcb 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10002262:	8236      	.short	0x8236
10002264:	80823882 	.word	0x80823882
10002268:	82858254 	.word	0x82858254
1000226c:	09826208 	.word	0x09826208
10002270:	6e82      	.short	0x6e82
10002272:	2504      	movs	r5, #4
10002274:	b2de      	uxtb	r6, r3
10002276:	0031      	movs	r1, r6
10002278:	4b40      	ldr	r3, [pc, #256]	; (1000237c <gattc_read_req_ind_handler+0x180>)
1000227a:	0020      	movs	r0, r4
1000227c:	4798      	blx	r3
1000227e:	2308      	movs	r3, #8
10002280:	0001      	movs	r1, r0
10002282:	9a03      	ldr	r2, [sp, #12]
10002284:	4f3e      	ldr	r7, [pc, #248]	; (10002380 <gattc_read_req_ind_handler+0x184>)
10002286:	483f      	ldr	r0, [pc, #252]	; (10002384 <gattc_read_req_ind_handler+0x188>)
10002288:	47b8      	blx	r7
1000228a:	2300      	movs	r3, #0
1000228c:	aa06      	add	r2, sp, #24
1000228e:	8083      	strh	r3, [r0, #4]
10002290:	330b      	adds	r3, #11
10002292:	7006      	strb	r6, [r0, #0]
10002294:	189b      	adds	r3, r3, r2
10002296:	781b      	ldrb	r3, [r3, #0]
10002298:	2701      	movs	r7, #1
1000229a:	7083      	strb	r3, [r0, #2]
1000229c:	230d      	movs	r3, #13
1000229e:	189b      	adds	r3, r3, r2
100022a0:	781b      	ldrb	r3, [r3, #0]
100022a2:	7047      	strb	r7, [r0, #1]
100022a4:	7183      	strb	r3, [r0, #6]
100022a6:	70c5      	strb	r5, [r0, #3]
100022a8:	4b37      	ldr	r3, [pc, #220]	; (10002388 <gattc_read_req_ind_handler+0x18c>)
100022aa:	4798      	blx	r3
100022ac:	2102      	movs	r1, #2
100022ae:	1de3      	adds	r3, r4, #7
100022b0:	77de      	strb	r6, [r3, #31]
100022b2:	19db      	adds	r3, r3, r7
100022b4:	77df      	strb	r7, [r3, #31]
100022b6:	9b04      	ldr	r3, [sp, #16]
100022b8:	9803      	ldr	r0, [sp, #12]
100022ba:	881b      	ldrh	r3, [r3, #0]
100022bc:	8523      	strh	r3, [r4, #40]	; 0x28
100022be:	9b05      	ldr	r3, [sp, #20]
100022c0:	4319      	orrs	r1, r3
100022c2:	b2c9      	uxtb	r1, r1
100022c4:	4b31      	ldr	r3, [pc, #196]	; (1000238c <gattc_read_req_ind_handler+0x190>)
100022c6:	4798      	blx	r3
100022c8:	2000      	movs	r0, #0
100022ca:	b00b      	add	sp, #44	; 0x2c
100022cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
100022ce:	2501      	movs	r5, #1
100022d0:	e7d0      	b.n	10002274 <gattc_read_req_ind_handler+0x78>
100022d2:	ab06      	add	r3, sp, #24
100022d4:	7ad8      	ldrb	r0, [r3, #11]
100022d6:	0100      	lsls	r0, r0, #4
100022d8:	1824      	adds	r4, r4, r0
100022da:	7ce3      	ldrb	r3, [r4, #19]
100022dc:	2401      	movs	r4, #1
100022de:	803b      	strh	r3, [r7, #0]
100022e0:	9a03      	ldr	r2, [sp, #12]
100022e2:	9906      	ldr	r1, [sp, #24]
100022e4:	1da3      	adds	r3, r4, #6
100022e6:	4e26      	ldr	r6, [pc, #152]	; (10002380 <gattc_read_req_ind_handler+0x184>)
100022e8:	4829      	ldr	r0, [pc, #164]	; (10002390 <gattc_read_req_ind_handler+0x194>)
100022ea:	47b0      	blx	r6
100022ec:	0006      	movs	r6, r0
100022ee:	9b04      	ldr	r3, [sp, #16]
100022f0:	0022      	movs	r2, r4
100022f2:	881b      	ldrh	r3, [r3, #0]
100022f4:	0039      	movs	r1, r7
100022f6:	8003      	strh	r3, [r0, #0]
100022f8:	7105      	strb	r5, [r0, #4]
100022fa:	8044      	strh	r4, [r0, #2]
100022fc:	4b25      	ldr	r3, [pc, #148]	; (10002394 <gattc_read_req_ind_handler+0x198>)
100022fe:	3005      	adds	r0, #5
10002300:	4798      	blx	r3
10002302:	0030      	movs	r0, r6
10002304:	4b20      	ldr	r3, [pc, #128]	; (10002388 <gattc_read_req_ind_handler+0x18c>)
10002306:	4798      	blx	r3
10002308:	e7de      	b.n	100022c8 <gattc_read_req_ind_handler+0xcc>
1000230a:	220b      	movs	r2, #11
1000230c:	a906      	add	r1, sp, #24
1000230e:	1852      	adds	r2, r2, r1
10002310:	7816      	ldrb	r6, [r2, #0]
10002312:	2201      	movs	r2, #1
10002314:	00f6      	lsls	r6, r6, #3
10002316:	18f6      	adds	r6, r6, r3
10002318:	0076      	lsls	r6, r6, #1
1000231a:	19a4      	adds	r4, r4, r6
1000231c:	88e3      	ldrh	r3, [r4, #6]
1000231e:	4013      	ands	r3, r2
10002320:	2402      	movs	r4, #2
10002322:	803b      	strh	r3, [r7, #0]
10002324:	e7dc      	b.n	100022e0 <gattc_read_req_ind_handler+0xe4>
10002326:	220b      	movs	r2, #11
10002328:	a906      	add	r1, sp, #24
1000232a:	1852      	adds	r2, r2, r1
1000232c:	7816      	ldrb	r6, [r2, #0]
1000232e:	00f6      	lsls	r6, r6, #3
10002330:	18f6      	adds	r6, r6, r3
10002332:	0076      	lsls	r6, r6, #1
10002334:	19a4      	adds	r4, r4, r6
10002336:	88e3      	ldrh	r3, [r4, #6]
10002338:	079b      	lsls	r3, r3, #30
1000233a:	0fdb      	lsrs	r3, r3, #31
1000233c:	e7f0      	b.n	10002320 <gattc_read_req_ind_handler+0x124>
1000233e:	220b      	movs	r2, #11
10002340:	a906      	add	r1, sp, #24
10002342:	1852      	adds	r2, r2, r1
10002344:	7810      	ldrb	r0, [r2, #0]
10002346:	00c0      	lsls	r0, r0, #3
10002348:	18c3      	adds	r3, r0, r3
1000234a:	005e      	lsls	r6, r3, #1
1000234c:	230d      	movs	r3, #13
1000234e:	185b      	adds	r3, r3, r1
10002350:	7819      	ldrb	r1, [r3, #0]
10002352:	2340      	movs	r3, #64	; 0x40
10002354:	408b      	lsls	r3, r1
10002356:	19a4      	adds	r4, r4, r6
10002358:	88e2      	ldrh	r2, [r4, #6]
1000235a:	4013      	ands	r3, r2
1000235c:	1e5a      	subs	r2, r3, #1
1000235e:	4193      	sbcs	r3, r2
10002360:	e7de      	b.n	10002320 <gattc_read_req_ind_handler+0x124>
10002362:	2502      	movs	r5, #2
10002364:	e786      	b.n	10002274 <gattc_read_req_ind_handler+0x78>
10002366:	2580      	movs	r5, #128	; 0x80
10002368:	2400      	movs	r4, #0
1000236a:	e7b9      	b.n	100022e0 <gattc_read_req_ind_handler+0xe4>
1000236c:	2503      	movs	r5, #3
1000236e:	e781      	b.n	10002274 <gattc_read_req_ind_handler+0x78>
10002370:	0000182d 	.word	0x0000182d
10002374:	0002b38d 	.word	0x0002b38d
10002378:	10001e39 	.word	0x10001e39
1000237c:	0002b3c7 	.word	0x0002b3c7
10002380:	00001171 	.word	0x00001171
10002384:	00002604 	.word	0x00002604
10002388:	000011a9 	.word	0x000011a9
1000238c:	000017c1 	.word	0x000017c1
10002390:	00000c14 	.word	0x00000c14
10002394:	00005821 	.word	0x00005821

10002398 <gattc_write_req_ind_handler>:
10002398:	b5f0      	push	{r4, r5, r6, r7, lr}
1000239a:	b08b      	sub	sp, #44	; 0x2c
1000239c:	9305      	str	r3, [sp, #20]
1000239e:	0010      	movs	r0, r2
100023a0:	4b70      	ldr	r3, [pc, #448]	; (10002564 <gattc_write_req_ind_handler+0x1cc>)
100023a2:	000f      	movs	r7, r1
100023a4:	9202      	str	r2, [sp, #8]
100023a6:	4798      	blx	r3
100023a8:	9004      	str	r0, [sp, #16]
100023aa:	2002      	movs	r0, #2
100023ac:	9b04      	ldr	r3, [sp, #16]
100023ae:	4003      	ands	r3, r0
100023b0:	9307      	str	r3, [sp, #28]
100023b2:	9b04      	ldr	r3, [sp, #16]
100023b4:	4203      	tst	r3, r0
100023b6:	d156      	bne.n	10002466 <gattc_write_req_ind_handler+0xce>
100023b8:	260e      	movs	r6, #14
100023ba:	9b05      	ldr	r3, [sp, #20]
100023bc:	3024      	adds	r0, #36	; 0x24
100023be:	0a1d      	lsrs	r5, r3, #8
100023c0:	4b69      	ldr	r3, [pc, #420]	; (10002568 <gattc_write_req_ind_handler+0x1d0>)
100023c2:	4798      	blx	r3
100023c4:	ab06      	add	r3, sp, #24
100023c6:	18f6      	adds	r6, r6, r3
100023c8:	230f      	movs	r3, #15
100023ca:	aa06      	add	r2, sp, #24
100023cc:	0004      	movs	r4, r0
100023ce:	189b      	adds	r3, r3, r2
100023d0:	220d      	movs	r2, #13
100023d2:	a806      	add	r0, sp, #24
100023d4:	1812      	adds	r2, r2, r0
100023d6:	9606      	str	r6, [sp, #24]
100023d8:	9300      	str	r3, [sp, #0]
100023da:	0020      	movs	r0, r4
100023dc:	0033      	movs	r3, r6
100023de:	8839      	ldrh	r1, [r7, #0]
100023e0:	4e62      	ldr	r6, [pc, #392]	; (1000256c <gattc_write_req_ind_handler+0x1d4>)
100023e2:	47b0      	blx	r6
100023e4:	1de3      	adds	r3, r4, #7
100023e6:	9a07      	ldr	r2, [sp, #28]
100023e8:	77dd      	strb	r5, [r3, #31]
100023ea:	3301      	adds	r3, #1
100023ec:	77da      	strb	r2, [r3, #31]
100023ee:	883b      	ldrh	r3, [r7, #0]
100023f0:	9003      	str	r0, [sp, #12]
100023f2:	8523      	strh	r3, [r4, #40]	; 0x28
100023f4:	2800      	cmp	r0, #0
100023f6:	d124      	bne.n	10002442 <gattc_write_req_ind_handler+0xaa>
100023f8:	9b06      	ldr	r3, [sp, #24]
100023fa:	781a      	ldrb	r2, [r3, #0]
100023fc:	1f50      	subs	r0, r2, #5
100023fe:	2811      	cmp	r0, #17
10002400:	d900      	bls.n	10002404 <gattc_write_req_ind_handler+0x6c>
10002402:	e0a3      	b.n	1000254c <gattc_write_req_ind_handler+0x1b4>
10002404:	f006 fef8 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10002408:	a2a2a209 	.word	0xa2a2a209
1000240c:	4ba231a2 	.word	0x4ba231a2
10002410:	a24ba290 	.word	0xa24ba290
10002414:	4ba2904b 	.word	0x4ba2904b
10002418:	90a2      	.short	0x90a2
1000241a:	0029      	movs	r1, r5
1000241c:	4b54      	ldr	r3, [pc, #336]	; (10002570 <gattc_write_req_ind_handler+0x1d8>)
1000241e:	0020      	movs	r0, r4
10002420:	4798      	blx	r3
10002422:	2303      	movs	r3, #3
10002424:	0001      	movs	r1, r0
10002426:	9a02      	ldr	r2, [sp, #8]
10002428:	4852      	ldr	r0, [pc, #328]	; (10002574 <gattc_write_req_ind_handler+0x1dc>)
1000242a:	4e53      	ldr	r6, [pc, #332]	; (10002578 <gattc_write_req_ind_handler+0x1e0>)
1000242c:	47b0      	blx	r6
1000242e:	230d      	movs	r3, #13
10002430:	aa06      	add	r2, sp, #24
10002432:	7005      	strb	r5, [r0, #0]
10002434:	189b      	adds	r3, r3, r2
10002436:	781b      	ldrb	r3, [r3, #0]
10002438:	7043      	strb	r3, [r0, #1]
1000243a:	79bb      	ldrb	r3, [r7, #6]
1000243c:	7083      	strb	r3, [r0, #2]
1000243e:	4b4f      	ldr	r3, [pc, #316]	; (1000257c <gattc_write_req_ind_handler+0x1e4>)
10002440:	4798      	blx	r3
10002442:	3408      	adds	r4, #8
10002444:	7fe3      	ldrb	r3, [r4, #31]
10002446:	2b00      	cmp	r3, #0
10002448:	d000      	beq.n	1000244c <gattc_write_req_ind_handler+0xb4>
1000244a:	e082      	b.n	10002552 <gattc_write_req_ind_handler+0x1ba>
1000244c:	3304      	adds	r3, #4
1000244e:	9a02      	ldr	r2, [sp, #8]
10002450:	9905      	ldr	r1, [sp, #20]
10002452:	484b      	ldr	r0, [pc, #300]	; (10002580 <gattc_write_req_ind_handler+0x1e8>)
10002454:	4c48      	ldr	r4, [pc, #288]	; (10002578 <gattc_write_req_ind_handler+0x1e0>)
10002456:	47a0      	blx	r4
10002458:	883b      	ldrh	r3, [r7, #0]
1000245a:	8003      	strh	r3, [r0, #0]
1000245c:	9b03      	ldr	r3, [sp, #12]
1000245e:	7083      	strb	r3, [r0, #2]
10002460:	4b46      	ldr	r3, [pc, #280]	; (1000257c <gattc_write_req_ind_handler+0x1e4>)
10002462:	4798      	blx	r3
10002464:	2000      	movs	r0, #0
10002466:	b00b      	add	sp, #44	; 0x2c
10002468:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000246a:	0029      	movs	r1, r5
1000246c:	4b40      	ldr	r3, [pc, #256]	; (10002570 <gattc_write_req_ind_handler+0x1d8>)
1000246e:	0020      	movs	r0, r4
10002470:	4798      	blx	r3
10002472:	2304      	movs	r3, #4
10002474:	0001      	movs	r1, r0
10002476:	9a02      	ldr	r2, [sp, #8]
10002478:	4842      	ldr	r0, [pc, #264]	; (10002584 <gattc_write_req_ind_handler+0x1ec>)
1000247a:	4e3f      	ldr	r6, [pc, #252]	; (10002578 <gattc_write_req_ind_handler+0x1e0>)
1000247c:	47b0      	blx	r6
1000247e:	230d      	movs	r3, #13
10002480:	7005      	strb	r5, [r0, #0]
10002482:	2503      	movs	r5, #3
10002484:	aa06      	add	r2, sp, #24
10002486:	189b      	adds	r3, r3, r2
10002488:	781b      	ldrb	r3, [r3, #0]
1000248a:	7045      	strb	r5, [r0, #1]
1000248c:	7083      	strb	r3, [r0, #2]
1000248e:	79bb      	ldrb	r3, [r7, #6]
10002490:	70c3      	strb	r3, [r0, #3]
10002492:	4b3a      	ldr	r3, [pc, #232]	; (1000257c <gattc_write_req_ind_handler+0x1e4>)
10002494:	4798      	blx	r3
10002496:	0023      	movs	r3, r4
10002498:	3308      	adds	r3, #8
1000249a:	77dd      	strb	r5, [r3, #31]
1000249c:	e7d1      	b.n	10002442 <gattc_write_req_ind_handler+0xaa>
1000249e:	0029      	movs	r1, r5
100024a0:	4b33      	ldr	r3, [pc, #204]	; (10002570 <gattc_write_req_ind_handler+0x1d8>)
100024a2:	0020      	movs	r0, r4
100024a4:	4798      	blx	r3
100024a6:	88bb      	ldrh	r3, [r7, #4]
100024a8:	0001      	movs	r1, r0
100024aa:	3308      	adds	r3, #8
100024ac:	9a02      	ldr	r2, [sp, #8]
100024ae:	4e32      	ldr	r6, [pc, #200]	; (10002578 <gattc_write_req_ind_handler+0x1e0>)
100024b0:	b29b      	uxth	r3, r3
100024b2:	4835      	ldr	r0, [pc, #212]	; (10002588 <gattc_write_req_ind_handler+0x1f0>)
100024b4:	47b0      	blx	r6
100024b6:	7005      	strb	r5, [r0, #0]
100024b8:	2502      	movs	r5, #2
100024ba:	7045      	strb	r5, [r0, #1]
100024bc:	88bb      	ldrh	r3, [r7, #4]
100024be:	aa06      	add	r2, sp, #24
100024c0:	8083      	strh	r3, [r0, #4]
100024c2:	230d      	movs	r3, #13
100024c4:	189b      	adds	r3, r3, r2
100024c6:	781b      	ldrb	r3, [r3, #0]
100024c8:	0006      	movs	r6, r0
100024ca:	7083      	strb	r3, [r0, #2]
100024cc:	230f      	movs	r3, #15
100024ce:	189b      	adds	r3, r3, r2
100024d0:	781b      	ldrb	r3, [r3, #0]
100024d2:	1db9      	adds	r1, r7, #6
100024d4:	7183      	strb	r3, [r0, #6]
100024d6:	88ba      	ldrh	r2, [r7, #4]
100024d8:	4b2c      	ldr	r3, [pc, #176]	; (1000258c <gattc_write_req_ind_handler+0x1f4>)
100024da:	3007      	adds	r0, #7
100024dc:	4798      	blx	r3
100024de:	230e      	movs	r3, #14
100024e0:	aa06      	add	r2, sp, #24
100024e2:	189b      	adds	r3, r3, r2
100024e4:	7818      	ldrb	r0, [r3, #0]
100024e6:	380c      	subs	r0, #12
100024e8:	2808      	cmp	r0, #8
100024ea:	d816      	bhi.n	1000251a <gattc_write_req_ind_handler+0x182>
100024ec:	f006 fe84 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
100024f0:	0e151505 	.word	0x0e151505
100024f4:	15151115 	.word	0x15151115
100024f8:	13          	.byte	0x13
100024f9:	00          	.byte	0x00
100024fa:	70f5      	strb	r5, [r6, #3]
100024fc:	4b1f      	ldr	r3, [pc, #124]	; (1000257c <gattc_write_req_ind_handler+0x1e4>)
100024fe:	0030      	movs	r0, r6
10002500:	4798      	blx	r3
10002502:	0023      	movs	r3, r4
10002504:	2202      	movs	r2, #2
10002506:	3308      	adds	r3, #8
10002508:	77da      	strb	r2, [r3, #31]
1000250a:	e79a      	b.n	10002442 <gattc_write_req_ind_handler+0xaa>
1000250c:	2303      	movs	r3, #3
1000250e:	70f3      	strb	r3, [r6, #3]
10002510:	e7f4      	b.n	100024fc <gattc_write_req_ind_handler+0x164>
10002512:	2304      	movs	r3, #4
10002514:	e7fb      	b.n	1000250e <gattc_write_req_ind_handler+0x176>
10002516:	2300      	movs	r3, #0
10002518:	e7f9      	b.n	1000250e <gattc_write_req_ind_handler+0x176>
1000251a:	2285      	movs	r2, #133	; 0x85
1000251c:	491c      	ldr	r1, [pc, #112]	; (10002590 <gattc_write_req_ind_handler+0x1f8>)
1000251e:	481d      	ldr	r0, [pc, #116]	; (10002594 <gattc_write_req_ind_handler+0x1fc>)
10002520:	4b1d      	ldr	r3, [pc, #116]	; (10002598 <gattc_write_req_ind_handler+0x200>)
10002522:	0092      	lsls	r2, r2, #2
10002524:	4798      	blx	r3
10002526:	e7e9      	b.n	100024fc <gattc_write_req_ind_handler+0x164>
10002528:	230f      	movs	r3, #15
1000252a:	a906      	add	r1, sp, #24
1000252c:	185b      	adds	r3, r3, r1
1000252e:	210d      	movs	r1, #13
10002530:	a806      	add	r0, sp, #24
10002532:	1809      	adds	r1, r1, r0
10002534:	79f8      	ldrb	r0, [r7, #7]
10002536:	79be      	ldrb	r6, [r7, #6]
10002538:	0200      	lsls	r0, r0, #8
1000253a:	4330      	orrs	r0, r6
1000253c:	781b      	ldrb	r3, [r3, #0]
1000253e:	7809      	ldrb	r1, [r1, #0]
10002540:	9000      	str	r0, [sp, #0]
10002542:	0028      	movs	r0, r5
10002544:	4d15      	ldr	r5, [pc, #84]	; (1000259c <gattc_write_req_ind_handler+0x204>)
10002546:	47a8      	blx	r5
10002548:	9003      	str	r0, [sp, #12]
1000254a:	e77a      	b.n	10002442 <gattc_write_req_ind_handler+0xaa>
1000254c:	2380      	movs	r3, #128	; 0x80
1000254e:	9303      	str	r3, [sp, #12]
10002550:	e777      	b.n	10002442 <gattc_write_req_ind_handler+0xaa>
10002552:	2102      	movs	r1, #2
10002554:	9b04      	ldr	r3, [sp, #16]
10002556:	9802      	ldr	r0, [sp, #8]
10002558:	4319      	orrs	r1, r3
1000255a:	b2c9      	uxtb	r1, r1
1000255c:	4b10      	ldr	r3, [pc, #64]	; (100025a0 <gattc_write_req_ind_handler+0x208>)
1000255e:	4798      	blx	r3
10002560:	e780      	b.n	10002464 <gattc_write_req_ind_handler+0xcc>
10002562:	46c0      	nop			; (mov r8, r8)
10002564:	0000182d 	.word	0x0000182d
10002568:	0002b38d 	.word	0x0002b38d
1000256c:	10001e39 	.word	0x10001e39
10002570:	0002b3c7 	.word	0x0002b3c7
10002574:	00002609 	.word	0x00002609
10002578:	00001171 	.word	0x00001171
1000257c:	000011a9 	.word	0x000011a9
10002580:	00000c16 	.word	0x00000c16
10002584:	00002606 	.word	0x00002606
10002588:	00002604 	.word	0x00002604
1000258c:	00005821 	.word	0x00005821
10002590:	10009b9c 	.word	0x10009b9c
10002594:	1000b4d2 	.word	0x1000b4d2
10002598:	00006609 	.word	0x00006609
1000259c:	100020a5 	.word	0x100020a5
100025a0:	000017c1 	.word	0x000017c1

100025a4 <hogpd_proto_mode_cfm_handler>:
100025a4:	b5f0      	push	{r4, r5, r6, r7, lr}
100025a6:	4b2b      	ldr	r3, [pc, #172]	; (10002654 <hogpd_proto_mode_cfm_handler+0xb0>)
100025a8:	b085      	sub	sp, #20
100025aa:	0010      	movs	r0, r2
100025ac:	000d      	movs	r5, r1
100025ae:	9201      	str	r2, [sp, #4]
100025b0:	4798      	blx	r3
100025b2:	0003      	movs	r3, r0
100025b4:	9002      	str	r0, [sp, #8]
100025b6:	079b      	lsls	r3, r3, #30
100025b8:	d52c      	bpl.n	10002614 <hogpd_proto_mode_cfm_handler+0x70>
100025ba:	4b27      	ldr	r3, [pc, #156]	; (10002658 <hogpd_proto_mode_cfm_handler+0xb4>)
100025bc:	2026      	movs	r0, #38	; 0x26
100025be:	4798      	blx	r3
100025c0:	786f      	ldrb	r7, [r5, #1]
100025c2:	1dc3      	adds	r3, r0, #7
100025c4:	0004      	movs	r4, r0
100025c6:	9303      	str	r3, [sp, #12]
100025c8:	2f00      	cmp	r7, #0
100025ca:	d104      	bne.n	100025d6 <hogpd_proto_mode_cfm_handler+0x32>
100025cc:	3301      	adds	r3, #1
100025ce:	7fdb      	ldrb	r3, [r3, #31]
100025d0:	2b03      	cmp	r3, #3
100025d2:	d022      	beq.n	1000261a <hogpd_proto_mode_cfm_handler+0x76>
100025d4:	2780      	movs	r7, #128	; 0x80
100025d6:	2107      	movs	r1, #7
100025d8:	1de3      	adds	r3, r4, #7
100025da:	7fdb      	ldrb	r3, [r3, #31]
100025dc:	021b      	lsls	r3, r3, #8
100025de:	4319      	orrs	r1, r3
100025e0:	0023      	movs	r3, r4
100025e2:	3308      	adds	r3, #8
100025e4:	7fdb      	ldrb	r3, [r3, #31]
100025e6:	2b01      	cmp	r3, #1
100025e8:	d12a      	bne.n	10002640 <hogpd_proto_mode_cfm_handler+0x9c>
100025ea:	3305      	adds	r3, #5
100025ec:	9a01      	ldr	r2, [sp, #4]
100025ee:	481b      	ldr	r0, [pc, #108]	; (1000265c <hogpd_proto_mode_cfm_handler+0xb8>)
100025f0:	4d1b      	ldr	r5, [pc, #108]	; (10002660 <hogpd_proto_mode_cfm_handler+0xbc>)
100025f2:	47a8      	blx	r5
100025f4:	8d23      	ldrh	r3, [r4, #40]	; 0x28
100025f6:	7107      	strb	r7, [r0, #4]
100025f8:	8003      	strh	r3, [r0, #0]
100025fa:	4b1a      	ldr	r3, [pc, #104]	; (10002664 <hogpd_proto_mode_cfm_handler+0xc0>)
100025fc:	4798      	blx	r3
100025fe:	23ff      	movs	r3, #255	; 0xff
10002600:	84e3      	strh	r3, [r4, #38]	; 0x26
10002602:	2300      	movs	r3, #0
10002604:	21fd      	movs	r1, #253	; 0xfd
10002606:	8523      	strh	r3, [r4, #40]	; 0x28
10002608:	9b02      	ldr	r3, [sp, #8]
1000260a:	9801      	ldr	r0, [sp, #4]
1000260c:	400b      	ands	r3, r1
1000260e:	0019      	movs	r1, r3
10002610:	4b15      	ldr	r3, [pc, #84]	; (10002668 <hogpd_proto_mode_cfm_handler+0xc4>)
10002612:	4798      	blx	r3
10002614:	2000      	movs	r0, #0
10002616:	b005      	add	sp, #20
10002618:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000261a:	1dc3      	adds	r3, r0, #7
1000261c:	782a      	ldrb	r2, [r5, #0]
1000261e:	7fdb      	ldrb	r3, [r3, #31]
10002620:	429a      	cmp	r2, r3
10002622:	d1d7      	bne.n	100025d4 <hogpd_proto_mode_cfm_handler+0x30>
10002624:	003b      	movs	r3, r7
10002626:	220a      	movs	r2, #10
10002628:	78a9      	ldrb	r1, [r5, #2]
1000262a:	4e10      	ldr	r6, [pc, #64]	; (1000266c <hogpd_proto_mode_cfm_handler+0xc8>)
1000262c:	47b0      	blx	r6
1000262e:	8d23      	ldrh	r3, [r4, #40]	; 0x28
10002630:	4283      	cmp	r3, r0
10002632:	d1cf      	bne.n	100025d4 <hogpd_proto_mode_cfm_handler+0x30>
10002634:	78ab      	ldrb	r3, [r5, #2]
10002636:	78ea      	ldrb	r2, [r5, #3]
10002638:	011b      	lsls	r3, r3, #4
1000263a:	18e3      	adds	r3, r4, r3
1000263c:	74da      	strb	r2, [r3, #19]
1000263e:	e7ca      	b.n	100025d6 <hogpd_proto_mode_cfm_handler+0x32>
10002640:	2304      	movs	r3, #4
10002642:	9a01      	ldr	r2, [sp, #4]
10002644:	480a      	ldr	r0, [pc, #40]	; (10002670 <hogpd_proto_mode_cfm_handler+0xcc>)
10002646:	4d06      	ldr	r5, [pc, #24]	; (10002660 <hogpd_proto_mode_cfm_handler+0xbc>)
10002648:	47a8      	blx	r5
1000264a:	8d23      	ldrh	r3, [r4, #40]	; 0x28
1000264c:	7087      	strb	r7, [r0, #2]
1000264e:	8003      	strh	r3, [r0, #0]
10002650:	e7d3      	b.n	100025fa <hogpd_proto_mode_cfm_handler+0x56>
10002652:	46c0      	nop			; (mov r8, r8)
10002654:	0000182d 	.word	0x0000182d
10002658:	0002b38d 	.word	0x0002b38d
1000265c:	00000c14 	.word	0x00000c14
10002660:	00001171 	.word	0x00001171
10002664:	000011a9 	.word	0x000011a9
10002668:	000017c1 	.word	0x000017c1
1000266c:	10001899 	.word	0x10001899
10002670:	00000c16 	.word	0x00000c16

10002674 <hogpd_report_cfm_handler>:
10002674:	b5f0      	push	{r4, r5, r6, r7, lr}
10002676:	4b34      	ldr	r3, [pc, #208]	; (10002748 <hogpd_report_cfm_handler+0xd4>)
10002678:	b085      	sub	sp, #20
1000267a:	0010      	movs	r0, r2
1000267c:	0016      	movs	r6, r2
1000267e:	9101      	str	r1, [sp, #4]
10002680:	4798      	blx	r3
10002682:	0003      	movs	r3, r0
10002684:	9003      	str	r0, [sp, #12]
10002686:	079b      	lsls	r3, r3, #30
10002688:	d551      	bpl.n	1000272e <hogpd_report_cfm_handler+0xba>
1000268a:	4b30      	ldr	r3, [pc, #192]	; (1000274c <hogpd_report_cfm_handler+0xd8>)
1000268c:	2026      	movs	r0, #38	; 0x26
1000268e:	4798      	blx	r3
10002690:	9b01      	ldr	r3, [sp, #4]
10002692:	0004      	movs	r4, r0
10002694:	789f      	ldrb	r7, [r3, #2]
10002696:	2f00      	cmp	r7, #0
10002698:	d115      	bne.n	100026c6 <hogpd_report_cfm_handler+0x52>
1000269a:	881a      	ldrh	r2, [r3, #0]
1000269c:	8cc3      	ldrh	r3, [r0, #38]	; 0x26
1000269e:	429a      	cmp	r2, r3
100026a0:	d110      	bne.n	100026c4 <hogpd_report_cfm_handler+0x50>
100026a2:	9b01      	ldr	r3, [sp, #4]
100026a4:	003a      	movs	r2, r7
100026a6:	795b      	ldrb	r3, [r3, #5]
100026a8:	2b04      	cmp	r3, #4
100026aa:	d801      	bhi.n	100026b0 <hogpd_report_cfm_handler+0x3c>
100026ac:	4a28      	ldr	r2, [pc, #160]	; (10002750 <hogpd_report_cfm_handler+0xdc>)
100026ae:	5cd2      	ldrb	r2, [r2, r3]
100026b0:	9b01      	ldr	r3, [sp, #4]
100026b2:	9901      	ldr	r1, [sp, #4]
100026b4:	7a1b      	ldrb	r3, [r3, #8]
100026b6:	0020      	movs	r0, r4
100026b8:	7909      	ldrb	r1, [r1, #4]
100026ba:	4d26      	ldr	r5, [pc, #152]	; (10002754 <hogpd_report_cfm_handler+0xe0>)
100026bc:	47a8      	blx	r5
100026be:	8d23      	ldrh	r3, [r4, #40]	; 0x28
100026c0:	4283      	cmp	r3, r0
100026c2:	d000      	beq.n	100026c6 <hogpd_report_cfm_handler+0x52>
100026c4:	2780      	movs	r7, #128	; 0x80
100026c6:	1de3      	adds	r3, r4, #7
100026c8:	7fd9      	ldrb	r1, [r3, #31]
100026ca:	2307      	movs	r3, #7
100026cc:	0209      	lsls	r1, r1, #8
100026ce:	4319      	orrs	r1, r3
100026d0:	0023      	movs	r3, r4
100026d2:	3308      	adds	r3, #8
100026d4:	7fdb      	ldrb	r3, [r3, #31]
100026d6:	2b01      	cmp	r3, #1
100026d8:	d12c      	bne.n	10002734 <hogpd_report_cfm_handler+0xc0>
100026da:	2300      	movs	r3, #0
100026dc:	9302      	str	r3, [sp, #8]
100026de:	429f      	cmp	r7, r3
100026e0:	d102      	bne.n	100026e8 <hogpd_report_cfm_handler+0x74>
100026e2:	9b01      	ldr	r3, [sp, #4]
100026e4:	88db      	ldrh	r3, [r3, #6]
100026e6:	9302      	str	r3, [sp, #8]
100026e8:	9b02      	ldr	r3, [sp, #8]
100026ea:	4d1b      	ldr	r5, [pc, #108]	; (10002758 <hogpd_report_cfm_handler+0xe4>)
100026ec:	3306      	adds	r3, #6
100026ee:	b29b      	uxth	r3, r3
100026f0:	0032      	movs	r2, r6
100026f2:	481a      	ldr	r0, [pc, #104]	; (1000275c <hogpd_report_cfm_handler+0xe8>)
100026f4:	47a8      	blx	r5
100026f6:	8d23      	ldrh	r3, [r4, #40]	; 0x28
100026f8:	0005      	movs	r5, r0
100026fa:	8003      	strh	r3, [r0, #0]
100026fc:	9b02      	ldr	r3, [sp, #8]
100026fe:	7107      	strb	r7, [r0, #4]
10002700:	8043      	strh	r3, [r0, #2]
10002702:	2f00      	cmp	r7, #0
10002704:	d105      	bne.n	10002712 <hogpd_report_cfm_handler+0x9e>
10002706:	9901      	ldr	r1, [sp, #4]
10002708:	001a      	movs	r2, r3
1000270a:	3005      	adds	r0, #5
1000270c:	4b14      	ldr	r3, [pc, #80]	; (10002760 <hogpd_report_cfm_handler+0xec>)
1000270e:	3109      	adds	r1, #9
10002710:	4798      	blx	r3
10002712:	0028      	movs	r0, r5
10002714:	4b13      	ldr	r3, [pc, #76]	; (10002764 <hogpd_report_cfm_handler+0xf0>)
10002716:	4798      	blx	r3
10002718:	23ff      	movs	r3, #255	; 0xff
1000271a:	84e3      	strh	r3, [r4, #38]	; 0x26
1000271c:	2300      	movs	r3, #0
1000271e:	21fd      	movs	r1, #253	; 0xfd
10002720:	8523      	strh	r3, [r4, #40]	; 0x28
10002722:	9b03      	ldr	r3, [sp, #12]
10002724:	0030      	movs	r0, r6
10002726:	400b      	ands	r3, r1
10002728:	0019      	movs	r1, r3
1000272a:	4b0f      	ldr	r3, [pc, #60]	; (10002768 <hogpd_report_cfm_handler+0xf4>)
1000272c:	4798      	blx	r3
1000272e:	2000      	movs	r0, #0
10002730:	b005      	add	sp, #20
10002732:	bdf0      	pop	{r4, r5, r6, r7, pc}
10002734:	2304      	movs	r3, #4
10002736:	0032      	movs	r2, r6
10002738:	480c      	ldr	r0, [pc, #48]	; (1000276c <hogpd_report_cfm_handler+0xf8>)
1000273a:	4d07      	ldr	r5, [pc, #28]	; (10002758 <hogpd_report_cfm_handler+0xe4>)
1000273c:	47a8      	blx	r5
1000273e:	8d23      	ldrh	r3, [r4, #40]	; 0x28
10002740:	7087      	strb	r7, [r0, #2]
10002742:	8003      	strh	r3, [r0, #0]
10002744:	e7e6      	b.n	10002714 <hogpd_report_cfm_handler+0xa0>
10002746:	46c0      	nop			; (mov r8, r8)
10002748:	0000182d 	.word	0x0000182d
1000274c:	0002b38d 	.word	0x0002b38d
10002750:	10009bb9 	.word	0x10009bb9
10002754:	10001899 	.word	0x10001899
10002758:	00001171 	.word	0x00001171
1000275c:	00000c14 	.word	0x00000c14
10002760:	00005821 	.word	0x00005821
10002764:	000011a9 	.word	0x000011a9
10002768:	000017c1 	.word	0x000017c1
1000276c:	00000c16 	.word	0x00000c16

10002770 <hogpd_enable_req_handler>:
10002770:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002772:	2026      	movs	r0, #38	; 0x26
10002774:	001e      	movs	r6, r3
10002776:	4b1d      	ldr	r3, [pc, #116]	; (100027ec <hogpd_enable_req_handler+0x7c>)
10002778:	000c      	movs	r4, r1
1000277a:	0017      	movs	r7, r2
1000277c:	4798      	blx	r3
1000277e:	1e05      	subs	r5, r0, #0
10002780:	d104      	bne.n	1000278c <hogpd_enable_req_handler+0x1c>
10002782:	224a      	movs	r2, #74	; 0x4a
10002784:	491a      	ldr	r1, [pc, #104]	; (100027f0 <hogpd_enable_req_handler+0x80>)
10002786:	481b      	ldr	r0, [pc, #108]	; (100027f4 <hogpd_enable_req_handler+0x84>)
10002788:	4b1b      	ldr	r3, [pc, #108]	; (100027f8 <hogpd_enable_req_handler+0x88>)
1000278a:	4798      	blx	r3
1000278c:	7820      	ldrb	r0, [r4, #0]
1000278e:	2805      	cmp	r0, #5
10002790:	d90d      	bls.n	100027ae <hogpd_enable_req_handler+0x3e>
10002792:	2540      	movs	r5, #64	; 0x40
10002794:	003a      	movs	r2, r7
10002796:	0031      	movs	r1, r6
10002798:	2302      	movs	r3, #2
1000279a:	4e18      	ldr	r6, [pc, #96]	; (100027fc <hogpd_enable_req_handler+0x8c>)
1000279c:	4818      	ldr	r0, [pc, #96]	; (10002800 <hogpd_enable_req_handler+0x90>)
1000279e:	47b0      	blx	r6
100027a0:	7823      	ldrb	r3, [r4, #0]
100027a2:	7045      	strb	r5, [r0, #1]
100027a4:	7003      	strb	r3, [r0, #0]
100027a6:	4b17      	ldr	r3, [pc, #92]	; (10002804 <hogpd_enable_req_handler+0x94>)
100027a8:	4798      	blx	r3
100027aa:	2000      	movs	r0, #0
100027ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100027ae:	4b16      	ldr	r3, [pc, #88]	; (10002808 <hogpd_enable_req_handler+0x98>)
100027b0:	4798      	blx	r3
100027b2:	4b16      	ldr	r3, [pc, #88]	; (1000280c <hogpd_enable_req_handler+0x9c>)
100027b4:	4298      	cmp	r0, r3
100027b6:	d013      	beq.n	100027e0 <hogpd_enable_req_handler+0x70>
100027b8:	002b      	movs	r3, r5
100027ba:	332b      	adds	r3, #43	; 0x2b
100027bc:	781a      	ldrb	r2, [r3, #0]
100027be:	2a00      	cmp	r2, #0
100027c0:	d00c      	beq.n	100027dc <hogpd_enable_req_handler+0x6c>
100027c2:	7823      	ldrb	r3, [r4, #0]
100027c4:	8861      	ldrh	r1, [r4, #2]
100027c6:	005b      	lsls	r3, r3, #1
100027c8:	18eb      	adds	r3, r5, r3
100027ca:	80d9      	strh	r1, [r3, #6]
100027cc:	2a01      	cmp	r2, #1
100027ce:	d005      	beq.n	100027dc <hogpd_enable_req_handler+0x6c>
100027d0:	7820      	ldrb	r0, [r4, #0]
100027d2:	88a3      	ldrh	r3, [r4, #4]
100027d4:	3008      	adds	r0, #8
100027d6:	0040      	lsls	r0, r0, #1
100027d8:	182d      	adds	r5, r5, r0
100027da:	80eb      	strh	r3, [r5, #6]
100027dc:	2500      	movs	r5, #0
100027de:	e7d9      	b.n	10002794 <hogpd_enable_req_handler+0x24>
100027e0:	7823      	ldrb	r3, [r4, #0]
100027e2:	2589      	movs	r5, #137	; 0x89
100027e4:	2b05      	cmp	r3, #5
100027e6:	d9d5      	bls.n	10002794 <hogpd_enable_req_handler+0x24>
100027e8:	e7d3      	b.n	10002792 <hogpd_enable_req_handler+0x22>
100027ea:	46c0      	nop			; (mov r8, r8)
100027ec:	0002b38d 	.word	0x0002b38d
100027f0:	10009b9c 	.word	0x10009b9c
100027f4:	10009ba9 	.word	0x10009ba9
100027f8:	00006609 	.word	0x00006609
100027fc:	00001171 	.word	0x00001171
10002800:	00002601 	.word	0x00002601
10002804:	000011a9 	.word	0x000011a9
10002808:	000226c9 	.word	0x000226c9
1000280c:	0000ffff 	.word	0x0000ffff

10002810 <hogpd_report_upd_req_handler>:
10002810:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10002812:	0010      	movs	r0, r2
10002814:	9301      	str	r3, [sp, #4]
10002816:	4b19      	ldr	r3, [pc, #100]	; (1000287c <hogpd_report_upd_req_handler+0x6c>)
10002818:	000d      	movs	r5, r1
1000281a:	0016      	movs	r6, r2
1000281c:	4798      	blx	r3
1000281e:	2301      	movs	r3, #1
10002820:	0007      	movs	r7, r0
10002822:	2002      	movs	r0, #2
10002824:	421f      	tst	r7, r3
10002826:	d10f      	bne.n	10002848 <hogpd_report_upd_req_handler+0x38>
10002828:	7828      	ldrb	r0, [r5, #0]
1000282a:	2805      	cmp	r0, #5
1000282c:	d90d      	bls.n	1000284a <hogpd_report_upd_req_handler+0x3a>
1000282e:	2440      	movs	r4, #64	; 0x40
10002830:	0032      	movs	r2, r6
10002832:	2302      	movs	r3, #2
10002834:	9901      	ldr	r1, [sp, #4]
10002836:	4812      	ldr	r0, [pc, #72]	; (10002880 <hogpd_report_upd_req_handler+0x70>)
10002838:	4e12      	ldr	r6, [pc, #72]	; (10002884 <hogpd_report_upd_req_handler+0x74>)
1000283a:	47b0      	blx	r6
1000283c:	782b      	ldrb	r3, [r5, #0]
1000283e:	7044      	strb	r4, [r0, #1]
10002840:	7003      	strb	r3, [r0, #0]
10002842:	4b11      	ldr	r3, [pc, #68]	; (10002888 <hogpd_report_upd_req_handler+0x78>)
10002844:	4798      	blx	r3
10002846:	2000      	movs	r0, #0
10002848:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
1000284a:	4b10      	ldr	r3, [pc, #64]	; (1000288c <hogpd_report_upd_req_handler+0x7c>)
1000284c:	4798      	blx	r3
1000284e:	4a10      	ldr	r2, [pc, #64]	; (10002890 <hogpd_report_upd_req_handler+0x80>)
10002850:	782b      	ldrb	r3, [r5, #0]
10002852:	4290      	cmp	r0, r2
10002854:	d103      	bne.n	1000285e <hogpd_report_upd_req_handler+0x4e>
10002856:	2489      	movs	r4, #137	; 0x89
10002858:	2b05      	cmp	r3, #5
1000285a:	d9e9      	bls.n	10002830 <hogpd_report_upd_req_handler+0x20>
1000285c:	e7e7      	b.n	1000282e <hogpd_report_upd_req_handler+0x1e>
1000285e:	0018      	movs	r0, r3
10002860:	1ca9      	adds	r1, r5, #2
10002862:	4b0c      	ldr	r3, [pc, #48]	; (10002894 <hogpd_report_upd_req_handler+0x84>)
10002864:	4798      	blx	r3
10002866:	1e04      	subs	r4, r0, #0
10002868:	d1e2      	bne.n	10002830 <hogpd_report_upd_req_handler+0x20>
1000286a:	2101      	movs	r1, #1
1000286c:	4339      	orrs	r1, r7
1000286e:	0030      	movs	r0, r6
10002870:	4b09      	ldr	r3, [pc, #36]	; (10002898 <hogpd_report_upd_req_handler+0x88>)
10002872:	b2c9      	uxtb	r1, r1
10002874:	4798      	blx	r3
10002876:	0020      	movs	r0, r4
10002878:	e7e6      	b.n	10002848 <hogpd_report_upd_req_handler+0x38>
1000287a:	46c0      	nop			; (mov r8, r8)
1000287c:	0000182d 	.word	0x0000182d
10002880:	00002603 	.word	0x00002603
10002884:	00001171 	.word	0x00001171
10002888:	000011a9 	.word	0x000011a9
1000288c:	000226c9 	.word	0x000226c9
10002890:	0000ffff 	.word	0x0000ffff
10002894:	10001f79 	.word	0x10001f79
10002898:	000017c1 	.word	0x000017c1

1000289c <gattc_cmp_evt_handler>:
1000289c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000289e:	0015      	movs	r5, r2
100028a0:	780a      	ldrb	r2, [r1, #0]
100028a2:	000e      	movs	r6, r1
100028a4:	2a12      	cmp	r2, #18
100028a6:	d119      	bne.n	100028dc <gattc_cmp_evt_handler+0x40>
100028a8:	0a1c      	lsrs	r4, r3, #8
100028aa:	2026      	movs	r0, #38	; 0x26
100028ac:	4b0c      	ldr	r3, [pc, #48]	; (100028e0 <gattc_cmp_evt_handler+0x44>)
100028ae:	4798      	blx	r3
100028b0:	0021      	movs	r1, r4
100028b2:	4b0c      	ldr	r3, [pc, #48]	; (100028e4 <gattc_cmp_evt_handler+0x48>)
100028b4:	4798      	blx	r3
100028b6:	002a      	movs	r2, r5
100028b8:	0001      	movs	r1, r0
100028ba:	2302      	movs	r3, #2
100028bc:	480a      	ldr	r0, [pc, #40]	; (100028e8 <gattc_cmp_evt_handler+0x4c>)
100028be:	4f0b      	ldr	r7, [pc, #44]	; (100028ec <gattc_cmp_evt_handler+0x50>)
100028c0:	47b8      	blx	r7
100028c2:	7004      	strb	r4, [r0, #0]
100028c4:	7873      	ldrb	r3, [r6, #1]
100028c6:	7043      	strb	r3, [r0, #1]
100028c8:	4b09      	ldr	r3, [pc, #36]	; (100028f0 <gattc_cmp_evt_handler+0x54>)
100028ca:	4798      	blx	r3
100028cc:	4b09      	ldr	r3, [pc, #36]	; (100028f4 <gattc_cmp_evt_handler+0x58>)
100028ce:	0028      	movs	r0, r5
100028d0:	4798      	blx	r3
100028d2:	21fe      	movs	r1, #254	; 0xfe
100028d4:	4b08      	ldr	r3, [pc, #32]	; (100028f8 <gattc_cmp_evt_handler+0x5c>)
100028d6:	4001      	ands	r1, r0
100028d8:	0028      	movs	r0, r5
100028da:	4798      	blx	r3
100028dc:	2000      	movs	r0, #0
100028de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100028e0:	0002b38d 	.word	0x0002b38d
100028e4:	0002b3c7 	.word	0x0002b3c7
100028e8:	00002603 	.word	0x00002603
100028ec:	00001171 	.word	0x00001171
100028f0:	000011a9 	.word	0x000011a9
100028f4:	0000182d 	.word	0x0000182d
100028f8:	000017c1 	.word	0x000017c1

100028fc <hogpd_task_init>:
100028fc:	b510      	push	{r4, lr}
100028fe:	4b05      	ldr	r3, [pc, #20]	; (10002914 <hogpd_task_init+0x18>)
10002900:	0004      	movs	r4, r0
10002902:	2026      	movs	r0, #38	; 0x26
10002904:	4798      	blx	r3
10002906:	4b04      	ldr	r3, [pc, #16]	; (10002918 <hogpd_task_init+0x1c>)
10002908:	302a      	adds	r0, #42	; 0x2a
1000290a:	6023      	str	r3, [r4, #0]
1000290c:	4b03      	ldr	r3, [pc, #12]	; (1000291c <hogpd_task_init+0x20>)
1000290e:	6060      	str	r0, [r4, #4]
10002910:	60a3      	str	r3, [r4, #8]
10002912:	bd10      	pop	{r4, pc}
10002914:	0002b38d 	.word	0x0002b38d
10002918:	10009bc0 	.word	0x10009bc0
1000291c:	00080001 	.word	0x00080001

10002920 <user_init_appm_init>:
10002920:	b510      	push	{r4, lr}
10002922:	4b02      	ldr	r3, [pc, #8]	; (1000292c <user_init_appm_init+0xc>)
10002924:	4798      	blx	r3
10002926:	2001      	movs	r0, #1
10002928:	bd10      	pop	{r4, pc}
1000292a:	46c0      	nop			; (mov r8, r8)
1000292c:	1000392d 	.word	0x1000392d

10002930 <user_init_constructor>:
10002930:	b530      	push	{r4, r5, lr}
10002932:	4b22      	ldr	r3, [pc, #136]	; (100029bc <user_init_constructor+0x8c>)
10002934:	b085      	sub	sp, #20
10002936:	4798      	blx	r3
10002938:	4921      	ldr	r1, [pc, #132]	; (100029c0 <user_init_constructor+0x90>)
1000293a:	4c22      	ldr	r4, [pc, #136]	; (100029c4 <user_init_constructor+0x94>)
1000293c:	4822      	ldr	r0, [pc, #136]	; (100029c8 <user_init_constructor+0x98>)
1000293e:	47a0      	blx	r4
10002940:	4922      	ldr	r1, [pc, #136]	; (100029cc <user_init_constructor+0x9c>)
10002942:	4823      	ldr	r0, [pc, #140]	; (100029d0 <user_init_constructor+0xa0>)
10002944:	47a0      	blx	r4
10002946:	4b23      	ldr	r3, [pc, #140]	; (100029d4 <user_init_constructor+0xa4>)
10002948:	681b      	ldr	r3, [r3, #0]
1000294a:	2b02      	cmp	r3, #2
1000294c:	d108      	bne.n	10002960 <user_init_constructor+0x30>
1000294e:	2201      	movs	r2, #1
10002950:	4b21      	ldr	r3, [pc, #132]	; (100029d8 <user_init_constructor+0xa8>)
10002952:	701a      	strb	r2, [r3, #0]
10002954:	4921      	ldr	r1, [pc, #132]	; (100029dc <user_init_constructor+0xac>)
10002956:	4822      	ldr	r0, [pc, #136]	; (100029e0 <user_init_constructor+0xb0>)
10002958:	4b22      	ldr	r3, [pc, #136]	; (100029e4 <user_init_constructor+0xb4>)
1000295a:	4798      	blx	r3
1000295c:	b005      	add	sp, #20
1000295e:	bd30      	pop	{r4, r5, pc}
10002960:	4b21      	ldr	r3, [pc, #132]	; (100029e8 <user_init_constructor+0xb8>)
10002962:	4798      	blx	r3
10002964:	2400      	movs	r4, #0
10002966:	0005      	movs	r5, r0
10002968:	42a0      	cmp	r0, r4
1000296a:	d00a      	beq.n	10002982 <user_init_constructor+0x52>
1000296c:	466b      	mov	r3, sp
1000296e:	1d99      	adds	r1, r3, #6
10002970:	2306      	movs	r3, #6
10002972:	2001      	movs	r0, #1
10002974:	800b      	strh	r3, [r1, #0]
10002976:	aa02      	add	r2, sp, #8
10002978:	4b1c      	ldr	r3, [pc, #112]	; (100029ec <user_init_constructor+0xbc>)
1000297a:	4798      	blx	r3
1000297c:	4243      	negs	r3, r0
1000297e:	4158      	adcs	r0, r3
10002980:	b2c4      	uxtb	r4, r0
10002982:	4b1b      	ldr	r3, [pc, #108]	; (100029f0 <user_init_constructor+0xc0>)
10002984:	4798      	blx	r3
10002986:	481b      	ldr	r0, [pc, #108]	; (100029f4 <user_init_constructor+0xc4>)
10002988:	4b1b      	ldr	r3, [pc, #108]	; (100029f8 <user_init_constructor+0xc8>)
1000298a:	491c      	ldr	r1, [pc, #112]	; (100029fc <user_init_constructor+0xcc>)
1000298c:	1a09      	subs	r1, r1, r0
1000298e:	1ac0      	subs	r0, r0, r3
10002990:	4b1b      	ldr	r3, [pc, #108]	; (10002a00 <user_init_constructor+0xd0>)
10002992:	4798      	blx	r3
10002994:	2d00      	cmp	r5, #0
10002996:	d0dd      	beq.n	10002954 <user_init_constructor+0x24>
10002998:	466b      	mov	r3, sp
1000299a:	2200      	movs	r2, #0
1000299c:	1d99      	adds	r1, r3, #6
1000299e:	2001      	movs	r0, #1
100029a0:	4b12      	ldr	r3, [pc, #72]	; (100029ec <user_init_constructor+0xbc>)
100029a2:	800a      	strh	r2, [r1, #0]
100029a4:	4798      	blx	r3
100029a6:	2804      	cmp	r0, #4
100029a8:	d0d4      	beq.n	10002954 <user_init_constructor+0x24>
100029aa:	2c00      	cmp	r4, #0
100029ac:	d0d2      	beq.n	10002954 <user_init_constructor+0x24>
100029ae:	2106      	movs	r1, #6
100029b0:	4b14      	ldr	r3, [pc, #80]	; (10002a04 <user_init_constructor+0xd4>)
100029b2:	aa02      	add	r2, sp, #8
100029b4:	2001      	movs	r0, #1
100029b6:	4798      	blx	r3
100029b8:	e7cc      	b.n	10002954 <user_init_constructor+0x24>
100029ba:	46c0      	nop			; (mov r8, r8)
100029bc:	100039c1 	.word	0x100039c1
100029c0:	10009c00 	.word	0x10009c00
100029c4:	000066b1 	.word	0x000066b1
100029c8:	10009c06 	.word	0x10009c06
100029cc:	10009c16 	.word	0x10009c16
100029d0:	10009c1e 	.word	0x10009c1e
100029d4:	4000303c 	.word	0x4000303c
100029d8:	200012b0 	.word	0x200012b0
100029dc:	20014058 	.word	0x20014058
100029e0:	20001290 	.word	0x20001290
100029e4:	00006715 	.word	0x00006715
100029e8:	00005dbd 	.word	0x00005dbd
100029ec:	00002f55 	.word	0x00002f55
100029f0:	10004119 	.word	0x10004119
100029f4:	10078000 	.word	0x10078000
100029f8:	10000000 	.word	0x10000000
100029fc:	10080000 	.word	0x10080000
10002a00:	00002e35 	.word	0x00002e35
10002a04:	0000308d 	.word	0x0000308d

10002a08 <lunch_s_scan_timeout>:
10002a08:	b510      	push	{r4, lr}
10002a0a:	4b04      	ldr	r3, [pc, #16]	; (10002a1c <lunch_s_scan_timeout+0x14>)
10002a0c:	4798      	blx	r3
10002a0e:	2803      	cmp	r0, #3
10002a10:	d102      	bne.n	10002a18 <lunch_s_scan_timeout+0x10>
10002a12:	4b03      	ldr	r3, [pc, #12]	; (10002a20 <lunch_s_scan_timeout+0x18>)
10002a14:	3006      	adds	r0, #6
10002a16:	4798      	blx	r3
10002a18:	bd10      	pop	{r4, pc}
10002a1a:	46c0      	nop			; (mov r8, r8)
10002a1c:	10001445 	.word	0x10001445
10002a20:	100010cd 	.word	0x100010cd

10002a24 <lunch_s_disconnected>:
10002a24:	b510      	push	{r4, lr}
10002a26:	4b02      	ldr	r3, [pc, #8]	; (10002a30 <lunch_s_disconnected+0xc>)
10002a28:	7818      	ldrb	r0, [r3, #0]
10002a2a:	4b02      	ldr	r3, [pc, #8]	; (10002a34 <lunch_s_disconnected+0x10>)
10002a2c:	4798      	blx	r3
10002a2e:	bd10      	pop	{r4, pc}
10002a30:	20014d79 	.word	0x20014d79
10002a34:	1000330d 	.word	0x1000330d

10002a38 <lunch_s_discing>:
10002a38:	b510      	push	{r4, lr}
10002a3a:	4b03      	ldr	r3, [pc, #12]	; (10002a48 <lunch_s_discing+0x10>)
10002a3c:	7818      	ldrb	r0, [r3, #0]
10002a3e:	4b03      	ldr	r3, [pc, #12]	; (10002a4c <lunch_s_discing+0x14>)
10002a40:	4798      	blx	r3
10002a42:	4b03      	ldr	r3, [pc, #12]	; (10002a50 <lunch_s_discing+0x18>)
10002a44:	4798      	blx	r3
10002a46:	bd10      	pop	{r4, pc}
10002a48:	20014d79 	.word	0x20014d79
10002a4c:	1000330d 	.word	0x1000330d
10002a50:	10001021 	.word	0x10001021

10002a54 <lunch_s_disc_restart>:
10002a54:	b510      	push	{r4, lr}
10002a56:	4b04      	ldr	r3, [pc, #16]	; (10002a68 <lunch_s_disc_restart+0x14>)
10002a58:	7818      	ldrb	r0, [r3, #0]
10002a5a:	4b04      	ldr	r3, [pc, #16]	; (10002a6c <lunch_s_disc_restart+0x18>)
10002a5c:	4798      	blx	r3
10002a5e:	2001      	movs	r0, #1
10002a60:	4b03      	ldr	r3, [pc, #12]	; (10002a70 <lunch_s_disc_restart+0x1c>)
10002a62:	4798      	blx	r3
10002a64:	bd10      	pop	{r4, pc}
10002a66:	46c0      	nop			; (mov r8, r8)
10002a68:	20014d79 	.word	0x20014d79
10002a6c:	1000330d 	.word	0x1000330d
10002a70:	100012b5 	.word	0x100012b5

10002a74 <lunch_s_connected>:
10002a74:	b510      	push	{r4, lr}
10002a76:	4905      	ldr	r1, [pc, #20]	; (10002a8c <lunch_s_connected+0x18>)
10002a78:	4b05      	ldr	r3, [pc, #20]	; (10002a90 <lunch_s_connected+0x1c>)
10002a7a:	4806      	ldr	r0, [pc, #24]	; (10002a94 <lunch_s_connected+0x20>)
10002a7c:	4798      	blx	r3
10002a7e:	4b06      	ldr	r3, [pc, #24]	; (10002a98 <lunch_s_connected+0x24>)
10002a80:	4906      	ldr	r1, [pc, #24]	; (10002a9c <lunch_s_connected+0x28>)
10002a82:	7818      	ldrb	r0, [r3, #0]
10002a84:	4b06      	ldr	r3, [pc, #24]	; (10002aa0 <lunch_s_connected+0x2c>)
10002a86:	4798      	blx	r3
10002a88:	bd10      	pop	{r4, pc}
10002a8a:	46c0      	nop			; (mov r8, r8)
10002a8c:	10009dad 	.word	0x10009dad
10002a90:	000066b1 	.word	0x000066b1
10002a94:	10009c2e 	.word	0x10009c2e
10002a98:	20014d79 	.word	0x20014d79
10002a9c:	00000bb8 	.word	0x00000bb8
10002aa0:	100032b9 	.word	0x100032b9

10002aa4 <lunch_s_hid_ready>:
10002aa4:	b510      	push	{r4, lr}
10002aa6:	4b07      	ldr	r3, [pc, #28]	; (10002ac4 <lunch_s_hid_ready+0x20>)
10002aa8:	4907      	ldr	r1, [pc, #28]	; (10002ac8 <lunch_s_hid_ready+0x24>)
10002aaa:	7818      	ldrb	r0, [r3, #0]
10002aac:	4b07      	ldr	r3, [pc, #28]	; (10002acc <lunch_s_hid_ready+0x28>)
10002aae:	4798      	blx	r3
10002ab0:	4b07      	ldr	r3, [pc, #28]	; (10002ad0 <lunch_s_hid_ready+0x2c>)
10002ab2:	4798      	blx	r3
10002ab4:	2000      	movs	r0, #0
10002ab6:	4b07      	ldr	r3, [pc, #28]	; (10002ad4 <lunch_s_hid_ready+0x30>)
10002ab8:	4798      	blx	r3
10002aba:	2009      	movs	r0, #9
10002abc:	4b06      	ldr	r3, [pc, #24]	; (10002ad8 <lunch_s_hid_ready+0x34>)
10002abe:	4798      	blx	r3
10002ac0:	bd10      	pop	{r4, pc}
10002ac2:	46c0      	nop			; (mov r8, r8)
10002ac4:	20014d79 	.word	0x20014d79
10002ac8:	0000ea60 	.word	0x0000ea60
10002acc:	100032b9 	.word	0x100032b9
10002ad0:	10001039 	.word	0x10001039
10002ad4:	10001085 	.word	0x10001085
10002ad8:	100010cd 	.word	0x100010cd

10002adc <lunch_s_init>:
10002adc:	b510      	push	{r4, lr}
10002ade:	2009      	movs	r0, #9
10002ae0:	4b19      	ldr	r3, [pc, #100]	; (10002b48 <lunch_s_init+0x6c>)
10002ae2:	4798      	blx	r3
10002ae4:	2009      	movs	r0, #9
10002ae6:	4b19      	ldr	r3, [pc, #100]	; (10002b4c <lunch_s_init+0x70>)
10002ae8:	4798      	blx	r3
10002aea:	2009      	movs	r0, #9
10002aec:	4b18      	ldr	r3, [pc, #96]	; (10002b50 <lunch_s_init+0x74>)
10002aee:	4798      	blx	r3
10002af0:	4b18      	ldr	r3, [pc, #96]	; (10002b54 <lunch_s_init+0x78>)
10002af2:	2009      	movs	r0, #9
10002af4:	4798      	blx	r3
10002af6:	4c18      	ldr	r4, [pc, #96]	; (10002b58 <lunch_s_init+0x7c>)
10002af8:	4b18      	ldr	r3, [pc, #96]	; (10002b5c <lunch_s_init+0x80>)
10002afa:	7020      	strb	r0, [r4, #0]
10002afc:	2009      	movs	r0, #9
10002afe:	4798      	blx	r3
10002b00:	4b17      	ldr	r3, [pc, #92]	; (10002b60 <lunch_s_init+0x84>)
10002b02:	2009      	movs	r0, #9
10002b04:	4798      	blx	r3
10002b06:	7823      	ldrb	r3, [r4, #0]
10002b08:	4a16      	ldr	r2, [pc, #88]	; (10002b64 <lunch_s_init+0x88>)
10002b0a:	2b00      	cmp	r3, #0
10002b0c:	d100      	bne.n	10002b10 <lunch_s_init+0x34>
10002b0e:	4a16      	ldr	r2, [pc, #88]	; (10002b68 <lunch_s_init+0x8c>)
10002b10:	4916      	ldr	r1, [pc, #88]	; (10002b6c <lunch_s_init+0x90>)
10002b12:	4b17      	ldr	r3, [pc, #92]	; (10002b70 <lunch_s_init+0x94>)
10002b14:	4817      	ldr	r0, [pc, #92]	; (10002b74 <lunch_s_init+0x98>)
10002b16:	4798      	blx	r3
10002b18:	4817      	ldr	r0, [pc, #92]	; (10002b78 <lunch_s_init+0x9c>)
10002b1a:	4b18      	ldr	r3, [pc, #96]	; (10002b7c <lunch_s_init+0xa0>)
10002b1c:	4798      	blx	r3
10002b1e:	4b18      	ldr	r3, [pc, #96]	; (10002b80 <lunch_s_init+0xa4>)
10002b20:	4798      	blx	r3
10002b22:	4c18      	ldr	r4, [pc, #96]	; (10002b84 <lunch_s_init+0xa8>)
10002b24:	0001      	movs	r1, r0
10002b26:	4818      	ldr	r0, [pc, #96]	; (10002b88 <lunch_s_init+0xac>)
10002b28:	47a0      	blx	r4
10002b2a:	4b18      	ldr	r3, [pc, #96]	; (10002b8c <lunch_s_init+0xb0>)
10002b2c:	4798      	blx	r3
10002b2e:	0001      	movs	r1, r0
10002b30:	4817      	ldr	r0, [pc, #92]	; (10002b90 <lunch_s_init+0xb4>)
10002b32:	47a0      	blx	r4
10002b34:	4b17      	ldr	r3, [pc, #92]	; (10002b94 <lunch_s_init+0xb8>)
10002b36:	4798      	blx	r3
10002b38:	2100      	movs	r1, #0
10002b3a:	4b17      	ldr	r3, [pc, #92]	; (10002b98 <lunch_s_init+0xbc>)
10002b3c:	4817      	ldr	r0, [pc, #92]	; (10002b9c <lunch_s_init+0xc0>)
10002b3e:	4798      	blx	r3
10002b40:	4b17      	ldr	r3, [pc, #92]	; (10002ba0 <lunch_s_init+0xc4>)
10002b42:	7018      	strb	r0, [r3, #0]
10002b44:	bd10      	pop	{r4, pc}
10002b46:	46c0      	nop			; (mov r8, r8)
10002b48:	1000345d 	.word	0x1000345d
10002b4c:	10003549 	.word	0x10003549
10002b50:	100035d5 	.word	0x100035d5
10002b54:	100036ad 	.word	0x100036ad
10002b58:	20014d78 	.word	0x20014d78
10002b5c:	1000361d 	.word	0x1000361d
10002b60:	10003591 	.word	0x10003591
10002b64:	10009c5e 	.word	0x10009c5e
10002b68:	10009c65 	.word	0x10009c65
10002b6c:	10009dad 	.word	0x10009dad
10002b70:	000066b1 	.word	0x000066b1
10002b74:	10009c6d 	.word	0x10009c6d
10002b78:	100010ad 	.word	0x100010ad
10002b7c:	10000bc9 	.word	0x10000bc9
10002b80:	1000137d 	.word	0x1000137d
10002b84:	100058fd 	.word	0x100058fd
10002b88:	10009cbb 	.word	0x10009cbb
10002b8c:	10004a59 	.word	0x10004a59
10002b90:	10009cc2 	.word	0x10009cc2
10002b94:	10000fe5 	.word	0x10000fe5
10002b98:	100031f1 	.word	0x100031f1
10002b9c:	10002bfd 	.word	0x10002bfd
10002ba0:	20014d79 	.word	0x20014d79

10002ba4 <lunch_asm_move>:
10002ba4:	b510      	push	{r4, lr}
10002ba6:	0004      	movs	r4, r0
10002ba8:	0002      	movs	r2, r0
10002baa:	4904      	ldr	r1, [pc, #16]	; (10002bbc <lunch_asm_move+0x18>)
10002bac:	4b04      	ldr	r3, [pc, #16]	; (10002bc0 <lunch_asm_move+0x1c>)
10002bae:	4805      	ldr	r0, [pc, #20]	; (10002bc4 <lunch_asm_move+0x20>)
10002bb0:	4798      	blx	r3
10002bb2:	0021      	movs	r1, r4
10002bb4:	2000      	movs	r0, #0
10002bb6:	4b04      	ldr	r3, [pc, #16]	; (10002bc8 <lunch_asm_move+0x24>)
10002bb8:	4798      	blx	r3
10002bba:	bd10      	pop	{r4, pc}
10002bbc:	10009dad 	.word	0x10009dad
10002bc0:	000066b1 	.word	0x000066b1
10002bc4:	10009cc8 	.word	0x10009cc8
10002bc8:	100052f9 	.word	0x100052f9

10002bcc <user_appm_init>:
10002bcc:	b510      	push	{r4, lr}
10002bce:	221b      	movs	r2, #27
10002bd0:	2000      	movs	r0, #0
10002bd2:	4906      	ldr	r1, [pc, #24]	; (10002bec <user_appm_init+0x20>)
10002bd4:	4b06      	ldr	r3, [pc, #24]	; (10002bf0 <user_appm_init+0x24>)
10002bd6:	4798      	blx	r3
10002bd8:	2200      	movs	r2, #0
10002bda:	4b06      	ldr	r3, [pc, #24]	; (10002bf4 <user_appm_init+0x28>)
10002bdc:	0010      	movs	r0, r2
10002bde:	0011      	movs	r1, r2
10002be0:	4798      	blx	r3
10002be2:	2000      	movs	r0, #0
10002be4:	4b04      	ldr	r3, [pc, #16]	; (10002bf8 <user_appm_init+0x2c>)
10002be6:	4798      	blx	r3
10002be8:	2000      	movs	r0, #0
10002bea:	bd10      	pop	{r4, pc}
10002bec:	10009dbc 	.word	0x10009dbc
10002bf0:	1000524d 	.word	0x1000524d
10002bf4:	10005281 	.word	0x10005281
10002bf8:	10002ba5 	.word	0x10002ba5

10002bfc <lunch_idle_timer_msg_ind>:
10002bfc:	b570      	push	{r4, r5, r6, lr}
10002bfe:	4d0d      	ldr	r5, [pc, #52]	; (10002c34 <lunch_idle_timer_msg_ind+0x38>)
10002c00:	480d      	ldr	r0, [pc, #52]	; (10002c38 <lunch_idle_timer_msg_ind+0x3c>)
10002c02:	0029      	movs	r1, r5
10002c04:	4c0d      	ldr	r4, [pc, #52]	; (10002c3c <lunch_idle_timer_msg_ind+0x40>)
10002c06:	47a0      	blx	r4
10002c08:	4e0d      	ldr	r6, [pc, #52]	; (10002c40 <lunch_idle_timer_msg_ind+0x44>)
10002c0a:	47b0      	blx	r6
10002c0c:	2803      	cmp	r0, #3
10002c0e:	d103      	bne.n	10002c18 <lunch_idle_timer_msg_ind+0x1c>
10002c10:	0029      	movs	r1, r5
10002c12:	480c      	ldr	r0, [pc, #48]	; (10002c44 <lunch_idle_timer_msg_ind+0x48>)
10002c14:	47a0      	blx	r4
10002c16:	bd70      	pop	{r4, r5, r6, pc}
10002c18:	47b0      	blx	r6
10002c1a:	2802      	cmp	r0, #2
10002c1c:	d106      	bne.n	10002c2c <lunch_idle_timer_msg_ind+0x30>
10002c1e:	0029      	movs	r1, r5
10002c20:	4809      	ldr	r0, [pc, #36]	; (10002c48 <lunch_idle_timer_msg_ind+0x4c>)
10002c22:	47a0      	blx	r4
10002c24:	200d      	movs	r0, #13
10002c26:	4b09      	ldr	r3, [pc, #36]	; (10002c4c <lunch_idle_timer_msg_ind+0x50>)
10002c28:	4798      	blx	r3
10002c2a:	e7f4      	b.n	10002c16 <lunch_idle_timer_msg_ind+0x1a>
10002c2c:	2000      	movs	r0, #0
10002c2e:	4b08      	ldr	r3, [pc, #32]	; (10002c50 <lunch_idle_timer_msg_ind+0x54>)
10002c30:	4798      	blx	r3
10002c32:	e7f0      	b.n	10002c16 <lunch_idle_timer_msg_ind+0x1a>
10002c34:	10009dad 	.word	0x10009dad
10002c38:	10009cec 	.word	0x10009cec
10002c3c:	000066b1 	.word	0x000066b1
10002c40:	10001445 	.word	0x10001445
10002c44:	10009d0e 	.word	0x10009d0e
10002c48:	10009d4f 	.word	0x10009d4f
10002c4c:	10002ba5 	.word	0x10002ba5
10002c50:	100012b5 	.word	0x100012b5

10002c54 <main>:
10002c54:	b510      	push	{r4, lr}
10002c56:	4905      	ldr	r1, [pc, #20]	; (10002c6c <main+0x18>)
10002c58:	4805      	ldr	r0, [pc, #20]	; (10002c70 <main+0x1c>)
10002c5a:	4b06      	ldr	r3, [pc, #24]	; (10002c74 <main+0x20>)
10002c5c:	4798      	blx	r3
10002c5e:	4906      	ldr	r1, [pc, #24]	; (10002c78 <main+0x24>)
10002c60:	4806      	ldr	r0, [pc, #24]	; (10002c7c <main+0x28>)
10002c62:	4b07      	ldr	r3, [pc, #28]	; (10002c80 <main+0x2c>)
10002c64:	4798      	blx	r3
10002c66:	2000      	movs	r0, #0
10002c68:	bd10      	pop	{r4, pc}
10002c6a:	46c0      	nop			; (mov r8, r8)
10002c6c:	20014060 	.word	0x20014060
10002c70:	20001290 	.word	0x20001290
10002c74:	0000671d 	.word	0x0000671d
10002c78:	10009dad 	.word	0x10009dad
10002c7c:	10009d85 	.word	0x10009d85
10002c80:	000066b1 	.word	0x000066b1

10002c84 <user_debug_constructor>:
10002c84:	b510      	push	{r4, lr}
10002c86:	4b03      	ldr	r3, [pc, #12]	; (10002c94 <user_debug_constructor+0x10>)
10002c88:	4a03      	ldr	r2, [pc, #12]	; (10002c98 <user_debug_constructor+0x14>)
10002c8a:	601a      	str	r2, [r3, #0]
10002c8c:	4b03      	ldr	r3, [pc, #12]	; (10002c9c <user_debug_constructor+0x18>)
10002c8e:	4798      	blx	r3
10002c90:	bd10      	pop	{r4, pc}
10002c92:	46c0      	nop			; (mov r8, r8)
10002c94:	20000004 	.word	0x20000004
10002c98:	10002ca5 	.word	0x10002ca5
10002c9c:	00005785 	.word	0x00005785

10002ca0 <loop_forever>:
10002ca0:	bf30      	wfi
10002ca2:	e7fd      	b.n	10002ca0 <loop_forever>

10002ca4 <HardFault_Handler>:
10002ca4:	4b05      	ldr	r3, [pc, #20]	; (10002cbc <MSP_stacking+0x8>)
10002ca6:	2004      	movs	r0, #4
10002ca8:	4671      	mov	r1, lr
10002caa:	4208      	tst	r0, r1
10002cac:	d002      	beq.n	10002cb4 <MSP_stacking>
10002cae:	f3ef 8009 	mrs	r0, PSP
10002cb2:	4718      	bx	r3

10002cb4 <MSP_stacking>:
10002cb4:	f3ef 8008 	mrs	r0, MSP
10002cb8:	4718      	bx	r3
10002cba:	46c0      	nop			; (mov r8, r8)
10002cbc:	10002cc1 	.word	0x10002cc1

10002cc0 <HardFault_Handler_c>:
10002cc0:	b537      	push	{r0, r1, r2, r4, r5, lr}
10002cc2:	0004      	movs	r4, r0
10002cc4:	4b11      	ldr	r3, [pc, #68]	; (10002d0c <HardFault_Handler_c+0x4c>)
10002cc6:	4812      	ldr	r0, [pc, #72]	; (10002d10 <HardFault_Handler_c+0x50>)
10002cc8:	4798      	blx	r3
10002cca:	68e3      	ldr	r3, [r4, #12]
10002ccc:	4d11      	ldr	r5, [pc, #68]	; (10002d14 <HardFault_Handler_c+0x54>)
10002cce:	6862      	ldr	r2, [r4, #4]
10002cd0:	6821      	ldr	r1, [r4, #0]
10002cd2:	9300      	str	r3, [sp, #0]
10002cd4:	4810      	ldr	r0, [pc, #64]	; (10002d18 <HardFault_Handler_c+0x58>)
10002cd6:	68a3      	ldr	r3, [r4, #8]
10002cd8:	47a8      	blx	r5
10002cda:	69e3      	ldr	r3, [r4, #28]
10002cdc:	6962      	ldr	r2, [r4, #20]
10002cde:	9300      	str	r3, [sp, #0]
10002ce0:	6921      	ldr	r1, [r4, #16]
10002ce2:	69a3      	ldr	r3, [r4, #24]
10002ce4:	480d      	ldr	r0, [pc, #52]	; (10002d1c <HardFault_Handler_c+0x5c>)
10002ce6:	47a8      	blx	r5
10002ce8:	4d0d      	ldr	r5, [pc, #52]	; (10002d20 <HardFault_Handler_c+0x60>)
10002cea:	2d00      	cmp	r5, #0
10002cec:	d009      	beq.n	10002d02 <HardFault_Handler_c+0x42>
10002cee:	0022      	movs	r2, r4
10002cf0:	69e3      	ldr	r3, [r4, #28]
10002cf2:	3220      	adds	r2, #32
10002cf4:	059b      	lsls	r3, r3, #22
10002cf6:	d500      	bpl.n	10002cfa <HardFault_Handler_c+0x3a>
10002cf8:	3204      	adds	r2, #4
10002cfa:	2300      	movs	r3, #0
10002cfc:	6961      	ldr	r1, [r4, #20]
10002cfe:	69a0      	ldr	r0, [r4, #24]
10002d00:	47a8      	blx	r5
10002d02:	4b08      	ldr	r3, [pc, #32]	; (10002d24 <HardFault_Handler_c+0x64>)
10002d04:	681b      	ldr	r3, [r3, #0]
10002d06:	4798      	blx	r3
10002d08:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
10002d0a:	46c0      	nop			; (mov r8, r8)
10002d0c:	0002fdb1 	.word	0x0002fdb1
10002d10:	10009e94 	.word	0x10009e94
10002d14:	0002fccd 	.word	0x0002fccd
10002d18:	10009ea0 	.word	0x10009ea0
10002d1c:	10009ecf 	.word	0x10009ecf
10002d20:	100045cd 	.word	0x100045cd
10002d24:	20014068 	.word	0x20014068

10002d28 <install_HFH>:
10002d28:	4b01      	ldr	r3, [pc, #4]	; (10002d30 <install_HFH+0x8>)
10002d2a:	4a02      	ldr	r2, [pc, #8]	; (10002d34 <install_HFH+0xc>)
10002d2c:	601a      	str	r2, [r3, #0]
10002d2e:	4770      	bx	lr
10002d30:	20000004 	.word	0x20000004
10002d34:	10002ca5 	.word	0x10002ca5

10002d38 <ROM_errata_10_appm_init>:
10002d38:	b573      	push	{r0, r1, r4, r5, r6, lr}
10002d3a:	4c0f      	ldr	r4, [pc, #60]	; (10002d78 <ROM_errata_10_appm_init+0x40>)
10002d3c:	8963      	ldrh	r3, [r4, #10]
10002d3e:	2b1c      	cmp	r3, #28
10002d40:	d004      	beq.n	10002d4c <ROM_errata_10_appm_init+0x14>
10002d42:	2232      	movs	r2, #50	; 0x32
10002d44:	490d      	ldr	r1, [pc, #52]	; (10002d7c <ROM_errata_10_appm_init+0x44>)
10002d46:	480e      	ldr	r0, [pc, #56]	; (10002d80 <ROM_errata_10_appm_init+0x48>)
10002d48:	4b0e      	ldr	r3, [pc, #56]	; (10002d84 <ROM_errata_10_appm_init+0x4c>)
10002d4a:	4798      	blx	r3
10002d4c:	4e0e      	ldr	r6, [pc, #56]	; (10002d88 <ROM_errata_10_appm_init+0x50>)
10002d4e:	4d0f      	ldr	r5, [pc, #60]	; (10002d8c <ROM_errata_10_appm_init+0x54>)
10002d50:	6833      	ldr	r3, [r6, #0]
10002d52:	0028      	movs	r0, r5
10002d54:	6819      	ldr	r1, [r3, #0]
10002d56:	22e0      	movs	r2, #224	; 0xe0
10002d58:	4b0d      	ldr	r3, [pc, #52]	; (10002d90 <ROM_errata_10_appm_init+0x58>)
10002d5a:	4798      	blx	r3
10002d5c:	4b0d      	ldr	r3, [pc, #52]	; (10002d94 <ROM_errata_10_appm_init+0x5c>)
10002d5e:	6862      	ldr	r2, [r4, #4]
10002d60:	66eb      	str	r3, [r5, #108]	; 0x6c
10002d62:	4b0d      	ldr	r3, [pc, #52]	; (10002d98 <ROM_errata_10_appm_init+0x60>)
10002d64:	9201      	str	r2, [sp, #4]
10002d66:	605a      	str	r2, [r3, #4]
10002d68:	8922      	ldrh	r2, [r4, #8]
10002d6a:	601d      	str	r5, [r3, #0]
10002d6c:	811a      	strh	r2, [r3, #8]
10002d6e:	221c      	movs	r2, #28
10002d70:	2001      	movs	r0, #1
10002d72:	815a      	strh	r2, [r3, #10]
10002d74:	6033      	str	r3, [r6, #0]
10002d76:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10002d78:	0003d13c 	.word	0x0003d13c
10002d7c:	10009efe 	.word	0x10009efe
10002d80:	10009f0e 	.word	0x10009f0e
10002d84:	00006609 	.word	0x00006609
10002d88:	20000ae4 	.word	0x20000ae4
10002d8c:	20014d88 	.word	0x20014d88
10002d90:	00005821 	.word	0x00005821
10002d94:	2001406d 	.word	0x2001406d
10002d98:	20014d7c 	.word	0x20014d7c

10002d9c <ROM_errata_10_constructor>:
10002d9c:	b510      	push	{r4, lr}
10002d9e:	4902      	ldr	r1, [pc, #8]	; (10002da8 <ROM_errata_10_constructor+0xc>)
10002da0:	4802      	ldr	r0, [pc, #8]	; (10002dac <ROM_errata_10_constructor+0x10>)
10002da2:	4b03      	ldr	r3, [pc, #12]	; (10002db0 <ROM_errata_10_constructor+0x14>)
10002da4:	4798      	blx	r3
10002da6:	bd10      	pop	{r4, pc}
10002da8:	200140a0 	.word	0x200140a0
10002dac:	20001290 	.word	0x20001290
10002db0:	0000671d 	.word	0x0000671d

10002db4 <lld_dynamic_rf_mode_control>:
10002db4:	b570      	push	{r4, r5, r6, lr}
10002db6:	4b0c      	ldr	r3, [pc, #48]	; (10002de8 <lld_dynamic_rf_mode_control+0x34>)
10002db8:	0004      	movs	r4, r0
10002dba:	4798      	blx	r3
10002dbc:	4b0b      	ldr	r3, [pc, #44]	; (10002dec <lld_dynamic_rf_mode_control+0x38>)
10002dbe:	781d      	ldrb	r5, [r3, #0]
10002dc0:	2c00      	cmp	r4, #0
10002dc2:	d007      	beq.n	10002dd4 <lld_dynamic_rf_mode_control+0x20>
10002dc4:	2201      	movs	r2, #1
10002dc6:	701a      	strb	r2, [r3, #0]
10002dc8:	002a      	movs	r2, r5
10002dca:	0021      	movs	r1, r4
10002dcc:	4b08      	ldr	r3, [pc, #32]	; (10002df0 <lld_dynamic_rf_mode_control+0x3c>)
10002dce:	4809      	ldr	r0, [pc, #36]	; (10002df4 <lld_dynamic_rf_mode_control+0x40>)
10002dd0:	4798      	blx	r3
10002dd2:	bd70      	pop	{r4, r5, r6, pc}
10002dd4:	701c      	strb	r4, [r3, #0]
10002dd6:	4b08      	ldr	r3, [pc, #32]	; (10002df8 <lld_dynamic_rf_mode_control+0x44>)
10002dd8:	2203      	movs	r2, #3
10002dda:	601c      	str	r4, [r3, #0]
10002ddc:	0021      	movs	r1, r4
10002dde:	4b07      	ldr	r3, [pc, #28]	; (10002dfc <lld_dynamic_rf_mode_control+0x48>)
10002de0:	4807      	ldr	r0, [pc, #28]	; (10002e00 <lld_dynamic_rf_mode_control+0x4c>)
10002de2:	4798      	blx	r3
10002de4:	e7f0      	b.n	10002dc8 <lld_dynamic_rf_mode_control+0x14>
10002de6:	46c0      	nop			; (mov r8, r8)
10002de8:	20014445 	.word	0x20014445
10002dec:	20014e6b 	.word	0x20014e6b
10002df0:	000066b1 	.word	0x000066b1
10002df4:	10009f4a 	.word	0x10009f4a
10002df8:	20014e70 	.word	0x20014e70
10002dfc:	00005859 	.word	0x00005859
10002e00:	20014e68 	.word	0x20014e68

10002e04 <enable_ROM_errata_14>:
10002e04:	b510      	push	{r4, lr}
10002e06:	4804      	ldr	r0, [pc, #16]	; (10002e18 <enable_ROM_errata_14+0x14>)
10002e08:	4b04      	ldr	r3, [pc, #16]	; (10002e1c <enable_ROM_errata_14+0x18>)
10002e0a:	4798      	blx	r3
10002e0c:	4904      	ldr	r1, [pc, #16]	; (10002e20 <enable_ROM_errata_14+0x1c>)
10002e0e:	4805      	ldr	r0, [pc, #20]	; (10002e24 <enable_ROM_errata_14+0x20>)
10002e10:	4b05      	ldr	r3, [pc, #20]	; (10002e28 <enable_ROM_errata_14+0x24>)
10002e12:	4798      	blx	r3
10002e14:	bd10      	pop	{r4, pc}
10002e16:	46c0      	nop			; (mov r8, r8)
10002e18:	10002db5 	.word	0x10002db5
10002e1c:	10003995 	.word	0x10003995
10002e20:	200141ec 	.word	0x200141ec
10002e24:	20001294 	.word	0x20001294
10002e28:	00006981 	.word	0x00006981

10002e2c <ROM_errata_16_appm_init>:
10002e2c:	b573      	push	{r0, r1, r4, r5, r6, lr}
10002e2e:	4c0f      	ldr	r4, [pc, #60]	; (10002e6c <ROM_errata_16_appm_init+0x40>)
10002e30:	8963      	ldrh	r3, [r4, #10]
10002e32:	2b12      	cmp	r3, #18
10002e34:	d004      	beq.n	10002e40 <ROM_errata_16_appm_init+0x14>
10002e36:	223c      	movs	r2, #60	; 0x3c
10002e38:	490d      	ldr	r1, [pc, #52]	; (10002e70 <ROM_errata_16_appm_init+0x44>)
10002e3a:	480e      	ldr	r0, [pc, #56]	; (10002e74 <ROM_errata_16_appm_init+0x48>)
10002e3c:	4b0e      	ldr	r3, [pc, #56]	; (10002e78 <ROM_errata_16_appm_init+0x4c>)
10002e3e:	4798      	blx	r3
10002e40:	4e0e      	ldr	r6, [pc, #56]	; (10002e7c <ROM_errata_16_appm_init+0x50>)
10002e42:	4d0f      	ldr	r5, [pc, #60]	; (10002e80 <ROM_errata_16_appm_init+0x54>)
10002e44:	6833      	ldr	r3, [r6, #0]
10002e46:	0028      	movs	r0, r5
10002e48:	6819      	ldr	r1, [r3, #0]
10002e4a:	2290      	movs	r2, #144	; 0x90
10002e4c:	4b0d      	ldr	r3, [pc, #52]	; (10002e84 <ROM_errata_16_appm_init+0x58>)
10002e4e:	4798      	blx	r3
10002e50:	4b0d      	ldr	r3, [pc, #52]	; (10002e88 <ROM_errata_16_appm_init+0x5c>)
10002e52:	6862      	ldr	r2, [r4, #4]
10002e54:	66eb      	str	r3, [r5, #108]	; 0x6c
10002e56:	4b0d      	ldr	r3, [pc, #52]	; (10002e8c <ROM_errata_16_appm_init+0x60>)
10002e58:	9201      	str	r2, [sp, #4]
10002e5a:	605a      	str	r2, [r3, #4]
10002e5c:	8922      	ldrh	r2, [r4, #8]
10002e5e:	601d      	str	r5, [r3, #0]
10002e60:	811a      	strh	r2, [r3, #8]
10002e62:	2212      	movs	r2, #18
10002e64:	2001      	movs	r0, #1
10002e66:	815a      	strh	r2, [r3, #10]
10002e68:	6033      	str	r3, [r6, #0]
10002e6a:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10002e6c:	0003cd88 	.word	0x0003cd88
10002e70:	10009f66 	.word	0x10009f66
10002e74:	10009f76 	.word	0x10009f76
10002e78:	00006609 	.word	0x00006609
10002e7c:	20000ae0 	.word	0x20000ae0
10002e80:	20014e80 	.word	0x20014e80
10002e84:	00005821 	.word	0x00005821
10002e88:	200141f5 	.word	0x200141f5
10002e8c:	20014e74 	.word	0x20014e74

10002e90 <ROM_errata_16_constructor>:
10002e90:	b510      	push	{r4, lr}
10002e92:	4902      	ldr	r1, [pc, #8]	; (10002e9c <ROM_errata_16_constructor+0xc>)
10002e94:	4802      	ldr	r0, [pc, #8]	; (10002ea0 <ROM_errata_16_constructor+0x10>)
10002e96:	4b03      	ldr	r3, [pc, #12]	; (10002ea4 <ROM_errata_16_constructor+0x14>)
10002e98:	4798      	blx	r3
10002e9a:	bd10      	pop	{r4, pc}
10002e9c:	20014224 	.word	0x20014224
10002ea0:	20001290 	.word	0x20001290
10002ea4:	0000671d 	.word	0x0000671d

10002ea8 <atm_ble_set_txpwr_max>:
10002ea8:	b510      	push	{r4, lr}
10002eaa:	4b01      	ldr	r3, [pc, #4]	; (10002eb0 <atm_ble_set_txpwr_max+0x8>)
10002eac:	4798      	blx	r3
10002eae:	bd10      	pop	{r4, pc}
10002eb0:	10003d1d 	.word	0x10003d1d

10002eb4 <atm_ble_set_con_txpwr>:
10002eb4:	b510      	push	{r4, lr}
10002eb6:	4b05      	ldr	r3, [pc, #20]	; (10002ecc <atm_ble_set_con_txpwr+0x18>)
10002eb8:	000c      	movs	r4, r1
10002eba:	4798      	blx	r3
10002ebc:	4b04      	ldr	r3, [pc, #16]	; (10002ed0 <atm_ble_set_con_txpwr+0x1c>)
10002ebe:	4298      	cmp	r0, r3
10002ec0:	d003      	beq.n	10002eca <atm_ble_set_con_txpwr+0x16>
10002ec2:	0021      	movs	r1, r4
10002ec4:	4b03      	ldr	r3, [pc, #12]	; (10002ed4 <atm_ble_set_con_txpwr+0x20>)
10002ec6:	b2c0      	uxtb	r0, r0
10002ec8:	4798      	blx	r3
10002eca:	bd10      	pop	{r4, pc}
10002ecc:	000226c9 	.word	0x000226c9
10002ed0:	0000ffff 	.word	0x0000ffff
10002ed4:	10003d31 	.word	0x10003d31

10002ed8 <atm_pm_init_constructor>:
10002ed8:	b510      	push	{r4, lr}
10002eda:	4904      	ldr	r1, [pc, #16]	; (10002eec <atm_pm_init_constructor+0x14>)
10002edc:	4c04      	ldr	r4, [pc, #16]	; (10002ef0 <atm_pm_init_constructor+0x18>)
10002ede:	4805      	ldr	r0, [pc, #20]	; (10002ef4 <atm_pm_init_constructor+0x1c>)
10002ee0:	47a0      	blx	r4
10002ee2:	4905      	ldr	r1, [pc, #20]	; (10002ef8 <atm_pm_init_constructor+0x20>)
10002ee4:	4805      	ldr	r0, [pc, #20]	; (10002efc <atm_pm_init_constructor+0x24>)
10002ee6:	47a0      	blx	r4
10002ee8:	bd10      	pop	{r4, pc}
10002eea:	46c0      	nop			; (mov r8, r8)
10002eec:	20014280 	.word	0x20014280
10002ef0:	00006805 	.word	0x00006805
10002ef4:	20001260 	.word	0x20001260
10002ef8:	20014288 	.word	0x20014288
10002efc:	20001284 	.word	0x20001284

10002f00 <interrupt_install>:
10002f00:	b570      	push	{r4, r5, r6, lr}
10002f02:	b2c4      	uxtb	r4, r0
10002f04:	2c0f      	cmp	r4, #15
10002f06:	d803      	bhi.n	10002f10 <interrupt_install+0x10>
10002f08:	4e1c      	ldr	r6, [pc, #112]	; (10002f7c <interrupt_install+0x7c>)
10002f0a:	0085      	lsls	r5, r0, #2
10002f0c:	19ad      	adds	r5, r5, r6
10002f0e:	6029      	str	r1, [r5, #0]
10002f10:	251f      	movs	r5, #31
10002f12:	2101      	movs	r1, #1
10002f14:	4025      	ands	r5, r4
10002f16:	40a9      	lsls	r1, r5
10002f18:	25c0      	movs	r5, #192	; 0xc0
10002f1a:	4e19      	ldr	r6, [pc, #100]	; (10002f80 <interrupt_install+0x80>)
10002f1c:	006d      	lsls	r5, r5, #1
10002f1e:	5171      	str	r1, [r6, r5]
10002f20:	0021      	movs	r1, r4
10002f22:	310e      	adds	r1, #14
10002f24:	b2c9      	uxtb	r1, r1
10002f26:	292d      	cmp	r1, #45	; 0x2d
10002f28:	d805      	bhi.n	10002f36 <interrupt_install+0x36>
10002f2a:	4d16      	ldr	r5, [pc, #88]	; (10002f84 <interrupt_install+0x84>)
10002f2c:	0089      	lsls	r1, r1, #2
10002f2e:	5949      	ldr	r1, [r1, r5]
10002f30:	2900      	cmp	r1, #0
10002f32:	d000      	beq.n	10002f36 <interrupt_install+0x36>
10002f34:	600b      	str	r3, [r1, #0]
10002f36:	25ff      	movs	r5, #255	; 0xff
10002f38:	2103      	movs	r1, #3
10002f3a:	002b      	movs	r3, r5
10002f3c:	4021      	ands	r1, r4
10002f3e:	00c9      	lsls	r1, r1, #3
10002f40:	408b      	lsls	r3, r1
10002f42:	0192      	lsls	r2, r2, #6
10002f44:	402a      	ands	r2, r5
10002f46:	43db      	mvns	r3, r3
10002f48:	408a      	lsls	r2, r1
10002f4a:	2800      	cmp	r0, #0
10002f4c:	da0b      	bge.n	10002f66 <interrupt_install+0x66>
10002f4e:	210f      	movs	r1, #15
10002f50:	400c      	ands	r4, r1
10002f52:	3c08      	subs	r4, #8
10002f54:	490c      	ldr	r1, [pc, #48]	; (10002f88 <interrupt_install+0x88>)
10002f56:	08a4      	lsrs	r4, r4, #2
10002f58:	00a4      	lsls	r4, r4, #2
10002f5a:	1864      	adds	r4, r4, r1
10002f5c:	69e1      	ldr	r1, [r4, #28]
10002f5e:	400b      	ands	r3, r1
10002f60:	431a      	orrs	r2, r3
10002f62:	61e2      	str	r2, [r4, #28]
10002f64:	bd70      	pop	{r4, r5, r6, pc}
10002f66:	4906      	ldr	r1, [pc, #24]	; (10002f80 <interrupt_install+0x80>)
10002f68:	0880      	lsrs	r0, r0, #2
10002f6a:	0080      	lsls	r0, r0, #2
10002f6c:	1840      	adds	r0, r0, r1
10002f6e:	21c0      	movs	r1, #192	; 0xc0
10002f70:	0089      	lsls	r1, r1, #2
10002f72:	5844      	ldr	r4, [r0, r1]
10002f74:	4023      	ands	r3, r4
10002f76:	431a      	orrs	r2, r3
10002f78:	5042      	str	r2, [r0, r1]
10002f7a:	e7f3      	b.n	10002f64 <interrupt_install+0x64>
10002f7c:	4000307c 	.word	0x4000307c
10002f80:	e000e100 	.word	0xe000e100
10002f84:	1000a004 	.word	0x1000a004
10002f88:	e000ed00 	.word	0xe000ed00

10002f8c <interrupt_install_group_gpio>:
10002f8c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10002f8e:	000d      	movs	r5, r1
10002f90:	4946      	ldr	r1, [pc, #280]	; (100030ac <interrupt_install_group_gpio+0x120>)
10002f92:	0004      	movs	r4, r0
10002f94:	9201      	str	r2, [sp, #4]
10002f96:	4208      	tst	r0, r1
10002f98:	d10b      	bne.n	10002fb2 <interrupt_install_group_gpio+0x26>
10002f9a:	4e45      	ldr	r6, [pc, #276]	; (100030b0 <interrupt_install_group_gpio+0x124>)
10002f9c:	23f1      	movs	r3, #241	; 0xf1
10002f9e:	0032      	movs	r2, r6
10002fa0:	4f44      	ldr	r7, [pc, #272]	; (100030b4 <interrupt_install_group_gpio+0x128>)
10002fa2:	47b8      	blx	r7
10002fa4:	2c00      	cmp	r4, #0
10002fa6:	d104      	bne.n	10002fb2 <interrupt_install_group_gpio+0x26>
10002fa8:	22f3      	movs	r2, #243	; 0xf3
10002faa:	0031      	movs	r1, r6
10002fac:	4842      	ldr	r0, [pc, #264]	; (100030b8 <interrupt_install_group_gpio+0x12c>)
10002fae:	4b43      	ldr	r3, [pc, #268]	; (100030bc <interrupt_install_group_gpio+0x130>)
10002fb0:	4798      	blx	r3
10002fb2:	4f43      	ldr	r7, [pc, #268]	; (100030c0 <interrupt_install_group_gpio+0x134>)
10002fb4:	6838      	ldr	r0, [r7, #0]
10002fb6:	4204      	tst	r4, r0
10002fb8:	d004      	beq.n	10002fc4 <interrupt_install_group_gpio+0x38>
10002fba:	23f5      	movs	r3, #245	; 0xf5
10002fbc:	0021      	movs	r1, r4
10002fbe:	4a3c      	ldr	r2, [pc, #240]	; (100030b0 <interrupt_install_group_gpio+0x124>)
10002fc0:	4e3c      	ldr	r6, [pc, #240]	; (100030b4 <interrupt_install_group_gpio+0x128>)
10002fc2:	47b0      	blx	r6
10002fc4:	4a3f      	ldr	r2, [pc, #252]	; (100030c4 <interrupt_install_group_gpio+0x138>)
10002fc6:	6a93      	ldr	r3, [r2, #40]	; 0x28
10002fc8:	4023      	ands	r3, r4
10002fca:	b29b      	uxth	r3, r3
10002fcc:	2b00      	cmp	r3, #0
10002fce:	d005      	beq.n	10002fdc <interrupt_install_group_gpio+0x50>
10002fd0:	6a90      	ldr	r0, [r2, #40]	; 0x28
10002fd2:	23f8      	movs	r3, #248	; 0xf8
10002fd4:	0021      	movs	r1, r4
10002fd6:	4a36      	ldr	r2, [pc, #216]	; (100030b0 <interrupt_install_group_gpio+0x124>)
10002fd8:	4e36      	ldr	r6, [pc, #216]	; (100030b4 <interrupt_install_group_gpio+0x128>)
10002fda:	47b0      	blx	r6
10002fdc:	4b3a      	ldr	r3, [pc, #232]	; (100030c8 <interrupt_install_group_gpio+0x13c>)
10002fde:	0c21      	lsrs	r1, r4, #16
10002fe0:	6a9a      	ldr	r2, [r3, #40]	; 0x28
10002fe2:	9100      	str	r1, [sp, #0]
10002fe4:	4211      	tst	r1, r2
10002fe6:	d005      	beq.n	10002ff4 <interrupt_install_group_gpio+0x68>
10002fe8:	6a98      	ldr	r0, [r3, #40]	; 0x28
10002fea:	0021      	movs	r1, r4
10002fec:	23fa      	movs	r3, #250	; 0xfa
10002fee:	4a30      	ldr	r2, [pc, #192]	; (100030b0 <interrupt_install_group_gpio+0x124>)
10002ff0:	4e30      	ldr	r6, [pc, #192]	; (100030b4 <interrupt_install_group_gpio+0x128>)
10002ff2:	47b0      	blx	r6
10002ff4:	b2a6      	uxth	r6, r4
10002ff6:	2e00      	cmp	r6, #0
10002ff8:	d005      	beq.n	10003006 <interrupt_install_group_gpio+0x7a>
10002ffa:	683b      	ldr	r3, [r7, #0]
10002ffc:	4a33      	ldr	r2, [pc, #204]	; (100030cc <interrupt_install_group_gpio+0x140>)
10002ffe:	b29b      	uxth	r3, r3
10003000:	2b00      	cmp	r3, #0
10003002:	d11b      	bne.n	1000303c <interrupt_install_group_gpio+0xb0>
10003004:	6015      	str	r5, [r2, #0]
10003006:	0c23      	lsrs	r3, r4, #16
10003008:	d005      	beq.n	10003016 <interrupt_install_group_gpio+0x8a>
1000300a:	4b2d      	ldr	r3, [pc, #180]	; (100030c0 <interrupt_install_group_gpio+0x134>)
1000300c:	4a30      	ldr	r2, [pc, #192]	; (100030d0 <interrupt_install_group_gpio+0x144>)
1000300e:	681b      	ldr	r3, [r3, #0]
10003010:	0c1b      	lsrs	r3, r3, #16
10003012:	d11d      	bne.n	10003050 <interrupt_install_group_gpio+0xc4>
10003014:	6015      	str	r5, [r2, #0]
10003016:	2300      	movs	r3, #0
10003018:	492e      	ldr	r1, [pc, #184]	; (100030d4 <interrupt_install_group_gpio+0x148>)
1000301a:	009a      	lsls	r2, r3, #2
1000301c:	5850      	ldr	r0, [r2, r1]
1000301e:	2800      	cmp	r0, #0
10003020:	d020      	beq.n	10003064 <interrupt_install_group_gpio+0xd8>
10003022:	3301      	adds	r3, #1
10003024:	2b05      	cmp	r3, #5
10003026:	d1f8      	bne.n	1000301a <interrupt_install_group_gpio+0x8e>
10003028:	4b2b      	ldr	r3, [pc, #172]	; (100030d8 <interrupt_install_group_gpio+0x14c>)
1000302a:	482c      	ldr	r0, [pc, #176]	; (100030dc <interrupt_install_group_gpio+0x150>)
1000302c:	4798      	blx	r3
1000302e:	222a      	movs	r2, #42	; 0x2a
10003030:	491f      	ldr	r1, [pc, #124]	; (100030b0 <interrupt_install_group_gpio+0x124>)
10003032:	482b      	ldr	r0, [pc, #172]	; (100030e0 <interrupt_install_group_gpio+0x154>)
10003034:	4b21      	ldr	r3, [pc, #132]	; (100030bc <interrupt_install_group_gpio+0x130>)
10003036:	32ff      	adds	r2, #255	; 0xff
10003038:	4798      	blx	r3
1000303a:	e036      	b.n	100030aa <interrupt_install_group_gpio+0x11e>
1000303c:	6810      	ldr	r0, [r2, #0]
1000303e:	42a8      	cmp	r0, r5
10003040:	d0e1      	beq.n	10003006 <interrupt_install_group_gpio+0x7a>
10003042:	2304      	movs	r3, #4
10003044:	0029      	movs	r1, r5
10003046:	4a1a      	ldr	r2, [pc, #104]	; (100030b0 <interrupt_install_group_gpio+0x124>)
10003048:	4f1a      	ldr	r7, [pc, #104]	; (100030b4 <interrupt_install_group_gpio+0x128>)
1000304a:	33ff      	adds	r3, #255	; 0xff
1000304c:	47b8      	blx	r7
1000304e:	e7da      	b.n	10003006 <interrupt_install_group_gpio+0x7a>
10003050:	6810      	ldr	r0, [r2, #0]
10003052:	42a8      	cmp	r0, r5
10003054:	d0df      	beq.n	10003016 <interrupt_install_group_gpio+0x8a>
10003056:	230e      	movs	r3, #14
10003058:	0029      	movs	r1, r5
1000305a:	4a15      	ldr	r2, [pc, #84]	; (100030b0 <interrupt_install_group_gpio+0x124>)
1000305c:	4d15      	ldr	r5, [pc, #84]	; (100030b4 <interrupt_install_group_gpio+0x128>)
1000305e:	33ff      	adds	r3, #255	; 0xff
10003060:	47a8      	blx	r5
10003062:	e7d8      	b.n	10003016 <interrupt_install_group_gpio+0x8a>
10003064:	9b01      	ldr	r3, [sp, #4]
10003066:	5053      	str	r3, [r2, r1]
10003068:	4b1e      	ldr	r3, [pc, #120]	; (100030e4 <interrupt_install_group_gpio+0x158>)
1000306a:	50d4      	str	r4, [r2, r3]
1000306c:	2e00      	cmp	r6, #0
1000306e:	d00a      	beq.n	10003086 <interrupt_install_group_gpio+0xfa>
10003070:	2180      	movs	r1, #128	; 0x80
10003072:	4a16      	ldr	r2, [pc, #88]	; (100030cc <interrupt_install_group_gpio+0x140>)
10003074:	4b1c      	ldr	r3, [pc, #112]	; (100030e8 <interrupt_install_group_gpio+0x15c>)
10003076:	6812      	ldr	r2, [r2, #0]
10003078:	2006      	movs	r0, #6
1000307a:	4d1c      	ldr	r5, [pc, #112]	; (100030ec <interrupt_install_group_gpio+0x160>)
1000307c:	0449      	lsls	r1, r1, #17
1000307e:	47a8      	blx	r5
10003080:	2240      	movs	r2, #64	; 0x40
10003082:	4b1b      	ldr	r3, [pc, #108]	; (100030f0 <interrupt_install_group_gpio+0x164>)
10003084:	601a      	str	r2, [r3, #0]
10003086:	9b00      	ldr	r3, [sp, #0]
10003088:	2b00      	cmp	r3, #0
1000308a:	d00a      	beq.n	100030a2 <interrupt_install_group_gpio+0x116>
1000308c:	2180      	movs	r1, #128	; 0x80
1000308e:	4a10      	ldr	r2, [pc, #64]	; (100030d0 <interrupt_install_group_gpio+0x144>)
10003090:	4b18      	ldr	r3, [pc, #96]	; (100030f4 <interrupt_install_group_gpio+0x168>)
10003092:	6812      	ldr	r2, [r2, #0]
10003094:	2007      	movs	r0, #7
10003096:	4d15      	ldr	r5, [pc, #84]	; (100030ec <interrupt_install_group_gpio+0x160>)
10003098:	0489      	lsls	r1, r1, #18
1000309a:	47a8      	blx	r5
1000309c:	2280      	movs	r2, #128	; 0x80
1000309e:	4b14      	ldr	r3, [pc, #80]	; (100030f0 <interrupt_install_group_gpio+0x164>)
100030a0:	601a      	str	r2, [r3, #0]
100030a2:	4b07      	ldr	r3, [pc, #28]	; (100030c0 <interrupt_install_group_gpio+0x134>)
100030a4:	681a      	ldr	r2, [r3, #0]
100030a6:	4314      	orrs	r4, r2
100030a8:	601c      	str	r4, [r3, #0]
100030aa:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100030ac:	343d2e00 	.word	0x343d2e00
100030b0:	10009fb2 	.word	0x10009fb2
100030b4:	00006641 	.word	0x00006641
100030b8:	10009fbe 	.word	0x10009fbe
100030bc:	00006609 	.word	0x00006609
100030c0:	20014f20 	.word	0x20014f20
100030c4:	40010000 	.word	0x40010000
100030c8:	40011000 	.word	0x40011000
100030cc:	20014f4c 	.word	0x20014f4c
100030d0:	20014f50 	.word	0x20014f50
100030d4:	20014f24 	.word	0x20014f24
100030d8:	000066b1 	.word	0x000066b1
100030dc:	10009fc3 	.word	0x10009fc3
100030e0:	1000b4d2 	.word	0x1000b4d2
100030e4:	20014f38 	.word	0x20014f38
100030e8:	200142d5 	.word	0x200142d5
100030ec:	10002f01 	.word	0x10002f01
100030f0:	e000e100 	.word	0xe000e100
100030f4:	200142e9 	.word	0x200142e9

100030f8 <interrupt_install_gpio>:
100030f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100030fa:	0004      	movs	r4, r0
100030fc:	000d      	movs	r5, r1
100030fe:	0016      	movs	r6, r2
10003100:	281f      	cmp	r0, #31
10003102:	d904      	bls.n	1000310e <interrupt_install_gpio+0x16>
10003104:	23e8      	movs	r3, #232	; 0xe8
10003106:	211f      	movs	r1, #31
10003108:	4a04      	ldr	r2, [pc, #16]	; (1000311c <interrupt_install_gpio+0x24>)
1000310a:	4f05      	ldr	r7, [pc, #20]	; (10003120 <interrupt_install_gpio+0x28>)
1000310c:	47b8      	blx	r7
1000310e:	2001      	movs	r0, #1
10003110:	0032      	movs	r2, r6
10003112:	0029      	movs	r1, r5
10003114:	40a0      	lsls	r0, r4
10003116:	4b03      	ldr	r3, [pc, #12]	; (10003124 <interrupt_install_gpio+0x2c>)
10003118:	4798      	blx	r3
1000311a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000311c:	10009fb2 	.word	0x10009fb2
10003120:	00006641 	.word	0x00006641
10003124:	10002f8d 	.word	0x10002f8d

10003128 <sw_timer_appm_init>:
10003128:	b510      	push	{r4, lr}
1000312a:	2017      	movs	r0, #23
1000312c:	4902      	ldr	r1, [pc, #8]	; (10003138 <sw_timer_appm_init+0x10>)
1000312e:	4b03      	ldr	r3, [pc, #12]	; (1000313c <sw_timer_appm_init+0x14>)
10003130:	4798      	blx	r3
10003132:	2001      	movs	r0, #1
10003134:	bd10      	pop	{r4, pc}
10003136:	46c0      	nop			; (mov r8, r8)
10003138:	1000a198 	.word	0x1000a198
1000313c:	00001775 	.word	0x00001775

10003140 <sw_timer_msg_handler>:
10003140:	b510      	push	{r4, lr}
10003142:	0a01      	lsrs	r1, r0, #8
10003144:	2964      	cmp	r1, #100	; 0x64
10003146:	d006      	beq.n	10003156 <sw_timer_msg_handler+0x16>
10003148:	2913      	cmp	r1, #19
1000314a:	d002      	beq.n	10003152 <sw_timer_msg_handler+0x12>
1000314c:	480c      	ldr	r0, [pc, #48]	; (10003180 <sw_timer_msg_handler+0x40>)
1000314e:	4c0d      	ldr	r4, [pc, #52]	; (10003184 <sw_timer_msg_handler+0x44>)
10003150:	47a0      	blx	r4
10003152:	2000      	movs	r0, #0
10003154:	bd10      	pop	{r4, pc}
10003156:	b2c0      	uxtb	r0, r0
10003158:	2807      	cmp	r0, #7
1000315a:	d904      	bls.n	10003166 <sw_timer_msg_handler+0x26>
1000315c:	0001      	movs	r1, r0
1000315e:	480a      	ldr	r0, [pc, #40]	; (10003188 <sw_timer_msg_handler+0x48>)
10003160:	4b08      	ldr	r3, [pc, #32]	; (10003184 <sw_timer_msg_handler+0x44>)
10003162:	4798      	blx	r3
10003164:	e7f5      	b.n	10003152 <sw_timer_msg_handler+0x12>
10003166:	220c      	movs	r2, #12
10003168:	4342      	muls	r2, r0
1000316a:	4b08      	ldr	r3, [pc, #32]	; (1000318c <sw_timer_msg_handler+0x4c>)
1000316c:	58d4      	ldr	r4, [r2, r3]
1000316e:	2c00      	cmp	r4, #0
10003170:	d102      	bne.n	10003178 <sw_timer_msg_handler+0x38>
10003172:	0001      	movs	r1, r0
10003174:	4806      	ldr	r0, [pc, #24]	; (10003190 <sw_timer_msg_handler+0x50>)
10003176:	e7f3      	b.n	10003160 <sw_timer_msg_handler+0x20>
10003178:	189b      	adds	r3, r3, r2
1000317a:	6859      	ldr	r1, [r3, #4]
1000317c:	47a0      	blx	r4
1000317e:	e7e8      	b.n	10003152 <sw_timer_msg_handler+0x12>
10003180:	1000a0bc 	.word	0x1000a0bc
10003184:	000066b1 	.word	0x000066b1
10003188:	1000a0ea 	.word	0x1000a0ea
1000318c:	20014f5c 	.word	0x20014f5c
10003190:	1000a10d 	.word	0x1000a10d

10003194 <sw_timer_init_constructor>:
10003194:	b570      	push	{r4, r5, r6, lr}
10003196:	4c0e      	ldr	r4, [pc, #56]	; (100031d0 <sw_timer_init_constructor+0x3c>)
10003198:	6823      	ldr	r3, [r4, #0]
1000319a:	2b00      	cmp	r3, #0
1000319c:	d004      	beq.n	100031a8 <sw_timer_init_constructor+0x14>
1000319e:	2269      	movs	r2, #105	; 0x69
100031a0:	490c      	ldr	r1, [pc, #48]	; (100031d4 <sw_timer_init_constructor+0x40>)
100031a2:	480d      	ldr	r0, [pc, #52]	; (100031d8 <sw_timer_init_constructor+0x44>)
100031a4:	4b0d      	ldr	r3, [pc, #52]	; (100031dc <sw_timer_init_constructor+0x48>)
100031a6:	4798      	blx	r3
100031a8:	490d      	ldr	r1, [pc, #52]	; (100031e0 <sw_timer_init_constructor+0x4c>)
100031aa:	2208      	movs	r2, #8
100031ac:	000b      	movs	r3, r1
100031ae:	6820      	ldr	r0, [r4, #0]
100031b0:	3354      	adds	r3, #84	; 0x54
100031b2:	001d      	movs	r5, r3
100031b4:	3a01      	subs	r2, #1
100031b6:	6098      	str	r0, [r3, #8]
100031b8:	3d0c      	subs	r5, #12
100031ba:	0018      	movs	r0, r3
100031bc:	2a00      	cmp	r2, #0
100031be:	d105      	bne.n	100031cc <sw_timer_init_constructor+0x38>
100031c0:	6021      	str	r1, [r4, #0]
100031c2:	4808      	ldr	r0, [pc, #32]	; (100031e4 <sw_timer_init_constructor+0x50>)
100031c4:	4908      	ldr	r1, [pc, #32]	; (100031e8 <sw_timer_init_constructor+0x54>)
100031c6:	4b09      	ldr	r3, [pc, #36]	; (100031ec <sw_timer_init_constructor+0x58>)
100031c8:	4798      	blx	r3
100031ca:	bd70      	pop	{r4, r5, r6, pc}
100031cc:	002b      	movs	r3, r5
100031ce:	e7f0      	b.n	100031b2 <sw_timer_init_constructor+0x1e>
100031d0:	20014f54 	.word	0x20014f54
100031d4:	1000a131 	.word	0x1000a131
100031d8:	1000a13c 	.word	0x1000a13c
100031dc:	00006609 	.word	0x00006609
100031e0:	20014f5c 	.word	0x20014f5c
100031e4:	20001290 	.word	0x20001290
100031e8:	20014300 	.word	0x20014300
100031ec:	00006715 	.word	0x00006715

100031f0 <sw_timer_alloc>:
100031f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100031f2:	0005      	movs	r5, r0
100031f4:	000e      	movs	r6, r1
100031f6:	2800      	cmp	r0, #0
100031f8:	d104      	bne.n	10003204 <sw_timer_alloc+0x14>
100031fa:	2276      	movs	r2, #118	; 0x76
100031fc:	4910      	ldr	r1, [pc, #64]	; (10003240 <sw_timer_alloc+0x50>)
100031fe:	4811      	ldr	r0, [pc, #68]	; (10003244 <sw_timer_alloc+0x54>)
10003200:	4b11      	ldr	r3, [pc, #68]	; (10003248 <sw_timer_alloc+0x58>)
10003202:	4798      	blx	r3
10003204:	4f11      	ldr	r7, [pc, #68]	; (1000324c <sw_timer_alloc+0x5c>)
10003206:	683b      	ldr	r3, [r7, #0]
10003208:	2b00      	cmp	r3, #0
1000320a:	d104      	bne.n	10003216 <sw_timer_alloc+0x26>
1000320c:	2277      	movs	r2, #119	; 0x77
1000320e:	490c      	ldr	r1, [pc, #48]	; (10003240 <sw_timer_alloc+0x50>)
10003210:	480f      	ldr	r0, [pc, #60]	; (10003250 <sw_timer_alloc+0x60>)
10003212:	4b0d      	ldr	r3, [pc, #52]	; (10003248 <sw_timer_alloc+0x58>)
10003214:	4798      	blx	r3
10003216:	683c      	ldr	r4, [r7, #0]
10003218:	2c00      	cmp	r4, #0
1000321a:	d104      	bne.n	10003226 <sw_timer_alloc+0x36>
1000321c:	227b      	movs	r2, #123	; 0x7b
1000321e:	4908      	ldr	r1, [pc, #32]	; (10003240 <sw_timer_alloc+0x50>)
10003220:	480c      	ldr	r0, [pc, #48]	; (10003254 <sw_timer_alloc+0x64>)
10003222:	4b09      	ldr	r3, [pc, #36]	; (10003248 <sw_timer_alloc+0x58>)
10003224:	4798      	blx	r3
10003226:	68a3      	ldr	r3, [r4, #8]
10003228:	480b      	ldr	r0, [pc, #44]	; (10003258 <sw_timer_alloc+0x68>)
1000322a:	603b      	str	r3, [r7, #0]
1000322c:	2300      	movs	r3, #0
1000322e:	6025      	str	r5, [r4, #0]
10003230:	6066      	str	r6, [r4, #4]
10003232:	60a3      	str	r3, [r4, #8]
10003234:	1a20      	subs	r0, r4, r0
10003236:	4c09      	ldr	r4, [pc, #36]	; (1000325c <sw_timer_alloc+0x6c>)
10003238:	1080      	asrs	r0, r0, #2
1000323a:	4360      	muls	r0, r4
1000323c:	b2c0      	uxtb	r0, r0
1000323e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10003240:	1000a131 	.word	0x1000a131
10003244:	1000a18f 	.word	0x1000a18f
10003248:	00006609 	.word	0x00006609
1000324c:	20014f54 	.word	0x20014f54
10003250:	1000a157 	.word	0x1000a157
10003254:	1000a16a 	.word	0x1000a16a
10003258:	20014f5c 	.word	0x20014f5c
1000325c:	aaaaaaab 	.word	0xaaaaaaab

10003260 <sw_timer_free>:
10003260:	b570      	push	{r4, r5, r6, lr}
10003262:	0005      	movs	r5, r0
10003264:	2807      	cmp	r0, #7
10003266:	d904      	bls.n	10003272 <sw_timer_free+0x12>
10003268:	2386      	movs	r3, #134	; 0x86
1000326a:	2108      	movs	r1, #8
1000326c:	4a0c      	ldr	r2, [pc, #48]	; (100032a0 <sw_timer_free+0x40>)
1000326e:	4c0d      	ldr	r4, [pc, #52]	; (100032a4 <sw_timer_free+0x44>)
10003270:	47a0      	blx	r4
10003272:	230c      	movs	r3, #12
10003274:	436b      	muls	r3, r5
10003276:	4c0c      	ldr	r4, [pc, #48]	; (100032a8 <sw_timer_free+0x48>)
10003278:	18e6      	adds	r6, r4, r3
1000327a:	58e3      	ldr	r3, [r4, r3]
1000327c:	2b00      	cmp	r3, #0
1000327e:	d104      	bne.n	1000328a <sw_timer_free+0x2a>
10003280:	2288      	movs	r2, #136	; 0x88
10003282:	4907      	ldr	r1, [pc, #28]	; (100032a0 <sw_timer_free+0x40>)
10003284:	4809      	ldr	r0, [pc, #36]	; (100032ac <sw_timer_free+0x4c>)
10003286:	4b0a      	ldr	r3, [pc, #40]	; (100032b0 <sw_timer_free+0x50>)
10003288:	4798      	blx	r3
1000328a:	200c      	movs	r0, #12
1000328c:	2300      	movs	r3, #0
1000328e:	4345      	muls	r5, r0
10003290:	5163      	str	r3, [r4, r5]
10003292:	1964      	adds	r4, r4, r5
10003294:	6063      	str	r3, [r4, #4]
10003296:	4b07      	ldr	r3, [pc, #28]	; (100032b4 <sw_timer_free+0x54>)
10003298:	681a      	ldr	r2, [r3, #0]
1000329a:	601e      	str	r6, [r3, #0]
1000329c:	60a2      	str	r2, [r4, #8]
1000329e:	bd70      	pop	{r4, r5, r6, pc}
100032a0:	1000a131 	.word	0x1000a131
100032a4:	00006641 	.word	0x00006641
100032a8:	20014f5c 	.word	0x20014f5c
100032ac:	1000a16e 	.word	0x1000a16e
100032b0:	00006609 	.word	0x00006609
100032b4:	20014f54 	.word	0x20014f54

100032b8 <sw_timer_set>:
100032b8:	b570      	push	{r4, r5, r6, lr}
100032ba:	0004      	movs	r4, r0
100032bc:	000d      	movs	r5, r1
100032be:	2807      	cmp	r0, #7
100032c0:	d904      	bls.n	100032cc <sw_timer_set+0x14>
100032c2:	23a1      	movs	r3, #161	; 0xa1
100032c4:	2108      	movs	r1, #8
100032c6:	4a0b      	ldr	r2, [pc, #44]	; (100032f4 <sw_timer_set+0x3c>)
100032c8:	4e0b      	ldr	r6, [pc, #44]	; (100032f8 <sw_timer_set+0x40>)
100032ca:	47b0      	blx	r6
100032cc:	230c      	movs	r3, #12
100032ce:	4363      	muls	r3, r4
100032d0:	4a0a      	ldr	r2, [pc, #40]	; (100032fc <sw_timer_set+0x44>)
100032d2:	589b      	ldr	r3, [r3, r2]
100032d4:	2b00      	cmp	r3, #0
100032d6:	d104      	bne.n	100032e2 <sw_timer_set+0x2a>
100032d8:	22a2      	movs	r2, #162	; 0xa2
100032da:	4906      	ldr	r1, [pc, #24]	; (100032f4 <sw_timer_set+0x3c>)
100032dc:	4808      	ldr	r0, [pc, #32]	; (10003300 <sw_timer_set+0x48>)
100032de:	4b09      	ldr	r3, [pc, #36]	; (10003304 <sw_timer_set+0x4c>)
100032e0:	4798      	blx	r3
100032e2:	20c8      	movs	r0, #200	; 0xc8
100032e4:	01c0      	lsls	r0, r0, #7
100032e6:	002a      	movs	r2, r5
100032e8:	2117      	movs	r1, #23
100032ea:	4b07      	ldr	r3, [pc, #28]	; (10003308 <sw_timer_set+0x50>)
100032ec:	4320      	orrs	r0, r4
100032ee:	4798      	blx	r3
100032f0:	bd70      	pop	{r4, r5, r6, pc}
100032f2:	46c0      	nop			; (mov r8, r8)
100032f4:	1000a131 	.word	0x1000a131
100032f8:	00006641 	.word	0x00006641
100032fc:	20014f5c 	.word	0x20014f5c
10003300:	1000a17b 	.word	0x1000a17b
10003304:	00006609 	.word	0x00006609
10003308:	00001005 	.word	0x00001005

1000330c <sw_timer_clear>:
1000330c:	b570      	push	{r4, r5, r6, lr}
1000330e:	0004      	movs	r4, r0
10003310:	2807      	cmp	r0, #7
10003312:	d904      	bls.n	1000331e <sw_timer_clear+0x12>
10003314:	23a9      	movs	r3, #169	; 0xa9
10003316:	2108      	movs	r1, #8
10003318:	4a0a      	ldr	r2, [pc, #40]	; (10003344 <sw_timer_clear+0x38>)
1000331a:	4d0b      	ldr	r5, [pc, #44]	; (10003348 <sw_timer_clear+0x3c>)
1000331c:	47a8      	blx	r5
1000331e:	230c      	movs	r3, #12
10003320:	4363      	muls	r3, r4
10003322:	4a0a      	ldr	r2, [pc, #40]	; (1000334c <sw_timer_clear+0x40>)
10003324:	589b      	ldr	r3, [r3, r2]
10003326:	2b00      	cmp	r3, #0
10003328:	d104      	bne.n	10003334 <sw_timer_clear+0x28>
1000332a:	22aa      	movs	r2, #170	; 0xaa
1000332c:	4905      	ldr	r1, [pc, #20]	; (10003344 <sw_timer_clear+0x38>)
1000332e:	4808      	ldr	r0, [pc, #32]	; (10003350 <sw_timer_clear+0x44>)
10003330:	4b08      	ldr	r3, [pc, #32]	; (10003354 <sw_timer_clear+0x48>)
10003332:	4798      	blx	r3
10003334:	20c8      	movs	r0, #200	; 0xc8
10003336:	01c0      	lsls	r0, r0, #7
10003338:	2117      	movs	r1, #23
1000333a:	4b07      	ldr	r3, [pc, #28]	; (10003358 <sw_timer_clear+0x4c>)
1000333c:	4320      	orrs	r0, r4
1000333e:	4798      	blx	r3
10003340:	bd70      	pop	{r4, r5, r6, pc}
10003342:	46c0      	nop			; (mov r8, r8)
10003344:	1000a131 	.word	0x1000a131
10003348:	00006641 	.word	0x00006641
1000334c:	20014f5c 	.word	0x20014f5c
10003350:	1000a17b 	.word	0x1000a17b
10003354:	00006609 	.word	0x00006609
10003358:	000010bd 	.word	0x000010bd

1000335c <sw_event_appm_init>:
1000335c:	b510      	push	{r4, lr}
1000335e:	200c      	movs	r0, #12
10003360:	4902      	ldr	r1, [pc, #8]	; (1000336c <sw_event_appm_init+0x10>)
10003362:	4b03      	ldr	r3, [pc, #12]	; (10003370 <sw_event_appm_init+0x14>)
10003364:	4798      	blx	r3
10003366:	2001      	movs	r0, #1
10003368:	bd10      	pop	{r4, pc}
1000336a:	46c0      	nop			; (mov r8, r8)
1000336c:	10003375 	.word	0x10003375
10003370:	000018dd 	.word	0x000018dd

10003374 <sw_event_handler>:
10003374:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10003376:	260c      	movs	r6, #12
10003378:	2701      	movs	r7, #1
1000337a:	4b11      	ldr	r3, [pc, #68]	; (100033c0 <sw_event_handler+0x4c>)
1000337c:	681d      	ldr	r5, [r3, #0]
1000337e:	2d00      	cmp	r5, #0
10003380:	d00b      	beq.n	1000339a <sw_event_handler+0x26>
10003382:	0028      	movs	r0, r5
10003384:	4b0f      	ldr	r3, [pc, #60]	; (100033c4 <sw_event_handler+0x50>)
10003386:	4798      	blx	r3
10003388:	0004      	movs	r4, r0
1000338a:	b2c0      	uxtb	r0, r0
1000338c:	2c07      	cmp	r4, #7
1000338e:	dd05      	ble.n	1000339c <sw_event_handler+0x28>
10003390:	0022      	movs	r2, r4
10003392:	0029      	movs	r1, r5
10003394:	480c      	ldr	r0, [pc, #48]	; (100033c8 <sw_event_handler+0x54>)
10003396:	4b0d      	ldr	r3, [pc, #52]	; (100033cc <sw_event_handler+0x58>)
10003398:	4798      	blx	r3
1000339a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000339c:	0031      	movs	r1, r6
1000339e:	4361      	muls	r1, r4
100033a0:	4b0b      	ldr	r3, [pc, #44]	; (100033d0 <sw_event_handler+0x5c>)
100033a2:	58ca      	ldr	r2, [r1, r3]
100033a4:	2a00      	cmp	r2, #0
100033a6:	d107      	bne.n	100033b8 <sw_event_handler+0x44>
100033a8:	0021      	movs	r1, r4
100033aa:	480a      	ldr	r0, [pc, #40]	; (100033d4 <sw_event_handler+0x60>)
100033ac:	4b07      	ldr	r3, [pc, #28]	; (100033cc <sw_event_handler+0x58>)
100033ae:	4798      	blx	r3
100033b0:	003b      	movs	r3, r7
100033b2:	40a3      	lsls	r3, r4
100033b4:	439d      	bics	r5, r3
100033b6:	e7e2      	b.n	1000337e <sw_event_handler+0xa>
100033b8:	185b      	adds	r3, r3, r1
100033ba:	6859      	ldr	r1, [r3, #4]
100033bc:	4790      	blx	r2
100033be:	e7f7      	b.n	100033b0 <sw_event_handler+0x3c>
100033c0:	20014fc0 	.word	0x20014fc0
100033c4:	1000912d 	.word	0x1000912d
100033c8:	1000a1ac 	.word	0x1000a1ac
100033cc:	000066b1 	.word	0x000066b1
100033d0:	20014fc4 	.word	0x20014fc4
100033d4:	1000a1d1 	.word	0x1000a1d1

100033d8 <sw_event_init_constructor>:
100033d8:	b570      	push	{r4, r5, r6, lr}
100033da:	4c0e      	ldr	r4, [pc, #56]	; (10003414 <sw_event_init_constructor+0x3c>)
100033dc:	6823      	ldr	r3, [r4, #0]
100033de:	2b00      	cmp	r3, #0
100033e0:	d004      	beq.n	100033ec <sw_event_init_constructor+0x14>
100033e2:	2257      	movs	r2, #87	; 0x57
100033e4:	490c      	ldr	r1, [pc, #48]	; (10003418 <sw_event_init_constructor+0x40>)
100033e6:	480d      	ldr	r0, [pc, #52]	; (1000341c <sw_event_init_constructor+0x44>)
100033e8:	4b0d      	ldr	r3, [pc, #52]	; (10003420 <sw_event_init_constructor+0x48>)
100033ea:	4798      	blx	r3
100033ec:	490d      	ldr	r1, [pc, #52]	; (10003424 <sw_event_init_constructor+0x4c>)
100033ee:	2208      	movs	r2, #8
100033f0:	000b      	movs	r3, r1
100033f2:	6820      	ldr	r0, [r4, #0]
100033f4:	3354      	adds	r3, #84	; 0x54
100033f6:	001d      	movs	r5, r3
100033f8:	3a01      	subs	r2, #1
100033fa:	6098      	str	r0, [r3, #8]
100033fc:	3d0c      	subs	r5, #12
100033fe:	0018      	movs	r0, r3
10003400:	2a00      	cmp	r2, #0
10003402:	d105      	bne.n	10003410 <sw_event_init_constructor+0x38>
10003404:	6021      	str	r1, [r4, #0]
10003406:	4808      	ldr	r0, [pc, #32]	; (10003428 <sw_event_init_constructor+0x50>)
10003408:	4908      	ldr	r1, [pc, #32]	; (1000342c <sw_event_init_constructor+0x54>)
1000340a:	4b09      	ldr	r3, [pc, #36]	; (10003430 <sw_event_init_constructor+0x58>)
1000340c:	4798      	blx	r3
1000340e:	bd70      	pop	{r4, r5, r6, pc}
10003410:	002b      	movs	r3, r5
10003412:	e7f0      	b.n	100033f6 <sw_event_init_constructor+0x1e>
10003414:	20014fbc 	.word	0x20014fbc
10003418:	1000a1ec 	.word	0x1000a1ec
1000341c:	1000a1f7 	.word	0x1000a1f7
10003420:	00006609 	.word	0x00006609
10003424:	20014fc4 	.word	0x20014fc4
10003428:	20001290 	.word	0x20001290
1000342c:	20014308 	.word	0x20014308
10003430:	00006715 	.word	0x00006715

10003434 <atm_timer_init_constructor>:
10003434:	b510      	push	{r4, lr}
10003436:	4904      	ldr	r1, [pc, #16]	; (10003448 <atm_timer_init_constructor+0x14>)
10003438:	4c04      	ldr	r4, [pc, #16]	; (1000344c <atm_timer_init_constructor+0x18>)
1000343a:	4805      	ldr	r0, [pc, #20]	; (10003450 <atm_timer_init_constructor+0x1c>)
1000343c:	47a0      	blx	r4
1000343e:	4905      	ldr	r1, [pc, #20]	; (10003454 <atm_timer_init_constructor+0x20>)
10003440:	4805      	ldr	r0, [pc, #20]	; (10003458 <atm_timer_init_constructor+0x24>)
10003442:	47a0      	blx	r4
10003444:	bd10      	pop	{r4, pc}
10003446:	46c0      	nop			; (mov r8, r8)
10003448:	20014328 	.word	0x20014328
1000344c:	00006805 	.word	0x00006805
10003450:	20001260 	.word	0x20001260
10003454:	20014330 	.word	0x20014330
10003458:	20001284 	.word	0x20001284

1000345c <atm_gpio_setup>:
1000345c:	b570      	push	{r4, r5, r6, lr}
1000345e:	2401      	movs	r4, #1
10003460:	4084      	lsls	r4, r0
10003462:	4d2d      	ldr	r5, [pc, #180]	; (10003518 <atm_gpio_setup+0xbc>)
10003464:	682b      	ldr	r3, [r5, #0]
10003466:	4223      	tst	r3, r4
10003468:	d117      	bne.n	1000349a <atm_gpio_setup+0x3e>
1000346a:	3809      	subs	r0, #9
1000346c:	2814      	cmp	r0, #20
1000346e:	d84d      	bhi.n	1000350c <atm_gpio_setup+0xb0>
10003470:	f005 fec2 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10003474:	4c18140b 	.word	0x4c18140b
10003478:	234c4c1d 	.word	0x234c4c1d
1000347c:	322d294c 	.word	0x322d294c
10003480:	4c4c4c38 	.word	0x4c4c4c38
10003484:	434c3d4c 	.word	0x434c3d4c
10003488:	48          	.byte	0x48
10003489:	00          	.byte	0x00
1000348a:	4a24      	ldr	r2, [pc, #144]	; (1000351c <atm_gpio_setup+0xc0>)
1000348c:	4924      	ldr	r1, [pc, #144]	; (10003520 <atm_gpio_setup+0xc4>)
1000348e:	6d53      	ldr	r3, [r2, #84]	; 0x54
10003490:	400b      	ands	r3, r1
10003492:	6553      	str	r3, [r2, #84]	; 0x54
10003494:	682b      	ldr	r3, [r5, #0]
10003496:	431c      	orrs	r4, r3
10003498:	602c      	str	r4, [r5, #0]
1000349a:	bd70      	pop	{r4, r5, r6, pc}
1000349c:	4a1f      	ldr	r2, [pc, #124]	; (1000351c <atm_gpio_setup+0xc0>)
1000349e:	4921      	ldr	r1, [pc, #132]	; (10003524 <atm_gpio_setup+0xc8>)
100034a0:	6d53      	ldr	r3, [r2, #84]	; 0x54
100034a2:	e7f5      	b.n	10003490 <atm_gpio_setup+0x34>
100034a4:	217c      	movs	r1, #124	; 0x7c
100034a6:	4a1d      	ldr	r2, [pc, #116]	; (1000351c <atm_gpio_setup+0xc0>)
100034a8:	6d53      	ldr	r3, [r2, #84]	; 0x54
100034aa:	438b      	bics	r3, r1
100034ac:	e7f1      	b.n	10003492 <atm_gpio_setup+0x36>
100034ae:	4a1b      	ldr	r2, [pc, #108]	; (1000351c <atm_gpio_setup+0xc0>)
100034b0:	491d      	ldr	r1, [pc, #116]	; (10003528 <atm_gpio_setup+0xcc>)
100034b2:	6d93      	ldr	r3, [r2, #88]	; 0x58
100034b4:	400b      	ands	r3, r1
100034b6:	6593      	str	r3, [r2, #88]	; 0x58
100034b8:	e7ec      	b.n	10003494 <atm_gpio_setup+0x38>
100034ba:	4a18      	ldr	r2, [pc, #96]	; (1000351c <atm_gpio_setup+0xc0>)
100034bc:	491b      	ldr	r1, [pc, #108]	; (1000352c <atm_gpio_setup+0xd0>)
100034be:	6dd3      	ldr	r3, [r2, #92]	; 0x5c
100034c0:	400b      	ands	r3, r1
100034c2:	65d3      	str	r3, [r2, #92]	; 0x5c
100034c4:	e7e6      	b.n	10003494 <atm_gpio_setup+0x38>
100034c6:	4a15      	ldr	r2, [pc, #84]	; (1000351c <atm_gpio_setup+0xc0>)
100034c8:	4916      	ldr	r1, [pc, #88]	; (10003524 <atm_gpio_setup+0xc8>)
100034ca:	6dd3      	ldr	r3, [r2, #92]	; 0x5c
100034cc:	e7f8      	b.n	100034c0 <atm_gpio_setup+0x64>
100034ce:	217c      	movs	r1, #124	; 0x7c
100034d0:	4a12      	ldr	r2, [pc, #72]	; (1000351c <atm_gpio_setup+0xc0>)
100034d2:	6dd3      	ldr	r3, [r2, #92]	; 0x5c
100034d4:	438b      	bics	r3, r1
100034d6:	e7f4      	b.n	100034c2 <atm_gpio_setup+0x66>
100034d8:	4a10      	ldr	r2, [pc, #64]	; (1000351c <atm_gpio_setup+0xc0>)
100034da:	6e13      	ldr	r3, [r2, #96]	; 0x60
100034dc:	015b      	lsls	r3, r3, #5
100034de:	095b      	lsrs	r3, r3, #5
100034e0:	6613      	str	r3, [r2, #96]	; 0x60
100034e2:	e7d7      	b.n	10003494 <atm_gpio_setup+0x38>
100034e4:	4a0d      	ldr	r2, [pc, #52]	; (1000351c <atm_gpio_setup+0xc0>)
100034e6:	4910      	ldr	r1, [pc, #64]	; (10003528 <atm_gpio_setup+0xcc>)
100034e8:	6e13      	ldr	r3, [r2, #96]	; 0x60
100034ea:	400b      	ands	r3, r1
100034ec:	e7f8      	b.n	100034e0 <atm_gpio_setup+0x84>
100034ee:	4a0b      	ldr	r2, [pc, #44]	; (1000351c <atm_gpio_setup+0xc0>)
100034f0:	6e53      	ldr	r3, [r2, #100]	; 0x64
100034f2:	015b      	lsls	r3, r3, #5
100034f4:	095b      	lsrs	r3, r3, #5
100034f6:	6653      	str	r3, [r2, #100]	; 0x64
100034f8:	e7cc      	b.n	10003494 <atm_gpio_setup+0x38>
100034fa:	4a08      	ldr	r2, [pc, #32]	; (1000351c <atm_gpio_setup+0xc0>)
100034fc:	490b      	ldr	r1, [pc, #44]	; (1000352c <atm_gpio_setup+0xd0>)
100034fe:	6e53      	ldr	r3, [r2, #100]	; 0x64
10003500:	400b      	ands	r3, r1
10003502:	e7f8      	b.n	100034f6 <atm_gpio_setup+0x9a>
10003504:	4a05      	ldr	r2, [pc, #20]	; (1000351c <atm_gpio_setup+0xc0>)
10003506:	4906      	ldr	r1, [pc, #24]	; (10003520 <atm_gpio_setup+0xc4>)
10003508:	6e53      	ldr	r3, [r2, #100]	; 0x64
1000350a:	e7f9      	b.n	10003500 <atm_gpio_setup+0xa4>
1000350c:	22b8      	movs	r2, #184	; 0xb8
1000350e:	4908      	ldr	r1, [pc, #32]	; (10003530 <atm_gpio_setup+0xd4>)
10003510:	4808      	ldr	r0, [pc, #32]	; (10003534 <atm_gpio_setup+0xd8>)
10003512:	4b09      	ldr	r3, [pc, #36]	; (10003538 <atm_gpio_setup+0xdc>)
10003514:	4798      	blx	r3
10003516:	e7bd      	b.n	10003494 <atm_gpio_setup+0x38>
10003518:	20015030 	.word	0x20015030
1000351c:	40003000 	.word	0x40003000
10003520:	fffe0fff 	.word	0xfffe0fff
10003524:	fffff07f 	.word	0xfffff07f
10003528:	f83fffff 	.word	0xf83fffff
1000352c:	ffc1ffff 	.word	0xffc1ffff
10003530:	1000a212 	.word	0x1000a212
10003534:	1000b4d2 	.word	0x1000b4d2
10003538:	00006609 	.word	0x00006609

1000353c <atm_gpio_init_constructor>:
1000353c:	2200      	movs	r2, #0
1000353e:	4b01      	ldr	r3, [pc, #4]	; (10003544 <atm_gpio_init_constructor+0x8>)
10003540:	601a      	str	r2, [r3, #0]
10003542:	4770      	bx	lr
10003544:	20015030 	.word	0x20015030

10003548 <atm_gpio_set_input>:
10003548:	b510      	push	{r4, lr}
1000354a:	4b0b      	ldr	r3, [pc, #44]	; (10003578 <atm_gpio_set_input+0x30>)
1000354c:	0004      	movs	r4, r0
1000354e:	4798      	blx	r3
10003550:	2800      	cmp	r0, #0
10003552:	d004      	beq.n	1000355e <atm_gpio_set_input+0x16>
10003554:	22cb      	movs	r2, #203	; 0xcb
10003556:	4909      	ldr	r1, [pc, #36]	; (1000357c <atm_gpio_set_input+0x34>)
10003558:	4809      	ldr	r0, [pc, #36]	; (10003580 <atm_gpio_set_input+0x38>)
1000355a:	4b0a      	ldr	r3, [pc, #40]	; (10003584 <atm_gpio_set_input+0x3c>)
1000355c:	4798      	blx	r3
1000355e:	2c0f      	cmp	r4, #15
10003560:	d907      	bls.n	10003572 <atm_gpio_set_input+0x2a>
10003562:	3c10      	subs	r4, #16
10003564:	4a08      	ldr	r2, [pc, #32]	; (10003588 <atm_gpio_set_input+0x40>)
10003566:	b2e4      	uxtb	r4, r4
10003568:	2301      	movs	r3, #1
1000356a:	40a3      	lsls	r3, r4
1000356c:	61d3      	str	r3, [r2, #28]
1000356e:	6113      	str	r3, [r2, #16]
10003570:	bd10      	pop	{r4, pc}
10003572:	4a06      	ldr	r2, [pc, #24]	; (1000358c <atm_gpio_set_input+0x44>)
10003574:	e7f8      	b.n	10003568 <atm_gpio_set_input+0x20>
10003576:	46c0      	nop			; (mov r8, r8)
10003578:	20014339 	.word	0x20014339
1000357c:	1000a212 	.word	0x1000a212
10003580:	1000a21d 	.word	0x1000a21d
10003584:	00006609 	.word	0x00006609
10003588:	40011000 	.word	0x40011000
1000358c:	40010000 	.word	0x40010000

10003590 <atm_gpio_clear_input>:
10003590:	b510      	push	{r4, lr}
10003592:	4b0a      	ldr	r3, [pc, #40]	; (100035bc <atm_gpio_clear_input+0x2c>)
10003594:	0004      	movs	r4, r0
10003596:	4798      	blx	r3
10003598:	2800      	cmp	r0, #0
1000359a:	d004      	beq.n	100035a6 <atm_gpio_clear_input+0x16>
1000359c:	22d9      	movs	r2, #217	; 0xd9
1000359e:	4908      	ldr	r1, [pc, #32]	; (100035c0 <atm_gpio_clear_input+0x30>)
100035a0:	4808      	ldr	r0, [pc, #32]	; (100035c4 <atm_gpio_clear_input+0x34>)
100035a2:	4b09      	ldr	r3, [pc, #36]	; (100035c8 <atm_gpio_clear_input+0x38>)
100035a4:	4798      	blx	r3
100035a6:	2c0f      	cmp	r4, #15
100035a8:	d906      	bls.n	100035b8 <atm_gpio_clear_input+0x28>
100035aa:	3c10      	subs	r4, #16
100035ac:	4a07      	ldr	r2, [pc, #28]	; (100035cc <atm_gpio_clear_input+0x3c>)
100035ae:	b2e4      	uxtb	r4, r4
100035b0:	2301      	movs	r3, #1
100035b2:	40a3      	lsls	r3, r4
100035b4:	6153      	str	r3, [r2, #20]
100035b6:	bd10      	pop	{r4, pc}
100035b8:	4a05      	ldr	r2, [pc, #20]	; (100035d0 <atm_gpio_clear_input+0x40>)
100035ba:	e7f9      	b.n	100035b0 <atm_gpio_clear_input+0x20>
100035bc:	20014339 	.word	0x20014339
100035c0:	1000a212 	.word	0x1000a212
100035c4:	1000a21d 	.word	0x1000a21d
100035c8:	00006609 	.word	0x00006609
100035cc:	40011000 	.word	0x40011000
100035d0:	40010000 	.word	0x40010000

100035d4 <atm_gpio_set_pullup>:
100035d4:	b510      	push	{r4, lr}
100035d6:	4b0b      	ldr	r3, [pc, #44]	; (10003604 <atm_gpio_set_pullup+0x30>)
100035d8:	0004      	movs	r4, r0
100035da:	4798      	blx	r3
100035dc:	2800      	cmp	r0, #0
100035de:	d005      	beq.n	100035ec <atm_gpio_set_pullup+0x18>
100035e0:	2202      	movs	r2, #2
100035e2:	4909      	ldr	r1, [pc, #36]	; (10003608 <atm_gpio_set_pullup+0x34>)
100035e4:	4809      	ldr	r0, [pc, #36]	; (1000360c <atm_gpio_set_pullup+0x38>)
100035e6:	4b0a      	ldr	r3, [pc, #40]	; (10003610 <atm_gpio_set_pullup+0x3c>)
100035e8:	32ff      	adds	r2, #255	; 0xff
100035ea:	4798      	blx	r3
100035ec:	2c0f      	cmp	r4, #15
100035ee:	d906      	bls.n	100035fe <atm_gpio_set_pullup+0x2a>
100035f0:	3c10      	subs	r4, #16
100035f2:	4a08      	ldr	r2, [pc, #32]	; (10003614 <atm_gpio_set_pullup+0x40>)
100035f4:	b2e4      	uxtb	r4, r4
100035f6:	2301      	movs	r3, #1
100035f8:	40a3      	lsls	r3, r4
100035fa:	6093      	str	r3, [r2, #8]
100035fc:	bd10      	pop	{r4, pc}
100035fe:	4a06      	ldr	r2, [pc, #24]	; (10003618 <atm_gpio_set_pullup+0x44>)
10003600:	e7f9      	b.n	100035f6 <atm_gpio_set_pullup+0x22>
10003602:	46c0      	nop			; (mov r8, r8)
10003604:	20014339 	.word	0x20014339
10003608:	1000a212 	.word	0x1000a212
1000360c:	1000a21d 	.word	0x1000a21d
10003610:	00006609 	.word	0x00006609
10003614:	40011000 	.word	0x40011000
10003618:	40010000 	.word	0x40010000

1000361c <atm_gpio_clear_pullup>:
1000361c:	b510      	push	{r4, lr}
1000361e:	4b0b      	ldr	r3, [pc, #44]	; (1000364c <atm_gpio_clear_pullup+0x30>)
10003620:	0004      	movs	r4, r0
10003622:	4798      	blx	r3
10003624:	2800      	cmp	r0, #0
10003626:	d005      	beq.n	10003634 <atm_gpio_clear_pullup+0x18>
10003628:	2287      	movs	r2, #135	; 0x87
1000362a:	4909      	ldr	r1, [pc, #36]	; (10003650 <atm_gpio_clear_pullup+0x34>)
1000362c:	4809      	ldr	r0, [pc, #36]	; (10003654 <atm_gpio_clear_pullup+0x38>)
1000362e:	4b0a      	ldr	r3, [pc, #40]	; (10003658 <atm_gpio_clear_pullup+0x3c>)
10003630:	0052      	lsls	r2, r2, #1
10003632:	4798      	blx	r3
10003634:	2c0f      	cmp	r4, #15
10003636:	d906      	bls.n	10003646 <atm_gpio_clear_pullup+0x2a>
10003638:	3c10      	subs	r4, #16
1000363a:	4a08      	ldr	r2, [pc, #32]	; (1000365c <atm_gpio_clear_pullup+0x40>)
1000363c:	b2e4      	uxtb	r4, r4
1000363e:	2301      	movs	r3, #1
10003640:	40a3      	lsls	r3, r4
10003642:	60d3      	str	r3, [r2, #12]
10003644:	bd10      	pop	{r4, pc}
10003646:	4a06      	ldr	r2, [pc, #24]	; (10003660 <atm_gpio_clear_pullup+0x44>)
10003648:	e7f9      	b.n	1000363e <atm_gpio_clear_pullup+0x22>
1000364a:	46c0      	nop			; (mov r8, r8)
1000364c:	20014339 	.word	0x20014339
10003650:	1000a212 	.word	0x1000a212
10003654:	1000a21d 	.word	0x1000a21d
10003658:	00006609 	.word	0x00006609
1000365c:	40011000 	.word	0x40011000
10003660:	40010000 	.word	0x40010000

10003664 <atm_gpio_int_set_rising>:
10003664:	b510      	push	{r4, lr}
10003666:	4b0b      	ldr	r3, [pc, #44]	; (10003694 <atm_gpio_int_set_rising+0x30>)
10003668:	0004      	movs	r4, r0
1000366a:	4798      	blx	r3
1000366c:	2800      	cmp	r0, #0
1000366e:	d005      	beq.n	1000367c <atm_gpio_int_set_rising+0x18>
10003670:	22b1      	movs	r2, #177	; 0xb1
10003672:	4909      	ldr	r1, [pc, #36]	; (10003698 <atm_gpio_int_set_rising+0x34>)
10003674:	4809      	ldr	r0, [pc, #36]	; (1000369c <atm_gpio_int_set_rising+0x38>)
10003676:	4b0a      	ldr	r3, [pc, #40]	; (100036a0 <atm_gpio_int_set_rising+0x3c>)
10003678:	0052      	lsls	r2, r2, #1
1000367a:	4798      	blx	r3
1000367c:	2c0f      	cmp	r4, #15
1000367e:	d907      	bls.n	10003690 <atm_gpio_int_set_rising+0x2c>
10003680:	3c10      	subs	r4, #16
10003682:	4a08      	ldr	r2, [pc, #32]	; (100036a4 <atm_gpio_int_set_rising+0x40>)
10003684:	b2e4      	uxtb	r4, r4
10003686:	2301      	movs	r3, #1
10003688:	40a3      	lsls	r3, r4
1000368a:	6313      	str	r3, [r2, #48]	; 0x30
1000368c:	6393      	str	r3, [r2, #56]	; 0x38
1000368e:	bd10      	pop	{r4, pc}
10003690:	4a05      	ldr	r2, [pc, #20]	; (100036a8 <atm_gpio_int_set_rising+0x44>)
10003692:	e7f8      	b.n	10003686 <atm_gpio_int_set_rising+0x22>
10003694:	20014339 	.word	0x20014339
10003698:	1000a212 	.word	0x1000a212
1000369c:	1000a21d 	.word	0x1000a21d
100036a0:	00006609 	.word	0x00006609
100036a4:	40011000 	.word	0x40011000
100036a8:	40010000 	.word	0x40010000

100036ac <atm_gpio_read_gpio>:
100036ac:	b510      	push	{r4, lr}
100036ae:	4b10      	ldr	r3, [pc, #64]	; (100036f0 <atm_gpio_read_gpio+0x44>)
100036b0:	0004      	movs	r4, r0
100036b2:	4798      	blx	r3
100036b4:	2800      	cmp	r0, #0
100036b6:	d005      	beq.n	100036c4 <atm_gpio_read_gpio+0x18>
100036b8:	22ba      	movs	r2, #186	; 0xba
100036ba:	490e      	ldr	r1, [pc, #56]	; (100036f4 <atm_gpio_read_gpio+0x48>)
100036bc:	480e      	ldr	r0, [pc, #56]	; (100036f8 <atm_gpio_read_gpio+0x4c>)
100036be:	4b0f      	ldr	r3, [pc, #60]	; (100036fc <atm_gpio_read_gpio+0x50>)
100036c0:	32ff      	adds	r2, #255	; 0xff
100036c2:	4798      	blx	r3
100036c4:	2c0f      	cmp	r4, #15
100036c6:	d90f      	bls.n	100036e8 <atm_gpio_read_gpio+0x3c>
100036c8:	3c10      	subs	r4, #16
100036ca:	4a0d      	ldr	r2, [pc, #52]	; (10003700 <atm_gpio_read_gpio+0x54>)
100036cc:	b2e4      	uxtb	r4, r4
100036ce:	2080      	movs	r0, #128	; 0x80
100036d0:	0240      	lsls	r0, r0, #9
100036d2:	40a0      	lsls	r0, r4
100036d4:	6991      	ldr	r1, [r2, #24]
100036d6:	0c03      	lsrs	r3, r0, #16
100036d8:	420b      	tst	r3, r1
100036da:	d007      	beq.n	100036ec <atm_gpio_read_gpio+0x40>
100036dc:	6850      	ldr	r0, [r2, #4]
100036de:	4018      	ands	r0, r3
100036e0:	1e43      	subs	r3, r0, #1
100036e2:	4198      	sbcs	r0, r3
100036e4:	b2c0      	uxtb	r0, r0
100036e6:	bd10      	pop	{r4, pc}
100036e8:	4a06      	ldr	r2, [pc, #24]	; (10003704 <atm_gpio_read_gpio+0x58>)
100036ea:	e7f0      	b.n	100036ce <atm_gpio_read_gpio+0x22>
100036ec:	6810      	ldr	r0, [r2, #0]
100036ee:	e7f6      	b.n	100036de <atm_gpio_read_gpio+0x32>
100036f0:	20014339 	.word	0x20014339
100036f4:	1000a212 	.word	0x1000a212
100036f8:	1000a21d 	.word	0x1000a21d
100036fc:	00006609 	.word	0x00006609
10003700:	40011000 	.word	0x40011000
10003704:	40010000 	.word	0x40010000

10003708 <user_prf_itf_get>:
10003708:	b2c9      	uxtb	r1, r1
1000370a:	b510      	push	{r4, lr}
1000370c:	0004      	movs	r4, r0
1000370e:	2914      	cmp	r1, #20
10003710:	d004      	beq.n	1000371c <user_prf_itf_get+0x14>
10003712:	2000      	movs	r0, #0
10003714:	2926      	cmp	r1, #38	; 0x26
10003716:	d103      	bne.n	10003720 <user_prf_itf_get+0x18>
10003718:	4b04      	ldr	r3, [pc, #16]	; (1000372c <user_prf_itf_get+0x24>)
1000371a:	e000      	b.n	1000371e <user_prf_itf_get+0x16>
1000371c:	4b04      	ldr	r3, [pc, #16]	; (10003730 <user_prf_itf_get+0x28>)
1000371e:	4798      	blx	r3
10003720:	6020      	str	r0, [r4, #0]
10003722:	4243      	negs	r3, r0
10003724:	4158      	adcs	r0, r3
10003726:	b2c0      	uxtb	r0, r0
10003728:	bd10      	pop	{r4, pc}
1000372a:	46c0      	nop			; (mov r8, r8)
1000372c:	10001891 	.word	0x10001891
10003730:	10001481 	.word	0x10001481

10003734 <profiles_constructor>:
10003734:	b510      	push	{r4, lr}
10003736:	4902      	ldr	r1, [pc, #8]	; (10003740 <profiles_constructor+0xc>)
10003738:	4802      	ldr	r0, [pc, #8]	; (10003744 <profiles_constructor+0x10>)
1000373a:	4b03      	ldr	r3, [pc, #12]	; (10003748 <profiles_constructor+0x14>)
1000373c:	4798      	blx	r3
1000373e:	bd10      	pop	{r4, pc}
10003740:	2001443c 	.word	0x2001443c
10003744:	20001298 	.word	0x20001298
10003748:	0000674b 	.word	0x0000674b

1000374c <hw_cfg_pseq_init>:
1000374c:	2380      	movs	r3, #128	; 0x80
1000374e:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10003750:	4c2d      	ldr	r4, [pc, #180]	; (10003808 <hw_cfg_pseq_init+0xbc>)
10003752:	045b      	lsls	r3, r3, #17
10003754:	6ea2      	ldr	r2, [r4, #104]	; 0x68
10003756:	4313      	orrs	r3, r2
10003758:	66a3      	str	r3, [r4, #104]	; 0x68
1000375a:	4b2c      	ldr	r3, [pc, #176]	; (1000380c <hw_cfg_pseq_init+0xc0>)
1000375c:	4798      	blx	r3
1000375e:	2800      	cmp	r0, #0
10003760:	d007      	beq.n	10003772 <hw_cfg_pseq_init+0x26>
10003762:	4b2b      	ldr	r3, [pc, #172]	; (10003810 <hw_cfg_pseq_init+0xc4>)
10003764:	4798      	blx	r3
10003766:	2800      	cmp	r0, #0
10003768:	d003      	beq.n	10003772 <hw_cfg_pseq_init+0x26>
1000376a:	2301      	movs	r3, #1
1000376c:	6ea2      	ldr	r2, [r4, #104]	; 0x68
1000376e:	4313      	orrs	r3, r2
10003770:	66a3      	str	r3, [r4, #104]	; 0x68
10003772:	4b28      	ldr	r3, [pc, #160]	; (10003814 <hw_cfg_pseq_init+0xc8>)
10003774:	681a      	ldr	r2, [r3, #0]
10003776:	0412      	lsls	r2, r2, #16
10003778:	d405      	bmi.n	10003786 <hw_cfg_pseq_init+0x3a>
1000377a:	220c      	movs	r2, #12
1000377c:	4b26      	ldr	r3, [pc, #152]	; (10003818 <hw_cfg_pseq_init+0xcc>)
1000377e:	601a      	str	r2, [r3, #0]
10003780:	2200      	movs	r2, #0
10003782:	601a      	str	r2, [r3, #0]
10003784:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10003786:	2110      	movs	r1, #16
10003788:	681a      	ldr	r2, [r3, #0]
1000378a:	4d24      	ldr	r5, [pc, #144]	; (1000381c <hw_cfg_pseq_init+0xd0>)
1000378c:	430a      	orrs	r2, r1
1000378e:	601a      	str	r2, [r3, #0]
10003790:	682b      	ldr	r3, [r5, #0]
10003792:	9300      	str	r3, [sp, #0]
10003794:	2301      	movs	r3, #1
10003796:	602b      	str	r3, [r5, #0]
10003798:	f3ef 8710 	mrs	r7, PRIMASK
1000379c:	b672      	cpsid	i
1000379e:	4c20      	ldr	r4, [pc, #128]	; (10003820 <hw_cfg_pseq_init+0xd4>)
100037a0:	6823      	ldr	r3, [r4, #0]
100037a2:	6826      	ldr	r6, [r4, #0]
100037a4:	42b3      	cmp	r3, r6
100037a6:	d00a      	beq.n	100037be <hw_cfg_pseq_init+0x72>
100037a8:	6823      	ldr	r3, [r4, #0]
100037aa:	429e      	cmp	r6, r3
100037ac:	d007      	beq.n	100037be <hw_cfg_pseq_init+0x72>
100037ae:	6826      	ldr	r6, [r4, #0]
100037b0:	42b3      	cmp	r3, r6
100037b2:	d004      	beq.n	100037be <hw_cfg_pseq_init+0x72>
100037b4:	229e      	movs	r2, #158	; 0x9e
100037b6:	491b      	ldr	r1, [pc, #108]	; (10003824 <hw_cfg_pseq_init+0xd8>)
100037b8:	481b      	ldr	r0, [pc, #108]	; (10003828 <hw_cfg_pseq_init+0xdc>)
100037ba:	4b1c      	ldr	r3, [pc, #112]	; (1000382c <hw_cfg_pseq_init+0xe0>)
100037bc:	4798      	blx	r3
100037be:	f387 8810 	msr	PRIMASK, r7
100037c2:	9b00      	ldr	r3, [sp, #0]
100037c4:	602b      	str	r3, [r5, #0]
100037c6:	682b      	ldr	r3, [r5, #0]
100037c8:	9300      	str	r3, [sp, #0]
100037ca:	2301      	movs	r3, #1
100037cc:	602b      	str	r3, [r5, #0]
100037ce:	f3ef 8310 	mrs	r3, PRIMASK
100037d2:	9301      	str	r3, [sp, #4]
100037d4:	b672      	cpsid	i
100037d6:	6823      	ldr	r3, [r4, #0]
100037d8:	6827      	ldr	r7, [r4, #0]
100037da:	42bb      	cmp	r3, r7
100037dc:	d00a      	beq.n	100037f4 <hw_cfg_pseq_init+0xa8>
100037de:	6823      	ldr	r3, [r4, #0]
100037e0:	429f      	cmp	r7, r3
100037e2:	d007      	beq.n	100037f4 <hw_cfg_pseq_init+0xa8>
100037e4:	6827      	ldr	r7, [r4, #0]
100037e6:	42bb      	cmp	r3, r7
100037e8:	d004      	beq.n	100037f4 <hw_cfg_pseq_init+0xa8>
100037ea:	229e      	movs	r2, #158	; 0x9e
100037ec:	490d      	ldr	r1, [pc, #52]	; (10003824 <hw_cfg_pseq_init+0xd8>)
100037ee:	480e      	ldr	r0, [pc, #56]	; (10003828 <hw_cfg_pseq_init+0xdc>)
100037f0:	4b0e      	ldr	r3, [pc, #56]	; (1000382c <hw_cfg_pseq_init+0xe0>)
100037f2:	4798      	blx	r3
100037f4:	9b01      	ldr	r3, [sp, #4]
100037f6:	f383 8810 	msr	PRIMASK, r3
100037fa:	9b00      	ldr	r3, [sp, #0]
100037fc:	1bbf      	subs	r7, r7, r6
100037fe:	602b      	str	r3, [r5, #0]
10003800:	2f02      	cmp	r7, #2
10003802:	d8ba      	bhi.n	1000377a <hw_cfg_pseq_init+0x2e>
10003804:	bf10      	yield
10003806:	e7de      	b.n	100037c6 <hw_cfg_pseq_init+0x7a>
10003808:	40003000 	.word	0x40003000
1000380c:	000075f5 	.word	0x000075f5
10003810:	00007605 	.word	0x00007605
10003814:	30000030 	.word	0x30000030
10003818:	50008090 	.word	0x50008090
1000381c:	50003020 	.word	0x50003020
10003820:	500080e0 	.word	0x500080e0
10003824:	1000a24d 	.word	0x1000a24d
10003828:	1000a256 	.word	0x1000a256
1000382c:	00006609 	.word	0x00006609

10003830 <hw_cfg_pmu_init>:
10003830:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10003832:	4b1c      	ldr	r3, [pc, #112]	; (100038a4 <hw_cfg_pmu_init+0x74>)
10003834:	681b      	ldr	r3, [r3, #0]
10003836:	2b00      	cmp	r3, #0
10003838:	da1a      	bge.n	10003870 <hw_cfg_pmu_init+0x40>
1000383a:	4d1b      	ldr	r5, [pc, #108]	; (100038a8 <hw_cfg_pmu_init+0x78>)
1000383c:	2230      	movs	r2, #48	; 0x30
1000383e:	2109      	movs	r1, #9
10003840:	4f1a      	ldr	r7, [pc, #104]	; (100038ac <hw_cfg_pmu_init+0x7c>)
10003842:	0028      	movs	r0, r5
10003844:	2480      	movs	r4, #128	; 0x80
10003846:	47b8      	blx	r7
10003848:	0424      	lsls	r4, r4, #16
1000384a:	4304      	orrs	r4, r0
1000384c:	0023      	movs	r3, r4
1000384e:	2230      	movs	r2, #48	; 0x30
10003850:	2109      	movs	r1, #9
10003852:	0028      	movs	r0, r5
10003854:	4e16      	ldr	r6, [pc, #88]	; (100038b0 <hw_cfg_pmu_init+0x80>)
10003856:	47b0      	blx	r6
10003858:	2109      	movs	r1, #9
1000385a:	2230      	movs	r2, #48	; 0x30
1000385c:	0028      	movs	r0, r5
1000385e:	47b8      	blx	r7
10003860:	0001      	movs	r1, r0
10003862:	4284      	cmp	r4, r0
10003864:	d004      	beq.n	10003870 <hw_cfg_pmu_init+0x40>
10003866:	0020      	movs	r0, r4
10003868:	2352      	movs	r3, #82	; 0x52
1000386a:	4a12      	ldr	r2, [pc, #72]	; (100038b4 <hw_cfg_pmu_init+0x84>)
1000386c:	4c12      	ldr	r4, [pc, #72]	; (100038b8 <hw_cfg_pmu_init+0x88>)
1000386e:	47a0      	blx	r4
10003870:	4b0c      	ldr	r3, [pc, #48]	; (100038a4 <hw_cfg_pmu_init+0x74>)
10003872:	681b      	ldr	r3, [r3, #0]
10003874:	049b      	lsls	r3, r3, #18
10003876:	d514      	bpl.n	100038a2 <hw_cfg_pmu_init+0x72>
10003878:	4d0b      	ldr	r5, [pc, #44]	; (100038a8 <hw_cfg_pmu_init+0x78>)
1000387a:	4c10      	ldr	r4, [pc, #64]	; (100038bc <hw_cfg_pmu_init+0x8c>)
1000387c:	2218      	movs	r2, #24
1000387e:	0023      	movs	r3, r4
10003880:	210c      	movs	r1, #12
10003882:	0028      	movs	r0, r5
10003884:	4e0a      	ldr	r6, [pc, #40]	; (100038b0 <hw_cfg_pmu_init+0x80>)
10003886:	47b0      	blx	r6
10003888:	210c      	movs	r1, #12
1000388a:	2218      	movs	r2, #24
1000388c:	0028      	movs	r0, r5
1000388e:	4b07      	ldr	r3, [pc, #28]	; (100038ac <hw_cfg_pmu_init+0x7c>)
10003890:	4798      	blx	r3
10003892:	0001      	movs	r1, r0
10003894:	42a0      	cmp	r0, r4
10003896:	d004      	beq.n	100038a2 <hw_cfg_pmu_init+0x72>
10003898:	0020      	movs	r0, r4
1000389a:	235d      	movs	r3, #93	; 0x5d
1000389c:	4a05      	ldr	r2, [pc, #20]	; (100038b4 <hw_cfg_pmu_init+0x84>)
1000389e:	4c06      	ldr	r4, [pc, #24]	; (100038b8 <hw_cfg_pmu_init+0x88>)
100038a0:	47a0      	blx	r4
100038a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100038a4:	200012c4 	.word	0x200012c4
100038a8:	0003cd78 	.word	0x0003cd78
100038ac:	0000777f 	.word	0x0000777f
100038b0:	0000779f 	.word	0x0000779f
100038b4:	1000a24d 	.word	0x1000a24d
100038b8:	00006641 	.word	0x00006641
100038bc:	0e8c0a74 	.word	0x0e8c0a74

100038c0 <hw_cfg_rif_init>:
100038c0:	4b0f      	ldr	r3, [pc, #60]	; (10003900 <hw_cfg_rif_init+0x40>)
100038c2:	681b      	ldr	r3, [r3, #0]
100038c4:	06db      	lsls	r3, r3, #27
100038c6:	d50b      	bpl.n	100038e0 <hw_cfg_rif_init+0x20>
100038c8:	490e      	ldr	r1, [pc, #56]	; (10003904 <hw_cfg_rif_init+0x44>)
100038ca:	6e0b      	ldr	r3, [r1, #96]	; 0x60
100038cc:	0bda      	lsrs	r2, r3, #15
100038ce:	b2d2      	uxtb	r2, r2
100038d0:	2a7f      	cmp	r2, #127	; 0x7f
100038d2:	d10e      	bne.n	100038f2 <hw_cfg_rif_init+0x32>
100038d4:	4a0c      	ldr	r2, [pc, #48]	; (10003908 <hw_cfg_rif_init+0x48>)
100038d6:	4013      	ands	r3, r2
100038d8:	2280      	movs	r2, #128	; 0x80
100038da:	03d2      	lsls	r2, r2, #15
100038dc:	4313      	orrs	r3, r2
100038de:	660b      	str	r3, [r1, #96]	; 0x60
100038e0:	490a      	ldr	r1, [pc, #40]	; (1000390c <hw_cfg_rif_init+0x4c>)
100038e2:	4a0b      	ldr	r2, [pc, #44]	; (10003910 <hw_cfg_rif_init+0x50>)
100038e4:	680b      	ldr	r3, [r1, #0]
100038e6:	401a      	ands	r2, r3
100038e8:	2398      	movs	r3, #152	; 0x98
100038ea:	011b      	lsls	r3, r3, #4
100038ec:	4313      	orrs	r3, r2
100038ee:	600b      	str	r3, [r1, #0]
100038f0:	4770      	bx	lr
100038f2:	2a80      	cmp	r2, #128	; 0x80
100038f4:	d1f3      	bne.n	100038de <hw_cfg_rif_init+0x1e>
100038f6:	3a41      	subs	r2, #65	; 0x41
100038f8:	4393      	bics	r3, r2
100038fa:	3a32      	subs	r2, #50	; 0x32
100038fc:	e7ee      	b.n	100038dc <hw_cfg_rif_init+0x1c>
100038fe:	46c0      	nop			; (mov r8, r8)
10003900:	200012c4 	.word	0x200012c4
10003904:	50004000 	.word	0x50004000
10003908:	ff807fff 	.word	0xff807fff
1000390c:	500040ac 	.word	0x500040ac
10003910:	fffff01f 	.word	0xfffff01f

10003914 <hw_cfg_mdm_init>:
10003914:	4b02      	ldr	r3, [pc, #8]	; (10003920 <hw_cfg_mdm_init+0xc>)
10003916:	4a03      	ldr	r2, [pc, #12]	; (10003924 <hw_cfg_mdm_init+0x10>)
10003918:	631a      	str	r2, [r3, #48]	; 0x30
1000391a:	4a03      	ldr	r2, [pc, #12]	; (10003928 <hw_cfg_mdm_init+0x14>)
1000391c:	63da      	str	r2, [r3, #60]	; 0x3c
1000391e:	4770      	bx	lr
10003920:	50006000 	.word	0x50006000
10003924:	233828a4 	.word	0x233828a4
10003928:	96328080 	.word	0x96328080

1000392c <hw_cfg_ble_rf_init>:
1000392c:	4904      	ldr	r1, [pc, #16]	; (10003940 <hw_cfg_ble_rf_init+0x14>)
1000392e:	4a05      	ldr	r2, [pc, #20]	; (10003944 <hw_cfg_ble_rf_init+0x18>)
10003930:	680b      	ldr	r3, [r1, #0]
10003932:	401a      	ands	r2, r3
10003934:	23f8      	movs	r3, #248	; 0xf8
10003936:	03db      	lsls	r3, r3, #15
10003938:	4313      	orrs	r3, r2
1000393a:	600b      	str	r3, [r1, #0]
1000393c:	4770      	bx	lr
1000393e:	46c0      	nop			; (mov r8, r8)
10003940:	30000088 	.word	0x30000088
10003944:	ff00ffff 	.word	0xff00ffff

10003948 <hw_cfg_optimize_scan_params>:
10003948:	2301      	movs	r3, #1
1000394a:	b530      	push	{r4, r5, lr}
1000394c:	4d0d      	ldr	r5, [pc, #52]	; (10003984 <hw_cfg_optimize_scan_params+0x3c>)
1000394e:	4c0e      	ldr	r4, [pc, #56]	; (10003988 <hw_cfg_optimize_scan_params+0x40>)
10003950:	602b      	str	r3, [r5, #0]
10003952:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
10003954:	6a23      	ldr	r3, [r4, #32]
10003956:	2900      	cmp	r1, #0
10003958:	d000      	beq.n	1000395c <hw_cfg_optimize_scan_params+0x14>
1000395a:	c10c      	stmia	r1!, {r2, r3}
1000395c:	1e41      	subs	r1, r0, #1
1000395e:	4188      	sbcs	r0, r1
10003960:	490a      	ldr	r1, [pc, #40]	; (1000398c <hw_cfg_optimize_scan_params+0x44>)
10003962:	4240      	negs	r0, r0
10003964:	4008      	ands	r0, r1
10003966:	490a      	ldr	r1, [pc, #40]	; (10003990 <hw_cfg_optimize_scan_params+0x48>)
10003968:	0cd2      	lsrs	r2, r2, #19
1000396a:	04d2      	lsls	r2, r2, #19
1000396c:	1840      	adds	r0, r0, r1
1000396e:	4310      	orrs	r0, r2
10003970:	227c      	movs	r2, #124	; 0x7c
10003972:	4393      	bics	r3, r2
10003974:	3a58      	subs	r2, #88	; 0x58
10003976:	4313      	orrs	r3, r2
10003978:	62e0      	str	r0, [r4, #44]	; 0x2c
1000397a:	6223      	str	r3, [r4, #32]
1000397c:	2300      	movs	r3, #0
1000397e:	602b      	str	r3, [r5, #0]
10003980:	bd30      	pop	{r4, r5, pc}
10003982:	46c0      	nop			; (mov r8, r8)
10003984:	50003018 	.word	0x50003018
10003988:	50006000 	.word	0x50006000
1000398c:	fffffec0 	.word	0xfffffec0
10003990:	00000736 	.word	0x00000736

10003994 <hw_cfg_dynamic_rf_mode_ctrl_reg>:
10003994:	4b01      	ldr	r3, [pc, #4]	; (1000399c <hw_cfg_dynamic_rf_mode_ctrl_reg+0x8>)
10003996:	6018      	str	r0, [r3, #0]
10003998:	4770      	bx	lr
1000399a:	46c0      	nop			; (mov r8, r8)
1000399c:	20015038 	.word	0x20015038

100039a0 <hw_cfg_restore_scan_params>:
100039a0:	2201      	movs	r2, #1
100039a2:	4b05      	ldr	r3, [pc, #20]	; (100039b8 <hw_cfg_restore_scan_params+0x18>)
100039a4:	601a      	str	r2, [r3, #0]
100039a6:	6801      	ldr	r1, [r0, #0]
100039a8:	4a04      	ldr	r2, [pc, #16]	; (100039bc <hw_cfg_restore_scan_params+0x1c>)
100039aa:	62d1      	str	r1, [r2, #44]	; 0x2c
100039ac:	6841      	ldr	r1, [r0, #4]
100039ae:	6211      	str	r1, [r2, #32]
100039b0:	2200      	movs	r2, #0
100039b2:	601a      	str	r2, [r3, #0]
100039b4:	4770      	bx	lr
100039b6:	46c0      	nop			; (mov r8, r8)
100039b8:	50003018 	.word	0x50003018
100039bc:	50006000 	.word	0x50006000

100039c0 <hw_cfg_init>:
100039c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100039c2:	2501      	movs	r5, #1
100039c4:	2400      	movs	r4, #0
100039c6:	4e24      	ldr	r6, [pc, #144]	; (10003a58 <hw_cfg_init+0x98>)
100039c8:	4b24      	ldr	r3, [pc, #144]	; (10003a5c <hw_cfg_init+0x9c>)
100039ca:	6035      	str	r5, [r6, #0]
100039cc:	4798      	blx	r3
100039ce:	6034      	str	r4, [r6, #0]
100039d0:	4e23      	ldr	r6, [pc, #140]	; (10003a60 <hw_cfg_init+0xa0>)
100039d2:	4b24      	ldr	r3, [pc, #144]	; (10003a64 <hw_cfg_init+0xa4>)
100039d4:	6035      	str	r5, [r6, #0]
100039d6:	4798      	blx	r3
100039d8:	6034      	str	r4, [r6, #0]
100039da:	4e23      	ldr	r6, [pc, #140]	; (10003a68 <hw_cfg_init+0xa8>)
100039dc:	4f23      	ldr	r7, [pc, #140]	; (10003a6c <hw_cfg_init+0xac>)
100039de:	4b24      	ldr	r3, [pc, #144]	; (10003a70 <hw_cfg_init+0xb0>)
100039e0:	6035      	str	r5, [r6, #0]
100039e2:	4798      	blx	r3
100039e4:	4b23      	ldr	r3, [pc, #140]	; (10003a74 <hw_cfg_init+0xb4>)
100039e6:	6034      	str	r4, [r6, #0]
100039e8:	603d      	str	r5, [r7, #0]
100039ea:	4798      	blx	r3
100039ec:	4b22      	ldr	r3, [pc, #136]	; (10003a78 <hw_cfg_init+0xb8>)
100039ee:	4798      	blx	r3
100039f0:	42a0      	cmp	r0, r4
100039f2:	d01d      	beq.n	10003a30 <hw_cfg_init+0x70>
100039f4:	4b21      	ldr	r3, [pc, #132]	; (10003a7c <hw_cfg_init+0xbc>)
100039f6:	681b      	ldr	r3, [r3, #0]
100039f8:	b2db      	uxtb	r3, r3
100039fa:	2b13      	cmp	r3, #19
100039fc:	d918      	bls.n	10003a30 <hw_cfg_init+0x70>
100039fe:	4b20      	ldr	r3, [pc, #128]	; (10003a80 <hw_cfg_init+0xc0>)
10003a00:	2214      	movs	r2, #20
10003a02:	601d      	str	r5, [r3, #0]
10003a04:	4d1f      	ldr	r5, [pc, #124]	; (10003a84 <hw_cfg_init+0xc4>)
10003a06:	0021      	movs	r1, r4
10003a08:	002b      	movs	r3, r5
10003a0a:	481f      	ldr	r0, [pc, #124]	; (10003a88 <hw_cfg_init+0xc8>)
10003a0c:	4e1f      	ldr	r6, [pc, #124]	; (10003a8c <hw_cfg_init+0xcc>)
10003a0e:	47b0      	blx	r6
10003a10:	0021      	movs	r1, r4
10003a12:	2214      	movs	r2, #20
10003a14:	481c      	ldr	r0, [pc, #112]	; (10003a88 <hw_cfg_init+0xc8>)
10003a16:	4b1e      	ldr	r3, [pc, #120]	; (10003a90 <hw_cfg_init+0xd0>)
10003a18:	4798      	blx	r3
10003a1a:	0001      	movs	r1, r0
10003a1c:	42a8      	cmp	r0, r5
10003a1e:	d004      	beq.n	10003a2a <hw_cfg_init+0x6a>
10003a20:	2383      	movs	r3, #131	; 0x83
10003a22:	0028      	movs	r0, r5
10003a24:	4a1b      	ldr	r2, [pc, #108]	; (10003a94 <hw_cfg_init+0xd4>)
10003a26:	4c1c      	ldr	r4, [pc, #112]	; (10003a98 <hw_cfg_init+0xd8>)
10003a28:	47a0      	blx	r4
10003a2a:	2300      	movs	r3, #0
10003a2c:	4a14      	ldr	r2, [pc, #80]	; (10003a80 <hw_cfg_init+0xc0>)
10003a2e:	6013      	str	r3, [r2, #0]
10003a30:	2300      	movs	r3, #0
10003a32:	4a1a      	ldr	r2, [pc, #104]	; (10003a9c <hw_cfg_init+0xdc>)
10003a34:	603b      	str	r3, [r7, #0]
10003a36:	8013      	strh	r3, [r2, #0]
10003a38:	4a19      	ldr	r2, [pc, #100]	; (10003aa0 <hw_cfg_init+0xe0>)
10003a3a:	8013      	strh	r3, [r2, #0]
10003a3c:	4a19      	ldr	r2, [pc, #100]	; (10003aa4 <hw_cfg_init+0xe4>)
10003a3e:	8013      	strh	r3, [r2, #0]
10003a40:	4a19      	ldr	r2, [pc, #100]	; (10003aa8 <hw_cfg_init+0xe8>)
10003a42:	8013      	strh	r3, [r2, #0]
10003a44:	4a19      	ldr	r2, [pc, #100]	; (10003aac <hw_cfg_init+0xec>)
10003a46:	8013      	strh	r3, [r2, #0]
10003a48:	4a19      	ldr	r2, [pc, #100]	; (10003ab0 <hw_cfg_init+0xf0>)
10003a4a:	8013      	strh	r3, [r2, #0]
10003a4c:	4a19      	ldr	r2, [pc, #100]	; (10003ab4 <hw_cfg_init+0xf4>)
10003a4e:	8013      	strh	r3, [r2, #0]
10003a50:	4a19      	ldr	r2, [pc, #100]	; (10003ab8 <hw_cfg_init+0xf8>)
10003a52:	8013      	strh	r3, [r2, #0]
10003a54:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10003a56:	46c0      	nop			; (mov r8, r8)
10003a58:	50003020 	.word	0x50003020
10003a5c:	1000374d 	.word	0x1000374d
10003a60:	5000301c 	.word	0x5000301c
10003a64:	10003831 	.word	0x10003831
10003a68:	50003010 	.word	0x50003010
10003a6c:	50003018 	.word	0x50003018
10003a70:	100038c1 	.word	0x100038c1
10003a74:	10003915 	.word	0x10003915
10003a78:	00005dbd 	.word	0x00005dbd
10003a7c:	50006000 	.word	0x50006000
10003a80:	50003014 	.word	0x50003014
10003a84:	073c9e1f 	.word	0x073c9e1f
10003a88:	0003cd80 	.word	0x0003cd80
10003a8c:	0000779f 	.word	0x0000779f
10003a90:	0000777f 	.word	0x0000777f
10003a94:	1000a24d 	.word	0x1000a24d
10003a98:	00006641 	.word	0x00006641
10003a9c:	30008162 	.word	0x30008162
10003aa0:	300081bc 	.word	0x300081bc
10003aa4:	30008216 	.word	0x30008216
10003aa8:	30008270 	.word	0x30008270
10003aac:	300082ca 	.word	0x300082ca
10003ab0:	30008324 	.word	0x30008324
10003ab4:	3000837e 	.word	0x3000837e
10003ab8:	300083d8 	.word	0x300083d8

10003abc <hw_cfg_optimize_rx_scan>:
10003abc:	0002      	movs	r2, r0
10003abe:	b510      	push	{r4, lr}
10003ac0:	281f      	cmp	r0, #31
10003ac2:	d904      	bls.n	10003ace <hw_cfg_optimize_rx_scan+0x12>
10003ac4:	490f      	ldr	r1, [pc, #60]	; (10003b04 <hw_cfg_optimize_rx_scan+0x48>)
10003ac6:	4810      	ldr	r0, [pc, #64]	; (10003b08 <hw_cfg_optimize_rx_scan+0x4c>)
10003ac8:	4b10      	ldr	r3, [pc, #64]	; (10003b0c <hw_cfg_optimize_rx_scan+0x50>)
10003aca:	4798      	blx	r3
10003acc:	bd10      	pop	{r4, pc}
10003ace:	2001      	movs	r0, #1
10003ad0:	4090      	lsls	r0, r2
10003ad2:	490f      	ldr	r1, [pc, #60]	; (10003b10 <hw_cfg_optimize_rx_scan+0x54>)
10003ad4:	680b      	ldr	r3, [r1, #0]
10003ad6:	4318      	orrs	r0, r3
10003ad8:	6008      	str	r0, [r1, #0]
10003ada:	4298      	cmp	r0, r3
10003adc:	d0f6      	beq.n	10003acc <hw_cfg_optimize_rx_scan+0x10>
10003ade:	3801      	subs	r0, #1
10003ae0:	1e42      	subs	r2, r0, #1
10003ae2:	4190      	sbcs	r0, r2
10003ae4:	4a0b      	ldr	r2, [pc, #44]	; (10003b14 <hw_cfg_optimize_rx_scan+0x58>)
10003ae6:	b2c0      	uxtb	r0, r0
10003ae8:	2b00      	cmp	r3, #0
10003aea:	d002      	beq.n	10003af2 <hw_cfg_optimize_rx_scan+0x36>
10003aec:	7811      	ldrb	r1, [r2, #0]
10003aee:	4281      	cmp	r1, r0
10003af0:	d0ec      	beq.n	10003acc <hw_cfg_optimize_rx_scan+0x10>
10003af2:	7010      	strb	r0, [r2, #0]
10003af4:	425a      	negs	r2, r3
10003af6:	4153      	adcs	r3, r2
10003af8:	4907      	ldr	r1, [pc, #28]	; (10003b18 <hw_cfg_optimize_rx_scan+0x5c>)
10003afa:	425b      	negs	r3, r3
10003afc:	4019      	ands	r1, r3
10003afe:	4b07      	ldr	r3, [pc, #28]	; (10003b1c <hw_cfg_optimize_rx_scan+0x60>)
10003b00:	4798      	blx	r3
10003b02:	e7e3      	b.n	10003acc <hw_cfg_optimize_rx_scan+0x10>
10003b04:	1000a28a 	.word	0x1000a28a
10003b08:	1000a260 	.word	0x1000a260
10003b0c:	000066b1 	.word	0x000066b1
10003b10:	20015048 	.word	0x20015048
10003b14:	20015034 	.word	0x20015034
10003b18:	20015040 	.word	0x20015040
10003b1c:	10003949 	.word	0x10003949

10003b20 <hw_cfg_restore_rx_scan>:
10003b20:	b510      	push	{r4, lr}
10003b22:	281f      	cmp	r0, #31
10003b24:	d904      	bls.n	10003b30 <hw_cfg_restore_rx_scan+0x10>
10003b26:	4910      	ldr	r1, [pc, #64]	; (10003b68 <hw_cfg_restore_rx_scan+0x48>)
10003b28:	4810      	ldr	r0, [pc, #64]	; (10003b6c <hw_cfg_restore_rx_scan+0x4c>)
10003b2a:	4b11      	ldr	r3, [pc, #68]	; (10003b70 <hw_cfg_restore_rx_scan+0x50>)
10003b2c:	4798      	blx	r3
10003b2e:	bd10      	pop	{r4, pc}
10003b30:	2301      	movs	r3, #1
10003b32:	4910      	ldr	r1, [pc, #64]	; (10003b74 <hw_cfg_restore_rx_scan+0x54>)
10003b34:	4083      	lsls	r3, r0
10003b36:	680a      	ldr	r2, [r1, #0]
10003b38:	0010      	movs	r0, r2
10003b3a:	4398      	bics	r0, r3
10003b3c:	6008      	str	r0, [r1, #0]
10003b3e:	4290      	cmp	r0, r2
10003b40:	d0f5      	beq.n	10003b2e <hw_cfg_restore_rx_scan+0xe>
10003b42:	2800      	cmp	r0, #0
10003b44:	d103      	bne.n	10003b4e <hw_cfg_restore_rx_scan+0x2e>
10003b46:	480c      	ldr	r0, [pc, #48]	; (10003b78 <hw_cfg_restore_rx_scan+0x58>)
10003b48:	4b0c      	ldr	r3, [pc, #48]	; (10003b7c <hw_cfg_restore_rx_scan+0x5c>)
10003b4a:	4798      	blx	r3
10003b4c:	e7ef      	b.n	10003b2e <hw_cfg_restore_rx_scan+0xe>
10003b4e:	2801      	cmp	r0, #1
10003b50:	d1ed      	bne.n	10003b2e <hw_cfg_restore_rx_scan+0xe>
10003b52:	4b0b      	ldr	r3, [pc, #44]	; (10003b80 <hw_cfg_restore_rx_scan+0x60>)
10003b54:	781a      	ldrb	r2, [r3, #0]
10003b56:	2a00      	cmp	r2, #0
10003b58:	d0e9      	beq.n	10003b2e <hw_cfg_restore_rx_scan+0xe>
10003b5a:	2000      	movs	r0, #0
10003b5c:	7018      	strb	r0, [r3, #0]
10003b5e:	0001      	movs	r1, r0
10003b60:	4b08      	ldr	r3, [pc, #32]	; (10003b84 <hw_cfg_restore_rx_scan+0x64>)
10003b62:	4798      	blx	r3
10003b64:	e7e3      	b.n	10003b2e <hw_cfg_restore_rx_scan+0xe>
10003b66:	46c0      	nop			; (mov r8, r8)
10003b68:	1000a273 	.word	0x1000a273
10003b6c:	1000a260 	.word	0x1000a260
10003b70:	000066b1 	.word	0x000066b1
10003b74:	20015048 	.word	0x20015048
10003b78:	20015040 	.word	0x20015040
10003b7c:	100039a1 	.word	0x100039a1
10003b80:	20015034 	.word	0x20015034
10003b84:	10003949 	.word	0x10003949

10003b88 <pinmux_init>:
10003b88:	22ff      	movs	r2, #255	; 0xff
10003b8a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10003b8c:	4b43      	ldr	r3, [pc, #268]	; (10003c9c <pinmux_init+0x114>)
10003b8e:	0112      	lsls	r2, r2, #4
10003b90:	5899      	ldr	r1, [r3, r2]
10003b92:	4a43      	ldr	r2, [pc, #268]	; (10003ca0 <pinmux_init+0x118>)
10003b94:	2400      	movs	r4, #0
10003b96:	589a      	ldr	r2, [r3, r2]
10003b98:	4b42      	ldr	r3, [pc, #264]	; (10003ca4 <pinmux_init+0x11c>)
10003b9a:	4299      	cmp	r1, r3
10003b9c:	d104      	bne.n	10003ba8 <pinmux_init+0x20>
10003b9e:	4b42      	ldr	r3, [pc, #264]	; (10003ca8 <pinmux_init+0x120>)
10003ba0:	18d4      	adds	r4, r2, r3
10003ba2:	4263      	negs	r3, r4
10003ba4:	415c      	adcs	r4, r3
10003ba6:	0264      	lsls	r4, r4, #9
10003ba8:	4e40      	ldr	r6, [pc, #256]	; (10003cac <pinmux_init+0x124>)
10003baa:	2101      	movs	r1, #1
10003bac:	6833      	ldr	r3, [r6, #0]
10003bae:	091b      	lsrs	r3, r3, #4
10003bb0:	001d      	movs	r5, r3
10003bb2:	400d      	ands	r5, r1
10003bb4:	420b      	tst	r3, r1
10003bb6:	d027      	beq.n	10003c08 <pinmux_init+0x80>
10003bb8:	2280      	movs	r2, #128	; 0x80
10003bba:	000d      	movs	r5, r1
10003bbc:	01d2      	lsls	r2, r2, #7
10003bbe:	4314      	orrs	r4, r2
10003bc0:	2201      	movs	r2, #1
10003bc2:	6833      	ldr	r3, [r6, #0]
10003bc4:	08d9      	lsrs	r1, r3, #3
10003bc6:	4211      	tst	r1, r2
10003bc8:	d028      	beq.n	10003c1c <pinmux_init+0x94>
10003bca:	0b5b      	lsrs	r3, r3, #13
10003bcc:	4213      	tst	r3, r2
10003bce:	d022      	beq.n	10003c16 <pinmux_init+0x8e>
10003bd0:	4837      	ldr	r0, [pc, #220]	; (10003cb0 <pinmux_init+0x128>)
10003bd2:	4b38      	ldr	r3, [pc, #224]	; (10003cb4 <pinmux_init+0x12c>)
10003bd4:	4798      	blx	r3
10003bd6:	2211      	movs	r2, #17
10003bd8:	2500      	movs	r5, #0
10003bda:	4314      	orrs	r4, r2
10003bdc:	6833      	ldr	r3, [r6, #0]
10003bde:	05db      	lsls	r3, r3, #23
10003be0:	d529      	bpl.n	10003c36 <pinmux_init+0xae>
10003be2:	2d00      	cmp	r5, #0
10003be4:	d13a      	bne.n	10003c5c <pinmux_init+0xd4>
10003be6:	2240      	movs	r2, #64	; 0x40
10003be8:	4b33      	ldr	r3, [pc, #204]	; (10003cb8 <pinmux_init+0x130>)
10003bea:	4322      	orrs	r2, r4
10003bec:	429a      	cmp	r2, r3
10003bee:	d838      	bhi.n	10003c62 <pinmux_init+0xda>
10003bf0:	4b32      	ldr	r3, [pc, #200]	; (10003cbc <pinmux_init+0x134>)
10003bf2:	18d0      	adds	r0, r2, r3
10003bf4:	280a      	cmp	r0, #10
10003bf6:	d843      	bhi.n	10003c80 <pinmux_init+0xf8>
10003bf8:	f005 fafe 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10003bfc:	42424249 	.word	0x42424249
10003c00:	42424242 	.word	0x42424242
10003c04:	314b      	.short	0x314b
10003c06:	47          	.byte	0x47
10003c07:	00          	.byte	0x00
10003c08:	482d      	ldr	r0, [pc, #180]	; (10003cc0 <pinmux_init+0x138>)
10003c0a:	4b2a      	ldr	r3, [pc, #168]	; (10003cb4 <pinmux_init+0x12c>)
10003c0c:	4798      	blx	r3
10003c0e:	2280      	movs	r2, #128	; 0x80
10003c10:	0192      	lsls	r2, r2, #6
10003c12:	4314      	orrs	r4, r2
10003c14:	e7d4      	b.n	10003bc0 <pinmux_init+0x38>
10003c16:	2219      	movs	r2, #25
10003c18:	4314      	orrs	r4, r2
10003c1a:	e7df      	b.n	10003bdc <pinmux_init+0x54>
10003c1c:	0b9b      	lsrs	r3, r3, #14
10003c1e:	001d      	movs	r5, r3
10003c20:	4924      	ldr	r1, [pc, #144]	; (10003cb4 <pinmux_init+0x12c>)
10003c22:	4828      	ldr	r0, [pc, #160]	; (10003cc4 <pinmux_init+0x13c>)
10003c24:	4015      	ands	r5, r2
10003c26:	4213      	tst	r3, r2
10003c28:	d002      	beq.n	10003c30 <pinmux_init+0xa8>
10003c2a:	4788      	blx	r1
10003c2c:	221b      	movs	r2, #27
10003c2e:	e7d3      	b.n	10003bd8 <pinmux_init+0x50>
10003c30:	4788      	blx	r1
10003c32:	221a      	movs	r2, #26
10003c34:	e7f0      	b.n	10003c18 <pinmux_init+0x90>
10003c36:	4b1f      	ldr	r3, [pc, #124]	; (10003cb4 <pinmux_init+0x12c>)
10003c38:	4823      	ldr	r0, [pc, #140]	; (10003cc8 <pinmux_init+0x140>)
10003c3a:	4798      	blx	r3
10003c3c:	2280      	movs	r2, #128	; 0x80
10003c3e:	491e      	ldr	r1, [pc, #120]	; (10003cb8 <pinmux_init+0x130>)
10003c40:	4b22      	ldr	r3, [pc, #136]	; (10003ccc <pinmux_init+0x144>)
10003c42:	4322      	orrs	r2, r4
10003c44:	428a      	cmp	r2, r1
10003c46:	d126      	bne.n	10003c96 <pinmux_init+0x10e>
10003c48:	4921      	ldr	r1, [pc, #132]	; (10003cd0 <pinmux_init+0x148>)
10003c4a:	4822      	ldr	r0, [pc, #136]	; (10003cd4 <pinmux_init+0x14c>)
10003c4c:	4c19      	ldr	r4, [pc, #100]	; (10003cb4 <pinmux_init+0x12c>)
10003c4e:	47a0      	blx	r4
10003c50:	2299      	movs	r2, #153	; 0x99
10003c52:	4921      	ldr	r1, [pc, #132]	; (10003cd8 <pinmux_init+0x150>)
10003c54:	4821      	ldr	r0, [pc, #132]	; (10003cdc <pinmux_init+0x154>)
10003c56:	4b22      	ldr	r3, [pc, #136]	; (10003ce0 <pinmux_init+0x158>)
10003c58:	0052      	lsls	r2, r2, #1
10003c5a:	4798      	blx	r3
10003c5c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10003c5e:	4b21      	ldr	r3, [pc, #132]	; (10003ce4 <pinmux_init+0x15c>)
10003c60:	e7f2      	b.n	10003c48 <pinmux_init+0xc0>
10003c62:	4921      	ldr	r1, [pc, #132]	; (10003ce8 <pinmux_init+0x160>)
10003c64:	4b21      	ldr	r3, [pc, #132]	; (10003cec <pinmux_init+0x164>)
10003c66:	428a      	cmp	r2, r1
10003c68:	d0ee      	beq.n	10003c48 <pinmux_init+0xc0>
10003c6a:	4b1f      	ldr	r3, [pc, #124]	; (10003ce8 <pinmux_init+0x160>)
10003c6c:	429a      	cmp	r2, r3
10003c6e:	d809      	bhi.n	10003c84 <pinmux_init+0xfc>
10003c70:	491f      	ldr	r1, [pc, #124]	; (10003cf0 <pinmux_init+0x168>)
10003c72:	4b20      	ldr	r3, [pc, #128]	; (10003cf4 <pinmux_init+0x16c>)
10003c74:	428a      	cmp	r2, r1
10003c76:	d0e7      	beq.n	10003c48 <pinmux_init+0xc0>
10003c78:	491f      	ldr	r1, [pc, #124]	; (10003cf8 <pinmux_init+0x170>)
10003c7a:	4b20      	ldr	r3, [pc, #128]	; (10003cfc <pinmux_init+0x174>)
10003c7c:	428a      	cmp	r2, r1
10003c7e:	d0e3      	beq.n	10003c48 <pinmux_init+0xc0>
10003c80:	4b1f      	ldr	r3, [pc, #124]	; (10003d00 <pinmux_init+0x178>)
10003c82:	e7e1      	b.n	10003c48 <pinmux_init+0xc0>
10003c84:	491f      	ldr	r1, [pc, #124]	; (10003d04 <pinmux_init+0x17c>)
10003c86:	4b20      	ldr	r3, [pc, #128]	; (10003d08 <pinmux_init+0x180>)
10003c88:	e7f8      	b.n	10003c7c <pinmux_init+0xf4>
10003c8a:	4b20      	ldr	r3, [pc, #128]	; (10003d0c <pinmux_init+0x184>)
10003c8c:	e7dc      	b.n	10003c48 <pinmux_init+0xc0>
10003c8e:	4b20      	ldr	r3, [pc, #128]	; (10003d10 <pinmux_init+0x188>)
10003c90:	e7da      	b.n	10003c48 <pinmux_init+0xc0>
10003c92:	4b20      	ldr	r3, [pc, #128]	; (10003d14 <pinmux_init+0x18c>)
10003c94:	e7d8      	b.n	10003c48 <pinmux_init+0xc0>
10003c96:	428a      	cmp	r2, r1
10003c98:	d8e7      	bhi.n	10003c6a <pinmux_init+0xe2>
10003c9a:	e7a9      	b.n	10003bf0 <pinmux_init+0x68>
10003c9c:	40003000 	.word	0x40003000
10003ca0:	00000ff4 	.word	0x00000ff4
10003ca4:	5379646e 	.word	0x5379646e
10003ca8:	9a870000 	.word	0x9a870000
10003cac:	200012c4 	.word	0x200012c4
10003cb0:	1000a300 	.word	0x1000a300
10003cb4:	000066b1 	.word	0x000066b1
10003cb8:	00002299 	.word	0x00002299
10003cbc:	ffffddaf 	.word	0xffffddaf
10003cc0:	1000a2ea 	.word	0x1000a2ea
10003cc4:	1000a318 	.word	0x1000a318
10003cc8:	1000a333 	.word	0x1000a333
10003ccc:	1000a2ba 	.word	0x1000a2ba
10003cd0:	1000a351 	.word	0x1000a351
10003cd4:	1000a3a1 	.word	0x1000a3a1
10003cd8:	1000a467 	.word	0x1000a467
10003cdc:	1000b4d2 	.word	0x1000b4d2
10003ce0:	00006609 	.word	0x00006609
10003ce4:	1000a2d8 	.word	0x1000a2d8
10003ce8:	00004259 	.word	0x00004259
10003cec:	1000a2de 	.word	0x1000a2de
10003cf0:	0000229a 	.word	0x0000229a
10003cf4:	1000a2d2 	.word	0x1000a2d2
10003cf8:	0000229b 	.word	0x0000229b
10003cfc:	1000a2cc 	.word	0x1000a2cc
10003d00:	1000a2a2 	.word	0x1000a2a2
10003d04:	00004299 	.word	0x00004299
10003d08:	1000a2e4 	.word	0x1000a2e4
10003d0c:	1000a2c0 	.word	0x1000a2c0
10003d10:	1000a2c6 	.word	0x1000a2c6
10003d14:	1000a2b4 	.word	0x1000a2b4

10003d18 <pinmux_get_platform_info>:
10003d18:	2010      	movs	r0, #16
10003d1a:	4770      	bx	lr

10003d1c <rf_set_txpwr_maximum_val>:
10003d1c:	b510      	push	{r4, lr}
10003d1e:	4c03      	ldr	r4, [pc, #12]	; (10003d2c <rf_set_txpwr_maximum_val+0x10>)
10003d20:	2100      	movs	r1, #0
10003d22:	69a3      	ldr	r3, [r4, #24]
10003d24:	4798      	blx	r3
10003d26:	342d      	adds	r4, #45	; 0x2d
10003d28:	7020      	strb	r0, [r4, #0]
10003d2a:	bd10      	pop	{r4, pc}
10003d2c:	20000ffc 	.word	0x20000ffc

10003d30 <rf_set_cs_txpwr_val>:
10003d30:	b510      	push	{r4, lr}
10003d32:	4b08      	ldr	r3, [pc, #32]	; (10003d54 <rf_set_cs_txpwr_val+0x24>)
10003d34:	0004      	movs	r4, r0
10003d36:	0008      	movs	r0, r1
10003d38:	699b      	ldr	r3, [r3, #24]
10003d3a:	2100      	movs	r1, #0
10003d3c:	4798      	blx	r3
10003d3e:	225a      	movs	r2, #90	; 0x5a
10003d40:	21ff      	movs	r1, #255	; 0xff
10003d42:	4362      	muls	r2, r4
10003d44:	4b04      	ldr	r3, [pc, #16]	; (10003d58 <rf_set_cs_txpwr_val+0x28>)
10003d46:	18d2      	adds	r2, r2, r3
10003d48:	8813      	ldrh	r3, [r2, #0]
10003d4a:	438b      	bics	r3, r1
10003d4c:	4303      	orrs	r3, r0
10003d4e:	b29b      	uxth	r3, r3
10003d50:	8013      	strh	r3, [r2, #0]
10003d52:	bd10      	pop	{r4, pc}
10003d54:	20000ffc 	.word	0x20000ffc
10003d58:	30008166 	.word	0x30008166

10003d5c <watchdog_init_constructor>:
10003d5c:	2202      	movs	r2, #2
10003d5e:	4b06      	ldr	r3, [pc, #24]	; (10003d78 <watchdog_init_constructor+0x1c>)
10003d60:	6919      	ldr	r1, [r3, #16]
10003d62:	4211      	tst	r1, r2
10003d64:	d003      	beq.n	10003d6e <watchdog_init_constructor+0x12>
10003d66:	2001      	movs	r0, #1
10003d68:	4904      	ldr	r1, [pc, #16]	; (10003d7c <watchdog_init_constructor+0x20>)
10003d6a:	7008      	strb	r0, [r1, #0]
10003d6c:	611a      	str	r2, [r3, #16]
10003d6e:	4b04      	ldr	r3, [pc, #16]	; (10003d80 <watchdog_init_constructor+0x24>)
10003d70:	4a04      	ldr	r2, [pc, #16]	; (10003d84 <watchdog_init_constructor+0x28>)
10003d72:	601a      	str	r2, [r3, #0]
10003d74:	4770      	bx	lr
10003d76:	46c0      	nop			; (mov r8, r8)
10003d78:	4001f000 	.word	0x4001f000
10003d7c:	2001504c 	.word	0x2001504c
10003d80:	20000000 	.word	0x20000000
10003d84:	20014501 	.word	0x20014501

10003d88 <ext_flash_identify>:
10003d88:	4b15      	ldr	r3, [pc, #84]	; (10003de0 <ext_flash_identify+0x58>)
10003d8a:	6819      	ldr	r1, [r3, #0]
10003d8c:	b2ca      	uxtb	r2, r1
10003d8e:	0c09      	lsrs	r1, r1, #16
10003d90:	2918      	cmp	r1, #24
10003d92:	d900      	bls.n	10003d96 <ext_flash_identify+0xe>
10003d94:	2118      	movs	r1, #24
10003d96:	4b13      	ldr	r3, [pc, #76]	; (10003de4 <ext_flash_identify+0x5c>)
10003d98:	2a20      	cmp	r2, #32
10003d9a:	d108      	bne.n	10003dae <ext_flash_identify+0x26>
10003d9c:	3a1c      	subs	r2, #28
10003d9e:	721a      	strb	r2, [r3, #8]
10003da0:	2201      	movs	r2, #1
10003da2:	408a      	lsls	r2, r1
10003da4:	605a      	str	r2, [r3, #4]
10003da6:	7a1b      	ldrb	r3, [r3, #8]
10003da8:	7003      	strb	r3, [r0, #0]
10003daa:	2000      	movs	r0, #0
10003dac:	4770      	bx	lr
10003dae:	2ac2      	cmp	r2, #194	; 0xc2
10003db0:	d101      	bne.n	10003db6 <ext_flash_identify+0x2e>
10003db2:	3abd      	subs	r2, #189	; 0xbd
10003db4:	e7f3      	b.n	10003d9e <ext_flash_identify+0x16>
10003db6:	2ac8      	cmp	r2, #200	; 0xc8
10003db8:	d101      	bne.n	10003dbe <ext_flash_identify+0x36>
10003dba:	3ac1      	subs	r2, #193	; 0xc1
10003dbc:	e7ef      	b.n	10003d9e <ext_flash_identify+0x16>
10003dbe:	2aef      	cmp	r2, #239	; 0xef
10003dc0:	d101      	bne.n	10003dc6 <ext_flash_identify+0x3e>
10003dc2:	3ae9      	subs	r2, #233	; 0xe9
10003dc4:	e7eb      	b.n	10003d9e <ext_flash_identify+0x16>
10003dc6:	2aa1      	cmp	r2, #161	; 0xa1
10003dc8:	d101      	bne.n	10003dce <ext_flash_identify+0x46>
10003dca:	3a99      	subs	r2, #153	; 0x99
10003dcc:	e7e7      	b.n	10003d9e <ext_flash_identify+0x16>
10003dce:	2a85      	cmp	r2, #133	; 0x85
10003dd0:	d101      	bne.n	10003dd6 <ext_flash_identify+0x4e>
10003dd2:	3a7c      	subs	r2, #124	; 0x7c
10003dd4:	e7e3      	b.n	10003d9e <ext_flash_identify+0x16>
10003dd6:	2ac4      	cmp	r2, #196	; 0xc4
10003dd8:	d1e2      	bne.n	10003da0 <ext_flash_identify+0x18>
10003dda:	3aba      	subs	r2, #186	; 0xba
10003ddc:	e7df      	b.n	10003d9e <ext_flash_identify+0x16>
10003dde:	46c0      	nop			; (mov r8, r8)
10003de0:	200012b4 	.word	0x200012b4
10003de4:	20015050 	.word	0x20015050

10003de8 <ext_flash_enable_AHB_writes>:
10003de8:	2302      	movs	r3, #2
10003dea:	2804      	cmp	r0, #4
10003dec:	d009      	beq.n	10003e02 <ext_flash_enable_AHB_writes+0x1a>
10003dee:	4b08      	ldr	r3, [pc, #32]	; (10003e10 <ext_flash_enable_AHB_writes+0x28>)
10003df0:	7a5a      	ldrb	r2, [r3, #9]
10003df2:	2302      	movs	r3, #2
10003df4:	429a      	cmp	r2, r3
10003df6:	d104      	bne.n	10003e02 <ext_flash_enable_AHB_writes+0x1a>
10003df8:	3806      	subs	r0, #6
10003dfa:	3330      	adds	r3, #48	; 0x30
10003dfc:	2804      	cmp	r0, #4
10003dfe:	d900      	bls.n	10003e02 <ext_flash_enable_AHB_writes+0x1a>
10003e00:	3306      	adds	r3, #6
10003e02:	4a04      	ldr	r2, [pc, #16]	; (10003e14 <ext_flash_enable_AHB_writes+0x2c>)
10003e04:	021b      	lsls	r3, r3, #8
10003e06:	4313      	orrs	r3, r2
10003e08:	4a03      	ldr	r2, [pc, #12]	; (10003e18 <ext_flash_enable_AHB_writes+0x30>)
10003e0a:	6153      	str	r3, [r2, #20]
10003e0c:	4770      	bx	lr
10003e0e:	46c0      	nop			; (mov r8, r8)
10003e10:	20015050 	.word	0x20015050
10003e14:	00050006 	.word	0x00050006
10003e18:	4000f000 	.word	0x4000f000

10003e1c <ext_flash_inval_cache>:
10003e1c:	2280      	movs	r2, #128	; 0x80
10003e1e:	4b03      	ldr	r3, [pc, #12]	; (10003e2c <ext_flash_inval_cache+0x10>)
10003e20:	04d2      	lsls	r2, r2, #19
10003e22:	6919      	ldr	r1, [r3, #16]
10003e24:	430a      	orrs	r2, r1
10003e26:	611a      	str	r2, [r3, #16]
10003e28:	6119      	str	r1, [r3, #16]
10003e2a:	4770      	bx	lr
10003e2c:	4000f000 	.word	0x4000f000

10003e30 <ext_flash_erase>:
10003e30:	b570      	push	{r4, r5, r6, lr}
10003e32:	4c12      	ldr	r4, [pc, #72]	; (10003e7c <ext_flash_erase+0x4c>)
10003e34:	2312      	movs	r3, #18
10003e36:	7a25      	ldrb	r5, [r4, #8]
10003e38:	4285      	cmp	r5, r0
10003e3a:	d114      	bne.n	10003e66 <ext_flash_erase+0x36>
10003e3c:	6865      	ldr	r5, [r4, #4]
10003e3e:	1888      	adds	r0, r1, r2
10003e40:	42a8      	cmp	r0, r5
10003e42:	d810      	bhi.n	10003e66 <ext_flash_erase+0x36>
10003e44:	430a      	orrs	r2, r1
10003e46:	0512      	lsls	r2, r2, #20
10003e48:	d10d      	bne.n	10003e66 <ext_flash_erase+0x36>
10003e4a:	4d0d      	ldr	r5, [pc, #52]	; (10003e80 <ext_flash_erase+0x50>)
10003e4c:	3b11      	subs	r3, #17
10003e4e:	602b      	str	r3, [r5, #0]
10003e50:	4a0c      	ldr	r2, [pc, #48]	; (10003e84 <ext_flash_erase+0x54>)
10003e52:	4b0d      	ldr	r3, [pc, #52]	; (10003e88 <ext_flash_erase+0x58>)
10003e54:	6153      	str	r3, [r2, #20]
10003e56:	4288      	cmp	r0, r1
10003e58:	d807      	bhi.n	10003e6a <ext_flash_erase+0x3a>
10003e5a:	4b0c      	ldr	r3, [pc, #48]	; (10003e8c <ext_flash_erase+0x5c>)
10003e5c:	6153      	str	r3, [r2, #20]
10003e5e:	4b0c      	ldr	r3, [pc, #48]	; (10003e90 <ext_flash_erase+0x60>)
10003e60:	4798      	blx	r3
10003e62:	2300      	movs	r3, #0
10003e64:	602b      	str	r3, [r5, #0]
10003e66:	0018      	movs	r0, r3
10003e68:	bd70      	pop	{r4, r5, r6, pc}
10003e6a:	6823      	ldr	r3, [r4, #0]
10003e6c:	4e09      	ldr	r6, [pc, #36]	; (10003e94 <ext_flash_erase+0x64>)
10003e6e:	199b      	adds	r3, r3, r6
10003e70:	6019      	str	r1, [r3, #0]
10003e72:	2380      	movs	r3, #128	; 0x80
10003e74:	015b      	lsls	r3, r3, #5
10003e76:	18c9      	adds	r1, r1, r3
10003e78:	e7ed      	b.n	10003e56 <ext_flash_erase+0x26>
10003e7a:	46c0      	nop			; (mov r8, r8)
10003e7c:	20015050 	.word	0x20015050
10003e80:	4000303c 	.word	0x4000303c
10003e84:	4000f000 	.word	0x4000f000
10003e88:	20050006 	.word	0x20050006
10003e8c:	00050004 	.word	0x00050004
10003e90:	10003e1d 	.word	0x10003e1d
10003e94:	00fffffc 	.word	0x00fffffc

10003e98 <ext_flash_cmp>:
10003e98:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10003e9a:	001c      	movs	r4, r3
10003e9c:	4b2b      	ldr	r3, [pc, #172]	; (10003f4c <ext_flash_cmp+0xb4>)
10003e9e:	9001      	str	r0, [sp, #4]
10003ea0:	000d      	movs	r5, r1
10003ea2:	9e01      	ldr	r6, [sp, #4]
10003ea4:	0011      	movs	r1, r2
10003ea6:	7a1a      	ldrb	r2, [r3, #8]
10003ea8:	2012      	movs	r0, #18
10003eaa:	42b2      	cmp	r2, r6
10003eac:	d11d      	bne.n	10003eea <ext_flash_cmp+0x52>
10003eae:	685e      	ldr	r6, [r3, #4]
10003eb0:	190a      	adds	r2, r1, r4
10003eb2:	42b2      	cmp	r2, r6
10003eb4:	d819      	bhi.n	10003eea <ext_flash_cmp+0x52>
10003eb6:	681b      	ldr	r3, [r3, #0]
10003eb8:	18cb      	adds	r3, r1, r3
10003eba:	9300      	str	r3, [sp, #0]
10003ebc:	2300      	movs	r3, #0
10003ebe:	0018      	movs	r0, r3
10003ec0:	429c      	cmp	r4, r3
10003ec2:	d103      	bne.n	10003ecc <ext_flash_cmp+0x34>
10003ec4:	2800      	cmp	r0, #0
10003ec6:	d113      	bne.n	10003ef0 <ext_flash_cmp+0x58>
10003ec8:	6028      	str	r0, [r5, #0]
10003eca:	e00e      	b.n	10003eea <ext_flash_cmp+0x52>
10003ecc:	9a08      	ldr	r2, [sp, #32]
10003ece:	9e00      	ldr	r6, [sp, #0]
10003ed0:	5cd2      	ldrb	r2, [r2, r3]
10003ed2:	5cf6      	ldrb	r6, [r6, r3]
10003ed4:	1b97      	subs	r7, r2, r6
10003ed6:	42b2      	cmp	r2, r6
10003ed8:	d008      	beq.n	10003eec <ext_flash_cmp+0x54>
10003eda:	2800      	cmp	r0, #0
10003edc:	d100      	bne.n	10003ee0 <ext_flash_cmp+0x48>
10003ede:	0038      	movs	r0, r7
10003ee0:	4332      	orrs	r2, r6
10003ee2:	4296      	cmp	r6, r2
10003ee4:	d002      	beq.n	10003eec <ext_flash_cmp+0x54>
10003ee6:	6028      	str	r0, [r5, #0]
10003ee8:	2000      	movs	r0, #0
10003eea:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
10003eec:	3301      	adds	r3, #1
10003eee:	e7e7      	b.n	10003ec0 <ext_flash_cmp+0x28>
10003ef0:	0022      	movs	r2, r4
10003ef2:	4817      	ldr	r0, [pc, #92]	; (10003f50 <ext_flash_cmp+0xb8>)
10003ef4:	4b17      	ldr	r3, [pc, #92]	; (10003f54 <ext_flash_cmp+0xbc>)
10003ef6:	4798      	blx	r3
10003ef8:	0027      	movs	r7, r4
10003efa:	2c40      	cmp	r4, #64	; 0x40
10003efc:	d900      	bls.n	10003f00 <ext_flash_cmp+0x68>
10003efe:	2740      	movs	r7, #64	; 0x40
10003f00:	2600      	movs	r6, #0
10003f02:	42b7      	cmp	r7, r6
10003f04:	dc17      	bgt.n	10003f36 <ext_flash_cmp+0x9e>
10003f06:	42bc      	cmp	r4, r7
10003f08:	d91c      	bls.n	10003f44 <ext_flash_cmp+0xac>
10003f0a:	4813      	ldr	r0, [pc, #76]	; (10003f58 <ext_flash_cmp+0xc0>)
10003f0c:	4b13      	ldr	r3, [pc, #76]	; (10003f5c <ext_flash_cmp+0xc4>)
10003f0e:	4798      	blx	r3
10003f10:	2301      	movs	r3, #1
10003f12:	4e13      	ldr	r6, [pc, #76]	; (10003f60 <ext_flash_cmp+0xc8>)
10003f14:	6033      	str	r3, [r6, #0]
10003f16:	9801      	ldr	r0, [sp, #4]
10003f18:	4b12      	ldr	r3, [pc, #72]	; (10003f64 <ext_flash_cmp+0xcc>)
10003f1a:	4798      	blx	r3
10003f1c:	0022      	movs	r2, r4
10003f1e:	9908      	ldr	r1, [sp, #32]
10003f20:	4b11      	ldr	r3, [pc, #68]	; (10003f68 <ext_flash_cmp+0xd0>)
10003f22:	9800      	ldr	r0, [sp, #0]
10003f24:	4798      	blx	r3
10003f26:	4b11      	ldr	r3, [pc, #68]	; (10003f6c <ext_flash_cmp+0xd4>)
10003f28:	4a11      	ldr	r2, [pc, #68]	; (10003f70 <ext_flash_cmp+0xd8>)
10003f2a:	615a      	str	r2, [r3, #20]
10003f2c:	4b11      	ldr	r3, [pc, #68]	; (10003f74 <ext_flash_cmp+0xdc>)
10003f2e:	4798      	blx	r3
10003f30:	2000      	movs	r0, #0
10003f32:	6030      	str	r0, [r6, #0]
10003f34:	e7c8      	b.n	10003ec8 <ext_flash_cmp+0x30>
10003f36:	9b08      	ldr	r3, [sp, #32]
10003f38:	480f      	ldr	r0, [pc, #60]	; (10003f78 <ext_flash_cmp+0xe0>)
10003f3a:	5d99      	ldrb	r1, [r3, r6]
10003f3c:	4b05      	ldr	r3, [pc, #20]	; (10003f54 <ext_flash_cmp+0xbc>)
10003f3e:	4798      	blx	r3
10003f40:	3601      	adds	r6, #1
10003f42:	e7de      	b.n	10003f02 <ext_flash_cmp+0x6a>
10003f44:	200a      	movs	r0, #10
10003f46:	4b0d      	ldr	r3, [pc, #52]	; (10003f7c <ext_flash_cmp+0xe4>)
10003f48:	e7e1      	b.n	10003f0e <ext_flash_cmp+0x76>
10003f4a:	46c0      	nop			; (mov r8, r8)
10003f4c:	20015050 	.word	0x20015050
10003f50:	1000a470 	.word	0x1000a470
10003f54:	0002fccd 	.word	0x0002fccd
10003f58:	1000a497 	.word	0x1000a497
10003f5c:	0002fdb1 	.word	0x0002fdb1
10003f60:	4000303c 	.word	0x4000303c
10003f64:	10003de9 	.word	0x10003de9
10003f68:	00005821 	.word	0x00005821
10003f6c:	4000f000 	.word	0x4000f000
10003f70:	00050004 	.word	0x00050004
10003f74:	10003e1d 	.word	0x10003e1d
10003f78:	1000a491 	.word	0x1000a491
10003f7c:	0002fcfd 	.word	0x0002fcfd

10003f80 <ext_flash_write>:
10003f80:	b5f0      	push	{r4, r5, r6, r7, lr}
10003f82:	b089      	sub	sp, #36	; 0x24
10003f84:	001e      	movs	r6, r3
10003f86:	af02      	add	r7, sp, #8
10003f88:	4b4b      	ldr	r3, [pc, #300]	; (100040b8 <ext_flash_write+0x138>)
10003f8a:	617a      	str	r2, [r7, #20]
10003f8c:	7a1d      	ldrb	r5, [r3, #8]
10003f8e:	685a      	ldr	r2, [r3, #4]
10003f90:	4285      	cmp	r5, r0
10003f92:	d103      	bne.n	10003f9c <ext_flash_write+0x1c>
10003f94:	697c      	ldr	r4, [r7, #20]
10003f96:	190c      	adds	r4, r1, r4
10003f98:	4294      	cmp	r4, r2
10003f9a:	d90a      	bls.n	10003fb2 <ext_flash_write+0x32>
10003f9c:	9201      	str	r2, [sp, #4]
10003f9e:	9500      	str	r5, [sp, #0]
10003fa0:	0003      	movs	r3, r0
10003fa2:	697a      	ldr	r2, [r7, #20]
10003fa4:	4845      	ldr	r0, [pc, #276]	; (100040bc <ext_flash_write+0x13c>)
10003fa6:	4c46      	ldr	r4, [pc, #280]	; (100040c0 <ext_flash_write+0x140>)
10003fa8:	47a0      	blx	r4
10003faa:	2012      	movs	r0, #18
10003fac:	46bd      	mov	sp, r7
10003fae:	b007      	add	sp, #28
10003fb0:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003fb2:	2000      	movs	r0, #0
10003fb4:	697a      	ldr	r2, [r7, #20]
10003fb6:	4282      	cmp	r2, r0
10003fb8:	d0f8      	beq.n	10003fac <ext_flash_write+0x2c>
10003fba:	2201      	movs	r2, #1
10003fbc:	681c      	ldr	r4, [r3, #0]
10003fbe:	4b41      	ldr	r3, [pc, #260]	; (100040c4 <ext_flash_write+0x144>)
10003fc0:	0028      	movs	r0, r5
10003fc2:	601a      	str	r2, [r3, #0]
10003fc4:	4b40      	ldr	r3, [pc, #256]	; (100040c8 <ext_flash_write+0x148>)
10003fc6:	190c      	adds	r4, r1, r4
10003fc8:	4798      	blx	r3
10003fca:	2d09      	cmp	r5, #9
10003fcc:	d13a      	bne.n	10004044 <ext_flash_write+0xc4>
10003fce:	466b      	mov	r3, sp
10003fd0:	60fb      	str	r3, [r7, #12]
10003fd2:	0e23      	lsrs	r3, r4, #24
10003fd4:	60bb      	str	r3, [r7, #8]
10003fd6:	0e33      	lsrs	r3, r6, #24
10003fd8:	0e32      	lsrs	r2, r6, #24
10003fda:	607b      	str	r3, [r7, #4]
10003fdc:	0e23      	lsrs	r3, r4, #24
10003fde:	1a9b      	subs	r3, r3, r2
10003fe0:	425a      	negs	r2, r3
10003fe2:	4153      	adcs	r3, r2
10003fe4:	466a      	mov	r2, sp
10003fe6:	021b      	lsls	r3, r3, #8
10003fe8:	1ad3      	subs	r3, r2, r3
10003fea:	469d      	mov	sp, r3
10003fec:	ab02      	add	r3, sp, #8
10003fee:	613b      	str	r3, [r7, #16]
10003ff0:	25ff      	movs	r5, #255	; 0xff
10003ff2:	2380      	movs	r3, #128	; 0x80
10003ff4:	4025      	ands	r5, r4
10003ff6:	005b      	lsls	r3, r3, #1
10003ff8:	1b5d      	subs	r5, r3, r5
10003ffa:	697b      	ldr	r3, [r7, #20]
10003ffc:	429d      	cmp	r5, r3
10003ffe:	d900      	bls.n	10004002 <ext_flash_write+0x82>
10004000:	001d      	movs	r5, r3
10004002:	68bb      	ldr	r3, [r7, #8]
10004004:	6879      	ldr	r1, [r7, #4]
10004006:	0032      	movs	r2, r6
10004008:	428b      	cmp	r3, r1
1000400a:	d105      	bne.n	10004018 <ext_flash_write+0x98>
1000400c:	002a      	movs	r2, r5
1000400e:	0031      	movs	r1, r6
10004010:	6938      	ldr	r0, [r7, #16]
10004012:	4b2e      	ldr	r3, [pc, #184]	; (100040cc <ext_flash_write+0x14c>)
10004014:	4798      	blx	r3
10004016:	693a      	ldr	r2, [r7, #16]
10004018:	0020      	movs	r0, r4
1000401a:	4b2d      	ldr	r3, [pc, #180]	; (100040d0 <ext_flash_write+0x150>)
1000401c:	0029      	movs	r1, r5
1000401e:	4798      	blx	r3
10004020:	697b      	ldr	r3, [r7, #20]
10004022:	1964      	adds	r4, r4, r5
10004024:	1b5b      	subs	r3, r3, r5
10004026:	1976      	adds	r6, r6, r5
10004028:	617b      	str	r3, [r7, #20]
1000402a:	2b00      	cmp	r3, #0
1000402c:	d1e0      	bne.n	10003ff0 <ext_flash_write+0x70>
1000402e:	68fb      	ldr	r3, [r7, #12]
10004030:	469d      	mov	sp, r3
10004032:	4b28      	ldr	r3, [pc, #160]	; (100040d4 <ext_flash_write+0x154>)
10004034:	4a28      	ldr	r2, [pc, #160]	; (100040d8 <ext_flash_write+0x158>)
10004036:	615a      	str	r2, [r3, #20]
10004038:	4b28      	ldr	r3, [pc, #160]	; (100040dc <ext_flash_write+0x15c>)
1000403a:	4798      	blx	r3
1000403c:	2000      	movs	r0, #0
1000403e:	4b21      	ldr	r3, [pc, #132]	; (100040c4 <ext_flash_write+0x144>)
10004040:	6018      	str	r0, [r3, #0]
10004042:	e7b3      	b.n	10003fac <ext_flash_write+0x2c>
10004044:	697b      	ldr	r3, [r7, #20]
10004046:	191a      	adds	r2, r3, r4
10004048:	2301      	movs	r3, #1
1000404a:	421c      	tst	r4, r3
1000404c:	d003      	beq.n	10004056 <ext_flash_write+0xd6>
1000404e:	7833      	ldrb	r3, [r6, #0]
10004050:	3601      	adds	r6, #1
10004052:	7023      	strb	r3, [r4, #0]
10004054:	3401      	adds	r4, #1
10004056:	1e90      	subs	r0, r2, #2
10004058:	42a0      	cmp	r0, r4
1000405a:	d319      	bcc.n	10004090 <ext_flash_write+0x110>
1000405c:	07a3      	lsls	r3, r4, #30
1000405e:	d506      	bpl.n	1000406e <ext_flash_write+0xee>
10004060:	7873      	ldrb	r3, [r6, #1]
10004062:	7831      	ldrb	r1, [r6, #0]
10004064:	021b      	lsls	r3, r3, #8
10004066:	430b      	orrs	r3, r1
10004068:	8023      	strh	r3, [r4, #0]
1000406a:	3602      	adds	r6, #2
1000406c:	3402      	adds	r4, #2
1000406e:	1b33      	subs	r3, r6, r4
10004070:	469c      	mov	ip, r3
10004072:	1f15      	subs	r5, r2, #4
10004074:	4663      	mov	r3, ip
10004076:	191b      	adds	r3, r3, r4
10004078:	42a5      	cmp	r5, r4
1000407a:	d210      	bcs.n	1000409e <ext_flash_write+0x11e>
1000407c:	001e      	movs	r6, r3
1000407e:	42a0      	cmp	r0, r4
10004080:	d306      	bcc.n	10004090 <ext_flash_write+0x110>
10004082:	7819      	ldrb	r1, [r3, #0]
10004084:	785b      	ldrb	r3, [r3, #1]
10004086:	3602      	adds	r6, #2
10004088:	021b      	lsls	r3, r3, #8
1000408a:	430b      	orrs	r3, r1
1000408c:	8023      	strh	r3, [r4, #0]
1000408e:	3402      	adds	r4, #2
10004090:	1b33      	subs	r3, r6, r4
10004092:	42a2      	cmp	r2, r4
10004094:	d9cd      	bls.n	10004032 <ext_flash_write+0xb2>
10004096:	5d19      	ldrb	r1, [r3, r4]
10004098:	7021      	strb	r1, [r4, #0]
1000409a:	3401      	adds	r4, #1
1000409c:	e7f9      	b.n	10004092 <ext_flash_write+0x112>
1000409e:	785e      	ldrb	r6, [r3, #1]
100040a0:	7819      	ldrb	r1, [r3, #0]
100040a2:	0236      	lsls	r6, r6, #8
100040a4:	430e      	orrs	r6, r1
100040a6:	7899      	ldrb	r1, [r3, #2]
100040a8:	0409      	lsls	r1, r1, #16
100040aa:	430e      	orrs	r6, r1
100040ac:	78d9      	ldrb	r1, [r3, #3]
100040ae:	0609      	lsls	r1, r1, #24
100040b0:	4331      	orrs	r1, r6
100040b2:	c402      	stmia	r4!, {r1}
100040b4:	e7de      	b.n	10004074 <ext_flash_write+0xf4>
100040b6:	46c0      	nop			; (mov r8, r8)
100040b8:	20015050 	.word	0x20015050
100040bc:	1000a49c 	.word	0x1000a49c
100040c0:	0002fccd 	.word	0x0002fccd
100040c4:	4000303c 	.word	0x4000303c
100040c8:	10003de9 	.word	0x10003de9
100040cc:	00005821 	.word	0x00005821
100040d0:	20014545 	.word	0x20014545
100040d4:	4000f000 	.word	0x4000f000
100040d8:	00050004 	.word	0x00050004
100040dc:	10003e1d 	.word	0x10003e1d

100040e0 <ext_flash_read>:
100040e0:	b570      	push	{r4, r5, r6, lr}
100040e2:	0004      	movs	r4, r0
100040e4:	0018      	movs	r0, r3
100040e6:	4b09      	ldr	r3, [pc, #36]	; (1000410c <ext_flash_read+0x2c>)
100040e8:	7a1d      	ldrb	r5, [r3, #8]
100040ea:	42a5      	cmp	r5, r4
100040ec:	d103      	bne.n	100040f6 <ext_flash_read+0x16>
100040ee:	685d      	ldr	r5, [r3, #4]
100040f0:	188c      	adds	r4, r1, r2
100040f2:	42ac      	cmp	r4, r5
100040f4:	d904      	bls.n	10004100 <ext_flash_read+0x20>
100040f6:	21ff      	movs	r1, #255	; 0xff
100040f8:	4b05      	ldr	r3, [pc, #20]	; (10004110 <ext_flash_read+0x30>)
100040fa:	4798      	blx	r3
100040fc:	2012      	movs	r0, #18
100040fe:	bd70      	pop	{r4, r5, r6, pc}
10004100:	681b      	ldr	r3, [r3, #0]
10004102:	18c9      	adds	r1, r1, r3
10004104:	4b03      	ldr	r3, [pc, #12]	; (10004114 <ext_flash_read+0x34>)
10004106:	4798      	blx	r3
10004108:	2000      	movs	r0, #0
1000410a:	e7f8      	b.n	100040fe <ext_flash_read+0x1e>
1000410c:	20015050 	.word	0x20015050
10004110:	00005859 	.word	0x00005859
10004114:	00005821 	.word	0x00005821

10004118 <ext_flash_init>:
10004118:	2380      	movs	r3, #128	; 0x80
1000411a:	b5f0      	push	{r4, r5, r6, r7, lr}
1000411c:	4c3c      	ldr	r4, [pc, #240]	; (10004210 <ext_flash_init+0xf8>)
1000411e:	2500      	movs	r5, #0
10004120:	0020      	movs	r0, r4
10004122:	009b      	lsls	r3, r3, #2
10004124:	4a3b      	ldr	r2, [pc, #236]	; (10004214 <ext_flash_init+0xfc>)
10004126:	8123      	strh	r3, [r4, #8]
10004128:	4b3b      	ldr	r3, [pc, #236]	; (10004218 <ext_flash_init+0x100>)
1000412a:	493c      	ldr	r1, [pc, #240]	; (1000421c <ext_flash_init+0x104>)
1000412c:	6013      	str	r3, [r2, #0]
1000412e:	4a3c      	ldr	r2, [pc, #240]	; (10004220 <ext_flash_init+0x108>)
10004130:	4f3c      	ldr	r7, [pc, #240]	; (10004224 <ext_flash_init+0x10c>)
10004132:	6011      	str	r1, [r2, #0]
10004134:	4a3c      	ldr	r2, [pc, #240]	; (10004228 <ext_flash_init+0x110>)
10004136:	493d      	ldr	r1, [pc, #244]	; (1000422c <ext_flash_init+0x114>)
10004138:	4e3d      	ldr	r6, [pc, #244]	; (10004230 <ext_flash_init+0x118>)
1000413a:	6011      	str	r1, [r2, #0]
1000413c:	4a3d      	ldr	r2, [pc, #244]	; (10004234 <ext_flash_init+0x11c>)
1000413e:	493e      	ldr	r1, [pc, #248]	; (10004238 <ext_flash_init+0x120>)
10004140:	b087      	sub	sp, #28
10004142:	6011      	str	r1, [r2, #0]
10004144:	4a3d      	ldr	r2, [pc, #244]	; (1000423c <ext_flash_init+0x124>)
10004146:	0029      	movs	r1, r5
10004148:	3008      	adds	r0, #8
1000414a:	6027      	str	r7, [r4, #0]
1000414c:	6065      	str	r5, [r4, #4]
1000414e:	6016      	str	r6, [r2, #0]
10004150:	4798      	blx	r3
10004152:	7a23      	ldrb	r3, [r4, #8]
10004154:	2b05      	cmp	r3, #5
10004156:	d11d      	bne.n	10004194 <ext_flash_init+0x7c>
10004158:	4939      	ldr	r1, [pc, #228]	; (10004240 <ext_flash_init+0x128>)
1000415a:	483a      	ldr	r0, [pc, #232]	; (10004244 <ext_flash_init+0x12c>)
1000415c:	4b3a      	ldr	r3, [pc, #232]	; (10004248 <ext_flash_init+0x130>)
1000415e:	4798      	blx	r3
10004160:	493a      	ldr	r1, [pc, #232]	; (1000424c <ext_flash_init+0x134>)
10004162:	4b3b      	ldr	r3, [pc, #236]	; (10004250 <ext_flash_init+0x138>)
10004164:	483b      	ldr	r0, [pc, #236]	; (10004254 <ext_flash_init+0x13c>)
10004166:	4798      	blx	r3
10004168:	2201      	movs	r2, #1
1000416a:	4b3b      	ldr	r3, [pc, #236]	; (10004258 <ext_flash_init+0x140>)
1000416c:	493b      	ldr	r1, [pc, #236]	; (1000425c <ext_flash_init+0x144>)
1000416e:	601a      	str	r2, [r3, #0]
10004170:	608a      	str	r2, [r1, #8]
10004172:	601d      	str	r5, [r3, #0]
10004174:	2300      	movs	r3, #0
10004176:	493a      	ldr	r1, [pc, #232]	; (10004260 <ext_flash_init+0x148>)
10004178:	ad02      	add	r5, sp, #8
1000417a:	7a20      	ldrb	r0, [r4, #8]
1000417c:	1bc9      	subs	r1, r1, r7
1000417e:	9300      	str	r3, [sp, #0]
10004180:	2210      	movs	r2, #16
10004182:	002b      	movs	r3, r5
10004184:	47b0      	blx	r6
10004186:	4c37      	ldr	r4, [pc, #220]	; (10004264 <ext_flash_init+0x14c>)
10004188:	1e01      	subs	r1, r0, #0
1000418a:	d01b      	beq.n	100041c4 <ext_flash_init+0xac>
1000418c:	4836      	ldr	r0, [pc, #216]	; (10004268 <ext_flash_init+0x150>)
1000418e:	47a0      	blx	r4
10004190:	b007      	add	sp, #28
10004192:	bdf0      	pop	{r4, r5, r6, r7, pc}
10004194:	1fda      	subs	r2, r3, #7
10004196:	2a03      	cmp	r2, #3
10004198:	d80e      	bhi.n	100041b8 <ext_flash_init+0xa0>
1000419a:	4929      	ldr	r1, [pc, #164]	; (10004240 <ext_flash_init+0x128>)
1000419c:	4829      	ldr	r0, [pc, #164]	; (10004244 <ext_flash_init+0x12c>)
1000419e:	4b2a      	ldr	r3, [pc, #168]	; (10004248 <ext_flash_init+0x130>)
100041a0:	4798      	blx	r3
100041a2:	492a      	ldr	r1, [pc, #168]	; (1000424c <ext_flash_init+0x134>)
100041a4:	482b      	ldr	r0, [pc, #172]	; (10004254 <ext_flash_init+0x13c>)
100041a6:	4b2a      	ldr	r3, [pc, #168]	; (10004250 <ext_flash_init+0x138>)
100041a8:	4798      	blx	r3
100041aa:	2201      	movs	r2, #1
100041ac:	4b2a      	ldr	r3, [pc, #168]	; (10004258 <ext_flash_init+0x140>)
100041ae:	492f      	ldr	r1, [pc, #188]	; (1000426c <ext_flash_init+0x154>)
100041b0:	601a      	str	r2, [r3, #0]
100041b2:	4a2a      	ldr	r2, [pc, #168]	; (1000425c <ext_flash_init+0x144>)
100041b4:	6091      	str	r1, [r2, #8]
100041b6:	e7dc      	b.n	10004172 <ext_flash_init+0x5a>
100041b8:	2b06      	cmp	r3, #6
100041ba:	d1db      	bne.n	10004174 <ext_flash_init+0x5c>
100041bc:	492c      	ldr	r1, [pc, #176]	; (10004270 <ext_flash_init+0x158>)
100041be:	4821      	ldr	r0, [pc, #132]	; (10004244 <ext_flash_init+0x12c>)
100041c0:	4b21      	ldr	r3, [pc, #132]	; (10004248 <ext_flash_init+0x130>)
100041c2:	e7f1      	b.n	100041a8 <ext_flash_init+0x90>
100041c4:	4b2b      	ldr	r3, [pc, #172]	; (10004274 <ext_flash_init+0x15c>)
100041c6:	4798      	blx	r3
100041c8:	4b2b      	ldr	r3, [pc, #172]	; (10004278 <ext_flash_init+0x160>)
100041ca:	2201      	movs	r2, #1
100041cc:	681b      	ldr	r3, [r3, #0]
100041ce:	2800      	cmp	r0, #0
100041d0:	d018      	beq.n	10004204 <ext_flash_init+0xec>
100041d2:	0b5b      	lsrs	r3, r3, #13
100041d4:	4829      	ldr	r0, [pc, #164]	; (1000427c <ext_flash_init+0x164>)
100041d6:	4213      	tst	r3, r2
100041d8:	d100      	bne.n	100041dc <ext_flash_init+0xc4>
100041da:	4829      	ldr	r0, [pc, #164]	; (10004280 <ext_flash_init+0x168>)
100041dc:	47a0      	blx	r4
100041de:	4b29      	ldr	r3, [pc, #164]	; (10004284 <ext_flash_init+0x16c>)
100041e0:	4798      	blx	r3
100041e2:	4b29      	ldr	r3, [pc, #164]	; (10004288 <ext_flash_init+0x170>)
100041e4:	2800      	cmp	r0, #0
100041e6:	d100      	bne.n	100041ea <ext_flash_init+0xd2>
100041e8:	4b28      	ldr	r3, [pc, #160]	; (1000428c <ext_flash_init+0x174>)
100041ea:	0018      	movs	r0, r3
100041ec:	47a0      	blx	r4
100041ee:	2600      	movs	r6, #0
100041f0:	5da9      	ldrb	r1, [r5, r6]
100041f2:	4827      	ldr	r0, [pc, #156]	; (10004290 <ext_flash_init+0x178>)
100041f4:	3601      	adds	r6, #1
100041f6:	47a0      	blx	r4
100041f8:	2e10      	cmp	r6, #16
100041fa:	d1f9      	bne.n	100041f0 <ext_flash_init+0xd8>
100041fc:	4b25      	ldr	r3, [pc, #148]	; (10004294 <ext_flash_init+0x17c>)
100041fe:	4826      	ldr	r0, [pc, #152]	; (10004298 <ext_flash_init+0x180>)
10004200:	4798      	blx	r3
10004202:	e7c5      	b.n	10004190 <ext_flash_init+0x78>
10004204:	0b9b      	lsrs	r3, r3, #14
10004206:	4825      	ldr	r0, [pc, #148]	; (1000429c <ext_flash_init+0x184>)
10004208:	4213      	tst	r3, r2
1000420a:	d1e7      	bne.n	100041dc <ext_flash_init+0xc4>
1000420c:	4824      	ldr	r0, [pc, #144]	; (100042a0 <ext_flash_init+0x188>)
1000420e:	e7e5      	b.n	100041dc <ext_flash_init+0xc4>
10004210:	20015050 	.word	0x20015050
10004214:	200012ac 	.word	0x200012ac
10004218:	10003d89 	.word	0x10003d89
1000421c:	10003e31 	.word	0x10003e31
10004220:	200012a8 	.word	0x200012a8
10004224:	10000000 	.word	0x10000000
10004228:	200012c0 	.word	0x200012c0
1000422c:	10003f81 	.word	0x10003f81
10004230:	100040e1 	.word	0x100040e1
10004234:	200012bc 	.word	0x200012bc
10004238:	10003e99 	.word	0x10003e99
1000423c:	200012b8 	.word	0x200012b8
10004240:	20014888 	.word	0x20014888
10004244:	20001278 	.word	0x20001278
10004248:	00006897 	.word	0x00006897
1000424c:	20014880 	.word	0x20014880
10004250:	00006715 	.word	0x00006715
10004254:	200012a4 	.word	0x200012a4
10004258:	50003020 	.word	0x50003020
1000425c:	500080fc 	.word	0x500080fc
10004260:	10078000 	.word	0x10078000
10004264:	0002fccd 	.word	0x0002fccd
10004268:	1000a4f5 	.word	0x1000a4f5
1000426c:	00000ab3 	.word	0x00000ab3
10004270:	20014890 	.word	0x20014890
10004274:	000075f5 	.word	0x000075f5
10004278:	200012c4 	.word	0x200012c4
1000427c:	1000a4c9 	.word	0x1000a4c9
10004280:	1000a4cd 	.word	0x1000a4cd
10004284:	00007605 	.word	0x00007605
10004288:	1000a4d9 	.word	0x1000a4d9
1000428c:	1000a4e9 	.word	0x1000a4e9
10004290:	1000a491 	.word	0x1000a491
10004294:	0002fdb1 	.word	0x0002fdb1
10004298:	1000a497 	.word	0x1000a497
1000429c:	1000a4d1 	.word	0x1000a4d1
100042a0:	1000a4d5 	.word	0x1000a4d5

100042a4 <pmu_init>:
100042a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100042a6:	2200      	movs	r2, #0
100042a8:	2301      	movs	r3, #1
100042aa:	492e      	ldr	r1, [pc, #184]	; (10004364 <pmu_init+0xc0>)
100042ac:	4c2e      	ldr	r4, [pc, #184]	; (10004368 <pmu_init+0xc4>)
100042ae:	600b      	str	r3, [r1, #0]
100042b0:	0020      	movs	r0, r4
100042b2:	600a      	str	r2, [r1, #0]
100042b4:	2580      	movs	r5, #128	; 0x80
100042b6:	600b      	str	r3, [r1, #0]
100042b8:	3240      	adds	r2, #64	; 0x40
100042ba:	2109      	movs	r1, #9
100042bc:	4b2b      	ldr	r3, [pc, #172]	; (1000436c <pmu_init+0xc8>)
100042be:	4798      	blx	r3
100042c0:	016d      	lsls	r5, r5, #5
100042c2:	4305      	orrs	r5, r0
100042c4:	002b      	movs	r3, r5
100042c6:	2240      	movs	r2, #64	; 0x40
100042c8:	2109      	movs	r1, #9
100042ca:	0007      	movs	r7, r0
100042cc:	4e28      	ldr	r6, [pc, #160]	; (10004370 <pmu_init+0xcc>)
100042ce:	0020      	movs	r0, r4
100042d0:	47b0      	blx	r6
100042d2:	2109      	movs	r1, #9
100042d4:	2240      	movs	r2, #64	; 0x40
100042d6:	0020      	movs	r0, r4
100042d8:	4b24      	ldr	r3, [pc, #144]	; (1000436c <pmu_init+0xc8>)
100042da:	4798      	blx	r3
100042dc:	0001      	movs	r1, r0
100042de:	4285      	cmp	r5, r0
100042e0:	d004      	beq.n	100042ec <pmu_init+0x48>
100042e2:	0028      	movs	r0, r5
100042e4:	23dc      	movs	r3, #220	; 0xdc
100042e6:	4a23      	ldr	r2, [pc, #140]	; (10004374 <pmu_init+0xd0>)
100042e8:	4d23      	ldr	r5, [pc, #140]	; (10004378 <pmu_init+0xd4>)
100042ea:	47a8      	blx	r5
100042ec:	25c0      	movs	r5, #192	; 0xc0
100042ee:	4823      	ldr	r0, [pc, #140]	; (1000437c <pmu_init+0xd8>)
100042f0:	016d      	lsls	r5, r5, #5
100042f2:	4038      	ands	r0, r7
100042f4:	4305      	orrs	r5, r0
100042f6:	002b      	movs	r3, r5
100042f8:	2240      	movs	r2, #64	; 0x40
100042fa:	2109      	movs	r1, #9
100042fc:	0020      	movs	r0, r4
100042fe:	4f1c      	ldr	r7, [pc, #112]	; (10004370 <pmu_init+0xcc>)
10004300:	47b8      	blx	r7
10004302:	2109      	movs	r1, #9
10004304:	2240      	movs	r2, #64	; 0x40
10004306:	0020      	movs	r0, r4
10004308:	4b18      	ldr	r3, [pc, #96]	; (1000436c <pmu_init+0xc8>)
1000430a:	4798      	blx	r3
1000430c:	0001      	movs	r1, r0
1000430e:	4285      	cmp	r5, r0
10004310:	d004      	beq.n	1000431c <pmu_init+0x78>
10004312:	0028      	movs	r0, r5
10004314:	23df      	movs	r3, #223	; 0xdf
10004316:	4a17      	ldr	r2, [pc, #92]	; (10004374 <pmu_init+0xd0>)
10004318:	4d17      	ldr	r5, [pc, #92]	; (10004378 <pmu_init+0xd4>)
1000431a:	47a8      	blx	r5
1000431c:	2218      	movs	r2, #24
1000431e:	2109      	movs	r1, #9
10004320:	4f12      	ldr	r7, [pc, #72]	; (1000436c <pmu_init+0xc8>)
10004322:	0020      	movs	r0, r4
10004324:	47b8      	blx	r7
10004326:	25f0      	movs	r5, #240	; 0xf0
10004328:	2301      	movs	r3, #1
1000432a:	006d      	lsls	r5, r5, #1
1000432c:	4398      	bics	r0, r3
1000432e:	4305      	orrs	r5, r0
10004330:	002b      	movs	r3, r5
10004332:	2218      	movs	r2, #24
10004334:	2109      	movs	r1, #9
10004336:	0020      	movs	r0, r4
10004338:	4e0d      	ldr	r6, [pc, #52]	; (10004370 <pmu_init+0xcc>)
1000433a:	47b0      	blx	r6
1000433c:	2109      	movs	r1, #9
1000433e:	2218      	movs	r2, #24
10004340:	0020      	movs	r0, r4
10004342:	47b8      	blx	r7
10004344:	0001      	movs	r1, r0
10004346:	4285      	cmp	r5, r0
10004348:	d004      	beq.n	10004354 <pmu_init+0xb0>
1000434a:	23e5      	movs	r3, #229	; 0xe5
1000434c:	0028      	movs	r0, r5
1000434e:	4a09      	ldr	r2, [pc, #36]	; (10004374 <pmu_init+0xd0>)
10004350:	4c09      	ldr	r4, [pc, #36]	; (10004378 <pmu_init+0xd4>)
10004352:	47a0      	blx	r4
10004354:	2300      	movs	r3, #0
10004356:	4a03      	ldr	r2, [pc, #12]	; (10004364 <pmu_init+0xc0>)
10004358:	4909      	ldr	r1, [pc, #36]	; (10004380 <pmu_init+0xdc>)
1000435a:	6013      	str	r3, [r2, #0]
1000435c:	4809      	ldr	r0, [pc, #36]	; (10004384 <pmu_init+0xe0>)
1000435e:	4b0a      	ldr	r3, [pc, #40]	; (10004388 <pmu_init+0xe4>)
10004360:	4798      	blx	r3
10004362:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10004364:	5000301c 	.word	0x5000301c
10004368:	0003cd78 	.word	0x0003cd78
1000436c:	0000777f 	.word	0x0000777f
10004370:	0000779f 	.word	0x0000779f
10004374:	1000a511 	.word	0x1000a511
10004378:	00006641 	.word	0x00006641
1000437c:	ffffbfff 	.word	0xffffbfff
10004380:	200149d0 	.word	0x200149d0
10004384:	200012a0 	.word	0x200012a0
10004388:	00006897 	.word	0x00006897

1000438c <pmu_get_wkup_det>:
1000438c:	4b01      	ldr	r3, [pc, #4]	; (10004394 <pmu_get_wkup_det+0x8>)
1000438e:	7818      	ldrb	r0, [r3, #0]
10004390:	4770      	bx	lr
10004392:	46c0      	nop			; (mov r8, r8)
10004394:	20001234 	.word	0x20001234

10004398 <pseq_get_boot_status>:
10004398:	4b01      	ldr	r3, [pc, #4]	; (100043a0 <pseq_get_boot_status+0x8>)
1000439a:	6818      	ldr	r0, [r3, #0]
1000439c:	4770      	bx	lr
1000439e:	46c0      	nop			; (mov r8, r8)
100043a0:	2000117c 	.word	0x2000117c

100043a4 <boot_status>:
100043a4:	b570      	push	{r4, r5, r6, lr}
100043a6:	4b30      	ldr	r3, [pc, #192]	; (10004468 <boot_status+0xc4>)
100043a8:	4798      	blx	r3
100043aa:	4b30      	ldr	r3, [pc, #192]	; (1000446c <boot_status+0xc8>)
100043ac:	0005      	movs	r5, r0
100043ae:	4798      	blx	r3
100043b0:	4b2f      	ldr	r3, [pc, #188]	; (10004470 <boot_status+0xcc>)
100043b2:	691a      	ldr	r2, [r3, #16]
100043b4:	07d2      	lsls	r2, r2, #31
100043b6:	d502      	bpl.n	100043be <boot_status+0x1a>
100043b8:	22f7      	movs	r2, #247	; 0xf7
100043ba:	4215      	tst	r5, r2
100043bc:	d04a      	beq.n	10004454 <boot_status+0xb0>
100043be:	2202      	movs	r2, #2
100043c0:	6919      	ldr	r1, [r3, #16]
100043c2:	4211      	tst	r1, r2
100043c4:	d148      	bne.n	10004458 <boot_status+0xb4>
100043c6:	691b      	ldr	r3, [r3, #16]
100043c8:	075b      	lsls	r3, r3, #29
100043ca:	d447      	bmi.n	1000445c <boot_status+0xb8>
100043cc:	2800      	cmp	r0, #0
100043ce:	d116      	bne.n	100043fe <boot_status+0x5a>
100043d0:	2d00      	cmp	r5, #0
100043d2:	d045      	beq.n	10004460 <boot_status+0xbc>
100043d4:	2401      	movs	r4, #1
100043d6:	4b27      	ldr	r3, [pc, #156]	; (10004474 <boot_status+0xd0>)
100043d8:	402c      	ands	r4, r5
100043da:	3c01      	subs	r4, #1
100043dc:	401c      	ands	r4, r3
100043de:	4b26      	ldr	r3, [pc, #152]	; (10004478 <boot_status+0xd4>)
100043e0:	18e4      	adds	r4, r4, r3
100043e2:	4215      	tst	r5, r2
100043e4:	d001      	beq.n	100043ea <boot_status+0x46>
100043e6:	4b25      	ldr	r3, [pc, #148]	; (1000447c <boot_status+0xd8>)
100043e8:	431c      	orrs	r4, r3
100043ea:	076b      	lsls	r3, r5, #29
100043ec:	d502      	bpl.n	100043f4 <boot_status+0x50>
100043ee:	4b24      	ldr	r3, [pc, #144]	; (10004480 <boot_status+0xdc>)
100043f0:	431c      	orrs	r4, r3
100043f2:	e002      	b.n	100043fa <boot_status+0x56>
100043f4:	2234      	movs	r2, #52	; 0x34
100043f6:	2c00      	cmp	r4, #0
100043f8:	d027      	beq.n	1000444a <boot_status+0xa6>
100043fa:	0020      	movs	r0, r4
100043fc:	bd70      	pop	{r4, r5, r6, pc}
100043fe:	2380      	movs	r3, #128	; 0x80
10004400:	0004      	movs	r4, r0
10004402:	005b      	lsls	r3, r3, #1
10004404:	401c      	ands	r4, r3
10004406:	4218      	tst	r0, r3
10004408:	d000      	beq.n	1000440c <boot_status+0x68>
1000440a:	4c1e      	ldr	r4, [pc, #120]	; (10004484 <boot_status+0xe0>)
1000440c:	0583      	lsls	r3, r0, #22
1000440e:	d501      	bpl.n	10004414 <boot_status+0x70>
10004410:	4b1d      	ldr	r3, [pc, #116]	; (10004488 <boot_status+0xe4>)
10004412:	431c      	orrs	r4, r3
10004414:	0543      	lsls	r3, r0, #21
10004416:	d501      	bpl.n	1000441c <boot_status+0x78>
10004418:	4b1c      	ldr	r3, [pc, #112]	; (1000448c <boot_status+0xe8>)
1000441a:	431c      	orrs	r4, r3
1000441c:	0503      	lsls	r3, r0, #20
1000441e:	d501      	bpl.n	10004424 <boot_status+0x80>
10004420:	4b1b      	ldr	r3, [pc, #108]	; (10004490 <boot_status+0xec>)
10004422:	431c      	orrs	r4, r3
10004424:	04c3      	lsls	r3, r0, #19
10004426:	d501      	bpl.n	1000442c <boot_status+0x88>
10004428:	4b1a      	ldr	r3, [pc, #104]	; (10004494 <boot_status+0xf0>)
1000442a:	431c      	orrs	r4, r3
1000442c:	0483      	lsls	r3, r0, #18
1000442e:	d501      	bpl.n	10004434 <boot_status+0x90>
10004430:	4b19      	ldr	r3, [pc, #100]	; (10004498 <boot_status+0xf4>)
10004432:	431c      	orrs	r4, r3
10004434:	0443      	lsls	r3, r0, #17
10004436:	d501      	bpl.n	1000443c <boot_status+0x98>
10004438:	4b18      	ldr	r3, [pc, #96]	; (1000449c <boot_status+0xf8>)
1000443a:	431c      	orrs	r4, r3
1000443c:	0403      	lsls	r3, r0, #16
1000443e:	d501      	bpl.n	10004444 <boot_status+0xa0>
10004440:	4b17      	ldr	r3, [pc, #92]	; (100044a0 <boot_status+0xfc>)
10004442:	e7d5      	b.n	100043f0 <boot_status+0x4c>
10004444:	2c00      	cmp	r4, #0
10004446:	d1d8      	bne.n	100043fa <boot_status+0x56>
10004448:	2252      	movs	r2, #82	; 0x52
1000444a:	4916      	ldr	r1, [pc, #88]	; (100044a4 <boot_status+0x100>)
1000444c:	4816      	ldr	r0, [pc, #88]	; (100044a8 <boot_status+0x104>)
1000444e:	4b17      	ldr	r3, [pc, #92]	; (100044ac <boot_status+0x108>)
10004450:	4798      	blx	r3
10004452:	e7d2      	b.n	100043fa <boot_status+0x56>
10004454:	4c16      	ldr	r4, [pc, #88]	; (100044b0 <boot_status+0x10c>)
10004456:	e7d0      	b.n	100043fa <boot_status+0x56>
10004458:	4c16      	ldr	r4, [pc, #88]	; (100044b4 <boot_status+0x110>)
1000445a:	e7ce      	b.n	100043fa <boot_status+0x56>
1000445c:	4c16      	ldr	r4, [pc, #88]	; (100044b8 <boot_status+0x114>)
1000445e:	e7cc      	b.n	100043fa <boot_status+0x56>
10004460:	2480      	movs	r4, #128	; 0x80
10004462:	0464      	lsls	r4, r4, #17
10004464:	e7c9      	b.n	100043fa <boot_status+0x56>
10004466:	46c0      	nop			; (mov r8, r8)
10004468:	1000438d 	.word	0x1000438d
1000446c:	10004399 	.word	0x10004399
10004470:	4001f000 	.word	0x4001f000
10004474:	fbffffff 	.word	0xfbffffff
10004478:	04000001 	.word	0x04000001
1000447c:	04000002 	.word	0x04000002
10004480:	04000004 	.word	0x04000004
10004484:	08000001 	.word	0x08000001
10004488:	08000002 	.word	0x08000002
1000448c:	08000004 	.word	0x08000004
10004490:	08000008 	.word	0x08000008
10004494:	08000010 	.word	0x08000010
10004498:	08000020 	.word	0x08000020
1000449c:	08000040 	.word	0x08000040
100044a0:	08000080 	.word	0x08000080
100044a4:	1000a517 	.word	0x1000a517
100044a8:	1000a51f 	.word	0x1000a51f
100044ac:	00006609 	.word	0x00006609
100044b0:	02000001 	.word	0x02000001
100044b4:	02000002 	.word	0x02000002
100044b8:	02000004 	.word	0x02000004

100044bc <reset_print>:
100044bc:	b570      	push	{r4, r5, r6, lr}
100044be:	4d0d      	ldr	r5, [pc, #52]	; (100044f4 <reset_print+0x38>)
100044c0:	47a8      	blx	r5
100044c2:	4c0d      	ldr	r4, [pc, #52]	; (100044f8 <reset_print+0x3c>)
100044c4:	0001      	movs	r1, r0
100044c6:	480d      	ldr	r0, [pc, #52]	; (100044fc <reset_print+0x40>)
100044c8:	47a0      	blx	r4
100044ca:	47a8      	blx	r5
100044cc:	01c3      	lsls	r3, r0, #7
100044ce:	d501      	bpl.n	100044d4 <reset_print+0x18>
100044d0:	480b      	ldr	r0, [pc, #44]	; (10004500 <reset_print+0x44>)
100044d2:	47a0      	blx	r4
100044d4:	47a8      	blx	r5
100044d6:	0183      	lsls	r3, r0, #6
100044d8:	d501      	bpl.n	100044de <reset_print+0x22>
100044da:	480a      	ldr	r0, [pc, #40]	; (10004504 <reset_print+0x48>)
100044dc:	47a0      	blx	r4
100044de:	47a8      	blx	r5
100044e0:	0103      	lsls	r3, r0, #4
100044e2:	d501      	bpl.n	100044e8 <reset_print+0x2c>
100044e4:	4808      	ldr	r0, [pc, #32]	; (10004508 <reset_print+0x4c>)
100044e6:	47a0      	blx	r4
100044e8:	47a8      	blx	r5
100044ea:	0143      	lsls	r3, r0, #5
100044ec:	d501      	bpl.n	100044f2 <reset_print+0x36>
100044ee:	4807      	ldr	r0, [pc, #28]	; (1000450c <reset_print+0x50>)
100044f0:	47a0      	blx	r4
100044f2:	bd70      	pop	{r4, r5, r6, pc}
100044f4:	100043a5 	.word	0x100043a5
100044f8:	000066b1 	.word	0x000066b1
100044fc:	1000a526 	.word	0x1000a526
10004500:	1000a537 	.word	0x1000a537
10004504:	1000a541 	.word	0x1000a541
10004508:	1000a54e 	.word	0x1000a54e
1000450c:	1000a560 	.word	0x1000a560

10004510 <brwnout_init>:
10004510:	b510      	push	{r4, lr}
10004512:	4904      	ldr	r1, [pc, #16]	; (10004524 <brwnout_init+0x14>)
10004514:	4c04      	ldr	r4, [pc, #16]	; (10004528 <brwnout_init+0x18>)
10004516:	4805      	ldr	r0, [pc, #20]	; (1000452c <brwnout_init+0x1c>)
10004518:	47a0      	blx	r4
1000451a:	4905      	ldr	r1, [pc, #20]	; (10004530 <brwnout_init+0x20>)
1000451c:	4805      	ldr	r0, [pc, #20]	; (10004534 <brwnout_init+0x24>)
1000451e:	47a0      	blx	r4
10004520:	bd10      	pop	{r4, pc}
10004522:	46c0      	nop			; (mov r8, r8)
10004524:	20014c14 	.word	0x20014c14
10004528:	00006897 	.word	0x00006897
1000452c:	20001278 	.word	0x20001278
10004530:	20014c0c 	.word	0x20014c0c
10004534:	200012a0 	.word	0x200012a0

10004538 <swd_dbg_constructor>:
10004538:	b510      	push	{r4, lr}
1000453a:	4904      	ldr	r1, [pc, #16]	; (1000454c <swd_dbg_constructor+0x14>)
1000453c:	4c04      	ldr	r4, [pc, #16]	; (10004550 <swd_dbg_constructor+0x18>)
1000453e:	4805      	ldr	r0, [pc, #20]	; (10004554 <swd_dbg_constructor+0x1c>)
10004540:	47a0      	blx	r4
10004542:	4905      	ldr	r1, [pc, #20]	; (10004558 <swd_dbg_constructor+0x20>)
10004544:	4805      	ldr	r0, [pc, #20]	; (1000455c <swd_dbg_constructor+0x24>)
10004546:	47a0      	blx	r4
10004548:	bd10      	pop	{r4, pc}
1000454a:	46c0      	nop			; (mov r8, r8)
1000454c:	20014c4c 	.word	0x20014c4c
10004550:	00006805 	.word	0x00006805
10004554:	20001284 	.word	0x20001284
10004558:	20014c44 	.word	0x20014c44
1000455c:	20001260 	.word	0x20001260

10004560 <invalidate_reg_file>:
10004560:	2200      	movs	r2, #0
10004562:	1d03      	adds	r3, r0, #4
10004564:	306c      	adds	r0, #108	; 0x6c
10004566:	701a      	strb	r2, [r3, #0]
10004568:	3308      	adds	r3, #8
1000456a:	4283      	cmp	r3, r0
1000456c:	d1fb      	bne.n	10004566 <invalidate_reg_file+0x6>
1000456e:	2000      	movs	r0, #0
10004570:	4770      	bx	lr
	...

10004574 <traceback_reporter>:
10004574:	b570      	push	{r4, r5, r6, lr}
10004576:	7a01      	ldrb	r1, [r0, #8]
10004578:	0004      	movs	r4, r0
1000457a:	2002      	movs	r0, #2
1000457c:	290a      	cmp	r1, #10
1000457e:	d81f      	bhi.n	100045c0 <traceback_reporter+0x4c>
10004580:	6822      	ldr	r2, [r4, #0]
10004582:	2900      	cmp	r1, #0
10004584:	d007      	beq.n	10004596 <traceback_reporter+0x22>
10004586:	1c4b      	adds	r3, r1, #1
10004588:	4083      	lsls	r3, r0
1000458a:	18e3      	adds	r3, r4, r3
1000458c:	685b      	ldr	r3, [r3, #4]
1000458e:	6f95      	ldr	r5, [r2, #120]	; 0x78
10004590:	3003      	adds	r0, #3
10004592:	42ab      	cmp	r3, r5
10004594:	d014      	beq.n	100045c0 <traceback_reporter+0x4c>
10004596:	7a63      	ldrb	r3, [r4, #9]
10004598:	428b      	cmp	r3, r1
1000459a:	d803      	bhi.n	100045a4 <traceback_reporter+0x30>
1000459c:	6f92      	ldr	r2, [r2, #120]	; 0x78
1000459e:	4809      	ldr	r0, [pc, #36]	; (100045c4 <traceback_reporter+0x50>)
100045a0:	4b09      	ldr	r3, [pc, #36]	; (100045c8 <traceback_reporter+0x54>)
100045a2:	4798      	blx	r3
100045a4:	200a      	movs	r0, #10
100045a6:	7a23      	ldrb	r3, [r4, #8]
100045a8:	6821      	ldr	r1, [r4, #0]
100045aa:	1c5a      	adds	r2, r3, #1
100045ac:	b2d2      	uxtb	r2, r2
100045ae:	4290      	cmp	r0, r2
100045b0:	4180      	sbcs	r0, r0
100045b2:	7222      	strb	r2, [r4, #8]
100045b4:	3302      	adds	r3, #2
100045b6:	6f89      	ldr	r1, [r1, #120]	; 0x78
100045b8:	009b      	lsls	r3, r3, #2
100045ba:	18e4      	adds	r4, r4, r3
100045bc:	6061      	str	r1, [r4, #4]
100045be:	4240      	negs	r0, r0
100045c0:	bd70      	pop	{r4, r5, r6, pc}
100045c2:	46c0      	nop			; (mov r8, r8)
100045c4:	1000a5a7 	.word	0x1000a5a7
100045c8:	0002fccd 	.word	0x0002fccd

100045cc <execute_traceback>:
100045cc:	b5f0      	push	{r4, r5, r6, r7, lr}
100045ce:	b0b1      	sub	sp, #196	; 0xc4
100045d0:	0016      	movs	r6, r2
100045d2:	aa02      	add	r2, sp, #8
100045d4:	7353      	strb	r3, [r2, #13]
100045d6:	2300      	movs	r3, #0
100045d8:	7313      	strb	r3, [r2, #12]
100045da:	4bbc      	ldr	r3, [pc, #752]	; (100048cc <execute_traceback+0x300>)
100045dc:	0005      	movs	r5, r0
100045de:	9304      	str	r3, [sp, #16]
100045e0:	a810      	add	r0, sp, #64	; 0x40
100045e2:	4bbb      	ldr	r3, [pc, #748]	; (100048d0 <execute_traceback+0x304>)
100045e4:	000c      	movs	r4, r1
100045e6:	9003      	str	r0, [sp, #12]
100045e8:	4798      	blx	r3
100045ea:	2800      	cmp	r0, #0
100045ec:	d000      	beq.n	100045f0 <execute_traceback+0x24>
100045ee:	e15b      	b.n	100048a8 <execute_traceback+0x2dc>
100045f0:	9b03      	ldr	r3, [sp, #12]
100045f2:	2202      	movs	r2, #2
100045f4:	0019      	movs	r1, r3
100045f6:	3168      	adds	r1, #104	; 0x68
100045f8:	669e      	str	r6, [r3, #104]	; 0x68
100045fa:	710a      	strb	r2, [r1, #4]
100045fc:	3370      	adds	r3, #112	; 0x70
100045fe:	609d      	str	r5, [r3, #8]
10004600:	750a      	strb	r2, [r1, #20]
10004602:	a803      	add	r0, sp, #12
10004604:	601c      	str	r4, [r3, #0]
10004606:	711a      	strb	r2, [r3, #4]
10004608:	9b04      	ldr	r3, [sp, #16]
1000460a:	4798      	blx	r3
1000460c:	2800      	cmp	r0, #0
1000460e:	d000      	beq.n	10004612 <execute_traceback+0x46>
10004610:	e14a      	b.n	100048a8 <execute_traceback+0x2dc>
10004612:	23c8      	movs	r3, #200	; 0xc8
10004614:	2401      	movs	r4, #1
10004616:	005b      	lsls	r3, r3, #1
10004618:	9300      	str	r3, [sp, #0]
1000461a:	9a03      	ldr	r2, [sp, #12]
1000461c:	6f91      	ldr	r1, [r2, #120]	; 0x78
1000461e:	000b      	movs	r3, r1
10004620:	43a3      	bics	r3, r4
10004622:	881b      	ldrh	r3, [r3, #0]
10004624:	0b58      	lsrs	r0, r3, #13
10004626:	0347      	lsls	r7, r0, #13
10004628:	2800      	cmp	r0, #0
1000462a:	d139      	bne.n	100046a0 <execute_traceback+0xd4>
1000462c:	20c0      	movs	r0, #192	; 0xc0
1000462e:	25c0      	movs	r5, #192	; 0xc0
10004630:	0140      	lsls	r0, r0, #5
10004632:	4018      	ands	r0, r3
10004634:	016d      	lsls	r5, r5, #5
10004636:	42a8      	cmp	r0, r5
10004638:	d032      	beq.n	100046a0 <execute_traceback+0xd4>
1000463a:	2007      	movs	r0, #7
1000463c:	0adf      	lsrs	r7, r3, #11
1000463e:	055d      	lsls	r5, r3, #21
10004640:	08d9      	lsrs	r1, r3, #3
10004642:	4001      	ands	r1, r0
10004644:	b2fe      	uxtb	r6, r7
10004646:	0eed      	lsrs	r5, r5, #27
10004648:	4018      	ands	r0, r3
1000464a:	2f01      	cmp	r7, #1
1000464c:	d01e      	beq.n	1000468c <execute_traceback+0xc0>
1000464e:	2e02      	cmp	r6, #2
10004650:	d021      	beq.n	10004696 <execute_traceback+0xca>
10004652:	2e00      	cmp	r6, #0
10004654:	d10b      	bne.n	1000466e <execute_traceback+0xa2>
10004656:	00c9      	lsls	r1, r1, #3
10004658:	5853      	ldr	r3, [r2, r1]
1000465a:	00c0      	lsls	r0, r0, #3
1000465c:	40ab      	lsls	r3, r5
1000465e:	5013      	str	r3, [r2, r0]
10004660:	2304      	movs	r3, #4
10004662:	9a03      	ldr	r2, [sp, #12]
10004664:	1851      	adds	r1, r2, r1
10004666:	7909      	ldrb	r1, [r1, #4]
10004668:	1812      	adds	r2, r2, r0
1000466a:	430b      	orrs	r3, r1
1000466c:	7113      	strb	r3, [r2, #4]
1000466e:	9a03      	ldr	r2, [sp, #12]
10004670:	6f93      	ldr	r3, [r2, #120]	; 0x78
10004672:	3302      	adds	r3, #2
10004674:	6793      	str	r3, [r2, #120]	; 0x78
10004676:	2b01      	cmp	r3, #1
10004678:	d800      	bhi.n	1000467c <execute_traceback+0xb0>
1000467a:	e19f      	b.n	100049bc <execute_traceback+0x3f0>
1000467c:	9b00      	ldr	r3, [sp, #0]
1000467e:	3b01      	subs	r3, #1
10004680:	b29b      	uxth	r3, r3
10004682:	9300      	str	r3, [sp, #0]
10004684:	2b00      	cmp	r3, #0
10004686:	d1c8      	bne.n	1000461a <execute_traceback+0x4e>
10004688:	2104      	movs	r1, #4
1000468a:	e10a      	b.n	100048a2 <execute_traceback+0x2d6>
1000468c:	00c9      	lsls	r1, r1, #3
1000468e:	5853      	ldr	r3, [r2, r1]
10004690:	00c0      	lsls	r0, r0, #3
10004692:	40eb      	lsrs	r3, r5
10004694:	e7e3      	b.n	1000465e <execute_traceback+0x92>
10004696:	00c9      	lsls	r1, r1, #3
10004698:	5853      	ldr	r3, [r2, r1]
1000469a:	00c0      	lsls	r0, r0, #3
1000469c:	412b      	asrs	r3, r5
1000469e:	e7de      	b.n	1000465e <execute_traceback+0x92>
100046a0:	26c0      	movs	r6, #192	; 0xc0
100046a2:	0add      	lsrs	r5, r3, #11
100046a4:	02e8      	lsls	r0, r5, #11
100046a6:	0176      	lsls	r6, r6, #5
100046a8:	42b0      	cmp	r0, r6
100046aa:	d127      	bne.n	100046fc <execute_traceback+0x130>
100046ac:	2180      	movs	r1, #128	; 0x80
100046ae:	2507      	movs	r5, #7
100046b0:	0089      	lsls	r1, r1, #2
100046b2:	4019      	ands	r1, r3
100046b4:	468c      	mov	ip, r1
100046b6:	099e      	lsrs	r6, r3, #6
100046b8:	08d9      	lsrs	r1, r3, #3
100046ba:	4029      	ands	r1, r5
100046bc:	402e      	ands	r6, r5
100046be:	401d      	ands	r5, r3
100046c0:	00c9      	lsls	r1, r1, #3
100046c2:	00ed      	lsls	r5, r5, #3
100046c4:	5850      	ldr	r0, [r2, r1]
100046c6:	1957      	adds	r7, r2, r5
100046c8:	055b      	lsls	r3, r3, #21
100046ca:	d50e      	bpl.n	100046ea <execute_traceback+0x11e>
100046cc:	4663      	mov	r3, ip
100046ce:	2b00      	cmp	r3, #0
100046d0:	d109      	bne.n	100046e6 <execute_traceback+0x11a>
100046d2:	1980      	adds	r0, r0, r6
100046d4:	2204      	movs	r2, #4
100046d6:	6038      	str	r0, [r7, #0]
100046d8:	9b03      	ldr	r3, [sp, #12]
100046da:	1859      	adds	r1, r3, r1
100046dc:	7909      	ldrb	r1, [r1, #4]
100046de:	195b      	adds	r3, r3, r5
100046e0:	430a      	orrs	r2, r1
100046e2:	711a      	strb	r2, [r3, #4]
100046e4:	e7c3      	b.n	1000466e <execute_traceback+0xa2>
100046e6:	1b80      	subs	r0, r0, r6
100046e8:	e7f4      	b.n	100046d4 <execute_traceback+0x108>
100046ea:	00f6      	lsls	r6, r6, #3
100046ec:	58b3      	ldr	r3, [r6, r2]
100046ee:	4662      	mov	r2, ip
100046f0:	2a00      	cmp	r2, #0
100046f2:	d101      	bne.n	100046f8 <execute_traceback+0x12c>
100046f4:	1818      	adds	r0, r3, r0
100046f6:	e7ed      	b.n	100046d4 <execute_traceback+0x108>
100046f8:	1ac0      	subs	r0, r0, r3
100046fa:	e7eb      	b.n	100046d4 <execute_traceback+0x108>
100046fc:	2680      	movs	r6, #128	; 0x80
100046fe:	01b6      	lsls	r6, r6, #6
10004700:	42b7      	cmp	r7, r6
10004702:	d10a      	bne.n	1000471a <execute_traceback+0x14e>
10004704:	07a9      	lsls	r1, r5, #30
10004706:	d1b2      	bne.n	1000466e <execute_traceback+0xa2>
10004708:	0559      	lsls	r1, r3, #21
1000470a:	0f49      	lsrs	r1, r1, #29
1000470c:	00c9      	lsls	r1, r1, #3
1000470e:	b2db      	uxtb	r3, r3
10004710:	5053      	str	r3, [r2, r1]
10004712:	9b03      	ldr	r3, [sp, #12]
10004714:	1859      	adds	r1, r3, r1
10004716:	710c      	strb	r4, [r1, #4]
10004718:	e7a9      	b.n	1000466e <execute_traceback+0xa2>
1000471a:	0a9d      	lsrs	r5, r3, #10
1000471c:	02ae      	lsls	r6, r5, #10
1000471e:	2d10      	cmp	r5, #16
10004720:	d156      	bne.n	100047d0 <execute_traceback+0x204>
10004722:	2107      	movs	r1, #7
10004724:	0998      	lsrs	r0, r3, #6
10004726:	b2c0      	uxtb	r0, r0
10004728:	08dd      	lsrs	r5, r3, #3
1000472a:	3801      	subs	r0, #1
1000472c:	400d      	ands	r5, r1
1000472e:	4019      	ands	r1, r3
10004730:	280e      	cmp	r0, #14
10004732:	d89c      	bhi.n	1000466e <execute_traceback+0xa2>
10004734:	f004 fcf0 	bl	10009118 <__gnu_thumb1_case_sqi>
10004738:	251d1608 	.word	0x251d1608
1000473c:	9b9b9b9b 	.word	0x9b9b9b9b
10004740:	9b9b2c9b 	.word	0x9b9b2c9b
10004744:	3932      	.short	0x3932
10004746:	40          	.byte	0x40
10004747:	00          	.byte	0x00
10004748:	00c8      	lsls	r0, r1, #3
1000474a:	1811      	adds	r1, r2, r0
1000474c:	00ed      	lsls	r5, r5, #3
1000474e:	58ab      	ldr	r3, [r5, r2]
10004750:	680a      	ldr	r2, [r1, #0]
10004752:	4013      	ands	r3, r2
10004754:	600b      	str	r3, [r1, #0]
10004756:	9903      	ldr	r1, [sp, #12]
10004758:	1809      	adds	r1, r1, r0
1000475a:	2304      	movs	r3, #4
1000475c:	790a      	ldrb	r2, [r1, #4]
1000475e:	4313      	orrs	r3, r2
10004760:	710b      	strb	r3, [r1, #4]
10004762:	e784      	b.n	1000466e <execute_traceback+0xa2>
10004764:	00c8      	lsls	r0, r1, #3
10004766:	1811      	adds	r1, r2, r0
10004768:	00ed      	lsls	r5, r5, #3
1000476a:	58ab      	ldr	r3, [r5, r2]
1000476c:	680a      	ldr	r2, [r1, #0]
1000476e:	4053      	eors	r3, r2
10004770:	e7f0      	b.n	10004754 <execute_traceback+0x188>
10004772:	00c8      	lsls	r0, r1, #3
10004774:	1811      	adds	r1, r2, r0
10004776:	00ed      	lsls	r5, r5, #3
10004778:	58ab      	ldr	r3, [r5, r2]
1000477a:	680a      	ldr	r2, [r1, #0]
1000477c:	409a      	lsls	r2, r3
1000477e:	0013      	movs	r3, r2
10004780:	e7e8      	b.n	10004754 <execute_traceback+0x188>
10004782:	00c8      	lsls	r0, r1, #3
10004784:	1811      	adds	r1, r2, r0
10004786:	00ed      	lsls	r5, r5, #3
10004788:	58ab      	ldr	r3, [r5, r2]
1000478a:	680a      	ldr	r2, [r1, #0]
1000478c:	40da      	lsrs	r2, r3
1000478e:	e7f6      	b.n	1000477e <execute_traceback+0x1b2>
10004790:	00ed      	lsls	r5, r5, #3
10004792:	58ab      	ldr	r3, [r5, r2]
10004794:	00c8      	lsls	r0, r1, #3
10004796:	425b      	negs	r3, r3
10004798:	5013      	str	r3, [r2, r0]
1000479a:	e7dc      	b.n	10004756 <execute_traceback+0x18a>
1000479c:	00c8      	lsls	r0, r1, #3
1000479e:	1811      	adds	r1, r2, r0
100047a0:	00ed      	lsls	r5, r5, #3
100047a2:	58ab      	ldr	r3, [r5, r2]
100047a4:	680a      	ldr	r2, [r1, #0]
100047a6:	4313      	orrs	r3, r2
100047a8:	e7d4      	b.n	10004754 <execute_traceback+0x188>
100047aa:	00c8      	lsls	r0, r1, #3
100047ac:	1811      	adds	r1, r2, r0
100047ae:	00ed      	lsls	r5, r5, #3
100047b0:	58ab      	ldr	r3, [r5, r2]
100047b2:	680a      	ldr	r2, [r1, #0]
100047b4:	4353      	muls	r3, r2
100047b6:	e7cd      	b.n	10004754 <execute_traceback+0x188>
100047b8:	00ed      	lsls	r5, r5, #3
100047ba:	58ab      	ldr	r3, [r5, r2]
100047bc:	00c9      	lsls	r1, r1, #3
100047be:	1850      	adds	r0, r2, r1
100047c0:	425a      	negs	r2, r3
100047c2:	4153      	adcs	r3, r2
100047c4:	6802      	ldr	r2, [r0, #0]
100047c6:	4013      	ands	r3, r2
100047c8:	6003      	str	r3, [r0, #0]
100047ca:	9b03      	ldr	r3, [sp, #12]
100047cc:	1859      	adds	r1, r3, r1
100047ce:	e7c4      	b.n	1000475a <execute_traceback+0x18e>
100047d0:	2590      	movs	r5, #144	; 0x90
100047d2:	01ed      	lsls	r5, r5, #7
100047d4:	42a8      	cmp	r0, r5
100047d6:	d113      	bne.n	10004800 <execute_traceback+0x234>
100047d8:	2003      	movs	r0, #3
100047da:	4381      	bics	r1, r0
100047dc:	b2d8      	uxtb	r0, r3
100047de:	055b      	lsls	r3, r3, #21
100047e0:	3104      	adds	r1, #4
100047e2:	0080      	lsls	r0, r0, #2
100047e4:	0f5b      	lsrs	r3, r3, #29
100047e6:	00db      	lsls	r3, r3, #3
100047e8:	1809      	adds	r1, r1, r0
100047ea:	18d2      	adds	r2, r2, r3
100047ec:	2900      	cmp	r1, #0
100047ee:	d005      	beq.n	100047fc <execute_traceback+0x230>
100047f0:	6809      	ldr	r1, [r1, #0]
100047f2:	6011      	str	r1, [r2, #0]
100047f4:	9a03      	ldr	r2, [sp, #12]
100047f6:	18d3      	adds	r3, r2, r3
100047f8:	2280      	movs	r2, #128	; 0x80
100047fa:	e772      	b.n	100046e2 <execute_traceback+0x116>
100047fc:	7111      	strb	r1, [r2, #4]
100047fe:	e736      	b.n	1000466e <execute_traceback+0xa2>
10004800:	27c0      	movs	r7, #192	; 0xc0
10004802:	4d34      	ldr	r5, [pc, #208]	; (100048d4 <execute_traceback+0x308>)
10004804:	01ff      	lsls	r7, r7, #7
10004806:	401d      	ands	r5, r3
10004808:	42bd      	cmp	r5, r7
1000480a:	d117      	bne.n	1000483c <execute_traceback+0x270>
1000480c:	0519      	lsls	r1, r3, #20
1000480e:	d400      	bmi.n	10004812 <execute_traceback+0x246>
10004810:	e72d      	b.n	1000466e <execute_traceback+0xa2>
10004812:	2007      	movs	r0, #7
10004814:	2503      	movs	r5, #3
10004816:	08d9      	lsrs	r1, r3, #3
10004818:	4001      	ands	r1, r0
1000481a:	00c9      	lsls	r1, r1, #3
1000481c:	588e      	ldr	r6, [r1, r2]
1000481e:	0559      	lsls	r1, r3, #21
10004820:	4003      	ands	r3, r0
10004822:	40ab      	lsls	r3, r5
10004824:	0ec9      	lsrs	r1, r1, #27
10004826:	43ae      	bics	r6, r5
10004828:	0089      	lsls	r1, r1, #2
1000482a:	1871      	adds	r1, r6, r1
1000482c:	18d2      	adds	r2, r2, r3
1000482e:	2900      	cmp	r1, #0
10004830:	d002      	beq.n	10004838 <execute_traceback+0x26c>
10004832:	7910      	ldrb	r0, [r2, #4]
10004834:	2800      	cmp	r0, #0
10004836:	d1db      	bne.n	100047f0 <execute_traceback+0x224>
10004838:	2300      	movs	r3, #0
1000483a:	e717      	b.n	1000466c <execute_traceback+0xa0>
1000483c:	25ff      	movs	r5, #255	; 0xff
1000483e:	001f      	movs	r7, r3
10004840:	43af      	bics	r7, r5
10004842:	25b0      	movs	r5, #176	; 0xb0
10004844:	022d      	lsls	r5, r5, #8
10004846:	42af      	cmp	r7, r5
10004848:	d111      	bne.n	1000486e <execute_traceback+0x2a2>
1000484a:	21fe      	movs	r1, #254	; 0xfe
1000484c:	0015      	movs	r5, r2
1000484e:	2004      	movs	r0, #4
10004850:	0049      	lsls	r1, r1, #1
10004852:	009e      	lsls	r6, r3, #2
10004854:	3568      	adds	r5, #104	; 0x68
10004856:	400e      	ands	r6, r1
10004858:	7929      	ldrb	r1, [r5, #4]
1000485a:	4308      	orrs	r0, r1
1000485c:	6e91      	ldr	r1, [r2, #104]	; 0x68
1000485e:	061b      	lsls	r3, r3, #24
10004860:	d403      	bmi.n	1000486a <execute_traceback+0x29e>
10004862:	1871      	adds	r1, r6, r1
10004864:	6691      	str	r1, [r2, #104]	; 0x68
10004866:	7128      	strb	r0, [r5, #4]
10004868:	e701      	b.n	1000466e <execute_traceback+0xa2>
1000486a:	1b89      	subs	r1, r1, r6
1000486c:	e7fa      	b.n	10004864 <execute_traceback+0x298>
1000486e:	2588      	movs	r5, #136	; 0x88
10004870:	01ed      	lsls	r5, r5, #7
10004872:	42ae      	cmp	r6, r5
10004874:	d134      	bne.n	100048e0 <execute_traceback+0x314>
10004876:	0599      	lsls	r1, r3, #22
10004878:	0f89      	lsrs	r1, r1, #30
1000487a:	2903      	cmp	r1, #3
1000487c:	d000      	beq.n	10004880 <execute_traceback+0x2b4>
1000487e:	e6f6      	b.n	1000466e <execute_traceback+0xa2>
10004880:	0619      	lsls	r1, r3, #24
10004882:	d507      	bpl.n	10004894 <execute_traceback+0x2c8>
10004884:	0013      	movs	r3, r2
10004886:	2100      	movs	r1, #0
10004888:	3370      	adds	r3, #112	; 0x70
1000488a:	7119      	strb	r1, [r3, #4]
1000488c:	0010      	movs	r0, r2
1000488e:	4b10      	ldr	r3, [pc, #64]	; (100048d0 <execute_traceback+0x304>)
10004890:	4798      	blx	r3
10004892:	e6ec      	b.n	1000466e <execute_traceback+0xa2>
10004894:	2078      	movs	r0, #120	; 0x78
10004896:	4003      	ands	r3, r0
10004898:	18d3      	adds	r3, r2, r3
1000489a:	6819      	ldr	r1, [r3, #0]
1000489c:	4221      	tst	r1, r4
1000489e:	d105      	bne.n	100048ac <execute_traceback+0x2e0>
100048a0:	2103      	movs	r1, #3
100048a2:	480d      	ldr	r0, [pc, #52]	; (100048d8 <execute_traceback+0x30c>)
100048a4:	4b0d      	ldr	r3, [pc, #52]	; (100048dc <execute_traceback+0x310>)
100048a6:	4798      	blx	r3
100048a8:	b031      	add	sp, #196	; 0xc4
100048aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
100048ac:	791b      	ldrb	r3, [r3, #4]
100048ae:	2b02      	cmp	r3, #2
100048b0:	d002      	beq.n	100048b8 <execute_traceback+0x2ec>
100048b2:	2b80      	cmp	r3, #128	; 0x80
100048b4:	d000      	beq.n	100048b8 <execute_traceback+0x2ec>
100048b6:	e07f      	b.n	100049b8 <execute_traceback+0x3ec>
100048b8:	3902      	subs	r1, #2
100048ba:	6791      	str	r1, [r2, #120]	; 0x78
100048bc:	9b04      	ldr	r3, [sp, #16]
100048be:	a803      	add	r0, sp, #12
100048c0:	4798      	blx	r3
100048c2:	1e01      	subs	r1, r0, #0
100048c4:	d100      	bne.n	100048c8 <execute_traceback+0x2fc>
100048c6:	e6d2      	b.n	1000466e <execute_traceback+0xa2>
100048c8:	e7eb      	b.n	100048a2 <execute_traceback+0x2d6>
100048ca:	46c0      	nop			; (mov r8, r8)
100048cc:	10004575 	.word	0x10004575
100048d0:	10004561 	.word	0x10004561
100048d4:	fffff200 	.word	0xfffff200
100048d8:	1000a5b4 	.word	0x1000a5b4
100048dc:	0002fccd 	.word	0x0002fccd
100048e0:	26b4      	movs	r6, #180	; 0xb4
100048e2:	4d37      	ldr	r5, [pc, #220]	; (100049c0 <execute_traceback+0x3f4>)
100048e4:	0236      	lsls	r6, r6, #8
100048e6:	401d      	ands	r5, r3
100048e8:	42b5      	cmp	r5, r6
100048ea:	d145      	bne.n	10004978 <execute_traceback+0x3ac>
100048ec:	2080      	movs	r0, #128	; 0x80
100048ee:	0040      	lsls	r0, r0, #1
100048f0:	4018      	ands	r0, r3
100048f2:	b2dd      	uxtb	r5, r3
100048f4:	051b      	lsls	r3, r3, #20
100048f6:	d52d      	bpl.n	10004954 <execute_traceback+0x388>
100048f8:	2200      	movs	r2, #0
100048fa:	2702      	movs	r7, #2
100048fc:	002b      	movs	r3, r5
100048fe:	4113      	asrs	r3, r2
10004900:	4223      	tst	r3, r4
10004902:	d00a      	beq.n	1000491a <execute_traceback+0x34e>
10004904:	9903      	ldr	r1, [sp, #12]
10004906:	00d3      	lsls	r3, r2, #3
10004908:	6e8e      	ldr	r6, [r1, #104]	; 0x68
1000490a:	6836      	ldr	r6, [r6, #0]
1000490c:	50ce      	str	r6, [r1, r3]
1000490e:	9903      	ldr	r1, [sp, #12]
10004910:	18cb      	adds	r3, r1, r3
10004912:	711f      	strb	r7, [r3, #4]
10004914:	6e8b      	ldr	r3, [r1, #104]	; 0x68
10004916:	3304      	adds	r3, #4
10004918:	668b      	str	r3, [r1, #104]	; 0x68
1000491a:	3201      	adds	r2, #1
1000491c:	2a08      	cmp	r2, #8
1000491e:	d1ed      	bne.n	100048fc <execute_traceback+0x330>
10004920:	2800      	cmp	r0, #0
10004922:	d100      	bne.n	10004926 <execute_traceback+0x35a>
10004924:	e6a3      	b.n	1000466e <execute_traceback+0xa2>
10004926:	9b03      	ldr	r3, [sp, #12]
10004928:	2502      	movs	r5, #2
1000492a:	0018      	movs	r0, r3
1000492c:	6e9a      	ldr	r2, [r3, #104]	; 0x68
1000492e:	3078      	adds	r0, #120	; 0x78
10004930:	6811      	ldr	r1, [r2, #0]
10004932:	6799      	str	r1, [r3, #120]	; 0x78
10004934:	7105      	strb	r5, [r0, #4]
10004936:	4221      	tst	r1, r4
10004938:	d0b2      	beq.n	100048a0 <execute_traceback+0x2d4>
1000493a:	3204      	adds	r2, #4
1000493c:	669a      	str	r2, [r3, #104]	; 0x68
1000493e:	9b04      	ldr	r3, [sp, #16]
10004940:	a803      	add	r0, sp, #12
10004942:	9301      	str	r3, [sp, #4]
10004944:	4798      	blx	r3
10004946:	1e01      	subs	r1, r0, #0
10004948:	d1ab      	bne.n	100048a2 <execute_traceback+0x2d6>
1000494a:	9a03      	ldr	r2, [sp, #12]
1000494c:	6f93      	ldr	r3, [r2, #120]	; 0x78
1000494e:	3b02      	subs	r3, #2
10004950:	6793      	str	r3, [r2, #120]	; 0x78
10004952:	e68c      	b.n	1000466e <execute_traceback+0xa2>
10004954:	2800      	cmp	r0, #0
10004956:	d004      	beq.n	10004962 <execute_traceback+0x396>
10004958:	4221      	tst	r1, r4
1000495a:	d0a1      	beq.n	100048a0 <execute_traceback+0x2d4>
1000495c:	6e93      	ldr	r3, [r2, #104]	; 0x68
1000495e:	3b04      	subs	r3, #4
10004960:	6693      	str	r3, [r2, #104]	; 0x68
10004962:	2307      	movs	r3, #7
10004964:	0029      	movs	r1, r5
10004966:	4119      	asrs	r1, r3
10004968:	4221      	tst	r1, r4
1000496a:	d002      	beq.n	10004972 <execute_traceback+0x3a6>
1000496c:	6e91      	ldr	r1, [r2, #104]	; 0x68
1000496e:	3904      	subs	r1, #4
10004970:	6691      	str	r1, [r2, #104]	; 0x68
10004972:	3b01      	subs	r3, #1
10004974:	d2f6      	bcs.n	10004964 <execute_traceback+0x398>
10004976:	e67a      	b.n	1000466e <execute_traceback+0xa2>
10004978:	25e0      	movs	r5, #224	; 0xe0
1000497a:	022d      	lsls	r5, r5, #8
1000497c:	42a8      	cmp	r0, r5
1000497e:	d105      	bne.n	1000498c <execute_traceback+0x3c0>
10004980:	055b      	lsls	r3, r3, #21
10004982:	151b      	asrs	r3, r3, #20
10004984:	3102      	adds	r1, #2
10004986:	1859      	adds	r1, r3, r1
10004988:	6791      	str	r1, [r2, #120]	; 0x78
1000498a:	e670      	b.n	1000466e <execute_traceback+0xa2>
1000498c:	21be      	movs	r1, #190	; 0xbe
1000498e:	0209      	lsls	r1, r1, #8
10004990:	428f      	cmp	r7, r1
10004992:	d100      	bne.n	10004996 <execute_traceback+0x3ca>
10004994:	e66b      	b.n	1000466e <execute_traceback+0xa2>
10004996:	490b      	ldr	r1, [pc, #44]	; (100049c4 <execute_traceback+0x3f8>)
10004998:	0b1b      	lsrs	r3, r3, #12
1000499a:	2b0f      	cmp	r3, #15
1000499c:	d109      	bne.n	100049b2 <execute_traceback+0x3e6>
1000499e:	0013      	movs	r3, r2
100049a0:	2000      	movs	r0, #0
100049a2:	3370      	adds	r3, #112	; 0x70
100049a4:	7118      	strb	r0, [r3, #4]
100049a6:	0010      	movs	r0, r2
100049a8:	4788      	blx	r1
100049aa:	9a03      	ldr	r2, [sp, #12]
100049ac:	6f93      	ldr	r3, [r2, #120]	; 0x78
100049ae:	3302      	adds	r3, #2
100049b0:	e7ce      	b.n	10004950 <execute_traceback+0x384>
100049b2:	0010      	movs	r0, r2
100049b4:	4788      	blx	r1
100049b6:	e65a      	b.n	1000466e <execute_traceback+0xa2>
100049b8:	2102      	movs	r1, #2
100049ba:	e772      	b.n	100048a2 <execute_traceback+0x2d6>
100049bc:	2106      	movs	r1, #6
100049be:	e770      	b.n	100048a2 <execute_traceback+0x2d6>
100049c0:	fffff600 	.word	0xfffff600
100049c4:	10004561 	.word	0x10004561

100049c8 <app_dis_value_req_cb>:
100049c8:	b510      	push	{r4, lr}
100049ca:	2808      	cmp	r0, #8
100049cc:	d827      	bhi.n	10004a1e <app_dis_value_req_cb+0x56>
100049ce:	f004 fc13 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
100049d2:	0a05      	.short	0x0a05
100049d4:	1e1e1a16 	.word	0x1e1e1a16
100049d8:	220e      	.short	0x220e
100049da:	12          	.byte	0x12
100049db:	00          	.byte	0x00
100049dc:	230d      	movs	r3, #13
100049de:	7013      	strb	r3, [r2, #0]
100049e0:	4b12      	ldr	r3, [pc, #72]	; (10004a2c <app_dis_value_req_cb+0x64>)
100049e2:	600b      	str	r3, [r1, #0]
100049e4:	bd10      	pop	{r4, pc}
100049e6:	2306      	movs	r3, #6
100049e8:	7013      	strb	r3, [r2, #0]
100049ea:	4b11      	ldr	r3, [pc, #68]	; (10004a30 <app_dis_value_req_cb+0x68>)
100049ec:	e7f9      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
100049ee:	2308      	movs	r3, #8
100049f0:	7013      	strb	r3, [r2, #0]
100049f2:	4b10      	ldr	r3, [pc, #64]	; (10004a34 <app_dis_value_req_cb+0x6c>)
100049f4:	e7f5      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
100049f6:	2307      	movs	r3, #7
100049f8:	7013      	strb	r3, [r2, #0]
100049fa:	4b0f      	ldr	r3, [pc, #60]	; (10004a38 <app_dis_value_req_cb+0x70>)
100049fc:	e7f1      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
100049fe:	2307      	movs	r3, #7
10004a00:	7013      	strb	r3, [r2, #0]
10004a02:	4b0e      	ldr	r3, [pc, #56]	; (10004a3c <app_dis_value_req_cb+0x74>)
10004a04:	e7ed      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
10004a06:	2305      	movs	r3, #5
10004a08:	7013      	strb	r3, [r2, #0]
10004a0a:	4b0d      	ldr	r3, [pc, #52]	; (10004a40 <app_dis_value_req_cb+0x78>)
10004a0c:	e7e9      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
10004a0e:	2307      	movs	r3, #7
10004a10:	7013      	strb	r3, [r2, #0]
10004a12:	4b0c      	ldr	r3, [pc, #48]	; (10004a44 <app_dis_value_req_cb+0x7c>)
10004a14:	e7e5      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
10004a16:	2306      	movs	r3, #6
10004a18:	7013      	strb	r3, [r2, #0]
10004a1a:	4b0b      	ldr	r3, [pc, #44]	; (10004a48 <app_dis_value_req_cb+0x80>)
10004a1c:	e7e1      	b.n	100049e2 <app_dis_value_req_cb+0x1a>
10004a1e:	2226      	movs	r2, #38	; 0x26
10004a20:	490a      	ldr	r1, [pc, #40]	; (10004a4c <app_dis_value_req_cb+0x84>)
10004a22:	480b      	ldr	r0, [pc, #44]	; (10004a50 <app_dis_value_req_cb+0x88>)
10004a24:	4b0b      	ldr	r3, [pc, #44]	; (10004a54 <app_dis_value_req_cb+0x8c>)
10004a26:	4798      	blx	r3
10004a28:	e7dc      	b.n	100049e4 <app_dis_value_req_cb+0x1c>
10004a2a:	46c0      	nop			; (mov r8, r8)
10004a2c:	1000a5cd 	.word	0x1000a5cd
10004a30:	1000a5db 	.word	0x1000a5db
10004a34:	1000a5e2 	.word	0x1000a5e2
10004a38:	1000a613 	.word	0x1000a613
10004a3c:	1000a5eb 	.word	0x1000a5eb
10004a40:	1000a5f3 	.word	0x1000a5f3
10004a44:	1000a5f9 	.word	0x1000a5f9
10004a48:	1000a601 	.word	0x1000a601
10004a4c:	1000a608 	.word	0x1000a608
10004a50:	1000b4d2 	.word	0x1000b4d2
10004a54:	00006609 	.word	0x00006609

10004a58 <app_dis_param>:
10004a58:	4800      	ldr	r0, [pc, #0]	; (10004a5c <app_dis_param+0x4>)
10004a5a:	4770      	bx	lr
10004a5c:	1000a61c 	.word	0x1000a61c

10004a60 <atm_adv_cb>:
10004a60:	b510      	push	{r4, lr}
10004a62:	4b02      	ldr	r3, [pc, #8]	; (10004a6c <atm_adv_cb+0xc>)
10004a64:	681b      	ldr	r3, [r3, #0]
10004a66:	4798      	blx	r3
10004a68:	bd10      	pop	{r4, pc}
10004a6a:	46c0      	nop			; (mov r8, r8)
10004a6c:	20015060 	.word	0x20015060

10004a70 <atm_adv_find_by_actidx>:
10004a70:	4a05      	ldr	r2, [pc, #20]	; (10004a88 <atm_adv_find_by_actidx+0x18>)
10004a72:	0003      	movs	r3, r0
10004a74:	6810      	ldr	r0, [r2, #0]
10004a76:	2800      	cmp	r0, #0
10004a78:	d100      	bne.n	10004a7c <atm_adv_find_by_actidx+0xc>
10004a7a:	4770      	bx	lr
10004a7c:	7902      	ldrb	r2, [r0, #4]
10004a7e:	429a      	cmp	r2, r3
10004a80:	d0fb      	beq.n	10004a7a <atm_adv_find_by_actidx+0xa>
10004a82:	6800      	ldr	r0, [r0, #0]
10004a84:	e7f7      	b.n	10004a76 <atm_adv_find_by_actidx+0x6>
10004a86:	46c0      	nop			; (mov r8, r8)
10004a88:	20015064 	.word	0x20015064

10004a8c <atm_gapm_adv_print_status>:
10004a8c:	b510      	push	{r4, lr}
10004a8e:	0002      	movs	r2, r0
10004a90:	000b      	movs	r3, r1
10004a92:	4c02      	ldr	r4, [pc, #8]	; (10004a9c <atm_gapm_adv_print_status+0x10>)
10004a94:	4902      	ldr	r1, [pc, #8]	; (10004aa0 <atm_gapm_adv_print_status+0x14>)
10004a96:	4803      	ldr	r0, [pc, #12]	; (10004aa4 <atm_gapm_adv_print_status+0x18>)
10004a98:	47a0      	blx	r4
10004a9a:	bd10      	pop	{r4, pc}
10004a9c:	000066b1 	.word	0x000066b1
10004aa0:	1000a96b 	.word	0x1000a96b
10004aa4:	1000a624 	.word	0x1000a624

10004aa8 <atm_adv_sanity_err_return>:
10004aa8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
10004aaa:	88c3      	ldrh	r3, [r0, #6]
10004aac:	7902      	ldrb	r2, [r0, #4]
10004aae:	9102      	str	r1, [sp, #8]
10004ab0:	7941      	ldrb	r1, [r0, #5]
10004ab2:	4c07      	ldr	r4, [pc, #28]	; (10004ad0 <atm_adv_sanity_err_return+0x28>)
10004ab4:	9101      	str	r1, [sp, #4]
10004ab6:	7f41      	ldrb	r1, [r0, #29]
10004ab8:	4806      	ldr	r0, [pc, #24]	; (10004ad4 <atm_adv_sanity_err_return+0x2c>)
10004aba:	9100      	str	r1, [sp, #0]
10004abc:	4906      	ldr	r1, [pc, #24]	; (10004ad8 <atm_adv_sanity_err_return+0x30>)
10004abe:	47a0      	blx	r4
10004ac0:	22d4      	movs	r2, #212	; 0xd4
10004ac2:	4906      	ldr	r1, [pc, #24]	; (10004adc <atm_adv_sanity_err_return+0x34>)
10004ac4:	4806      	ldr	r0, [pc, #24]	; (10004ae0 <atm_adv_sanity_err_return+0x38>)
10004ac6:	4b07      	ldr	r3, [pc, #28]	; (10004ae4 <atm_adv_sanity_err_return+0x3c>)
10004ac8:	4798      	blx	r3
10004aca:	4807      	ldr	r0, [pc, #28]	; (10004ae8 <atm_adv_sanity_err_return+0x40>)
10004acc:	b004      	add	sp, #16
10004ace:	bd10      	pop	{r4, pc}
10004ad0:	000066b1 	.word	0x000066b1
10004ad4:	1000a64e 	.word	0x1000a64e
10004ad8:	1000a96b 	.word	0x1000a96b
10004adc:	1000a6ad 	.word	0x1000a6ad
10004ae0:	1000b4d2 	.word	0x1000b4d2
10004ae4:	00006609 	.word	0x00006609
10004ae8:	00000401 	.word	0x00000401

10004aec <atm_gapm_cmp_evt_set_adv_data_cmp>:
10004aec:	b570      	push	{r4, r5, r6, lr}
10004aee:	000c      	movs	r4, r1
10004af0:	8841      	ldrh	r1, [r0, #2]
10004af2:	0005      	movs	r5, r0
10004af4:	2900      	cmp	r1, #0
10004af6:	d00d      	beq.n	10004b14 <atm_gapm_cmp_evt_set_adv_data_cmp+0x28>
10004af8:	7920      	ldrb	r0, [r4, #4]
10004afa:	4b0c      	ldr	r3, [pc, #48]	; (10004b2c <atm_gapm_cmp_evt_set_adv_data_cmp+0x40>)
10004afc:	4798      	blx	r3
10004afe:	480c      	ldr	r0, [pc, #48]	; (10004b30 <atm_gapm_cmp_evt_set_adv_data_cmp+0x44>)
10004b00:	2283      	movs	r2, #131	; 0x83
10004b02:	490c      	ldr	r1, [pc, #48]	; (10004b34 <atm_gapm_cmp_evt_set_adv_data_cmp+0x48>)
10004b04:	4b0c      	ldr	r3, [pc, #48]	; (10004b38 <atm_gapm_cmp_evt_set_adv_data_cmp+0x4c>)
10004b06:	4798      	blx	r3
10004b08:	2003      	movs	r0, #3
10004b0a:	886a      	ldrh	r2, [r5, #2]
10004b0c:	7921      	ldrb	r1, [r4, #4]
10004b0e:	4b0b      	ldr	r3, [pc, #44]	; (10004b3c <atm_gapm_cmp_evt_set_adv_data_cmp+0x50>)
10004b10:	4798      	blx	r3
10004b12:	bd70      	pop	{r4, r5, r6, pc}
10004b14:	7a23      	ldrb	r3, [r4, #8]
10004b16:	2b07      	cmp	r3, #7
10004b18:	d103      	bne.n	10004b22 <atm_gapm_cmp_evt_set_adv_data_cmp+0x36>
10004b1a:	2307      	movs	r3, #7
10004b1c:	71e3      	strb	r3, [r4, #7]
10004b1e:	2004      	movs	r0, #4
10004b20:	e7f3      	b.n	10004b0a <atm_gapm_cmp_evt_set_adv_data_cmp+0x1e>
10004b22:	2b09      	cmp	r3, #9
10004b24:	d0fa      	beq.n	10004b1c <atm_gapm_cmp_evt_set_adv_data_cmp+0x30>
10004b26:	2b02      	cmp	r3, #2
10004b28:	d1f9      	bne.n	10004b1e <atm_gapm_cmp_evt_set_adv_data_cmp+0x32>
10004b2a:	e7f6      	b.n	10004b1a <atm_gapm_cmp_evt_set_adv_data_cmp+0x2e>
10004b2c:	10004a8d 	.word	0x10004a8d
10004b30:	1000b4d2 	.word	0x1000b4d2
10004b34:	1000a6ad 	.word	0x1000a6ad
10004b38:	00006609 	.word	0x00006609
10004b3c:	10004a61 	.word	0x10004a61

10004b40 <atm_gapm_cmp_evt_set_scan_data_cmp>:
10004b40:	b570      	push	{r4, r5, r6, lr}
10004b42:	000c      	movs	r4, r1
10004b44:	8841      	ldrh	r1, [r0, #2]
10004b46:	0005      	movs	r5, r0
10004b48:	2900      	cmp	r1, #0
10004b4a:	d00d      	beq.n	10004b68 <atm_gapm_cmp_evt_set_scan_data_cmp+0x28>
10004b4c:	7920      	ldrb	r0, [r4, #4]
10004b4e:	4b0c      	ldr	r3, [pc, #48]	; (10004b80 <atm_gapm_cmp_evt_set_scan_data_cmp+0x40>)
10004b50:	4798      	blx	r3
10004b52:	480c      	ldr	r0, [pc, #48]	; (10004b84 <atm_gapm_cmp_evt_set_scan_data_cmp+0x44>)
10004b54:	226e      	movs	r2, #110	; 0x6e
10004b56:	490c      	ldr	r1, [pc, #48]	; (10004b88 <atm_gapm_cmp_evt_set_scan_data_cmp+0x48>)
10004b58:	4b0c      	ldr	r3, [pc, #48]	; (10004b8c <atm_gapm_cmp_evt_set_scan_data_cmp+0x4c>)
10004b5a:	4798      	blx	r3
10004b5c:	2005      	movs	r0, #5
10004b5e:	886a      	ldrh	r2, [r5, #2]
10004b60:	7921      	ldrb	r1, [r4, #4]
10004b62:	4b0b      	ldr	r3, [pc, #44]	; (10004b90 <atm_gapm_cmp_evt_set_scan_data_cmp+0x50>)
10004b64:	4798      	blx	r3
10004b66:	bd70      	pop	{r4, r5, r6, pc}
10004b68:	7a23      	ldrb	r3, [r4, #8]
10004b6a:	2b07      	cmp	r3, #7
10004b6c:	d103      	bne.n	10004b76 <atm_gapm_cmp_evt_set_scan_data_cmp+0x36>
10004b6e:	2307      	movs	r3, #7
10004b70:	71e3      	strb	r3, [r4, #7]
10004b72:	2006      	movs	r0, #6
10004b74:	e7f3      	b.n	10004b5e <atm_gapm_cmp_evt_set_scan_data_cmp+0x1e>
10004b76:	2b09      	cmp	r3, #9
10004b78:	d0fa      	beq.n	10004b70 <atm_gapm_cmp_evt_set_scan_data_cmp+0x30>
10004b7a:	2b02      	cmp	r3, #2
10004b7c:	d1f9      	bne.n	10004b72 <atm_gapm_cmp_evt_set_scan_data_cmp+0x32>
10004b7e:	e7f6      	b.n	10004b6e <atm_gapm_cmp_evt_set_scan_data_cmp+0x2e>
10004b80:	10004a8d 	.word	0x10004a8d
10004b84:	1000b4d2 	.word	0x1000b4d2
10004b88:	1000a6ad 	.word	0x1000a6ad
10004b8c:	00006609 	.word	0x00006609
10004b90:	10004a61 	.word	0x10004a61

10004b94 <atm_gapm_cmp_evt_adv_start_cfm>:
10004b94:	b570      	push	{r4, r5, r6, lr}
10004b96:	000c      	movs	r4, r1
10004b98:	8841      	ldrh	r1, [r0, #2]
10004b9a:	0005      	movs	r5, r0
10004b9c:	7922      	ldrb	r2, [r4, #4]
10004b9e:	2900      	cmp	r1, #0
10004ba0:	d00d      	beq.n	10004bbe <atm_gapm_cmp_evt_adv_start_cfm+0x2a>
10004ba2:	0010      	movs	r0, r2
10004ba4:	4b09      	ldr	r3, [pc, #36]	; (10004bcc <atm_gapm_cmp_evt_adv_start_cfm+0x38>)
10004ba6:	4798      	blx	r3
10004ba8:	225d      	movs	r2, #93	; 0x5d
10004baa:	4909      	ldr	r1, [pc, #36]	; (10004bd0 <atm_gapm_cmp_evt_adv_start_cfm+0x3c>)
10004bac:	4809      	ldr	r0, [pc, #36]	; (10004bd4 <atm_gapm_cmp_evt_adv_start_cfm+0x40>)
10004bae:	4b0a      	ldr	r3, [pc, #40]	; (10004bd8 <atm_gapm_cmp_evt_adv_start_cfm+0x44>)
10004bb0:	4798      	blx	r3
10004bb2:	886a      	ldrh	r2, [r5, #2]
10004bb4:	7921      	ldrb	r1, [r4, #4]
10004bb6:	79e0      	ldrb	r0, [r4, #7]
10004bb8:	4b08      	ldr	r3, [pc, #32]	; (10004bdc <atm_gapm_cmp_evt_adv_start_cfm+0x48>)
10004bba:	4798      	blx	r3
10004bbc:	bd70      	pop	{r4, r5, r6, pc}
10004bbe:	4b08      	ldr	r3, [pc, #32]	; (10004be0 <atm_gapm_cmp_evt_adv_start_cfm+0x4c>)
10004bc0:	4908      	ldr	r1, [pc, #32]	; (10004be4 <atm_gapm_cmp_evt_adv_start_cfm+0x50>)
10004bc2:	4809      	ldr	r0, [pc, #36]	; (10004be8 <atm_gapm_cmp_evt_adv_start_cfm+0x54>)
10004bc4:	4798      	blx	r3
10004bc6:	2309      	movs	r3, #9
10004bc8:	71e3      	strb	r3, [r4, #7]
10004bca:	e7f2      	b.n	10004bb2 <atm_gapm_cmp_evt_adv_start_cfm+0x1e>
10004bcc:	10004a8d 	.word	0x10004a8d
10004bd0:	1000a6ad 	.word	0x1000a6ad
10004bd4:	1000b4d2 	.word	0x1000b4d2
10004bd8:	00006609 	.word	0x00006609
10004bdc:	10004a61 	.word	0x10004a61
10004be0:	000066b1 	.word	0x000066b1
10004be4:	1000a96b 	.word	0x1000a96b
10004be8:	1000a6b7 	.word	0x1000a6b7

10004bec <atm_gapm_cmp_evt_create_adv>:
10004bec:	b570      	push	{r4, r5, r6, lr}
10004bee:	7902      	ldrb	r2, [r0, #4]
10004bf0:	000c      	movs	r4, r1
10004bf2:	710a      	strb	r2, [r1, #4]
10004bf4:	8841      	ldrh	r1, [r0, #2]
10004bf6:	0005      	movs	r5, r0
10004bf8:	2900      	cmp	r1, #0
10004bfa:	d013      	beq.n	10004c24 <atm_gapm_cmp_evt_create_adv+0x38>
10004bfc:	0010      	movs	r0, r2
10004bfe:	4b0d      	ldr	r3, [pc, #52]	; (10004c34 <atm_gapm_cmp_evt_create_adv+0x48>)
10004c00:	4798      	blx	r3
10004c02:	2298      	movs	r2, #152	; 0x98
10004c04:	490c      	ldr	r1, [pc, #48]	; (10004c38 <atm_gapm_cmp_evt_create_adv+0x4c>)
10004c06:	480d      	ldr	r0, [pc, #52]	; (10004c3c <atm_gapm_cmp_evt_create_adv+0x50>)
10004c08:	4b0d      	ldr	r3, [pc, #52]	; (10004c40 <atm_gapm_cmp_evt_create_adv+0x54>)
10004c0a:	4798      	blx	r3
10004c0c:	4b0d      	ldr	r3, [pc, #52]	; (10004c44 <atm_gapm_cmp_evt_create_adv+0x58>)
10004c0e:	886a      	ldrh	r2, [r5, #2]
10004c10:	7921      	ldrb	r1, [r4, #4]
10004c12:	79e0      	ldrb	r0, [r4, #7]
10004c14:	4798      	blx	r3
10004c16:	886b      	ldrh	r3, [r5, #2]
10004c18:	2b00      	cmp	r3, #0
10004c1a:	d002      	beq.n	10004c22 <atm_gapm_cmp_evt_create_adv+0x36>
10004c1c:	0020      	movs	r0, r4
10004c1e:	4b0a      	ldr	r3, [pc, #40]	; (10004c48 <atm_gapm_cmp_evt_create_adv+0x5c>)
10004c20:	4798      	blx	r3
10004c22:	bd70      	pop	{r4, r5, r6, pc}
10004c24:	4b09      	ldr	r3, [pc, #36]	; (10004c4c <atm_gapm_cmp_evt_create_adv+0x60>)
10004c26:	490a      	ldr	r1, [pc, #40]	; (10004c50 <atm_gapm_cmp_evt_create_adv+0x64>)
10004c28:	480a      	ldr	r0, [pc, #40]	; (10004c54 <atm_gapm_cmp_evt_create_adv+0x68>)
10004c2a:	4798      	blx	r3
10004c2c:	2302      	movs	r3, #2
10004c2e:	71e3      	strb	r3, [r4, #7]
10004c30:	e7ec      	b.n	10004c0c <atm_gapm_cmp_evt_create_adv+0x20>
10004c32:	46c0      	nop			; (mov r8, r8)
10004c34:	10004a8d 	.word	0x10004a8d
10004c38:	1000a6ad 	.word	0x1000a6ad
10004c3c:	1000b4d2 	.word	0x1000b4d2
10004c40:	00006609 	.word	0x00006609
10004c44:	10004a61 	.word	0x10004a61
10004c48:	000014ed 	.word	0x000014ed
10004c4c:	000066b1 	.word	0x000066b1
10004c50:	1000a96b 	.word	0x1000a96b
10004c54:	1000a6d8 	.word	0x1000a6d8

10004c58 <atm_gapm_cmp_evt_adv_stop>:
10004c58:	b570      	push	{r4, r5, r6, lr}
10004c5a:	4b0a      	ldr	r3, [pc, #40]	; (10004c84 <atm_gapm_cmp_evt_adv_stop+0x2c>)
10004c5c:	0005      	movs	r5, r0
10004c5e:	2002      	movs	r0, #2
10004c60:	000c      	movs	r4, r1
10004c62:	4798      	blx	r3
10004c64:	2307      	movs	r3, #7
10004c66:	7223      	strb	r3, [r4, #8]
10004c68:	71e3      	strb	r3, [r4, #7]
10004c6a:	886b      	ldrh	r3, [r5, #2]
10004c6c:	7922      	ldrb	r2, [r4, #4]
10004c6e:	4e06      	ldr	r6, [pc, #24]	; (10004c88 <atm_gapm_cmp_evt_adv_stop+0x30>)
10004c70:	4906      	ldr	r1, [pc, #24]	; (10004c8c <atm_gapm_cmp_evt_adv_stop+0x34>)
10004c72:	4807      	ldr	r0, [pc, #28]	; (10004c90 <atm_gapm_cmp_evt_adv_stop+0x38>)
10004c74:	47b0      	blx	r6
10004c76:	886a      	ldrh	r2, [r5, #2]
10004c78:	7921      	ldrb	r1, [r4, #4]
10004c7a:	79e0      	ldrb	r0, [r4, #7]
10004c7c:	4b05      	ldr	r3, [pc, #20]	; (10004c94 <atm_gapm_cmp_evt_adv_stop+0x3c>)
10004c7e:	4798      	blx	r3
10004c80:	bd70      	pop	{r4, r5, r6, pc}
10004c82:	46c0      	nop			; (mov r8, r8)
10004c84:	10003b21 	.word	0x10003b21
10004c88:	000066b1 	.word	0x000066b1
10004c8c:	1000a96b 	.word	0x1000a96b
10004c90:	1000a6ff 	.word	0x1000a6ff
10004c94:	10004a61 	.word	0x10004a61

10004c98 <atm_adv_reg>:
10004c98:	b570      	push	{r4, r5, r6, lr}
10004c9a:	4d05      	ldr	r5, [pc, #20]	; (10004cb0 <atm_adv_reg+0x18>)
10004c9c:	0004      	movs	r4, r0
10004c9e:	682b      	ldr	r3, [r5, #0]
10004ca0:	2b00      	cmp	r3, #0
10004ca2:	d102      	bne.n	10004caa <atm_adv_reg+0x12>
10004ca4:	4803      	ldr	r0, [pc, #12]	; (10004cb4 <atm_adv_reg+0x1c>)
10004ca6:	4b04      	ldr	r3, [pc, #16]	; (10004cb8 <atm_adv_reg+0x20>)
10004ca8:	4798      	blx	r3
10004caa:	602c      	str	r4, [r5, #0]
10004cac:	bd70      	pop	{r4, r5, r6, pc}
10004cae:	46c0      	nop			; (mov r8, r8)
10004cb0:	20015060 	.word	0x20015060
10004cb4:	20015064 	.word	0x20015064
10004cb8:	00002657 	.word	0x00002657

10004cbc <atm_adv_create>:
10004cbc:	b570      	push	{r4, r5, r6, lr}
10004cbe:	4d40      	ldr	r5, [pc, #256]	; (10004dc0 <atm_adv_create+0x104>)
10004cc0:	0004      	movs	r4, r0
10004cc2:	682b      	ldr	r3, [r5, #0]
10004cc4:	2b00      	cmp	r3, #0
10004cc6:	d10e      	bne.n	10004ce6 <atm_adv_create+0x2a>
10004cc8:	4b3e      	ldr	r3, [pc, #248]	; (10004dc4 <atm_adv_create+0x108>)
10004cca:	493f      	ldr	r1, [pc, #252]	; (10004dc8 <atm_adv_create+0x10c>)
10004ccc:	483f      	ldr	r0, [pc, #252]	; (10004dcc <atm_adv_create+0x110>)
10004cce:	4798      	blx	r3
10004cd0:	682b      	ldr	r3, [r5, #0]
10004cd2:	2b00      	cmp	r3, #0
10004cd4:	d105      	bne.n	10004ce2 <atm_adv_create+0x26>
10004cd6:	2295      	movs	r2, #149	; 0x95
10004cd8:	493d      	ldr	r1, [pc, #244]	; (10004dd0 <atm_adv_create+0x114>)
10004cda:	483e      	ldr	r0, [pc, #248]	; (10004dd4 <atm_adv_create+0x118>)
10004cdc:	4b3e      	ldr	r3, [pc, #248]	; (10004dd8 <atm_adv_create+0x11c>)
10004cde:	0052      	lsls	r2, r2, #1
10004ce0:	4798      	blx	r3
10004ce2:	483e      	ldr	r0, [pc, #248]	; (10004ddc <atm_adv_create+0x120>)
10004ce4:	e04e      	b.n	10004d84 <atm_adv_create+0xc8>
10004ce6:	4d3e      	ldr	r5, [pc, #248]	; (10004de0 <atm_adv_create+0x124>)
10004ce8:	4b3e      	ldr	r3, [pc, #248]	; (10004de4 <atm_adv_create+0x128>)
10004cea:	0028      	movs	r0, r5
10004cec:	4798      	blx	r3
10004cee:	2801      	cmp	r0, #1
10004cf0:	d863      	bhi.n	10004dba <atm_adv_create+0xfe>
10004cf2:	2c00      	cmp	r4, #0
10004cf4:	d106      	bne.n	10004d04 <atm_adv_create+0x48>
10004cf6:	22dd      	movs	r2, #221	; 0xdd
10004cf8:	4935      	ldr	r1, [pc, #212]	; (10004dd0 <atm_adv_create+0x114>)
10004cfa:	483b      	ldr	r0, [pc, #236]	; (10004de8 <atm_adv_create+0x12c>)
10004cfc:	4b36      	ldr	r3, [pc, #216]	; (10004dd8 <atm_adv_create+0x11c>)
10004cfe:	4798      	blx	r3
10004d00:	483a      	ldr	r0, [pc, #232]	; (10004dec <atm_adv_create+0x130>)
10004d02:	e03f      	b.n	10004d84 <atm_adv_create+0xc8>
10004d04:	7922      	ldrb	r2, [r4, #4]
10004d06:	2a01      	cmp	r2, #1
10004d08:	d03d      	beq.n	10004d86 <atm_adv_create+0xca>
10004d0a:	2a02      	cmp	r2, #2
10004d0c:	d045      	beq.n	10004d9a <atm_adv_create+0xde>
10004d0e:	2a00      	cmp	r2, #0
10004d10:	d148      	bne.n	10004da4 <atm_adv_create+0xe8>
10004d12:	7f61      	ldrb	r1, [r4, #29]
10004d14:	2901      	cmp	r1, #1
10004d16:	d006      	beq.n	10004d26 <atm_adv_create+0x6a>
10004d18:	0011      	movs	r1, r2
10004d1a:	0020      	movs	r0, r4
10004d1c:	4b34      	ldr	r3, [pc, #208]	; (10004df0 <atm_adv_create+0x134>)
10004d1e:	4798      	blx	r3
10004d20:	2800      	cmp	r0, #0
10004d22:	d1ed      	bne.n	10004d00 <atm_adv_create+0x44>
10004d24:	e012      	b.n	10004d4c <atm_adv_create+0x90>
10004d26:	220c      	movs	r2, #12
10004d28:	88e3      	ldrh	r3, [r4, #6]
10004d2a:	4213      	tst	r3, r2
10004d2c:	d00e      	beq.n	10004d4c <atm_adv_create+0x90>
10004d2e:	7962      	ldrb	r2, [r4, #5]
10004d30:	2a00      	cmp	r2, #0
10004d32:	d1f2      	bne.n	10004d1a <atm_adv_create+0x5e>
10004d34:	420b      	tst	r3, r1
10004d36:	d101      	bne.n	10004d3c <atm_adv_create+0x80>
10004d38:	2102      	movs	r1, #2
10004d3a:	e7ee      	b.n	10004d1a <atm_adv_create+0x5e>
10004d3c:	0020      	movs	r0, r4
10004d3e:	492d      	ldr	r1, [pc, #180]	; (10004df4 <atm_adv_create+0x138>)
10004d40:	4b2d      	ldr	r3, [pc, #180]	; (10004df8 <atm_adv_create+0x13c>)
10004d42:	300a      	adds	r0, #10
10004d44:	4798      	blx	r3
10004d46:	2103      	movs	r1, #3
10004d48:	2800      	cmp	r0, #0
10004d4a:	d1e6      	bne.n	10004d1a <atm_adv_create+0x5e>
10004d4c:	2100      	movs	r1, #0
10004d4e:	4b2b      	ldr	r3, [pc, #172]	; (10004dfc <atm_adv_create+0x140>)
10004d50:	200c      	movs	r0, #12
10004d52:	4798      	blx	r3
10004d54:	220c      	movs	r2, #12
10004d56:	2100      	movs	r1, #0
10004d58:	4b29      	ldr	r3, [pc, #164]	; (10004e00 <atm_adv_create+0x144>)
10004d5a:	4798      	blx	r3
10004d5c:	7923      	ldrb	r3, [r4, #4]
10004d5e:	0006      	movs	r6, r0
10004d60:	7143      	strb	r3, [r0, #5]
10004d62:	88e3      	ldrh	r3, [r4, #6]
10004d64:	0001      	movs	r1, r0
10004d66:	7183      	strb	r3, [r0, #6]
10004d68:	23ff      	movs	r3, #255	; 0xff
10004d6a:	7103      	strb	r3, [r0, #4]
10004d6c:	3bfe      	subs	r3, #254	; 0xfe
10004d6e:	71c3      	strb	r3, [r0, #7]
10004d70:	0028      	movs	r0, r5
10004d72:	4b24      	ldr	r3, [pc, #144]	; (10004e04 <atm_adv_create+0x148>)
10004d74:	4798      	blx	r3
10004d76:	7820      	ldrb	r0, [r4, #0]
10004d78:	1d21      	adds	r1, r4, #4
10004d7a:	0032      	movs	r2, r6
10004d7c:	4b22      	ldr	r3, [pc, #136]	; (10004e08 <atm_adv_create+0x14c>)
10004d7e:	4c23      	ldr	r4, [pc, #140]	; (10004e0c <atm_adv_create+0x150>)
10004d80:	47a0      	blx	r4
10004d82:	2000      	movs	r0, #0
10004d84:	bd70      	pop	{r4, r5, r6, pc}
10004d86:	7f63      	ldrb	r3, [r4, #29]
10004d88:	2104      	movs	r1, #4
10004d8a:	2b02      	cmp	r3, #2
10004d8c:	d0c5      	beq.n	10004d1a <atm_adv_create+0x5e>
10004d8e:	88e3      	ldrh	r3, [r4, #6]
10004d90:	2105      	movs	r1, #5
10004d92:	43db      	mvns	r3, r3
10004d94:	079b      	lsls	r3, r3, #30
10004d96:	d1d9      	bne.n	10004d4c <atm_adv_create+0x90>
10004d98:	e7bf      	b.n	10004d1a <atm_adv_create+0x5e>
10004d9a:	88e3      	ldrh	r3, [r4, #6]
10004d9c:	079b      	lsls	r3, r3, #30
10004d9e:	d0d5      	beq.n	10004d4c <atm_adv_create+0x90>
10004da0:	2106      	movs	r1, #6
10004da2:	e7ba      	b.n	10004d1a <atm_adv_create+0x5e>
10004da4:	4908      	ldr	r1, [pc, #32]	; (10004dc8 <atm_adv_create+0x10c>)
10004da6:	4b07      	ldr	r3, [pc, #28]	; (10004dc4 <atm_adv_create+0x108>)
10004da8:	4819      	ldr	r0, [pc, #100]	; (10004e10 <atm_adv_create+0x154>)
10004daa:	4798      	blx	r3
10004dac:	228a      	movs	r2, #138	; 0x8a
10004dae:	4908      	ldr	r1, [pc, #32]	; (10004dd0 <atm_adv_create+0x114>)
10004db0:	480d      	ldr	r0, [pc, #52]	; (10004de8 <atm_adv_create+0x12c>)
10004db2:	4b09      	ldr	r3, [pc, #36]	; (10004dd8 <atm_adv_create+0x11c>)
10004db4:	0052      	lsls	r2, r2, #1
10004db6:	4798      	blx	r3
10004db8:	e7c8      	b.n	10004d4c <atm_adv_create+0x90>
10004dba:	4816      	ldr	r0, [pc, #88]	; (10004e14 <atm_adv_create+0x158>)
10004dbc:	e7e2      	b.n	10004d84 <atm_adv_create+0xc8>
10004dbe:	46c0      	nop			; (mov r8, r8)
10004dc0:	20015060 	.word	0x20015060
10004dc4:	000066b1 	.word	0x000066b1
10004dc8:	1000a96b 	.word	0x1000a96b
10004dcc:	1000a727 	.word	0x1000a727
10004dd0:	1000a6ad 	.word	0x1000a6ad
10004dd4:	1000a74b 	.word	0x1000a74b
10004dd8:	00006609 	.word	0x00006609
10004ddc:	00000409 	.word	0x00000409
10004de0:	20015064 	.word	0x20015064
10004de4:	000028ab 	.word	0x000028ab
10004de8:	1000b4d2 	.word	0x1000b4d2
10004dec:	00000401 	.word	0x00000401
10004df0:	10004aa9 	.word	0x10004aa9
10004df4:	0003eeba 	.word	0x0003eeba
10004df8:	000021c5 	.word	0x000021c5
10004dfc:	000013b9 	.word	0x000013b9
10004e00:	00005859 	.word	0x00005859
10004e04:	0000268f 	.word	0x0000268f
10004e08:	10004bed 	.word	0x10004bed
10004e0c:	10007369 	.word	0x10007369
10004e10:	1000a752 	.word	0x1000a752
10004e14:	00000404 	.word	0x00000404

10004e18 <atm_adv_set_adv_data>:
10004e18:	b5f0      	push	{r4, r5, r6, r7, lr}
10004e1a:	4b6e      	ldr	r3, [pc, #440]	; (10004fd4 <atm_adv_set_adv_data+0x1bc>)
10004e1c:	b08b      	sub	sp, #44	; 0x2c
10004e1e:	9006      	str	r0, [sp, #24]
10004e20:	9104      	str	r1, [sp, #16]
10004e22:	4798      	blx	r3
10004e24:	4b6c      	ldr	r3, [pc, #432]	; (10004fd8 <atm_adv_set_adv_data+0x1c0>)
10004e26:	0007      	movs	r7, r0
10004e28:	681a      	ldr	r2, [r3, #0]
10004e2a:	2a00      	cmp	r2, #0
10004e2c:	d004      	beq.n	10004e38 <atm_adv_set_adv_data+0x20>
10004e2e:	2800      	cmp	r0, #0
10004e30:	d002      	beq.n	10004e38 <atm_adv_set_adv_data+0x20>
10004e32:	9b04      	ldr	r3, [sp, #16]
10004e34:	2b00      	cmp	r3, #0
10004e36:	d10f      	bne.n	10004e58 <atm_adv_set_adv_data+0x40>
10004e38:	003b      	movs	r3, r7
10004e3a:	1e51      	subs	r1, r2, #1
10004e3c:	418a      	sbcs	r2, r1
10004e3e:	1e59      	subs	r1, r3, #1
10004e40:	418b      	sbcs	r3, r1
10004e42:	9904      	ldr	r1, [sp, #16]
10004e44:	4c65      	ldr	r4, [pc, #404]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004e46:	1e48      	subs	r0, r1, #1
10004e48:	4181      	sbcs	r1, r0
10004e4a:	4865      	ldr	r0, [pc, #404]	; (10004fe0 <atm_adv_set_adv_data+0x1c8>)
10004e4c:	9100      	str	r1, [sp, #0]
10004e4e:	4965      	ldr	r1, [pc, #404]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004e50:	47a0      	blx	r4
10004e52:	4865      	ldr	r0, [pc, #404]	; (10004fe8 <atm_adv_set_adv_data+0x1d0>)
10004e54:	b00b      	add	sp, #44	; 0x2c
10004e56:	bdf0      	pop	{r4, r5, r6, r7, pc}
10004e58:	79c3      	ldrb	r3, [r0, #7]
10004e5a:	1e98      	subs	r0, r3, #2
10004e5c:	2808      	cmp	r0, #8
10004e5e:	d80a      	bhi.n	10004e76 <atm_adv_set_adv_data+0x5e>
10004e60:	f004 f9ca 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10004e64:	07090706 	.word	0x07090706
10004e68:	062b0609 	.word	0x062b0609
10004e6c:	05          	.byte	0x05
10004e6d:	00          	.byte	0x00
10004e6e:	2307      	movs	r3, #7
10004e70:	723b      	strb	r3, [r7, #8]
10004e72:	2303      	movs	r3, #3
10004e74:	71fb      	strb	r3, [r7, #7]
10004e76:	79fb      	ldrb	r3, [r7, #7]
10004e78:	2b03      	cmp	r3, #3
10004e7a:	d000      	beq.n	10004e7e <atm_adv_set_adv_data+0x66>
10004e7c:	e0a7      	b.n	10004fce <atm_adv_set_adv_data+0x1b6>
10004e7e:	2500      	movs	r5, #0
10004e80:	4b56      	ldr	r3, [pc, #344]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004e82:	4958      	ldr	r1, [pc, #352]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004e84:	4859      	ldr	r0, [pc, #356]	; (10004fec <atm_adv_set_adv_data+0x1d4>)
10004e86:	4798      	blx	r3
10004e88:	9b04      	ldr	r3, [sp, #16]
10004e8a:	881b      	ldrh	r3, [r3, #0]
10004e8c:	9303      	str	r3, [sp, #12]
10004e8e:	9b04      	ldr	r3, [sp, #16]
10004e90:	685e      	ldr	r6, [r3, #4]
10004e92:	9b03      	ldr	r3, [sp, #12]
10004e94:	42ab      	cmp	r3, r5
10004e96:	d812      	bhi.n	10004ebe <atm_adv_set_adv_data+0xa6>
10004e98:	4952      	ldr	r1, [pc, #328]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004e9a:	4855      	ldr	r0, [pc, #340]	; (10004ff0 <atm_adv_set_adv_data+0x1d8>)
10004e9c:	4b4f      	ldr	r3, [pc, #316]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004e9e:	4798      	blx	r3
10004ea0:	9b04      	ldr	r3, [sp, #16]
10004ea2:	881a      	ldrh	r2, [r3, #0]
10004ea4:	4b53      	ldr	r3, [pc, #332]	; (10004ff4 <atm_adv_set_adv_data+0x1dc>)
10004ea6:	9700      	str	r7, [sp, #0]
10004ea8:	9301      	str	r3, [sp, #4]
10004eaa:	9b04      	ldr	r3, [sp, #16]
10004eac:	685b      	ldr	r3, [r3, #4]
10004eae:	2000      	movs	r0, #0
10004eb0:	9906      	ldr	r1, [sp, #24]
10004eb2:	4c51      	ldr	r4, [pc, #324]	; (10004ff8 <atm_adv_set_adv_data+0x1e0>)
10004eb4:	47a0      	blx	r4
10004eb6:	2000      	movs	r0, #0
10004eb8:	e7cc      	b.n	10004e54 <atm_adv_set_adv_data+0x3c>
10004eba:	2309      	movs	r3, #9
10004ebc:	e7d8      	b.n	10004e70 <atm_adv_set_adv_data+0x58>
10004ebe:	1973      	adds	r3, r6, r5
10004ec0:	9305      	str	r3, [sp, #20]
10004ec2:	5d72      	ldrb	r2, [r6, r5]
10004ec4:	002b      	movs	r3, r5
10004ec6:	4947      	ldr	r1, [pc, #284]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004ec8:	484c      	ldr	r0, [pc, #304]	; (10004ffc <atm_adv_set_adv_data+0x1e4>)
10004eca:	4c44      	ldr	r4, [pc, #272]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004ecc:	47a0      	blx	r4
10004ece:	1973      	adds	r3, r6, r5
10004ed0:	785b      	ldrb	r3, [r3, #1]
10004ed2:	9307      	str	r3, [sp, #28]
10004ed4:	2bff      	cmp	r3, #255	; 0xff
10004ed6:	d13e      	bne.n	10004f56 <atm_adv_set_adv_data+0x13e>
10004ed8:	1973      	adds	r3, r6, r5
10004eda:	789b      	ldrb	r3, [r3, #2]
10004edc:	9308      	str	r3, [sp, #32]
10004ede:	2b24      	cmp	r3, #36	; 0x24
10004ee0:	d139      	bne.n	10004f56 <atm_adv_set_adv_data+0x13e>
10004ee2:	1973      	adds	r3, r6, r5
10004ee4:	78db      	ldrb	r3, [r3, #3]
10004ee6:	9309      	str	r3, [sp, #36]	; 0x24
10004ee8:	2b0a      	cmp	r3, #10
10004eea:	d134      	bne.n	10004f56 <atm_adv_set_adv_data+0x13e>
10004eec:	466b      	mov	r3, sp
10004eee:	002a      	movs	r2, r5
10004ef0:	7b1c      	ldrb	r4, [r3, #12]
10004ef2:	493c      	ldr	r1, [pc, #240]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004ef4:	4b39      	ldr	r3, [pc, #228]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004ef6:	4842      	ldr	r0, [pc, #264]	; (10005000 <atm_adv_set_adv_data+0x1e8>)
10004ef8:	4798      	blx	r3
10004efa:	1973      	adds	r3, r6, r5
10004efc:	791b      	ldrb	r3, [r3, #4]
10004efe:	2b00      	cmp	r3, #0
10004f00:	d008      	beq.n	10004f14 <atm_adv_set_adv_data+0xfc>
10004f02:	2b01      	cmp	r3, #1
10004f04:	d00d      	beq.n	10004f22 <atm_adv_set_adv_data+0x10a>
10004f06:	231f      	movs	r3, #31
10004f08:	1b1b      	subs	r3, r3, r4
10004f0a:	2b06      	cmp	r3, #6
10004f0c:	dc29      	bgt.n	10004f62 <atm_adv_set_adv_data+0x14a>
10004f0e:	4935      	ldr	r1, [pc, #212]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004f10:	483c      	ldr	r0, [pc, #240]	; (10005004 <atm_adv_set_adv_data+0x1ec>)
10004f12:	e7c3      	b.n	10004e9c <atm_adv_set_adv_data+0x84>
10004f14:	221f      	movs	r2, #31
10004f16:	1b12      	subs	r2, r2, r4
10004f18:	2a02      	cmp	r2, #2
10004f1a:	dc40      	bgt.n	10004f9e <atm_adv_set_adv_data+0x186>
10004f1c:	4931      	ldr	r1, [pc, #196]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004f1e:	483a      	ldr	r0, [pc, #232]	; (10005008 <atm_adv_set_adv_data+0x1f0>)
10004f20:	e7bc      	b.n	10004e9c <atm_adv_set_adv_data+0x84>
10004f22:	1973      	adds	r3, r6, r5
10004f24:	781b      	ldrb	r3, [r3, #0]
10004f26:	18ed      	adds	r5, r5, r3
10004f28:	b2ed      	uxtb	r5, r5
10004f2a:	4b38      	ldr	r3, [pc, #224]	; (1000500c <atm_adv_set_adv_data+0x1f4>)
10004f2c:	4798      	blx	r3
10004f2e:	492d      	ldr	r1, [pc, #180]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004f30:	0002      	movs	r2, r0
10004f32:	5570      	strb	r0, [r6, r5]
10004f34:	4b29      	ldr	r3, [pc, #164]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004f36:	4836      	ldr	r0, [pc, #216]	; (10005010 <atm_adv_set_adv_data+0x1f8>)
10004f38:	4798      	blx	r3
10004f3a:	2400      	movs	r4, #0
10004f3c:	9b03      	ldr	r3, [sp, #12]
10004f3e:	429c      	cmp	r4, r3
10004f40:	db3d      	blt.n	10004fbe <atm_adv_set_adv_data+0x1a6>
10004f42:	4b26      	ldr	r3, [pc, #152]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004f44:	4927      	ldr	r1, [pc, #156]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004f46:	4833      	ldr	r0, [pc, #204]	; (10005014 <atm_adv_set_adv_data+0x1fc>)
10004f48:	4798      	blx	r3
10004f4a:	4b2a      	ldr	r3, [pc, #168]	; (10004ff4 <atm_adv_set_adv_data+0x1dc>)
10004f4c:	9a03      	ldr	r2, [sp, #12]
10004f4e:	9301      	str	r3, [sp, #4]
10004f50:	9700      	str	r7, [sp, #0]
10004f52:	0033      	movs	r3, r6
10004f54:	e7ab      	b.n	10004eae <atm_adv_set_adv_data+0x96>
10004f56:	9b05      	ldr	r3, [sp, #20]
10004f58:	781b      	ldrb	r3, [r3, #0]
10004f5a:	3301      	adds	r3, #1
10004f5c:	18ed      	adds	r5, r5, r3
10004f5e:	b2ed      	uxtb	r5, r5
10004f60:	e797      	b.n	10004e92 <atm_adv_set_adv_data+0x7a>
10004f62:	2306      	movs	r3, #6
10004f64:	9a07      	ldr	r2, [sp, #28]
10004f66:	5533      	strb	r3, [r6, r4]
10004f68:	1c63      	adds	r3, r4, #1
10004f6a:	b2db      	uxtb	r3, r3
10004f6c:	54f2      	strb	r2, [r6, r3]
10004f6e:	9a08      	ldr	r2, [sp, #32]
10004f70:	1ca3      	adds	r3, r4, #2
10004f72:	b2db      	uxtb	r3, r3
10004f74:	54f2      	strb	r2, [r6, r3]
10004f76:	9a09      	ldr	r2, [sp, #36]	; 0x24
10004f78:	1ce3      	adds	r3, r4, #3
10004f7a:	b2db      	uxtb	r3, r3
10004f7c:	54f2      	strb	r2, [r6, r3]
10004f7e:	2201      	movs	r2, #1
10004f80:	1d23      	adds	r3, r4, #4
10004f82:	b2db      	uxtb	r3, r3
10004f84:	54f2      	strb	r2, [r6, r3]
10004f86:	2300      	movs	r3, #0
10004f88:	1da5      	adds	r5, r4, #6
10004f8a:	3405      	adds	r4, #5
10004f8c:	b2ed      	uxtb	r5, r5
10004f8e:	b2e4      	uxtb	r4, r4
10004f90:	5533      	strb	r3, [r6, r4]
10004f92:	5573      	strb	r3, [r6, r5]
10004f94:	9b03      	ldr	r3, [sp, #12]
10004f96:	3307      	adds	r3, #7
10004f98:	b29b      	uxth	r3, r3
10004f9a:	9303      	str	r3, [sp, #12]
10004f9c:	e7c5      	b.n	10004f2a <atm_adv_set_adv_data+0x112>
10004f9e:	9a05      	ldr	r2, [sp, #20]
10004fa0:	9905      	ldr	r1, [sp, #20]
10004fa2:	7812      	ldrb	r2, [r2, #0]
10004fa4:	1ca5      	adds	r5, r4, #2
10004fa6:	3203      	adds	r2, #3
10004fa8:	700a      	strb	r2, [r1, #0]
10004faa:	2201      	movs	r2, #1
10004fac:	5532      	strb	r2, [r6, r4]
10004fae:	18a4      	adds	r4, r4, r2
10004fb0:	b2ed      	uxtb	r5, r5
10004fb2:	b2e4      	uxtb	r4, r4
10004fb4:	5533      	strb	r3, [r6, r4]
10004fb6:	5573      	strb	r3, [r6, r5]
10004fb8:	9b03      	ldr	r3, [sp, #12]
10004fba:	3303      	adds	r3, #3
10004fbc:	e7ec      	b.n	10004f98 <atm_adv_set_adv_data+0x180>
10004fbe:	0022      	movs	r2, r4
10004fc0:	5d33      	ldrb	r3, [r6, r4]
10004fc2:	4908      	ldr	r1, [pc, #32]	; (10004fe4 <atm_adv_set_adv_data+0x1cc>)
10004fc4:	4814      	ldr	r0, [pc, #80]	; (10005018 <atm_adv_set_adv_data+0x200>)
10004fc6:	4d05      	ldr	r5, [pc, #20]	; (10004fdc <atm_adv_set_adv_data+0x1c4>)
10004fc8:	47a8      	blx	r5
10004fca:	3401      	adds	r4, #1
10004fcc:	e7b6      	b.n	10004f3c <atm_adv_set_adv_data+0x124>
10004fce:	4813      	ldr	r0, [pc, #76]	; (1000501c <atm_adv_set_adv_data+0x204>)
10004fd0:	e740      	b.n	10004e54 <atm_adv_set_adv_data+0x3c>
10004fd2:	46c0      	nop			; (mov r8, r8)
10004fd4:	10004a71 	.word	0x10004a71
10004fd8:	20015060 	.word	0x20015060
10004fdc:	000066b1 	.word	0x000066b1
10004fe0:	1000a77c 	.word	0x1000a77c
10004fe4:	1000a96b 	.word	0x1000a96b
10004fe8:	00000409 	.word	0x00000409
10004fec:	1000a7a8 	.word	0x1000a7a8
10004ff0:	1000a842 	.word	0x1000a842
10004ff4:	10004aed 	.word	0x10004aed
10004ff8:	100073d9 	.word	0x100073d9
10004ffc:	1000a7dd 	.word	0x1000a7dd
10005000:	1000a80e 	.word	0x1000a80e
10005004:	1000a870 	.word	0x1000a870
10005008:	1000a8a7 	.word	0x1000a8a7
1000500c:	10003d19 	.word	0x10003d19
10005010:	1000a8e1 	.word	0x1000a8e1
10005014:	1000a937 	.word	0x1000a937
10005018:	1000a90d 	.word	0x1000a90d
1000501c:	00000404 	.word	0x00000404

10005020 <atm_adv_set_scan_data>:
10005020:	b537      	push	{r0, r1, r2, r4, r5, lr}
10005022:	4b19      	ldr	r3, [pc, #100]	; (10005088 <atm_adv_set_scan_data+0x68>)
10005024:	0005      	movs	r5, r0
10005026:	000c      	movs	r4, r1
10005028:	4798      	blx	r3
1000502a:	4a18      	ldr	r2, [pc, #96]	; (1000508c <atm_adv_set_scan_data+0x6c>)
1000502c:	0003      	movs	r3, r0
1000502e:	6812      	ldr	r2, [r2, #0]
10005030:	2a00      	cmp	r2, #0
10005032:	d025      	beq.n	10005080 <atm_adv_set_scan_data+0x60>
10005034:	2800      	cmp	r0, #0
10005036:	d023      	beq.n	10005080 <atm_adv_set_scan_data+0x60>
10005038:	2c00      	cmp	r4, #0
1000503a:	d021      	beq.n	10005080 <atm_adv_set_scan_data+0x60>
1000503c:	79c2      	ldrb	r2, [r0, #7]
1000503e:	1e90      	subs	r0, r2, #2
10005040:	2808      	cmp	r0, #8
10005042:	d80a      	bhi.n	1000505a <atm_adv_set_scan_data+0x3a>
10005044:	f004 f8d8 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10005048:	07090706 	.word	0x07090706
1000504c:	061a0609 	.word	0x061a0609
10005050:	05          	.byte	0x05
10005051:	00          	.byte	0x00
10005052:	2207      	movs	r2, #7
10005054:	721a      	strb	r2, [r3, #8]
10005056:	2205      	movs	r2, #5
10005058:	71da      	strb	r2, [r3, #7]
1000505a:	79da      	ldrb	r2, [r3, #7]
1000505c:	2a05      	cmp	r2, #5
1000505e:	d111      	bne.n	10005084 <atm_adv_set_scan_data+0x64>
10005060:	7958      	ldrb	r0, [r3, #5]
10005062:	2802      	cmp	r0, #2
10005064:	d000      	beq.n	10005068 <atm_adv_set_scan_data+0x48>
10005066:	2001      	movs	r0, #1
10005068:	4909      	ldr	r1, [pc, #36]	; (10005090 <atm_adv_set_scan_data+0x70>)
1000506a:	8822      	ldrh	r2, [r4, #0]
1000506c:	9101      	str	r1, [sp, #4]
1000506e:	9300      	str	r3, [sp, #0]
10005070:	6863      	ldr	r3, [r4, #4]
10005072:	0029      	movs	r1, r5
10005074:	4c07      	ldr	r4, [pc, #28]	; (10005094 <atm_adv_set_scan_data+0x74>)
10005076:	47a0      	blx	r4
10005078:	2000      	movs	r0, #0
1000507a:	bd3e      	pop	{r1, r2, r3, r4, r5, pc}
1000507c:	2209      	movs	r2, #9
1000507e:	e7e9      	b.n	10005054 <atm_adv_set_scan_data+0x34>
10005080:	4805      	ldr	r0, [pc, #20]	; (10005098 <atm_adv_set_scan_data+0x78>)
10005082:	e7fa      	b.n	1000507a <atm_adv_set_scan_data+0x5a>
10005084:	4805      	ldr	r0, [pc, #20]	; (1000509c <atm_adv_set_scan_data+0x7c>)
10005086:	e7f8      	b.n	1000507a <atm_adv_set_scan_data+0x5a>
10005088:	10004a71 	.word	0x10004a71
1000508c:	20015060 	.word	0x20015060
10005090:	10004b41 	.word	0x10004b41
10005094:	100073d9 	.word	0x100073d9
10005098:	00000409 	.word	0x00000409
1000509c:	00000404 	.word	0x00000404

100050a0 <atm_adv_start>:
100050a0:	b573      	push	{r0, r1, r4, r5, r6, lr}
100050a2:	4b1e      	ldr	r3, [pc, #120]	; (1000511c <atm_adv_start+0x7c>)
100050a4:	0006      	movs	r6, r0
100050a6:	000d      	movs	r5, r1
100050a8:	4798      	blx	r3
100050aa:	4b1d      	ldr	r3, [pc, #116]	; (10005120 <atm_adv_start+0x80>)
100050ac:	0004      	movs	r4, r0
100050ae:	681b      	ldr	r3, [r3, #0]
100050b0:	2b00      	cmp	r3, #0
100050b2:	d030      	beq.n	10005116 <atm_adv_start+0x76>
100050b4:	2800      	cmp	r0, #0
100050b6:	d02e      	beq.n	10005116 <atm_adv_start+0x76>
100050b8:	2d00      	cmp	r5, #0
100050ba:	d02c      	beq.n	10005116 <atm_adv_start+0x76>
100050bc:	79c3      	ldrb	r3, [r0, #7]
100050be:	001a      	movs	r2, r3
100050c0:	3a08      	subs	r2, #8
100050c2:	2a01      	cmp	r2, #1
100050c4:	d801      	bhi.n	100050ca <atm_adv_start+0x2a>
100050c6:	4817      	ldr	r0, [pc, #92]	; (10005124 <atm_adv_start+0x84>)
100050c8:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
100050ca:	7982      	ldrb	r2, [r0, #6]
100050cc:	0752      	lsls	r2, r2, #29
100050ce:	d501      	bpl.n	100050d4 <atm_adv_start+0x34>
100050d0:	2b02      	cmp	r3, #2
100050d2:	d00e      	beq.n	100050f2 <atm_adv_start+0x52>
100050d4:	2b05      	cmp	r3, #5
100050d6:	d003      	beq.n	100050e0 <atm_adv_start+0x40>
100050d8:	2b07      	cmp	r3, #7
100050da:	d00a      	beq.n	100050f2 <atm_adv_start+0x52>
100050dc:	2b03      	cmp	r3, #3
100050de:	d10a      	bne.n	100050f6 <atm_adv_start+0x56>
100050e0:	7a23      	ldrb	r3, [r4, #8]
100050e2:	2b02      	cmp	r3, #2
100050e4:	d001      	beq.n	100050ea <atm_adv_start+0x4a>
100050e6:	2b07      	cmp	r3, #7
100050e8:	d105      	bne.n	100050f6 <atm_adv_start+0x56>
100050ea:	2309      	movs	r3, #9
100050ec:	7223      	strb	r3, [r4, #8]
100050ee:	3b01      	subs	r3, #1
100050f0:	e000      	b.n	100050f4 <atm_adv_start+0x54>
100050f2:	2308      	movs	r3, #8
100050f4:	71e3      	strb	r3, [r4, #7]
100050f6:	79e3      	ldrb	r3, [r4, #7]
100050f8:	2b08      	cmp	r3, #8
100050fa:	d1e4      	bne.n	100050c6 <atm_adv_start+0x26>
100050fc:	2002      	movs	r0, #2
100050fe:	4b0a      	ldr	r3, [pc, #40]	; (10005128 <atm_adv_start+0x88>)
10005100:	4798      	blx	r3
10005102:	4b0a      	ldr	r3, [pc, #40]	; (1000512c <atm_adv_start+0x8c>)
10005104:	0030      	movs	r0, r6
10005106:	9300      	str	r3, [sp, #0]
10005108:	78aa      	ldrb	r2, [r5, #2]
1000510a:	0023      	movs	r3, r4
1000510c:	8829      	ldrh	r1, [r5, #0]
1000510e:	4c08      	ldr	r4, [pc, #32]	; (10005130 <atm_adv_start+0x90>)
10005110:	47a0      	blx	r4
10005112:	2000      	movs	r0, #0
10005114:	e7d8      	b.n	100050c8 <atm_adv_start+0x28>
10005116:	4807      	ldr	r0, [pc, #28]	; (10005134 <atm_adv_start+0x94>)
10005118:	e7d6      	b.n	100050c8 <atm_adv_start+0x28>
1000511a:	46c0      	nop			; (mov r8, r8)
1000511c:	10004a71 	.word	0x10004a71
10005120:	20015060 	.word	0x20015060
10005124:	00000404 	.word	0x00000404
10005128:	10003abd 	.word	0x10003abd
1000512c:	10004b95 	.word	0x10004b95
10005130:	10007461 	.word	0x10007461
10005134:	00000409 	.word	0x00000409

10005138 <atm_adv_stop>:
10005138:	b570      	push	{r4, r5, r6, lr}
1000513a:	4b15      	ldr	r3, [pc, #84]	; (10005190 <atm_adv_stop+0x58>)
1000513c:	0005      	movs	r5, r0
1000513e:	4798      	blx	r3
10005140:	4b14      	ldr	r3, [pc, #80]	; (10005194 <atm_adv_stop+0x5c>)
10005142:	0004      	movs	r4, r0
10005144:	681b      	ldr	r3, [r3, #0]
10005146:	2b00      	cmp	r3, #0
10005148:	d01f      	beq.n	1000518a <atm_adv_stop+0x52>
1000514a:	2800      	cmp	r0, #0
1000514c:	d01d      	beq.n	1000518a <atm_adv_stop+0x52>
1000514e:	79c3      	ldrb	r3, [r0, #7]
10005150:	2b0a      	cmp	r3, #10
10005152:	d101      	bne.n	10005158 <atm_adv_stop+0x20>
10005154:	4810      	ldr	r0, [pc, #64]	; (10005198 <atm_adv_stop+0x60>)
10005156:	bd70      	pop	{r4, r5, r6, pc}
10005158:	2b05      	cmp	r3, #5
1000515a:	d003      	beq.n	10005164 <atm_adv_stop+0x2c>
1000515c:	2b09      	cmp	r3, #9
1000515e:	d005      	beq.n	1000516c <atm_adv_stop+0x34>
10005160:	2b03      	cmp	r3, #3
10005162:	d105      	bne.n	10005170 <atm_adv_stop+0x38>
10005164:	7a23      	ldrb	r3, [r4, #8]
10005166:	3b08      	subs	r3, #8
10005168:	2b01      	cmp	r3, #1
1000516a:	d801      	bhi.n	10005170 <atm_adv_stop+0x38>
1000516c:	230a      	movs	r3, #10
1000516e:	71e3      	strb	r3, [r4, #7]
10005170:	79e3      	ldrb	r3, [r4, #7]
10005172:	2b0a      	cmp	r3, #10
10005174:	d1ee      	bne.n	10005154 <atm_adv_stop+0x1c>
10005176:	2002      	movs	r0, #2
10005178:	4b08      	ldr	r3, [pc, #32]	; (1000519c <atm_adv_stop+0x64>)
1000517a:	4798      	blx	r3
1000517c:	0028      	movs	r0, r5
1000517e:	0021      	movs	r1, r4
10005180:	4a07      	ldr	r2, [pc, #28]	; (100051a0 <atm_adv_stop+0x68>)
10005182:	4b08      	ldr	r3, [pc, #32]	; (100051a4 <atm_adv_stop+0x6c>)
10005184:	4798      	blx	r3
10005186:	2000      	movs	r0, #0
10005188:	e7e5      	b.n	10005156 <atm_adv_stop+0x1e>
1000518a:	4807      	ldr	r0, [pc, #28]	; (100051a8 <atm_adv_stop+0x70>)
1000518c:	e7e3      	b.n	10005156 <atm_adv_stop+0x1e>
1000518e:	46c0      	nop			; (mov r8, r8)
10005190:	10004a71 	.word	0x10004a71
10005194:	20015060 	.word	0x20015060
10005198:	00000404 	.word	0x00000404
1000519c:	10003b21 	.word	0x10003b21
100051a0:	10004c59 	.word	0x10004c59
100051a4:	100074d5 	.word	0x100074d5
100051a8:	00000409 	.word	0x00000409

100051ac <atm_adv_stopped_ind>:
100051ac:	b570      	push	{r4, r5, r6, lr}
100051ae:	4b0f      	ldr	r3, [pc, #60]	; (100051ec <atm_adv_stopped_ind+0x40>)
100051b0:	0005      	movs	r5, r0
100051b2:	7800      	ldrb	r0, [r0, #0]
100051b4:	4798      	blx	r3
100051b6:	1e04      	subs	r4, r0, #0
100051b8:	d105      	bne.n	100051c6 <atm_adv_stopped_ind+0x1a>
100051ba:	4a0d      	ldr	r2, [pc, #52]	; (100051f0 <atm_adv_stopped_ind+0x44>)
100051bc:	490d      	ldr	r1, [pc, #52]	; (100051f4 <atm_adv_stopped_ind+0x48>)
100051be:	480e      	ldr	r0, [pc, #56]	; (100051f8 <atm_adv_stopped_ind+0x4c>)
100051c0:	4b0e      	ldr	r3, [pc, #56]	; (100051fc <atm_adv_stopped_ind+0x50>)
100051c2:	4798      	blx	r3
100051c4:	bd70      	pop	{r4, r5, r6, pc}
100051c6:	2002      	movs	r0, #2
100051c8:	4b0d      	ldr	r3, [pc, #52]	; (10005200 <atm_adv_stopped_ind+0x54>)
100051ca:	4798      	blx	r3
100051cc:	2307      	movs	r3, #7
100051ce:	7223      	strb	r3, [r4, #8]
100051d0:	71e3      	strb	r3, [r4, #7]
100051d2:	886b      	ldrh	r3, [r5, #2]
100051d4:	7922      	ldrb	r2, [r4, #4]
100051d6:	490b      	ldr	r1, [pc, #44]	; (10005204 <atm_adv_stopped_ind+0x58>)
100051d8:	4e0b      	ldr	r6, [pc, #44]	; (10005208 <atm_adv_stopped_ind+0x5c>)
100051da:	480c      	ldr	r0, [pc, #48]	; (1000520c <atm_adv_stopped_ind+0x60>)
100051dc:	47b0      	blx	r6
100051de:	886a      	ldrh	r2, [r5, #2]
100051e0:	7921      	ldrb	r1, [r4, #4]
100051e2:	79e0      	ldrb	r0, [r4, #7]
100051e4:	4b0a      	ldr	r3, [pc, #40]	; (10005210 <atm_adv_stopped_ind+0x64>)
100051e6:	4798      	blx	r3
100051e8:	e7ec      	b.n	100051c4 <atm_adv_stopped_ind+0x18>
100051ea:	46c0      	nop			; (mov r8, r8)
100051ec:	10004a71 	.word	0x10004a71
100051f0:	000003ab 	.word	0x000003ab
100051f4:	1000a6ad 	.word	0x1000a6ad
100051f8:	1000b4d2 	.word	0x1000b4d2
100051fc:	00006609 	.word	0x00006609
10005200:	10003b21 	.word	0x10003b21
10005204:	1000a96b 	.word	0x1000a96b
10005208:	000066b1 	.word	0x000066b1
1000520c:	1000a6ff 	.word	0x1000a6ff
10005210:	10004a61 	.word	0x10004a61

10005214 <atm_adv_create_param_get>:
10005214:	2328      	movs	r3, #40	; 0x28
10005216:	4343      	muls	r3, r0
10005218:	4801      	ldr	r0, [pc, #4]	; (10005220 <atm_adv_create_param_get+0xc>)
1000521a:	18c0      	adds	r0, r0, r3
1000521c:	4770      	bx	lr
1000521e:	46c0      	nop			; (mov r8, r8)
10005220:	20014c6c 	.word	0x20014c6c

10005224 <atm_adv_start_param_get>:
10005224:	0083      	lsls	r3, r0, #2
10005226:	4801      	ldr	r0, [pc, #4]	; (1000522c <atm_adv_start_param_get+0x8>)
10005228:	18c0      	adds	r0, r0, r3
1000522a:	4770      	bx	lr
1000522c:	20015078 	.word	0x20015078

10005230 <atm_adv_advdata_param_get>:
10005230:	4b01      	ldr	r3, [pc, #4]	; (10005238 <atm_adv_advdata_param_get+0x8>)
10005232:	00c0      	lsls	r0, r0, #3
10005234:	58c0      	ldr	r0, [r0, r3]
10005236:	4770      	bx	lr
10005238:	20014ce4 	.word	0x20014ce4

1000523c <atm_adv_scandata_param_get>:
1000523c:	00c3      	lsls	r3, r0, #3
1000523e:	4802      	ldr	r0, [pc, #8]	; (10005248 <atm_adv_scandata_param_get+0xc>)
10005240:	18c0      	adds	r0, r0, r3
10005242:	6840      	ldr	r0, [r0, #4]
10005244:	4770      	bx	lr
10005246:	46c0      	nop			; (mov r8, r8)
10005248:	20014ce4 	.word	0x20014ce4

1000524c <atm_asm_init_table>:
1000524c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000524e:	0004      	movs	r4, r0
10005250:	000e      	movs	r6, r1
10005252:	0015      	movs	r5, r2
10005254:	2801      	cmp	r0, #1
10005256:	d905      	bls.n	10005264 <atm_asm_init_table+0x18>
10005258:	0001      	movs	r1, r0
1000525a:	2332      	movs	r3, #50	; 0x32
1000525c:	2002      	movs	r0, #2
1000525e:	4a05      	ldr	r2, [pc, #20]	; (10005274 <atm_asm_init_table+0x28>)
10005260:	4f05      	ldr	r7, [pc, #20]	; (10005278 <atm_asm_init_table+0x2c>)
10005262:	47b8      	blx	r7
10005264:	200c      	movs	r0, #12
10005266:	4344      	muls	r4, r0
10005268:	4b04      	ldr	r3, [pc, #16]	; (1000527c <atm_asm_init_table+0x30>)
1000526a:	50e6      	str	r6, [r4, r3]
1000526c:	191b      	adds	r3, r3, r4
1000526e:	711d      	strb	r5, [r3, #4]
10005270:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10005272:	46c0      	nop			; (mov r8, r8)
10005274:	1000a973 	.word	0x1000a973
10005278:	00006641 	.word	0x00006641
1000527c:	20015080 	.word	0x20015080

10005280 <atm_asm_set_state_op>:
10005280:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10005282:	0007      	movs	r7, r0
10005284:	000e      	movs	r6, r1
10005286:	0015      	movs	r5, r2
10005288:	2801      	cmp	r0, #1
1000528a:	d905      	bls.n	10005298 <atm_asm_set_state_op+0x18>
1000528c:	0001      	movs	r1, r0
1000528e:	233c      	movs	r3, #60	; 0x3c
10005290:	2002      	movs	r0, #2
10005292:	4a0b      	ldr	r2, [pc, #44]	; (100052c0 <atm_asm_set_state_op+0x40>)
10005294:	4c0b      	ldr	r4, [pc, #44]	; (100052c4 <atm_asm_set_state_op+0x44>)
10005296:	47a0      	blx	r4
10005298:	220c      	movs	r2, #12
1000529a:	437a      	muls	r2, r7
1000529c:	4c0a      	ldr	r4, [pc, #40]	; (100052c8 <atm_asm_set_state_op+0x48>)
1000529e:	18a2      	adds	r2, r4, r2
100052a0:	6893      	ldr	r3, [r2, #8]
100052a2:	2b00      	cmp	r3, #0
100052a4:	d003      	beq.n	100052ae <atm_asm_set_state_op+0x2e>
100052a6:	7990      	ldrb	r0, [r2, #6]
100052a8:	0029      	movs	r1, r5
100052aa:	0032      	movs	r2, r6
100052ac:	4798      	blx	r3
100052ae:	200c      	movs	r0, #12
100052b0:	4378      	muls	r0, r7
100052b2:	1820      	adds	r0, r4, r0
100052b4:	7983      	ldrb	r3, [r0, #6]
100052b6:	7145      	strb	r5, [r0, #5]
100052b8:	7186      	strb	r6, [r0, #6]
100052ba:	71c3      	strb	r3, [r0, #7]
100052bc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100052be:	46c0      	nop			; (mov r8, r8)
100052c0:	1000a973 	.word	0x1000a973
100052c4:	00006641 	.word	0x00006641
100052c8:	20015080 	.word	0x20015080

100052cc <atm_asm_get_current_state>:
100052cc:	b570      	push	{r4, r5, r6, lr}
100052ce:	0004      	movs	r4, r0
100052d0:	2801      	cmp	r0, #1
100052d2:	d905      	bls.n	100052e0 <atm_asm_get_current_state+0x14>
100052d4:	0001      	movs	r1, r0
100052d6:	234a      	movs	r3, #74	; 0x4a
100052d8:	2002      	movs	r0, #2
100052da:	4a04      	ldr	r2, [pc, #16]	; (100052ec <atm_asm_get_current_state+0x20>)
100052dc:	4d04      	ldr	r5, [pc, #16]	; (100052f0 <atm_asm_get_current_state+0x24>)
100052de:	47a8      	blx	r5
100052e0:	200c      	movs	r0, #12
100052e2:	4360      	muls	r0, r4
100052e4:	4c03      	ldr	r4, [pc, #12]	; (100052f4 <atm_asm_get_current_state+0x28>)
100052e6:	1824      	adds	r4, r4, r0
100052e8:	79a0      	ldrb	r0, [r4, #6]
100052ea:	bd70      	pop	{r4, r5, r6, pc}
100052ec:	1000a973 	.word	0x1000a973
100052f0:	00006641 	.word	0x00006641
100052f4:	20015080 	.word	0x20015080

100052f8 <atm_asm_move>:
100052f8:	b570      	push	{r4, r5, r6, lr}
100052fa:	0005      	movs	r5, r0
100052fc:	000e      	movs	r6, r1
100052fe:	2801      	cmp	r0, #1
10005300:	d905      	bls.n	1000530e <atm_asm_move+0x16>
10005302:	0001      	movs	r1, r0
10005304:	2368      	movs	r3, #104	; 0x68
10005306:	2002      	movs	r0, #2
10005308:	4a12      	ldr	r2, [pc, #72]	; (10005354 <atm_asm_move+0x5c>)
1000530a:	4c13      	ldr	r4, [pc, #76]	; (10005358 <atm_asm_move+0x60>)
1000530c:	47a0      	blx	r4
1000530e:	230c      	movs	r3, #12
10005310:	436b      	muls	r3, r5
10005312:	4a12      	ldr	r2, [pc, #72]	; (1000535c <atm_asm_move+0x64>)
10005314:	589c      	ldr	r4, [r3, r2]
10005316:	18d2      	adds	r2, r2, r3
10005318:	7913      	ldrb	r3, [r2, #4]
1000531a:	7990      	ldrb	r0, [r2, #6]
1000531c:	00db      	lsls	r3, r3, #3
1000531e:	191b      	adds	r3, r3, r4
10005320:	429c      	cmp	r4, r3
10005322:	d105      	bne.n	10005330 <atm_asm_move+0x38>
10005324:	237a      	movs	r3, #122	; 0x7a
10005326:	0031      	movs	r1, r6
10005328:	4a0a      	ldr	r2, [pc, #40]	; (10005354 <atm_asm_move+0x5c>)
1000532a:	4c0b      	ldr	r4, [pc, #44]	; (10005358 <atm_asm_move+0x60>)
1000532c:	47a0      	blx	r4
1000532e:	e00e      	b.n	1000534e <atm_asm_move+0x56>
10005330:	7822      	ldrb	r2, [r4, #0]
10005332:	4282      	cmp	r2, r0
10005334:	d10c      	bne.n	10005350 <atm_asm_move+0x58>
10005336:	7862      	ldrb	r2, [r4, #1]
10005338:	42b2      	cmp	r2, r6
1000533a:	d109      	bne.n	10005350 <atm_asm_move+0x58>
1000533c:	4b08      	ldr	r3, [pc, #32]	; (10005360 <atm_asm_move+0x68>)
1000533e:	0032      	movs	r2, r6
10005340:	0028      	movs	r0, r5
10005342:	78a1      	ldrb	r1, [r4, #2]
10005344:	4798      	blx	r3
10005346:	6863      	ldr	r3, [r4, #4]
10005348:	2b00      	cmp	r3, #0
1000534a:	d000      	beq.n	1000534e <atm_asm_move+0x56>
1000534c:	4798      	blx	r3
1000534e:	bd70      	pop	{r4, r5, r6, pc}
10005350:	3408      	adds	r4, #8
10005352:	e7e5      	b.n	10005320 <atm_asm_move+0x28>
10005354:	1000a973 	.word	0x1000a973
10005358:	00006641 	.word	0x00006641
1000535c:	20015080 	.word	0x20015080
10005360:	10005281 	.word	0x10005281

10005364 <atm_gapc_cmp_evt_disconnect>:
10005364:	b510      	push	{r4, lr}
10005366:	0014      	movs	r4, r2
10005368:	4b05      	ldr	r3, [pc, #20]	; (10005380 <atm_gapc_cmp_evt_disconnect+0x1c>)
1000536a:	884a      	ldrh	r2, [r1, #2]
1000536c:	4805      	ldr	r0, [pc, #20]	; (10005384 <atm_gapc_cmp_evt_disconnect+0x20>)
1000536e:	4906      	ldr	r1, [pc, #24]	; (10005388 <atm_gapc_cmp_evt_disconnect+0x24>)
10005370:	4798      	blx	r3
10005372:	7823      	ldrb	r3, [r4, #0]
10005374:	2b00      	cmp	r3, #0
10005376:	d001      	beq.n	1000537c <atm_gapc_cmp_evt_disconnect+0x18>
10005378:	2303      	movs	r3, #3
1000537a:	7023      	strb	r3, [r4, #0]
1000537c:	bd10      	pop	{r4, pc}
1000537e:	46c0      	nop			; (mov r8, r8)
10005380:	000066b1 	.word	0x000066b1
10005384:	1000a97d 	.word	0x1000a97d
10005388:	1000aed4 	.word	0x1000aed4

1000538c <atm_gap_mod_start_cfm>:
1000538c:	b570      	push	{r4, r5, r6, lr}
1000538e:	8840      	ldrh	r0, [r0, #2]
10005390:	000c      	movs	r4, r1
10005392:	2800      	cmp	r0, #0
10005394:	d005      	beq.n	100053a2 <atm_gap_mod_start_cfm+0x16>
10005396:	2358      	movs	r3, #88	; 0x58
10005398:	2100      	movs	r1, #0
1000539a:	4a13      	ldr	r2, [pc, #76]	; (100053e8 <atm_gap_mod_start_cfm+0x5c>)
1000539c:	4d13      	ldr	r5, [pc, #76]	; (100053ec <atm_gap_mod_start_cfm+0x60>)
1000539e:	33ff      	adds	r3, #255	; 0xff
100053a0:	47a8      	blx	r5
100053a2:	7aa3      	ldrb	r3, [r4, #10]
100053a4:	7a62      	ldrb	r2, [r4, #9]
100053a6:	4293      	cmp	r3, r2
100053a8:	d30a      	bcc.n	100053c0 <atm_gap_mod_start_cfm+0x34>
100053aa:	7aa3      	ldrb	r3, [r4, #10]
100053ac:	429a      	cmp	r2, r3
100053ae:	d813      	bhi.n	100053d8 <atm_gap_mod_start_cfm+0x4c>
100053b0:	4b0f      	ldr	r3, [pc, #60]	; (100053f0 <atm_gap_mod_start_cfm+0x64>)
100053b2:	681b      	ldr	r3, [r3, #0]
100053b4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
100053b6:	2b00      	cmp	r3, #0
100053b8:	d015      	beq.n	100053e6 <atm_gap_mod_start_cfm+0x5a>
100053ba:	2000      	movs	r0, #0
100053bc:	4798      	blx	r3
100053be:	e012      	b.n	100053e6 <atm_gap_mod_start_cfm+0x5a>
100053c0:	3301      	adds	r3, #1
100053c2:	72a3      	strb	r3, [r4, #10]
100053c4:	7aa3      	ldrb	r3, [r4, #10]
100053c6:	429a      	cmp	r2, r3
100053c8:	d9ef      	bls.n	100053aa <atm_gap_mod_start_cfm+0x1e>
100053ca:	6860      	ldr	r0, [r4, #4]
100053cc:	0099      	lsls	r1, r3, #2
100053ce:	5809      	ldr	r1, [r1, r0]
100053d0:	6849      	ldr	r1, [r1, #4]
100053d2:	2900      	cmp	r1, #0
100053d4:	d0f4      	beq.n	100053c0 <atm_gap_mod_start_cfm+0x34>
100053d6:	e7e8      	b.n	100053aa <atm_gap_mod_start_cfm+0x1e>
100053d8:	6862      	ldr	r2, [r4, #4]
100053da:	009b      	lsls	r3, r3, #2
100053dc:	589b      	ldr	r3, [r3, r2]
100053de:	0021      	movs	r1, r4
100053e0:	685b      	ldr	r3, [r3, #4]
100053e2:	4804      	ldr	r0, [pc, #16]	; (100053f4 <atm_gap_mod_start_cfm+0x68>)
100053e4:	4798      	blx	r3
100053e6:	bd70      	pop	{r4, r5, r6, pc}
100053e8:	1000a9a7 	.word	0x1000a9a7
100053ec:	00006641 	.word	0x00006641
100053f0:	20015098 	.word	0x20015098
100053f4:	1000538d 	.word	0x1000538d

100053f8 <atm_gapm_cmp_evt_set_device>:
100053f8:	b570      	push	{r4, r5, r6, lr}
100053fa:	000c      	movs	r4, r1
100053fc:	8841      	ldrh	r1, [r0, #2]
100053fe:	2900      	cmp	r1, #0
10005400:	d005      	beq.n	1000540e <atm_gapm_cmp_evt_set_device+0x16>
10005402:	23e4      	movs	r3, #228	; 0xe4
10005404:	7800      	ldrb	r0, [r0, #0]
10005406:	4a13      	ldr	r2, [pc, #76]	; (10005454 <atm_gapm_cmp_evt_set_device+0x5c>)
10005408:	4d13      	ldr	r5, [pc, #76]	; (10005458 <atm_gapm_cmp_evt_set_device+0x60>)
1000540a:	005b      	lsls	r3, r3, #1
1000540c:	47a8      	blx	r5
1000540e:	4b13      	ldr	r3, [pc, #76]	; (1000545c <atm_gapm_cmp_evt_set_device+0x64>)
10005410:	4798      	blx	r3
10005412:	2800      	cmp	r0, #0
10005414:	d013      	beq.n	1000543e <atm_gapm_cmp_evt_set_device+0x46>
10005416:	4b12      	ldr	r3, [pc, #72]	; (10005460 <atm_gapm_cmp_evt_set_device+0x68>)
10005418:	4798      	blx	r3
1000541a:	1e05      	subs	r5, r0, #0
1000541c:	d006      	beq.n	1000542c <atm_gapm_cmp_evt_set_device+0x34>
1000541e:	4b11      	ldr	r3, [pc, #68]	; (10005464 <atm_gapm_cmp_evt_set_device+0x6c>)
10005420:	4798      	blx	r3
10005422:	0022      	movs	r2, r4
10005424:	4910      	ldr	r1, [pc, #64]	; (10005468 <atm_gapm_cmp_evt_set_device+0x70>)
10005426:	4b11      	ldr	r3, [pc, #68]	; (1000546c <atm_gapm_cmp_evt_set_device+0x74>)
10005428:	4798      	blx	r3
1000542a:	bd70      	pop	{r4, r5, r6, pc}
1000542c:	4910      	ldr	r1, [pc, #64]	; (10005470 <atm_gapm_cmp_evt_set_device+0x78>)
1000542e:	4b11      	ldr	r3, [pc, #68]	; (10005474 <atm_gapm_cmp_evt_set_device+0x7c>)
10005430:	4811      	ldr	r0, [pc, #68]	; (10005478 <atm_gapm_cmp_evt_set_device+0x80>)
10005432:	4798      	blx	r3
10005434:	4b11      	ldr	r3, [pc, #68]	; (1000547c <atm_gapm_cmp_evt_set_device+0x84>)
10005436:	4798      	blx	r3
10005438:	0028      	movs	r0, r5
1000543a:	4b11      	ldr	r3, [pc, #68]	; (10005480 <atm_gapm_cmp_evt_set_device+0x88>)
1000543c:	4798      	blx	r3
1000543e:	6823      	ldr	r3, [r4, #0]
10005440:	6918      	ldr	r0, [r3, #16]
10005442:	2800      	cmp	r0, #0
10005444:	d1ed      	bne.n	10005422 <atm_gapm_cmp_evt_set_device+0x2a>
10005446:	2301      	movs	r3, #1
10005448:	0021      	movs	r1, r4
1000544a:	72e3      	strb	r3, [r4, #11]
1000544c:	480d      	ldr	r0, [pc, #52]	; (10005484 <atm_gapm_cmp_evt_set_device+0x8c>)
1000544e:	4b0e      	ldr	r3, [pc, #56]	; (10005488 <atm_gapm_cmp_evt_set_device+0x90>)
10005450:	4798      	blx	r3
10005452:	e7ea      	b.n	1000542a <atm_gapm_cmp_evt_set_device+0x32>
10005454:	1000a9a7 	.word	0x1000a9a7
10005458:	00006641 	.word	0x00006641
1000545c:	10007da9 	.word	0x10007da9
10005460:	10007e75 	.word	0x10007e75
10005464:	10007e81 	.word	0x10007e81
10005468:	10005729 	.word	0x10005729
1000546c:	10007241 	.word	0x10007241
10005470:	1000aed4 	.word	0x1000aed4
10005474:	000066b1 	.word	0x000066b1
10005478:	1000a9b1 	.word	0x1000a9b1
1000547c:	10007ed5 	.word	0x10007ed5
10005480:	00005d79 	.word	0x00005d79
10005484:	1000548d 	.word	0x1000548d
10005488:	10007291 	.word	0x10007291

1000548c <atm_gapm_cmp_evt_gen_rand>:
1000548c:	b570      	push	{r4, r5, r6, lr}
1000548e:	000d      	movs	r5, r1
10005490:	4b10      	ldr	r3, [pc, #64]	; (100054d4 <atm_gapm_cmp_evt_gen_rand+0x48>)
10005492:	0004      	movs	r4, r0
10005494:	4798      	blx	r3
10005496:	7aeb      	ldrb	r3, [r5, #11]
10005498:	0006      	movs	r6, r0
1000549a:	2b01      	cmp	r3, #1
1000549c:	d10a      	bne.n	100054b4 <atm_gapm_cmp_evt_gen_rand+0x28>
1000549e:	3301      	adds	r3, #1
100054a0:	72eb      	strb	r3, [r5, #11]
100054a2:	1d21      	adds	r1, r4, #4
100054a4:	4b0c      	ldr	r3, [pc, #48]	; (100054d8 <atm_gapm_cmp_evt_gen_rand+0x4c>)
100054a6:	2208      	movs	r2, #8
100054a8:	4798      	blx	r3
100054aa:	0029      	movs	r1, r5
100054ac:	480b      	ldr	r0, [pc, #44]	; (100054dc <atm_gapm_cmp_evt_gen_rand+0x50>)
100054ae:	4b0c      	ldr	r3, [pc, #48]	; (100054e0 <atm_gapm_cmp_evt_gen_rand+0x54>)
100054b0:	4798      	blx	r3
100054b2:	bd70      	pop	{r4, r5, r6, pc}
100054b4:	2b02      	cmp	r3, #2
100054b6:	d1fc      	bne.n	100054b2 <atm_gapm_cmp_evt_gen_rand+0x26>
100054b8:	1d21      	adds	r1, r4, #4
100054ba:	2208      	movs	r2, #8
100054bc:	4b06      	ldr	r3, [pc, #24]	; (100054d8 <atm_gapm_cmp_evt_gen_rand+0x4c>)
100054be:	3008      	adds	r0, #8
100054c0:	4798      	blx	r3
100054c2:	2001      	movs	r0, #1
100054c4:	4b07      	ldr	r3, [pc, #28]	; (100054e4 <atm_gapm_cmp_evt_gen_rand+0x58>)
100054c6:	4798      	blx	r3
100054c8:	002a      	movs	r2, r5
100054ca:	0030      	movs	r0, r6
100054cc:	4906      	ldr	r1, [pc, #24]	; (100054e8 <atm_gapm_cmp_evt_gen_rand+0x5c>)
100054ce:	4b07      	ldr	r3, [pc, #28]	; (100054ec <atm_gapm_cmp_evt_gen_rand+0x60>)
100054d0:	4798      	blx	r3
100054d2:	e7ee      	b.n	100054b2 <atm_gapm_cmp_evt_gen_rand+0x26>
100054d4:	10007e81 	.word	0x10007e81
100054d8:	00005821 	.word	0x00005821
100054dc:	1000548d 	.word	0x1000548d
100054e0:	10007291 	.word	0x10007291
100054e4:	10007e69 	.word	0x10007e69
100054e8:	10005729 	.word	0x10005729
100054ec:	10007241 	.word	0x10007241

100054f0 <atm_continue_init>:
100054f0:	b5f0      	push	{r4, r5, r6, r7, lr}
100054f2:	2506      	movs	r5, #6
100054f4:	b09b      	sub	sp, #108	; 0x6c
100054f6:	6807      	ldr	r7, [r0, #0]
100054f8:	ac0d      	add	r4, sp, #52	; 0x34
100054fa:	2232      	movs	r2, #50	; 0x32
100054fc:	6979      	ldr	r1, [r7, #20]
100054fe:	4b3c      	ldr	r3, [pc, #240]	; (100055f0 <atm_continue_init+0x100>)
10005500:	9000      	str	r0, [sp, #0]
10005502:	0020      	movs	r0, r4
10005504:	4798      	blx	r3
10005506:	002a      	movs	r2, r5
10005508:	493a      	ldr	r1, [pc, #232]	; (100055f4 <atm_continue_init+0x104>)
1000550a:	4b39      	ldr	r3, [pc, #228]	; (100055f0 <atm_continue_init+0x100>)
1000550c:	a803      	add	r0, sp, #12
1000550e:	4798      	blx	r3
10005510:	003b      	movs	r3, r7
10005512:	3318      	adds	r3, #24
10005514:	0018      	movs	r0, r3
10005516:	9301      	str	r3, [sp, #4]
10005518:	002a      	movs	r2, r5
1000551a:	4b37      	ldr	r3, [pc, #220]	; (100055f8 <atm_continue_init+0x108>)
1000551c:	a903      	add	r1, sp, #12
1000551e:	4798      	blx	r3
10005520:	ae0e      	add	r6, sp, #56	; 0x38
10005522:	2800      	cmp	r0, #0
10005524:	d14a      	bne.n	100055bc <atm_continue_init+0xcc>
10005526:	a905      	add	r1, sp, #20
10005528:	0032      	movs	r2, r6
1000552a:	4b34      	ldr	r3, [pc, #208]	; (100055fc <atm_continue_init+0x10c>)
1000552c:	800d      	strh	r5, [r1, #0]
1000552e:	3001      	adds	r0, #1
10005530:	4798      	blx	r3
10005532:	7ea3      	ldrb	r3, [r4, #26]
10005534:	07db      	lsls	r3, r3, #31
10005536:	d523      	bpl.n	10005580 <atm_continue_init+0x90>
10005538:	223f      	movs	r2, #63	; 0x3f
1000553a:	7a63      	ldrb	r3, [r4, #9]
1000553c:	4393      	bics	r3, r2
1000553e:	2bc0      	cmp	r3, #192	; 0xc0
10005540:	d005      	beq.n	1000554e <atm_continue_init+0x5e>
10005542:	22e2      	movs	r2, #226	; 0xe2
10005544:	492e      	ldr	r1, [pc, #184]	; (10005600 <atm_continue_init+0x110>)
10005546:	482f      	ldr	r0, [pc, #188]	; (10005604 <atm_continue_init+0x114>)
10005548:	4b2f      	ldr	r3, [pc, #188]	; (10005608 <atm_continue_init+0x118>)
1000554a:	32ff      	adds	r2, #255	; 0xff
1000554c:	4798      	blx	r3
1000554e:	0030      	movs	r0, r6
10005550:	4b2e      	ldr	r3, [pc, #184]	; (1000560c <atm_continue_init+0x11c>)
10005552:	4798      	blx	r3
10005554:	ab02      	add	r3, sp, #8
10005556:	1c99      	adds	r1, r3, #2
10005558:	2320      	movs	r3, #32
1000555a:	2080      	movs	r0, #128	; 0x80
1000555c:	800b      	strh	r3, [r1, #0]
1000555e:	aa05      	add	r2, sp, #20
10005560:	4b26      	ldr	r3, [pc, #152]	; (100055fc <atm_continue_init+0x10c>)
10005562:	4798      	blx	r3
10005564:	2800      	cmp	r0, #0
10005566:	d00b      	beq.n	10005580 <atm_continue_init+0x90>
10005568:	2302      	movs	r3, #2
1000556a:	2204      	movs	r2, #4
1000556c:	2108      	movs	r1, #8
1000556e:	4828      	ldr	r0, [pc, #160]	; (10005610 <atm_continue_init+0x120>)
10005570:	4e28      	ldr	r6, [pc, #160]	; (10005614 <atm_continue_init+0x124>)
10005572:	47b0      	blx	r6
10005574:	232f      	movs	r3, #47	; 0x2f
10005576:	7003      	strb	r3, [r0, #0]
10005578:	3b2e      	subs	r3, #46	; 0x2e
1000557a:	7043      	strb	r3, [r0, #1]
1000557c:	4b26      	ldr	r3, [pc, #152]	; (10005618 <atm_continue_init+0x128>)
1000557e:	4798      	blx	r3
10005580:	4b26      	ldr	r3, [pc, #152]	; (1000561c <atm_continue_init+0x12c>)
10005582:	4798      	blx	r3
10005584:	1e01      	subs	r1, r0, #0
10005586:	d026      	beq.n	100055d6 <atm_continue_init+0xe6>
10005588:	4b25      	ldr	r3, [pc, #148]	; (10005620 <atm_continue_init+0x130>)
1000558a:	4798      	blx	r3
1000558c:	1e01      	subs	r1, r0, #0
1000558e:	d01b      	beq.n	100055c8 <atm_continue_init+0xd8>
10005590:	4b24      	ldr	r3, [pc, #144]	; (10005624 <atm_continue_init+0x134>)
10005592:	4798      	blx	r3
10005594:	2336      	movs	r3, #54	; 0x36
10005596:	2210      	movs	r2, #16
10005598:	0001      	movs	r1, r0
1000559a:	a802      	add	r0, sp, #8
1000559c:	181b      	adds	r3, r3, r0
1000559e:	0018      	movs	r0, r3
100055a0:	4b13      	ldr	r3, [pc, #76]	; (100055f0 <atm_continue_init+0x100>)
100055a2:	4798      	blx	r3
100055a4:	2356      	movs	r3, #86	; 0x56
100055a6:	aa02      	add	r2, sp, #8
100055a8:	189b      	adds	r3, r3, r2
100055aa:	2201      	movs	r2, #1
100055ac:	0020      	movs	r0, r4
100055ae:	701a      	strb	r2, [r3, #0]
100055b0:	491d      	ldr	r1, [pc, #116]	; (10005628 <atm_continue_init+0x138>)
100055b2:	9a00      	ldr	r2, [sp, #0]
100055b4:	4b1d      	ldr	r3, [pc, #116]	; (1000562c <atm_continue_init+0x13c>)
100055b6:	4798      	blx	r3
100055b8:	b01b      	add	sp, #108	; 0x6c
100055ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
100055bc:	69bb      	ldr	r3, [r7, #24]
100055be:	930e      	str	r3, [sp, #56]	; 0x38
100055c0:	9b01      	ldr	r3, [sp, #4]
100055c2:	889b      	ldrh	r3, [r3, #4]
100055c4:	80b3      	strh	r3, [r6, #4]
100055c6:	e7b4      	b.n	10005532 <atm_continue_init+0x42>
100055c8:	2336      	movs	r3, #54	; 0x36
100055ca:	a802      	add	r0, sp, #8
100055cc:	181b      	adds	r3, r3, r0
100055ce:	0018      	movs	r0, r3
100055d0:	2210      	movs	r2, #16
100055d2:	4b17      	ldr	r3, [pc, #92]	; (10005630 <atm_continue_init+0x140>)
100055d4:	e7e5      	b.n	100055a2 <atm_continue_init+0xb2>
100055d6:	2336      	movs	r3, #54	; 0x36
100055d8:	a802      	add	r0, sp, #8
100055da:	181b      	adds	r3, r3, r0
100055dc:	2210      	movs	r2, #16
100055de:	0018      	movs	r0, r3
100055e0:	4b13      	ldr	r3, [pc, #76]	; (10005630 <atm_continue_init+0x140>)
100055e2:	4798      	blx	r3
100055e4:	2204      	movs	r2, #4
100055e6:	7ea3      	ldrb	r3, [r4, #26]
100055e8:	4393      	bics	r3, r2
100055ea:	76a3      	strb	r3, [r4, #26]
100055ec:	e7da      	b.n	100055a4 <atm_continue_init+0xb4>
100055ee:	46c0      	nop			; (mov r8, r8)
100055f0:	00005821 	.word	0x00005821
100055f4:	1000aece 	.word	0x1000aece
100055f8:	0002fba5 	.word	0x0002fba5
100055fc:	00002f55 	.word	0x00002f55
10005600:	1000a9a7 	.word	0x1000a9a7
10005604:	1000b4d2 	.word	0x1000b4d2
10005608:	00006609 	.word	0x00006609
1000560c:	10009101 	.word	0x10009101
10005610:	00000d2b 	.word	0x00000d2b
10005614:	00001171 	.word	0x00001171
10005618:	000011a9 	.word	0x000011a9
1000561c:	10007da9 	.word	0x10007da9
10005620:	10007e75 	.word	0x10007e75
10005624:	10007e81 	.word	0x10007e81
10005628:	100053f9 	.word	0x100053f9
1000562c:	10007145 	.word	0x10007145
10005630:	00005859 	.word	0x00005859

10005634 <atm_process_connect_param_update>:
10005634:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10005636:	1e0c      	subs	r4, r1, #0
10005638:	4f2b      	ldr	r7, [pc, #172]	; (100056e8 <atm_process_connect_param_update+0xb4>)
1000563a:	9001      	str	r0, [sp, #4]
1000563c:	d002      	beq.n	10005644 <atm_process_connect_param_update+0x10>
1000563e:	694b      	ldr	r3, [r1, #20]
10005640:	2b00      	cmp	r3, #0
10005642:	d104      	bne.n	1000564e <atm_process_connect_param_update+0x1a>
10005644:	0039      	movs	r1, r7
10005646:	4829      	ldr	r0, [pc, #164]	; (100056ec <atm_process_connect_param_update+0xb8>)
10005648:	4b29      	ldr	r3, [pc, #164]	; (100056f0 <atm_process_connect_param_update+0xbc>)
1000564a:	4798      	blx	r3
1000564c:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000564e:	68dd      	ldr	r5, [r3, #12]
10005650:	0039      	movs	r1, r7
10005652:	88ab      	ldrh	r3, [r5, #4]
10005654:	886a      	ldrh	r2, [r5, #2]
10005656:	4827      	ldr	r0, [pc, #156]	; (100056f4 <atm_process_connect_param_update+0xc0>)
10005658:	4e25      	ldr	r6, [pc, #148]	; (100056f0 <atm_process_connect_param_update+0xbc>)
1000565a:	47b0      	blx	r6
1000565c:	88a2      	ldrh	r2, [r4, #4]
1000565e:	886b      	ldrh	r3, [r5, #2]
10005660:	1ca1      	adds	r1, r4, #2
10005662:	4293      	cmp	r3, r2
10005664:	d306      	bcc.n	10005674 <atm_process_connect_param_update+0x40>
10005666:	882b      	ldrh	r3, [r5, #0]
10005668:	4293      	cmp	r3, r2
1000566a:	d803      	bhi.n	10005674 <atm_process_connect_param_update+0x40>
1000566c:	8888      	ldrh	r0, [r1, #4]
1000566e:	88ab      	ldrh	r3, [r5, #4]
10005670:	4283      	cmp	r3, r0
10005672:	d033      	beq.n	100056dc <atm_process_connect_param_update+0xa8>
10005674:	4d1c      	ldr	r5, [pc, #112]	; (100056e8 <atm_process_connect_param_update+0xb4>)
10005676:	888b      	ldrh	r3, [r1, #4]
10005678:	481f      	ldr	r0, [pc, #124]	; (100056f8 <atm_process_connect_param_update+0xc4>)
1000567a:	0029      	movs	r1, r5
1000567c:	47b0      	blx	r6
1000567e:	7fe3      	ldrb	r3, [r4, #31]
10005680:	6961      	ldr	r1, [r4, #20]
10005682:	2b00      	cmp	r3, #0
10005684:	d004      	beq.n	10005690 <atm_process_connect_param_update+0x5c>
10005686:	88c9      	ldrh	r1, [r1, #6]
10005688:	7f20      	ldrb	r0, [r4, #28]
1000568a:	4b1c      	ldr	r3, [pc, #112]	; (100056fc <atm_process_connect_param_update+0xc8>)
1000568c:	4798      	blx	r3
1000568e:	e7dd      	b.n	1000564c <atm_process_connect_param_update+0x18>
10005690:	7f62      	ldrb	r2, [r4, #29]
10005692:	794b      	ldrb	r3, [r1, #5]
10005694:	429a      	cmp	r2, r3
10005696:	d210      	bcs.n	100056ba <atm_process_connect_param_update+0x86>
10005698:	2301      	movs	r3, #1
1000569a:	77e3      	strb	r3, [r4, #31]
1000569c:	4a18      	ldr	r2, [pc, #96]	; (10005700 <atm_process_connect_param_update+0xcc>)
1000569e:	0023      	movs	r3, r4
100056a0:	68c9      	ldr	r1, [r1, #12]
100056a2:	9801      	ldr	r0, [sp, #4]
100056a4:	4d17      	ldr	r5, [pc, #92]	; (10005704 <atm_process_connect_param_update+0xd0>)
100056a6:	47a8      	blx	r5
100056a8:	6963      	ldr	r3, [r4, #20]
100056aa:	7f20      	ldrb	r0, [r4, #28]
100056ac:	88d9      	ldrh	r1, [r3, #6]
100056ae:	4b13      	ldr	r3, [pc, #76]	; (100056fc <atm_process_connect_param_update+0xc8>)
100056b0:	4798      	blx	r3
100056b2:	7f63      	ldrb	r3, [r4, #29]
100056b4:	3301      	adds	r3, #1
100056b6:	7763      	strb	r3, [r4, #29]
100056b8:	e7c8      	b.n	1000564c <atm_process_connect_param_update+0x18>
100056ba:	0029      	movs	r1, r5
100056bc:	4812      	ldr	r0, [pc, #72]	; (10005708 <atm_process_connect_param_update+0xd4>)
100056be:	47b0      	blx	r6
100056c0:	4d12      	ldr	r5, [pc, #72]	; (1000570c <atm_process_connect_param_update+0xd8>)
100056c2:	4b13      	ldr	r3, [pc, #76]	; (10005710 <atm_process_connect_param_update+0xdc>)
100056c4:	7f20      	ldrb	r0, [r4, #28]
100056c6:	4798      	blx	r3
100056c8:	2200      	movs	r2, #0
100056ca:	6963      	ldr	r3, [r4, #20]
100056cc:	681b      	ldr	r3, [r3, #0]
100056ce:	6162      	str	r2, [r4, #20]
100056d0:	4293      	cmp	r3, r2
100056d2:	d0bb      	beq.n	1000564c <atm_process_connect_param_update+0x18>
100056d4:	0029      	movs	r1, r5
100056d6:	9801      	ldr	r0, [sp, #4]
100056d8:	4798      	blx	r3
100056da:	e7b7      	b.n	1000564c <atm_process_connect_param_update+0x18>
100056dc:	0039      	movs	r1, r7
100056de:	480d      	ldr	r0, [pc, #52]	; (10005714 <atm_process_connect_param_update+0xe0>)
100056e0:	47b0      	blx	r6
100056e2:	2500      	movs	r5, #0
100056e4:	e7ed      	b.n	100056c2 <atm_process_connect_param_update+0x8e>
100056e6:	46c0      	nop			; (mov r8, r8)
100056e8:	1000aed4 	.word	0x1000aed4
100056ec:	1000a9dc 	.word	0x1000a9dc
100056f0:	000066b1 	.word	0x000066b1
100056f4:	1000aa14 	.word	0x1000aa14
100056f8:	1000aa3a 	.word	0x1000aa3a
100056fc:	100032b9 	.word	0x100032b9
10005700:	10005895 	.word	0x10005895
10005704:	10006f45 	.word	0x10006f45
10005708:	1000aa69 	.word	0x1000aa69
1000570c:	00000409 	.word	0x00000409
10005710:	10003261 	.word	0x10003261
10005714:	1000aa9c 	.word	0x1000aa9c

10005718 <atm_update_timer_cb>:
10005718:	b510      	push	{r4, lr}
1000571a:	7f88      	ldrb	r0, [r1, #30]
1000571c:	4b01      	ldr	r3, [pc, #4]	; (10005724 <atm_update_timer_cb+0xc>)
1000571e:	4798      	blx	r3
10005720:	bd10      	pop	{r4, pc}
10005722:	46c0      	nop			; (mov r8, r8)
10005724:	10005635 	.word	0x10005635

10005728 <atm_gapm_cmp_evt_set_irk>:
10005728:	b510      	push	{r4, lr}
1000572a:	8843      	ldrh	r3, [r0, #2]
1000572c:	2b00      	cmp	r3, #0
1000572e:	d007      	beq.n	10005740 <atm_gapm_cmp_evt_set_irk+0x18>
10005730:	4b0f      	ldr	r3, [pc, #60]	; (10005770 <atm_gapm_cmp_evt_set_irk+0x48>)
10005732:	681b      	ldr	r3, [r3, #0]
10005734:	6a9b      	ldr	r3, [r3, #40]	; 0x28
10005736:	2b00      	cmp	r3, #0
10005738:	d001      	beq.n	1000573e <atm_gapm_cmp_evt_set_irk+0x16>
1000573a:	480e      	ldr	r0, [pc, #56]	; (10005774 <atm_gapm_cmp_evt_set_irk+0x4c>)
1000573c:	4798      	blx	r3
1000573e:	bd10      	pop	{r4, pc}
10005740:	7a48      	ldrb	r0, [r1, #9]
10005742:	728b      	strb	r3, [r1, #10]
10005744:	7a8b      	ldrb	r3, [r1, #10]
10005746:	4283      	cmp	r3, r0
10005748:	d20b      	bcs.n	10005762 <atm_gapm_cmp_evt_set_irk+0x3a>
1000574a:	684c      	ldr	r4, [r1, #4]
1000574c:	009a      	lsls	r2, r3, #2
1000574e:	5912      	ldr	r2, [r2, r4]
10005750:	6852      	ldr	r2, [r2, #4]
10005752:	2a00      	cmp	r2, #0
10005754:	d002      	beq.n	1000575c <atm_gapm_cmp_evt_set_irk+0x34>
10005756:	4808      	ldr	r0, [pc, #32]	; (10005778 <atm_gapm_cmp_evt_set_irk+0x50>)
10005758:	4790      	blx	r2
1000575a:	e7f0      	b.n	1000573e <atm_gapm_cmp_evt_set_irk+0x16>
1000575c:	3301      	adds	r3, #1
1000575e:	728b      	strb	r3, [r1, #10]
10005760:	e7f0      	b.n	10005744 <atm_gapm_cmp_evt_set_irk+0x1c>
10005762:	4b03      	ldr	r3, [pc, #12]	; (10005770 <atm_gapm_cmp_evt_set_irk+0x48>)
10005764:	2000      	movs	r0, #0
10005766:	681b      	ldr	r3, [r3, #0]
10005768:	6a9b      	ldr	r3, [r3, #40]	; 0x28
1000576a:	2b00      	cmp	r3, #0
1000576c:	d1e6      	bne.n	1000573c <atm_gapm_cmp_evt_set_irk+0x14>
1000576e:	e7e6      	b.n	1000573e <atm_gapm_cmp_evt_set_irk+0x16>
10005770:	20015098 	.word	0x20015098
10005774:	0000040d 	.word	0x0000040d
10005778:	1000538d 	.word	0x1000538d

1000577c <atm_gap_conidx_state_sanity>:
1000577c:	000a      	movs	r2, r1
1000577e:	b510      	push	{r4, lr}
10005780:	2800      	cmp	r0, #0
10005782:	d104      	bne.n	1000578e <atm_gap_conidx_state_sanity+0x12>
10005784:	4b05      	ldr	r3, [pc, #20]	; (1000579c <atm_gap_conidx_state_sanity+0x20>)
10005786:	3001      	adds	r0, #1
10005788:	781b      	ldrb	r3, [r3, #0]
1000578a:	2b00      	cmp	r3, #0
1000578c:	d104      	bne.n	10005798 <atm_gap_conidx_state_sanity+0x1c>
1000578e:	4904      	ldr	r1, [pc, #16]	; (100057a0 <atm_gap_conidx_state_sanity+0x24>)
10005790:	4804      	ldr	r0, [pc, #16]	; (100057a4 <atm_gap_conidx_state_sanity+0x28>)
10005792:	4b05      	ldr	r3, [pc, #20]	; (100057a8 <atm_gap_conidx_state_sanity+0x2c>)
10005794:	4798      	blx	r3
10005796:	2000      	movs	r0, #0
10005798:	bd10      	pop	{r4, pc}
1000579a:	46c0      	nop			; (mov r8, r8)
1000579c:	200150a8 	.word	0x200150a8
100057a0:	1000aed4 	.word	0x1000aed4
100057a4:	1000aac6 	.word	0x1000aac6
100057a8:	000066b1 	.word	0x000066b1

100057ac <atm_gapc_cmp_evt_lower_sniff_latency_locally>:
100057ac:	b510      	push	{r4, lr}
100057ae:	884a      	ldrh	r2, [r1, #2]
100057b0:	2a00      	cmp	r2, #0
100057b2:	d103      	bne.n	100057bc <atm_gapc_cmp_evt_lower_sniff_latency_locally+0x10>
100057b4:	4902      	ldr	r1, [pc, #8]	; (100057c0 <atm_gapc_cmp_evt_lower_sniff_latency_locally+0x14>)
100057b6:	4803      	ldr	r0, [pc, #12]	; (100057c4 <atm_gapc_cmp_evt_lower_sniff_latency_locally+0x18>)
100057b8:	4b03      	ldr	r3, [pc, #12]	; (100057c8 <atm_gapc_cmp_evt_lower_sniff_latency_locally+0x1c>)
100057ba:	4798      	blx	r3
100057bc:	bd10      	pop	{r4, pc}
100057be:	46c0      	nop			; (mov r8, r8)
100057c0:	1000aed4 	.word	0x1000aed4
100057c4:	1000aaf0 	.word	0x1000aaf0
100057c8:	000066b1 	.word	0x000066b1

100057cc <atm_gap_conidx_sanity>:
100057cc:	2301      	movs	r3, #1
100057ce:	b510      	push	{r4, lr}
100057d0:	2800      	cmp	r0, #0
100057d2:	d005      	beq.n	100057e0 <atm_gap_conidx_sanity+0x14>
100057d4:	4b03      	ldr	r3, [pc, #12]	; (100057e4 <atm_gap_conidx_sanity+0x18>)
100057d6:	22c5      	movs	r2, #197	; 0xc5
100057d8:	4903      	ldr	r1, [pc, #12]	; (100057e8 <atm_gap_conidx_sanity+0x1c>)
100057da:	4804      	ldr	r0, [pc, #16]	; (100057ec <atm_gap_conidx_sanity+0x20>)
100057dc:	4798      	blx	r3
100057de:	2300      	movs	r3, #0
100057e0:	0018      	movs	r0, r3
100057e2:	bd10      	pop	{r4, pc}
100057e4:	00006609 	.word	0x00006609
100057e8:	1000a9a7 	.word	0x1000a9a7
100057ec:	1000b4d2 	.word	0x1000b4d2

100057f0 <proc_gapc_ind>:
100057f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100057f2:	0004      	movs	r4, r0
100057f4:	000d      	movs	r5, r1
100057f6:	0016      	movs	r6, r2
100057f8:	001f      	movs	r7, r3
100057fa:	2900      	cmp	r1, #0
100057fc:	d004      	beq.n	10005808 <proc_gapc_ind+0x18>
100057fe:	4a0e      	ldr	r2, [pc, #56]	; (10005838 <proc_gapc_ind+0x48>)
10005800:	490e      	ldr	r1, [pc, #56]	; (1000583c <proc_gapc_ind+0x4c>)
10005802:	480f      	ldr	r0, [pc, #60]	; (10005840 <proc_gapc_ind+0x50>)
10005804:	4b0f      	ldr	r3, [pc, #60]	; (10005844 <proc_gapc_ind+0x54>)
10005806:	4798      	blx	r3
10005808:	4b0f      	ldr	r3, [pc, #60]	; (10005848 <proc_gapc_ind+0x58>)
1000580a:	429c      	cmp	r4, r3
1000580c:	d10e      	bne.n	1000582c <proc_gapc_ind+0x3c>
1000580e:	4b0f      	ldr	r3, [pc, #60]	; (1000584c <proc_gapc_ind+0x5c>)
10005810:	681b      	ldr	r3, [r3, #0]
10005812:	691b      	ldr	r3, [r3, #16]
10005814:	2b00      	cmp	r3, #0
10005816:	d003      	beq.n	10005820 <proc_gapc_ind+0x30>
10005818:	0028      	movs	r0, r5
1000581a:	7839      	ldrb	r1, [r7, #0]
1000581c:	4798      	blx	r3
1000581e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10005820:	4a0b      	ldr	r2, [pc, #44]	; (10005850 <proc_gapc_ind+0x60>)
10005822:	490c      	ldr	r1, [pc, #48]	; (10005854 <proc_gapc_ind+0x64>)
10005824:	480c      	ldr	r0, [pc, #48]	; (10005858 <proc_gapc_ind+0x68>)
10005826:	4b0d      	ldr	r3, [pc, #52]	; (1000585c <proc_gapc_ind+0x6c>)
10005828:	4798      	blx	r3
1000582a:	e7f8      	b.n	1000581e <proc_gapc_ind+0x2e>
1000582c:	2e00      	cmp	r6, #0
1000582e:	d1f6      	bne.n	1000581e <proc_gapc_ind+0x2e>
10005830:	0022      	movs	r2, r4
10005832:	4908      	ldr	r1, [pc, #32]	; (10005854 <proc_gapc_ind+0x64>)
10005834:	480a      	ldr	r0, [pc, #40]	; (10005860 <proc_gapc_ind+0x70>)
10005836:	e7f6      	b.n	10005826 <proc_gapc_ind+0x36>
10005838:	0000022e 	.word	0x0000022e
1000583c:	1000a9a7 	.word	0x1000a9a7
10005840:	1000b4d2 	.word	0x1000b4d2
10005844:	00006609 	.word	0x00006609
10005848:	00000e1b 	.word	0x00000e1b
1000584c:	20015098 	.word	0x20015098
10005850:	1000ab4c 	.word	0x1000ab4c
10005854:	1000aed4 	.word	0x1000aed4
10005858:	1000ab2a 	.word	0x1000ab2a
1000585c:	000066b1 	.word	0x000066b1
10005860:	1000ab54 	.word	0x1000ab54

10005864 <atm_gapm_cmp_evt_bt_reset>:
10005864:	b510      	push	{r4, lr}
10005866:	8843      	ldrh	r3, [r0, #2]
10005868:	2b00      	cmp	r3, #0
1000586a:	d103      	bne.n	10005874 <atm_gapm_cmp_evt_bt_reset+0x10>
1000586c:	0008      	movs	r0, r1
1000586e:	4b04      	ldr	r3, [pc, #16]	; (10005880 <atm_gapm_cmp_evt_bt_reset+0x1c>)
10005870:	4798      	blx	r3
10005872:	bd10      	pop	{r4, pc}
10005874:	4a03      	ldr	r2, [pc, #12]	; (10005884 <atm_gapm_cmp_evt_bt_reset+0x20>)
10005876:	4904      	ldr	r1, [pc, #16]	; (10005888 <atm_gapm_cmp_evt_bt_reset+0x24>)
10005878:	4804      	ldr	r0, [pc, #16]	; (1000588c <atm_gapm_cmp_evt_bt_reset+0x28>)
1000587a:	4b05      	ldr	r3, [pc, #20]	; (10005890 <atm_gapm_cmp_evt_bt_reset+0x2c>)
1000587c:	4798      	blx	r3
1000587e:	e7f8      	b.n	10005872 <atm_gapm_cmp_evt_bt_reset+0xe>
10005880:	100054f1 	.word	0x100054f1
10005884:	00000225 	.word	0x00000225
10005888:	1000a9a7 	.word	0x1000a9a7
1000588c:	1000b4d2 	.word	0x1000b4d2
10005890:	00006609 	.word	0x00006609

10005894 <atm_gapc_cmp_evt_update_param>:
10005894:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10005896:	4b13      	ldr	r3, [pc, #76]	; (100058e4 <atm_gapc_cmp_evt_update_param+0x50>)
10005898:	0014      	movs	r4, r2
1000589a:	0142      	lsls	r2, r0, #5
1000589c:	189b      	adds	r3, r3, r2
1000589e:	0005      	movs	r5, r0
100058a0:	000e      	movs	r6, r1
100058a2:	429c      	cmp	r4, r3
100058a4:	d004      	beq.n	100058b0 <atm_gapc_cmp_evt_update_param+0x1c>
100058a6:	22f8      	movs	r2, #248	; 0xf8
100058a8:	490f      	ldr	r1, [pc, #60]	; (100058e8 <atm_gapc_cmp_evt_update_param+0x54>)
100058aa:	4810      	ldr	r0, [pc, #64]	; (100058ec <atm_gapc_cmp_evt_update_param+0x58>)
100058ac:	4b10      	ldr	r3, [pc, #64]	; (100058f0 <atm_gapc_cmp_evt_update_param+0x5c>)
100058ae:	4798      	blx	r3
100058b0:	2300      	movs	r3, #0
100058b2:	77e3      	strb	r3, [r4, #31]
100058b4:	8873      	ldrh	r3, [r6, #2]
100058b6:	2b00      	cmp	r3, #0
100058b8:	d013      	beq.n	100058e2 <atm_gapc_cmp_evt_update_param+0x4e>
100058ba:	6963      	ldr	r3, [r4, #20]
100058bc:	791f      	ldrb	r7, [r3, #4]
100058be:	2f00      	cmp	r7, #0
100058c0:	d10f      	bne.n	100058e2 <atm_gapc_cmp_evt_update_param+0x4e>
100058c2:	7f20      	ldrb	r0, [r4, #28]
100058c4:	4b0b      	ldr	r3, [pc, #44]	; (100058f4 <atm_gapc_cmp_evt_update_param+0x60>)
100058c6:	4798      	blx	r3
100058c8:	4b0b      	ldr	r3, [pc, #44]	; (100058f8 <atm_gapc_cmp_evt_update_param+0x64>)
100058ca:	7f20      	ldrb	r0, [r4, #28]
100058cc:	4798      	blx	r3
100058ce:	6963      	ldr	r3, [r4, #20]
100058d0:	2b00      	cmp	r3, #0
100058d2:	d006      	beq.n	100058e2 <atm_gapc_cmp_evt_update_param+0x4e>
100058d4:	681b      	ldr	r3, [r3, #0]
100058d6:	6167      	str	r7, [r4, #20]
100058d8:	2b00      	cmp	r3, #0
100058da:	d002      	beq.n	100058e2 <atm_gapc_cmp_evt_update_param+0x4e>
100058dc:	0028      	movs	r0, r5
100058de:	8871      	ldrh	r1, [r6, #2]
100058e0:	4798      	blx	r3
100058e2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100058e4:	200150a8 	.word	0x200150a8
100058e8:	1000a9a7 	.word	0x1000a9a7
100058ec:	1000ab82 	.word	0x1000ab82
100058f0:	00006609 	.word	0x00006609
100058f4:	1000330d 	.word	0x1000330d
100058f8:	10003261 	.word	0x10003261

100058fc <atm_gap_prf_reg>:
100058fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100058fe:	4c1c      	ldr	r4, [pc, #112]	; (10005970 <atm_gap_prf_reg+0x74>)
10005900:	000d      	movs	r5, r1
10005902:	6823      	ldr	r3, [r4, #0]
10005904:	2b00      	cmp	r3, #0
10005906:	d004      	beq.n	10005912 <atm_gap_prf_reg+0x16>
10005908:	491a      	ldr	r1, [pc, #104]	; (10005974 <atm_gap_prf_reg+0x78>)
1000590a:	481b      	ldr	r0, [pc, #108]	; (10005978 <atm_gap_prf_reg+0x7c>)
1000590c:	4b1b      	ldr	r3, [pc, #108]	; (1000597c <atm_gap_prf_reg+0x80>)
1000590e:	4798      	blx	r3
10005910:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10005912:	4b1b      	ldr	r3, [pc, #108]	; (10005980 <atm_gap_prf_reg+0x84>)
10005914:	4798      	blx	r3
10005916:	2800      	cmp	r0, #0
10005918:	d102      	bne.n	10005920 <atm_gap_prf_reg+0x24>
1000591a:	4916      	ldr	r1, [pc, #88]	; (10005974 <atm_gap_prf_reg+0x78>)
1000591c:	4819      	ldr	r0, [pc, #100]	; (10005984 <atm_gap_prf_reg+0x88>)
1000591e:	e7f5      	b.n	1000590c <atm_gap_prf_reg+0x10>
10005920:	6847      	ldr	r7, [r0, #4]
10005922:	2f00      	cmp	r7, #0
10005924:	d102      	bne.n	1000592c <atm_gap_prf_reg+0x30>
10005926:	4913      	ldr	r1, [pc, #76]	; (10005974 <atm_gap_prf_reg+0x78>)
10005928:	4817      	ldr	r0, [pc, #92]	; (10005988 <atm_gap_prf_reg+0x8c>)
1000592a:	e7ef      	b.n	1000590c <atm_gap_prf_reg+0x10>
1000592c:	7a23      	ldrb	r3, [r4, #8]
1000592e:	7a62      	ldrb	r2, [r4, #9]
10005930:	429a      	cmp	r2, r3
10005932:	d312      	bcc.n	1000595a <atm_gap_prf_reg+0x5e>
10005934:	2605      	movs	r6, #5
10005936:	2b00      	cmp	r3, #0
10005938:	d001      	beq.n	1000593e <atm_gap_prf_reg+0x42>
1000593a:	005b      	lsls	r3, r3, #1
1000593c:	b2de      	uxtb	r6, r3
1000593e:	6860      	ldr	r0, [r4, #4]
10005940:	4b12      	ldr	r3, [pc, #72]	; (1000598c <atm_gap_prf_reg+0x90>)
10005942:	00b1      	lsls	r1, r6, #2
10005944:	4798      	blx	r3
10005946:	2800      	cmp	r0, #0
10005948:	d105      	bne.n	10005956 <atm_gap_prf_reg+0x5a>
1000594a:	4a11      	ldr	r2, [pc, #68]	; (10005990 <atm_gap_prf_reg+0x94>)
1000594c:	4911      	ldr	r1, [pc, #68]	; (10005994 <atm_gap_prf_reg+0x98>)
1000594e:	4812      	ldr	r0, [pc, #72]	; (10005998 <atm_gap_prf_reg+0x9c>)
10005950:	4b12      	ldr	r3, [pc, #72]	; (1000599c <atm_gap_prf_reg+0xa0>)
10005952:	4798      	blx	r3
10005954:	e7dc      	b.n	10005910 <atm_gap_prf_reg+0x14>
10005956:	6060      	str	r0, [r4, #4]
10005958:	7226      	strb	r6, [r4, #8]
1000595a:	7a63      	ldrb	r3, [r4, #9]
1000595c:	6862      	ldr	r2, [r4, #4]
1000595e:	1c59      	adds	r1, r3, #1
10005960:	7261      	strb	r1, [r4, #9]
10005962:	0028      	movs	r0, r5
10005964:	009c      	lsls	r4, r3, #2
10005966:	1914      	adds	r4, r2, r4
10005968:	47b8      	blx	r7
1000596a:	6020      	str	r0, [r4, #0]
1000596c:	e7d0      	b.n	10005910 <atm_gap_prf_reg+0x14>
1000596e:	46c0      	nop			; (mov r8, r8)
10005970:	2001509c 	.word	0x2001509c
10005974:	1000aed4 	.word	0x1000aed4
10005978:	1000aba0 	.word	0x1000aba0
1000597c:	000066b1 	.word	0x000066b1
10005980:	100088fd 	.word	0x100088fd
10005984:	1000abc7 	.word	0x1000abc7
10005988:	1000abef 	.word	0x1000abef
1000598c:	0002fe0d 	.word	0x0002fe0d
10005990:	0000041b 	.word	0x0000041b
10005994:	1000a9a7 	.word	0x1000a9a7
10005998:	1000b4d2 	.word	0x1000b4d2
1000599c:	00006609 	.word	0x00006609

100059a0 <atm_gap_start>:
100059a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100059a2:	4f19      	ldr	r7, [pc, #100]	; (10005a08 <atm_gap_start+0x68>)
100059a4:	0006      	movs	r6, r0
100059a6:	683b      	ldr	r3, [r7, #0]
100059a8:	000c      	movs	r4, r1
100059aa:	2b00      	cmp	r3, #0
100059ac:	d005      	beq.n	100059ba <atm_gap_start+0x1a>
100059ae:	2285      	movs	r2, #133	; 0x85
100059b0:	4916      	ldr	r1, [pc, #88]	; (10005a0c <atm_gap_start+0x6c>)
100059b2:	4817      	ldr	r0, [pc, #92]	; (10005a10 <atm_gap_start+0x70>)
100059b4:	4b17      	ldr	r3, [pc, #92]	; (10005a14 <atm_gap_start+0x74>)
100059b6:	00d2      	lsls	r2, r2, #3
100059b8:	4798      	blx	r3
100059ba:	4d17      	ldr	r5, [pc, #92]	; (10005a18 <atm_gap_start+0x78>)
100059bc:	4b17      	ldr	r3, [pc, #92]	; (10005a1c <atm_gap_start+0x7c>)
100059be:	603c      	str	r4, [r7, #0]
100059c0:	602e      	str	r6, [r5, #0]
100059c2:	4798      	blx	r3
100059c4:	4b16      	ldr	r3, [pc, #88]	; (10005a20 <atm_gap_start+0x80>)
100059c6:	4798      	blx	r3
100059c8:	4816      	ldr	r0, [pc, #88]	; (10005a24 <atm_gap_start+0x84>)
100059ca:	4b17      	ldr	r3, [pc, #92]	; (10005a28 <atm_gap_start+0x88>)
100059cc:	4798      	blx	r3
100059ce:	2100      	movs	r1, #0
100059d0:	2002      	movs	r0, #2
100059d2:	4a16      	ldr	r2, [pc, #88]	; (10005a2c <atm_gap_start+0x8c>)
100059d4:	4b16      	ldr	r3, [pc, #88]	; (10005a30 <atm_gap_start+0x90>)
100059d6:	4798      	blx	r3
100059d8:	4b16      	ldr	r3, [pc, #88]	; (10005a34 <atm_gap_start+0x94>)
100059da:	4798      	blx	r3
100059dc:	0029      	movs	r1, r5
100059de:	4816      	ldr	r0, [pc, #88]	; (10005a38 <atm_gap_start+0x98>)
100059e0:	4b16      	ldr	r3, [pc, #88]	; (10005a3c <atm_gap_start+0x9c>)
100059e2:	4798      	blx	r3
100059e4:	2400      	movs	r4, #0
100059e6:	7a6b      	ldrb	r3, [r5, #9]
100059e8:	429c      	cmp	r4, r3
100059ea:	db04      	blt.n	100059f6 <atm_gap_start+0x56>
100059ec:	4b14      	ldr	r3, [pc, #80]	; (10005a40 <atm_gap_start+0xa0>)
100059ee:	4798      	blx	r3
100059f0:	4b14      	ldr	r3, [pc, #80]	; (10005a44 <atm_gap_start+0xa4>)
100059f2:	4798      	blx	r3
100059f4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100059f6:	686a      	ldr	r2, [r5, #4]
100059f8:	00a3      	lsls	r3, r4, #2
100059fa:	589b      	ldr	r3, [r3, r2]
100059fc:	681b      	ldr	r3, [r3, #0]
100059fe:	2b00      	cmp	r3, #0
10005a00:	d000      	beq.n	10005a04 <atm_gap_start+0x64>
10005a02:	4798      	blx	r3
10005a04:	3401      	adds	r4, #1
10005a06:	e7ee      	b.n	100059e6 <atm_gap_start+0x46>
10005a08:	20015098 	.word	0x20015098
10005a0c:	1000a9a7 	.word	0x1000a9a7
10005a10:	1000b4d2 	.word	0x1000b4d2
10005a14:	00006609 	.word	0x00006609
10005a18:	2001509c 	.word	0x2001509c
10005a1c:	10008a15 	.word	0x10008a15
10005a20:	10007685 	.word	0x10007685
10005a24:	100057f1 	.word	0x100057f1
10005a28:	10007525 	.word	0x10007525
10005a2c:	10005ae9 	.word	0x10005ae9
10005a30:	10006f01 	.word	0x10006f01
10005a34:	100080c9 	.word	0x100080c9
10005a38:	10005865 	.word	0x10005865
10005a3c:	100070e9 	.word	0x100070e9
10005a40:	10008a89 	.word	0x10008a89
10005a44:	20014445 	.word	0x20014445

10005a48 <atm_gap_connect_accept>:
10005a48:	b510      	push	{r4, lr}
10005a4a:	4b08      	ldr	r3, [pc, #32]	; (10005a6c <atm_gap_connect_accept+0x24>)
10005a4c:	0142      	lsls	r2, r0, #5
10005a4e:	5cd1      	ldrb	r1, [r2, r3]
10005a50:	0004      	movs	r4, r0
10005a52:	2901      	cmp	r1, #1
10005a54:	d109      	bne.n	10005a6a <atm_gap_connect_accept+0x22>
10005a56:	3101      	adds	r1, #1
10005a58:	54d1      	strb	r1, [r2, r3]
10005a5a:	189b      	adds	r3, r3, r2
10005a5c:	7798      	strb	r0, [r3, #30]
10005a5e:	4b04      	ldr	r3, [pc, #16]	; (10005a70 <atm_gap_connect_accept+0x28>)
10005a60:	4798      	blx	r3
10005a62:	4b04      	ldr	r3, [pc, #16]	; (10005a74 <atm_gap_connect_accept+0x2c>)
10005a64:	0001      	movs	r1, r0
10005a66:	0020      	movs	r0, r4
10005a68:	4798      	blx	r3
10005a6a:	bd10      	pop	{r4, pc}
10005a6c:	200150a8 	.word	0x200150a8
10005a70:	10007da9 	.word	0x10007da9
10005a74:	10007655 	.word	0x10007655

10005a78 <atm_gap_disconnect>:
10005a78:	b570      	push	{r4, r5, r6, lr}
10005a7a:	0a0b      	lsrs	r3, r1, #8
10005a7c:	0004      	movs	r4, r0
10005a7e:	000d      	movs	r5, r1
10005a80:	2b00      	cmp	r3, #0
10005a82:	d005      	beq.n	10005a90 <atm_gap_disconnect+0x18>
10005a84:	2b03      	cmp	r3, #3
10005a86:	d003      	beq.n	10005a90 <atm_gap_disconnect+0x18>
10005a88:	4b08      	ldr	r3, [pc, #32]	; (10005aac <atm_gap_disconnect+0x34>)
10005a8a:	4a09      	ldr	r2, [pc, #36]	; (10005ab0 <atm_gap_disconnect+0x38>)
10005a8c:	4e09      	ldr	r6, [pc, #36]	; (10005ab4 <atm_gap_disconnect+0x3c>)
10005a8e:	47b0      	blx	r6
10005a90:	0020      	movs	r0, r4
10005a92:	4909      	ldr	r1, [pc, #36]	; (10005ab8 <atm_gap_disconnect+0x40>)
10005a94:	4b09      	ldr	r3, [pc, #36]	; (10005abc <atm_gap_disconnect+0x44>)
10005a96:	4798      	blx	r3
10005a98:	2800      	cmp	r0, #0
10005a9a:	d005      	beq.n	10005aa8 <atm_gap_disconnect+0x30>
10005a9c:	0020      	movs	r0, r4
10005a9e:	0029      	movs	r1, r5
10005aa0:	4b07      	ldr	r3, [pc, #28]	; (10005ac0 <atm_gap_disconnect+0x48>)
10005aa2:	4a08      	ldr	r2, [pc, #32]	; (10005ac4 <atm_gap_disconnect+0x4c>)
10005aa4:	4c08      	ldr	r4, [pc, #32]	; (10005ac8 <atm_gap_disconnect+0x50>)
10005aa6:	47a0      	blx	r4
10005aa8:	bd70      	pop	{r4, r5, r6, pc}
10005aaa:	46c0      	nop			; (mov r8, r8)
10005aac:	0000044a 	.word	0x0000044a
10005ab0:	1000a9a7 	.word	0x1000a9a7
10005ab4:	00006641 	.word	0x00006641
10005ab8:	1000ac1a 	.word	0x1000ac1a
10005abc:	1000577d 	.word	0x1000577d
10005ac0:	200150a8 	.word	0x200150a8
10005ac4:	10005365 	.word	0x10005365
10005ac8:	10006f99 	.word	0x10006f99

10005acc <atm_gap_get_local_name>:
10005acc:	4a05      	ldr	r2, [pc, #20]	; (10005ae4 <atm_gap_get_local_name+0x18>)
10005ace:	0003      	movs	r3, r0
10005ad0:	6810      	ldr	r0, [r2, #0]
10005ad2:	2800      	cmp	r0, #0
10005ad4:	d004      	beq.n	10005ae0 <atm_gap_get_local_name+0x14>
10005ad6:	7901      	ldrb	r1, [r0, #4]
10005ad8:	7019      	strb	r1, [r3, #0]
10005ada:	6813      	ldr	r3, [r2, #0]
10005adc:	6818      	ldr	r0, [r3, #0]
10005ade:	4770      	bx	lr
10005ae0:	7018      	strb	r0, [r3, #0]
10005ae2:	e7fc      	b.n	10005ade <atm_gap_get_local_name+0x12>
10005ae4:	2001509c 	.word	0x2001509c

10005ae8 <evt_handler>:
10005ae8:	b5f0      	push	{r4, r5, r6, r7, lr}
10005aea:	7802      	ldrb	r2, [r0, #0]
10005aec:	0004      	movs	r4, r0
10005aee:	b08f      	sub	sp, #60	; 0x3c
10005af0:	2a1a      	cmp	r2, #26
10005af2:	d900      	bls.n	10005af6 <evt_handler+0xe>
10005af4:	e181      	b.n	10005dfa <evt_handler+0x312>
10005af6:	0010      	movs	r0, r2
10005af8:	f003 fb76 	bl	100091e8 <____gnu_thumb1_case_uhi_veneer>
10005afc:	0020001b 	.word	0x0020001b
10005b00:	001e001e 	.word	0x001e001e
10005b04:	002d0023 	.word	0x002d0023
10005b08:	017f0058 	.word	0x017f0058
10005b0c:	007c017f 	.word	0x007c017f
10005b10:	009b001e 	.word	0x009b001e
10005b14:	00cd00b7 	.word	0x00cd00b7
10005b18:	00da017f 	.word	0x00da017f
10005b1c:	016300ee 	.word	0x016300ee
10005b20:	017f017f 	.word	0x017f017f
10005b24:	017f017f 	.word	0x017f017f
10005b28:	001e017f 	.word	0x001e017f
10005b2c:	0177016d 	.word	0x0177016d
10005b30:	00ac      	.short	0x00ac
10005b32:	4bb5      	ldr	r3, [pc, #724]	; (10005e08 <evt_handler+0x320>)
10005b34:	1d20      	adds	r0, r4, #4
10005b36:	4798      	blx	r3
10005b38:	2501      	movs	r5, #1
10005b3a:	e077      	b.n	10005c2c <evt_handler+0x144>
10005b3c:	4bb3      	ldr	r3, [pc, #716]	; (10005e0c <evt_handler+0x324>)
10005b3e:	1d20      	adds	r0, r4, #4
10005b40:	e7f9      	b.n	10005b36 <evt_handler+0x4e>
10005b42:	4bb3      	ldr	r3, [pc, #716]	; (10005e10 <evt_handler+0x328>)
10005b44:	1d20      	adds	r0, r4, #4
10005b46:	681b      	ldr	r3, [r3, #0]
10005b48:	681b      	ldr	r3, [r3, #0]
10005b4a:	2b00      	cmp	r3, #0
10005b4c:	d1f3      	bne.n	10005b36 <evt_handler+0x4e>
10005b4e:	4ab1      	ldr	r2, [pc, #708]	; (10005e14 <evt_handler+0x32c>)
10005b50:	49b1      	ldr	r1, [pc, #708]	; (10005e18 <evt_handler+0x330>)
10005b52:	48b2      	ldr	r0, [pc, #712]	; (10005e1c <evt_handler+0x334>)
10005b54:	e0a9      	b.n	10005caa <evt_handler+0x1c2>
10005b56:	4db2      	ldr	r5, [pc, #712]	; (10005e20 <evt_handler+0x338>)
10005b58:	7926      	ldrb	r6, [r4, #4]
10005b5a:	782b      	ldrb	r3, [r5, #0]
10005b5c:	431e      	orrs	r6, r3
10005b5e:	d1eb      	bne.n	10005b38 <evt_handler+0x50>
10005b60:	1caf      	adds	r7, r5, #2
10005b62:	4bb0      	ldr	r3, [pc, #704]	; (10005e24 <evt_handler+0x33c>)
10005b64:	2212      	movs	r2, #18
10005b66:	0038      	movs	r0, r7
10005b68:	1da1      	adds	r1, r4, #6
10005b6a:	4798      	blx	r3
10005b6c:	2301      	movs	r3, #1
10005b6e:	702b      	strb	r3, [r5, #0]
10005b70:	4ba7      	ldr	r3, [pc, #668]	; (10005e10 <evt_handler+0x328>)
10005b72:	681b      	ldr	r3, [r3, #0]
10005b74:	685b      	ldr	r3, [r3, #4]
10005b76:	2b00      	cmp	r3, #0
10005b78:	d002      	beq.n	10005b80 <evt_handler+0x98>
10005b7a:	0039      	movs	r1, r7
10005b7c:	0030      	movs	r0, r6
10005b7e:	4798      	blx	r3
10005b80:	7caa      	ldrb	r2, [r5, #18]
10005b82:	4ba9      	ldr	r3, [pc, #676]	; (10005e28 <evt_handler+0x340>)
10005b84:	2a00      	cmp	r2, #0
10005b86:	d100      	bne.n	10005b8a <evt_handler+0xa2>
10005b88:	4ba8      	ldr	r3, [pc, #672]	; (10005e2c <evt_handler+0x344>)
10005b8a:	2200      	movs	r2, #0
10005b8c:	49a2      	ldr	r1, [pc, #648]	; (10005e18 <evt_handler+0x330>)
10005b8e:	48a8      	ldr	r0, [pc, #672]	; (10005e30 <evt_handler+0x348>)
10005b90:	4da8      	ldr	r5, [pc, #672]	; (10005e34 <evt_handler+0x34c>)
10005b92:	47a8      	blx	r5
10005b94:	0020      	movs	r0, r4
10005b96:	2206      	movs	r2, #6
10005b98:	49a7      	ldr	r1, [pc, #668]	; (10005e38 <evt_handler+0x350>)
10005b9a:	4ba8      	ldr	r3, [pc, #672]	; (10005e3c <evt_handler+0x354>)
10005b9c:	3010      	adds	r0, #16
10005b9e:	4798      	blx	r3
10005ba0:	2800      	cmp	r0, #0
10005ba2:	d1c9      	bne.n	10005b38 <evt_handler+0x50>
10005ba4:	2144      	movs	r1, #68	; 0x44
10005ba6:	4ba6      	ldr	r3, [pc, #664]	; (10005e40 <evt_handler+0x358>)
10005ba8:	4798      	blx	r3
10005baa:	e7c5      	b.n	10005b38 <evt_handler+0x50>
10005bac:	7927      	ldrb	r7, [r4, #4]
10005bae:	4ba5      	ldr	r3, [pc, #660]	; (10005e44 <evt_handler+0x35c>)
10005bb0:	0038      	movs	r0, r7
10005bb2:	4798      	blx	r3
10005bb4:	1e05      	subs	r5, r0, #0
10005bb6:	d0bf      	beq.n	10005b38 <evt_handler+0x50>
10005bb8:	2200      	movs	r2, #0
10005bba:	4e99      	ldr	r6, [pc, #612]	; (10005e20 <evt_handler+0x338>)
10005bbc:	017b      	lsls	r3, r7, #5
10005bbe:	559a      	strb	r2, [r3, r6]
10005bc0:	18f6      	adds	r6, r6, r3
10005bc2:	6973      	ldr	r3, [r6, #20]
10005bc4:	4293      	cmp	r3, r2
10005bc6:	d007      	beq.n	10005bd8 <evt_handler+0xf0>
10005bc8:	7f30      	ldrb	r0, [r6, #28]
10005bca:	4b9f      	ldr	r3, [pc, #636]	; (10005e48 <evt_handler+0x360>)
10005bcc:	4798      	blx	r3
10005bce:	7f30      	ldrb	r0, [r6, #28]
10005bd0:	4b9e      	ldr	r3, [pc, #632]	; (10005e4c <evt_handler+0x364>)
10005bd2:	4798      	blx	r3
10005bd4:	2200      	movs	r2, #0
10005bd6:	6172      	str	r2, [r6, #20]
10005bd8:	4b8d      	ldr	r3, [pc, #564]	; (10005e10 <evt_handler+0x328>)
10005bda:	681b      	ldr	r3, [r3, #0]
10005bdc:	689b      	ldr	r3, [r3, #8]
10005bde:	2b00      	cmp	r3, #0
10005be0:	d002      	beq.n	10005be8 <evt_handler+0x100>
10005be2:	0038      	movs	r0, r7
10005be4:	1da1      	adds	r1, r4, #6
10005be6:	4798      	blx	r3
10005be8:	8922      	ldrh	r2, [r4, #8]
10005bea:	498b      	ldr	r1, [pc, #556]	; (10005e18 <evt_handler+0x330>)
10005bec:	4898      	ldr	r0, [pc, #608]	; (10005e50 <evt_handler+0x368>)
10005bee:	4b91      	ldr	r3, [pc, #580]	; (10005e34 <evt_handler+0x34c>)
10005bf0:	4798      	blx	r3
10005bf2:	e01b      	b.n	10005c2c <evt_handler+0x144>
10005bf4:	7926      	ldrb	r6, [r4, #4]
10005bf6:	4b93      	ldr	r3, [pc, #588]	; (10005e44 <evt_handler+0x35c>)
10005bf8:	0030      	movs	r0, r6
10005bfa:	4798      	blx	r3
10005bfc:	2800      	cmp	r0, #0
10005bfe:	d09b      	beq.n	10005b38 <evt_handler+0x50>
10005c00:	0030      	movs	r0, r6
10005c02:	4994      	ldr	r1, [pc, #592]	; (10005e54 <evt_handler+0x36c>)
10005c04:	4b94      	ldr	r3, [pc, #592]	; (10005e58 <evt_handler+0x370>)
10005c06:	4798      	blx	r3
10005c08:	1e05      	subs	r5, r0, #0
10005c0a:	d095      	beq.n	10005b38 <evt_handler+0x50>
10005c0c:	4b84      	ldr	r3, [pc, #528]	; (10005e20 <evt_handler+0x338>)
10005c0e:	88e2      	ldrh	r2, [r4, #6]
10005c10:	0171      	lsls	r1, r6, #5
10005c12:	185b      	adds	r3, r3, r1
10005c14:	809a      	strh	r2, [r3, #4]
10005c16:	8922      	ldrh	r2, [r4, #8]
10005c18:	80da      	strh	r2, [r3, #6]
10005c1a:	8962      	ldrh	r2, [r4, #10]
10005c1c:	811a      	strh	r2, [r3, #8]
10005c1e:	4b7c      	ldr	r3, [pc, #496]	; (10005e10 <evt_handler+0x328>)
10005c20:	681b      	ldr	r3, [r3, #0]
10005c22:	6a5b      	ldr	r3, [r3, #36]	; 0x24
10005c24:	2b00      	cmp	r3, #0
10005c26:	d087      	beq.n	10005b38 <evt_handler+0x50>
10005c28:	0030      	movs	r0, r6
10005c2a:	4798      	blx	r3
10005c2c:	0028      	movs	r0, r5
10005c2e:	b00f      	add	sp, #60	; 0x3c
10005c30:	bdf0      	pop	{r4, r5, r6, r7, pc}
10005c32:	88e0      	ldrh	r0, [r4, #6]
10005c34:	1d25      	adds	r5, r4, #4
10005c36:	2800      	cmp	r0, #0
10005c38:	d101      	bne.n	10005c3e <evt_handler+0x156>
10005c3a:	4b88      	ldr	r3, [pc, #544]	; (10005e5c <evt_handler+0x374>)
10005c3c:	4798      	blx	r3
10005c3e:	4b74      	ldr	r3, [pc, #464]	; (10005e10 <evt_handler+0x328>)
10005c40:	681b      	ldr	r3, [r3, #0]
10005c42:	6a1b      	ldr	r3, [r3, #32]
10005c44:	2b00      	cmp	r3, #0
10005c46:	d003      	beq.n	10005c50 <evt_handler+0x168>
10005c48:	0029      	movs	r1, r5
10005c4a:	7920      	ldrb	r0, [r4, #4]
10005c4c:	4798      	blx	r3
10005c4e:	e773      	b.n	10005b38 <evt_handler+0x50>
10005c50:	4a83      	ldr	r2, [pc, #524]	; (10005e60 <evt_handler+0x378>)
10005c52:	e77d      	b.n	10005b50 <evt_handler+0x68>
10005c54:	4b6e      	ldr	r3, [pc, #440]	; (10005e10 <evt_handler+0x328>)
10005c56:	681b      	ldr	r3, [r3, #0]
10005c58:	68db      	ldr	r3, [r3, #12]
10005c5a:	2b00      	cmp	r3, #0
10005c5c:	d003      	beq.n	10005c66 <evt_handler+0x17e>
10005c5e:	7961      	ldrb	r1, [r4, #5]
10005c60:	7920      	ldrb	r0, [r4, #4]
10005c62:	4798      	blx	r3
10005c64:	e768      	b.n	10005b38 <evt_handler+0x50>
10005c66:	4a7f      	ldr	r2, [pc, #508]	; (10005e64 <evt_handler+0x37c>)
10005c68:	e772      	b.n	10005b50 <evt_handler+0x68>
10005c6a:	7926      	ldrb	r6, [r4, #4]
10005c6c:	4b75      	ldr	r3, [pc, #468]	; (10005e44 <evt_handler+0x35c>)
10005c6e:	0030      	movs	r0, r6
10005c70:	4798      	blx	r3
10005c72:	1e05      	subs	r5, r0, #0
10005c74:	d100      	bne.n	10005c78 <evt_handler+0x190>
10005c76:	e75f      	b.n	10005b38 <evt_handler+0x50>
10005c78:	0030      	movs	r0, r6
10005c7a:	497b      	ldr	r1, [pc, #492]	; (10005e68 <evt_handler+0x380>)
10005c7c:	4b7b      	ldr	r3, [pc, #492]	; (10005e6c <evt_handler+0x384>)
10005c7e:	4798      	blx	r3
10005c80:	89a1      	ldrh	r1, [r4, #12]
10005c82:	8923      	ldrh	r3, [r4, #8]
10005c84:	88e2      	ldrh	r2, [r4, #6]
10005c86:	9101      	str	r1, [sp, #4]
10005c88:	8961      	ldrh	r1, [r4, #10]
10005c8a:	4879      	ldr	r0, [pc, #484]	; (10005e70 <evt_handler+0x388>)
10005c8c:	9100      	str	r1, [sp, #0]
10005c8e:	4c69      	ldr	r4, [pc, #420]	; (10005e34 <evt_handler+0x34c>)
10005c90:	4961      	ldr	r1, [pc, #388]	; (10005e18 <evt_handler+0x330>)
10005c92:	47a0      	blx	r4
10005c94:	e7ca      	b.n	10005c2c <evt_handler+0x144>
10005c96:	4b5e      	ldr	r3, [pc, #376]	; (10005e10 <evt_handler+0x328>)
10005c98:	4a76      	ldr	r2, [pc, #472]	; (10005e74 <evt_handler+0x38c>)
10005c9a:	681b      	ldr	r3, [r3, #0]
10005c9c:	1d61      	adds	r1, r4, #5
10005c9e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
10005ca0:	2b00      	cmp	r3, #0
10005ca2:	d000      	beq.n	10005ca6 <evt_handler+0x1be>
10005ca4:	e095      	b.n	10005dd2 <evt_handler+0x2ea>
10005ca6:	495c      	ldr	r1, [pc, #368]	; (10005e18 <evt_handler+0x330>)
10005ca8:	4873      	ldr	r0, [pc, #460]	; (10005e78 <evt_handler+0x390>)
10005caa:	4b62      	ldr	r3, [pc, #392]	; (10005e34 <evt_handler+0x34c>)
10005cac:	4798      	blx	r3
10005cae:	e743      	b.n	10005b38 <evt_handler+0x50>
10005cb0:	7926      	ldrb	r6, [r4, #4]
10005cb2:	4b64      	ldr	r3, [pc, #400]	; (10005e44 <evt_handler+0x35c>)
10005cb4:	0030      	movs	r0, r6
10005cb6:	4798      	blx	r3
10005cb8:	1e05      	subs	r5, r0, #0
10005cba:	d100      	bne.n	10005cbe <evt_handler+0x1d6>
10005cbc:	e73c      	b.n	10005b38 <evt_handler+0x50>
10005cbe:	4b54      	ldr	r3, [pc, #336]	; (10005e10 <evt_handler+0x328>)
10005cc0:	681b      	ldr	r3, [r3, #0]
10005cc2:	6b9b      	ldr	r3, [r3, #56]	; 0x38
10005cc4:	2b00      	cmp	r3, #0
10005cc6:	d103      	bne.n	10005cd0 <evt_handler+0x1e8>
10005cc8:	4a6c      	ldr	r2, [pc, #432]	; (10005e7c <evt_handler+0x394>)
10005cca:	4953      	ldr	r1, [pc, #332]	; (10005e18 <evt_handler+0x330>)
10005ccc:	486a      	ldr	r0, [pc, #424]	; (10005e78 <evt_handler+0x390>)
10005cce:	e78e      	b.n	10005bee <evt_handler+0x106>
10005cd0:	0030      	movs	r0, r6
10005cd2:	1da1      	adds	r1, r4, #6
10005cd4:	4798      	blx	r3
10005cd6:	e7a9      	b.n	10005c2c <evt_handler+0x144>
10005cd8:	79a5      	ldrb	r5, [r4, #6]
10005cda:	4e69      	ldr	r6, [pc, #420]	; (10005e80 <evt_handler+0x398>)
10005cdc:	2d00      	cmp	r5, #0
10005cde:	d14e      	bne.n	10005d7e <evt_handler+0x296>
10005ce0:	230f      	movs	r3, #15
10005ce2:	aa04      	add	r2, sp, #16
10005ce4:	189b      	adds	r3, r3, r2
10005ce6:	0018      	movs	r0, r3
10005ce8:	4b66      	ldr	r3, [pc, #408]	; (10005e84 <evt_handler+0x39c>)
10005cea:	4798      	blx	r3
10005cec:	a904      	add	r1, sp, #16
10005cee:	7bc9      	ldrb	r1, [r1, #15]
10005cf0:	9002      	str	r0, [sp, #8]
10005cf2:	89a3      	ldrh	r3, [r4, #12]
10005cf4:	8962      	ldrh	r2, [r4, #10]
10005cf6:	4f4f      	ldr	r7, [pc, #316]	; (10005e34 <evt_handler+0x34c>)
10005cf8:	9100      	str	r1, [sp, #0]
10005cfa:	4863      	ldr	r0, [pc, #396]	; (10005e88 <evt_handler+0x3a0>)
10005cfc:	4946      	ldr	r1, [pc, #280]	; (10005e18 <evt_handler+0x330>)
10005cfe:	47b8      	blx	r7
10005d00:	ab04      	add	r3, sp, #16
10005d02:	7bdb      	ldrb	r3, [r3, #15]
10005d04:	8967      	ldrh	r7, [r4, #10]
10005d06:	b29a      	uxth	r2, r3
10005d08:	9203      	str	r2, [sp, #12]
10005d0a:	429f      	cmp	r7, r3
10005d0c:	d90e      	bls.n	10005d2c <evt_handler+0x244>
10005d0e:	af08      	add	r7, sp, #32
10005d10:	2218      	movs	r2, #24
10005d12:	0029      	movs	r1, r5
10005d14:	0038      	movs	r0, r7
10005d16:	47b0      	blx	r6
10005d18:	79a3      	ldrb	r3, [r4, #6]
10005d1a:	703b      	strb	r3, [r7, #0]
10005d1c:	4b5b      	ldr	r3, [pc, #364]	; (10005e8c <evt_handler+0x3a4>)
10005d1e:	807b      	strh	r3, [r7, #2]
10005d20:	8923      	ldrh	r3, [r4, #8]
10005d22:	80bb      	strh	r3, [r7, #4]
10005d24:	0039      	movs	r1, r7
10005d26:	7920      	ldrb	r0, [r4, #4]
10005d28:	4b59      	ldr	r3, [pc, #356]	; (10005e90 <evt_handler+0x3a8>)
10005d2a:	e78f      	b.n	10005c4c <evt_handler+0x164>
10005d2c:	1bdb      	subs	r3, r3, r7
10005d2e:	89a2      	ldrh	r2, [r4, #12]
10005d30:	b2de      	uxtb	r6, r3
10005d32:	4296      	cmp	r6, r2
10005d34:	d900      	bls.n	10005d38 <evt_handler+0x250>
10005d36:	0016      	movs	r6, r2
10005d38:	0030      	movs	r0, r6
10005d3a:	4b56      	ldr	r3, [pc, #344]	; (10005e94 <evt_handler+0x3ac>)
10005d3c:	3018      	adds	r0, #24
10005d3e:	4798      	blx	r3
10005d40:	0005      	movs	r5, r0
10005d42:	79a3      	ldrb	r3, [r4, #6]
10005d44:	2218      	movs	r2, #24
10005d46:	9304      	str	r3, [sp, #16]
10005d48:	8923      	ldrh	r3, [r4, #8]
10005d4a:	2100      	movs	r1, #0
10005d4c:	9305      	str	r3, [sp, #20]
10005d4e:	4b4c      	ldr	r3, [pc, #304]	; (10005e80 <evt_handler+0x398>)
10005d50:	4798      	blx	r3
10005d52:	0028      	movs	r0, r5
10005d54:	9b04      	ldr	r3, [sp, #16]
10005d56:	0032      	movs	r2, r6
10005d58:	702b      	strb	r3, [r5, #0]
10005d5a:	9b05      	ldr	r3, [sp, #20]
10005d5c:	300a      	adds	r0, #10
10005d5e:	80ab      	strh	r3, [r5, #4]
10005d60:	9b03      	ldr	r3, [sp, #12]
10005d62:	80eb      	strh	r3, [r5, #6]
10005d64:	9b02      	ldr	r3, [sp, #8]
10005d66:	19d9      	adds	r1, r3, r7
10005d68:	4b2e      	ldr	r3, [pc, #184]	; (10005e24 <evt_handler+0x33c>)
10005d6a:	4798      	blx	r3
10005d6c:	7920      	ldrb	r0, [r4, #4]
10005d6e:	0029      	movs	r1, r5
10005d70:	4b47      	ldr	r3, [pc, #284]	; (10005e90 <evt_handler+0x3a8>)
10005d72:	812e      	strh	r6, [r5, #8]
10005d74:	4798      	blx	r3
10005d76:	0028      	movs	r0, r5
10005d78:	4b47      	ldr	r3, [pc, #284]	; (10005e98 <evt_handler+0x3b0>)
10005d7a:	4798      	blx	r3
10005d7c:	e6dc      	b.n	10005b38 <evt_handler+0x50>
10005d7e:	af08      	add	r7, sp, #32
10005d80:	2218      	movs	r2, #24
10005d82:	2100      	movs	r1, #0
10005d84:	0038      	movs	r0, r7
10005d86:	47b0      	blx	r6
10005d88:	703d      	strb	r5, [r7, #0]
10005d8a:	8923      	ldrh	r3, [r4, #8]
10005d8c:	80bb      	strh	r3, [r7, #4]
10005d8e:	2d01      	cmp	r5, #1
10005d90:	d007      	beq.n	10005da2 <evt_handler+0x2ba>
10005d92:	2d02      	cmp	r5, #2
10005d94:	d00c      	beq.n	10005db0 <evt_handler+0x2c8>
10005d96:	002a      	movs	r2, r5
10005d98:	491f      	ldr	r1, [pc, #124]	; (10005e18 <evt_handler+0x330>)
10005d9a:	4b26      	ldr	r3, [pc, #152]	; (10005e34 <evt_handler+0x34c>)
10005d9c:	483f      	ldr	r0, [pc, #252]	; (10005e9c <evt_handler+0x3b4>)
10005d9e:	4798      	blx	r3
10005da0:	e7c0      	b.n	10005d24 <evt_handler+0x23c>
10005da2:	2302      	movs	r3, #2
10005da4:	80fb      	strh	r3, [r7, #6]
10005da6:	4b3e      	ldr	r3, [pc, #248]	; (10005ea0 <evt_handler+0x3b8>)
10005da8:	681b      	ldr	r3, [r3, #0]
10005daa:	88db      	ldrh	r3, [r3, #6]
10005dac:	813b      	strh	r3, [r7, #8]
10005dae:	e7b9      	b.n	10005d24 <evt_handler+0x23c>
10005db0:	2308      	movs	r3, #8
10005db2:	80fb      	strh	r3, [r7, #6]
10005db4:	4b3a      	ldr	r3, [pc, #232]	; (10005ea0 <evt_handler+0x3b8>)
10005db6:	aa0a      	add	r2, sp, #40	; 0x28
10005db8:	681b      	ldr	r3, [r3, #0]
10005dba:	3308      	adds	r3, #8
10005dbc:	cb03      	ldmia	r3!, {r0, r1}
10005dbe:	c203      	stmia	r2!, {r0, r1}
10005dc0:	e7b0      	b.n	10005d24 <evt_handler+0x23c>
10005dc2:	4b13      	ldr	r3, [pc, #76]	; (10005e10 <evt_handler+0x328>)
10005dc4:	4a37      	ldr	r2, [pc, #220]	; (10005ea4 <evt_handler+0x3bc>)
10005dc6:	681b      	ldr	r3, [r3, #0]
10005dc8:	69db      	ldr	r3, [r3, #28]
10005dca:	2b00      	cmp	r3, #0
10005dcc:	d100      	bne.n	10005dd0 <evt_handler+0x2e8>
10005dce:	e76a      	b.n	10005ca6 <evt_handler+0x1be>
10005dd0:	1da1      	adds	r1, r4, #6
10005dd2:	7920      	ldrb	r0, [r4, #4]
10005dd4:	e73a      	b.n	10005c4c <evt_handler+0x164>
10005dd6:	4b0e      	ldr	r3, [pc, #56]	; (10005e10 <evt_handler+0x328>)
10005dd8:	681b      	ldr	r3, [r3, #0]
10005dda:	699b      	ldr	r3, [r3, #24]
10005ddc:	2b00      	cmp	r3, #0
10005dde:	d101      	bne.n	10005de4 <evt_handler+0x2fc>
10005de0:	4a31      	ldr	r2, [pc, #196]	; (10005ea8 <evt_handler+0x3c0>)
10005de2:	e760      	b.n	10005ca6 <evt_handler+0x1be>
10005de4:	7920      	ldrb	r0, [r4, #4]
10005de6:	68a1      	ldr	r1, [r4, #8]
10005de8:	e730      	b.n	10005c4c <evt_handler+0x164>
10005dea:	4b09      	ldr	r3, [pc, #36]	; (10005e10 <evt_handler+0x328>)
10005dec:	681b      	ldr	r3, [r3, #0]
10005dee:	695b      	ldr	r3, [r3, #20]
10005df0:	2b00      	cmp	r3, #0
10005df2:	d000      	beq.n	10005df6 <evt_handler+0x30e>
10005df4:	e733      	b.n	10005c5e <evt_handler+0x176>
10005df6:	4a2d      	ldr	r2, [pc, #180]	; (10005eac <evt_handler+0x3c4>)
10005df8:	e6aa      	b.n	10005b50 <evt_handler+0x68>
10005dfa:	4907      	ldr	r1, [pc, #28]	; (10005e18 <evt_handler+0x330>)
10005dfc:	482c      	ldr	r0, [pc, #176]	; (10005eb0 <evt_handler+0x3c8>)
10005dfe:	4b0d      	ldr	r3, [pc, #52]	; (10005e34 <evt_handler+0x34c>)
10005e00:	4798      	blx	r3
10005e02:	2500      	movs	r5, #0
10005e04:	e712      	b.n	10005c2c <evt_handler+0x144>
10005e06:	46c0      	nop			; (mov r8, r8)
10005e08:	100051ad 	.word	0x100051ad
10005e0c:	10006171 	.word	0x10006171
10005e10:	20015098 	.word	0x20015098
10005e14:	1000ac23 	.word	0x1000ac23
10005e18:	1000aed4 	.word	0x1000aed4
10005e1c:	1000ab2a 	.word	0x1000ab2a
10005e20:	200150a8 	.word	0x200150a8
10005e24:	00005821 	.word	0x00005821
10005e28:	1000b3ee 	.word	0x1000b3ee
10005e2c:	1000ac21 	.word	0x1000ac21
10005e30:	1000ac2b 	.word	0x1000ac2b
10005e34:	000066b1 	.word	0x000066b1
10005e38:	1000aee2 	.word	0x1000aee2
10005e3c:	0002fba5 	.word	0x0002fba5
10005e40:	10005a79 	.word	0x10005a79
10005e44:	100057cd 	.word	0x100057cd
10005e48:	1000330d 	.word	0x1000330d
10005e4c:	10003261 	.word	0x10003261
10005e50:	1000ac59 	.word	0x1000ac59
10005e54:	1000ac7f 	.word	0x1000ac7f
10005e58:	1000577d 	.word	0x1000577d
10005e5c:	10007e8d 	.word	0x10007e8d
10005e60:	1000ac8a 	.word	0x1000ac8a
10005e64:	1000ac8f 	.word	0x1000ac8f
10005e68:	1000aedc 	.word	0x1000aedc
10005e6c:	10006fed 	.word	0x10006fed
10005e70:	1000ac98 	.word	0x1000ac98
10005e74:	1000acec 	.word	0x1000acec
10005e78:	1000acf0 	.word	0x1000acf0
10005e7c:	1000ad12 	.word	0x1000ad12
10005e80:	00005859 	.word	0x00005859
10005e84:	10005acd 	.word	0x10005acd
10005e88:	1000ad1e 	.word	0x1000ad1e
10005e8c:	00000207 	.word	0x00000207
10005e90:	10007021 	.word	0x10007021
10005e94:	0002f615 	.word	0x0002f615
10005e98:	0002f629 	.word	0x0002f629
10005e9c:	1000ad5f 	.word	0x1000ad5f
10005ea0:	2001509c 	.word	0x2001509c
10005ea4:	1000ad87 	.word	0x1000ad87
10005ea8:	1000ad8b 	.word	0x1000ad8b
10005eac:	1000ad98 	.word	0x1000ad98
10005eb0:	1000ada5 	.word	0x1000ada5

10005eb4 <atm_gap_get_connect_info>:
10005eb4:	0003      	movs	r3, r0
10005eb6:	2000      	movs	r0, #0
10005eb8:	2b01      	cmp	r3, #1
10005eba:	d803      	bhi.n	10005ec4 <atm_gap_get_connect_info+0x10>
10005ebc:	0158      	lsls	r0, r3, #5
10005ebe:	4b02      	ldr	r3, [pc, #8]	; (10005ec8 <atm_gap_get_connect_info+0x14>)
10005ec0:	3002      	adds	r0, #2
10005ec2:	1818      	adds	r0, r3, r0
10005ec4:	4770      	bx	lr
10005ec6:	46c0      	nop			; (mov r8, r8)
10005ec8:	200150a8 	.word	0x200150a8

10005ecc <atm_gap_connect_param_nego>:
10005ecc:	b570      	push	{r4, r5, r6, lr}
10005ece:	0143      	lsls	r3, r0, #5
10005ed0:	0005      	movs	r5, r0
10005ed2:	2000      	movs	r0, #0
10005ed4:	4c0c      	ldr	r4, [pc, #48]	; (10005f08 <atm_gap_connect_param_nego+0x3c>)
10005ed6:	18e4      	adds	r4, r4, r3
10005ed8:	6963      	ldr	r3, [r4, #20]
10005eda:	4283      	cmp	r3, r0
10005edc:	d10d      	bne.n	10005efa <atm_gap_connect_param_nego+0x2e>
10005ede:	4b0b      	ldr	r3, [pc, #44]	; (10005f0c <atm_gap_connect_param_nego+0x40>)
10005ee0:	6161      	str	r1, [r4, #20]
10005ee2:	7760      	strb	r0, [r4, #29]
10005ee4:	0021      	movs	r1, r4
10005ee6:	480a      	ldr	r0, [pc, #40]	; (10005f10 <atm_gap_connect_param_nego+0x44>)
10005ee8:	4798      	blx	r3
10005eea:	6963      	ldr	r3, [r4, #20]
10005eec:	7720      	strb	r0, [r4, #28]
10005eee:	8919      	ldrh	r1, [r3, #8]
10005ef0:	2900      	cmp	r1, #0
10005ef2:	d003      	beq.n	10005efc <atm_gap_connect_param_nego+0x30>
10005ef4:	4b07      	ldr	r3, [pc, #28]	; (10005f14 <atm_gap_connect_param_nego+0x48>)
10005ef6:	4798      	blx	r3
10005ef8:	2001      	movs	r0, #1
10005efa:	bd70      	pop	{r4, r5, r6, pc}
10005efc:	0021      	movs	r1, r4
10005efe:	0028      	movs	r0, r5
10005f00:	4b05      	ldr	r3, [pc, #20]	; (10005f18 <atm_gap_connect_param_nego+0x4c>)
10005f02:	4798      	blx	r3
10005f04:	e7f8      	b.n	10005ef8 <atm_gap_connect_param_nego+0x2c>
10005f06:	46c0      	nop			; (mov r8, r8)
10005f08:	200150a8 	.word	0x200150a8
10005f0c:	100031f1 	.word	0x100031f1
10005f10:	10005719 	.word	0x10005719
10005f14:	100032b9 	.word	0x100032b9
10005f18:	10005635 	.word	0x10005635

10005f1c <atm_gap_lower_slave_latency_locally>:
10005f1c:	b570      	push	{r4, r5, r6, lr}
10005f1e:	000d      	movs	r5, r1
10005f20:	0004      	movs	r4, r0
10005f22:	000b      	movs	r3, r1
10005f24:	0002      	movs	r2, r0
10005f26:	4e05      	ldr	r6, [pc, #20]	; (10005f3c <atm_gap_lower_slave_latency_locally+0x20>)
10005f28:	4905      	ldr	r1, [pc, #20]	; (10005f40 <atm_gap_lower_slave_latency_locally+0x24>)
10005f2a:	4806      	ldr	r0, [pc, #24]	; (10005f44 <atm_gap_lower_slave_latency_locally+0x28>)
10005f2c:	47b0      	blx	r6
10005f2e:	0029      	movs	r1, r5
10005f30:	0020      	movs	r0, r4
10005f32:	4b05      	ldr	r3, [pc, #20]	; (10005f48 <atm_gap_lower_slave_latency_locally+0x2c>)
10005f34:	4a05      	ldr	r2, [pc, #20]	; (10005f4c <atm_gap_lower_slave_latency_locally+0x30>)
10005f36:	4c06      	ldr	r4, [pc, #24]	; (10005f50 <atm_gap_lower_slave_latency_locally+0x34>)
10005f38:	47a0      	blx	r4
10005f3a:	bd70      	pop	{r4, r5, r6, pc}
10005f3c:	000066b1 	.word	0x000066b1
10005f40:	1000aed4 	.word	0x1000aed4
10005f44:	1000adce 	.word	0x1000adce
10005f48:	200150a8 	.word	0x200150a8
10005f4c:	100057ad 	.word	0x100057ad
10005f50:	10007531 	.word	0x10007531

10005f54 <atm_gap_print_conn_param>:
10005f54:	b570      	push	{r4, r5, r6, lr}
10005f56:	0004      	movs	r4, r0
10005f58:	7a81      	ldrb	r1, [r0, #10]
10005f5a:	b086      	sub	sp, #24
10005f5c:	7bc3      	ldrb	r3, [r0, #15]
10005f5e:	7a42      	ldrb	r2, [r0, #9]
10005f60:	9104      	str	r1, [sp, #16]
10005f62:	7ac1      	ldrb	r1, [r0, #11]
10005f64:	4e0c      	ldr	r6, [pc, #48]	; (10005f98 <atm_gap_print_conn_param+0x44>)
10005f66:	9103      	str	r1, [sp, #12]
10005f68:	7b01      	ldrb	r1, [r0, #12]
10005f6a:	4d0c      	ldr	r5, [pc, #48]	; (10005f9c <atm_gap_print_conn_param+0x48>)
10005f6c:	9102      	str	r1, [sp, #8]
10005f6e:	7b41      	ldrb	r1, [r0, #13]
10005f70:	9101      	str	r1, [sp, #4]
10005f72:	7b81      	ldrb	r1, [r0, #14]
10005f74:	480a      	ldr	r0, [pc, #40]	; (10005fa0 <atm_gap_print_conn_param+0x4c>)
10005f76:	9100      	str	r1, [sp, #0]
10005f78:	0031      	movs	r1, r6
10005f7a:	47a8      	blx	r5
10005f7c:	0031      	movs	r1, r6
10005f7e:	8862      	ldrh	r2, [r4, #2]
10005f80:	4808      	ldr	r0, [pc, #32]	; (10005fa4 <atm_gap_print_conn_param+0x50>)
10005f82:	47a8      	blx	r5
10005f84:	0031      	movs	r1, r6
10005f86:	88a2      	ldrh	r2, [r4, #4]
10005f88:	4807      	ldr	r0, [pc, #28]	; (10005fa8 <atm_gap_print_conn_param+0x54>)
10005f8a:	47a8      	blx	r5
10005f8c:	0031      	movs	r1, r6
10005f8e:	88e2      	ldrh	r2, [r4, #6]
10005f90:	4806      	ldr	r0, [pc, #24]	; (10005fac <atm_gap_print_conn_param+0x58>)
10005f92:	47a8      	blx	r5
10005f94:	b006      	add	sp, #24
10005f96:	bd70      	pop	{r4, r5, r6, pc}
10005f98:	1000aed4 	.word	0x1000aed4
10005f9c:	000066b1 	.word	0x000066b1
10005fa0:	1000adfe 	.word	0x1000adfe
10005fa4:	1000ae3f 	.word	0x1000ae3f
10005fa8:	1000ae75 	.word	0x1000ae75
10005fac:	1000ae9d 	.word	0x1000ae9d

10005fb0 <atm_gap_param_get>:
10005fb0:	4800      	ldr	r0, [pc, #0]	; (10005fb4 <atm_gap_param_get+0x4>)
10005fb2:	4770      	bx	lr
10005fb4:	1000aee8 	.word	0x1000aee8

10005fb8 <scan_find_by_actidx>:
10005fb8:	4a05      	ldr	r2, [pc, #20]	; (10005fd0 <scan_find_by_actidx+0x18>)
10005fba:	2300      	movs	r3, #0
10005fbc:	7811      	ldrb	r1, [r2, #0]
10005fbe:	4281      	cmp	r1, r0
10005fc0:	d103      	bne.n	10005fca <scan_find_by_actidx+0x12>
10005fc2:	7891      	ldrb	r1, [r2, #2]
10005fc4:	4299      	cmp	r1, r3
10005fc6:	d000      	beq.n	10005fca <scan_find_by_actidx+0x12>
10005fc8:	0013      	movs	r3, r2
10005fca:	0018      	movs	r0, r3
10005fcc:	4770      	bx	lr
10005fce:	46c0      	nop			; (mov r8, r8)
10005fd0:	200150c8 	.word	0x200150c8

10005fd4 <gapm_cmp_evt_scan_start>:
10005fd4:	b570      	push	{r4, r5, r6, lr}
10005fd6:	0005      	movs	r5, r0
10005fd8:	1e0c      	subs	r4, r1, #0
10005fda:	d002      	beq.n	10005fe2 <gapm_cmp_evt_scan_start+0xe>
10005fdc:	788b      	ldrb	r3, [r1, #2]
10005fde:	2b03      	cmp	r3, #3
10005fe0:	d005      	beq.n	10005fee <gapm_cmp_evt_scan_start+0x1a>
10005fe2:	4a0e      	ldr	r2, [pc, #56]	; (1000601c <gapm_cmp_evt_scan_start+0x48>)
10005fe4:	490e      	ldr	r1, [pc, #56]	; (10006020 <gapm_cmp_evt_scan_start+0x4c>)
10005fe6:	480f      	ldr	r0, [pc, #60]	; (10006024 <gapm_cmp_evt_scan_start+0x50>)
10005fe8:	4b0f      	ldr	r3, [pc, #60]	; (10006028 <gapm_cmp_evt_scan_start+0x54>)
10005fea:	4798      	blx	r3
10005fec:	bd70      	pop	{r4, r5, r6, pc}
10005fee:	8843      	ldrh	r3, [r0, #2]
10005ff0:	2b00      	cmp	r3, #0
10005ff2:	d109      	bne.n	10006008 <gapm_cmp_evt_scan_start+0x34>
10005ff4:	3304      	adds	r3, #4
10005ff6:	708b      	strb	r3, [r1, #2]
10005ff8:	6863      	ldr	r3, [r4, #4]
10005ffa:	689b      	ldr	r3, [r3, #8]
10005ffc:	2b00      	cmp	r3, #0
10005ffe:	d0f5      	beq.n	10005fec <gapm_cmp_evt_scan_start+0x18>
10006000:	8869      	ldrh	r1, [r5, #2]
10006002:	7820      	ldrb	r0, [r4, #0]
10006004:	4798      	blx	r3
10006006:	e7f1      	b.n	10005fec <gapm_cmp_evt_scan_start+0x18>
10006008:	2302      	movs	r3, #2
1000600a:	708b      	strb	r3, [r1, #2]
1000600c:	8843      	ldrh	r3, [r0, #2]
1000600e:	780a      	ldrb	r2, [r1, #0]
10006010:	4e05      	ldr	r6, [pc, #20]	; (10006028 <gapm_cmp_evt_scan_start+0x54>)
10006012:	4903      	ldr	r1, [pc, #12]	; (10006020 <gapm_cmp_evt_scan_start+0x4c>)
10006014:	4805      	ldr	r0, [pc, #20]	; (1000602c <gapm_cmp_evt_scan_start+0x58>)
10006016:	47b0      	blx	r6
10006018:	e7ee      	b.n	10005ff8 <gapm_cmp_evt_scan_start+0x24>
1000601a:	46c0      	nop			; (mov r8, r8)
1000601c:	1000b094 	.word	0x1000b094
10006020:	1000b076 	.word	0x1000b076
10006024:	1000af4c 	.word	0x1000af4c
10006028:	000066b1 	.word	0x000066b1
1000602c:	1000af7f 	.word	0x1000af7f

10006030 <atm_scan_create>:
10006030:	b510      	push	{r4, lr}
10006032:	000b      	movs	r3, r1
10006034:	490a      	ldr	r1, [pc, #40]	; (10006060 <atm_scan_create+0x30>)
10006036:	788c      	ldrb	r4, [r1, #2]
10006038:	2c00      	cmp	r4, #0
1000603a:	d10a      	bne.n	10006052 <atm_scan_create+0x22>
1000603c:	22ff      	movs	r2, #255	; 0xff
1000603e:	700a      	strb	r2, [r1, #0]
10006040:	3afe      	subs	r2, #254	; 0xfe
10006042:	708a      	strb	r2, [r1, #2]
10006044:	604b      	str	r3, [r1, #4]
10006046:	4a07      	ldr	r2, [pc, #28]	; (10006064 <atm_scan_create+0x34>)
10006048:	4b07      	ldr	r3, [pc, #28]	; (10006068 <atm_scan_create+0x38>)
1000604a:	7048      	strb	r0, [r1, #1]
1000604c:	4798      	blx	r3
1000604e:	0020      	movs	r0, r4
10006050:	bd10      	pop	{r4, pc}
10006052:	4a06      	ldr	r2, [pc, #24]	; (1000606c <atm_scan_create+0x3c>)
10006054:	4906      	ldr	r1, [pc, #24]	; (10006070 <atm_scan_create+0x40>)
10006056:	4807      	ldr	r0, [pc, #28]	; (10006074 <atm_scan_create+0x44>)
10006058:	4b07      	ldr	r3, [pc, #28]	; (10006078 <atm_scan_create+0x48>)
1000605a:	4798      	blx	r3
1000605c:	2402      	movs	r4, #2
1000605e:	e7f6      	b.n	1000604e <atm_scan_create+0x1e>
10006060:	200150c8 	.word	0x200150c8
10006064:	100060f1 	.word	0x100060f1
10006068:	100073c5 	.word	0x100073c5
1000606c:	1000b0d4 	.word	0x1000b0d4
10006070:	1000b076 	.word	0x1000b076
10006074:	1000afb0 	.word	0x1000afb0
10006078:	000066b1 	.word	0x000066b1

1000607c <atm_scan_start>:
1000607c:	b570      	push	{r4, r5, r6, lr}
1000607e:	4b13      	ldr	r3, [pc, #76]	; (100060cc <atm_scan_start+0x50>)
10006080:	0006      	movs	r6, r0
10006082:	000d      	movs	r5, r1
10006084:	4798      	blx	r3
10006086:	1e04      	subs	r4, r0, #0
10006088:	d004      	beq.n	10006094 <atm_scan_start+0x18>
1000608a:	7883      	ldrb	r3, [r0, #2]
1000608c:	2b02      	cmp	r3, #2
1000608e:	d101      	bne.n	10006094 <atm_scan_start+0x18>
10006090:	2d00      	cmp	r5, #0
10006092:	d107      	bne.n	100060a4 <atm_scan_start+0x28>
10006094:	0033      	movs	r3, r6
10006096:	4a0e      	ldr	r2, [pc, #56]	; (100060d0 <atm_scan_start+0x54>)
10006098:	490e      	ldr	r1, [pc, #56]	; (100060d4 <atm_scan_start+0x58>)
1000609a:	480f      	ldr	r0, [pc, #60]	; (100060d8 <atm_scan_start+0x5c>)
1000609c:	4c0f      	ldr	r4, [pc, #60]	; (100060dc <atm_scan_start+0x60>)
1000609e:	47a0      	blx	r4
100060a0:	2001      	movs	r0, #1
100060a2:	bd70      	pop	{r4, r5, r6, pc}
100060a4:	2303      	movs	r3, #3
100060a6:	7083      	strb	r3, [r0, #2]
100060a8:	7868      	ldrb	r0, [r5, #1]
100060aa:	3309      	adds	r3, #9
100060ac:	4018      	ands	r0, r3
100060ae:	1e42      	subs	r2, r0, #1
100060b0:	4190      	sbcs	r0, r2
100060b2:	4b0b      	ldr	r3, [pc, #44]	; (100060e0 <atm_scan_start+0x64>)
100060b4:	b2c0      	uxtb	r0, r0
100060b6:	7018      	strb	r0, [r3, #0]
100060b8:	4b0a      	ldr	r3, [pc, #40]	; (100060e4 <atm_scan_start+0x68>)
100060ba:	4798      	blx	r3
100060bc:	7820      	ldrb	r0, [r4, #0]
100060be:	0022      	movs	r2, r4
100060c0:	0029      	movs	r1, r5
100060c2:	4b09      	ldr	r3, [pc, #36]	; (100060e8 <atm_scan_start+0x6c>)
100060c4:	4c09      	ldr	r4, [pc, #36]	; (100060ec <atm_scan_start+0x70>)
100060c6:	47a0      	blx	r4
100060c8:	2000      	movs	r0, #0
100060ca:	e7ea      	b.n	100060a2 <atm_scan_start+0x26>
100060cc:	10005fb9 	.word	0x10005fb9
100060d0:	1000b0ac 	.word	0x1000b0ac
100060d4:	1000b076 	.word	0x1000b076
100060d8:	1000afd5 	.word	0x1000afd5
100060dc:	000066b1 	.word	0x000066b1
100060e0:	200150d4 	.word	0x200150d4
100060e4:	10003abd 	.word	0x10003abd
100060e8:	10005fd5 	.word	0x10005fd5
100060ec:	10007495 	.word	0x10007495

100060f0 <gapm_cmp_evt_create_scan>:
100060f0:	b570      	push	{r4, r5, r6, lr}
100060f2:	0005      	movs	r5, r0
100060f4:	1e0c      	subs	r4, r1, #0
100060f6:	d002      	beq.n	100060fe <gapm_cmp_evt_create_scan+0xe>
100060f8:	788b      	ldrb	r3, [r1, #2]
100060fa:	2b01      	cmp	r3, #1
100060fc:	d005      	beq.n	1000610a <gapm_cmp_evt_create_scan+0x1a>
100060fe:	4a15      	ldr	r2, [pc, #84]	; (10006154 <gapm_cmp_evt_create_scan+0x64>)
10006100:	4915      	ldr	r1, [pc, #84]	; (10006158 <gapm_cmp_evt_create_scan+0x68>)
10006102:	4816      	ldr	r0, [pc, #88]	; (1000615c <gapm_cmp_evt_create_scan+0x6c>)
10006104:	4b16      	ldr	r3, [pc, #88]	; (10006160 <gapm_cmp_evt_create_scan+0x70>)
10006106:	4798      	blx	r3
10006108:	bd70      	pop	{r4, r5, r6, pc}
1000610a:	8843      	ldrh	r3, [r0, #2]
1000610c:	2b00      	cmp	r3, #0
1000610e:	d117      	bne.n	10006140 <gapm_cmp_evt_create_scan+0x50>
10006110:	3302      	adds	r3, #2
10006112:	708b      	strb	r3, [r1, #2]
10006114:	7900      	ldrb	r0, [r0, #4]
10006116:	7008      	strb	r0, [r1, #0]
10006118:	6889      	ldr	r1, [r1, #8]
1000611a:	2900      	cmp	r1, #0
1000611c:	d001      	beq.n	10006122 <gapm_cmp_evt_create_scan+0x32>
1000611e:	4b11      	ldr	r3, [pc, #68]	; (10006164 <gapm_cmp_evt_create_scan+0x74>)
10006120:	4798      	blx	r3
10006122:	68a0      	ldr	r0, [r4, #8]
10006124:	2800      	cmp	r0, #0
10006126:	d003      	beq.n	10006130 <gapm_cmp_evt_create_scan+0x40>
10006128:	4b0f      	ldr	r3, [pc, #60]	; (10006168 <gapm_cmp_evt_create_scan+0x78>)
1000612a:	4798      	blx	r3
1000612c:	2300      	movs	r3, #0
1000612e:	60a3      	str	r3, [r4, #8]
10006130:	6863      	ldr	r3, [r4, #4]
10006132:	681b      	ldr	r3, [r3, #0]
10006134:	2b00      	cmp	r3, #0
10006136:	d0e7      	beq.n	10006108 <gapm_cmp_evt_create_scan+0x18>
10006138:	8869      	ldrh	r1, [r5, #2]
1000613a:	7820      	ldrb	r0, [r4, #0]
1000613c:	4798      	blx	r3
1000613e:	e7e3      	b.n	10006108 <gapm_cmp_evt_create_scan+0x18>
10006140:	2300      	movs	r3, #0
10006142:	708b      	strb	r3, [r1, #2]
10006144:	8843      	ldrh	r3, [r0, #2]
10006146:	780a      	ldrb	r2, [r1, #0]
10006148:	4e05      	ldr	r6, [pc, #20]	; (10006160 <gapm_cmp_evt_create_scan+0x70>)
1000614a:	4903      	ldr	r1, [pc, #12]	; (10006158 <gapm_cmp_evt_create_scan+0x68>)
1000614c:	4807      	ldr	r0, [pc, #28]	; (1000616c <gapm_cmp_evt_create_scan+0x7c>)
1000614e:	47b0      	blx	r6
10006150:	e7e7      	b.n	10006122 <gapm_cmp_evt_create_scan+0x32>
10006152:	46c0      	nop			; (mov r8, r8)
10006154:	1000b0bb 	.word	0x1000b0bb
10006158:	1000b076 	.word	0x1000b076
1000615c:	1000af4c 	.word	0x1000af4c
10006160:	000066b1 	.word	0x000066b1
10006164:	1000607d 	.word	0x1000607d
10006168:	0002f629 	.word	0x0002f629
1000616c:	1000b00b 	.word	0x1000b00b

10006170 <atm_scan_stopped_ind>:
10006170:	b570      	push	{r4, r5, r6, lr}
10006172:	7806      	ldrb	r6, [r0, #0]
10006174:	0005      	movs	r5, r0
10006176:	4b0f      	ldr	r3, [pc, #60]	; (100061b4 <atm_scan_stopped_ind+0x44>)
10006178:	0030      	movs	r0, r6
1000617a:	4798      	blx	r3
1000617c:	1e04      	subs	r4, r0, #0
1000617e:	d003      	beq.n	10006188 <atm_scan_stopped_ind+0x18>
10006180:	7883      	ldrb	r3, [r0, #2]
10006182:	3b04      	subs	r3, #4
10006184:	2b01      	cmp	r3, #1
10006186:	d906      	bls.n	10006196 <atm_scan_stopped_ind+0x26>
10006188:	0033      	movs	r3, r6
1000618a:	4a0b      	ldr	r2, [pc, #44]	; (100061b8 <atm_scan_stopped_ind+0x48>)
1000618c:	490b      	ldr	r1, [pc, #44]	; (100061bc <atm_scan_stopped_ind+0x4c>)
1000618e:	480c      	ldr	r0, [pc, #48]	; (100061c0 <atm_scan_stopped_ind+0x50>)
10006190:	4c0c      	ldr	r4, [pc, #48]	; (100061c4 <atm_scan_stopped_ind+0x54>)
10006192:	47a0      	blx	r4
10006194:	bd70      	pop	{r4, r5, r6, pc}
10006196:	4b0c      	ldr	r3, [pc, #48]	; (100061c8 <atm_scan_stopped_ind+0x58>)
10006198:	7818      	ldrb	r0, [r3, #0]
1000619a:	4b0c      	ldr	r3, [pc, #48]	; (100061cc <atm_scan_stopped_ind+0x5c>)
1000619c:	4798      	blx	r3
1000619e:	2302      	movs	r3, #2
100061a0:	70a3      	strb	r3, [r4, #2]
100061a2:	6863      	ldr	r3, [r4, #4]
100061a4:	68db      	ldr	r3, [r3, #12]
100061a6:	2b00      	cmp	r3, #0
100061a8:	d0f4      	beq.n	10006194 <atm_scan_stopped_ind+0x24>
100061aa:	8869      	ldrh	r1, [r5, #2]
100061ac:	7820      	ldrb	r0, [r4, #0]
100061ae:	4798      	blx	r3
100061b0:	e7f0      	b.n	10006194 <atm_scan_stopped_ind+0x24>
100061b2:	46c0      	nop			; (mov r8, r8)
100061b4:	10005fb9 	.word	0x10005fb9
100061b8:	1000b07f 	.word	0x1000b07f
100061bc:	1000b076 	.word	0x1000b076
100061c0:	1000b03f 	.word	0x1000b03f
100061c4:	000066b1 	.word	0x000066b1
100061c8:	200150d4 	.word	0x200150d4
100061cc:	10003b21 	.word	0x10003b21

100061d0 <atm_get_nvds_scan_params>:
100061d0:	b530      	push	{r4, r5, lr}
100061d2:	490c      	ldr	r1, [pc, #48]	; (10006204 <atm_get_nvds_scan_params+0x34>)
100061d4:	b085      	sub	sp, #20
100061d6:	2210      	movs	r2, #16
100061d8:	4b0b      	ldr	r3, [pc, #44]	; (10006208 <atm_get_nvds_scan_params+0x38>)
100061da:	0004      	movs	r4, r0
100061dc:	4798      	blx	r3
100061de:	466b      	mov	r3, sp
100061e0:	1d99      	adds	r1, r3, #6
100061e2:	2306      	movs	r3, #6
100061e4:	ad02      	add	r5, sp, #8
100061e6:	800b      	strh	r3, [r1, #0]
100061e8:	002a      	movs	r2, r5
100061ea:	20a4      	movs	r0, #164	; 0xa4
100061ec:	4b07      	ldr	r3, [pc, #28]	; (1000620c <atm_get_nvds_scan_params+0x3c>)
100061ee:	4798      	blx	r3
100061f0:	2800      	cmp	r0, #0
100061f2:	d105      	bne.n	10006200 <atm_get_nvds_scan_params+0x30>
100061f4:	88ab      	ldrh	r3, [r5, #4]
100061f6:	81a3      	strh	r3, [r4, #12]
100061f8:	882b      	ldrh	r3, [r5, #0]
100061fa:	80a3      	strh	r3, [r4, #4]
100061fc:	886b      	ldrh	r3, [r5, #2]
100061fe:	80e3      	strh	r3, [r4, #6]
10006200:	b005      	add	sp, #20
10006202:	bd30      	pop	{r4, r5, pc}
10006204:	20014cf4 	.word	0x20014cf4
10006208:	00005821 	.word	0x00005821
1000620c:	00002f55 	.word	0x00002f55

10006210 <ble_diss_task_cfg>:
10006210:	2201      	movs	r2, #1
10006212:	4b21      	ldr	r3, [pc, #132]	; (10006298 <ble_diss_task_cfg+0x88>)
10006214:	681b      	ldr	r3, [r3, #0]
10006216:	8859      	ldrh	r1, [r3, #2]
10006218:	4211      	tst	r1, r2
1000621a:	d002      	beq.n	10006222 <ble_diss_task_cfg+0x12>
1000621c:	8801      	ldrh	r1, [r0, #0]
1000621e:	430a      	orrs	r2, r1
10006220:	8002      	strh	r2, [r0, #0]
10006222:	2202      	movs	r2, #2
10006224:	8859      	ldrh	r1, [r3, #2]
10006226:	4211      	tst	r1, r2
10006228:	d002      	beq.n	10006230 <ble_diss_task_cfg+0x20>
1000622a:	8801      	ldrh	r1, [r0, #0]
1000622c:	430a      	orrs	r2, r1
1000622e:	8002      	strh	r2, [r0, #0]
10006230:	2204      	movs	r2, #4
10006232:	8859      	ldrh	r1, [r3, #2]
10006234:	4211      	tst	r1, r2
10006236:	d002      	beq.n	1000623e <ble_diss_task_cfg+0x2e>
10006238:	8801      	ldrh	r1, [r0, #0]
1000623a:	430a      	orrs	r2, r1
1000623c:	8002      	strh	r2, [r0, #0]
1000623e:	2208      	movs	r2, #8
10006240:	8859      	ldrh	r1, [r3, #2]
10006242:	4211      	tst	r1, r2
10006244:	d002      	beq.n	1000624c <ble_diss_task_cfg+0x3c>
10006246:	8801      	ldrh	r1, [r0, #0]
10006248:	430a      	orrs	r2, r1
1000624a:	8002      	strh	r2, [r0, #0]
1000624c:	2210      	movs	r2, #16
1000624e:	8859      	ldrh	r1, [r3, #2]
10006250:	4211      	tst	r1, r2
10006252:	d002      	beq.n	1000625a <ble_diss_task_cfg+0x4a>
10006254:	8801      	ldrh	r1, [r0, #0]
10006256:	430a      	orrs	r2, r1
10006258:	8002      	strh	r2, [r0, #0]
1000625a:	2220      	movs	r2, #32
1000625c:	8859      	ldrh	r1, [r3, #2]
1000625e:	4211      	tst	r1, r2
10006260:	d002      	beq.n	10006268 <ble_diss_task_cfg+0x58>
10006262:	8801      	ldrh	r1, [r0, #0]
10006264:	430a      	orrs	r2, r1
10006266:	8002      	strh	r2, [r0, #0]
10006268:	2240      	movs	r2, #64	; 0x40
1000626a:	8859      	ldrh	r1, [r3, #2]
1000626c:	4211      	tst	r1, r2
1000626e:	d002      	beq.n	10006276 <ble_diss_task_cfg+0x66>
10006270:	8801      	ldrh	r1, [r0, #0]
10006272:	430a      	orrs	r2, r1
10006274:	8002      	strh	r2, [r0, #0]
10006276:	2280      	movs	r2, #128	; 0x80
10006278:	8859      	ldrh	r1, [r3, #2]
1000627a:	4211      	tst	r1, r2
1000627c:	d002      	beq.n	10006284 <ble_diss_task_cfg+0x74>
1000627e:	8801      	ldrh	r1, [r0, #0]
10006280:	430a      	orrs	r2, r1
10006282:	8002      	strh	r2, [r0, #0]
10006284:	885a      	ldrh	r2, [r3, #2]
10006286:	2380      	movs	r3, #128	; 0x80
10006288:	005b      	lsls	r3, r3, #1
1000628a:	421a      	tst	r2, r3
1000628c:	d002      	beq.n	10006294 <ble_diss_task_cfg+0x84>
1000628e:	8802      	ldrh	r2, [r0, #0]
10006290:	4313      	orrs	r3, r2
10006292:	8003      	strh	r3, [r0, #0]
10006294:	4770      	bx	lr
10006296:	46c0      	nop			; (mov r8, r8)
10006298:	200150d8 	.word	0x200150d8

1000629c <ble_diss_module_get>:
1000629c:	4b01      	ldr	r3, [pc, #4]	; (100062a4 <ble_diss_module_get+0x8>)
1000629e:	6018      	str	r0, [r3, #0]
100062a0:	4801      	ldr	r0, [pc, #4]	; (100062a8 <ble_diss_module_get+0xc>)
100062a2:	4770      	bx	lr
100062a4:	200150d8 	.word	0x200150d8
100062a8:	1000b10c 	.word	0x1000b10c

100062ac <ble_diss_start_op>:
100062ac:	000b      	movs	r3, r1
100062ae:	b513      	push	{r0, r1, r4, lr}
100062b0:	4a05      	ldr	r2, [pc, #20]	; (100062c8 <ble_diss_start_op+0x1c>)
100062b2:	4c06      	ldr	r4, [pc, #24]	; (100062cc <ble_diss_start_op+0x20>)
100062b4:	6812      	ldr	r2, [r2, #0]
100062b6:	7811      	ldrb	r1, [r2, #0]
100062b8:	9301      	str	r3, [sp, #4]
100062ba:	9000      	str	r0, [sp, #0]
100062bc:	2202      	movs	r2, #2
100062be:	2014      	movs	r0, #20
100062c0:	4b03      	ldr	r3, [pc, #12]	; (100062d0 <ble_diss_start_op+0x24>)
100062c2:	47a0      	blx	r4
100062c4:	bd13      	pop	{r0, r1, r4, pc}
100062c6:	46c0      	nop			; (mov r8, r8)
100062c8:	200150d8 	.word	0x200150d8
100062cc:	10007349 	.word	0x10007349
100062d0:	10006211 	.word	0x10006211

100062d4 <ble_diss_init_op>:
100062d4:	b510      	push	{r4, lr}
100062d6:	2014      	movs	r0, #20
100062d8:	4901      	ldr	r1, [pc, #4]	; (100062e0 <ble_diss_init_op+0xc>)
100062da:	4b02      	ldr	r3, [pc, #8]	; (100062e4 <ble_diss_init_op+0x10>)
100062dc:	4798      	blx	r3
100062de:	bd10      	pop	{r4, pc}
100062e0:	1000b0fc 	.word	0x1000b0fc
100062e4:	10008a29 	.word	0x10008a29

100062e8 <ble_diss_value_req_ind>:
100062e8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100062ea:	001c      	movs	r4, r3
100062ec:	4b17      	ldr	r3, [pc, #92]	; (1000634c <ble_diss_value_req_ind+0x64>)
100062ee:	000e      	movs	r6, r1
100062f0:	681b      	ldr	r3, [r3, #0]
100062f2:	0017      	movs	r7, r2
100062f4:	685b      	ldr	r3, [r3, #4]
100062f6:	2b00      	cmp	r3, #0
100062f8:	d026      	beq.n	10006348 <ble_diss_value_req_ind+0x60>
100062fa:	466a      	mov	r2, sp
100062fc:	1cd5      	adds	r5, r2, #3
100062fe:	2200      	movs	r2, #0
10006300:	7808      	ldrb	r0, [r1, #0]
10006302:	702a      	strb	r2, [r5, #0]
10006304:	9201      	str	r2, [sp, #4]
10006306:	a901      	add	r1, sp, #4
10006308:	002a      	movs	r2, r5
1000630a:	4798      	blx	r3
1000630c:	782b      	ldrb	r3, [r5, #0]
1000630e:	0021      	movs	r1, r4
10006310:	3302      	adds	r3, #2
10006312:	4c0f      	ldr	r4, [pc, #60]	; (10006350 <ble_diss_value_req_ind+0x68>)
10006314:	003a      	movs	r2, r7
10006316:	480f      	ldr	r0, [pc, #60]	; (10006354 <ble_diss_value_req_ind+0x6c>)
10006318:	47a0      	blx	r4
1000631a:	7833      	ldrb	r3, [r6, #0]
1000631c:	0004      	movs	r4, r0
1000631e:	7003      	strb	r3, [r0, #0]
10006320:	782b      	ldrb	r3, [r5, #0]
10006322:	7043      	strb	r3, [r0, #1]
10006324:	2b00      	cmp	r3, #0
10006326:	d00c      	beq.n	10006342 <ble_diss_value_req_ind+0x5a>
10006328:	9b01      	ldr	r3, [sp, #4]
1000632a:	2b00      	cmp	r3, #0
1000632c:	d104      	bne.n	10006338 <ble_diss_value_req_ind+0x50>
1000632e:	2232      	movs	r2, #50	; 0x32
10006330:	4909      	ldr	r1, [pc, #36]	; (10006358 <ble_diss_value_req_ind+0x70>)
10006332:	480a      	ldr	r0, [pc, #40]	; (1000635c <ble_diss_value_req_ind+0x74>)
10006334:	4b0a      	ldr	r3, [pc, #40]	; (10006360 <ble_diss_value_req_ind+0x78>)
10006336:	4798      	blx	r3
10006338:	782a      	ldrb	r2, [r5, #0]
1000633a:	9901      	ldr	r1, [sp, #4]
1000633c:	4b09      	ldr	r3, [pc, #36]	; (10006364 <ble_diss_value_req_ind+0x7c>)
1000633e:	1ca0      	adds	r0, r4, #2
10006340:	4798      	blx	r3
10006342:	0020      	movs	r0, r4
10006344:	4b08      	ldr	r3, [pc, #32]	; (10006368 <ble_diss_value_req_ind+0x80>)
10006346:	4798      	blx	r3
10006348:	2000      	movs	r0, #0
1000634a:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
1000634c:	200150d8 	.word	0x200150d8
10006350:	00001171 	.word	0x00001171
10006354:	00001403 	.word	0x00001403
10006358:	1000b0e4 	.word	0x1000b0e4
1000635c:	1000b0ef 	.word	0x1000b0ef
10006360:	00006609 	.word	0x00006609
10006364:	00005821 	.word	0x00005821
10006368:	000011a9 	.word	0x000011a9

1000636c <ble_gapc_cmp_cb_list_pick>:
1000636c:	0002      	movs	r2, r0
1000636e:	b510      	push	{r4, lr}
10006370:	4b06      	ldr	r3, [pc, #24]	; (1000638c <ble_gapc_cmp_cb_list_pick+0x20>)
10006372:	681b      	ldr	r3, [r3, #0]
10006374:	2b00      	cmp	r3, #0
10006376:	d101      	bne.n	1000637c <ble_gapc_cmp_cb_list_pick+0x10>
10006378:	0018      	movs	r0, r3
1000637a:	e006      	b.n	1000638a <ble_gapc_cmp_cb_list_pick+0x1e>
1000637c:	68d8      	ldr	r0, [r3, #12]
1000637e:	7804      	ldrb	r4, [r0, #0]
10006380:	428c      	cmp	r4, r1
10006382:	d1f6      	bne.n	10006372 <ble_gapc_cmp_cb_list_pick+0x6>
10006384:	7904      	ldrb	r4, [r0, #4]
10006386:	4294      	cmp	r4, r2
10006388:	d1f3      	bne.n	10006372 <ble_gapc_cmp_cb_list_pick+0x6>
1000638a:	bd10      	pop	{r4, pc}
1000638c:	200150f0 	.word	0x200150f0

10006390 <ble_gapm_default_handler>:
10006390:	2000      	movs	r0, #0
10006392:	4770      	bx	lr

10006394 <ble_gapm_gen_cb_evt>:
10006394:	b510      	push	{r4, lr}
10006396:	2100      	movs	r1, #0
10006398:	4b01      	ldr	r3, [pc, #4]	; (100063a0 <ble_gapm_gen_cb_evt+0xc>)
1000639a:	3014      	adds	r0, #20
1000639c:	4798      	blx	r3
1000639e:	bd10      	pop	{r4, pc}
100063a0:	000013b9 	.word	0x000013b9

100063a4 <ble_gapm_push_cb>:
100063a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100063a6:	0007      	movs	r7, r0
100063a8:	000e      	movs	r6, r1
100063aa:	001c      	movs	r4, r3
100063ac:	2102      	movs	r1, #2
100063ae:	4b06      	ldr	r3, [pc, #24]	; (100063c8 <ble_gapm_push_cb+0x24>)
100063b0:	2014      	movs	r0, #20
100063b2:	0015      	movs	r5, r2
100063b4:	4798      	blx	r3
100063b6:	4b05      	ldr	r3, [pc, #20]	; (100063cc <ble_gapm_push_cb+0x28>)
100063b8:	6047      	str	r7, [r0, #4]
100063ba:	7406      	strb	r6, [r0, #16]
100063bc:	6085      	str	r5, [r0, #8]
100063be:	0001      	movs	r1, r0
100063c0:	60c4      	str	r4, [r0, #12]
100063c2:	4803      	ldr	r0, [pc, #12]	; (100063d0 <ble_gapm_push_cb+0x2c>)
100063c4:	4798      	blx	r3
100063c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100063c8:	000013b9 	.word	0x000013b9
100063cc:	0000268f 	.word	0x0000268f
100063d0:	20015104 	.word	0x20015104

100063d4 <ble_gapm_create_activity>:
100063d4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100063d6:	0017      	movs	r7, r2
100063d8:	2204      	movs	r2, #4
100063da:	9001      	str	r0, [sp, #4]
100063dc:	20da      	movs	r0, #218	; 0xda
100063de:	000d      	movs	r5, r1
100063e0:	001e      	movs	r6, r3
100063e2:	2108      	movs	r1, #8
100063e4:	4090      	lsls	r0, r2
100063e6:	2302      	movs	r3, #2
100063e8:	4c09      	ldr	r4, [pc, #36]	; (10006410 <ble_gapm_create_activity+0x3c>)
100063ea:	47a0      	blx	r4
100063ec:	9b01      	ldr	r3, [sp, #4]
100063ee:	0004      	movs	r4, r0
100063f0:	7005      	strb	r5, [r0, #0]
100063f2:	7043      	strb	r3, [r0, #1]
100063f4:	4b07      	ldr	r3, [pc, #28]	; (10006414 <ble_gapm_create_activity+0x40>)
100063f6:	2000      	movs	r0, #0
100063f8:	4798      	blx	r3
100063fa:	003a      	movs	r2, r7
100063fc:	0029      	movs	r1, r5
100063fe:	0003      	movs	r3, r0
10006400:	4d05      	ldr	r5, [pc, #20]	; (10006418 <ble_gapm_create_activity+0x44>)
10006402:	0030      	movs	r0, r6
10006404:	47a8      	blx	r5
10006406:	0020      	movs	r0, r4
10006408:	4b04      	ldr	r3, [pc, #16]	; (1000641c <ble_gapm_create_activity+0x48>)
1000640a:	4798      	blx	r3
1000640c:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000640e:	46c0      	nop			; (mov r8, r8)
10006410:	00001171 	.word	0x00001171
10006414:	10006395 	.word	0x10006395
10006418:	100063a5 	.word	0x100063a5
1000641c:	000011a9 	.word	0x000011a9

10006420 <ble_gapm_start_activity>:
10006420:	b570      	push	{r4, r5, r6, lr}
10006422:	0004      	movs	r4, r0
10006424:	000d      	movs	r5, r1
10006426:	21a4      	movs	r1, #164	; 0xa4
10006428:	1e18      	subs	r0, r3, #0
1000642a:	7021      	strb	r1, [r4, #0]
1000642c:	7065      	strb	r5, [r4, #1]
1000642e:	d002      	beq.n	10006436 <ble_gapm_start_activity+0x16>
10006430:	2300      	movs	r3, #0
10006432:	4d03      	ldr	r5, [pc, #12]	; (10006440 <ble_gapm_start_activity+0x20>)
10006434:	47a8      	blx	r5
10006436:	0020      	movs	r0, r4
10006438:	4b02      	ldr	r3, [pc, #8]	; (10006444 <ble_gapm_start_activity+0x24>)
1000643a:	4798      	blx	r3
1000643c:	bd70      	pop	{r4, r5, r6, pc}
1000643e:	46c0      	nop			; (mov r8, r8)
10006440:	100063a5 	.word	0x100063a5
10006444:	000011a9 	.word	0x000011a9

10006448 <ble_gapc_le_ping_to_val_ind_handler>:
10006448:	b570      	push	{r4, r5, r6, lr}
1000644a:	0a1d      	lsrs	r5, r3, #8
1000644c:	000e      	movs	r6, r1
1000644e:	0028      	movs	r0, r5
10006450:	2112      	movs	r1, #18
10006452:	4b07      	ldr	r3, [pc, #28]	; (10006470 <ble_gapc_le_ping_to_val_ind_handler+0x28>)
10006454:	4798      	blx	r3
10006456:	1e04      	subs	r4, r0, #0
10006458:	d104      	bne.n	10006464 <ble_gapc_le_ping_to_val_ind_handler+0x1c>
1000645a:	4a06      	ldr	r2, [pc, #24]	; (10006474 <ble_gapc_le_ping_to_val_ind_handler+0x2c>)
1000645c:	4906      	ldr	r1, [pc, #24]	; (10006478 <ble_gapc_le_ping_to_val_ind_handler+0x30>)
1000645e:	4807      	ldr	r0, [pc, #28]	; (1000647c <ble_gapc_le_ping_to_val_ind_handler+0x34>)
10006460:	4b07      	ldr	r3, [pc, #28]	; (10006480 <ble_gapc_le_ping_to_val_ind_handler+0x38>)
10006462:	4798      	blx	r3
10006464:	7225      	strb	r5, [r4, #8]
10006466:	8833      	ldrh	r3, [r6, #0]
10006468:	2000      	movs	r0, #0
1000646a:	8163      	strh	r3, [r4, #10]
1000646c:	bd70      	pop	{r4, r5, r6, pc}
1000646e:	46c0      	nop			; (mov r8, r8)
10006470:	1000636d 	.word	0x1000636d
10006474:	0000044c 	.word	0x0000044c
10006478:	1000b114 	.word	0x1000b114
1000647c:	1000b12c 	.word	0x1000b12c
10006480:	00006609 	.word	0x00006609

10006484 <ble_gapc_con_channel_map_ind_handler>:
10006484:	b570      	push	{r4, r5, r6, lr}
10006486:	0a1e      	lsrs	r6, r3, #8
10006488:	000d      	movs	r5, r1
1000648a:	0030      	movs	r0, r6
1000648c:	2108      	movs	r1, #8
1000648e:	4b09      	ldr	r3, [pc, #36]	; (100064b4 <ble_gapc_con_channel_map_ind_handler+0x30>)
10006490:	4798      	blx	r3
10006492:	1e04      	subs	r4, r0, #0
10006494:	d105      	bne.n	100064a2 <ble_gapc_con_channel_map_ind_handler+0x1e>
10006496:	2288      	movs	r2, #136	; 0x88
10006498:	4907      	ldr	r1, [pc, #28]	; (100064b8 <ble_gapc_con_channel_map_ind_handler+0x34>)
1000649a:	4808      	ldr	r0, [pc, #32]	; (100064bc <ble_gapc_con_channel_map_ind_handler+0x38>)
1000649c:	4b08      	ldr	r3, [pc, #32]	; (100064c0 <ble_gapc_con_channel_map_ind_handler+0x3c>)
1000649e:	00d2      	lsls	r2, r2, #3
100064a0:	4798      	blx	r3
100064a2:	0020      	movs	r0, r4
100064a4:	0029      	movs	r1, r5
100064a6:	7226      	strb	r6, [r4, #8]
100064a8:	2205      	movs	r2, #5
100064aa:	4b06      	ldr	r3, [pc, #24]	; (100064c4 <ble_gapc_con_channel_map_ind_handler+0x40>)
100064ac:	3009      	adds	r0, #9
100064ae:	4798      	blx	r3
100064b0:	2000      	movs	r0, #0
100064b2:	bd70      	pop	{r4, r5, r6, pc}
100064b4:	1000636d 	.word	0x1000636d
100064b8:	1000b114 	.word	0x1000b114
100064bc:	1000b12c 	.word	0x1000b12c
100064c0:	00006609 	.word	0x00006609
100064c4:	00005821 	.word	0x00005821

100064c8 <ble_gapc_con_rssi_ind_handler>:
100064c8:	b570      	push	{r4, r5, r6, lr}
100064ca:	0a1d      	lsrs	r5, r3, #8
100064cc:	000e      	movs	r6, r1
100064ce:	0028      	movs	r0, r5
100064d0:	2107      	movs	r1, #7
100064d2:	4b07      	ldr	r3, [pc, #28]	; (100064f0 <ble_gapc_con_rssi_ind_handler+0x28>)
100064d4:	4798      	blx	r3
100064d6:	1e04      	subs	r4, r0, #0
100064d8:	d104      	bne.n	100064e4 <ble_gapc_con_rssi_ind_handler+0x1c>
100064da:	4a06      	ldr	r2, [pc, #24]	; (100064f4 <ble_gapc_con_rssi_ind_handler+0x2c>)
100064dc:	4906      	ldr	r1, [pc, #24]	; (100064f8 <ble_gapc_con_rssi_ind_handler+0x30>)
100064de:	4807      	ldr	r0, [pc, #28]	; (100064fc <ble_gapc_con_rssi_ind_handler+0x34>)
100064e0:	4b07      	ldr	r3, [pc, #28]	; (10006500 <ble_gapc_con_rssi_ind_handler+0x38>)
100064e2:	4798      	blx	r3
100064e4:	7225      	strb	r5, [r4, #8]
100064e6:	7833      	ldrb	r3, [r6, #0]
100064e8:	2000      	movs	r0, #0
100064ea:	7263      	strb	r3, [r4, #9]
100064ec:	bd70      	pop	{r4, r5, r6, pc}
100064ee:	46c0      	nop			; (mov r8, r8)
100064f0:	1000636d 	.word	0x1000636d
100064f4:	00000435 	.word	0x00000435
100064f8:	1000b114 	.word	0x1000b114
100064fc:	1000b12c 	.word	0x1000b12c
10006500:	00006609 	.word	0x00006609

10006504 <ble_gapc_peer_features_ind_handler>:
10006504:	b570      	push	{r4, r5, r6, lr}
10006506:	0a1e      	lsrs	r6, r3, #8
10006508:	000d      	movs	r5, r1
1000650a:	0030      	movs	r0, r6
1000650c:	2104      	movs	r1, #4
1000650e:	4b09      	ldr	r3, [pc, #36]	; (10006534 <ble_gapc_peer_features_ind_handler+0x30>)
10006510:	4798      	blx	r3
10006512:	1e04      	subs	r4, r0, #0
10006514:	d104      	bne.n	10006520 <ble_gapc_peer_features_ind_handler+0x1c>
10006516:	4a08      	ldr	r2, [pc, #32]	; (10006538 <ble_gapc_peer_features_ind_handler+0x34>)
10006518:	4908      	ldr	r1, [pc, #32]	; (1000653c <ble_gapc_peer_features_ind_handler+0x38>)
1000651a:	4809      	ldr	r0, [pc, #36]	; (10006540 <ble_gapc_peer_features_ind_handler+0x3c>)
1000651c:	4b09      	ldr	r3, [pc, #36]	; (10006544 <ble_gapc_peer_features_ind_handler+0x40>)
1000651e:	4798      	blx	r3
10006520:	0020      	movs	r0, r4
10006522:	0029      	movs	r1, r5
10006524:	7226      	strb	r6, [r4, #8]
10006526:	2208      	movs	r2, #8
10006528:	4b07      	ldr	r3, [pc, #28]	; (10006548 <ble_gapc_peer_features_ind_handler+0x44>)
1000652a:	3009      	adds	r0, #9
1000652c:	4798      	blx	r3
1000652e:	2000      	movs	r0, #0
10006530:	bd70      	pop	{r4, r5, r6, pc}
10006532:	46c0      	nop			; (mov r8, r8)
10006534:	1000636d 	.word	0x1000636d
10006538:	0000042a 	.word	0x0000042a
1000653c:	1000b114 	.word	0x1000b114
10006540:	1000b12c 	.word	0x1000b12c
10006544:	00006609 	.word	0x00006609
10006548:	00005821 	.word	0x00005821

1000654c <ble_gapc_peer_version_ind_handler>:
1000654c:	b570      	push	{r4, r5, r6, lr}
1000654e:	0a1e      	lsrs	r6, r3, #8
10006550:	000d      	movs	r5, r1
10006552:	0030      	movs	r0, r6
10006554:	2103      	movs	r1, #3
10006556:	4b09      	ldr	r3, [pc, #36]	; (1000657c <ble_gapc_peer_version_ind_handler+0x30>)
10006558:	4798      	blx	r3
1000655a:	1e04      	subs	r4, r0, #0
1000655c:	d104      	bne.n	10006568 <ble_gapc_peer_version_ind_handler+0x1c>
1000655e:	4a08      	ldr	r2, [pc, #32]	; (10006580 <ble_gapc_peer_version_ind_handler+0x34>)
10006560:	4908      	ldr	r1, [pc, #32]	; (10006584 <ble_gapc_peer_version_ind_handler+0x38>)
10006562:	4809      	ldr	r0, [pc, #36]	; (10006588 <ble_gapc_peer_version_ind_handler+0x3c>)
10006564:	4b09      	ldr	r3, [pc, #36]	; (1000658c <ble_gapc_peer_version_ind_handler+0x40>)
10006566:	4798      	blx	r3
10006568:	0020      	movs	r0, r4
1000656a:	0029      	movs	r1, r5
1000656c:	7226      	strb	r6, [r4, #8]
1000656e:	2206      	movs	r2, #6
10006570:	4b07      	ldr	r3, [pc, #28]	; (10006590 <ble_gapc_peer_version_ind_handler+0x44>)
10006572:	300a      	adds	r0, #10
10006574:	4798      	blx	r3
10006576:	2000      	movs	r0, #0
10006578:	bd70      	pop	{r4, r5, r6, pc}
1000657a:	46c0      	nop			; (mov r8, r8)
1000657c:	1000636d 	.word	0x1000636d
10006580:	0000041f 	.word	0x0000041f
10006584:	1000b114 	.word	0x1000b114
10006588:	1000b12c 	.word	0x1000b12c
1000658c:	00006609 	.word	0x00006609
10006590:	00005821 	.word	0x00005821

10006594 <ble_gapm_cmp_evt_handler>:
10006594:	b5f0      	push	{r4, r5, r6, r7, lr}
10006596:	4b1f      	ldr	r3, [pc, #124]	; (10006614 <ble_gapm_cmp_evt_handler+0x80>)
10006598:	000f      	movs	r7, r1
1000659a:	681c      	ldr	r4, [r3, #0]
1000659c:	2300      	movs	r3, #0
1000659e:	b089      	sub	sp, #36	; 0x24
100065a0:	9301      	str	r3, [sp, #4]
100065a2:	2c00      	cmp	r4, #0
100065a4:	d103      	bne.n	100065ae <ble_gapm_cmp_evt_handler+0x1a>
100065a6:	4b1c      	ldr	r3, [pc, #112]	; (10006618 <ble_gapm_cmp_evt_handler+0x84>)
100065a8:	481c      	ldr	r0, [pc, #112]	; (1000661c <ble_gapm_cmp_evt_handler+0x88>)
100065aa:	4798      	blx	r3
100065ac:	e01a      	b.n	100065e4 <ble_gapm_cmp_evt_handler+0x50>
100065ae:	783b      	ldrb	r3, [r7, #0]
100065b0:	7c26      	ldrb	r6, [r4, #16]
100065b2:	429e      	cmp	r6, r3
100065b4:	d12a      	bne.n	1000660c <ble_gapm_cmp_evt_handler+0x78>
100065b6:	68e5      	ldr	r5, [r4, #12]
100065b8:	2d00      	cmp	r5, #0
100065ba:	d016      	beq.n	100065ea <ble_gapm_cmp_evt_handler+0x56>
100065bc:	702e      	strb	r6, [r5, #0]
100065be:	4b18      	ldr	r3, [pc, #96]	; (10006620 <ble_gapm_cmp_evt_handler+0x8c>)
100065c0:	7878      	ldrb	r0, [r7, #1]
100065c2:	4798      	blx	r3
100065c4:	8068      	strh	r0, [r5, #2]
100065c6:	6863      	ldr	r3, [r4, #4]
100065c8:	0028      	movs	r0, r5
100065ca:	68a1      	ldr	r1, [r4, #8]
100065cc:	4798      	blx	r3
100065ce:	0028      	movs	r0, r5
100065d0:	4b14      	ldr	r3, [pc, #80]	; (10006624 <ble_gapm_cmp_evt_handler+0x90>)
100065d2:	4798      	blx	r3
100065d4:	480f      	ldr	r0, [pc, #60]	; (10006614 <ble_gapm_cmp_evt_handler+0x80>)
100065d6:	4b14      	ldr	r3, [pc, #80]	; (10006628 <ble_gapm_cmp_evt_handler+0x94>)
100065d8:	0022      	movs	r2, r4
100065da:	9901      	ldr	r1, [sp, #4]
100065dc:	4798      	blx	r3
100065de:	0020      	movs	r0, r4
100065e0:	4b10      	ldr	r3, [pc, #64]	; (10006624 <ble_gapm_cmp_evt_handler+0x90>)
100065e2:	4798      	blx	r3
100065e4:	2000      	movs	r0, #0
100065e6:	b009      	add	sp, #36	; 0x24
100065e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
100065ea:	0029      	movs	r1, r5
100065ec:	2214      	movs	r2, #20
100065ee:	4b0f      	ldr	r3, [pc, #60]	; (1000662c <ble_gapm_cmp_evt_handler+0x98>)
100065f0:	a803      	add	r0, sp, #12
100065f2:	4798      	blx	r3
100065f4:	ab02      	add	r3, sp, #8
100065f6:	711e      	strb	r6, [r3, #4]
100065f8:	7878      	ldrb	r0, [r7, #1]
100065fa:	4b09      	ldr	r3, [pc, #36]	; (10006620 <ble_gapm_cmp_evt_handler+0x8c>)
100065fc:	4798      	blx	r3
100065fe:	ab02      	add	r3, sp, #8
10006600:	80d8      	strh	r0, [r3, #6]
10006602:	68a1      	ldr	r1, [r4, #8]
10006604:	6863      	ldr	r3, [r4, #4]
10006606:	a803      	add	r0, sp, #12
10006608:	4798      	blx	r3
1000660a:	e7e3      	b.n	100065d4 <ble_gapm_cmp_evt_handler+0x40>
1000660c:	9401      	str	r4, [sp, #4]
1000660e:	6824      	ldr	r4, [r4, #0]
10006610:	e7c7      	b.n	100065a2 <ble_gapm_cmp_evt_handler+0xe>
10006612:	46c0      	nop			; (mov r8, r8)
10006614:	20015104 	.word	0x20015104
10006618:	000066b1 	.word	0x000066b1
1000661c:	1000b11e 	.word	0x1000b11e
10006620:	10008ad1 	.word	0x10008ad1
10006624:	000014ed 	.word	0x000014ed
10006628:	00002789 	.word	0x00002789
1000662c:	00005859 	.word	0x00005859

10006630 <ble_gapm_ind_handler>:
10006630:	b5f0      	push	{r4, r5, r6, r7, lr}
10006632:	0006      	movs	r6, r0
10006634:	000d      	movs	r5, r1
10006636:	4b3f      	ldr	r3, [pc, #252]	; (10006734 <ble_gapm_ind_handler+0x104>)
10006638:	b087      	sub	sp, #28
1000663a:	681f      	ldr	r7, [r3, #0]
1000663c:	2f00      	cmp	r7, #0
1000663e:	d102      	bne.n	10006646 <ble_gapm_ind_handler+0x16>
10006640:	0038      	movs	r0, r7
10006642:	b007      	add	sp, #28
10006644:	bdf0      	pop	{r4, r5, r6, r7, pc}
10006646:	4b3c      	ldr	r3, [pc, #240]	; (10006738 <ble_gapm_ind_handler+0x108>)
10006648:	68fc      	ldr	r4, [r7, #12]
1000664a:	429e      	cmp	r6, r3
1000664c:	d108      	bne.n	10006660 <ble_gapm_ind_handler+0x30>
1000664e:	7c3b      	ldrb	r3, [r7, #16]
10006650:	2b1a      	cmp	r3, #26
10006652:	d115      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
10006654:	2208      	movs	r2, #8
10006656:	1d20      	adds	r0, r4, #4
10006658:	0029      	movs	r1, r5
1000665a:	4b38      	ldr	r3, [pc, #224]	; (1000673c <ble_gapm_ind_handler+0x10c>)
1000665c:	4798      	blx	r3
1000665e:	e00f      	b.n	10006680 <ble_gapm_ind_handler+0x50>
10006660:	4b37      	ldr	r3, [pc, #220]	; (10006740 <ble_gapm_ind_handler+0x110>)
10006662:	429e      	cmp	r6, r3
10006664:	d10e      	bne.n	10006684 <ble_gapm_ind_handler+0x54>
10006666:	7c3b      	ldrb	r3, [r7, #16]
10006668:	2b18      	cmp	r3, #24
1000666a:	d109      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
1000666c:	4b33      	ldr	r3, [pc, #204]	; (1000673c <ble_gapm_ind_handler+0x10c>)
1000666e:	2207      	movs	r2, #7
10006670:	0029      	movs	r1, r5
10006672:	a804      	add	r0, sp, #16
10006674:	4798      	blx	r3
10006676:	9b04      	ldr	r3, [sp, #16]
10006678:	6063      	str	r3, [r4, #4]
1000667a:	ab04      	add	r3, sp, #16
1000667c:	889b      	ldrh	r3, [r3, #4]
1000667e:	8123      	strh	r3, [r4, #8]
10006680:	683f      	ldr	r7, [r7, #0]
10006682:	e7db      	b.n	1000663c <ble_gapm_ind_handler+0xc>
10006684:	4b2f      	ldr	r3, [pc, #188]	; (10006744 <ble_gapm_ind_handler+0x114>)
10006686:	429e      	cmp	r6, r3
10006688:	d11f      	bne.n	100066ca <ble_gapm_ind_handler+0x9a>
1000668a:	7c3b      	ldrb	r3, [r7, #16]
1000668c:	2b17      	cmp	r3, #23
1000668e:	d1f7      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
10006690:	7963      	ldrb	r3, [r4, #5]
10006692:	9302      	str	r3, [sp, #8]
10006694:	0023      	movs	r3, r4
10006696:	3308      	adds	r3, #8
10006698:	9301      	str	r3, [sp, #4]
1000669a:	2300      	movs	r3, #0
1000669c:	9300      	str	r3, [sp, #0]
1000669e:	1dab      	adds	r3, r5, #6
100066a0:	9303      	str	r3, [sp, #12]
100066a2:	9b02      	ldr	r3, [sp, #8]
100066a4:	9a00      	ldr	r2, [sp, #0]
100066a6:	4293      	cmp	r3, r2
100066a8:	ddea      	ble.n	10006680 <ble_gapm_ind_handler+0x50>
100066aa:	9801      	ldr	r0, [sp, #4]
100066ac:	4b26      	ldr	r3, [pc, #152]	; (10006748 <ble_gapm_ind_handler+0x118>)
100066ae:	2210      	movs	r2, #16
100066b0:	9903      	ldr	r1, [sp, #12]
100066b2:	4798      	blx	r3
100066b4:	9b01      	ldr	r3, [sp, #4]
100066b6:	331c      	adds	r3, #28
100066b8:	9301      	str	r3, [sp, #4]
100066ba:	9b00      	ldr	r3, [sp, #0]
100066bc:	2800      	cmp	r0, #0
100066be:	d101      	bne.n	100066c4 <ble_gapm_ind_handler+0x94>
100066c0:	7123      	strb	r3, [r4, #4]
100066c2:	e7dd      	b.n	10006680 <ble_gapm_ind_handler+0x50>
100066c4:	3301      	adds	r3, #1
100066c6:	9300      	str	r3, [sp, #0]
100066c8:	e7eb      	b.n	100066a2 <ble_gapm_ind_handler+0x72>
100066ca:	4b20      	ldr	r3, [pc, #128]	; (1000674c <ble_gapm_ind_handler+0x11c>)
100066cc:	429e      	cmp	r6, r3
100066ce:	d106      	bne.n	100066de <ble_gapm_ind_handler+0xae>
100066d0:	7c3b      	ldrb	r3, [r7, #16]
100066d2:	2b19      	cmp	r3, #25
100066d4:	d1d4      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
100066d6:	2210      	movs	r2, #16
100066d8:	7023      	strb	r3, [r4, #0]
100066da:	1d20      	adds	r0, r4, #4
100066dc:	e7bc      	b.n	10006658 <ble_gapm_ind_handler+0x28>
100066de:	4b1c      	ldr	r3, [pc, #112]	; (10006750 <ble_gapm_ind_handler+0x120>)
100066e0:	429e      	cmp	r6, r3
100066e2:	d105      	bne.n	100066f0 <ble_gapm_ind_handler+0xc0>
100066e4:	7c3b      	ldrb	r3, [r7, #16]
100066e6:	2b2b      	cmp	r3, #43	; 0x2b
100066e8:	d1ca      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
100066ea:	882b      	ldrh	r3, [r5, #0]
100066ec:	80a3      	strh	r3, [r4, #4]
100066ee:	e7c7      	b.n	10006680 <ble_gapm_ind_handler+0x50>
100066f0:	4b18      	ldr	r3, [pc, #96]	; (10006754 <ble_gapm_ind_handler+0x124>)
100066f2:	429e      	cmp	r6, r3
100066f4:	d118      	bne.n	10006728 <ble_gapm_ind_handler+0xf8>
100066f6:	7c3b      	ldrb	r3, [r7, #16]
100066f8:	2ba2      	cmp	r3, #162	; 0xa2
100066fa:	d104      	bne.n	10006706 <ble_gapm_ind_handler+0xd6>
100066fc:	786b      	ldrb	r3, [r5, #1]
100066fe:	2b02      	cmp	r3, #2
10006700:	d1be      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
10006702:	782b      	ldrb	r3, [r5, #0]
10006704:	e7dc      	b.n	100066c0 <ble_gapm_ind_handler+0x90>
10006706:	2ba1      	cmp	r3, #161	; 0xa1
10006708:	d103      	bne.n	10006712 <ble_gapm_ind_handler+0xe2>
1000670a:	786b      	ldrb	r3, [r5, #1]
1000670c:	2b01      	cmp	r3, #1
1000670e:	d1b7      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
10006710:	e7f7      	b.n	10006702 <ble_gapm_ind_handler+0xd2>
10006712:	2ba0      	cmp	r3, #160	; 0xa0
10006714:	d1b4      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
10006716:	786b      	ldrb	r3, [r5, #1]
10006718:	2b00      	cmp	r3, #0
1000671a:	d1b1      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
1000671c:	782b      	ldrb	r3, [r5, #0]
1000671e:	7123      	strb	r3, [r4, #4]
10006720:	2302      	movs	r3, #2
10006722:	56eb      	ldrsb	r3, [r5, r3]
10006724:	7163      	strb	r3, [r4, #5]
10006726:	e7ab      	b.n	10006680 <ble_gapm_ind_handler+0x50>
10006728:	4b0b      	ldr	r3, [pc, #44]	; (10006758 <ble_gapm_ind_handler+0x128>)
1000672a:	429e      	cmp	r6, r3
1000672c:	d1a8      	bne.n	10006680 <ble_gapm_ind_handler+0x50>
1000672e:	88ab      	ldrh	r3, [r5, #4]
10006730:	e7dc      	b.n	100066ec <ble_gapm_ind_handler+0xbc>
10006732:	46c0      	nop			; (mov r8, r8)
10006734:	20015104 	.word	0x20015104
10006738:	00000d1a 	.word	0x00000d1a
1000673c:	00005821 	.word	0x00005821
10006740:	00000d08 	.word	0x00000d08
10006744:	00000d15 	.word	0x00000d15
10006748:	0002fba5 	.word	0x0002fba5
1000674c:	00000d18 	.word	0x00000d18
10006750:	00000d27 	.word	0x00000d27
10006754:	00000da4 	.word	0x00000da4
10006758:	00000d1c 	.word	0x00000d1c

1000675c <ble_gapc_bcast_handler>:
1000675c:	b570      	push	{r4, r5, r6, lr}
1000675e:	0004      	movs	r4, r0
10006760:	4812      	ldr	r0, [pc, #72]	; (100067ac <ble_gapc_bcast_handler+0x50>)
10006762:	4284      	cmp	r4, r0
10006764:	d105      	bne.n	10006772 <ble_gapc_bcast_handler+0x16>
10006766:	780d      	ldrb	r5, [r1, #0]
10006768:	2000      	movs	r0, #0
1000676a:	3d02      	subs	r5, #2
1000676c:	2d01      	cmp	r5, #1
1000676e:	d90e      	bls.n	1000678e <ble_gapc_bcast_handler+0x32>
10006770:	bd70      	pop	{r4, r5, r6, pc}
10006772:	2502      	movs	r5, #2
10006774:	0026      	movs	r6, r4
10006776:	480e      	ldr	r0, [pc, #56]	; (100067b0 <ble_gapc_bcast_handler+0x54>)
10006778:	43ae      	bics	r6, r5
1000677a:	4286      	cmp	r6, r0
1000677c:	d007      	beq.n	1000678e <ble_gapc_bcast_handler+0x32>
1000677e:	480d      	ldr	r0, [pc, #52]	; (100067b4 <ble_gapc_bcast_handler+0x58>)
10006780:	1825      	adds	r5, r4, r0
10006782:	2004      	movs	r0, #4
10006784:	4385      	bics	r5, r0
10006786:	2000      	movs	r0, #0
10006788:	b2ad      	uxth	r5, r5
1000678a:	4285      	cmp	r5, r0
1000678c:	d1f0      	bne.n	10006770 <ble_gapc_bcast_handler+0x14>
1000678e:	0008      	movs	r0, r1
10006790:	380c      	subs	r0, #12
10006792:	80c2      	strh	r2, [r0, #6]
10006794:	22ff      	movs	r2, #255	; 0xff
10006796:	0a1b      	lsrs	r3, r3, #8
10006798:	021b      	lsls	r3, r3, #8
1000679a:	4313      	orrs	r3, r2
1000679c:	8103      	strh	r3, [r0, #8]
1000679e:	8084      	strh	r4, [r0, #4]
100067a0:	4b05      	ldr	r3, [pc, #20]	; (100067b8 <ble_gapc_bcast_handler+0x5c>)
100067a2:	0008      	movs	r0, r1
100067a4:	4798      	blx	r3
100067a6:	2001      	movs	r0, #1
100067a8:	e7e2      	b.n	10006770 <ble_gapc_bcast_handler+0x14>
100067aa:	46c0      	nop			; (mov r8, r8)
100067ac:	00000e15 	.word	0x00000e15
100067b0:	00000e01 	.word	0x00000e01
100067b4:	fffff1eb 	.word	0xfffff1eb
100067b8:	000011a9 	.word	0x000011a9

100067bc <ble_gapc_cmp_evt_handler>:
100067bc:	b5f0      	push	{r4, r5, r6, r7, lr}
100067be:	2700      	movs	r7, #0
100067c0:	0a1e      	lsrs	r6, r3, #8
100067c2:	4b2f      	ldr	r3, [pc, #188]	; (10006880 <ble_gapc_cmp_evt_handler+0xc4>)
100067c4:	b08b      	sub	sp, #44	; 0x2c
100067c6:	681c      	ldr	r4, [r3, #0]
100067c8:	780b      	ldrb	r3, [r1, #0]
100067ca:	9100      	str	r1, [sp, #0]
100067cc:	9301      	str	r3, [sp, #4]
100067ce:	2c00      	cmp	r4, #0
100067d0:	d10a      	bne.n	100067e8 <ble_gapc_cmp_evt_handler+0x2c>
100067d2:	4f2c      	ldr	r7, [pc, #176]	; (10006884 <ble_gapc_cmp_evt_handler+0xc8>)
100067d4:	683d      	ldr	r5, [r7, #0]
100067d6:	2d00      	cmp	r5, #0
100067d8:	d13f      	bne.n	1000685a <ble_gapc_cmp_evt_handler+0x9e>
100067da:	9b00      	ldr	r3, [sp, #0]
100067dc:	9901      	ldr	r1, [sp, #4]
100067de:	785a      	ldrb	r2, [r3, #1]
100067e0:	4829      	ldr	r0, [pc, #164]	; (10006888 <ble_gapc_cmp_evt_handler+0xcc>)
100067e2:	4b2a      	ldr	r3, [pc, #168]	; (1000688c <ble_gapc_cmp_evt_handler+0xd0>)
100067e4:	4798      	blx	r3
100067e6:	e01e      	b.n	10006826 <ble_gapc_cmp_evt_handler+0x6a>
100067e8:	7c23      	ldrb	r3, [r4, #16]
100067ea:	9a01      	ldr	r2, [sp, #4]
100067ec:	4293      	cmp	r3, r2
100067ee:	d131      	bne.n	10006854 <ble_gapc_cmp_evt_handler+0x98>
100067f0:	68e5      	ldr	r5, [r4, #12]
100067f2:	2d00      	cmp	r5, #0
100067f4:	d01a      	beq.n	1000682c <ble_gapc_cmp_evt_handler+0x70>
100067f6:	792b      	ldrb	r3, [r5, #4]
100067f8:	42b3      	cmp	r3, r6
100067fa:	d12c      	bne.n	10006856 <ble_gapc_cmp_evt_handler+0x9a>
100067fc:	9b00      	ldr	r3, [sp, #0]
100067fe:	7858      	ldrb	r0, [r3, #1]
10006800:	4b23      	ldr	r3, [pc, #140]	; (10006890 <ble_gapc_cmp_evt_handler+0xd4>)
10006802:	4798      	blx	r3
10006804:	8068      	strh	r0, [r5, #2]
10006806:	6863      	ldr	r3, [r4, #4]
10006808:	0030      	movs	r0, r6
1000680a:	0029      	movs	r1, r5
1000680c:	68a2      	ldr	r2, [r4, #8]
1000680e:	4798      	blx	r3
10006810:	0028      	movs	r0, r5
10006812:	4b20      	ldr	r3, [pc, #128]	; (10006894 <ble_gapc_cmp_evt_handler+0xd8>)
10006814:	4798      	blx	r3
10006816:	481a      	ldr	r0, [pc, #104]	; (10006880 <ble_gapc_cmp_evt_handler+0xc4>)
10006818:	0022      	movs	r2, r4
1000681a:	0039      	movs	r1, r7
1000681c:	4b1e      	ldr	r3, [pc, #120]	; (10006898 <ble_gapc_cmp_evt_handler+0xdc>)
1000681e:	4798      	blx	r3
10006820:	0020      	movs	r0, r4
10006822:	4b1c      	ldr	r3, [pc, #112]	; (10006894 <ble_gapc_cmp_evt_handler+0xd8>)
10006824:	4798      	blx	r3
10006826:	2000      	movs	r0, #0
10006828:	b00b      	add	sp, #44	; 0x2c
1000682a:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000682c:	0029      	movs	r1, r5
1000682e:	221a      	movs	r2, #26
10006830:	4b1a      	ldr	r3, [pc, #104]	; (1000689c <ble_gapc_cmp_evt_handler+0xe0>)
10006832:	a803      	add	r0, sp, #12
10006834:	4798      	blx	r3
10006836:	9a01      	ldr	r2, [sp, #4]
10006838:	ab02      	add	r3, sp, #8
1000683a:	711a      	strb	r2, [r3, #4]
1000683c:	9b00      	ldr	r3, [sp, #0]
1000683e:	7858      	ldrb	r0, [r3, #1]
10006840:	4b13      	ldr	r3, [pc, #76]	; (10006890 <ble_gapc_cmp_evt_handler+0xd4>)
10006842:	4798      	blx	r3
10006844:	ab02      	add	r3, sp, #8
10006846:	80d8      	strh	r0, [r3, #6]
10006848:	68a2      	ldr	r2, [r4, #8]
1000684a:	0030      	movs	r0, r6
1000684c:	6863      	ldr	r3, [r4, #4]
1000684e:	a903      	add	r1, sp, #12
10006850:	4798      	blx	r3
10006852:	e7e0      	b.n	10006816 <ble_gapc_cmp_evt_handler+0x5a>
10006854:	0027      	movs	r7, r4
10006856:	6824      	ldr	r4, [r4, #0]
10006858:	e7b9      	b.n	100067ce <ble_gapc_cmp_evt_handler+0x12>
1000685a:	7b2b      	ldrb	r3, [r5, #12]
1000685c:	9a01      	ldr	r2, [sp, #4]
1000685e:	4293      	cmp	r3, r2
10006860:	d10b      	bne.n	1000687a <ble_gapc_cmp_evt_handler+0xbe>
10006862:	0030      	movs	r0, r6
10006864:	68aa      	ldr	r2, [r5, #8]
10006866:	9900      	ldr	r1, [sp, #0]
10006868:	686b      	ldr	r3, [r5, #4]
1000686a:	4798      	blx	r3
1000686c:	0038      	movs	r0, r7
1000686e:	002a      	movs	r2, r5
10006870:	0021      	movs	r1, r4
10006872:	4b09      	ldr	r3, [pc, #36]	; (10006898 <ble_gapc_cmp_evt_handler+0xdc>)
10006874:	4798      	blx	r3
10006876:	0028      	movs	r0, r5
10006878:	e7d3      	b.n	10006822 <ble_gapc_cmp_evt_handler+0x66>
1000687a:	002c      	movs	r4, r5
1000687c:	682d      	ldr	r5, [r5, #0]
1000687e:	e7aa      	b.n	100067d6 <ble_gapc_cmp_evt_handler+0x1a>
10006880:	200150f0 	.word	0x200150f0
10006884:	20015118 	.word	0x20015118
10006888:	1000b130 	.word	0x1000b130
1000688c:	000066b1 	.word	0x000066b1
10006890:	10008ad1 	.word	0x10008ad1
10006894:	000014ed 	.word	0x000014ed
10006898:	00002789 	.word	0x00002789
1000689c:	00005859 	.word	0x00005859

100068a0 <ble_gapc_push_cb>:
100068a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100068a2:	0007      	movs	r7, r0
100068a4:	000e      	movs	r6, r1
100068a6:	001c      	movs	r4, r3
100068a8:	2102      	movs	r1, #2
100068aa:	4b06      	ldr	r3, [pc, #24]	; (100068c4 <ble_gapc_push_cb+0x24>)
100068ac:	2014      	movs	r0, #20
100068ae:	0015      	movs	r5, r2
100068b0:	4798      	blx	r3
100068b2:	4b05      	ldr	r3, [pc, #20]	; (100068c8 <ble_gapc_push_cb+0x28>)
100068b4:	6047      	str	r7, [r0, #4]
100068b6:	7406      	strb	r6, [r0, #16]
100068b8:	6085      	str	r5, [r0, #8]
100068ba:	0001      	movs	r1, r0
100068bc:	60c4      	str	r4, [r0, #12]
100068be:	4803      	ldr	r0, [pc, #12]	; (100068cc <ble_gapc_push_cb+0x2c>)
100068c0:	4798      	blx	r3
100068c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100068c4:	000013b9 	.word	0x000013b9
100068c8:	0000268f 	.word	0x0000268f
100068cc:	200150f0 	.word	0x200150f0

100068d0 <ble_gap_evt_cb_call>:
100068d0:	b570      	push	{r4, r5, r6, lr}
100068d2:	000d      	movs	r5, r1
100068d4:	4b06      	ldr	r3, [pc, #24]	; (100068f0 <ble_gap_evt_cb_call+0x20>)
100068d6:	7008      	strb	r0, [r1, #0]
100068d8:	681c      	ldr	r4, [r3, #0]
100068da:	2c00      	cmp	r4, #0
100068dc:	d100      	bne.n	100068e0 <ble_gap_evt_cb_call+0x10>
100068de:	bd70      	pop	{r4, r5, r6, pc}
100068e0:	0028      	movs	r0, r5
100068e2:	6863      	ldr	r3, [r4, #4]
100068e4:	4798      	blx	r3
100068e6:	2800      	cmp	r0, #0
100068e8:	d1f9      	bne.n	100068de <ble_gap_evt_cb_call+0xe>
100068ea:	6824      	ldr	r4, [r4, #0]
100068ec:	e7f5      	b.n	100068da <ble_gap_evt_cb_call+0xa>
100068ee:	46c0      	nop			; (mov r8, r8)
100068f0:	200150dc 	.word	0x200150dc

100068f4 <ble_gapc_pkt_size_ind_handler>:
100068f4:	200a      	movs	r0, #10
100068f6:	b510      	push	{r4, lr}
100068f8:	b08a      	sub	sp, #40	; 0x28
100068fa:	ac01      	add	r4, sp, #4
100068fc:	0a1b      	lsrs	r3, r3, #8
100068fe:	2208      	movs	r2, #8
10006900:	7123      	strb	r3, [r4, #4]
10006902:	4468      	add	r0, sp
10006904:	4b04      	ldr	r3, [pc, #16]	; (10006918 <ble_gapc_pkt_size_ind_handler+0x24>)
10006906:	4798      	blx	r3
10006908:	0021      	movs	r1, r4
1000690a:	200f      	movs	r0, #15
1000690c:	4b03      	ldr	r3, [pc, #12]	; (1000691c <ble_gapc_pkt_size_ind_handler+0x28>)
1000690e:	4798      	blx	r3
10006910:	2000      	movs	r0, #0
10006912:	b00a      	add	sp, #40	; 0x28
10006914:	bd10      	pop	{r4, pc}
10006916:	46c0      	nop			; (mov r8, r8)
10006918:	00005821 	.word	0x00005821
1000691c:	100068d1 	.word	0x100068d1

10006920 <ble_gapc_le_phy_ind_handler>:
10006920:	b5f0      	push	{r4, r5, r6, r7, lr}
10006922:	0a1f      	lsrs	r7, r3, #8
10006924:	000e      	movs	r6, r1
10006926:	0038      	movs	r0, r7
10006928:	2118      	movs	r1, #24
1000692a:	4b28      	ldr	r3, [pc, #160]	; (100069cc <ble_gapc_le_phy_ind_handler+0xac>)
1000692c:	b08b      	sub	sp, #44	; 0x2c
1000692e:	4798      	blx	r3
10006930:	1e04      	subs	r4, r0, #0
10006932:	d023      	beq.n	1000697c <ble_gapc_le_phy_ind_handler+0x5c>
10006934:	7207      	strb	r7, [r0, #8]
10006936:	7830      	ldrb	r0, [r6, #0]
10006938:	2802      	cmp	r0, #2
1000693a:	d003      	beq.n	10006944 <ble_gapc_le_phy_ind_handler+0x24>
1000693c:	2803      	cmp	r0, #3
1000693e:	d001      	beq.n	10006944 <ble_gapc_le_phy_ind_handler+0x24>
10006940:	2801      	cmp	r0, #1
10006942:	d10b      	bne.n	1000695c <ble_gapc_le_phy_ind_handler+0x3c>
10006944:	7260      	strb	r0, [r4, #9]
10006946:	7870      	ldrb	r0, [r6, #1]
10006948:	2802      	cmp	r0, #2
1000694a:	d003      	beq.n	10006954 <ble_gapc_le_phy_ind_handler+0x34>
1000694c:	2803      	cmp	r0, #3
1000694e:	d001      	beq.n	10006954 <ble_gapc_le_phy_ind_handler+0x34>
10006950:	2801      	cmp	r0, #1
10006952:	d10b      	bne.n	1000696c <ble_gapc_le_phy_ind_handler+0x4c>
10006954:	72a0      	strb	r0, [r4, #10]
10006956:	2000      	movs	r0, #0
10006958:	b00b      	add	sp, #44	; 0x2c
1000695a:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000695c:	23e2      	movs	r3, #226	; 0xe2
1000695e:	2100      	movs	r1, #0
10006960:	4a1b      	ldr	r2, [pc, #108]	; (100069d0 <ble_gapc_le_phy_ind_handler+0xb0>)
10006962:	4d1c      	ldr	r5, [pc, #112]	; (100069d4 <ble_gapc_le_phy_ind_handler+0xb4>)
10006964:	47a8      	blx	r5
10006966:	2301      	movs	r3, #1
10006968:	7263      	strb	r3, [r4, #9]
1000696a:	e7ec      	b.n	10006946 <ble_gapc_le_phy_ind_handler+0x26>
1000696c:	23e2      	movs	r3, #226	; 0xe2
1000696e:	2100      	movs	r1, #0
10006970:	4a17      	ldr	r2, [pc, #92]	; (100069d0 <ble_gapc_le_phy_ind_handler+0xb0>)
10006972:	4d18      	ldr	r5, [pc, #96]	; (100069d4 <ble_gapc_le_phy_ind_handler+0xb4>)
10006974:	47a8      	blx	r5
10006976:	2301      	movs	r3, #1
10006978:	72a3      	strb	r3, [r4, #10]
1000697a:	e7ec      	b.n	10006956 <ble_gapc_le_phy_ind_handler+0x36>
1000697c:	7830      	ldrb	r0, [r6, #0]
1000697e:	ad01      	add	r5, sp, #4
10006980:	712f      	strb	r7, [r5, #4]
10006982:	2802      	cmp	r0, #2
10006984:	d003      	beq.n	1000698e <ble_gapc_le_phy_ind_handler+0x6e>
10006986:	2803      	cmp	r0, #3
10006988:	d001      	beq.n	1000698e <ble_gapc_le_phy_ind_handler+0x6e>
1000698a:	2801      	cmp	r0, #1
1000698c:	d10d      	bne.n	100069aa <ble_gapc_le_phy_ind_handler+0x8a>
1000698e:	7168      	strb	r0, [r5, #5]
10006990:	7870      	ldrb	r0, [r6, #1]
10006992:	2802      	cmp	r0, #2
10006994:	d003      	beq.n	1000699e <ble_gapc_le_phy_ind_handler+0x7e>
10006996:	2803      	cmp	r0, #3
10006998:	d001      	beq.n	1000699e <ble_gapc_le_phy_ind_handler+0x7e>
1000699a:	2801      	cmp	r0, #1
1000699c:	d10d      	bne.n	100069ba <ble_gapc_le_phy_ind_handler+0x9a>
1000699e:	71a8      	strb	r0, [r5, #6]
100069a0:	0029      	movs	r1, r5
100069a2:	200d      	movs	r0, #13
100069a4:	4b0c      	ldr	r3, [pc, #48]	; (100069d8 <ble_gapc_le_phy_ind_handler+0xb8>)
100069a6:	4798      	blx	r3
100069a8:	e7d5      	b.n	10006956 <ble_gapc_le_phy_ind_handler+0x36>
100069aa:	23e2      	movs	r3, #226	; 0xe2
100069ac:	0021      	movs	r1, r4
100069ae:	4a08      	ldr	r2, [pc, #32]	; (100069d0 <ble_gapc_le_phy_ind_handler+0xb0>)
100069b0:	4c08      	ldr	r4, [pc, #32]	; (100069d4 <ble_gapc_le_phy_ind_handler+0xb4>)
100069b2:	47a0      	blx	r4
100069b4:	2301      	movs	r3, #1
100069b6:	716b      	strb	r3, [r5, #5]
100069b8:	e7ea      	b.n	10006990 <ble_gapc_le_phy_ind_handler+0x70>
100069ba:	23e2      	movs	r3, #226	; 0xe2
100069bc:	2100      	movs	r1, #0
100069be:	4a04      	ldr	r2, [pc, #16]	; (100069d0 <ble_gapc_le_phy_ind_handler+0xb0>)
100069c0:	4c04      	ldr	r4, [pc, #16]	; (100069d4 <ble_gapc_le_phy_ind_handler+0xb4>)
100069c2:	47a0      	blx	r4
100069c4:	2301      	movs	r3, #1
100069c6:	71ab      	strb	r3, [r5, #6]
100069c8:	e7ea      	b.n	100069a0 <ble_gapc_le_phy_ind_handler+0x80>
100069ca:	46c0      	nop			; (mov r8, r8)
100069cc:	1000636d 	.word	0x1000636d
100069d0:	1000b114 	.word	0x1000b114
100069d4:	00006641 	.word	0x00006641
100069d8:	100068d1 	.word	0x100068d1

100069dc <ble_gapc_encrypt_req_handler>:
100069dc:	b5f0      	push	{r4, r5, r6, r7, lr}
100069de:	270a      	movs	r7, #10
100069e0:	b08d      	sub	sp, #52	; 0x34
100069e2:	001c      	movs	r4, r3
100069e4:	003a      	movs	r2, r7
100069e6:	4e09      	ldr	r6, [pc, #36]	; (10006a0c <ble_gapc_encrypt_req_handler+0x30>)
100069e8:	4668      	mov	r0, sp
100069ea:	47b0      	blx	r6
100069ec:	2012      	movs	r0, #18
100069ee:	ad03      	add	r5, sp, #12
100069f0:	0a24      	lsrs	r4, r4, #8
100069f2:	003a      	movs	r2, r7
100069f4:	4669      	mov	r1, sp
100069f6:	712c      	strb	r4, [r5, #4]
100069f8:	4468      	add	r0, sp
100069fa:	47b0      	blx	r6
100069fc:	0029      	movs	r1, r5
100069fe:	201b      	movs	r0, #27
10006a00:	4b03      	ldr	r3, [pc, #12]	; (10006a10 <ble_gapc_encrypt_req_handler+0x34>)
10006a02:	4798      	blx	r3
10006a04:	2000      	movs	r0, #0
10006a06:	b00d      	add	sp, #52	; 0x34
10006a08:	bdf0      	pop	{r4, r5, r6, r7, pc}
10006a0a:	46c0      	nop			; (mov r8, r8)
10006a0c:	00005821 	.word	0x00005821
10006a10:	100068d1 	.word	0x100068d1

10006a14 <ble_gapc_bond_req_ind_handler>:
10006a14:	b510      	push	{r4, lr}
10006a16:	7808      	ldrb	r0, [r1, #0]
10006a18:	000a      	movs	r2, r1
10006a1a:	b08a      	sub	sp, #40	; 0x28
10006a1c:	0a1b      	lsrs	r3, r3, #8
10006a1e:	280a      	cmp	r0, #10
10006a20:	d83d      	bhi.n	10006a9e <ble_gapc_bond_req_ind_handler+0x8a>
10006a22:	f002 fbe9 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006a26:	3c35      	.short	0x3c35
10006a28:	06163c3c 	.word	0x06163c3c
10006a2c:	193c120e 	.word	0x193c120e
10006a30:	26          	.byte	0x26
10006a31:	00          	.byte	0x00
10006a32:	2014      	movs	r0, #20
10006a34:	a901      	add	r1, sp, #4
10006a36:	710b      	strb	r3, [r1, #4]
10006a38:	4b1c      	ldr	r3, [pc, #112]	; (10006aac <ble_gapc_bond_req_ind_handler+0x98>)
10006a3a:	4798      	blx	r3
10006a3c:	2000      	movs	r0, #0
10006a3e:	b00a      	add	sp, #40	; 0x28
10006a40:	bd10      	pop	{r4, pc}
10006a42:	a901      	add	r1, sp, #4
10006a44:	2015      	movs	r0, #21
10006a46:	710b      	strb	r3, [r1, #4]
10006a48:	e7f6      	b.n	10006a38 <ble_gapc_bond_req_ind_handler+0x24>
10006a4a:	a901      	add	r1, sp, #4
10006a4c:	2016      	movs	r0, #22
10006a4e:	710b      	strb	r3, [r1, #4]
10006a50:	e7f2      	b.n	10006a38 <ble_gapc_bond_req_ind_handler+0x24>
10006a52:	784a      	ldrb	r2, [r1, #1]
10006a54:	2a00      	cmp	r2, #0
10006a56:	d103      	bne.n	10006a60 <ble_gapc_bond_req_ind_handler+0x4c>
10006a58:	4b15      	ldr	r3, [pc, #84]	; (10006ab0 <ble_gapc_bond_req_ind_handler+0x9c>)
10006a5a:	4816      	ldr	r0, [pc, #88]	; (10006ab4 <ble_gapc_bond_req_ind_handler+0xa0>)
10006a5c:	4798      	blx	r3
10006a5e:	e7ed      	b.n	10006a3c <ble_gapc_bond_req_ind_handler+0x28>
10006a60:	4669      	mov	r1, sp
10006a62:	3a01      	subs	r2, #1
10006a64:	720b      	strb	r3, [r1, #8]
10006a66:	4253      	negs	r3, r2
10006a68:	415a      	adcs	r2, r3
10006a6a:	2019      	movs	r0, #25
10006a6c:	724a      	strb	r2, [r1, #9]
10006a6e:	a901      	add	r1, sp, #4
10006a70:	e7e2      	b.n	10006a38 <ble_gapc_bond_req_ind_handler+0x24>
10006a72:	a901      	add	r1, sp, #4
10006a74:	7890      	ldrb	r0, [r2, #2]
10006a76:	710b      	strb	r3, [r1, #4]
10006a78:	7853      	ldrb	r3, [r2, #1]
10006a7a:	78d4      	ldrb	r4, [r2, #3]
10006a7c:	0200      	lsls	r0, r0, #8
10006a7e:	4318      	orrs	r0, r3
10006a80:	7913      	ldrb	r3, [r2, #4]
10006a82:	0424      	lsls	r4, r4, #16
10006a84:	4320      	orrs	r0, r4
10006a86:	061b      	lsls	r3, r3, #24
10006a88:	4303      	orrs	r3, r0
10006a8a:	608b      	str	r3, [r1, #8]
10006a8c:	2018      	movs	r0, #24
10006a8e:	e7d3      	b.n	10006a38 <ble_gapc_bond_req_ind_handler+0x24>
10006a90:	4669      	mov	r1, sp
10006a92:	720b      	strb	r3, [r1, #8]
10006a94:	7853      	ldrb	r3, [r2, #1]
10006a96:	201a      	movs	r0, #26
10006a98:	724b      	strb	r3, [r1, #9]
10006a9a:	a901      	add	r1, sp, #4
10006a9c:	e7cc      	b.n	10006a38 <ble_gapc_bond_req_ind_handler+0x24>
10006a9e:	4a06      	ldr	r2, [pc, #24]	; (10006ab8 <ble_gapc_bond_req_ind_handler+0xa4>)
10006aa0:	4906      	ldr	r1, [pc, #24]	; (10006abc <ble_gapc_bond_req_ind_handler+0xa8>)
10006aa2:	4807      	ldr	r0, [pc, #28]	; (10006ac0 <ble_gapc_bond_req_ind_handler+0xac>)
10006aa4:	4b07      	ldr	r3, [pc, #28]	; (10006ac4 <ble_gapc_bond_req_ind_handler+0xb0>)
10006aa6:	4798      	blx	r3
10006aa8:	e7c8      	b.n	10006a3c <ble_gapc_bond_req_ind_handler+0x28>
10006aaa:	46c0      	nop			; (mov r8, r8)
10006aac:	100068d1 	.word	0x100068d1
10006ab0:	000066b1 	.word	0x000066b1
10006ab4:	1000b15b 	.word	0x1000b15b
10006ab8:	00000349 	.word	0x00000349
10006abc:	1000b114 	.word	0x1000b114
10006ac0:	1000b16c 	.word	0x1000b16c
10006ac4:	00006609 	.word	0x00006609

10006ac8 <ble_gapc_bond_ind_handler>:
10006ac8:	b5f0      	push	{r4, r5, r6, r7, lr}
10006aca:	0017      	movs	r7, r2
10006acc:	780a      	ldrb	r2, [r1, #0]
10006ace:	b08d      	sub	sp, #52	; 0x34
10006ad0:	9001      	str	r0, [sp, #4]
10006ad2:	1e90      	subs	r0, r2, #2
10006ad4:	001e      	movs	r6, r3
10006ad6:	000d      	movs	r5, r1
10006ad8:	0a1b      	lsrs	r3, r3, #8
10006ada:	2806      	cmp	r0, #6
10006adc:	d813      	bhi.n	10006b06 <ble_gapc_bond_ind_handler+0x3e>
10006ade:	f002 fb8b 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006ae2:	0404      	.short	0x0404
10006ae4:	3b574b12 	.word	0x3b574b12
10006ae8:	47          	.byte	0x47
10006ae9:	00          	.byte	0x00
10006aea:	ac03      	add	r4, sp, #12
10006aec:	7888      	ldrb	r0, [r1, #2]
10006aee:	7123      	strb	r3, [r4, #4]
10006af0:	2a03      	cmp	r2, #3
10006af2:	d110      	bne.n	10006b16 <ble_gapc_bond_ind_handler+0x4e>
10006af4:	4b28      	ldr	r3, [pc, #160]	; (10006b98 <ble_gapc_bond_ind_handler+0xd0>)
10006af6:	4798      	blx	r3
10006af8:	2300      	movs	r3, #0
10006afa:	80e0      	strh	r0, [r4, #6]
10006afc:	8123      	strh	r3, [r4, #8]
10006afe:	200b      	movs	r0, #11
10006b00:	a903      	add	r1, sp, #12
10006b02:	4b26      	ldr	r3, [pc, #152]	; (10006b9c <ble_gapc_bond_ind_handler+0xd4>)
10006b04:	4798      	blx	r3
10006b06:	0033      	movs	r3, r6
10006b08:	003a      	movs	r2, r7
10006b0a:	0029      	movs	r1, r5
10006b0c:	9801      	ldr	r0, [sp, #4]
10006b0e:	4c24      	ldr	r4, [pc, #144]	; (10006ba0 <ble_gapc_bond_ind_handler+0xd8>)
10006b10:	47a0      	blx	r4
10006b12:	b00d      	add	sp, #52	; 0x34
10006b14:	bdf0      	pop	{r4, r5, r6, r7, pc}
10006b16:	2300      	movs	r3, #0
10006b18:	80e3      	strh	r3, [r4, #6]
10006b1a:	78ca      	ldrb	r2, [r1, #3]
10006b1c:	7262      	strb	r2, [r4, #9]
10006b1e:	2809      	cmp	r0, #9
10006b20:	d811      	bhi.n	10006b46 <ble_gapc_bond_ind_handler+0x7e>
10006b22:	f002 fb69 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006b26:	0506      	.short	0x0506
10006b28:	0a081010 	.word	0x0a081010
10006b2c:	0e0c1010 	.word	0x0e0c1010
10006b30:	2301      	movs	r3, #1
10006b32:	7223      	strb	r3, [r4, #8]
10006b34:	e7e3      	b.n	10006afe <ble_gapc_bond_ind_handler+0x36>
10006b36:	2304      	movs	r3, #4
10006b38:	e7fb      	b.n	10006b32 <ble_gapc_bond_ind_handler+0x6a>
10006b3a:	2305      	movs	r3, #5
10006b3c:	e7f9      	b.n	10006b32 <ble_gapc_bond_ind_handler+0x6a>
10006b3e:	230c      	movs	r3, #12
10006b40:	e7f7      	b.n	10006b32 <ble_gapc_bond_ind_handler+0x6a>
10006b42:	230d      	movs	r3, #13
10006b44:	e7f5      	b.n	10006b32 <ble_gapc_bond_ind_handler+0x6a>
10006b46:	4b17      	ldr	r3, [pc, #92]	; (10006ba4 <ble_gapc_bond_ind_handler+0xdc>)
10006b48:	4a17      	ldr	r2, [pc, #92]	; (10006ba8 <ble_gapc_bond_ind_handler+0xe0>)
10006b4a:	2100      	movs	r1, #0
10006b4c:	4c17      	ldr	r4, [pc, #92]	; (10006bac <ble_gapc_bond_ind_handler+0xe4>)
10006b4e:	47a0      	blx	r4
10006b50:	2200      	movs	r2, #0
10006b52:	ab03      	add	r3, sp, #12
10006b54:	721a      	strb	r2, [r3, #8]
10006b56:	e7d2      	b.n	10006afe <ble_gapc_bond_ind_handler+0x36>
10006b58:	200a      	movs	r0, #10
10006b5a:	ac03      	add	r4, sp, #12
10006b5c:	7123      	strb	r3, [r4, #4]
10006b5e:	ab02      	add	r3, sp, #8
10006b60:	3102      	adds	r1, #2
10006b62:	18c0      	adds	r0, r0, r3
10006b64:	221c      	movs	r2, #28
10006b66:	4b12      	ldr	r3, [pc, #72]	; (10006bb0 <ble_gapc_bond_ind_handler+0xe8>)
10006b68:	4798      	blx	r3
10006b6a:	0021      	movs	r1, r4
10006b6c:	2007      	movs	r0, #7
10006b6e:	e7c8      	b.n	10006b02 <ble_gapc_bond_ind_handler+0x3a>
10006b70:	a903      	add	r1, sp, #12
10006b72:	2012      	movs	r0, #18
10006b74:	710b      	strb	r3, [r1, #4]
10006b76:	e7c4      	b.n	10006b02 <ble_gapc_bond_ind_handler+0x3a>
10006b78:	2009      	movs	r0, #9
10006b7a:	ac03      	add	r4, sp, #12
10006b7c:	7123      	strb	r3, [r4, #4]
10006b7e:	ab02      	add	r3, sp, #8
10006b80:	3102      	adds	r1, #2
10006b82:	18c0      	adds	r0, r0, r3
10006b84:	2217      	movs	r2, #23
10006b86:	4b0a      	ldr	r3, [pc, #40]	; (10006bb0 <ble_gapc_bond_ind_handler+0xe8>)
10006b88:	4798      	blx	r3
10006b8a:	0021      	movs	r1, r4
10006b8c:	2008      	movs	r0, #8
10006b8e:	e7b8      	b.n	10006b02 <ble_gapc_bond_ind_handler+0x3a>
10006b90:	4b08      	ldr	r3, [pc, #32]	; (10006bb4 <ble_gapc_bond_ind_handler+0xec>)
10006b92:	4809      	ldr	r0, [pc, #36]	; (10006bb8 <ble_gapc_bond_ind_handler+0xf0>)
10006b94:	4798      	blx	r3
10006b96:	e7b6      	b.n	10006b06 <ble_gapc_bond_ind_handler+0x3e>
10006b98:	10008ad1 	.word	0x10008ad1
10006b9c:	100068d1 	.word	0x100068d1
10006ba0:	1000675d 	.word	0x1000675d
10006ba4:	00000379 	.word	0x00000379
10006ba8:	1000b114 	.word	0x1000b114
10006bac:	00006641 	.word	0x00006641
10006bb0:	00005821 	.word	0x00005821
10006bb4:	000066b1 	.word	0x000066b1
10006bb8:	1000b172 	.word	0x1000b172

10006bbc <ble_gapc_param_update_req_ind_handler>:
10006bbc:	b510      	push	{r4, lr}
10006bbe:	0a1b      	lsrs	r3, r3, #8
10006bc0:	b08a      	sub	sp, #40	; 0x28
10006bc2:	b2da      	uxtb	r2, r3
10006bc4:	2bff      	cmp	r3, #255	; 0xff
10006bc6:	d105      	bne.n	10006bd4 <ble_gapc_param_update_req_ind_handler+0x18>
10006bc8:	4808      	ldr	r0, [pc, #32]	; (10006bec <ble_gapc_param_update_req_ind_handler+0x30>)
10006bca:	4b09      	ldr	r3, [pc, #36]	; (10006bf0 <ble_gapc_param_update_req_ind_handler+0x34>)
10006bcc:	4798      	blx	r3
10006bce:	2000      	movs	r0, #0
10006bd0:	b00a      	add	sp, #40	; 0x28
10006bd2:	bd10      	pop	{r4, pc}
10006bd4:	200a      	movs	r0, #10
10006bd6:	ac01      	add	r4, sp, #4
10006bd8:	7122      	strb	r2, [r4, #4]
10006bda:	4b06      	ldr	r3, [pc, #24]	; (10006bf4 <ble_gapc_param_update_req_ind_handler+0x38>)
10006bdc:	2208      	movs	r2, #8
10006bde:	4468      	add	r0, sp
10006be0:	4798      	blx	r3
10006be2:	0021      	movs	r1, r4
10006be4:	200c      	movs	r0, #12
10006be6:	4b04      	ldr	r3, [pc, #16]	; (10006bf8 <ble_gapc_param_update_req_ind_handler+0x3c>)
10006be8:	4798      	blx	r3
10006bea:	e7f0      	b.n	10006bce <ble_gapc_param_update_req_ind_handler+0x12>
10006bec:	1000b188 	.word	0x1000b188
10006bf0:	000066b1 	.word	0x000066b1
10006bf4:	00005821 	.word	0x00005821
10006bf8:	100068d1 	.word	0x100068d1

10006bfc <ble_gapc_key_press_notif_ind_handler>:
10006bfc:	b500      	push	{lr}
10006bfe:	b08b      	sub	sp, #44	; 0x2c
10006c00:	466a      	mov	r2, sp
10006c02:	0a1b      	lsrs	r3, r3, #8
10006c04:	7213      	strb	r3, [r2, #8]
10006c06:	780b      	ldrb	r3, [r1, #0]
10006c08:	2013      	movs	r0, #19
10006c0a:	7253      	strb	r3, [r2, #9]
10006c0c:	a901      	add	r1, sp, #4
10006c0e:	4b02      	ldr	r3, [pc, #8]	; (10006c18 <ble_gapc_key_press_notif_ind_handler+0x1c>)
10006c10:	4798      	blx	r3
10006c12:	2000      	movs	r0, #0
10006c14:	b00b      	add	sp, #44	; 0x2c
10006c16:	bd00      	pop	{pc}
10006c18:	100068d1 	.word	0x100068d1

10006c1c <ble_gapc_default_handler>:
10006c1c:	b5f0      	push	{r4, r5, r6, r7, lr}
10006c1e:	b08d      	sub	sp, #52	; 0x34
10006c20:	9300      	str	r3, [sp, #0]
10006c22:	0a1f      	lsrs	r7, r3, #8
10006c24:	4b59      	ldr	r3, [pc, #356]	; (10006d8c <ble_gapc_default_handler+0x170>)
10006c26:	0006      	movs	r6, r0
10006c28:	000d      	movs	r5, r1
10006c2a:	9201      	str	r2, [sp, #4]
10006c2c:	4298      	cmp	r0, r3
10006c2e:	d113      	bne.n	10006c58 <ble_gapc_default_handler+0x3c>
10006c30:	200a      	movs	r0, #10
10006c32:	ac03      	add	r4, sp, #12
10006c34:	ab02      	add	r3, sp, #8
10006c36:	18c0      	adds	r0, r0, r3
10006c38:	2212      	movs	r2, #18
10006c3a:	4b55      	ldr	r3, [pc, #340]	; (10006d90 <ble_gapc_default_handler+0x174>)
10006c3c:	7127      	strb	r7, [r4, #4]
10006c3e:	4798      	blx	r3
10006c40:	0021      	movs	r1, r4
10006c42:	2005      	movs	r0, #5
10006c44:	4b53      	ldr	r3, [pc, #332]	; (10006d94 <ble_gapc_default_handler+0x178>)
10006c46:	4798      	blx	r3
10006c48:	0029      	movs	r1, r5
10006c4a:	0030      	movs	r0, r6
10006c4c:	9b00      	ldr	r3, [sp, #0]
10006c4e:	9a01      	ldr	r2, [sp, #4]
10006c50:	4c51      	ldr	r4, [pc, #324]	; (10006d98 <ble_gapc_default_handler+0x17c>)
10006c52:	47a0      	blx	r4
10006c54:	b00d      	add	sp, #52	; 0x34
10006c56:	bdf0      	pop	{r4, r5, r6, r7, pc}
10006c58:	4b50      	ldr	r3, [pc, #320]	; (10006d9c <ble_gapc_default_handler+0x180>)
10006c5a:	4298      	cmp	r0, r3
10006c5c:	d107      	bne.n	10006c6e <ble_gapc_default_handler+0x52>
10006c5e:	882b      	ldrh	r3, [r5, #0]
10006c60:	a903      	add	r1, sp, #12
10006c62:	710f      	strb	r7, [r1, #4]
10006c64:	80cb      	strh	r3, [r1, #6]
10006c66:	78ab      	ldrb	r3, [r5, #2]
10006c68:	2006      	movs	r0, #6
10006c6a:	810b      	strh	r3, [r1, #8]
10006c6c:	e7ea      	b.n	10006c44 <ble_gapc_default_handler+0x28>
10006c6e:	4b4c      	ldr	r3, [pc, #304]	; (10006da0 <ble_gapc_default_handler+0x184>)
10006c70:	4298      	cmp	r0, r3
10006c72:	d10a      	bne.n	10006c8a <ble_gapc_default_handler+0x6e>
10006c74:	200a      	movs	r0, #10
10006c76:	ac03      	add	r4, sp, #12
10006c78:	ab02      	add	r3, sp, #8
10006c7a:	18c0      	adds	r0, r0, r3
10006c7c:	2206      	movs	r2, #6
10006c7e:	4b44      	ldr	r3, [pc, #272]	; (10006d90 <ble_gapc_default_handler+0x174>)
10006c80:	7127      	strb	r7, [r4, #4]
10006c82:	4798      	blx	r3
10006c84:	0021      	movs	r1, r4
10006c86:	2009      	movs	r0, #9
10006c88:	e7dc      	b.n	10006c44 <ble_gapc_default_handler+0x28>
10006c8a:	4b46      	ldr	r3, [pc, #280]	; (10006da4 <ble_gapc_default_handler+0x188>)
10006c8c:	4298      	cmp	r0, r3
10006c8e:	d125      	bne.n	10006cdc <ble_gapc_default_handler+0xc0>
10006c90:	ac03      	add	r4, sp, #12
10006c92:	0038      	movs	r0, r7
10006c94:	4b44      	ldr	r3, [pc, #272]	; (10006da8 <ble_gapc_default_handler+0x18c>)
10006c96:	7127      	strb	r7, [r4, #4]
10006c98:	4798      	blx	r3
10006c9a:	0007      	movs	r7, r0
10006c9c:	200a      	movs	r0, #10
10006c9e:	ab02      	add	r3, sp, #8
10006ca0:	18c0      	adds	r0, r0, r3
10006ca2:	2206      	movs	r2, #6
10006ca4:	2100      	movs	r1, #0
10006ca6:	4b41      	ldr	r3, [pc, #260]	; (10006dac <ble_gapc_default_handler+0x190>)
10006ca8:	4798      	blx	r3
10006caa:	7828      	ldrb	r0, [r5, #0]
10006cac:	3f03      	subs	r7, #3
10006cae:	81a7      	strh	r7, [r4, #12]
10006cb0:	2803      	cmp	r0, #3
10006cb2:	d80c      	bhi.n	10006cce <ble_gapc_default_handler+0xb2>
10006cb4:	f002 faa0 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006cb8:	09070204 	.word	0x09070204
10006cbc:	2301      	movs	r3, #1
10006cbe:	71a3      	strb	r3, [r4, #6]
10006cc0:	2010      	movs	r0, #16
10006cc2:	a903      	add	r1, sp, #12
10006cc4:	e7be      	b.n	10006c44 <ble_gapc_default_handler+0x28>
10006cc6:	2302      	movs	r3, #2
10006cc8:	e7f9      	b.n	10006cbe <ble_gapc_default_handler+0xa2>
10006cca:	2303      	movs	r3, #3
10006ccc:	e7f7      	b.n	10006cbe <ble_gapc_default_handler+0xa2>
10006cce:	4b38      	ldr	r3, [pc, #224]	; (10006db0 <ble_gapc_default_handler+0x194>)
10006cd0:	2100      	movs	r1, #0
10006cd2:	4a38      	ldr	r2, [pc, #224]	; (10006db4 <ble_gapc_default_handler+0x198>)
10006cd4:	4f38      	ldr	r7, [pc, #224]	; (10006db8 <ble_gapc_default_handler+0x19c>)
10006cd6:	47b8      	blx	r7
10006cd8:	2300      	movs	r3, #0
10006cda:	e7f0      	b.n	10006cbe <ble_gapc_default_handler+0xa2>
10006cdc:	4b37      	ldr	r3, [pc, #220]	; (10006dbc <ble_gapc_default_handler+0x1a0>)
10006cde:	4298      	cmp	r0, r3
10006ce0:	d144      	bne.n	10006d6c <ble_gapc_default_handler+0x150>
10006ce2:	210b      	movs	r1, #11
10006ce4:	0038      	movs	r0, r7
10006ce6:	4b36      	ldr	r3, [pc, #216]	; (10006dc0 <ble_gapc_default_handler+0x1a4>)
10006ce8:	4798      	blx	r3
10006cea:	1e04      	subs	r4, r0, #0
10006cec:	d01c      	beq.n	10006d28 <ble_gapc_default_handler+0x10c>
10006cee:	7187      	strb	r7, [r0, #6]
10006cf0:	7828      	ldrb	r0, [r5, #0]
10006cf2:	2809      	cmp	r0, #9
10006cf4:	d811      	bhi.n	10006d1a <ble_gapc_default_handler+0xfe>
10006cf6:	f002 fa7f 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006cfa:	0515      	.short	0x0515
10006cfc:	0a081010 	.word	0x0a081010
10006d00:	0e0c1010 	.word	0x0e0c1010
10006d04:	2301      	movs	r3, #1
10006d06:	71e3      	strb	r3, [r4, #7]
10006d08:	e79e      	b.n	10006c48 <ble_gapc_default_handler+0x2c>
10006d0a:	2304      	movs	r3, #4
10006d0c:	e7fb      	b.n	10006d06 <ble_gapc_default_handler+0xea>
10006d0e:	2305      	movs	r3, #5
10006d10:	e7f9      	b.n	10006d06 <ble_gapc_default_handler+0xea>
10006d12:	230c      	movs	r3, #12
10006d14:	e7f7      	b.n	10006d06 <ble_gapc_default_handler+0xea>
10006d16:	230d      	movs	r3, #13
10006d18:	e7f5      	b.n	10006d06 <ble_gapc_default_handler+0xea>
10006d1a:	2100      	movs	r1, #0
10006d1c:	4b29      	ldr	r3, [pc, #164]	; (10006dc4 <ble_gapc_default_handler+0x1a8>)
10006d1e:	4a25      	ldr	r2, [pc, #148]	; (10006db4 <ble_gapc_default_handler+0x198>)
10006d20:	4f25      	ldr	r7, [pc, #148]	; (10006db8 <ble_gapc_default_handler+0x19c>)
10006d22:	47b8      	blx	r7
10006d24:	2300      	movs	r3, #0
10006d26:	e7ee      	b.n	10006d06 <ble_gapc_default_handler+0xea>
10006d28:	ab03      	add	r3, sp, #12
10006d2a:	80d8      	strh	r0, [r3, #6]
10006d2c:	7828      	ldrb	r0, [r5, #0]
10006d2e:	711f      	strb	r7, [r3, #4]
10006d30:	2809      	cmp	r0, #9
10006d32:	d813      	bhi.n	10006d5c <ble_gapc_default_handler+0x140>
10006d34:	f002 fa60 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006d38:	12120518 	.word	0x12120518
10006d3c:	12120c0a 	.word	0x12120c0a
10006d40:	100e      	.short	0x100e
10006d42:	2201      	movs	r2, #1
10006d44:	2011      	movs	r0, #17
10006d46:	721a      	strb	r2, [r3, #8]
10006d48:	a903      	add	r1, sp, #12
10006d4a:	e77b      	b.n	10006c44 <ble_gapc_default_handler+0x28>
10006d4c:	2204      	movs	r2, #4
10006d4e:	e7f9      	b.n	10006d44 <ble_gapc_default_handler+0x128>
10006d50:	2205      	movs	r2, #5
10006d52:	e7f7      	b.n	10006d44 <ble_gapc_default_handler+0x128>
10006d54:	220c      	movs	r2, #12
10006d56:	e7f5      	b.n	10006d44 <ble_gapc_default_handler+0x128>
10006d58:	220d      	movs	r2, #13
10006d5a:	e7f3      	b.n	10006d44 <ble_gapc_default_handler+0x128>
10006d5c:	4b19      	ldr	r3, [pc, #100]	; (10006dc4 <ble_gapc_default_handler+0x1a8>)
10006d5e:	2100      	movs	r1, #0
10006d60:	4a14      	ldr	r2, [pc, #80]	; (10006db4 <ble_gapc_default_handler+0x198>)
10006d62:	4c15      	ldr	r4, [pc, #84]	; (10006db8 <ble_gapc_default_handler+0x19c>)
10006d64:	47a0      	blx	r4
10006d66:	ab03      	add	r3, sp, #12
10006d68:	2200      	movs	r2, #0
10006d6a:	e7eb      	b.n	10006d44 <ble_gapc_default_handler+0x128>
10006d6c:	4b16      	ldr	r3, [pc, #88]	; (10006dc8 <ble_gapc_default_handler+0x1ac>)
10006d6e:	681c      	ldr	r4, [r3, #0]
10006d70:	2c00      	cmp	r4, #0
10006d72:	d100      	bne.n	10006d76 <ble_gapc_default_handler+0x15a>
10006d74:	e768      	b.n	10006c48 <ble_gapc_default_handler+0x2c>
10006d76:	466b      	mov	r3, sp
10006d78:	781a      	ldrb	r2, [r3, #0]
10006d7a:	3aff      	subs	r2, #255	; 0xff
10006d7c:	4253      	negs	r3, r2
10006d7e:	415a      	adcs	r2, r3
10006d80:	000b      	movs	r3, r1
10006d82:	b2d2      	uxtb	r2, r2
10006d84:	0039      	movs	r1, r7
10006d86:	47a0      	blx	r4
10006d88:	e75e      	b.n	10006c48 <ble_gapc_default_handler+0x2c>
10006d8a:	46c0      	nop			; (mov r8, r8)
10006d8c:	00000e01 	.word	0x00000e01
10006d90:	00005821 	.word	0x00005821
10006d94:	100068d1 	.word	0x100068d1
10006d98:	1000675d 	.word	0x1000675d
10006d9c:	00000e03 	.word	0x00000e03
10006da0:	00000e11 	.word	0x00000e11
10006da4:	00000e0a 	.word	0x00000e0a
10006da8:	00020dfd 	.word	0x00020dfd
10006dac:	00005859 	.word	0x00005859
10006db0:	00000297 	.word	0x00000297
10006db4:	1000b114 	.word	0x1000b114
10006db8:	00006641 	.word	0x00006641
10006dbc:	00000e19 	.word	0x00000e19
10006dc0:	1000636d 	.word	0x1000636d
10006dc4:	00000379 	.word	0x00000379
10006dc8:	2001512c 	.word	0x2001512c

10006dcc <ble_gapm_ext_adv_report_ind_handler>:
10006dcc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10006dce:	8b0e      	ldrh	r6, [r1, #24]
10006dd0:	4b18      	ldr	r3, [pc, #96]	; (10006e34 <ble_gapm_ext_adv_report_ind_handler+0x68>)
10006dd2:	0030      	movs	r0, r6
10006dd4:	3024      	adds	r0, #36	; 0x24
10006dd6:	000d      	movs	r5, r1
10006dd8:	4798      	blx	r3
10006dda:	2707      	movs	r7, #7
10006ddc:	0004      	movs	r4, r0
10006dde:	786b      	ldrb	r3, [r5, #1]
10006de0:	003a      	movs	r2, r7
10006de2:	1ca9      	adds	r1, r5, #2
10006de4:	7103      	strb	r3, [r0, #4]
10006de6:	4b14      	ldr	r3, [pc, #80]	; (10006e38 <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10006de8:	3005      	adds	r0, #5
10006dea:	4798      	blx	r3
10006dec:	0029      	movs	r1, r5
10006dee:	0020      	movs	r0, r4
10006df0:	003a      	movs	r2, r7
10006df2:	4b11      	ldr	r3, [pc, #68]	; (10006e38 <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10006df4:	3109      	adds	r1, #9
10006df6:	300c      	adds	r0, #12
10006df8:	4798      	blx	r3
10006dfa:	0029      	movs	r1, r5
10006dfc:	0020      	movs	r0, r4
10006dfe:	7c2b      	ldrb	r3, [r5, #16]
10006e00:	0032      	movs	r2, r6
10006e02:	74e3      	strb	r3, [r4, #19]
10006e04:	7c6b      	ldrb	r3, [r5, #17]
10006e06:	8366      	strh	r6, [r4, #26]
10006e08:	7523      	strb	r3, [r4, #20]
10006e0a:	7cab      	ldrb	r3, [r5, #18]
10006e0c:	311a      	adds	r1, #26
10006e0e:	7563      	strb	r3, [r4, #21]
10006e10:	7ceb      	ldrb	r3, [r5, #19]
10006e12:	301c      	adds	r0, #28
10006e14:	75a3      	strb	r3, [r4, #22]
10006e16:	7d2b      	ldrb	r3, [r5, #20]
10006e18:	75e3      	strb	r3, [r4, #23]
10006e1a:	8aeb      	ldrh	r3, [r5, #22]
10006e1c:	8323      	strh	r3, [r4, #24]
10006e1e:	4b06      	ldr	r3, [pc, #24]	; (10006e38 <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10006e20:	4798      	blx	r3
10006e22:	0021      	movs	r1, r4
10006e24:	2004      	movs	r0, #4
10006e26:	4b05      	ldr	r3, [pc, #20]	; (10006e3c <ble_gapm_ext_adv_report_ind_handler+0x70>)
10006e28:	4798      	blx	r3
10006e2a:	0020      	movs	r0, r4
10006e2c:	4b04      	ldr	r3, [pc, #16]	; (10006e40 <ble_gapm_ext_adv_report_ind_handler+0x74>)
10006e2e:	4798      	blx	r3
10006e30:	2000      	movs	r0, #0
10006e32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10006e34:	0002f615 	.word	0x0002f615
10006e38:	00005821 	.word	0x00005821
10006e3c:	100068d1 	.word	0x100068d1
10006e40:	0002f629 	.word	0x0002f629

10006e44 <ble_gapm_activity_stopped_ind_handler>:
10006e44:	b530      	push	{r4, r5, lr}
10006e46:	000c      	movs	r4, r1
10006e48:	4b25      	ldr	r3, [pc, #148]	; (10006ee0 <ble_gapm_activity_stopped_ind_handler+0x9c>)
10006e4a:	b08b      	sub	sp, #44	; 0x2c
10006e4c:	681b      	ldr	r3, [r3, #0]
10006e4e:	2b00      	cmp	r3, #0
10006e50:	d106      	bne.n	10006e60 <ble_gapm_activity_stopped_ind_handler+0x1c>
10006e52:	7860      	ldrb	r0, [r4, #1]
10006e54:	2803      	cmp	r0, #3
10006e56:	d83d      	bhi.n	10006ed4 <ble_gapm_activity_stopped_ind_handler+0x90>
10006e58:	f002 f9ce 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
10006e5c:	0a2b1a0d 	.word	0x0a2b1a0d
10006e60:	7c1a      	ldrb	r2, [r3, #16]
10006e62:	2aa5      	cmp	r2, #165	; 0xa5
10006e64:	d1f2      	bne.n	10006e4c <ble_gapm_activity_stopped_ind_handler+0x8>
10006e66:	68da      	ldr	r2, [r3, #12]
10006e68:	7911      	ldrb	r1, [r2, #4]
10006e6a:	7822      	ldrb	r2, [r4, #0]
10006e6c:	4291      	cmp	r1, r2
10006e6e:	d1ed      	bne.n	10006e4c <ble_gapm_activity_stopped_ind_handler+0x8>
10006e70:	2000      	movs	r0, #0
10006e72:	b00b      	add	sp, #44	; 0x2c
10006e74:	bd30      	pop	{r4, r5, pc}
10006e76:	4b1b      	ldr	r3, [pc, #108]	; (10006ee4 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10006e78:	78a0      	ldrb	r0, [r4, #2]
10006e7a:	7825      	ldrb	r5, [r4, #0]
10006e7c:	4798      	blx	r3
10006e7e:	a901      	add	r1, sp, #4
10006e80:	78e3      	ldrb	r3, [r4, #3]
10006e82:	80c8      	strh	r0, [r1, #6]
10006e84:	2000      	movs	r0, #0
10006e86:	710d      	strb	r5, [r1, #4]
10006e88:	720b      	strb	r3, [r1, #8]
10006e8a:	4b17      	ldr	r3, [pc, #92]	; (10006ee8 <ble_gapm_activity_stopped_ind_handler+0xa4>)
10006e8c:	4798      	blx	r3
10006e8e:	e7ef      	b.n	10006e70 <ble_gapm_activity_stopped_ind_handler+0x2c>
10006e90:	78a0      	ldrb	r0, [r4, #2]
10006e92:	4b14      	ldr	r3, [pc, #80]	; (10006ee4 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10006e94:	7825      	ldrb	r5, [r4, #0]
10006e96:	4798      	blx	r3
10006e98:	0004      	movs	r4, r0
10006e9a:	2009      	movs	r0, #9
10006e9c:	2100      	movs	r1, #0
10006e9e:	4b13      	ldr	r3, [pc, #76]	; (10006eec <ble_gapm_activity_stopped_ind_handler+0xa8>)
10006ea0:	2205      	movs	r2, #5
10006ea2:	4468      	add	r0, sp
10006ea4:	4798      	blx	r3
10006ea6:	466b      	mov	r3, sp
10006ea8:	2001      	movs	r0, #1
10006eaa:	721d      	strb	r5, [r3, #8]
10006eac:	815c      	strh	r4, [r3, #10]
10006eae:	a901      	add	r1, sp, #4
10006eb0:	e7eb      	b.n	10006e8a <ble_gapm_activity_stopped_ind_handler+0x46>
10006eb2:	78a0      	ldrb	r0, [r4, #2]
10006eb4:	4b0b      	ldr	r3, [pc, #44]	; (10006ee4 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10006eb6:	7825      	ldrb	r5, [r4, #0]
10006eb8:	4798      	blx	r3
10006eba:	0004      	movs	r4, r0
10006ebc:	2009      	movs	r0, #9
10006ebe:	2100      	movs	r1, #0
10006ec0:	4b0a      	ldr	r3, [pc, #40]	; (10006eec <ble_gapm_activity_stopped_ind_handler+0xa8>)
10006ec2:	2205      	movs	r2, #5
10006ec4:	4468      	add	r0, sp
10006ec6:	4798      	blx	r3
10006ec8:	466b      	mov	r3, sp
10006eca:	2002      	movs	r0, #2
10006ecc:	721d      	strb	r5, [r3, #8]
10006ece:	815c      	strh	r4, [r3, #10]
10006ed0:	a901      	add	r1, sp, #4
10006ed2:	e7da      	b.n	10006e8a <ble_gapm_activity_stopped_ind_handler+0x46>
10006ed4:	4a06      	ldr	r2, [pc, #24]	; (10006ef0 <ble_gapm_activity_stopped_ind_handler+0xac>)
10006ed6:	4907      	ldr	r1, [pc, #28]	; (10006ef4 <ble_gapm_activity_stopped_ind_handler+0xb0>)
10006ed8:	4807      	ldr	r0, [pc, #28]	; (10006ef8 <ble_gapm_activity_stopped_ind_handler+0xb4>)
10006eda:	4b08      	ldr	r3, [pc, #32]	; (10006efc <ble_gapm_activity_stopped_ind_handler+0xb8>)
10006edc:	4798      	blx	r3
10006ede:	e7c7      	b.n	10006e70 <ble_gapm_activity_stopped_ind_handler+0x2c>
10006ee0:	20015104 	.word	0x20015104
10006ee4:	10008ad1 	.word	0x10008ad1
10006ee8:	100068d1 	.word	0x100068d1
10006eec:	00005859 	.word	0x00005859
10006ef0:	00000617 	.word	0x00000617
10006ef4:	1000b114 	.word	0x1000b114
10006ef8:	1000b4d2 	.word	0x1000b4d2
10006efc:	00006609 	.word	0x00006609

10006f00 <ble_gap_evt_func_reg>:
10006f00:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10006f02:	0005      	movs	r5, r0
10006f04:	0016      	movs	r6, r2
10006f06:	4f0c      	ldr	r7, [pc, #48]	; (10006f38 <ble_gap_evt_func_reg+0x38>)
10006f08:	9101      	str	r1, [sp, #4]
10006f0a:	683c      	ldr	r4, [r7, #0]
10006f0c:	2c00      	cmp	r4, #0
10006f0e:	d10d      	bne.n	10006f2c <ble_gap_evt_func_reg+0x2c>
10006f10:	2102      	movs	r1, #2
10006f12:	4b0a      	ldr	r3, [pc, #40]	; (10006f3c <ble_gap_evt_func_reg+0x3c>)
10006f14:	200c      	movs	r0, #12
10006f16:	4798      	blx	r3
10006f18:	9b01      	ldr	r3, [sp, #4]
10006f1a:	6046      	str	r6, [r0, #4]
10006f1c:	7245      	strb	r5, [r0, #9]
10006f1e:	0002      	movs	r2, r0
10006f20:	7203      	strb	r3, [r0, #8]
10006f22:	0021      	movs	r1, r4
10006f24:	0038      	movs	r0, r7
10006f26:	4b06      	ldr	r3, [pc, #24]	; (10006f40 <ble_gap_evt_func_reg+0x40>)
10006f28:	4798      	blx	r3
10006f2a:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10006f2c:	7a63      	ldrb	r3, [r4, #9]
10006f2e:	42ab      	cmp	r3, r5
10006f30:	d2ee      	bcs.n	10006f10 <ble_gap_evt_func_reg+0x10>
10006f32:	6824      	ldr	r4, [r4, #0]
10006f34:	e7ea      	b.n	10006f0c <ble_gap_evt_func_reg+0xc>
10006f36:	46c0      	nop			; (mov r8, r8)
10006f38:	200150dc 	.word	0x200150dc
10006f3c:	000013b9 	.word	0x000013b9
10006f40:	0000282d 	.word	0x0000282d

10006f44 <ble_gapc_update_param>:
10006f44:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10006f46:	2709      	movs	r7, #9
10006f48:	000d      	movs	r5, r1
10006f4a:	0201      	lsls	r1, r0, #8
10006f4c:	4c0e      	ldr	r4, [pc, #56]	; (10006f88 <ble_gapc_update_param+0x44>)
10006f4e:	9301      	str	r3, [sp, #4]
10006f50:	0016      	movs	r6, r2
10006f52:	230e      	movs	r3, #14
10006f54:	2204      	movs	r2, #4
10006f56:	480d      	ldr	r0, [pc, #52]	; (10006f8c <ble_gapc_update_param+0x48>)
10006f58:	4339      	orrs	r1, r7
10006f5a:	47a0      	blx	r4
10006f5c:	7007      	strb	r7, [r0, #0]
10006f5e:	882b      	ldrh	r3, [r5, #0]
10006f60:	0004      	movs	r4, r0
10006f62:	8043      	strh	r3, [r0, #2]
10006f64:	886b      	ldrh	r3, [r5, #2]
10006f66:	8083      	strh	r3, [r0, #4]
10006f68:	88ab      	ldrh	r3, [r5, #4]
10006f6a:	80c3      	strh	r3, [r0, #6]
10006f6c:	88eb      	ldrh	r3, [r5, #6]
10006f6e:	8103      	strh	r3, [r0, #8]
10006f70:	2e00      	cmp	r6, #0
10006f72:	d005      	beq.n	10006f80 <ble_gapc_update_param+0x3c>
10006f74:	2300      	movs	r3, #0
10006f76:	0039      	movs	r1, r7
10006f78:	0030      	movs	r0, r6
10006f7a:	9a01      	ldr	r2, [sp, #4]
10006f7c:	4d04      	ldr	r5, [pc, #16]	; (10006f90 <ble_gapc_update_param+0x4c>)
10006f7e:	47a8      	blx	r5
10006f80:	0020      	movs	r0, r4
10006f82:	4b04      	ldr	r3, [pc, #16]	; (10006f94 <ble_gapc_update_param+0x50>)
10006f84:	4798      	blx	r3
10006f86:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10006f88:	00001171 	.word	0x00001171
10006f8c:	00000e0e 	.word	0x00000e0e
10006f90:	100068a1 	.word	0x100068a1
10006f94:	000011a9 	.word	0x000011a9

10006f98 <ble_gapc_disconnect>:
10006f98:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10006f9a:	000f      	movs	r7, r1
10006f9c:	2109      	movs	r1, #9
10006f9e:	0200      	lsls	r0, r0, #8
10006fa0:	4301      	orrs	r1, r0
10006fa2:	4c0d      	ldr	r4, [pc, #52]	; (10006fd8 <ble_gapc_disconnect+0x40>)
10006fa4:	9301      	str	r3, [sp, #4]
10006fa6:	0015      	movs	r5, r2
10006fa8:	2302      	movs	r3, #2
10006faa:	2204      	movs	r2, #4
10006fac:	480b      	ldr	r0, [pc, #44]	; (10006fdc <ble_gapc_disconnect+0x44>)
10006fae:	47a0      	blx	r4
10006fb0:	2601      	movs	r6, #1
10006fb2:	0004      	movs	r4, r0
10006fb4:	7006      	strb	r6, [r0, #0]
10006fb6:	4b0a      	ldr	r3, [pc, #40]	; (10006fe0 <ble_gapc_disconnect+0x48>)
10006fb8:	0038      	movs	r0, r7
10006fba:	4798      	blx	r3
10006fbc:	7060      	strb	r0, [r4, #1]
10006fbe:	2d00      	cmp	r5, #0
10006fc0:	d005      	beq.n	10006fce <ble_gapc_disconnect+0x36>
10006fc2:	0028      	movs	r0, r5
10006fc4:	2300      	movs	r3, #0
10006fc6:	0031      	movs	r1, r6
10006fc8:	9a01      	ldr	r2, [sp, #4]
10006fca:	4d06      	ldr	r5, [pc, #24]	; (10006fe4 <ble_gapc_disconnect+0x4c>)
10006fcc:	47a8      	blx	r5
10006fce:	0020      	movs	r0, r4
10006fd0:	4b05      	ldr	r3, [pc, #20]	; (10006fe8 <ble_gapc_disconnect+0x50>)
10006fd2:	4798      	blx	r3
10006fd4:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10006fd6:	46c0      	nop			; (mov r8, r8)
10006fd8:	00001171 	.word	0x00001171
10006fdc:	00000e04 	.word	0x00000e04
10006fe0:	100090b5 	.word	0x100090b5
10006fe4:	100068a1 	.word	0x100068a1
10006fe8:	000011a9 	.word	0x000011a9

10006fec <ble_gapc_param_update_cfm>:
10006fec:	b570      	push	{r4, r5, r6, lr}
10006fee:	000d      	movs	r5, r1
10006ff0:	2109      	movs	r1, #9
10006ff2:	0200      	lsls	r0, r0, #8
10006ff4:	2204      	movs	r2, #4
10006ff6:	4301      	orrs	r1, r0
10006ff8:	20e1      	movs	r0, #225	; 0xe1
10006ffa:	2306      	movs	r3, #6
10006ffc:	4090      	lsls	r0, r2
10006ffe:	4c05      	ldr	r4, [pc, #20]	; (10007014 <ble_gapc_param_update_cfm+0x28>)
10007000:	47a0      	blx	r4
10007002:	0004      	movs	r4, r0
10007004:	0029      	movs	r1, r5
10007006:	2206      	movs	r2, #6
10007008:	4b03      	ldr	r3, [pc, #12]	; (10007018 <ble_gapc_param_update_cfm+0x2c>)
1000700a:	4798      	blx	r3
1000700c:	0020      	movs	r0, r4
1000700e:	4b03      	ldr	r3, [pc, #12]	; (1000701c <ble_gapc_param_update_cfm+0x30>)
10007010:	4798      	blx	r3
10007012:	bd70      	pop	{r4, r5, r6, pc}
10007014:	00001171 	.word	0x00001171
10007018:	00005821 	.word	0x00005821
1000701c:	000011a9 	.word	0x000011a9

10007020 <ble_gapc_get_dev_info_cfm>:
10007020:	b570      	push	{r4, r5, r6, lr}
10007022:	000d      	movs	r5, r1
10007024:	2109      	movs	r1, #9
10007026:	782b      	ldrb	r3, [r5, #0]
10007028:	0200      	lsls	r0, r0, #8
1000702a:	4c25      	ldr	r4, [pc, #148]	; (100070c0 <ble_gapc_get_dev_info_cfm+0xa0>)
1000702c:	4301      	orrs	r1, r0
1000702e:	2b00      	cmp	r3, #0
10007030:	d125      	bne.n	1000707e <ble_gapc_get_dev_info_cfm+0x5e>
10007032:	892b      	ldrh	r3, [r5, #8]
10007034:	2b00      	cmp	r3, #0
10007036:	d022      	beq.n	1000707e <ble_gapc_get_dev_info_cfm+0x5e>
10007038:	330a      	adds	r3, #10
1000703a:	b29b      	uxth	r3, r3
1000703c:	2204      	movs	r2, #4
1000703e:	4821      	ldr	r0, [pc, #132]	; (100070c4 <ble_gapc_get_dev_info_cfm+0xa4>)
10007040:	47a0      	blx	r4
10007042:	0004      	movs	r4, r0
10007044:	7828      	ldrb	r0, [r5, #0]
10007046:	2801      	cmp	r0, #1
10007048:	d010      	beq.n	1000706c <ble_gapc_get_dev_info_cfm+0x4c>
1000704a:	2802      	cmp	r0, #2
1000704c:	d019      	beq.n	10007082 <ble_gapc_get_dev_info_cfm+0x62>
1000704e:	2800      	cmp	r0, #0
10007050:	d11d      	bne.n	1000708e <ble_gapc_get_dev_info_cfm+0x6e>
10007052:	892a      	ldrh	r2, [r5, #8]
10007054:	2a00      	cmp	r2, #0
10007056:	d004      	beq.n	10007062 <ble_gapc_get_dev_info_cfm+0x42>
10007058:	0029      	movs	r1, r5
1000705a:	4b1b      	ldr	r3, [pc, #108]	; (100070c8 <ble_gapc_get_dev_info_cfm+0xa8>)
1000705c:	1d20      	adds	r0, r4, #4
1000705e:	310a      	adds	r1, #10
10007060:	4798      	blx	r3
10007062:	892a      	ldrh	r2, [r5, #8]
10007064:	4919      	ldr	r1, [pc, #100]	; (100070cc <ble_gapc_get_dev_info_cfm+0xac>)
10007066:	481a      	ldr	r0, [pc, #104]	; (100070d0 <ble_gapc_get_dev_info_cfm+0xb0>)
10007068:	4b1a      	ldr	r3, [pc, #104]	; (100070d4 <ble_gapc_get_dev_info_cfm+0xb4>)
1000706a:	4798      	blx	r3
1000706c:	892b      	ldrh	r3, [r5, #8]
1000706e:	8063      	strh	r3, [r4, #2]
10007070:	7828      	ldrb	r0, [r5, #0]
10007072:	2803      	cmp	r0, #3
10007074:	d81c      	bhi.n	100070b0 <ble_gapc_get_dev_info_cfm+0x90>
10007076:	f002 f8bf 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
1000707a:	1120      	.short	0x1120
1000707c:	1917      	.short	0x1917
1000707e:	230a      	movs	r3, #10
10007080:	e7dc      	b.n	1000703c <ble_gapc_get_dev_info_cfm+0x1c>
10007082:	2208      	movs	r2, #8
10007084:	4b10      	ldr	r3, [pc, #64]	; (100070c8 <ble_gapc_get_dev_info_cfm+0xa8>)
10007086:	1ca0      	adds	r0, r4, #2
10007088:	18a9      	adds	r1, r5, r2
1000708a:	4798      	blx	r3
1000708c:	e7f0      	b.n	10007070 <ble_gapc_get_dev_info_cfm+0x50>
1000708e:	2388      	movs	r3, #136	; 0x88
10007090:	2100      	movs	r1, #0
10007092:	4a11      	ldr	r2, [pc, #68]	; (100070d8 <ble_gapc_get_dev_info_cfm+0xb8>)
10007094:	4e11      	ldr	r6, [pc, #68]	; (100070dc <ble_gapc_get_dev_info_cfm+0xbc>)
10007096:	00db      	lsls	r3, r3, #3
10007098:	47b0      	blx	r6
1000709a:	e7e9      	b.n	10007070 <ble_gapc_get_dev_info_cfm+0x50>
1000709c:	2301      	movs	r3, #1
1000709e:	7023      	strb	r3, [r4, #0]
100070a0:	0020      	movs	r0, r4
100070a2:	4b0f      	ldr	r3, [pc, #60]	; (100070e0 <ble_gapc_get_dev_info_cfm+0xc0>)
100070a4:	4798      	blx	r3
100070a6:	bd70      	pop	{r4, r5, r6, pc}
100070a8:	2302      	movs	r3, #2
100070aa:	e7f8      	b.n	1000709e <ble_gapc_get_dev_info_cfm+0x7e>
100070ac:	2303      	movs	r3, #3
100070ae:	e7f6      	b.n	1000709e <ble_gapc_get_dev_info_cfm+0x7e>
100070b0:	2100      	movs	r1, #0
100070b2:	4b0c      	ldr	r3, [pc, #48]	; (100070e4 <ble_gapc_get_dev_info_cfm+0xc4>)
100070b4:	4a08      	ldr	r2, [pc, #32]	; (100070d8 <ble_gapc_get_dev_info_cfm+0xb8>)
100070b6:	4d09      	ldr	r5, [pc, #36]	; (100070dc <ble_gapc_get_dev_info_cfm+0xbc>)
100070b8:	47a8      	blx	r5
100070ba:	2300      	movs	r3, #0
100070bc:	e7ef      	b.n	1000709e <ble_gapc_get_dev_info_cfm+0x7e>
100070be:	46c0      	nop			; (mov r8, r8)
100070c0:	00001171 	.word	0x00001171
100070c4:	00000e0b 	.word	0x00000e0b
100070c8:	00005821 	.word	0x00005821
100070cc:	1000b1e1 	.word	0x1000b1e1
100070d0:	1000b19e 	.word	0x1000b19e
100070d4:	000066b1 	.word	0x000066b1
100070d8:	1000b114 	.word	0x1000b114
100070dc:	00006641 	.word	0x00006641
100070e0:	000011a9 	.word	0x000011a9
100070e4:	000002b5 	.word	0x000002b5

100070e8 <ble_gapm_reset_cmd>:
100070e8:	2201      	movs	r2, #1
100070ea:	b570      	push	{r4, r5, r6, lr}
100070ec:	0014      	movs	r4, r2
100070ee:	4b0f      	ldr	r3, [pc, #60]	; (1000712c <ble_gapm_reset_cmd+0x44>)
100070f0:	000e      	movs	r6, r1
100070f2:	7819      	ldrb	r1, [r3, #0]
100070f4:	0005      	movs	r5, r0
100070f6:	480e      	ldr	r0, [pc, #56]	; (10007130 <ble_gapm_reset_cmd+0x48>)
100070f8:	404c      	eors	r4, r1
100070fa:	6004      	str	r4, [r0, #0]
100070fc:	2900      	cmp	r1, #0
100070fe:	d100      	bne.n	10007102 <ble_gapm_reset_cmd+0x1a>
10007100:	701a      	strb	r2, [r3, #0]
10007102:	2108      	movs	r1, #8
10007104:	4c0b      	ldr	r4, [pc, #44]	; (10007134 <ble_gapm_reset_cmd+0x4c>)
10007106:	2301      	movs	r3, #1
10007108:	2204      	movs	r2, #4
1000710a:	480b      	ldr	r0, [pc, #44]	; (10007138 <ble_gapm_reset_cmd+0x50>)
1000710c:	47a0      	blx	r4
1000710e:	2101      	movs	r1, #1
10007110:	0004      	movs	r4, r0
10007112:	7001      	strb	r1, [r0, #0]
10007114:	2d00      	cmp	r5, #0
10007116:	d004      	beq.n	10007122 <ble_gapm_reset_cmd+0x3a>
10007118:	0028      	movs	r0, r5
1000711a:	2300      	movs	r3, #0
1000711c:	0032      	movs	r2, r6
1000711e:	4d07      	ldr	r5, [pc, #28]	; (1000713c <ble_gapm_reset_cmd+0x54>)
10007120:	47a8      	blx	r5
10007122:	0020      	movs	r0, r4
10007124:	4b06      	ldr	r3, [pc, #24]	; (10007140 <ble_gapm_reset_cmd+0x58>)
10007126:	4798      	blx	r3
10007128:	bd70      	pop	{r4, r5, r6, pc}
1000712a:	46c0      	nop			; (mov r8, r8)
1000712c:	20015130 	.word	0x20015130
10007130:	20000ff8 	.word	0x20000ff8
10007134:	00001171 	.word	0x00001171
10007138:	00000d02 	.word	0x00000d02
1000713c:	100063a5 	.word	0x100063a5
10007140:	000011a9 	.word	0x000011a9

10007144 <ble_gapm_set_device_config>:
10007144:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10007146:	2334      	movs	r3, #52	; 0x34
10007148:	0005      	movs	r5, r0
1000714a:	4c32      	ldr	r4, [pc, #200]	; (10007214 <ble_gapm_set_device_config+0xd0>)
1000714c:	9201      	str	r2, [sp, #4]
1000714e:	000f      	movs	r7, r1
10007150:	2204      	movs	r2, #4
10007152:	2108      	movs	r1, #8
10007154:	4830      	ldr	r0, [pc, #192]	; (10007218 <ble_gapm_set_device_config+0xd4>)
10007156:	47a0      	blx	r4
10007158:	2303      	movs	r3, #3
1000715a:	0004      	movs	r4, r0
1000715c:	7003      	strb	r3, [r0, #0]
1000715e:	782b      	ldrb	r3, [r5, #0]
10007160:	4e2e      	ldr	r6, [pc, #184]	; (1000721c <ble_gapm_set_device_config+0xd8>)
10007162:	7043      	strb	r3, [r0, #1]
10007164:	886b      	ldrh	r3, [r5, #2]
10007166:	2206      	movs	r2, #6
10007168:	8043      	strh	r3, [r0, #2]
1000716a:	1d29      	adds	r1, r5, #4
1000716c:	3004      	adds	r0, #4
1000716e:	47b0      	blx	r6
10007170:	0020      	movs	r0, r4
10007172:	0029      	movs	r1, r5
10007174:	2210      	movs	r2, #16
10007176:	300a      	adds	r0, #10
10007178:	310a      	adds	r1, #10
1000717a:	47b0      	blx	r6
1000717c:	22e0      	movs	r2, #224	; 0xe0
1000717e:	7eab      	ldrb	r3, [r5, #26]
10007180:	0112      	lsls	r2, r2, #4
10007182:	76a3      	strb	r3, [r4, #26]
10007184:	7eeb      	ldrb	r3, [r5, #27]
10007186:	76e3      	strb	r3, [r4, #27]
10007188:	8bab      	ldrh	r3, [r5, #28]
1000718a:	83a3      	strh	r3, [r4, #28]
1000718c:	8beb      	ldrh	r3, [r5, #30]
1000718e:	83e3      	strh	r3, [r4, #30]
10007190:	8c2e      	ldrh	r6, [r5, #32]
10007192:	4216      	tst	r6, r2
10007194:	d008      	beq.n	100071a8 <ble_gapm_set_device_config+0x64>
10007196:	0031      	movs	r1, r6
10007198:	4b21      	ldr	r3, [pc, #132]	; (10007220 <ble_gapm_set_device_config+0xdc>)
1000719a:	4822      	ldr	r0, [pc, #136]	; (10007224 <ble_gapm_set_device_config+0xe0>)
1000719c:	4798      	blx	r3
1000719e:	4a22      	ldr	r2, [pc, #136]	; (10007228 <ble_gapm_set_device_config+0xe4>)
100071a0:	4922      	ldr	r1, [pc, #136]	; (1000722c <ble_gapm_set_device_config+0xe8>)
100071a2:	4823      	ldr	r0, [pc, #140]	; (10007230 <ble_gapm_set_device_config+0xec>)
100071a4:	4b23      	ldr	r3, [pc, #140]	; (10007234 <ble_gapm_set_device_config+0xf0>)
100071a6:	4798      	blx	r3
100071a8:	233f      	movs	r3, #63	; 0x3f
100071aa:	2240      	movs	r2, #64	; 0x40
100071ac:	4033      	ands	r3, r6
100071ae:	4216      	tst	r6, r2
100071b0:	d000      	beq.n	100071b4 <ble_gapm_set_device_config+0x70>
100071b2:	4313      	orrs	r3, r2
100071b4:	2280      	movs	r2, #128	; 0x80
100071b6:	4216      	tst	r6, r2
100071b8:	d000      	beq.n	100071bc <ble_gapm_set_device_config+0x78>
100071ba:	4313      	orrs	r3, r2
100071bc:	8423      	strh	r3, [r4, #32]
100071be:	8c6b      	ldrh	r3, [r5, #34]	; 0x22
100071c0:	8463      	strh	r3, [r4, #34]	; 0x22
100071c2:	8cab      	ldrh	r3, [r5, #36]	; 0x24
100071c4:	84a3      	strh	r3, [r4, #36]	; 0x24
100071c6:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
100071c8:	84e3      	strh	r3, [r4, #38]	; 0x26
100071ca:	8d2b      	ldrh	r3, [r5, #40]	; 0x28
100071cc:	8523      	strh	r3, [r4, #40]	; 0x28
100071ce:	002b      	movs	r3, r5
100071d0:	332a      	adds	r3, #42	; 0x2a
100071d2:	781a      	ldrb	r2, [r3, #0]
100071d4:	0023      	movs	r3, r4
100071d6:	332a      	adds	r3, #42	; 0x2a
100071d8:	701a      	strb	r2, [r3, #0]
100071da:	2300      	movs	r3, #0
100071dc:	002a      	movs	r2, r5
100071de:	85a3      	strh	r3, [r4, #44]	; 0x2c
100071e0:	322b      	adds	r2, #43	; 0x2b
100071e2:	7811      	ldrb	r1, [r2, #0]
100071e4:	0022      	movs	r2, r4
100071e6:	322e      	adds	r2, #46	; 0x2e
100071e8:	7011      	strb	r1, [r2, #0]
100071ea:	002a      	movs	r2, r5
100071ec:	322c      	adds	r2, #44	; 0x2c
100071ee:	7811      	ldrb	r1, [r2, #0]
100071f0:	0022      	movs	r2, r4
100071f2:	322f      	adds	r2, #47	; 0x2f
100071f4:	7011      	strb	r1, [r2, #0]
100071f6:	8dea      	ldrh	r2, [r5, #46]	; 0x2e
100071f8:	8622      	strh	r2, [r4, #48]	; 0x30
100071fa:	8e2a      	ldrh	r2, [r5, #48]	; 0x30
100071fc:	8662      	strh	r2, [r4, #50]	; 0x32
100071fe:	429f      	cmp	r7, r3
10007200:	d004      	beq.n	1000720c <ble_gapm_set_device_config+0xc8>
10007202:	2103      	movs	r1, #3
10007204:	0038      	movs	r0, r7
10007206:	9a01      	ldr	r2, [sp, #4]
10007208:	4d0b      	ldr	r5, [pc, #44]	; (10007238 <ble_gapm_set_device_config+0xf4>)
1000720a:	47a8      	blx	r5
1000720c:	0020      	movs	r0, r4
1000720e:	4b0b      	ldr	r3, [pc, #44]	; (1000723c <ble_gapm_set_device_config+0xf8>)
10007210:	4798      	blx	r3
10007212:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10007214:	00001171 	.word	0x00001171
10007218:	00000d04 	.word	0x00000d04
1000721c:	00005821 	.word	0x00005821
10007220:	000066b1 	.word	0x000066b1
10007224:	1000b1ae 	.word	0x1000b1ae
10007228:	000004e1 	.word	0x000004e1
1000722c:	1000b114 	.word	0x1000b114
10007230:	1000b16c 	.word	0x1000b16c
10007234:	00006609 	.word	0x00006609
10007238:	100063a5 	.word	0x100063a5
1000723c:	000011a9 	.word	0x000011a9

10007240 <ble_gapm_set_irk>:
10007240:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10007242:	2311      	movs	r3, #17
10007244:	0006      	movs	r6, r0
10007246:	000d      	movs	r5, r1
10007248:	4c0c      	ldr	r4, [pc, #48]	; (1000727c <ble_gapm_set_irk+0x3c>)
1000724a:	2108      	movs	r1, #8
1000724c:	9201      	str	r2, [sp, #4]
1000724e:	480c      	ldr	r0, [pc, #48]	; (10007280 <ble_gapm_set_irk+0x40>)
10007250:	2204      	movs	r2, #4
10007252:	47a0      	blx	r4
10007254:	2728      	movs	r7, #40	; 0x28
10007256:	0004      	movs	r4, r0
10007258:	7007      	strb	r7, [r0, #0]
1000725a:	2210      	movs	r2, #16
1000725c:	0031      	movs	r1, r6
1000725e:	4b09      	ldr	r3, [pc, #36]	; (10007284 <ble_gapm_set_irk+0x44>)
10007260:	3001      	adds	r0, #1
10007262:	4798      	blx	r3
10007264:	2d00      	cmp	r5, #0
10007266:	d005      	beq.n	10007274 <ble_gapm_set_irk+0x34>
10007268:	0028      	movs	r0, r5
1000726a:	2300      	movs	r3, #0
1000726c:	0039      	movs	r1, r7
1000726e:	9a01      	ldr	r2, [sp, #4]
10007270:	4d05      	ldr	r5, [pc, #20]	; (10007288 <ble_gapm_set_irk+0x48>)
10007272:	47a8      	blx	r5
10007274:	0020      	movs	r0, r4
10007276:	4b05      	ldr	r3, [pc, #20]	; (1000728c <ble_gapm_set_irk+0x4c>)
10007278:	4798      	blx	r3
1000727a:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000727c:	00001171 	.word	0x00001171
10007280:	00000d23 	.word	0x00000d23
10007284:	00005821 	.word	0x00005821
10007288:	100063a5 	.word	0x100063a5
1000728c:	000011a9 	.word	0x000011a9

10007290 <ble_gapm_gen_rand>:
10007290:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10007292:	2204      	movs	r2, #4
10007294:	4c0c      	ldr	r4, [pc, #48]	; (100072c8 <ble_gapm_gen_rand+0x38>)
10007296:	0005      	movs	r5, r0
10007298:	000e      	movs	r6, r1
1000729a:	2301      	movs	r3, #1
1000729c:	2108      	movs	r1, #8
1000729e:	480b      	ldr	r0, [pc, #44]	; (100072cc <ble_gapm_gen_rand+0x3c>)
100072a0:	47a0      	blx	r4
100072a2:	271a      	movs	r7, #26
100072a4:	0004      	movs	r4, r0
100072a6:	7007      	strb	r7, [r0, #0]
100072a8:	2d00      	cmp	r5, #0
100072aa:	d008      	beq.n	100072be <ble_gapm_gen_rand+0x2e>
100072ac:	4b08      	ldr	r3, [pc, #32]	; (100072d0 <ble_gapm_gen_rand+0x40>)
100072ae:	2000      	movs	r0, #0
100072b0:	4798      	blx	r3
100072b2:	0032      	movs	r2, r6
100072b4:	0003      	movs	r3, r0
100072b6:	0039      	movs	r1, r7
100072b8:	0028      	movs	r0, r5
100072ba:	4d06      	ldr	r5, [pc, #24]	; (100072d4 <ble_gapm_gen_rand+0x44>)
100072bc:	47a8      	blx	r5
100072be:	0020      	movs	r0, r4
100072c0:	4b05      	ldr	r3, [pc, #20]	; (100072d8 <ble_gapm_gen_rand+0x48>)
100072c2:	4798      	blx	r3
100072c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100072c6:	46c0      	nop			; (mov r8, r8)
100072c8:	00001171 	.word	0x00001171
100072cc:	00000d19 	.word	0x00000d19
100072d0:	10006395 	.word	0x10006395
100072d4:	100063a5 	.word	0x100063a5
100072d8:	000011a9 	.word	0x000011a9

100072dc <ble_gapm_profile_task_add_ex>:
100072dc:	3208      	adds	r2, #8
100072de:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100072e0:	0006      	movs	r6, r0
100072e2:	000f      	movs	r7, r1
100072e4:	4c13      	ldr	r4, [pc, #76]	; (10007334 <ble_gapm_profile_task_add_ex+0x58>)
100072e6:	001d      	movs	r5, r3
100072e8:	2108      	movs	r1, #8
100072ea:	b293      	uxth	r3, r2
100072ec:	4812      	ldr	r0, [pc, #72]	; (10007338 <ble_gapm_profile_task_add_ex+0x5c>)
100072ee:	2204      	movs	r2, #4
100072f0:	47a0      	blx	r4
100072f2:	231b      	movs	r3, #27
100072f4:	7003      	strb	r3, [r0, #0]
100072f6:	3b17      	subs	r3, #23
100072f8:	8083      	strh	r3, [r0, #4]
100072fa:	9b08      	ldr	r3, [sp, #32]
100072fc:	7047      	strb	r7, [r0, #1]
100072fe:	8046      	strh	r6, [r0, #2]
10007300:	881b      	ldrh	r3, [r3, #0]
10007302:	0004      	movs	r4, r0
10007304:	80c3      	strh	r3, [r0, #6]
10007306:	2d00      	cmp	r5, #0
10007308:	d002      	beq.n	10007310 <ble_gapm_profile_task_add_ex+0x34>
1000730a:	9907      	ldr	r1, [sp, #28]
1000730c:	3008      	adds	r0, #8
1000730e:	47a8      	blx	r5
10007310:	9b06      	ldr	r3, [sp, #24]
10007312:	2b00      	cmp	r3, #0
10007314:	d009      	beq.n	1000732a <ble_gapm_profile_task_add_ex+0x4e>
10007316:	4b09      	ldr	r3, [pc, #36]	; (1000733c <ble_gapm_profile_task_add_ex+0x60>)
10007318:	2000      	movs	r0, #0
1000731a:	7825      	ldrb	r5, [r4, #0]
1000731c:	4798      	blx	r3
1000731e:	0029      	movs	r1, r5
10007320:	0003      	movs	r3, r0
10007322:	9a07      	ldr	r2, [sp, #28]
10007324:	9806      	ldr	r0, [sp, #24]
10007326:	4d06      	ldr	r5, [pc, #24]	; (10007340 <ble_gapm_profile_task_add_ex+0x64>)
10007328:	47a8      	blx	r5
1000732a:	0020      	movs	r0, r4
1000732c:	4b05      	ldr	r3, [pc, #20]	; (10007344 <ble_gapm_profile_task_add_ex+0x68>)
1000732e:	4798      	blx	r3
10007330:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10007332:	46c0      	nop			; (mov r8, r8)
10007334:	00001171 	.word	0x00001171
10007338:	00000d1b 	.word	0x00000d1b
1000733c:	10006395 	.word	0x10006395
10007340:	100063a5 	.word	0x100063a5
10007344:	000011a9 	.word	0x000011a9

10007348 <ble_gapm_profile_task_add>:
10007348:	b530      	push	{r4, r5, lr}
1000734a:	2500      	movs	r5, #0
1000734c:	b087      	sub	sp, #28
1000734e:	ac05      	add	r4, sp, #20
10007350:	8025      	strh	r5, [r4, #0]
10007352:	9402      	str	r4, [sp, #8]
10007354:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
10007356:	9401      	str	r4, [sp, #4]
10007358:	9c0a      	ldr	r4, [sp, #40]	; 0x28
1000735a:	9400      	str	r4, [sp, #0]
1000735c:	4c01      	ldr	r4, [pc, #4]	; (10007364 <ble_gapm_profile_task_add+0x1c>)
1000735e:	47a0      	blx	r4
10007360:	b007      	add	sp, #28
10007362:	bd30      	pop	{r4, r5, pc}
10007364:	100072dd 	.word	0x100072dd

10007368 <ble_gapm_create_adv_activity>:
10007368:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000736a:	0005      	movs	r5, r0
1000736c:	0016      	movs	r6, r2
1000736e:	20da      	movs	r0, #218	; 0xda
10007370:	2204      	movs	r2, #4
10007372:	9100      	str	r1, [sp, #0]
10007374:	4090      	lsls	r0, r2
10007376:	9301      	str	r3, [sp, #4]
10007378:	2108      	movs	r1, #8
1000737a:	2328      	movs	r3, #40	; 0x28
1000737c:	4c0d      	ldr	r4, [pc, #52]	; (100073b4 <ble_gapm_create_adv_activity+0x4c>)
1000737e:	47a0      	blx	r4
10007380:	27a0      	movs	r7, #160	; 0xa0
10007382:	9900      	ldr	r1, [sp, #0]
10007384:	7007      	strb	r7, [r0, #0]
10007386:	7045      	strb	r5, [r0, #1]
10007388:	1d03      	adds	r3, r0, #4
1000738a:	0004      	movs	r4, r0
1000738c:	c925      	ldmia	r1!, {r0, r2, r5}
1000738e:	c325      	stmia	r3!, {r0, r2, r5}
10007390:	c925      	ldmia	r1!, {r0, r2, r5}
10007392:	c325      	stmia	r3!, {r0, r2, r5}
10007394:	c925      	ldmia	r1!, {r0, r2, r5}
10007396:	c325      	stmia	r3!, {r0, r2, r5}
10007398:	4b07      	ldr	r3, [pc, #28]	; (100073b8 <ble_gapm_create_adv_activity+0x50>)
1000739a:	2000      	movs	r0, #0
1000739c:	4798      	blx	r3
1000739e:	0032      	movs	r2, r6
100073a0:	0039      	movs	r1, r7
100073a2:	0003      	movs	r3, r0
100073a4:	4d05      	ldr	r5, [pc, #20]	; (100073bc <ble_gapm_create_adv_activity+0x54>)
100073a6:	9801      	ldr	r0, [sp, #4]
100073a8:	47a8      	blx	r5
100073aa:	0020      	movs	r0, r4
100073ac:	4b04      	ldr	r3, [pc, #16]	; (100073c0 <ble_gapm_create_adv_activity+0x58>)
100073ae:	4798      	blx	r3
100073b0:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100073b2:	46c0      	nop			; (mov r8, r8)
100073b4:	00001171 	.word	0x00001171
100073b8:	10006395 	.word	0x10006395
100073bc:	100063a5 	.word	0x100063a5
100073c0:	000011a9 	.word	0x000011a9

100073c4 <ble_gapm_create_scan_activity>:
100073c4:	b510      	push	{r4, lr}
100073c6:	0013      	movs	r3, r2
100073c8:	000a      	movs	r2, r1
100073ca:	4c02      	ldr	r4, [pc, #8]	; (100073d4 <ble_gapm_create_scan_activity+0x10>)
100073cc:	21a1      	movs	r1, #161	; 0xa1
100073ce:	47a0      	blx	r4
100073d0:	bd10      	pop	{r4, pc}
100073d2:	46c0      	nop			; (mov r8, r8)
100073d4:	100063d5 	.word	0x100063d5

100073d8 <ble_gapm_set_adv_data>:
100073d8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100073da:	0016      	movs	r6, r2
100073dc:	9301      	str	r3, [sp, #4]
100073de:	0004      	movs	r4, r0
100073e0:	4b16      	ldr	r3, [pc, #88]	; (1000743c <ble_gapm_set_adv_data+0x64>)
100073e2:	4817      	ldr	r0, [pc, #92]	; (10007440 <ble_gapm_set_adv_data+0x68>)
100073e4:	000f      	movs	r7, r1
100073e6:	4798      	blx	r3
100073e8:	1d33      	adds	r3, r6, #4
100073ea:	2204      	movs	r2, #4
100073ec:	2108      	movs	r1, #8
100073ee:	4d15      	ldr	r5, [pc, #84]	; (10007444 <ble_gapm_set_adv_data+0x6c>)
100073f0:	b29b      	uxth	r3, r3
100073f2:	4815      	ldr	r0, [pc, #84]	; (10007448 <ble_gapm_set_adv_data+0x70>)
100073f4:	47a8      	blx	r5
100073f6:	0005      	movs	r5, r0
100073f8:	0032      	movs	r2, r6
100073fa:	9901      	ldr	r1, [sp, #4]
100073fc:	4b13      	ldr	r3, [pc, #76]	; (1000744c <ble_gapm_set_adv_data+0x74>)
100073fe:	3004      	adds	r0, #4
10007400:	4798      	blx	r3
10007402:	806e      	strh	r6, [r5, #2]
10007404:	2c02      	cmp	r4, #2
10007406:	d80f      	bhi.n	10007428 <ble_gapm_set_adv_data+0x50>
10007408:	3c57      	subs	r4, #87	; 0x57
1000740a:	b2e1      	uxtb	r1, r4
1000740c:	9b09      	ldr	r3, [sp, #36]	; 0x24
1000740e:	7029      	strb	r1, [r5, #0]
10007410:	706f      	strb	r7, [r5, #1]
10007412:	2b00      	cmp	r3, #0
10007414:	d004      	beq.n	10007420 <ble_gapm_set_adv_data+0x48>
10007416:	2300      	movs	r3, #0
10007418:	9a08      	ldr	r2, [sp, #32]
1000741a:	9809      	ldr	r0, [sp, #36]	; 0x24
1000741c:	4c0c      	ldr	r4, [pc, #48]	; (10007450 <ble_gapm_set_adv_data+0x78>)
1000741e:	47a0      	blx	r4
10007420:	0028      	movs	r0, r5
10007422:	4b0c      	ldr	r3, [pc, #48]	; (10007454 <ble_gapm_set_adv_data+0x7c>)
10007424:	4798      	blx	r3
10007426:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10007428:	23da      	movs	r3, #218	; 0xda
1000742a:	2100      	movs	r1, #0
1000742c:	0020      	movs	r0, r4
1000742e:	4a0a      	ldr	r2, [pc, #40]	; (10007458 <ble_gapm_set_adv_data+0x80>)
10007430:	4c0a      	ldr	r4, [pc, #40]	; (1000745c <ble_gapm_set_adv_data+0x84>)
10007432:	33ff      	adds	r3, #255	; 0xff
10007434:	47a0      	blx	r4
10007436:	2100      	movs	r1, #0
10007438:	e7e8      	b.n	1000740c <ble_gapm_set_adv_data+0x34>
1000743a:	46c0      	nop			; (mov r8, r8)
1000743c:	000066b1 	.word	0x000066b1
10007440:	1000b1cc 	.word	0x1000b1cc
10007444:	00001171 	.word	0x00001171
10007448:	00000da6 	.word	0x00000da6
1000744c:	00005821 	.word	0x00005821
10007450:	100063a5 	.word	0x100063a5
10007454:	000011a9 	.word	0x000011a9
10007458:	1000b114 	.word	0x1000b114
1000745c:	00006641 	.word	0x00006641

10007460 <ble_gapm_start_adv>:
10007460:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10007462:	000e      	movs	r6, r1
10007464:	001d      	movs	r5, r3
10007466:	0004      	movs	r4, r0
10007468:	4f07      	ldr	r7, [pc, #28]	; (10007488 <ble_gapm_start_adv+0x28>)
1000746a:	9201      	str	r2, [sp, #4]
1000746c:	233a      	movs	r3, #58	; 0x3a
1000746e:	2204      	movs	r2, #4
10007470:	2108      	movs	r1, #8
10007472:	4806      	ldr	r0, [pc, #24]	; (1000748c <ble_gapm_start_adv+0x2c>)
10007474:	47b8      	blx	r7
10007476:	9b01      	ldr	r3, [sp, #4]
10007478:	002a      	movs	r2, r5
1000747a:	0021      	movs	r1, r4
1000747c:	8046      	strh	r6, [r0, #2]
1000747e:	7103      	strb	r3, [r0, #4]
10007480:	4c03      	ldr	r4, [pc, #12]	; (10007490 <ble_gapm_start_adv+0x30>)
10007482:	9b08      	ldr	r3, [sp, #32]
10007484:	47a0      	blx	r4
10007486:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10007488:	00001171 	.word	0x00001171
1000748c:	00000da1 	.word	0x00000da1
10007490:	10006421 	.word	0x10006421

10007494 <ble_gapm_start_scan>:
10007494:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10007496:	000f      	movs	r7, r1
10007498:	0015      	movs	r5, r2
1000749a:	001e      	movs	r6, r3
1000749c:	9001      	str	r0, [sp, #4]
1000749e:	233a      	movs	r3, #58	; 0x3a
100074a0:	2204      	movs	r2, #4
100074a2:	2108      	movs	r1, #8
100074a4:	4c07      	ldr	r4, [pc, #28]	; (100074c4 <ble_gapm_start_scan+0x30>)
100074a6:	4808      	ldr	r0, [pc, #32]	; (100074c8 <ble_gapm_start_scan+0x34>)
100074a8:	47a0      	blx	r4
100074aa:	0004      	movs	r4, r0
100074ac:	0039      	movs	r1, r7
100074ae:	2210      	movs	r2, #16
100074b0:	4b06      	ldr	r3, [pc, #24]	; (100074cc <ble_gapm_start_scan+0x38>)
100074b2:	3002      	adds	r0, #2
100074b4:	4798      	blx	r3
100074b6:	0033      	movs	r3, r6
100074b8:	002a      	movs	r2, r5
100074ba:	0020      	movs	r0, r4
100074bc:	9901      	ldr	r1, [sp, #4]
100074be:	4c04      	ldr	r4, [pc, #16]	; (100074d0 <ble_gapm_start_scan+0x3c>)
100074c0:	47a0      	blx	r4
100074c2:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100074c4:	00001171 	.word	0x00001171
100074c8:	00000da1 	.word	0x00000da1
100074cc:	00005821 	.word	0x00005821
100074d0:	10006421 	.word	0x10006421

100074d4 <ble_gapm_stop_activity>:
100074d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100074d6:	0006      	movs	r6, r0
100074d8:	2302      	movs	r3, #2
100074da:	4c0d      	ldr	r4, [pc, #52]	; (10007510 <ble_gapm_stop_activity+0x3c>)
100074dc:	000f      	movs	r7, r1
100074de:	0015      	movs	r5, r2
100074e0:	2108      	movs	r1, #8
100074e2:	2204      	movs	r2, #4
100074e4:	480b      	ldr	r0, [pc, #44]	; (10007514 <ble_gapm_stop_activity+0x40>)
100074e6:	47a0      	blx	r4
100074e8:	23a5      	movs	r3, #165	; 0xa5
100074ea:	0004      	movs	r4, r0
100074ec:	7003      	strb	r3, [r0, #0]
100074ee:	7046      	strb	r6, [r0, #1]
100074f0:	2d00      	cmp	r5, #0
100074f2:	d009      	beq.n	10007508 <ble_gapm_stop_activity+0x34>
100074f4:	4b08      	ldr	r3, [pc, #32]	; (10007518 <ble_gapm_stop_activity+0x44>)
100074f6:	2000      	movs	r0, #0
100074f8:	4798      	blx	r3
100074fa:	7106      	strb	r6, [r0, #4]
100074fc:	0003      	movs	r3, r0
100074fe:	003a      	movs	r2, r7
10007500:	0028      	movs	r0, r5
10007502:	7821      	ldrb	r1, [r4, #0]
10007504:	4d05      	ldr	r5, [pc, #20]	; (1000751c <ble_gapm_stop_activity+0x48>)
10007506:	47a8      	blx	r5
10007508:	0020      	movs	r0, r4
1000750a:	4b05      	ldr	r3, [pc, #20]	; (10007520 <ble_gapm_stop_activity+0x4c>)
1000750c:	4798      	blx	r3
1000750e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10007510:	00001171 	.word	0x00001171
10007514:	00000da2 	.word	0x00000da2
10007518:	10006395 	.word	0x10006395
1000751c:	100063a5 	.word	0x100063a5
10007520:	000011a9 	.word	0x000011a9

10007524 <ble_gapc_reg_ind>:
10007524:	4b01      	ldr	r3, [pc, #4]	; (1000752c <ble_gapc_reg_ind+0x8>)
10007526:	6018      	str	r0, [r3, #0]
10007528:	4770      	bx	lr
1000752a:	46c0      	nop			; (mov r8, r8)
1000752c:	2001512c 	.word	0x2001512c

10007530 <ble_gapc_lower_slave_latency_locally>:
10007530:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10007532:	000f      	movs	r7, r1
10007534:	001e      	movs	r6, r3
10007536:	2109      	movs	r1, #9
10007538:	2304      	movs	r3, #4
1000753a:	0200      	lsls	r0, r0, #8
1000753c:	4301      	orrs	r1, r0
1000753e:	4c0a      	ldr	r4, [pc, #40]	; (10007568 <ble_gapc_lower_slave_latency_locally+0x38>)
10007540:	0015      	movs	r5, r2
10007542:	480a      	ldr	r0, [pc, #40]	; (1000756c <ble_gapc_lower_slave_latency_locally+0x3c>)
10007544:	001a      	movs	r2, r3
10007546:	47a0      	blx	r4
10007548:	211a      	movs	r1, #26
1000754a:	0004      	movs	r4, r0
1000754c:	7001      	strb	r1, [r0, #0]
1000754e:	8047      	strh	r7, [r0, #2]
10007550:	2d00      	cmp	r5, #0
10007552:	d004      	beq.n	1000755e <ble_gapc_lower_slave_latency_locally+0x2e>
10007554:	0028      	movs	r0, r5
10007556:	2300      	movs	r3, #0
10007558:	0032      	movs	r2, r6
1000755a:	4d05      	ldr	r5, [pc, #20]	; (10007570 <ble_gapc_lower_slave_latency_locally+0x40>)
1000755c:	47a8      	blx	r5
1000755e:	0020      	movs	r0, r4
10007560:	4b04      	ldr	r3, [pc, #16]	; (10007574 <ble_gapc_lower_slave_latency_locally+0x44>)
10007562:	4798      	blx	r3
10007564:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10007566:	46c0      	nop			; (mov r8, r8)
10007568:	00001171 	.word	0x00001171
1000756c:	00000e32 	.word	0x00000e32
10007570:	100068a1 	.word	0x100068a1
10007574:	000011a9 	.word	0x000011a9

10007578 <ble_gapm_resolv_addr>:
10007578:	b5f0      	push	{r4, r5, r6, r7, lr}
1000757a:	b087      	sub	sp, #28
1000757c:	9301      	str	r3, [sp, #4]
1000757e:	0113      	lsls	r3, r2, #4
10007580:	0014      	movs	r4, r2
10007582:	4d25      	ldr	r5, [pc, #148]	; (10007618 <ble_gapm_resolv_addr+0xa0>)
10007584:	2204      	movs	r2, #4
10007586:	9004      	str	r0, [sp, #16]
10007588:	9105      	str	r1, [sp, #20]
1000758a:	3308      	adds	r3, #8
1000758c:	2108      	movs	r1, #8
1000758e:	4823      	ldr	r0, [pc, #140]	; (1000761c <ble_gapm_resolv_addr+0xa4>)
10007590:	47a8      	blx	r5
10007592:	2317      	movs	r3, #23
10007594:	7044      	strb	r4, [r0, #1]
10007596:	7003      	strb	r3, [r0, #0]
10007598:	0005      	movs	r5, r0
1000759a:	2206      	movs	r2, #6
1000759c:	4f20      	ldr	r7, [pc, #128]	; (10007620 <ble_gapm_resolv_addr+0xa8>)
1000759e:	3002      	adds	r0, #2
100075a0:	a904      	add	r1, sp, #16
100075a2:	47b8      	blx	r7
100075a4:	2600      	movs	r6, #0
100075a6:	42b4      	cmp	r4, r6
100075a8:	dc1d      	bgt.n	100075e6 <ble_gapm_resolv_addr+0x6e>
100075aa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
100075ac:	2b00      	cmp	r3, #0
100075ae:	d015      	beq.n	100075dc <ble_gapm_resolv_addr+0x64>
100075b0:	2017      	movs	r0, #23
100075b2:	4b1c      	ldr	r3, [pc, #112]	; (10007624 <ble_gapm_resolv_addr+0xac>)
100075b4:	4360      	muls	r0, r4
100075b6:	4798      	blx	r3
100075b8:	4684      	mov	ip, r0
100075ba:	261c      	movs	r6, #28
100075bc:	4667      	mov	r7, ip
100075be:	2000      	movs	r0, #0
100075c0:	4366      	muls	r6, r4
100075c2:	3708      	adds	r7, #8
100075c4:	9602      	str	r6, [sp, #8]
100075c6:	9703      	str	r7, [sp, #12]
100075c8:	9b02      	ldr	r3, [sp, #8]
100075ca:	4283      	cmp	r3, r0
100075cc:	d117      	bne.n	100075fe <ble_gapm_resolv_addr+0x86>
100075ce:	4663      	mov	r3, ip
100075d0:	2117      	movs	r1, #23
100075d2:	715c      	strb	r4, [r3, #5]
100075d4:	9a0d      	ldr	r2, [sp, #52]	; 0x34
100075d6:	980c      	ldr	r0, [sp, #48]	; 0x30
100075d8:	4c13      	ldr	r4, [pc, #76]	; (10007628 <ble_gapm_resolv_addr+0xb0>)
100075da:	47a0      	blx	r4
100075dc:	0028      	movs	r0, r5
100075de:	4b13      	ldr	r3, [pc, #76]	; (1000762c <ble_gapm_resolv_addr+0xb4>)
100075e0:	4798      	blx	r3
100075e2:	b007      	add	sp, #28
100075e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
100075e6:	211c      	movs	r1, #28
100075e8:	0028      	movs	r0, r5
100075ea:	4371      	muls	r1, r6
100075ec:	0133      	lsls	r3, r6, #4
100075ee:	3008      	adds	r0, #8
100075f0:	18c0      	adds	r0, r0, r3
100075f2:	9b01      	ldr	r3, [sp, #4]
100075f4:	2210      	movs	r2, #16
100075f6:	1859      	adds	r1, r3, r1
100075f8:	47b8      	blx	r7
100075fa:	3601      	adds	r6, #1
100075fc:	e7d3      	b.n	100075a6 <ble_gapm_resolv_addr+0x2e>
100075fe:	9b03      	ldr	r3, [sp, #12]
10007600:	9901      	ldr	r1, [sp, #4]
10007602:	181a      	adds	r2, r3, r0
10007604:	1809      	adds	r1, r1, r0
10007606:	c9c8      	ldmia	r1!, {r3, r6, r7}
10007608:	c2c8      	stmia	r2!, {r3, r6, r7}
1000760a:	c9c8      	ldmia	r1!, {r3, r6, r7}
1000760c:	c2c8      	stmia	r2!, {r3, r6, r7}
1000760e:	6809      	ldr	r1, [r1, #0]
10007610:	301c      	adds	r0, #28
10007612:	6011      	str	r1, [r2, #0]
10007614:	e7d8      	b.n	100075c8 <ble_gapm_resolv_addr+0x50>
10007616:	46c0      	nop			; (mov r8, r8)
10007618:	00001171 	.word	0x00001171
1000761c:	00000d14 	.word	0x00000d14
10007620:	00005821 	.word	0x00005821
10007624:	10006395 	.word	0x10006395
10007628:	100063a5 	.word	0x100063a5
1000762c:	000011a9 	.word	0x000011a9

10007630 <ble_gapc_get_peer_addr>:
10007630:	b510      	push	{r4, lr}
10007632:	4b06      	ldr	r3, [pc, #24]	; (1000764c <ble_gapc_get_peer_addr+0x1c>)
10007634:	000c      	movs	r4, r1
10007636:	2101      	movs	r1, #1
10007638:	4798      	blx	r3
1000763a:	1e01      	subs	r1, r0, #0
1000763c:	d004      	beq.n	10007648 <ble_gapc_get_peer_addr+0x18>
1000763e:	2207      	movs	r2, #7
10007640:	0020      	movs	r0, r4
10007642:	4b03      	ldr	r3, [pc, #12]	; (10007650 <ble_gapc_get_peer_addr+0x20>)
10007644:	4798      	blx	r3
10007646:	2001      	movs	r0, #1
10007648:	bd10      	pop	{r4, pc}
1000764a:	46c0      	nop			; (mov r8, r8)
1000764c:	00022729 	.word	0x00022729
10007650:	00005821 	.word	0x00005821

10007654 <ble_gapc_connection_cfm>:
10007654:	b570      	push	{r4, r5, r6, lr}
10007656:	2509      	movs	r5, #9
10007658:	000c      	movs	r4, r1
1000765a:	0201      	lsls	r1, r0, #8
1000765c:	4329      	orrs	r1, r5
1000765e:	2204      	movs	r2, #4
10007660:	4e05      	ldr	r6, [pc, #20]	; (10007678 <ble_gapc_connection_cfm+0x24>)
10007662:	232c      	movs	r3, #44	; 0x2c
10007664:	4805      	ldr	r0, [pc, #20]	; (1000767c <ble_gapc_connection_cfm+0x28>)
10007666:	47b0      	blx	r6
10007668:	0003      	movs	r3, r0
1000766a:	3328      	adds	r3, #40	; 0x28
1000766c:	701d      	strb	r5, [r3, #0]
1000766e:	709c      	strb	r4, [r3, #2]
10007670:	4b03      	ldr	r3, [pc, #12]	; (10007680 <ble_gapc_connection_cfm+0x2c>)
10007672:	4798      	blx	r3
10007674:	bd70      	pop	{r4, r5, r6, pc}
10007676:	46c0      	nop			; (mov r8, r8)
10007678:	00001171 	.word	0x00001171
1000767c:	00000e02 	.word	0x00000e02
10007680:	000011a9 	.word	0x000011a9

10007684 <ble_gap_init>:
10007684:	b510      	push	{r4, lr}
10007686:	4807      	ldr	r0, [pc, #28]	; (100076a4 <ble_gap_init+0x20>)
10007688:	4c07      	ldr	r4, [pc, #28]	; (100076a8 <ble_gap_init+0x24>)
1000768a:	47a0      	blx	r4
1000768c:	4807      	ldr	r0, [pc, #28]	; (100076ac <ble_gap_init+0x28>)
1000768e:	47a0      	blx	r4
10007690:	4807      	ldr	r0, [pc, #28]	; (100076b0 <ble_gap_init+0x2c>)
10007692:	47a0      	blx	r4
10007694:	4c07      	ldr	r4, [pc, #28]	; (100076b4 <ble_gap_init+0x30>)
10007696:	200d      	movs	r0, #13
10007698:	4907      	ldr	r1, [pc, #28]	; (100076b8 <ble_gap_init+0x34>)
1000769a:	47a0      	blx	r4
1000769c:	200e      	movs	r0, #14
1000769e:	4907      	ldr	r1, [pc, #28]	; (100076bc <ble_gap_init+0x38>)
100076a0:	47a0      	blx	r4
100076a2:	bd10      	pop	{r4, pc}
100076a4:	20015118 	.word	0x20015118
100076a8:	00002657 	.word	0x00002657
100076ac:	20015104 	.word	0x20015104
100076b0:	200150f0 	.word	0x200150f0
100076b4:	10008a29 	.word	0x10008a29
100076b8:	1000b278 	.word	0x1000b278
100076bc:	1000b200 	.word	0x1000b200

100076c0 <ble_gap_sec_tag_id>:
100076c0:	b510      	push	{r4, lr}
100076c2:	0004      	movs	r4, r0
100076c4:	2802      	cmp	r0, #2
100076c6:	d904      	bls.n	100076d2 <ble_gap_sec_tag_id+0x12>
100076c8:	225f      	movs	r2, #95	; 0x5f
100076ca:	4903      	ldr	r1, [pc, #12]	; (100076d8 <ble_gap_sec_tag_id+0x18>)
100076cc:	4803      	ldr	r0, [pc, #12]	; (100076dc <ble_gap_sec_tag_id+0x1c>)
100076ce:	4b04      	ldr	r3, [pc, #16]	; (100076e0 <ble_gap_sec_tag_id+0x20>)
100076d0:	4798      	blx	r3
100076d2:	4b04      	ldr	r3, [pc, #16]	; (100076e4 <ble_gap_sec_tag_id+0x24>)
100076d4:	5d18      	ldrb	r0, [r3, r4]
100076d6:	bd10      	pop	{r4, pc}
100076d8:	1000b2d8 	.word	0x1000b2d8
100076dc:	1000b4d2 	.word	0x1000b4d2
100076e0:	00006609 	.word	0x00006609
100076e4:	1000b4ad 	.word	0x1000b4ad

100076e8 <ble_gap_sec_get_bond_tag.part.0>:
100076e8:	b5f0      	push	{r4, r5, r6, r7, lr}
100076ea:	b099      	sub	sp, #100	; 0x64
100076ec:	001d      	movs	r5, r3
100076ee:	466b      	mov	r3, sp
100076f0:	1d9c      	adds	r4, r3, #6
100076f2:	2358      	movs	r3, #88	; 0x58
100076f4:	8023      	strh	r3, [r4, #0]
100076f6:	4b09      	ldr	r3, [pc, #36]	; (1000771c <ble_gap_sec_get_bond_tag.part.0+0x34>)
100076f8:	000f      	movs	r7, r1
100076fa:	0016      	movs	r6, r2
100076fc:	4798      	blx	r3
100076fe:	0021      	movs	r1, r4
10007700:	4b07      	ldr	r3, [pc, #28]	; (10007720 <ble_gap_sec_get_bond_tag.part.0+0x38>)
10007702:	aa02      	add	r2, sp, #8
10007704:	4798      	blx	r3
10007706:	1e04      	subs	r4, r0, #0
10007708:	d105      	bne.n	10007716 <ble_gap_sec_get_bond_tag.part.0+0x2e>
1000770a:	ab02      	add	r3, sp, #8
1000770c:	19d9      	adds	r1, r3, r7
1000770e:	0032      	movs	r2, r6
10007710:	0028      	movs	r0, r5
10007712:	4b04      	ldr	r3, [pc, #16]	; (10007724 <ble_gap_sec_get_bond_tag.part.0+0x3c>)
10007714:	4798      	blx	r3
10007716:	0020      	movs	r0, r4
10007718:	b019      	add	sp, #100	; 0x64
1000771a:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000771c:	100076c1 	.word	0x100076c1
10007720:	00002f55 	.word	0x00002f55
10007724:	00005821 	.word	0x00005821

10007728 <ble_gap_sec_find_bond_idx>:
10007728:	b5f0      	push	{r4, r5, r6, r7, lr}
1000772a:	2400      	movs	r4, #0
1000772c:	2707      	movs	r7, #7
1000772e:	b087      	sub	sp, #28
10007730:	9001      	str	r0, [sp, #4]
10007732:	003a      	movs	r2, r7
10007734:	2101      	movs	r1, #1
10007736:	4d15      	ldr	r5, [pc, #84]	; (1000778c <ble_gap_sec_find_bond_idx+0x64>)
10007738:	ab02      	add	r3, sp, #8
1000773a:	b2e0      	uxtb	r0, r4
1000773c:	47a8      	blx	r5
1000773e:	ae04      	add	r6, sp, #16
10007740:	0005      	movs	r5, r0
10007742:	003a      	movs	r2, r7
10007744:	0030      	movs	r0, r6
10007746:	4b12      	ldr	r3, [pc, #72]	; (10007790 <ble_gap_sec_find_bond_idx+0x68>)
10007748:	a902      	add	r1, sp, #8
1000774a:	4798      	blx	r3
1000774c:	2d00      	cmp	r5, #0
1000774e:	d00d      	beq.n	1000776c <ble_gap_sec_find_bond_idx+0x44>
10007750:	2d02      	cmp	r5, #2
10007752:	d005      	beq.n	10007760 <ble_gap_sec_find_bond_idx+0x38>
10007754:	0028      	movs	r0, r5
10007756:	23e9      	movs	r3, #233	; 0xe9
10007758:	4a0e      	ldr	r2, [pc, #56]	; (10007794 <ble_gap_sec_find_bond_idx+0x6c>)
1000775a:	4d0f      	ldr	r5, [pc, #60]	; (10007798 <ble_gap_sec_find_bond_idx+0x70>)
1000775c:	a902      	add	r1, sp, #8
1000775e:	47a8      	blx	r5
10007760:	3401      	adds	r4, #1
10007762:	2c03      	cmp	r4, #3
10007764:	d1e5      	bne.n	10007732 <ble_gap_sec_find_bond_idx+0xa>
10007766:	2001      	movs	r0, #1
10007768:	4240      	negs	r0, r0
1000776a:	e00c      	b.n	10007786 <ble_gap_sec_find_bond_idx+0x5e>
1000776c:	9b01      	ldr	r3, [sp, #4]
1000776e:	79b2      	ldrb	r2, [r6, #6]
10007770:	799b      	ldrb	r3, [r3, #6]
10007772:	429a      	cmp	r2, r3
10007774:	d1f4      	bne.n	10007760 <ble_gap_sec_find_bond_idx+0x38>
10007776:	2206      	movs	r2, #6
10007778:	0030      	movs	r0, r6
1000777a:	9901      	ldr	r1, [sp, #4]
1000777c:	4b07      	ldr	r3, [pc, #28]	; (1000779c <ble_gap_sec_find_bond_idx+0x74>)
1000777e:	4798      	blx	r3
10007780:	2800      	cmp	r0, #0
10007782:	d1ed      	bne.n	10007760 <ble_gap_sec_find_bond_idx+0x38>
10007784:	b260      	sxtb	r0, r4
10007786:	b007      	add	sp, #28
10007788:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000778a:	46c0      	nop			; (mov r8, r8)
1000778c:	100076e9 	.word	0x100076e9
10007790:	00005821 	.word	0x00005821
10007794:	1000b2d8 	.word	0x1000b2d8
10007798:	00006641 	.word	0x00006641
1000779c:	0002fba5 	.word	0x0002fba5

100077a0 <delete_bond>:
100077a0:	b5f0      	push	{r4, r5, r6, r7, lr}
100077a2:	8843      	ldrh	r3, [r0, #2]
100077a4:	000d      	movs	r5, r1
100077a6:	b085      	sub	sp, #20
100077a8:	2b00      	cmp	r3, #0
100077aa:	d137      	bne.n	1000781c <delete_bond+0x7c>
100077ac:	7902      	ldrb	r2, [r0, #4]
100077ae:	331c      	adds	r3, #28
100077b0:	4353      	muls	r3, r2
100077b2:	18c0      	adds	r0, r0, r3
100077b4:	6a04      	ldr	r4, [r0, #32]
100077b6:	b264      	sxtb	r4, r4
100077b8:	1c63      	adds	r3, r4, #1
100077ba:	d023      	beq.n	10007804 <delete_bond+0x64>
100077bc:	2201      	movs	r2, #1
100077be:	40a2      	lsls	r2, r4
100077c0:	4919      	ldr	r1, [pc, #100]	; (10007828 <delete_bond+0x88>)
100077c2:	b2e0      	uxtb	r0, r4
100077c4:	880b      	ldrh	r3, [r1, #0]
100077c6:	4393      	bics	r3, r2
100077c8:	800b      	strh	r3, [r1, #0]
100077ca:	4b18      	ldr	r3, [pc, #96]	; (1000782c <delete_bond+0x8c>)
100077cc:	4798      	blx	r3
100077ce:	4b18      	ldr	r3, [pc, #96]	; (10007830 <delete_bond+0x90>)
100077d0:	4798      	blx	r3
100077d2:	2800      	cmp	r0, #0
100077d4:	d004      	beq.n	100077e0 <delete_bond+0x40>
100077d6:	4a17      	ldr	r2, [pc, #92]	; (10007834 <delete_bond+0x94>)
100077d8:	4917      	ldr	r1, [pc, #92]	; (10007838 <delete_bond+0x98>)
100077da:	4818      	ldr	r0, [pc, #96]	; (1000783c <delete_bond+0x9c>)
100077dc:	4b18      	ldr	r3, [pc, #96]	; (10007840 <delete_bond+0xa0>)
100077de:	4798      	blx	r3
100077e0:	466b      	mov	r3, sp
100077e2:	2706      	movs	r7, #6
100077e4:	ae02      	add	r6, sp, #8
100077e6:	1d99      	adds	r1, r3, #6
100077e8:	0032      	movs	r2, r6
100077ea:	203a      	movs	r0, #58	; 0x3a
100077ec:	4b15      	ldr	r3, [pc, #84]	; (10007844 <delete_bond+0xa4>)
100077ee:	800f      	strh	r7, [r1, #0]
100077f0:	4798      	blx	r3
100077f2:	2800      	cmp	r0, #0
100077f4:	d106      	bne.n	10007804 <delete_bond+0x64>
100077f6:	0063      	lsls	r3, r4, #1
100077f8:	5398      	strh	r0, [r3, r6]
100077fa:	0032      	movs	r2, r6
100077fc:	0039      	movs	r1, r7
100077fe:	4b12      	ldr	r3, [pc, #72]	; (10007848 <delete_bond+0xa8>)
10007800:	303a      	adds	r0, #58	; 0x3a
10007802:	4798      	blx	r3
10007804:	68ab      	ldr	r3, [r5, #8]
10007806:	2b00      	cmp	r3, #0
10007808:	d003      	beq.n	10007812 <delete_bond+0x72>
1000780a:	0021      	movs	r1, r4
1000780c:	7c28      	ldrb	r0, [r5, #16]
1000780e:	68ea      	ldr	r2, [r5, #12]
10007810:	4798      	blx	r3
10007812:	0028      	movs	r0, r5
10007814:	4b0d      	ldr	r3, [pc, #52]	; (1000784c <delete_bond+0xac>)
10007816:	4798      	blx	r3
10007818:	b005      	add	sp, #20
1000781a:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000781c:	0008      	movs	r0, r1
1000781e:	4b0c      	ldr	r3, [pc, #48]	; (10007850 <delete_bond+0xb0>)
10007820:	4798      	blx	r3
10007822:	0004      	movs	r4, r0
10007824:	e7c8      	b.n	100077b8 <delete_bond+0x18>
10007826:	46c0      	nop			; (mov r8, r8)
10007828:	20015132 	.word	0x20015132
1000782c:	100076c1 	.word	0x100076c1
10007830:	0000301d 	.word	0x0000301d
10007834:	00000267 	.word	0x00000267
10007838:	1000b2d8 	.word	0x1000b2d8
1000783c:	1000b4d2 	.word	0x1000b4d2
10007840:	00006609 	.word	0x00006609
10007844:	00002f55 	.word	0x00002f55
10007848:	0000308d 	.word	0x0000308d
1000784c:	000014ed 	.word	0x000014ed
10007850:	10007729 	.word	0x10007729

10007854 <check_bonded>:
10007854:	b510      	push	{r4, lr}
10007856:	8843      	ldrh	r3, [r0, #2]
10007858:	000c      	movs	r4, r1
1000785a:	2b00      	cmp	r3, #0
1000785c:	d10f      	bne.n	1000787e <check_bonded+0x2a>
1000785e:	7902      	ldrb	r2, [r0, #4]
10007860:	331c      	adds	r3, #28
10007862:	4353      	muls	r3, r2
10007864:	18c0      	adds	r0, r0, r3
10007866:	6a01      	ldr	r1, [r0, #32]
10007868:	b249      	sxtb	r1, r1
1000786a:	68a3      	ldr	r3, [r4, #8]
1000786c:	2b00      	cmp	r3, #0
1000786e:	d002      	beq.n	10007876 <check_bonded+0x22>
10007870:	7c20      	ldrb	r0, [r4, #16]
10007872:	68e2      	ldr	r2, [r4, #12]
10007874:	4798      	blx	r3
10007876:	0020      	movs	r0, r4
10007878:	4b03      	ldr	r3, [pc, #12]	; (10007888 <check_bonded+0x34>)
1000787a:	4798      	blx	r3
1000787c:	bd10      	pop	{r4, pc}
1000787e:	0008      	movs	r0, r1
10007880:	4b02      	ldr	r3, [pc, #8]	; (1000788c <check_bonded+0x38>)
10007882:	4798      	blx	r3
10007884:	0001      	movs	r1, r0
10007886:	e7f0      	b.n	1000786a <check_bonded+0x16>
10007888:	000014ed 	.word	0x000014ed
1000788c:	10007729 	.word	0x10007729

10007890 <gap_sec_send_enc_response>:
10007890:	b5f0      	push	{r4, r5, r6, r7, lr}
10007892:	b08f      	sub	sp, #60	; 0x3c
10007894:	9102      	str	r1, [sp, #8]
10007896:	2109      	movs	r1, #9
10007898:	7813      	ldrb	r3, [r2, #0]
1000789a:	4d2a      	ldr	r5, [pc, #168]	; (10007944 <gap_sec_send_enc_response+0xb4>)
1000789c:	9303      	str	r3, [sp, #12]
1000789e:	021b      	lsls	r3, r3, #8
100078a0:	4319      	orrs	r1, r3
100078a2:	0004      	movs	r4, r0
100078a4:	0017      	movs	r7, r2
100078a6:	2312      	movs	r3, #18
100078a8:	2204      	movs	r2, #4
100078aa:	4827      	ldr	r0, [pc, #156]	; (10007948 <gap_sec_send_enc_response+0xb8>)
100078ac:	47a8      	blx	r5
100078ae:	0005      	movs	r5, r0
100078b0:	2c00      	cmp	r4, #0
100078b2:	d01b      	beq.n	100078ec <gap_sec_send_enc_response+0x5c>
100078b4:	4e25      	ldr	r6, [pc, #148]	; (1000794c <gap_sec_send_enc_response+0xbc>)
100078b6:	221c      	movs	r2, #28
100078b8:	213b      	movs	r1, #59	; 0x3b
100078ba:	9802      	ldr	r0, [sp, #8]
100078bc:	ab05      	add	r3, sp, #20
100078be:	47b0      	blx	r6
100078c0:	1e06      	subs	r6, r0, #0
100078c2:	d133      	bne.n	1000792c <gap_sec_send_enc_response+0x9c>
100078c4:	ab02      	add	r3, sp, #8
100078c6:	887a      	ldrh	r2, [r7, #2]
100078c8:	8b9b      	ldrh	r3, [r3, #28]
100078ca:	429a      	cmp	r2, r3
100078cc:	d128      	bne.n	10007920 <gap_sec_send_enc_response+0x90>
100078ce:	211e      	movs	r1, #30
100078d0:	ab02      	add	r3, sp, #8
100078d2:	18c9      	adds	r1, r1, r3
100078d4:	2208      	movs	r2, #8
100078d6:	4b1e      	ldr	r3, [pc, #120]	; (10007950 <gap_sec_send_enc_response+0xc0>)
100078d8:	1d38      	adds	r0, r7, #4
100078da:	4798      	blx	r3
100078dc:	2800      	cmp	r0, #0
100078de:	d11f      	bne.n	10007920 <gap_sec_send_enc_response+0x90>
100078e0:	2210      	movs	r2, #16
100078e2:	4b1c      	ldr	r3, [pc, #112]	; (10007954 <gap_sec_send_enc_response+0xc4>)
100078e4:	746a      	strb	r2, [r5, #17]
100078e6:	1c68      	adds	r0, r5, #1
100078e8:	a905      	add	r1, sp, #20
100078ea:	4798      	blx	r3
100078ec:	0038      	movs	r0, r7
100078ee:	4b1a      	ldr	r3, [pc, #104]	; (10007958 <gap_sec_send_enc_response+0xc8>)
100078f0:	702c      	strb	r4, [r5, #0]
100078f2:	4798      	blx	r3
100078f4:	0028      	movs	r0, r5
100078f6:	4b19      	ldr	r3, [pc, #100]	; (1000795c <gap_sec_send_enc_response+0xcc>)
100078f8:	4798      	blx	r3
100078fa:	2c00      	cmp	r4, #0
100078fc:	d10e      	bne.n	1000791c <gap_sec_send_enc_response+0x8c>
100078fe:	2224      	movs	r2, #36	; 0x24
10007900:	0021      	movs	r1, r4
10007902:	4b17      	ldr	r3, [pc, #92]	; (10007960 <gap_sec_send_enc_response+0xd0>)
10007904:	a805      	add	r0, sp, #20
10007906:	4798      	blx	r3
10007908:	9a03      	ldr	r2, [sp, #12]
1000790a:	ab02      	add	r3, sp, #8
1000790c:	741a      	strb	r2, [r3, #16]
1000790e:	4b15      	ldr	r3, [pc, #84]	; (10007964 <gap_sec_send_enc_response+0xd4>)
10007910:	aa02      	add	r2, sp, #8
10007912:	8253      	strh	r3, [r2, #18]
10007914:	2011      	movs	r0, #17
10007916:	4b14      	ldr	r3, [pc, #80]	; (10007968 <gap_sec_send_enc_response+0xd8>)
10007918:	a905      	add	r1, sp, #20
1000791a:	4798      	blx	r3
1000791c:	b00f      	add	sp, #60	; 0x3c
1000791e:	bdf0      	pop	{r4, r5, r6, r7, pc}
10007920:	4912      	ldr	r1, [pc, #72]	; (1000796c <gap_sec_send_enc_response+0xdc>)
10007922:	4813      	ldr	r0, [pc, #76]	; (10007970 <gap_sec_send_enc_response+0xe0>)
10007924:	4b13      	ldr	r3, [pc, #76]	; (10007974 <gap_sec_send_enc_response+0xe4>)
10007926:	4798      	blx	r3
10007928:	2400      	movs	r4, #0
1000792a:	e7df      	b.n	100078ec <gap_sec_send_enc_response+0x5c>
1000792c:	9802      	ldr	r0, [sp, #8]
1000792e:	4b12      	ldr	r3, [pc, #72]	; (10007978 <gap_sec_send_enc_response+0xe8>)
10007930:	4798      	blx	r3
10007932:	9a02      	ldr	r2, [sp, #8]
10007934:	0003      	movs	r3, r0
10007936:	490d      	ldr	r1, [pc, #52]	; (1000796c <gap_sec_send_enc_response+0xdc>)
10007938:	4c0e      	ldr	r4, [pc, #56]	; (10007974 <gap_sec_send_enc_response+0xe4>)
1000793a:	9600      	str	r6, [sp, #0]
1000793c:	480f      	ldr	r0, [pc, #60]	; (1000797c <gap_sec_send_enc_response+0xec>)
1000793e:	47a0      	blx	r4
10007940:	e7f2      	b.n	10007928 <gap_sec_send_enc_response+0x98>
10007942:	46c0      	nop			; (mov r8, r8)
10007944:	00001171 	.word	0x00001171
10007948:	00000e18 	.word	0x00000e18
1000794c:	100076e9 	.word	0x100076e9
10007950:	0002fba5 	.word	0x0002fba5
10007954:	00005821 	.word	0x00005821
10007958:	000014ed 	.word	0x000014ed
1000795c:	000011a9 	.word	0x000011a9
10007960:	00005859 	.word	0x00005859
10007964:	00000311 	.word	0x00000311
10007968:	100068d1 	.word	0x100068d1
1000796c:	1000b4a1 	.word	0x1000b4a1
10007970:	1000b2e6 	.word	0x1000b2e6
10007974:	000066b1 	.word	0x000066b1
10007978:	100076c1 	.word	0x100076c1
1000797c:	1000b30c 	.word	0x1000b30c

10007980 <gap_sec_enc_ind_addr_resol>:
10007980:	b570      	push	{r4, r5, r6, lr}
10007982:	8843      	ldrh	r3, [r0, #2]
10007984:	000d      	movs	r5, r1
10007986:	2b00      	cmp	r3, #0
10007988:	d10b      	bne.n	100079a2 <gap_sec_enc_ind_addr_resol+0x22>
1000798a:	7902      	ldrb	r2, [r0, #4]
1000798c:	331c      	adds	r3, #28
1000798e:	4353      	muls	r3, r2
10007990:	18c0      	adds	r0, r0, r3
10007992:	6a04      	ldr	r4, [r0, #32]
10007994:	2001      	movs	r0, #1
10007996:	b264      	sxtb	r4, r4
10007998:	002a      	movs	r2, r5
1000799a:	4b09      	ldr	r3, [pc, #36]	; (100079c0 <gap_sec_enc_ind_addr_resol+0x40>)
1000799c:	b2e1      	uxtb	r1, r4
1000799e:	4798      	blx	r3
100079a0:	bd70      	pop	{r4, r5, r6, pc}
100079a2:	4808      	ldr	r0, [pc, #32]	; (100079c4 <gap_sec_enc_ind_addr_resol+0x44>)
100079a4:	4b08      	ldr	r3, [pc, #32]	; (100079c8 <gap_sec_enc_ind_addr_resol+0x48>)
100079a6:	3004      	adds	r0, #4
100079a8:	4798      	blx	r3
100079aa:	0004      	movs	r4, r0
100079ac:	2001      	movs	r0, #1
100079ae:	1c63      	adds	r3, r4, #1
100079b0:	d1f2      	bne.n	10007998 <gap_sec_enc_ind_addr_resol+0x18>
100079b2:	4906      	ldr	r1, [pc, #24]	; (100079cc <gap_sec_enc_ind_addr_resol+0x4c>)
100079b4:	4806      	ldr	r0, [pc, #24]	; (100079d0 <gap_sec_enc_ind_addr_resol+0x50>)
100079b6:	4b07      	ldr	r3, [pc, #28]	; (100079d4 <gap_sec_enc_ind_addr_resol+0x54>)
100079b8:	4798      	blx	r3
100079ba:	2000      	movs	r0, #0
100079bc:	e7ec      	b.n	10007998 <gap_sec_enc_ind_addr_resol+0x18>
100079be:	46c0      	nop			; (mov r8, r8)
100079c0:	10007891 	.word	0x10007891
100079c4:	20015132 	.word	0x20015132
100079c8:	10007729 	.word	0x10007729
100079cc:	1000b4a1 	.word	0x1000b4a1
100079d0:	1000b33f 	.word	0x1000b33f
100079d4:	000066b1 	.word	0x000066b1

100079d8 <ble_gap_sec_get_peer_irk_info.constprop.0>:
100079d8:	b5f0      	push	{r4, r5, r6, r7, lr}
100079da:	2500      	movs	r5, #0
100079dc:	002e      	movs	r6, r5
100079de:	b089      	sub	sp, #36	; 0x24
100079e0:	9001      	str	r0, [sp, #4]
100079e2:	4b13      	ldr	r3, [pc, #76]	; (10007a30 <ble_gap_sec_get_peer_irk_info.constprop.0+0x58>)
100079e4:	2201      	movs	r2, #1
100079e6:	881b      	ldrh	r3, [r3, #0]
100079e8:	40f3      	lsrs	r3, r6
100079ea:	4213      	tst	r3, r2
100079ec:	d01a      	beq.n	10007a24 <ble_gap_sec_get_peer_irk_info.constprop.0+0x4c>
100079ee:	ac02      	add	r4, sp, #8
100079f0:	0023      	movs	r3, r4
100079f2:	2108      	movs	r1, #8
100079f4:	4f0f      	ldr	r7, [pc, #60]	; (10007a34 <ble_gap_sec_get_peer_irk_info.constprop.0+0x5c>)
100079f6:	b2f0      	uxtb	r0, r6
100079f8:	3216      	adds	r2, #22
100079fa:	47b8      	blx	r7
100079fc:	2800      	cmp	r0, #0
100079fe:	d111      	bne.n	10007a24 <ble_gap_sec_get_peer_irk_info.constprop.0+0x4c>
10007a00:	231c      	movs	r3, #28
10007a02:	436b      	muls	r3, r5
10007a04:	9a01      	ldr	r2, [sp, #4]
10007a06:	3501      	adds	r5, #1
10007a08:	18d3      	adds	r3, r2, r3
10007a0a:	001a      	movs	r2, r3
10007a0c:	cc83      	ldmia	r4!, {r0, r1, r7}
10007a0e:	c283      	stmia	r2!, {r0, r1, r7}
10007a10:	cc03      	ldmia	r4!, {r0, r1}
10007a12:	c203      	stmia	r2!, {r0, r1}
10007a14:	8821      	ldrh	r1, [r4, #0]
10007a16:	b2ed      	uxtb	r5, r5
10007a18:	8011      	strh	r1, [r2, #0]
10007a1a:	78a1      	ldrb	r1, [r4, #2]
10007a1c:	7091      	strb	r1, [r2, #2]
10007a1e:	619e      	str	r6, [r3, #24]
10007a20:	2d03      	cmp	r5, #3
10007a22:	d002      	beq.n	10007a2a <ble_gap_sec_get_peer_irk_info.constprop.0+0x52>
10007a24:	3601      	adds	r6, #1
10007a26:	2e03      	cmp	r6, #3
10007a28:	d1db      	bne.n	100079e2 <ble_gap_sec_get_peer_irk_info.constprop.0+0xa>
10007a2a:	0028      	movs	r0, r5
10007a2c:	b009      	add	sp, #36	; 0x24
10007a2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
10007a30:	20015132 	.word	0x20015132
10007a34:	100076e9 	.word	0x100076e9

10007a38 <ble_gap_bonded_check>:
10007a38:	b570      	push	{r4, r5, r6, lr}
10007a3a:	b098      	sub	sp, #96	; 0x60
10007a3c:	0004      	movs	r4, r0
10007a3e:	000d      	movs	r5, r1
10007a40:	0016      	movs	r6, r2
10007a42:	2100      	movs	r1, #0
10007a44:	2254      	movs	r2, #84	; 0x54
10007a46:	4b0e      	ldr	r3, [pc, #56]	; (10007a80 <ble_gap_bonded_check+0x48>)
10007a48:	a803      	add	r0, sp, #12
10007a4a:	4798      	blx	r3
10007a4c:	4b0d      	ldr	r3, [pc, #52]	; (10007a84 <ble_gap_bonded_check+0x4c>)
10007a4e:	a803      	add	r0, sp, #12
10007a50:	4798      	blx	r3
10007a52:	9601      	str	r6, [sp, #4]
10007a54:	9500      	str	r5, [sp, #0]
10007a56:	7861      	ldrb	r1, [r4, #1]
10007a58:	0002      	movs	r2, r0
10007a5a:	7820      	ldrb	r0, [r4, #0]
10007a5c:	78a3      	ldrb	r3, [r4, #2]
10007a5e:	0209      	lsls	r1, r1, #8
10007a60:	4301      	orrs	r1, r0
10007a62:	78e0      	ldrb	r0, [r4, #3]
10007a64:	041b      	lsls	r3, r3, #16
10007a66:	4319      	orrs	r1, r3
10007a68:	0600      	lsls	r0, r0, #24
10007a6a:	4308      	orrs	r0, r1
10007a6c:	7961      	ldrb	r1, [r4, #5]
10007a6e:	7923      	ldrb	r3, [r4, #4]
10007a70:	0209      	lsls	r1, r1, #8
10007a72:	4319      	orrs	r1, r3
10007a74:	4c04      	ldr	r4, [pc, #16]	; (10007a88 <ble_gap_bonded_check+0x50>)
10007a76:	ab03      	add	r3, sp, #12
10007a78:	47a0      	blx	r4
10007a7a:	b018      	add	sp, #96	; 0x60
10007a7c:	bd70      	pop	{r4, r5, r6, pc}
10007a7e:	46c0      	nop			; (mov r8, r8)
10007a80:	00005859 	.word	0x00005859
10007a84:	100079d9 	.word	0x100079d9
10007a88:	10007579 	.word	0x10007579

10007a8c <event_handler>:
10007a8c:	b5f0      	push	{r4, r5, r6, r7, lr}
10007a8e:	7801      	ldrb	r1, [r0, #0]
10007a90:	0005      	movs	r5, r0
10007a92:	b09b      	sub	sp, #108	; 0x6c
10007a94:	291b      	cmp	r1, #27
10007a96:	d900      	bls.n	10007a9a <event_handler+0xe>
10007a98:	e143      	b.n	10007d22 <event_handler+0x296>
10007a9a:	0008      	movs	r0, r1
10007a9c:	f001 fba4 	bl	100091e8 <____gnu_thumb1_case_uhi_veneer>
10007aa0:	00ab00ab 	.word	0x00ab00ab
10007aa4:	00ab00ab 	.word	0x00ab00ab
10007aa8:	00ab00ab 	.word	0x00ab00ab
10007aac:	001c00ab 	.word	0x001c00ab
10007ab0:	00ab0030 	.word	0x00ab0030
10007ab4:	004000ab 	.word	0x004000ab
10007ab8:	00ab00ab 	.word	0x00ab00ab
10007abc:	00ab00ab 	.word	0x00ab00ab
10007ac0:	00ab00ab 	.word	0x00ab00ab
10007ac4:	00ab00be 	.word	0x00ab00be
10007ac8:	00ab00c6 	.word	0x00ab00c6
10007acc:	00ab00e7 	.word	0x00ab00e7
10007ad0:	00ab00ab 	.word	0x00ab00ab
10007ad4:	011100ab 	.word	0x011100ab
10007ad8:	4e95      	ldr	r6, [pc, #596]	; (10007d30 <event_handler+0x2a4>)
10007ada:	3506      	adds	r5, #6
10007adc:	0030      	movs	r0, r6
10007ade:	221c      	movs	r2, #28
10007ae0:	0029      	movs	r1, r5
10007ae2:	4f94      	ldr	r7, [pc, #592]	; (10007d34 <event_handler+0x2a8>)
10007ae4:	303e      	adds	r0, #62	; 0x3e
10007ae6:	47b8      	blx	r7
10007ae8:	78f3      	ldrb	r3, [r6, #3]
10007aea:	2401      	movs	r4, #1
10007aec:	071b      	lsls	r3, r3, #28
10007aee:	d504      	bpl.n	10007afa <event_handler+0x6e>
10007af0:	0030      	movs	r0, r6
10007af2:	221c      	movs	r2, #28
10007af4:	0029      	movs	r1, r5
10007af6:	3022      	adds	r0, #34	; 0x22
10007af8:	47b8      	blx	r7
10007afa:	0020      	movs	r0, r4
10007afc:	b01b      	add	sp, #108	; 0x6c
10007afe:	bdf0      	pop	{r4, r5, r6, r7, pc}
10007b00:	4e8b      	ldr	r6, [pc, #556]	; (10007d30 <event_handler+0x2a4>)
10007b02:	2401      	movs	r4, #1
10007b04:	0033      	movs	r3, r6
10007b06:	0030      	movs	r0, r6
10007b08:	2217      	movs	r2, #23
10007b0a:	335a      	adds	r3, #90	; 0x5a
10007b0c:	1d69      	adds	r1, r5, #5
10007b0e:	4f89      	ldr	r7, [pc, #548]	; (10007d34 <event_handler+0x2a8>)
10007b10:	300b      	adds	r0, #11
10007b12:	701c      	strb	r4, [r3, #0]
10007b14:	47b8      	blx	r7
10007b16:	0029      	movs	r1, r5
10007b18:	2207      	movs	r2, #7
10007b1a:	3115      	adds	r1, #21
10007b1c:	1d30      	adds	r0, r6, #4
10007b1e:	e7eb      	b.n	10007af8 <event_handler+0x6c>
10007b20:	2400      	movs	r4, #0
10007b22:	88eb      	ldrh	r3, [r5, #6]
10007b24:	42a3      	cmp	r3, r4
10007b26:	d1e8      	bne.n	10007afa <event_handler+0x6e>
10007b28:	7a2b      	ldrb	r3, [r5, #8]
10007b2a:	07db      	lsls	r3, r3, #31
10007b2c:	d5e5      	bpl.n	10007afa <event_handler+0x6e>
10007b2e:	7928      	ldrb	r0, [r5, #4]
10007b30:	4b81      	ldr	r3, [pc, #516]	; (10007d38 <event_handler+0x2ac>)
10007b32:	a902      	add	r1, sp, #8
10007b34:	4798      	blx	r3
10007b36:	4d7e      	ldr	r5, [pc, #504]	; (10007d30 <event_handler+0x2a4>)
10007b38:	42a0      	cmp	r0, r4
10007b3a:	d009      	beq.n	10007b50 <event_handler+0xc4>
10007b3c:	ab02      	add	r3, sp, #8
10007b3e:	799b      	ldrb	r3, [r3, #6]
10007b40:	2b01      	cmp	r3, #1
10007b42:	d105      	bne.n	10007b50 <event_handler+0xc4>
10007b44:	223f      	movs	r2, #63	; 0x3f
10007b46:	ab02      	add	r3, sp, #8
10007b48:	795b      	ldrb	r3, [r3, #5]
10007b4a:	4393      	bics	r3, r2
10007b4c:	2b40      	cmp	r3, #64	; 0x40
10007b4e:	d003      	beq.n	10007b58 <event_handler+0xcc>
10007b50:	002b      	movs	r3, r5
10007b52:	2200      	movs	r2, #0
10007b54:	335a      	adds	r3, #90	; 0x5a
10007b56:	701a      	strb	r2, [r3, #0]
10007b58:	2400      	movs	r4, #0
10007b5a:	4b78      	ldr	r3, [pc, #480]	; (10007d3c <event_handler+0x2b0>)
10007b5c:	571c      	ldrsb	r4, [r3, r4]
10007b5e:	1c63      	adds	r3, r4, #1
10007b60:	d113      	bne.n	10007b8a <event_handler+0xfe>
10007b62:	4b77      	ldr	r3, [pc, #476]	; (10007d40 <event_handler+0x2b4>)
10007b64:	1d28      	adds	r0, r5, #4
10007b66:	4798      	blx	r3
10007b68:	0004      	movs	r4, r0
10007b6a:	1c43      	adds	r3, r0, #1
10007b6c:	d10d      	bne.n	10007b8a <event_handler+0xfe>
10007b6e:	882b      	ldrh	r3, [r5, #0]
10007b70:	3402      	adds	r4, #2
10007b72:	0018      	movs	r0, r3
10007b74:	4020      	ands	r0, r4
10007b76:	4223      	tst	r3, r4
10007b78:	d03f      	beq.n	10007bfa <event_handler+0x16e>
10007b7a:	085a      	lsrs	r2, r3, #1
10007b7c:	4222      	tst	r2, r4
10007b7e:	d004      	beq.n	10007b8a <event_handler+0xfe>
10007b80:	089b      	lsrs	r3, r3, #2
10007b82:	2284      	movs	r2, #132	; 0x84
10007b84:	4223      	tst	r3, r4
10007b86:	d147      	bne.n	10007c18 <event_handler+0x18c>
10007b88:	3401      	adds	r4, #1
10007b8a:	2250      	movs	r2, #80	; 0x50
10007b8c:	2100      	movs	r1, #0
10007b8e:	4b6d      	ldr	r3, [pc, #436]	; (10007d44 <event_handler+0x2b8>)
10007b90:	a806      	add	r0, sp, #24
10007b92:	4798      	blx	r3
10007b94:	2301      	movs	r3, #1
10007b96:	2009      	movs	r0, #9
10007b98:	af04      	add	r7, sp, #16
10007b9a:	703b      	strb	r3, [r7, #0]
10007b9c:	ab02      	add	r3, sp, #8
10007b9e:	4e65      	ldr	r6, [pc, #404]	; (10007d34 <event_handler+0x2a8>)
10007ba0:	2207      	movs	r2, #7
10007ba2:	1d29      	adds	r1, r5, #4
10007ba4:	18c0      	adds	r0, r0, r3
10007ba6:	47b0      	blx	r6
10007ba8:	0029      	movs	r1, r5
10007baa:	2027      	movs	r0, #39	; 0x27
10007bac:	ab02      	add	r3, sp, #8
10007bae:	221c      	movs	r2, #28
10007bb0:	313e      	adds	r1, #62	; 0x3e
10007bb2:	18c0      	adds	r0, r0, r3
10007bb4:	47b0      	blx	r6
10007bb6:	0029      	movs	r1, r5
10007bb8:	2043      	movs	r0, #67	; 0x43
10007bba:	ab02      	add	r3, sp, #8
10007bbc:	18c0      	adds	r0, r0, r3
10007bbe:	221c      	movs	r2, #28
10007bc0:	3122      	adds	r1, #34	; 0x22
10007bc2:	47b0      	blx	r6
10007bc4:	002b      	movs	r3, r5
10007bc6:	335a      	adds	r3, #90	; 0x5a
10007bc8:	781b      	ldrb	r3, [r3, #0]
10007bca:	2b00      	cmp	r3, #0
10007bcc:	d004      	beq.n	10007bd8 <event_handler+0x14c>
10007bce:	0029      	movs	r1, r5
10007bd0:	2217      	movs	r2, #23
10007bd2:	310b      	adds	r1, #11
10007bd4:	a806      	add	r0, sp, #24
10007bd6:	47b0      	blx	r6
10007bd8:	4b5b      	ldr	r3, [pc, #364]	; (10007d48 <event_handler+0x2bc>)
10007bda:	b2e0      	uxtb	r0, r4
10007bdc:	4798      	blx	r3
10007bde:	003a      	movs	r2, r7
10007be0:	2158      	movs	r1, #88	; 0x58
10007be2:	4e5a      	ldr	r6, [pc, #360]	; (10007d4c <event_handler+0x2c0>)
10007be4:	47b0      	blx	r6
10007be6:	2800      	cmp	r0, #0
10007be8:	d009      	beq.n	10007bfe <event_handler+0x172>
10007bea:	2220      	movs	r2, #32
10007bec:	32ff      	adds	r2, #255	; 0xff
10007bee:	4958      	ldr	r1, [pc, #352]	; (10007d50 <event_handler+0x2c4>)
10007bf0:	4858      	ldr	r0, [pc, #352]	; (10007d54 <event_handler+0x2c8>)
10007bf2:	4b59      	ldr	r3, [pc, #356]	; (10007d58 <event_handler+0x2cc>)
10007bf4:	4798      	blx	r3
10007bf6:	2400      	movs	r4, #0
10007bf8:	e77f      	b.n	10007afa <event_handler+0x6e>
10007bfa:	0004      	movs	r4, r0
10007bfc:	e7c5      	b.n	10007b8a <event_handler+0xfe>
10007bfe:	2201      	movs	r2, #1
10007c00:	40a2      	lsls	r2, r4
10007c02:	882b      	ldrh	r3, [r5, #0]
10007c04:	2102      	movs	r1, #2
10007c06:	4313      	orrs	r3, r2
10007c08:	2036      	movs	r0, #54	; 0x36
10007c0a:	1caa      	adds	r2, r5, #2
10007c0c:	802b      	strh	r3, [r5, #0]
10007c0e:	70ac      	strb	r4, [r5, #2]
10007c10:	47b0      	blx	r6
10007c12:	2800      	cmp	r0, #0
10007c14:	d0ef      	beq.n	10007bf6 <event_handler+0x16a>
10007c16:	2294      	movs	r2, #148	; 0x94
10007c18:	0052      	lsls	r2, r2, #1
10007c1a:	e7e8      	b.n	10007bee <event_handler+0x162>
10007c1c:	2117      	movs	r1, #23
10007c1e:	7928      	ldrb	r0, [r5, #4]
10007c20:	4b43      	ldr	r3, [pc, #268]	; (10007d30 <event_handler+0x2a4>)
10007c22:	4a4e      	ldr	r2, [pc, #312]	; (10007d5c <event_handler+0x2d0>)
10007c24:	4c4e      	ldr	r4, [pc, #312]	; (10007d60 <event_handler+0x2d4>)
10007c26:	47a0      	blx	r4
10007c28:	2401      	movs	r4, #1
10007c2a:	e766      	b.n	10007afa <event_handler+0x6e>
10007c2c:	2109      	movs	r1, #9
10007c2e:	792b      	ldrb	r3, [r5, #4]
10007c30:	2204      	movs	r2, #4
10007c32:	021b      	lsls	r3, r3, #8
10007c34:	4319      	orrs	r1, r3
10007c36:	4c4b      	ldr	r4, [pc, #300]	; (10007d64 <event_handler+0x2d8>)
10007c38:	2322      	movs	r3, #34	; 0x22
10007c3a:	484b      	ldr	r0, [pc, #300]	; (10007d68 <event_handler+0x2dc>)
10007c3c:	47a0      	blx	r4
10007c3e:	2306      	movs	r3, #6
10007c40:	493b      	ldr	r1, [pc, #236]	; (10007d30 <event_handler+0x2a4>)
10007c42:	33ff      	adds	r3, #255	; 0xff
10007c44:	0004      	movs	r4, r0
10007c46:	2210      	movs	r2, #16
10007c48:	8003      	strh	r3, [r0, #0]
10007c4a:	315c      	adds	r1, #92	; 0x5c
10007c4c:	4d39      	ldr	r5, [pc, #228]	; (10007d34 <event_handler+0x2a8>)
10007c4e:	3002      	adds	r0, #2
10007c50:	47a8      	blx	r5
10007c52:	4b46      	ldr	r3, [pc, #280]	; (10007d6c <event_handler+0x2e0>)
10007c54:	4798      	blx	r3
10007c56:	0001      	movs	r1, r0
10007c58:	0020      	movs	r0, r4
10007c5a:	2206      	movs	r2, #6
10007c5c:	3012      	adds	r0, #18
10007c5e:	47a8      	blx	r5
10007c60:	4b43      	ldr	r3, [pc, #268]	; (10007d70 <event_handler+0x2e4>)
10007c62:	4798      	blx	r3
10007c64:	7620      	strb	r0, [r4, #24]
10007c66:	0020      	movs	r0, r4
10007c68:	4b42      	ldr	r3, [pc, #264]	; (10007d74 <event_handler+0x2e8>)
10007c6a:	4798      	blx	r3
10007c6c:	e7dc      	b.n	10007c28 <event_handler+0x19c>
10007c6e:	2109      	movs	r1, #9
10007c70:	792b      	ldrb	r3, [r5, #4]
10007c72:	2204      	movs	r2, #4
10007c74:	021b      	lsls	r3, r3, #8
10007c76:	4319      	orrs	r1, r3
10007c78:	4c3a      	ldr	r4, [pc, #232]	; (10007d64 <event_handler+0x2d8>)
10007c7a:	2322      	movs	r3, #34	; 0x22
10007c7c:	483a      	ldr	r0, [pc, #232]	; (10007d68 <event_handler+0x2dc>)
10007c7e:	47a0      	blx	r4
10007c80:	2308      	movs	r3, #8
10007c82:	0005      	movs	r5, r0
10007c84:	33ff      	adds	r3, #255	; 0xff
10007c86:	4e3c      	ldr	r6, [pc, #240]	; (10007d78 <event_handler+0x2ec>)
10007c88:	8003      	strh	r3, [r0, #0]
10007c8a:	47b0      	blx	r6
10007c8c:	002f      	movs	r7, r5
10007c8e:	1cac      	adds	r4, r5, #2
10007c90:	8268      	strh	r0, [r5, #18]
10007c92:	370a      	adds	r7, #10
10007c94:	9401      	str	r4, [sp, #4]
10007c96:	47b0      	blx	r6
10007c98:	7020      	strb	r0, [r4, #0]
10007c9a:	47b0      	blx	r6
10007c9c:	3401      	adds	r4, #1
10007c9e:	7460      	strb	r0, [r4, #17]
10007ca0:	42bc      	cmp	r4, r7
10007ca2:	d1f8      	bne.n	10007c96 <event_handler+0x20a>
10007ca4:	002f      	movs	r7, r5
10007ca6:	3712      	adds	r7, #18
10007ca8:	47b0      	blx	r6
10007caa:	7020      	strb	r0, [r4, #0]
10007cac:	3401      	adds	r4, #1
10007cae:	42a7      	cmp	r7, r4
10007cb0:	d1fa      	bne.n	10007ca8 <event_handler+0x21c>
10007cb2:	481f      	ldr	r0, [pc, #124]	; (10007d30 <event_handler+0x2a4>)
10007cb4:	221c      	movs	r2, #28
10007cb6:	9901      	ldr	r1, [sp, #4]
10007cb8:	4b1e      	ldr	r3, [pc, #120]	; (10007d34 <event_handler+0x2a8>)
10007cba:	3022      	adds	r0, #34	; 0x22
10007cbc:	4798      	blx	r3
10007cbe:	0028      	movs	r0, r5
10007cc0:	e7d2      	b.n	10007c68 <event_handler+0x1dc>
10007cc2:	792c      	ldrb	r4, [r5, #4]
10007cc4:	2101      	movs	r1, #1
10007cc6:	0020      	movs	r0, r4
10007cc8:	4b2c      	ldr	r3, [pc, #176]	; (10007d7c <event_handler+0x2f0>)
10007cca:	4798      	blx	r3
10007ccc:	1e06      	subs	r6, r0, #0
10007cce:	d105      	bne.n	10007cdc <event_handler+0x250>
10007cd0:	0022      	movs	r2, r4
10007cd2:	492b      	ldr	r1, [pc, #172]	; (10007d80 <event_handler+0x2f4>)
10007cd4:	4b2b      	ldr	r3, [pc, #172]	; (10007d84 <event_handler+0x2f8>)
10007cd6:	482c      	ldr	r0, [pc, #176]	; (10007d88 <event_handler+0x2fc>)
10007cd8:	4798      	blx	r3
10007cda:	e7a5      	b.n	10007c28 <event_handler+0x19c>
10007cdc:	4b2b      	ldr	r3, [pc, #172]	; (10007d8c <event_handler+0x300>)
10007cde:	2100      	movs	r1, #0
10007ce0:	200c      	movs	r0, #12
10007ce2:	4798      	blx	r3
10007ce4:	1d29      	adds	r1, r5, #4
10007ce6:	220c      	movs	r2, #12
10007ce8:	4f12      	ldr	r7, [pc, #72]	; (10007d34 <event_handler+0x2a8>)
10007cea:	0004      	movs	r4, r0
10007cec:	47b8      	blx	r7
10007cee:	4b10      	ldr	r3, [pc, #64]	; (10007d30 <event_handler+0x2a4>)
10007cf0:	0031      	movs	r1, r6
10007cf2:	1d1d      	adds	r5, r3, #4
10007cf4:	2207      	movs	r2, #7
10007cf6:	0028      	movs	r0, r5
10007cf8:	47b8      	blx	r7
10007cfa:	4b0d      	ldr	r3, [pc, #52]	; (10007d30 <event_handler+0x2a4>)
10007cfc:	881e      	ldrh	r6, [r3, #0]
10007cfe:	2e00      	cmp	r6, #0
10007d00:	d005      	beq.n	10007d0e <event_handler+0x282>
10007d02:	0022      	movs	r2, r4
10007d04:	0028      	movs	r0, r5
10007d06:	4922      	ldr	r1, [pc, #136]	; (10007d90 <event_handler+0x304>)
10007d08:	4b22      	ldr	r3, [pc, #136]	; (10007d94 <event_handler+0x308>)
10007d0a:	4798      	blx	r3
10007d0c:	e78c      	b.n	10007c28 <event_handler+0x19c>
10007d0e:	491c      	ldr	r1, [pc, #112]	; (10007d80 <event_handler+0x2f4>)
10007d10:	4b1c      	ldr	r3, [pc, #112]	; (10007d84 <event_handler+0x2f8>)
10007d12:	4821      	ldr	r0, [pc, #132]	; (10007d98 <event_handler+0x30c>)
10007d14:	4798      	blx	r3
10007d16:	0022      	movs	r2, r4
10007d18:	0031      	movs	r1, r6
10007d1a:	0030      	movs	r0, r6
10007d1c:	4b1f      	ldr	r3, [pc, #124]	; (10007d9c <event_handler+0x310>)
10007d1e:	4798      	blx	r3
10007d20:	e782      	b.n	10007c28 <event_handler+0x19c>
10007d22:	481f      	ldr	r0, [pc, #124]	; (10007da0 <event_handler+0x314>)
10007d24:	4b17      	ldr	r3, [pc, #92]	; (10007d84 <event_handler+0x2f8>)
10007d26:	4798      	blx	r3
10007d28:	22ef      	movs	r2, #239	; 0xef
10007d2a:	0092      	lsls	r2, r2, #2
10007d2c:	e75f      	b.n	10007bee <event_handler+0x162>
10007d2e:	46c0      	nop			; (mov r8, r8)
10007d30:	20015132 	.word	0x20015132
10007d34:	00005821 	.word	0x00005821
10007d38:	10007631 	.word	0x10007631
10007d3c:	20014d04 	.word	0x20014d04
10007d40:	10007729 	.word	0x10007729
10007d44:	00005859 	.word	0x00005859
10007d48:	100076c1 	.word	0x100076c1
10007d4c:	0000308d 	.word	0x0000308d
10007d50:	1000b2d8 	.word	0x1000b2d8
10007d54:	1000b4d2 	.word	0x1000b4d2
10007d58:	00006609 	.word	0x00006609
10007d5c:	10007da5 	.word	0x10007da5
10007d60:	10006f99 	.word	0x10006f99
10007d64:	00001171 	.word	0x00001171
10007d68:	00000e14 	.word	0x00000e14
10007d6c:	00024ad1 	.word	0x00024ad1
10007d70:	00024a49 	.word	0x00024a49
10007d74:	000011a9 	.word	0x000011a9
10007d78:	00007a79 	.word	0x00007a79
10007d7c:	00022729 	.word	0x00022729
10007d80:	1000b4a1 	.word	0x1000b4a1
10007d84:	000066b1 	.word	0x000066b1
10007d88:	1000b363 	.word	0x1000b363
10007d8c:	000013b9 	.word	0x000013b9
10007d90:	10007981 	.word	0x10007981
10007d94:	10007a39 	.word	0x10007a39
10007d98:	1000b390 	.word	0x1000b390
10007d9c:	10007891 	.word	0x10007891
10007da0:	1000b3cc 	.word	0x1000b3cc

10007da4 <ble_gap_sec_cmpl_evt>:
10007da4:	4770      	bx	lr
	...

10007da8 <ble_gap_sec_bond_status>:
10007da8:	4b02      	ldr	r3, [pc, #8]	; (10007db4 <ble_gap_sec_bond_status+0xc>)
10007daa:	8818      	ldrh	r0, [r3, #0]
10007dac:	1e43      	subs	r3, r0, #1
10007dae:	4198      	sbcs	r0, r3
10007db0:	b2c0      	uxtb	r0, r0
10007db2:	4770      	bx	lr
10007db4:	20015132 	.word	0x20015132

10007db8 <ble_gap_sec_get_bond_mask>:
10007db8:	4b01      	ldr	r3, [pc, #4]	; (10007dc0 <ble_gap_sec_get_bond_mask+0x8>)
10007dba:	8818      	ldrh	r0, [r3, #0]
10007dbc:	4770      	bx	lr
10007dbe:	46c0      	nop			; (mov r8, r8)
10007dc0:	20015132 	.word	0x20015132

10007dc4 <ble_gap_set_fix_bond_idx>:
10007dc4:	b570      	push	{r4, r5, r6, lr}
10007dc6:	0004      	movs	r4, r0
10007dc8:	2802      	cmp	r0, #2
10007dca:	d904      	bls.n	10007dd6 <ble_gap_set_fix_bond_idx+0x12>
10007dcc:	22b7      	movs	r2, #183	; 0xb7
10007dce:	490d      	ldr	r1, [pc, #52]	; (10007e04 <ble_gap_set_fix_bond_idx+0x40>)
10007dd0:	480d      	ldr	r0, [pc, #52]	; (10007e08 <ble_gap_set_fix_bond_idx+0x44>)
10007dd2:	4b0e      	ldr	r3, [pc, #56]	; (10007e0c <ble_gap_set_fix_bond_idx+0x48>)
10007dd4:	4798      	blx	r3
10007dd6:	2302      	movs	r3, #2
10007dd8:	4a0d      	ldr	r2, [pc, #52]	; (10007e10 <ble_gap_set_fix_bond_idx+0x4c>)
10007dda:	b265      	sxtb	r5, r4
10007ddc:	56d3      	ldrsb	r3, [r2, r3]
10007dde:	429c      	cmp	r4, r3
10007de0:	d00c      	beq.n	10007dfc <ble_gap_set_fix_bond_idx+0x38>
10007de2:	7095      	strb	r5, [r2, #2]
10007de4:	2102      	movs	r1, #2
10007de6:	2036      	movs	r0, #54	; 0x36
10007de8:	4b0a      	ldr	r3, [pc, #40]	; (10007e14 <ble_gap_set_fix_bond_idx+0x50>)
10007dea:	3202      	adds	r2, #2
10007dec:	4798      	blx	r3
10007dee:	2800      	cmp	r0, #0
10007df0:	d004      	beq.n	10007dfc <ble_gap_set_fix_bond_idx+0x38>
10007df2:	22bc      	movs	r2, #188	; 0xbc
10007df4:	4903      	ldr	r1, [pc, #12]	; (10007e04 <ble_gap_set_fix_bond_idx+0x40>)
10007df6:	4808      	ldr	r0, [pc, #32]	; (10007e18 <ble_gap_set_fix_bond_idx+0x54>)
10007df8:	4b04      	ldr	r3, [pc, #16]	; (10007e0c <ble_gap_set_fix_bond_idx+0x48>)
10007dfa:	4798      	blx	r3
10007dfc:	4b07      	ldr	r3, [pc, #28]	; (10007e1c <ble_gap_set_fix_bond_idx+0x58>)
10007dfe:	701d      	strb	r5, [r3, #0]
10007e00:	bd70      	pop	{r4, r5, r6, pc}
10007e02:	46c0      	nop			; (mov r8, r8)
10007e04:	1000b2d8 	.word	0x1000b2d8
10007e08:	1000b3da 	.word	0x1000b3da
10007e0c:	00006609 	.word	0x00006609
10007e10:	20015132 	.word	0x20015132
10007e14:	0000308d 	.word	0x0000308d
10007e18:	1000b4d2 	.word	0x1000b4d2
10007e1c:	20014d04 	.word	0x20014d04

10007e20 <ble_gap_sec_get_last_bond_index>:
10007e20:	2002      	movs	r0, #2
10007e22:	4b01      	ldr	r3, [pc, #4]	; (10007e28 <ble_gap_sec_get_last_bond_index+0x8>)
10007e24:	5618      	ldrsb	r0, [r3, r0]
10007e26:	4770      	bx	lr
10007e28:	20015132 	.word	0x20015132

10007e2c <ble_gap_sec_get_last_bond_address>:
10007e2c:	b573      	push	{r0, r1, r4, r5, r6, lr}
10007e2e:	0004      	movs	r4, r0
10007e30:	2002      	movs	r0, #2
10007e32:	4b0a      	ldr	r3, [pc, #40]	; (10007e5c <ble_gap_sec_get_last_bond_address+0x30>)
10007e34:	2500      	movs	r5, #0
10007e36:	5618      	ldrsb	r0, [r3, r0]
10007e38:	1c43      	adds	r3, r0, #1
10007e3a:	d00d      	beq.n	10007e58 <ble_gap_sec_get_last_bond_address+0x2c>
10007e3c:	466b      	mov	r3, sp
10007e3e:	2207      	movs	r2, #7
10007e40:	2101      	movs	r1, #1
10007e42:	4e07      	ldr	r6, [pc, #28]	; (10007e60 <ble_gap_sec_get_last_bond_address+0x34>)
10007e44:	b2c0      	uxtb	r0, r0
10007e46:	47b0      	blx	r6
10007e48:	42a8      	cmp	r0, r5
10007e4a:	d105      	bne.n	10007e58 <ble_gap_sec_get_last_bond_address+0x2c>
10007e4c:	2207      	movs	r2, #7
10007e4e:	4669      	mov	r1, sp
10007e50:	0020      	movs	r0, r4
10007e52:	4b04      	ldr	r3, [pc, #16]	; (10007e64 <ble_gap_sec_get_last_bond_address+0x38>)
10007e54:	4798      	blx	r3
10007e56:	3501      	adds	r5, #1
10007e58:	0028      	movs	r0, r5
10007e5a:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10007e5c:	20015132 	.word	0x20015132
10007e60:	100076e9 	.word	0x100076e9
10007e64:	00005821 	.word	0x00005821

10007e68 <ble_gap_sec_set_irk_status>:
10007e68:	4b01      	ldr	r3, [pc, #4]	; (10007e70 <ble_gap_sec_set_irk_status+0x8>)
10007e6a:	335b      	adds	r3, #91	; 0x5b
10007e6c:	7018      	strb	r0, [r3, #0]
10007e6e:	4770      	bx	lr
10007e70:	20015132 	.word	0x20015132

10007e74 <ble_gap_sec_is_loc_irk_valid>:
10007e74:	4b01      	ldr	r3, [pc, #4]	; (10007e7c <ble_gap_sec_is_loc_irk_valid+0x8>)
10007e76:	335b      	adds	r3, #91	; 0x5b
10007e78:	7818      	ldrb	r0, [r3, #0]
10007e7a:	4770      	bx	lr
10007e7c:	20015132 	.word	0x20015132

10007e80 <ble_gap_sec_get_loc_irk>:
10007e80:	4801      	ldr	r0, [pc, #4]	; (10007e88 <ble_gap_sec_get_loc_irk+0x8>)
10007e82:	305c      	adds	r0, #92	; 0x5c
10007e84:	4770      	bx	lr
10007e86:	46c0      	nop			; (mov r8, r8)
10007e88:	20015132 	.word	0x20015132

10007e8c <ble_gap_sec_store_irk>:
10007e8c:	b510      	push	{r4, lr}
10007e8e:	1e01      	subs	r1, r0, #0
10007e90:	4c0b      	ldr	r4, [pc, #44]	; (10007ec0 <ble_gap_sec_store_irk+0x34>)
10007e92:	d004      	beq.n	10007e9e <ble_gap_sec_store_irk+0x12>
10007e94:	0020      	movs	r0, r4
10007e96:	2210      	movs	r2, #16
10007e98:	4b0a      	ldr	r3, [pc, #40]	; (10007ec4 <ble_gap_sec_store_irk+0x38>)
10007e9a:	305c      	adds	r0, #92	; 0x5c
10007e9c:	4798      	blx	r3
10007e9e:	0022      	movs	r2, r4
10007ea0:	2110      	movs	r1, #16
10007ea2:	20a0      	movs	r0, #160	; 0xa0
10007ea4:	4b08      	ldr	r3, [pc, #32]	; (10007ec8 <ble_gap_sec_store_irk+0x3c>)
10007ea6:	325c      	adds	r2, #92	; 0x5c
10007ea8:	4798      	blx	r3
10007eaa:	2800      	cmp	r0, #0
10007eac:	d006      	beq.n	10007ebc <ble_gap_sec_store_irk+0x30>
10007eae:	235a      	movs	r3, #90	; 0x5a
10007eb0:	2100      	movs	r1, #0
10007eb2:	4a06      	ldr	r2, [pc, #24]	; (10007ecc <ble_gap_sec_store_irk+0x40>)
10007eb4:	0008      	movs	r0, r1
10007eb6:	4c06      	ldr	r4, [pc, #24]	; (10007ed0 <ble_gap_sec_store_irk+0x44>)
10007eb8:	33ff      	adds	r3, #255	; 0xff
10007eba:	47a0      	blx	r4
10007ebc:	bd10      	pop	{r4, pc}
10007ebe:	46c0      	nop			; (mov r8, r8)
10007ec0:	20015132 	.word	0x20015132
10007ec4:	00005821 	.word	0x00005821
10007ec8:	0000308d 	.word	0x0000308d
10007ecc:	1000b2d8 	.word	0x1000b2d8
10007ed0:	00006641 	.word	0x00006641

10007ed4 <ble_gap_sec_remove_all_bond>:
10007ed4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
10007ed6:	2400      	movs	r4, #0
10007ed8:	4b14      	ldr	r3, [pc, #80]	; (10007f2c <ble_gap_sec_remove_all_bond+0x58>)
10007eda:	801c      	strh	r4, [r3, #0]
10007edc:	4b14      	ldr	r3, [pc, #80]	; (10007f30 <ble_gap_sec_remove_all_bond+0x5c>)
10007ede:	b2e0      	uxtb	r0, r4
10007ee0:	4798      	blx	r3
10007ee2:	4d14      	ldr	r5, [pc, #80]	; (10007f34 <ble_gap_sec_remove_all_bond+0x60>)
10007ee4:	47a8      	blx	r5
10007ee6:	1e03      	subs	r3, r0, #0
10007ee8:	d004      	beq.n	10007ef4 <ble_gap_sec_remove_all_bond+0x20>
10007eea:	0022      	movs	r2, r4
10007eec:	4912      	ldr	r1, [pc, #72]	; (10007f38 <ble_gap_sec_remove_all_bond+0x64>)
10007eee:	4813      	ldr	r0, [pc, #76]	; (10007f3c <ble_gap_sec_remove_all_bond+0x68>)
10007ef0:	4e13      	ldr	r6, [pc, #76]	; (10007f40 <ble_gap_sec_remove_all_bond+0x6c>)
10007ef2:	47b0      	blx	r6
10007ef4:	3401      	adds	r4, #1
10007ef6:	2c03      	cmp	r4, #3
10007ef8:	d1f0      	bne.n	10007edc <ble_gap_sec_remove_all_bond+0x8>
10007efa:	466b      	mov	r3, sp
10007efc:	1d99      	adds	r1, r3, #6
10007efe:	2306      	movs	r3, #6
10007f00:	203a      	movs	r0, #58	; 0x3a
10007f02:	800b      	strh	r3, [r1, #0]
10007f04:	aa02      	add	r2, sp, #8
10007f06:	4b0f      	ldr	r3, [pc, #60]	; (10007f44 <ble_gap_sec_remove_all_bond+0x70>)
10007f08:	4798      	blx	r3
10007f0a:	2800      	cmp	r0, #0
10007f0c:	d10d      	bne.n	10007f2a <ble_gap_sec_remove_all_bond+0x56>
10007f0e:	303a      	adds	r0, #58	; 0x3a
10007f10:	47a8      	blx	r5
10007f12:	1e02      	subs	r2, r0, #0
10007f14:	d009      	beq.n	10007f2a <ble_gap_sec_remove_all_bond+0x56>
10007f16:	4908      	ldr	r1, [pc, #32]	; (10007f38 <ble_gap_sec_remove_all_bond+0x64>)
10007f18:	4b09      	ldr	r3, [pc, #36]	; (10007f40 <ble_gap_sec_remove_all_bond+0x6c>)
10007f1a:	480b      	ldr	r0, [pc, #44]	; (10007f48 <ble_gap_sec_remove_all_bond+0x74>)
10007f1c:	4798      	blx	r3
10007f1e:	22b9      	movs	r2, #185	; 0xb9
10007f20:	490a      	ldr	r1, [pc, #40]	; (10007f4c <ble_gap_sec_remove_all_bond+0x78>)
10007f22:	480b      	ldr	r0, [pc, #44]	; (10007f50 <ble_gap_sec_remove_all_bond+0x7c>)
10007f24:	4b0b      	ldr	r3, [pc, #44]	; (10007f54 <ble_gap_sec_remove_all_bond+0x80>)
10007f26:	0052      	lsls	r2, r2, #1
10007f28:	4798      	blx	r3
10007f2a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
10007f2c:	20015132 	.word	0x20015132
10007f30:	100076c1 	.word	0x100076c1
10007f34:	0000301d 	.word	0x0000301d
10007f38:	1000b4a1 	.word	0x1000b4a1
10007f3c:	1000b3f0 	.word	0x1000b3f0
10007f40:	000066b1 	.word	0x000066b1
10007f44:	00002f55 	.word	0x00002f55
10007f48:	1000b41a 	.word	0x1000b41a
10007f4c:	1000b2d8 	.word	0x1000b2d8
10007f50:	1000b4d2 	.word	0x1000b4d2
10007f54:	00006609 	.word	0x00006609

10007f58 <ble_gap_sec_pairing_rsp>:
10007f58:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10007f5a:	001f      	movs	r7, r3
10007f5c:	9101      	str	r1, [sp, #4]
10007f5e:	4b19      	ldr	r3, [pc, #100]	; (10007fc4 <ble_gap_sec_pairing_rsp+0x6c>)
10007f60:	2101      	movs	r1, #1
10007f62:	0005      	movs	r5, r0
10007f64:	0014      	movs	r4, r2
10007f66:	4798      	blx	r3
10007f68:	1e01      	subs	r1, r0, #0
10007f6a:	d105      	bne.n	10007f78 <ble_gap_sec_pairing_rsp+0x20>
10007f6c:	002a      	movs	r2, r5
10007f6e:	4916      	ldr	r1, [pc, #88]	; (10007fc8 <ble_gap_sec_pairing_rsp+0x70>)
10007f70:	4816      	ldr	r0, [pc, #88]	; (10007fcc <ble_gap_sec_pairing_rsp+0x74>)
10007f72:	4b17      	ldr	r3, [pc, #92]	; (10007fd0 <ble_gap_sec_pairing_rsp+0x78>)
10007f74:	4798      	blx	r3
10007f76:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10007f78:	4e16      	ldr	r6, [pc, #88]	; (10007fd4 <ble_gap_sec_pairing_rsp+0x7c>)
10007f7a:	2207      	movs	r2, #7
10007f7c:	4b16      	ldr	r3, [pc, #88]	; (10007fd8 <ble_gap_sec_pairing_rsp+0x80>)
10007f7e:	1d30      	adds	r0, r6, #4
10007f80:	4798      	blx	r3
10007f82:	78a3      	ldrb	r3, [r4, #2]
10007f84:	0229      	lsls	r1, r5, #8
10007f86:	70f3      	strb	r3, [r6, #3]
10007f88:	2509      	movs	r5, #9
10007f8a:	2300      	movs	r3, #0
10007f8c:	365a      	adds	r6, #90	; 0x5a
10007f8e:	7033      	strb	r3, [r6, #0]
10007f90:	4329      	orrs	r1, r5
10007f92:	2204      	movs	r2, #4
10007f94:	4d11      	ldr	r5, [pc, #68]	; (10007fdc <ble_gap_sec_pairing_rsp+0x84>)
10007f96:	3322      	adds	r3, #34	; 0x22
10007f98:	4811      	ldr	r0, [pc, #68]	; (10007fe0 <ble_gap_sec_pairing_rsp+0x88>)
10007f9a:	47a8      	blx	r5
10007f9c:	2301      	movs	r3, #1
10007f9e:	7003      	strb	r3, [r0, #0]
10007fa0:	7822      	ldrb	r2, [r4, #0]
10007fa2:	9b01      	ldr	r3, [sp, #4]
10007fa4:	7082      	strb	r2, [r0, #2]
10007fa6:	7862      	ldrb	r2, [r4, #1]
10007fa8:	70c2      	strb	r2, [r0, #3]
10007faa:	78a2      	ldrb	r2, [r4, #2]
10007fac:	7102      	strb	r2, [r0, #4]
10007fae:	78e2      	ldrb	r2, [r4, #3]
10007fb0:	7142      	strb	r2, [r0, #5]
10007fb2:	7922      	ldrb	r2, [r4, #4]
10007fb4:	7182      	strb	r2, [r0, #6]
10007fb6:	7962      	ldrb	r2, [r4, #5]
10007fb8:	7043      	strb	r3, [r0, #1]
10007fba:	71c2      	strb	r2, [r0, #7]
10007fbc:	4b09      	ldr	r3, [pc, #36]	; (10007fe4 <ble_gap_sec_pairing_rsp+0x8c>)
10007fbe:	7207      	strb	r7, [r0, #8]
10007fc0:	4798      	blx	r3
10007fc2:	e7d8      	b.n	10007f76 <ble_gap_sec_pairing_rsp+0x1e>
10007fc4:	00022729 	.word	0x00022729
10007fc8:	1000b4a1 	.word	0x1000b4a1
10007fcc:	1000b363 	.word	0x1000b363
10007fd0:	000066b1 	.word	0x000066b1
10007fd4:	20015132 	.word	0x20015132
10007fd8:	00005821 	.word	0x00005821
10007fdc:	00001171 	.word	0x00001171
10007fe0:	00000e14 	.word	0x00000e14
10007fe4:	000011a9 	.word	0x000011a9

10007fe8 <ble_gap_sec_number_rsp>:
10007fe8:	b570      	push	{r4, r5, r6, lr}
10007fea:	000c      	movs	r4, r1
10007fec:	2109      	movs	r1, #9
10007fee:	0200      	lsls	r0, r0, #8
10007ff0:	4301      	orrs	r1, r0
10007ff2:	2204      	movs	r2, #4
10007ff4:	4d04      	ldr	r5, [pc, #16]	; (10008008 <ble_gap_sec_number_rsp+0x20>)
10007ff6:	2322      	movs	r3, #34	; 0x22
10007ff8:	4804      	ldr	r0, [pc, #16]	; (1000800c <ble_gap_sec_number_rsp+0x24>)
10007ffa:	47a8      	blx	r5
10007ffc:	230a      	movs	r3, #10
10007ffe:	7044      	strb	r4, [r0, #1]
10008000:	7003      	strb	r3, [r0, #0]
10008002:	4b03      	ldr	r3, [pc, #12]	; (10008010 <ble_gap_sec_number_rsp+0x28>)
10008004:	4798      	blx	r3
10008006:	bd70      	pop	{r4, r5, r6, pc}
10008008:	00001171 	.word	0x00001171
1000800c:	00000e14 	.word	0x00000e14
10008010:	000011a9 	.word	0x000011a9

10008014 <ble_gap_sec_remove_bond>:
10008014:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10008016:	0007      	movs	r7, r0
10008018:	000e      	movs	r6, r1
1000801a:	4b0a      	ldr	r3, [pc, #40]	; (10008044 <ble_gap_sec_remove_bond+0x30>)
1000801c:	2100      	movs	r1, #0
1000801e:	2014      	movs	r0, #20
10008020:	0015      	movs	r5, r2
10008022:	4798      	blx	r3
10008024:	0039      	movs	r1, r7
10008026:	2207      	movs	r2, #7
10008028:	4b07      	ldr	r3, [pc, #28]	; (10008048 <ble_gap_sec_remove_bond+0x34>)
1000802a:	0004      	movs	r4, r0
1000802c:	4798      	blx	r3
1000802e:	23ff      	movs	r3, #255	; 0xff
10008030:	60a6      	str	r6, [r4, #8]
10008032:	7423      	strb	r3, [r4, #16]
10008034:	60e5      	str	r5, [r4, #12]
10008036:	0022      	movs	r2, r4
10008038:	0020      	movs	r0, r4
1000803a:	4904      	ldr	r1, [pc, #16]	; (1000804c <ble_gap_sec_remove_bond+0x38>)
1000803c:	4b04      	ldr	r3, [pc, #16]	; (10008050 <ble_gap_sec_remove_bond+0x3c>)
1000803e:	4798      	blx	r3
10008040:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10008042:	46c0      	nop			; (mov r8, r8)
10008044:	000013b9 	.word	0x000013b9
10008048:	00005821 	.word	0x00005821
1000804c:	100077a1 	.word	0x100077a1
10008050:	10007a39 	.word	0x10007a39

10008054 <ble_gap_sec_check_bonded>:
10008054:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10008056:	0006      	movs	r6, r0
10008058:	000f      	movs	r7, r1
1000805a:	4b12      	ldr	r3, [pc, #72]	; (100080a4 <ble_gap_sec_check_bonded+0x50>)
1000805c:	2100      	movs	r1, #0
1000805e:	2014      	movs	r0, #20
10008060:	0015      	movs	r5, r2
10008062:	4798      	blx	r3
10008064:	2101      	movs	r1, #1
10008066:	60c5      	str	r5, [r0, #12]
10008068:	6087      	str	r7, [r0, #8]
1000806a:	7406      	strb	r6, [r0, #16]
1000806c:	0004      	movs	r4, r0
1000806e:	4b0e      	ldr	r3, [pc, #56]	; (100080a8 <ble_gap_sec_check_bonded+0x54>)
10008070:	0030      	movs	r0, r6
10008072:	4798      	blx	r3
10008074:	1e05      	subs	r5, r0, #0
10008076:	d00a      	beq.n	1000808e <ble_gap_sec_check_bonded+0x3a>
10008078:	0001      	movs	r1, r0
1000807a:	2207      	movs	r2, #7
1000807c:	0020      	movs	r0, r4
1000807e:	4b0b      	ldr	r3, [pc, #44]	; (100080ac <ble_gap_sec_check_bonded+0x58>)
10008080:	4798      	blx	r3
10008082:	0022      	movs	r2, r4
10008084:	0020      	movs	r0, r4
10008086:	490a      	ldr	r1, [pc, #40]	; (100080b0 <ble_gap_sec_check_bonded+0x5c>)
10008088:	4b0a      	ldr	r3, [pc, #40]	; (100080b4 <ble_gap_sec_check_bonded+0x60>)
1000808a:	4798      	blx	r3
1000808c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000808e:	0032      	movs	r2, r6
10008090:	4909      	ldr	r1, [pc, #36]	; (100080b8 <ble_gap_sec_check_bonded+0x64>)
10008092:	4b0a      	ldr	r3, [pc, #40]	; (100080bc <ble_gap_sec_check_bonded+0x68>)
10008094:	480a      	ldr	r0, [pc, #40]	; (100080c0 <ble_gap_sec_check_bonded+0x6c>)
10008096:	4798      	blx	r3
10008098:	2207      	movs	r2, #7
1000809a:	0029      	movs	r1, r5
1000809c:	0020      	movs	r0, r4
1000809e:	4b09      	ldr	r3, [pc, #36]	; (100080c4 <ble_gap_sec_check_bonded+0x70>)
100080a0:	e7ee      	b.n	10008080 <ble_gap_sec_check_bonded+0x2c>
100080a2:	46c0      	nop			; (mov r8, r8)
100080a4:	000013b9 	.word	0x000013b9
100080a8:	00022729 	.word	0x00022729
100080ac:	00005821 	.word	0x00005821
100080b0:	10007855 	.word	0x10007855
100080b4:	10007a39 	.word	0x10007a39
100080b8:	1000b4a1 	.word	0x1000b4a1
100080bc:	000066b1 	.word	0x000066b1
100080c0:	1000b363 	.word	0x1000b363
100080c4:	00005859 	.word	0x00005859

100080c8 <ble_gap_sec_init>:
100080c8:	2302      	movs	r3, #2
100080ca:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100080cc:	a901      	add	r1, sp, #4
100080ce:	800b      	strh	r3, [r1, #0]
100080d0:	466b      	mov	r3, sp
100080d2:	1d9e      	adds	r6, r3, #6
100080d4:	2310      	movs	r3, #16
100080d6:	4c2a      	ldr	r4, [pc, #168]	; (10008180 <ble_gap_sec_init+0xb8>)
100080d8:	8033      	strh	r3, [r6, #0]
100080da:	1ca5      	adds	r5, r4, #2
100080dc:	002a      	movs	r2, r5
100080de:	2036      	movs	r0, #54	; 0x36
100080e0:	4b28      	ldr	r3, [pc, #160]	; (10008184 <ble_gap_sec_init+0xbc>)
100080e2:	4798      	blx	r3
100080e4:	1e01      	subs	r1, r0, #0
100080e6:	d00e      	beq.n	10008106 <ble_gap_sec_init+0x3e>
100080e8:	2802      	cmp	r0, #2
100080ea:	d147      	bne.n	1000817c <ble_gap_sec_init+0xb4>
100080ec:	23ff      	movs	r3, #255	; 0xff
100080ee:	002a      	movs	r2, r5
100080f0:	70a3      	strb	r3, [r4, #2]
100080f2:	2036      	movs	r0, #54	; 0x36
100080f4:	4b24      	ldr	r3, [pc, #144]	; (10008188 <ble_gap_sec_init+0xc0>)
100080f6:	4798      	blx	r3
100080f8:	2800      	cmp	r0, #0
100080fa:	d004      	beq.n	10008106 <ble_gap_sec_init+0x3e>
100080fc:	4a23      	ldr	r2, [pc, #140]	; (1000818c <ble_gap_sec_init+0xc4>)
100080fe:	4924      	ldr	r1, [pc, #144]	; (10008190 <ble_gap_sec_init+0xc8>)
10008100:	4824      	ldr	r0, [pc, #144]	; (10008194 <ble_gap_sec_init+0xcc>)
10008102:	4b25      	ldr	r3, [pc, #148]	; (10008198 <ble_gap_sec_init+0xd0>)
10008104:	4798      	blx	r3
10008106:	2500      	movs	r5, #0
10008108:	8025      	strh	r5, [r4, #0]
1000810a:	2100      	movs	r1, #0
1000810c:	466b      	mov	r3, sp
1000810e:	2201      	movs	r2, #1
10008110:	70d9      	strb	r1, [r3, #3]
10008112:	4f22      	ldr	r7, [pc, #136]	; (1000819c <ble_gap_sec_init+0xd4>)
10008114:	b2e8      	uxtb	r0, r5
10008116:	3303      	adds	r3, #3
10008118:	47b8      	blx	r7
1000811a:	1e02      	subs	r2, r0, #0
1000811c:	d00a      	beq.n	10008134 <ble_gap_sec_init+0x6c>
1000811e:	2802      	cmp	r0, #2
10008120:	d013      	beq.n	1000814a <ble_gap_sec_init+0x82>
10008122:	491f      	ldr	r1, [pc, #124]	; (100081a0 <ble_gap_sec_init+0xd8>)
10008124:	4b1f      	ldr	r3, [pc, #124]	; (100081a4 <ble_gap_sec_init+0xdc>)
10008126:	4820      	ldr	r0, [pc, #128]	; (100081a8 <ble_gap_sec_init+0xe0>)
10008128:	4798      	blx	r3
1000812a:	2290      	movs	r2, #144	; 0x90
1000812c:	4918      	ldr	r1, [pc, #96]	; (10008190 <ble_gap_sec_init+0xc8>)
1000812e:	4819      	ldr	r0, [pc, #100]	; (10008194 <ble_gap_sec_init+0xcc>)
10008130:	4b19      	ldr	r3, [pc, #100]	; (10008198 <ble_gap_sec_init+0xd0>)
10008132:	4798      	blx	r3
10008134:	466b      	mov	r3, sp
10008136:	78d9      	ldrb	r1, [r3, #3]
10008138:	2300      	movs	r3, #0
1000813a:	8822      	ldrh	r2, [r4, #0]
1000813c:	4299      	cmp	r1, r3
1000813e:	d002      	beq.n	10008146 <ble_gap_sec_init+0x7e>
10008140:	3301      	adds	r3, #1
10008142:	40ab      	lsls	r3, r5
10008144:	b29b      	uxth	r3, r3
10008146:	4313      	orrs	r3, r2
10008148:	8023      	strh	r3, [r4, #0]
1000814a:	3501      	adds	r5, #1
1000814c:	2d03      	cmp	r5, #3
1000814e:	d1dc      	bne.n	1000810a <ble_gap_sec_init+0x42>
10008150:	8822      	ldrh	r2, [r4, #0]
10008152:	4913      	ldr	r1, [pc, #76]	; (100081a0 <ble_gap_sec_init+0xd8>)
10008154:	4b13      	ldr	r3, [pc, #76]	; (100081a4 <ble_gap_sec_init+0xdc>)
10008156:	4815      	ldr	r0, [pc, #84]	; (100081ac <ble_gap_sec_init+0xe4>)
10008158:	4798      	blx	r3
1000815a:	0022      	movs	r2, r4
1000815c:	0031      	movs	r1, r6
1000815e:	20a0      	movs	r0, #160	; 0xa0
10008160:	4b08      	ldr	r3, [pc, #32]	; (10008184 <ble_gap_sec_init+0xbc>)
10008162:	325c      	adds	r2, #92	; 0x5c
10008164:	4798      	blx	r3
10008166:	2800      	cmp	r0, #0
10008168:	d102      	bne.n	10008170 <ble_gap_sec_init+0xa8>
1000816a:	2301      	movs	r3, #1
1000816c:	345b      	adds	r4, #91	; 0x5b
1000816e:	7023      	strb	r3, [r4, #0]
10008170:	2101      	movs	r1, #1
10008172:	0008      	movs	r0, r1
10008174:	4a0e      	ldr	r2, [pc, #56]	; (100081b0 <ble_gap_sec_init+0xe8>)
10008176:	4b0f      	ldr	r3, [pc, #60]	; (100081b4 <ble_gap_sec_init+0xec>)
10008178:	4798      	blx	r3
1000817a:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000817c:	4a0e      	ldr	r2, [pc, #56]	; (100081b8 <ble_gap_sec_init+0xf0>)
1000817e:	e7be      	b.n	100080fe <ble_gap_sec_init+0x36>
10008180:	20015132 	.word	0x20015132
10008184:	00002f55 	.word	0x00002f55
10008188:	0000308d 	.word	0x0000308d
1000818c:	000003d2 	.word	0x000003d2
10008190:	1000b2d8 	.word	0x1000b2d8
10008194:	1000b4d2 	.word	0x1000b4d2
10008198:	00006609 	.word	0x00006609
1000819c:	100076e9 	.word	0x100076e9
100081a0:	1000b4a1 	.word	0x1000b4a1
100081a4:	000066b1 	.word	0x000066b1
100081a8:	1000b45f 	.word	0x1000b45f
100081ac:	1000b47a 	.word	0x1000b47a
100081b0:	10007a8d 	.word	0x10007a8d
100081b4:	10006f01 	.word	0x10006f01
100081b8:	000003d5 	.word	0x000003d5

100081bc <ble_hogpd_set_state>:
100081bc:	b510      	push	{r4, lr}
100081be:	000b      	movs	r3, r1
100081c0:	4907      	ldr	r1, [pc, #28]	; (100081e0 <ble_hogpd_set_state+0x24>)
100081c2:	0082      	lsls	r2, r0, #2
100081c4:	6809      	ldr	r1, [r1, #0]
100081c6:	188c      	adds	r4, r1, r2
100081c8:	5c89      	ldrb	r1, [r1, r2]
100081ca:	4299      	cmp	r1, r3
100081cc:	d006      	beq.n	100081dc <ble_hogpd_set_state+0x20>
100081ce:	7023      	strb	r3, [r4, #0]
100081d0:	4b04      	ldr	r3, [pc, #16]	; (100081e4 <ble_hogpd_set_state+0x28>)
100081d2:	681b      	ldr	r3, [r3, #0]
100081d4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
100081d6:	2b00      	cmp	r3, #0
100081d8:	d000      	beq.n	100081dc <ble_hogpd_set_state+0x20>
100081da:	4798      	blx	r3
100081dc:	bd10      	pop	{r4, pc}
100081de:	46c0      	nop			; (mov r8, r8)
100081e0:	200151ac 	.word	0x200151ac
100081e4:	200151a8 	.word	0x200151a8

100081e8 <ble_hogpd_disc_ind_handler>:
100081e8:	b510      	push	{r4, lr}
100081ea:	4a09      	ldr	r2, [pc, #36]	; (10008210 <ble_hogpd_disc_ind_handler+0x28>)
100081ec:	0a1b      	lsrs	r3, r3, #8
100081ee:	6812      	ldr	r2, [r2, #0]
100081f0:	0099      	lsls	r1, r3, #2
100081f2:	5c8a      	ldrb	r2, [r1, r2]
100081f4:	2a01      	cmp	r2, #1
100081f6:	d909      	bls.n	1000820c <ble_hogpd_disc_ind_handler+0x24>
100081f8:	2101      	movs	r1, #1
100081fa:	000c      	movs	r4, r1
100081fc:	409c      	lsls	r4, r3
100081fe:	4805      	ldr	r0, [pc, #20]	; (10008214 <ble_hogpd_disc_ind_handler+0x2c>)
10008200:	8802      	ldrh	r2, [r0, #0]
10008202:	43a2      	bics	r2, r4
10008204:	8002      	strh	r2, [r0, #0]
10008206:	b2d8      	uxtb	r0, r3
10008208:	4b03      	ldr	r3, [pc, #12]	; (10008218 <ble_hogpd_disc_ind_handler+0x30>)
1000820a:	4798      	blx	r3
1000820c:	2000      	movs	r0, #0
1000820e:	bd10      	pop	{r4, pc}
10008210:	200151ac 	.word	0x200151ac
10008214:	2001519e 	.word	0x2001519e
10008218:	100081bd 	.word	0x100081bd

1000821c <ble_hogpd_enable_rsp_handler>:
1000821c:	b510      	push	{r4, lr}
1000821e:	4b06      	ldr	r3, [pc, #24]	; (10008238 <ble_hogpd_enable_rsp_handler+0x1c>)
10008220:	7808      	ldrb	r0, [r1, #0]
10008222:	681b      	ldr	r3, [r3, #0]
10008224:	0082      	lsls	r2, r0, #2
10008226:	5cd3      	ldrb	r3, [r2, r3]
10008228:	2b01      	cmp	r3, #1
1000822a:	d102      	bne.n	10008232 <ble_hogpd_enable_rsp_handler+0x16>
1000822c:	2102      	movs	r1, #2
1000822e:	4b03      	ldr	r3, [pc, #12]	; (1000823c <ble_hogpd_enable_rsp_handler+0x20>)
10008230:	4798      	blx	r3
10008232:	2000      	movs	r0, #0
10008234:	bd10      	pop	{r4, pc}
10008236:	46c0      	nop			; (mov r8, r8)
10008238:	200151ac 	.word	0x200151ac
1000823c:	100081bd 	.word	0x100081bd

10008240 <ble_hogpd_task_cfg>:
10008240:	b510      	push	{r4, lr}
10008242:	4b03      	ldr	r3, [pc, #12]	; (10008250 <ble_hogpd_task_cfg+0x10>)
10008244:	222a      	movs	r2, #42	; 0x2a
10008246:	6819      	ldr	r1, [r3, #0]
10008248:	4b02      	ldr	r3, [pc, #8]	; (10008254 <ble_hogpd_task_cfg+0x14>)
1000824a:	3102      	adds	r1, #2
1000824c:	4798      	blx	r3
1000824e:	bd10      	pop	{r4, pc}
10008250:	200151a8 	.word	0x200151a8
10008254:	00005821 	.word	0x00005821

10008258 <ble_hogpd_start_op>:
10008258:	b530      	push	{r4, r5, lr}
1000825a:	4d13      	ldr	r5, [pc, #76]	; (100082a8 <ble_hogpd_start_op+0x50>)
1000825c:	b087      	sub	sp, #28
1000825e:	682b      	ldr	r3, [r5, #0]
10008260:	aa05      	add	r2, sp, #20
10008262:	3348      	adds	r3, #72	; 0x48
10008264:	881b      	ldrh	r3, [r3, #0]
10008266:	4c11      	ldr	r4, [pc, #68]	; (100082ac <ble_hogpd_start_op+0x54>)
10008268:	8013      	strh	r3, [r2, #0]
1000826a:	9202      	str	r2, [sp, #8]
1000826c:	9101      	str	r1, [sp, #4]
1000826e:	9000      	str	r0, [sp, #0]
10008270:	222a      	movs	r2, #42	; 0x2a
10008272:	2104      	movs	r1, #4
10008274:	2026      	movs	r0, #38	; 0x26
10008276:	4b0e      	ldr	r3, [pc, #56]	; (100082b0 <ble_hogpd_start_op+0x58>)
10008278:	47a0      	blx	r4
1000827a:	2400      	movs	r4, #0
1000827c:	682b      	ldr	r3, [r5, #0]
1000827e:	334a      	adds	r3, #74	; 0x4a
10008280:	781b      	ldrb	r3, [r3, #0]
10008282:	42a3      	cmp	r3, r4
10008284:	dc09      	bgt.n	1000829a <ble_hogpd_start_op+0x42>
10008286:	2116      	movs	r1, #22
10008288:	2306      	movs	r3, #6
1000828a:	4469      	add	r1, sp
1000828c:	800b      	strh	r3, [r1, #0]
1000828e:	4a09      	ldr	r2, [pc, #36]	; (100082b4 <ble_hogpd_start_op+0x5c>)
10008290:	4b09      	ldr	r3, [pc, #36]	; (100082b8 <ble_hogpd_start_op+0x60>)
10008292:	203a      	movs	r0, #58	; 0x3a
10008294:	4798      	blx	r3
10008296:	b007      	add	sp, #28
10008298:	bd30      	pop	{r4, r5, pc}
1000829a:	b2e0      	uxtb	r0, r4
1000829c:	2101      	movs	r1, #1
1000829e:	4b07      	ldr	r3, [pc, #28]	; (100082bc <ble_hogpd_start_op+0x64>)
100082a0:	4798      	blx	r3
100082a2:	3401      	adds	r4, #1
100082a4:	e7ea      	b.n	1000827c <ble_hogpd_start_op+0x24>
100082a6:	46c0      	nop			; (mov r8, r8)
100082a8:	200151a8 	.word	0x200151a8
100082ac:	100072dd 	.word	0x100072dd
100082b0:	10008241 	.word	0x10008241
100082b4:	200151a0 	.word	0x200151a0
100082b8:	00002f55 	.word	0x00002f55
100082bc:	100081bd 	.word	0x100081bd

100082c0 <ble_hogpd_init_op>:
100082c0:	b510      	push	{r4, lr}
100082c2:	4c10      	ldr	r4, [pc, #64]	; (10008304 <ble_hogpd_init_op+0x44>)
100082c4:	6823      	ldr	r3, [r4, #0]
100082c6:	334a      	adds	r3, #74	; 0x4a
100082c8:	781b      	ldrb	r3, [r3, #0]
100082ca:	2b00      	cmp	r3, #0
100082cc:	d105      	bne.n	100082da <ble_hogpd_init_op+0x1a>
100082ce:	2282      	movs	r2, #130	; 0x82
100082d0:	490d      	ldr	r1, [pc, #52]	; (10008308 <ble_hogpd_init_op+0x48>)
100082d2:	480e      	ldr	r0, [pc, #56]	; (1000830c <ble_hogpd_init_op+0x4c>)
100082d4:	4b0e      	ldr	r3, [pc, #56]	; (10008310 <ble_hogpd_init_op+0x50>)
100082d6:	32ff      	adds	r2, #255	; 0xff
100082d8:	4798      	blx	r3
100082da:	480e      	ldr	r0, [pc, #56]	; (10008314 <ble_hogpd_init_op+0x54>)
100082dc:	4b0e      	ldr	r3, [pc, #56]	; (10008318 <ble_hogpd_init_op+0x58>)
100082de:	4798      	blx	r3
100082e0:	6824      	ldr	r4, [r4, #0]
100082e2:	2104      	movs	r1, #4
100082e4:	0023      	movs	r3, r4
100082e6:	334a      	adds	r3, #74	; 0x4a
100082e8:	7818      	ldrb	r0, [r3, #0]
100082ea:	4b0c      	ldr	r3, [pc, #48]	; (1000831c <ble_hogpd_init_op+0x5c>)
100082ec:	4798      	blx	r3
100082ee:	4b0c      	ldr	r3, [pc, #48]	; (10008320 <ble_hogpd_init_op+0x60>)
100082f0:	7822      	ldrb	r2, [r4, #0]
100082f2:	6018      	str	r0, [r3, #0]
100082f4:	4b0b      	ldr	r3, [pc, #44]	; (10008324 <ble_hogpd_init_op+0x64>)
100082f6:	2026      	movs	r0, #38	; 0x26
100082f8:	701a      	strb	r2, [r3, #0]
100082fa:	490b      	ldr	r1, [pc, #44]	; (10008328 <ble_hogpd_init_op+0x68>)
100082fc:	4b0b      	ldr	r3, [pc, #44]	; (1000832c <ble_hogpd_init_op+0x6c>)
100082fe:	4798      	blx	r3
10008300:	bd10      	pop	{r4, pc}
10008302:	46c0      	nop			; (mov r8, r8)
10008304:	200151a8 	.word	0x200151a8
10008308:	1000b4b0 	.word	0x1000b4b0
1000830c:	1000b4bc 	.word	0x1000b4bc
10008310:	00006609 	.word	0x00006609
10008314:	200151b0 	.word	0x200151b0
10008318:	00002657 	.word	0x00002657
1000831c:	0002f53d 	.word	0x0002f53d
10008320:	200151ac 	.word	0x200151ac
10008324:	200151a6 	.word	0x200151a6
10008328:	1000b68c 	.word	0x1000b68c
1000832c:	10008a29 	.word	0x10008a29

10008330 <ble_hogpd_proto_mode_req_ind_handler>:
10008330:	b570      	push	{r4, r5, r6, lr}
10008332:	4b10      	ldr	r3, [pc, #64]	; (10008374 <ble_hogpd_proto_mode_req_ind_handler+0x44>)
10008334:	2026      	movs	r0, #38	; 0x26
10008336:	000c      	movs	r4, r1
10008338:	4798      	blx	r3
1000833a:	2304      	movs	r3, #4
1000833c:	0001      	movs	r1, r0
1000833e:	001a      	movs	r2, r3
10008340:	480d      	ldr	r0, [pc, #52]	; (10008378 <ble_hogpd_proto_mode_req_ind_handler+0x48>)
10008342:	4d0e      	ldr	r5, [pc, #56]	; (1000837c <ble_hogpd_proto_mode_req_ind_handler+0x4c>)
10008344:	47a8      	blx	r5
10008346:	4b0e      	ldr	r3, [pc, #56]	; (10008380 <ble_hogpd_proto_mode_req_ind_handler+0x50>)
10008348:	881a      	ldrh	r2, [r3, #0]
1000834a:	7823      	ldrb	r3, [r4, #0]
1000834c:	411a      	asrs	r2, r3
1000834e:	2380      	movs	r3, #128	; 0x80
10008350:	07d2      	lsls	r2, r2, #31
10008352:	d504      	bpl.n	1000835e <ble_hogpd_proto_mode_req_ind_handler+0x2e>
10008354:	7863      	ldrb	r3, [r4, #1]
10008356:	3b03      	subs	r3, #3
10008358:	1e5a      	subs	r2, r3, #1
1000835a:	4193      	sbcs	r3, r2
1000835c:	01db      	lsls	r3, r3, #7
1000835e:	7043      	strb	r3, [r0, #1]
10008360:	7823      	ldrb	r3, [r4, #0]
10008362:	7003      	strb	r3, [r0, #0]
10008364:	78a3      	ldrb	r3, [r4, #2]
10008366:	7083      	strb	r3, [r0, #2]
10008368:	78e3      	ldrb	r3, [r4, #3]
1000836a:	70c3      	strb	r3, [r0, #3]
1000836c:	4b05      	ldr	r3, [pc, #20]	; (10008384 <ble_hogpd_proto_mode_req_ind_handler+0x54>)
1000836e:	4798      	blx	r3
10008370:	2000      	movs	r0, #0
10008372:	bd70      	pop	{r4, r5, r6, pc}
10008374:	0002b409 	.word	0x0002b409
10008378:	00002607 	.word	0x00002607
1000837c:	00001171 	.word	0x00001171
10008380:	2001519e 	.word	0x2001519e
10008384:	000011a9 	.word	0x000011a9

10008388 <ble_hogpd_conn_ind_handler>:
10008388:	b570      	push	{r4, r5, r6, lr}
1000838a:	0a1d      	lsrs	r5, r3, #8
1000838c:	b2ec      	uxtb	r4, r5
1000838e:	0020      	movs	r0, r4
10008390:	4b0b      	ldr	r3, [pc, #44]	; (100083c0 <ble_hogpd_conn_ind_handler+0x38>)
10008392:	4798      	blx	r3
10008394:	2801      	cmp	r0, #1
10008396:	d111      	bne.n	100083bc <ble_hogpd_conn_ind_handler+0x34>
10008398:	40a8      	lsls	r0, r5
1000839a:	4b0a      	ldr	r3, [pc, #40]	; (100083c4 <ble_hogpd_conn_ind_handler+0x3c>)
1000839c:	881a      	ldrh	r2, [r3, #0]
1000839e:	4310      	orrs	r0, r2
100083a0:	8018      	strh	r0, [r3, #0]
100083a2:	4b09      	ldr	r3, [pc, #36]	; (100083c8 <ble_hogpd_conn_ind_handler+0x40>)
100083a4:	2026      	movs	r0, #38	; 0x26
100083a6:	4798      	blx	r3
100083a8:	0001      	movs	r1, r0
100083aa:	2098      	movs	r0, #152	; 0x98
100083ac:	2306      	movs	r3, #6
100083ae:	2204      	movs	r2, #4
100083b0:	4d06      	ldr	r5, [pc, #24]	; (100083cc <ble_hogpd_conn_ind_handler+0x44>)
100083b2:	0180      	lsls	r0, r0, #6
100083b4:	47a8      	blx	r5
100083b6:	4b06      	ldr	r3, [pc, #24]	; (100083d0 <ble_hogpd_conn_ind_handler+0x48>)
100083b8:	7004      	strb	r4, [r0, #0]
100083ba:	4798      	blx	r3
100083bc:	2000      	movs	r0, #0
100083be:	bd70      	pop	{r4, r5, r6, pc}
100083c0:	000226e9 	.word	0x000226e9
100083c4:	2001519e 	.word	0x2001519e
100083c8:	0002b409 	.word	0x0002b409
100083cc:	00001171 	.word	0x00001171
100083d0:	000011a9 	.word	0x000011a9

100083d4 <ble_hogpd_report_cmp_cb>:
100083d4:	b570      	push	{r4, r5, r6, lr}
100083d6:	4b0b      	ldr	r3, [pc, #44]	; (10008404 <ble_hogpd_report_cmp_cb+0x30>)
100083d8:	0005      	movs	r5, r0
100083da:	480b      	ldr	r0, [pc, #44]	; (10008408 <ble_hogpd_report_cmp_cb+0x34>)
100083dc:	000e      	movs	r6, r1
100083de:	4798      	blx	r3
100083e0:	1e04      	subs	r4, r0, #0
100083e2:	d104      	bne.n	100083ee <ble_hogpd_report_cmp_cb+0x1a>
100083e4:	228e      	movs	r2, #142	; 0x8e
100083e6:	4909      	ldr	r1, [pc, #36]	; (1000840c <ble_hogpd_report_cmp_cb+0x38>)
100083e8:	4809      	ldr	r0, [pc, #36]	; (10008410 <ble_hogpd_report_cmp_cb+0x3c>)
100083ea:	4b0a      	ldr	r3, [pc, #40]	; (10008414 <ble_hogpd_report_cmp_cb+0x40>)
100083ec:	4798      	blx	r3
100083ee:	6863      	ldr	r3, [r4, #4]
100083f0:	2b00      	cmp	r3, #0
100083f2:	d003      	beq.n	100083fc <ble_hogpd_report_cmp_cb+0x28>
100083f4:	0031      	movs	r1, r6
100083f6:	0028      	movs	r0, r5
100083f8:	68a2      	ldr	r2, [r4, #8]
100083fa:	4798      	blx	r3
100083fc:	0020      	movs	r0, r4
100083fe:	4b06      	ldr	r3, [pc, #24]	; (10008418 <ble_hogpd_report_cmp_cb+0x44>)
10008400:	4798      	blx	r3
10008402:	bd70      	pop	{r4, r5, r6, pc}
10008404:	00002715 	.word	0x00002715
10008408:	200151b0 	.word	0x200151b0
1000840c:	1000b4b0 	.word	0x1000b4b0
10008410:	1000b4d4 	.word	0x1000b4d4
10008414:	00006609 	.word	0x00006609
10008418:	0002f629 	.word	0x0002f629

1000841c <ble_hogpd_report_upd_handler>:
1000841c:	b570      	push	{r4, r5, r6, lr}
1000841e:	4b16      	ldr	r3, [pc, #88]	; (10008478 <ble_hogpd_report_upd_handler+0x5c>)
10008420:	4d16      	ldr	r5, [pc, #88]	; (1000847c <ble_hogpd_report_upd_handler+0x60>)
10008422:	681b      	ldr	r3, [r3, #0]
10008424:	000c      	movs	r4, r1
10008426:	781a      	ldrb	r2, [r3, #0]
10008428:	782b      	ldrb	r3, [r5, #0]
1000842a:	429a      	cmp	r2, r3
1000842c:	d804      	bhi.n	10008438 <ble_hogpd_report_upd_handler+0x1c>
1000842e:	229c      	movs	r2, #156	; 0x9c
10008430:	4913      	ldr	r1, [pc, #76]	; (10008480 <ble_hogpd_report_upd_handler+0x64>)
10008432:	4814      	ldr	r0, [pc, #80]	; (10008484 <ble_hogpd_report_upd_handler+0x68>)
10008434:	4b14      	ldr	r3, [pc, #80]	; (10008488 <ble_hogpd_report_upd_handler+0x6c>)
10008436:	4798      	blx	r3
10008438:	782b      	ldrb	r3, [r5, #0]
1000843a:	3301      	adds	r3, #1
1000843c:	702b      	strb	r3, [r5, #0]
1000843e:	7860      	ldrb	r0, [r4, #1]
10008440:	4b12      	ldr	r3, [pc, #72]	; (1000848c <ble_hogpd_report_upd_handler+0x70>)
10008442:	7825      	ldrb	r5, [r4, #0]
10008444:	4798      	blx	r3
10008446:	4b12      	ldr	r3, [pc, #72]	; (10008490 <ble_hogpd_report_upd_handler+0x74>)
10008448:	0001      	movs	r1, r0
1000844a:	0028      	movs	r0, r5
1000844c:	4798      	blx	r3
1000844e:	4811      	ldr	r0, [pc, #68]	; (10008494 <ble_hogpd_report_upd_handler+0x78>)
10008450:	7825      	ldrb	r5, [r4, #0]
10008452:	8803      	ldrh	r3, [r0, #0]
10008454:	2101      	movs	r1, #1
10008456:	001a      	movs	r2, r3
10008458:	412a      	asrs	r2, r5
1000845a:	420a      	tst	r2, r1
1000845c:	d009      	beq.n	10008472 <ble_hogpd_report_upd_handler+0x56>
1000845e:	7862      	ldrb	r2, [r4, #1]
10008460:	2a00      	cmp	r2, #0
10008462:	d006      	beq.n	10008472 <ble_hogpd_report_upd_handler+0x56>
10008464:	40a9      	lsls	r1, r5
10008466:	438b      	bics	r3, r1
10008468:	8003      	strh	r3, [r0, #0]
1000846a:	490b      	ldr	r1, [pc, #44]	; (10008498 <ble_hogpd_report_upd_handler+0x7c>)
1000846c:	480b      	ldr	r0, [pc, #44]	; (1000849c <ble_hogpd_report_upd_handler+0x80>)
1000846e:	4b0c      	ldr	r3, [pc, #48]	; (100084a0 <ble_hogpd_report_upd_handler+0x84>)
10008470:	4798      	blx	r3
10008472:	2000      	movs	r0, #0
10008474:	bd70      	pop	{r4, r5, r6, pc}
10008476:	46c0      	nop			; (mov r8, r8)
10008478:	200151a8 	.word	0x200151a8
1000847c:	200151a6 	.word	0x200151a6
10008480:	1000b4b0 	.word	0x1000b4b0
10008484:	1000b4df 	.word	0x1000b4df
10008488:	00006609 	.word	0x00006609
1000848c:	10008ad1 	.word	0x10008ad1
10008490:	100083d5 	.word	0x100083d5
10008494:	2001519e 	.word	0x2001519e
10008498:	1000b677 	.word	0x1000b677
1000849c:	1000b509 	.word	0x1000b509
100084a0:	000066b1 	.word	0x000066b1

100084a4 <ble_hogpd_send_report_cfm>:
100084a4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100084a6:	0006      	movs	r6, r0
100084a8:	9301      	str	r3, [sp, #4]
100084aa:	2026      	movs	r0, #38	; 0x26
100084ac:	4b11      	ldr	r3, [pc, #68]	; (100084f4 <ble_hogpd_send_report_cfm+0x50>)
100084ae:	0015      	movs	r5, r2
100084b0:	000f      	movs	r7, r1
100084b2:	4798      	blx	r3
100084b4:	0033      	movs	r3, r6
100084b6:	330a      	adds	r3, #10
100084b8:	0001      	movs	r1, r0
100084ba:	2204      	movs	r2, #4
100084bc:	4c0e      	ldr	r4, [pc, #56]	; (100084f8 <ble_hogpd_send_report_cfm+0x54>)
100084be:	b29b      	uxth	r3, r3
100084c0:	480e      	ldr	r0, [pc, #56]	; (100084fc <ble_hogpd_send_report_cfm+0x58>)
100084c2:	47a0      	blx	r4
100084c4:	0004      	movs	r4, r0
100084c6:	782b      	ldrb	r3, [r5, #0]
100084c8:	0032      	movs	r2, r6
100084ca:	7003      	strb	r3, [r0, #0]
100084cc:	786b      	ldrb	r3, [r5, #1]
100084ce:	0039      	movs	r1, r7
100084d0:	7043      	strb	r3, [r0, #1]
100084d2:	9b01      	ldr	r3, [sp, #4]
100084d4:	7083      	strb	r3, [r0, #2]
100084d6:	78ab      	ldrb	r3, [r5, #2]
100084d8:	7103      	strb	r3, [r0, #4]
100084da:	78eb      	ldrb	r3, [r5, #3]
100084dc:	80c6      	strh	r6, [r0, #6]
100084de:	7143      	strb	r3, [r0, #5]
100084e0:	79ab      	ldrb	r3, [r5, #6]
100084e2:	7203      	strb	r3, [r0, #8]
100084e4:	4b06      	ldr	r3, [pc, #24]	; (10008500 <ble_hogpd_send_report_cfm+0x5c>)
100084e6:	3009      	adds	r0, #9
100084e8:	4798      	blx	r3
100084ea:	0020      	movs	r0, r4
100084ec:	4b05      	ldr	r3, [pc, #20]	; (10008504 <ble_hogpd_send_report_cfm+0x60>)
100084ee:	4798      	blx	r3
100084f0:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100084f2:	46c0      	nop			; (mov r8, r8)
100084f4:	0002b409 	.word	0x0002b409
100084f8:	00001171 	.word	0x00001171
100084fc:	00002605 	.word	0x00002605
10008500:	00005821 	.word	0x00005821
10008504:	000011a9 	.word	0x000011a9

10008508 <ble_hogpd_report_req_ind_handler>:
10008508:	b51f      	push	{r0, r1, r2, r3, r4, lr}
1000850a:	784b      	ldrb	r3, [r1, #1]
1000850c:	000c      	movs	r4, r1
1000850e:	2b01      	cmp	r3, #1
10008510:	d14c      	bne.n	100085ac <ble_hogpd_report_req_ind_handler+0xa4>
10008512:	78c8      	ldrb	r0, [r1, #3]
10008514:	2804      	cmp	r0, #4
10008516:	d844      	bhi.n	100085a2 <ble_hogpd_report_req_ind_handler+0x9a>
10008518:	f000 fe6e 	bl	100091f8 <____gnu_thumb1_case_uqi_veneer>
1000851c:	2e2e0314 	.word	0x2e2e0314
10008520:	38          	.byte	0x38
10008521:	00          	.byte	0x00
10008522:	4b34      	ldr	r3, [pc, #208]	; (100085f4 <ble_hogpd_report_req_ind_handler+0xec>)
10008524:	681a      	ldr	r2, [r3, #0]
10008526:	788b      	ldrb	r3, [r1, #2]
10008528:	0019      	movs	r1, r3
1000852a:	3318      	adds	r3, #24
1000852c:	310a      	adds	r1, #10
1000852e:	005b      	lsls	r3, r3, #1
10008530:	18d3      	adds	r3, r2, r3
10008532:	0089      	lsls	r1, r1, #2
10008534:	1851      	adds	r1, r2, r1
10008536:	8898      	ldrh	r0, [r3, #4]
10008538:	0022      	movs	r2, r4
1000853a:	2300      	movs	r3, #0
1000853c:	6849      	ldr	r1, [r1, #4]
1000853e:	4c2e      	ldr	r4, [pc, #184]	; (100085f8 <ble_hogpd_report_req_ind_handler+0xf0>)
10008540:	47a0      	blx	r4
10008542:	e012      	b.n	1000856a <ble_hogpd_report_req_ind_handler+0x62>
10008544:	4b2b      	ldr	r3, [pc, #172]	; (100085f4 <ble_hogpd_report_req_ind_handler+0xec>)
10008546:	681b      	ldr	r3, [r3, #0]
10008548:	6c1a      	ldr	r2, [r3, #64]	; 0x40
1000854a:	2a00      	cmp	r2, #0
1000854c:	d010      	beq.n	10008570 <ble_hogpd_report_req_ind_handler+0x68>
1000854e:	780b      	ldrb	r3, [r1, #0]
10008550:	a801      	add	r0, sp, #4
10008552:	7003      	strb	r3, [r0, #0]
10008554:	788b      	ldrb	r3, [r1, #2]
10008556:	7043      	strb	r3, [r0, #1]
10008558:	2300      	movs	r3, #0
1000855a:	7083      	strb	r3, [r0, #2]
1000855c:	7989      	ldrb	r1, [r1, #6]
1000855e:	8083      	strh	r3, [r0, #4]
10008560:	80c3      	strh	r3, [r0, #6]
10008562:	3b01      	subs	r3, #1
10008564:	70c1      	strb	r1, [r0, #3]
10008566:	8103      	strh	r3, [r0, #8]
10008568:	4790      	blx	r2
1000856a:	2000      	movs	r0, #0
1000856c:	b004      	add	sp, #16
1000856e:	bd10      	pop	{r4, pc}
10008570:	4922      	ldr	r1, [pc, #136]	; (100085fc <ble_hogpd_report_req_ind_handler+0xf4>)
10008572:	4823      	ldr	r0, [pc, #140]	; (10008600 <ble_hogpd_report_req_ind_handler+0xf8>)
10008574:	4b23      	ldr	r3, [pc, #140]	; (10008604 <ble_hogpd_report_req_ind_handler+0xfc>)
10008576:	4798      	blx	r3
10008578:	2208      	movs	r2, #8
1000857a:	4923      	ldr	r1, [pc, #140]	; (10008608 <ble_hogpd_report_req_ind_handler+0x100>)
1000857c:	4b23      	ldr	r3, [pc, #140]	; (1000860c <ble_hogpd_report_req_ind_handler+0x104>)
1000857e:	a801      	add	r0, sp, #4
10008580:	4798      	blx	r3
10008582:	2300      	movs	r3, #0
10008584:	0022      	movs	r2, r4
10008586:	2008      	movs	r0, #8
10008588:	a901      	add	r1, sp, #4
1000858a:	e7d8      	b.n	1000853e <ble_hogpd_report_req_ind_handler+0x36>
1000858c:	491e      	ldr	r1, [pc, #120]	; (10008608 <ble_hogpd_report_req_ind_handler+0x100>)
1000858e:	2203      	movs	r2, #3
10008590:	4b1e      	ldr	r3, [pc, #120]	; (1000860c <ble_hogpd_report_req_ind_handler+0x104>)
10008592:	3108      	adds	r1, #8
10008594:	a801      	add	r0, sp, #4
10008596:	4798      	blx	r3
10008598:	2300      	movs	r3, #0
1000859a:	0022      	movs	r2, r4
1000859c:	2003      	movs	r0, #3
1000859e:	a901      	add	r1, sp, #4
100085a0:	e7cd      	b.n	1000853e <ble_hogpd_report_req_ind_handler+0x36>
100085a2:	4916      	ldr	r1, [pc, #88]	; (100085fc <ble_hogpd_report_req_ind_handler+0xf4>)
100085a4:	481a      	ldr	r0, [pc, #104]	; (10008610 <ble_hogpd_report_req_ind_handler+0x108>)
100085a6:	4b17      	ldr	r3, [pc, #92]	; (10008604 <ble_hogpd_report_req_ind_handler+0xfc>)
100085a8:	4798      	blx	r3
100085aa:	e7de      	b.n	1000856a <ble_hogpd_report_req_ind_handler+0x62>
100085ac:	2b02      	cmp	r3, #2
100085ae:	d11d      	bne.n	100085ec <ble_hogpd_report_req_ind_handler+0xe4>
100085b0:	4b10      	ldr	r3, [pc, #64]	; (100085f4 <ble_hogpd_report_req_ind_handler+0xec>)
100085b2:	681b      	ldr	r3, [r3, #0]
100085b4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
100085b6:	2b00      	cmp	r3, #0
100085b8:	d010      	beq.n	100085dc <ble_hogpd_report_req_ind_handler+0xd4>
100085ba:	2200      	movs	r2, #0
100085bc:	a801      	add	r0, sp, #4
100085be:	8002      	strh	r2, [r0, #0]
100085c0:	780a      	ldrb	r2, [r1, #0]
100085c2:	3407      	adds	r4, #7
100085c4:	7082      	strb	r2, [r0, #2]
100085c6:	788a      	ldrb	r2, [r1, #2]
100085c8:	70c2      	strb	r2, [r0, #3]
100085ca:	78ca      	ldrb	r2, [r1, #3]
100085cc:	7102      	strb	r2, [r0, #4]
100085ce:	798a      	ldrb	r2, [r1, #6]
100085d0:	7142      	strb	r2, [r0, #5]
100085d2:	888a      	ldrh	r2, [r1, #4]
100085d4:	6084      	str	r4, [r0, #8]
100085d6:	80c2      	strh	r2, [r0, #6]
100085d8:	4798      	blx	r3
100085da:	e7c6      	b.n	1000856a <ble_hogpd_report_req_ind_handler+0x62>
100085dc:	000a      	movs	r2, r1
100085de:	0018      	movs	r0, r3
100085e0:	0019      	movs	r1, r3
100085e2:	4c05      	ldr	r4, [pc, #20]	; (100085f8 <ble_hogpd_report_req_ind_handler+0xf0>)
100085e4:	47a0      	blx	r4
100085e6:	4905      	ldr	r1, [pc, #20]	; (100085fc <ble_hogpd_report_req_ind_handler+0xf4>)
100085e8:	480a      	ldr	r0, [pc, #40]	; (10008614 <ble_hogpd_report_req_ind_handler+0x10c>)
100085ea:	e7dc      	b.n	100085a6 <ble_hogpd_report_req_ind_handler+0x9e>
100085ec:	4903      	ldr	r1, [pc, #12]	; (100085fc <ble_hogpd_report_req_ind_handler+0xf4>)
100085ee:	480a      	ldr	r0, [pc, #40]	; (10008618 <ble_hogpd_report_req_ind_handler+0x110>)
100085f0:	e7d9      	b.n	100085a6 <ble_hogpd_report_req_ind_handler+0x9e>
100085f2:	46c0      	nop			; (mov r8, r8)
100085f4:	200151a8 	.word	0x200151a8
100085f8:	100084a5 	.word	0x100084a5
100085fc:	1000b677 	.word	0x1000b677
10008600:	1000b536 	.word	0x1000b536
10008604:	000066b1 	.word	0x000066b1
10008608:	1000b66c 	.word	0x1000b66c
1000860c:	00005821 	.word	0x00005821
10008610:	1000b561 	.word	0x1000b561
10008614:	1000b58b 	.word	0x1000b58b
10008618:	1000b5b7 	.word	0x1000b5b7

1000861c <ble_hogpd_ntf_cfg_ind_handler>:
1000861c:	b510      	push	{r4, lr}
1000861e:	000c      	movs	r4, r1
10008620:	4b19      	ldr	r3, [pc, #100]	; (10008688 <ble_hogpd_ntf_cfg_ind_handler+0x6c>)
10008622:	780a      	ldrb	r2, [r1, #0]
10008624:	681b      	ldr	r3, [r3, #0]
10008626:	8849      	ldrh	r1, [r1, #2]
10008628:	0092      	lsls	r2, r2, #2
1000862a:	189a      	adds	r2, r3, r2
1000862c:	0989      	lsrs	r1, r1, #6
1000862e:	8051      	strh	r1, [r2, #2]
10008630:	7820      	ldrb	r0, [r4, #0]
10008632:	0082      	lsls	r2, r0, #2
10008634:	189b      	adds	r3, r3, r2
10008636:	4a15      	ldr	r2, [pc, #84]	; (1000868c <ble_hogpd_ntf_cfg_ind_handler+0x70>)
10008638:	8859      	ldrh	r1, [r3, #2]
1000863a:	6812      	ldr	r2, [r2, #0]
1000863c:	8f12      	ldrh	r2, [r2, #56]	; 0x38
1000863e:	4211      	tst	r1, r2
10008640:	d005      	beq.n	1000864e <ble_hogpd_ntf_cfg_ind_handler+0x32>
10008642:	781b      	ldrb	r3, [r3, #0]
10008644:	2b02      	cmp	r3, #2
10008646:	d102      	bne.n	1000864e <ble_hogpd_ntf_cfg_ind_handler+0x32>
10008648:	2103      	movs	r1, #3
1000864a:	4b11      	ldr	r3, [pc, #68]	; (10008690 <ble_hogpd_ntf_cfg_ind_handler+0x74>)
1000864c:	4798      	blx	r3
1000864e:	7823      	ldrb	r3, [r4, #0]
10008650:	2b02      	cmp	r3, #2
10008652:	d816      	bhi.n	10008682 <ble_hogpd_ntf_cfg_ind_handler+0x66>
10008654:	8861      	ldrh	r1, [r4, #2]
10008656:	4a0f      	ldr	r2, [pc, #60]	; (10008694 <ble_hogpd_ntf_cfg_ind_handler+0x78>)
10008658:	005b      	lsls	r3, r3, #1
1000865a:	0989      	lsrs	r1, r1, #6
1000865c:	5299      	strh	r1, [r3, r2]
1000865e:	4b0e      	ldr	r3, [pc, #56]	; (10008698 <ble_hogpd_ntf_cfg_ind_handler+0x7c>)
10008660:	7821      	ldrb	r1, [r4, #0]
10008662:	881b      	ldrh	r3, [r3, #0]
10008664:	410b      	asrs	r3, r1
10008666:	07db      	lsls	r3, r3, #31
10008668:	d50b      	bpl.n	10008682 <ble_hogpd_ntf_cfg_ind_handler+0x66>
1000866a:	2106      	movs	r1, #6
1000866c:	203a      	movs	r0, #58	; 0x3a
1000866e:	4b0b      	ldr	r3, [pc, #44]	; (1000869c <ble_hogpd_ntf_cfg_ind_handler+0x80>)
10008670:	4798      	blx	r3
10008672:	2800      	cmp	r0, #0
10008674:	d005      	beq.n	10008682 <ble_hogpd_ntf_cfg_ind_handler+0x66>
10008676:	22ac      	movs	r2, #172	; 0xac
10008678:	4909      	ldr	r1, [pc, #36]	; (100086a0 <ble_hogpd_ntf_cfg_ind_handler+0x84>)
1000867a:	480a      	ldr	r0, [pc, #40]	; (100086a4 <ble_hogpd_ntf_cfg_ind_handler+0x88>)
1000867c:	4b0a      	ldr	r3, [pc, #40]	; (100086a8 <ble_hogpd_ntf_cfg_ind_handler+0x8c>)
1000867e:	0052      	lsls	r2, r2, #1
10008680:	4798      	blx	r3
10008682:	2000      	movs	r0, #0
10008684:	bd10      	pop	{r4, pc}
10008686:	46c0      	nop			; (mov r8, r8)
10008688:	200151ac 	.word	0x200151ac
1000868c:	200151a8 	.word	0x200151a8
10008690:	100081bd 	.word	0x100081bd
10008694:	200151a0 	.word	0x200151a0
10008698:	2001519e 	.word	0x2001519e
1000869c:	0000308d 	.word	0x0000308d
100086a0:	1000b4b0 	.word	0x1000b4b0
100086a4:	1000b4d2 	.word	0x1000b4d2
100086a8:	00006609 	.word	0x00006609

100086ac <ble_hogpd_module_get>:
100086ac:	b510      	push	{r4, lr}
100086ae:	4b06      	ldr	r3, [pc, #24]	; (100086c8 <ble_hogpd_module_get+0x1c>)
100086b0:	6018      	str	r0, [r3, #0]
100086b2:	8f03      	ldrh	r3, [r0, #56]	; 0x38
100086b4:	2b00      	cmp	r3, #0
100086b6:	d105      	bne.n	100086c4 <ble_hogpd_module_get+0x18>
100086b8:	3301      	adds	r3, #1
100086ba:	8703      	strh	r3, [r0, #56]	; 0x38
100086bc:	4903      	ldr	r1, [pc, #12]	; (100086cc <ble_hogpd_module_get+0x20>)
100086be:	4804      	ldr	r0, [pc, #16]	; (100086d0 <ble_hogpd_module_get+0x24>)
100086c0:	4b04      	ldr	r3, [pc, #16]	; (100086d4 <ble_hogpd_module_get+0x28>)
100086c2:	4798      	blx	r3
100086c4:	4804      	ldr	r0, [pc, #16]	; (100086d8 <ble_hogpd_module_get+0x2c>)
100086c6:	bd10      	pop	{r4, pc}
100086c8:	200151a8 	.word	0x200151a8
100086cc:	1000b677 	.word	0x1000b677
100086d0:	1000b5e3 	.word	0x1000b5e3
100086d4:	000066b1 	.word	0x000066b1
100086d8:	1000b684 	.word	0x1000b684

100086dc <ble_hogpd_enc_ind_handler>:
100086dc:	b570      	push	{r4, r5, r6, lr}
100086de:	001c      	movs	r4, r3
100086e0:	4b19      	ldr	r3, [pc, #100]	; (10008748 <ble_hogpd_enc_ind_handler+0x6c>)
100086e2:	4798      	blx	r3
100086e4:	2800      	cmp	r0, #0
100086e6:	d105      	bne.n	100086f4 <ble_hogpd_enc_ind_handler+0x18>
100086e8:	4918      	ldr	r1, [pc, #96]	; (1000874c <ble_hogpd_enc_ind_handler+0x70>)
100086ea:	4819      	ldr	r0, [pc, #100]	; (10008750 <ble_hogpd_enc_ind_handler+0x74>)
100086ec:	4b19      	ldr	r3, [pc, #100]	; (10008754 <ble_hogpd_enc_ind_handler+0x78>)
100086ee:	4798      	blx	r3
100086f0:	2000      	movs	r0, #0
100086f2:	bd70      	pop	{r4, r5, r6, pc}
100086f4:	4b18      	ldr	r3, [pc, #96]	; (10008758 <ble_hogpd_enc_ind_handler+0x7c>)
100086f6:	2026      	movs	r0, #38	; 0x26
100086f8:	4798      	blx	r3
100086fa:	0001      	movs	r1, r0
100086fc:	2098      	movs	r0, #152	; 0x98
100086fe:	2306      	movs	r3, #6
10008700:	2204      	movs	r2, #4
10008702:	4d16      	ldr	r5, [pc, #88]	; (1000875c <ble_hogpd_enc_ind_handler+0x80>)
10008704:	0180      	lsls	r0, r0, #6
10008706:	47a8      	blx	r5
10008708:	0005      	movs	r5, r0
1000870a:	0a24      	lsrs	r4, r4, #8
1000870c:	4b14      	ldr	r3, [pc, #80]	; (10008760 <ble_hogpd_enc_ind_handler+0x84>)
1000870e:	b2e6      	uxtb	r6, r4
10008710:	0062      	lsls	r2, r4, #1
10008712:	7006      	strb	r6, [r0, #0]
10008714:	5ad3      	ldrh	r3, [r2, r3]
10008716:	00a4      	lsls	r4, r4, #2
10008718:	019b      	lsls	r3, r3, #6
1000871a:	8043      	strh	r3, [r0, #2]
1000871c:	4b11      	ldr	r3, [pc, #68]	; (10008764 <ble_hogpd_enc_ind_handler+0x88>)
1000871e:	4798      	blx	r3
10008720:	4b11      	ldr	r3, [pc, #68]	; (10008768 <ble_hogpd_enc_ind_handler+0x8c>)
10008722:	4a12      	ldr	r2, [pc, #72]	; (1000876c <ble_hogpd_enc_ind_handler+0x90>)
10008724:	681b      	ldr	r3, [r3, #0]
10008726:	6812      	ldr	r2, [r2, #0]
10008728:	191c      	adds	r4, r3, r4
1000872a:	886b      	ldrh	r3, [r5, #2]
1000872c:	099b      	lsrs	r3, r3, #6
1000872e:	8063      	strh	r3, [r4, #2]
10008730:	8f12      	ldrh	r2, [r2, #56]	; 0x38
10008732:	421a      	tst	r2, r3
10008734:	d0dc      	beq.n	100086f0 <ble_hogpd_enc_ind_handler+0x14>
10008736:	7823      	ldrb	r3, [r4, #0]
10008738:	2b02      	cmp	r3, #2
1000873a:	d1d9      	bne.n	100086f0 <ble_hogpd_enc_ind_handler+0x14>
1000873c:	2103      	movs	r1, #3
1000873e:	0030      	movs	r0, r6
10008740:	4b0b      	ldr	r3, [pc, #44]	; (10008770 <ble_hogpd_enc_ind_handler+0x94>)
10008742:	4798      	blx	r3
10008744:	e7d4      	b.n	100086f0 <ble_hogpd_enc_ind_handler+0x14>
10008746:	46c0      	nop			; (mov r8, r8)
10008748:	10007da9 	.word	0x10007da9
1000874c:	1000b677 	.word	0x1000b677
10008750:	1000b617 	.word	0x1000b617
10008754:	000066b1 	.word	0x000066b1
10008758:	0002b409 	.word	0x0002b409
1000875c:	00001171 	.word	0x00001171
10008760:	200151a0 	.word	0x200151a0
10008764:	000011a9 	.word	0x000011a9
10008768:	200151ac 	.word	0x200151ac
1000876c:	200151a8 	.word	0x200151a8
10008770:	100081bd 	.word	0x100081bd

10008774 <ble_hogpd_ctnl_pt_ind_handler>:
10008774:	b570      	push	{r4, r5, r6, lr}
10008776:	4b0e      	ldr	r3, [pc, #56]	; (100087b0 <ble_hogpd_ctnl_pt_ind_handler+0x3c>)
10008778:	780a      	ldrb	r2, [r1, #0]
1000877a:	881b      	ldrh	r3, [r3, #0]
1000877c:	000c      	movs	r4, r1
1000877e:	4113      	asrs	r3, r2
10008780:	07db      	lsls	r3, r3, #31
10008782:	d512      	bpl.n	100087aa <ble_hogpd_ctnl_pt_ind_handler+0x36>
10008784:	4b0b      	ldr	r3, [pc, #44]	; (100087b4 <ble_hogpd_ctnl_pt_ind_handler+0x40>)
10008786:	2026      	movs	r0, #38	; 0x26
10008788:	4798      	blx	r3
1000878a:	230a      	movs	r3, #10
1000878c:	0001      	movs	r1, r0
1000878e:	2204      	movs	r2, #4
10008790:	4809      	ldr	r0, [pc, #36]	; (100087b8 <ble_hogpd_ctnl_pt_ind_handler+0x44>)
10008792:	4d0a      	ldr	r5, [pc, #40]	; (100087bc <ble_hogpd_ctnl_pt_ind_handler+0x48>)
10008794:	47a8      	blx	r5
10008796:	7823      	ldrb	r3, [r4, #0]
10008798:	7003      	strb	r3, [r0, #0]
1000879a:	2302      	movs	r3, #2
1000879c:	7043      	strb	r3, [r0, #1]
1000879e:	2300      	movs	r3, #0
100087a0:	7083      	strb	r3, [r0, #2]
100087a2:	7863      	ldrb	r3, [r4, #1]
100087a4:	7103      	strb	r3, [r0, #4]
100087a6:	4b06      	ldr	r3, [pc, #24]	; (100087c0 <ble_hogpd_ctnl_pt_ind_handler+0x4c>)
100087a8:	4798      	blx	r3
100087aa:	2000      	movs	r0, #0
100087ac:	bd70      	pop	{r4, r5, r6, pc}
100087ae:	46c0      	nop			; (mov r8, r8)
100087b0:	2001519e 	.word	0x2001519e
100087b4:	0002b409 	.word	0x0002b409
100087b8:	00002605 	.word	0x00002605
100087bc:	00001171 	.word	0x00001171
100087c0:	000011a9 	.word	0x000011a9

100087c4 <ble_hogpd_report_claim>:
100087c4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100087c6:	4f1d      	ldr	r7, [pc, #116]	; (1000883c <ble_hogpd_report_claim+0x78>)
100087c8:	0005      	movs	r5, r0
100087ca:	783c      	ldrb	r4, [r7, #0]
100087cc:	000e      	movs	r6, r1
100087ce:	9200      	str	r2, [sp, #0]
100087d0:	9301      	str	r3, [sp, #4]
100087d2:	2c00      	cmp	r4, #0
100087d4:	d105      	bne.n	100087e2 <ble_hogpd_report_claim+0x1e>
100087d6:	491a      	ldr	r1, [pc, #104]	; (10008840 <ble_hogpd_report_claim+0x7c>)
100087d8:	481a      	ldr	r0, [pc, #104]	; (10008844 <ble_hogpd_report_claim+0x80>)
100087da:	4b1b      	ldr	r3, [pc, #108]	; (10008848 <ble_hogpd_report_claim+0x84>)
100087dc:	4798      	blx	r3
100087de:	0020      	movs	r0, r4
100087e0:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
100087e2:	4b1a      	ldr	r3, [pc, #104]	; (1000884c <ble_hogpd_report_claim+0x88>)
100087e4:	2026      	movs	r0, #38	; 0x26
100087e6:	4798      	blx	r3
100087e8:	0033      	movs	r3, r6
100087ea:	3308      	adds	r3, #8
100087ec:	0001      	movs	r1, r0
100087ee:	2204      	movs	r2, #4
100087f0:	4c17      	ldr	r4, [pc, #92]	; (10008850 <ble_hogpd_report_claim+0x8c>)
100087f2:	b29b      	uxth	r3, r3
100087f4:	4817      	ldr	r0, [pc, #92]	; (10008854 <ble_hogpd_report_claim+0x90>)
100087f6:	47a0      	blx	r4
100087f8:	782b      	ldrb	r3, [r5, #0]
100087fa:	0004      	movs	r4, r0
100087fc:	7003      	strb	r3, [r0, #0]
100087fe:	786b      	ldrb	r3, [r5, #1]
10008800:	7083      	strb	r3, [r0, #2]
10008802:	78ab      	ldrb	r3, [r5, #2]
10008804:	70c3      	strb	r3, [r0, #3]
10008806:	78eb      	ldrb	r3, [r5, #3]
10008808:	8086      	strh	r6, [r0, #4]
1000880a:	7183      	strb	r3, [r0, #6]
1000880c:	783b      	ldrb	r3, [r7, #0]
1000880e:	200c      	movs	r0, #12
10008810:	3b01      	subs	r3, #1
10008812:	703b      	strb	r3, [r7, #0]
10008814:	4b10      	ldr	r3, [pc, #64]	; (10008858 <ble_hogpd_report_claim+0x94>)
10008816:	4798      	blx	r3
10008818:	1e05      	subs	r5, r0, #0
1000881a:	d105      	bne.n	10008828 <ble_hogpd_report_claim+0x64>
1000881c:	22d9      	movs	r2, #217	; 0xd9
1000881e:	490f      	ldr	r1, [pc, #60]	; (1000885c <ble_hogpd_report_claim+0x98>)
10008820:	480f      	ldr	r0, [pc, #60]	; (10008860 <ble_hogpd_report_claim+0x9c>)
10008822:	4b10      	ldr	r3, [pc, #64]	; (10008864 <ble_hogpd_report_claim+0xa0>)
10008824:	0052      	lsls	r2, r2, #1
10008826:	4798      	blx	r3
10008828:	9b00      	ldr	r3, [sp, #0]
1000882a:	0029      	movs	r1, r5
1000882c:	606b      	str	r3, [r5, #4]
1000882e:	9b01      	ldr	r3, [sp, #4]
10008830:	480d      	ldr	r0, [pc, #52]	; (10008868 <ble_hogpd_report_claim+0xa4>)
10008832:	60ab      	str	r3, [r5, #8]
10008834:	4b0d      	ldr	r3, [pc, #52]	; (1000886c <ble_hogpd_report_claim+0xa8>)
10008836:	4798      	blx	r3
10008838:	e7d1      	b.n	100087de <ble_hogpd_report_claim+0x1a>
1000883a:	46c0      	nop			; (mov r8, r8)
1000883c:	200151a6 	.word	0x200151a6
10008840:	1000b677 	.word	0x1000b677
10008844:	1000b640 	.word	0x1000b640
10008848:	000066b1 	.word	0x000066b1
1000884c:	0002b409 	.word	0x0002b409
10008850:	00001171 	.word	0x00001171
10008854:	00002602 	.word	0x00002602
10008858:	0002f615 	.word	0x0002f615
1000885c:	1000b4b0 	.word	0x1000b4b0
10008860:	1000b4d4 	.word	0x1000b4d4
10008864:	00006609 	.word	0x00006609
10008868:	200151b0 	.word	0x200151b0
1000886c:	0000268f 	.word	0x0000268f

10008870 <ble_hogpd_report_send>:
10008870:	b510      	push	{r4, lr}
10008872:	4b0b      	ldr	r3, [pc, #44]	; (100088a0 <ble_hogpd_report_send+0x30>)
10008874:	0004      	movs	r4, r0
10008876:	7800      	ldrb	r0, [r0, #0]
10008878:	681b      	ldr	r3, [r3, #0]
1000887a:	0082      	lsls	r2, r0, #2
1000887c:	5cd3      	ldrb	r3, [r2, r3]
1000887e:	2b03      	cmp	r3, #3
10008880:	d00b      	beq.n	1000889a <ble_hogpd_report_send+0x2a>
10008882:	4b08      	ldr	r3, [pc, #32]	; (100088a4 <ble_hogpd_report_send+0x34>)
10008884:	4908      	ldr	r1, [pc, #32]	; (100088a8 <ble_hogpd_report_send+0x38>)
10008886:	4798      	blx	r3
10008888:	0020      	movs	r0, r4
1000888a:	4a08      	ldr	r2, [pc, #32]	; (100088ac <ble_hogpd_report_send+0x3c>)
1000888c:	380c      	subs	r0, #12
1000888e:	7813      	ldrb	r3, [r2, #0]
10008890:	3301      	adds	r3, #1
10008892:	7013      	strb	r3, [r2, #0]
10008894:	4b06      	ldr	r3, [pc, #24]	; (100088b0 <ble_hogpd_report_send+0x40>)
10008896:	4798      	blx	r3
10008898:	bd10      	pop	{r4, pc}
1000889a:	0020      	movs	r0, r4
1000889c:	4b05      	ldr	r3, [pc, #20]	; (100088b4 <ble_hogpd_report_send+0x44>)
1000889e:	e7fa      	b.n	10008896 <ble_hogpd_report_send+0x26>
100088a0:	200151ac 	.word	0x200151ac
100088a4:	100083d5 	.word	0x100083d5
100088a8:	0000028a 	.word	0x0000028a
100088ac:	200151a6 	.word	0x200151a6
100088b0:	000011fd 	.word	0x000011fd
100088b4:	000011a9 	.word	0x000011a9

100088b8 <ble_hogpd_send_report>:
100088b8:	b570      	push	{r4, r5, r6, lr}
100088ba:	0005      	movs	r5, r0
100088bc:	0008      	movs	r0, r1
100088be:	0013      	movs	r3, r2
100088c0:	4c08      	ldr	r4, [pc, #32]	; (100088e4 <ble_hogpd_send_report+0x2c>)
100088c2:	0002      	movs	r2, r0
100088c4:	88a9      	ldrh	r1, [r5, #4]
100088c6:	0028      	movs	r0, r5
100088c8:	47a0      	blx	r4
100088ca:	1e04      	subs	r4, r0, #0
100088cc:	d008      	beq.n	100088e0 <ble_hogpd_send_report+0x28>
100088ce:	88aa      	ldrh	r2, [r5, #4]
100088d0:	68a9      	ldr	r1, [r5, #8]
100088d2:	4b05      	ldr	r3, [pc, #20]	; (100088e8 <ble_hogpd_send_report+0x30>)
100088d4:	3007      	adds	r0, #7
100088d6:	4798      	blx	r3
100088d8:	0020      	movs	r0, r4
100088da:	4b04      	ldr	r3, [pc, #16]	; (100088ec <ble_hogpd_send_report+0x34>)
100088dc:	4798      	blx	r3
100088de:	2001      	movs	r0, #1
100088e0:	bd70      	pop	{r4, r5, r6, pc}
100088e2:	46c0      	nop			; (mov r8, r8)
100088e4:	100087c5 	.word	0x100087c5
100088e8:	00005821 	.word	0x00005821
100088ec:	10008871 	.word	0x10008871

100088f0 <ble_hogpd_get_peer_info>:
100088f0:	4b01      	ldr	r3, [pc, #4]	; (100088f8 <ble_hogpd_get_peer_info+0x8>)
100088f2:	6818      	ldr	r0, [r3, #0]
100088f4:	4770      	bx	lr
100088f6:	46c0      	nop			; (mov r8, r8)
100088f8:	200151ac 	.word	0x200151ac

100088fc <ble_module_get_by_name>:
100088fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100088fe:	0005      	movs	r5, r0
10008900:	4c07      	ldr	r4, [pc, #28]	; (10008920 <ble_module_get_by_name+0x24>)
10008902:	4f08      	ldr	r7, [pc, #32]	; (10008924 <ble_module_get_by_name+0x28>)
10008904:	4e08      	ldr	r6, [pc, #32]	; (10008928 <ble_module_get_by_name+0x2c>)
10008906:	42bc      	cmp	r4, r7
10008908:	d008      	beq.n	1000891c <ble_module_get_by_name+0x20>
1000890a:	0029      	movs	r1, r5
1000890c:	6820      	ldr	r0, [r4, #0]
1000890e:	47b0      	blx	r6
10008910:	2800      	cmp	r0, #0
10008912:	d101      	bne.n	10008918 <ble_module_get_by_name+0x1c>
10008914:	0020      	movs	r0, r4
10008916:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10008918:	3408      	adds	r4, #8
1000891a:	e7f4      	b.n	10008906 <ble_module_get_by_name+0xa>
1000891c:	2400      	movs	r4, #0
1000891e:	e7f9      	b.n	10008914 <ble_module_get_by_name+0x18>
10008920:	1000b840 	.word	0x1000b840
10008924:	1000b850 	.word	0x1000b850
10008928:	00037201 	.word	0x00037201

1000892c <ble_msg_handler>:
1000892c:	b5f0      	push	{r4, r5, r6, r7, lr}
1000892e:	001d      	movs	r5, r3
10008930:	b087      	sub	sp, #28
10008932:	0a03      	lsrs	r3, r0, #8
10008934:	9302      	str	r3, [sp, #8]
10008936:	b2eb      	uxtb	r3, r5
10008938:	9304      	str	r3, [sp, #16]
1000893a:	3bff      	subs	r3, #255	; 0xff
1000893c:	425a      	negs	r2, r3
1000893e:	4153      	adcs	r3, r2
10008940:	b2db      	uxtb	r3, r3
10008942:	9303      	str	r3, [sp, #12]
10008944:	2300      	movs	r3, #0
10008946:	0004      	movs	r4, r0
10008948:	4f28      	ldr	r7, [pc, #160]	; (100089ec <ble_msg_handler+0xc0>)
1000894a:	9105      	str	r1, [sp, #20]
1000894c:	9300      	str	r3, [sp, #0]
1000894e:	4b28      	ldr	r3, [pc, #160]	; (100089f0 <ble_msg_handler+0xc4>)
10008950:	9a00      	ldr	r2, [sp, #0]
10008952:	881b      	ldrh	r3, [r3, #0]
10008954:	4293      	cmp	r3, r2
10008956:	dc0a      	bgt.n	1000896e <ble_msg_handler+0x42>
10008958:	9b04      	ldr	r3, [sp, #16]
1000895a:	2600      	movs	r6, #0
1000895c:	2bff      	cmp	r3, #255	; 0xff
1000895e:	d03f      	beq.n	100089e0 <ble_msg_handler+0xb4>
10008960:	0022      	movs	r2, r4
10008962:	002b      	movs	r3, r5
10008964:	4923      	ldr	r1, [pc, #140]	; (100089f4 <ble_msg_handler+0xc8>)
10008966:	4c24      	ldr	r4, [pc, #144]	; (100089f8 <ble_msg_handler+0xcc>)
10008968:	4824      	ldr	r0, [pc, #144]	; (100089fc <ble_msg_handler+0xd0>)
1000896a:	47a0      	blx	r4
1000896c:	e038      	b.n	100089e0 <ble_msg_handler+0xb4>
1000896e:	9a02      	ldr	r2, [sp, #8]
10008970:	883b      	ldrh	r3, [r7, #0]
10008972:	9301      	str	r3, [sp, #4]
10008974:	1a9b      	subs	r3, r3, r2
10008976:	425a      	negs	r2, r3
10008978:	4153      	adcs	r3, r2
1000897a:	9a03      	ldr	r2, [sp, #12]
1000897c:	4293      	cmp	r3, r2
1000897e:	d104      	bne.n	1000898a <ble_msg_handler+0x5e>
10008980:	9b00      	ldr	r3, [sp, #0]
10008982:	3708      	adds	r7, #8
10008984:	3301      	adds	r3, #1
10008986:	9300      	str	r3, [sp, #0]
10008988:	e7e1      	b.n	1000894e <ble_msg_handler+0x22>
1000898a:	4a1d      	ldr	r2, [pc, #116]	; (10008a00 <ble_msg_handler+0xd4>)
1000898c:	6879      	ldr	r1, [r7, #4]
1000898e:	4694      	mov	ip, r2
10008990:	888b      	ldrh	r3, [r1, #4]
10008992:	3b01      	subs	r3, #1
10008994:	1c5a      	adds	r2, r3, #1
10008996:	d107      	bne.n	100089a8 <ble_msg_handler+0x7c>
10008998:	4e17      	ldr	r6, [pc, #92]	; (100089f8 <ble_msg_handler+0xcc>)
1000899a:	002b      	movs	r3, r5
1000899c:	0022      	movs	r2, r4
1000899e:	4919      	ldr	r1, [pc, #100]	; (10008a04 <ble_msg_handler+0xd8>)
100089a0:	4816      	ldr	r0, [pc, #88]	; (100089fc <ble_msg_handler+0xd0>)
100089a2:	47b0      	blx	r6
100089a4:	2600      	movs	r6, #0
100089a6:	e017      	b.n	100089d8 <ble_msg_handler+0xac>
100089a8:	680e      	ldr	r6, [r1, #0]
100089aa:	6808      	ldr	r0, [r1, #0]
100089ac:	00da      	lsls	r2, r3, #3
100089ae:	18b6      	adds	r6, r6, r2
100089b0:	5a82      	ldrh	r2, [r0, r2]
100089b2:	4294      	cmp	r4, r2
100089b4:	d001      	beq.n	100089ba <ble_msg_handler+0x8e>
100089b6:	4562      	cmp	r2, ip
100089b8:	d115      	bne.n	100089e6 <ble_msg_handler+0xba>
100089ba:	6873      	ldr	r3, [r6, #4]
100089bc:	2b00      	cmp	r3, #0
100089be:	d104      	bne.n	100089ca <ble_msg_handler+0x9e>
100089c0:	2239      	movs	r2, #57	; 0x39
100089c2:	4911      	ldr	r1, [pc, #68]	; (10008a08 <ble_msg_handler+0xdc>)
100089c4:	4811      	ldr	r0, [pc, #68]	; (10008a0c <ble_msg_handler+0xe0>)
100089c6:	4b12      	ldr	r3, [pc, #72]	; (10008a10 <ble_msg_handler+0xe4>)
100089c8:	4798      	blx	r3
100089ca:	6876      	ldr	r6, [r6, #4]
100089cc:	002b      	movs	r3, r5
100089ce:	2204      	movs	r2, #4
100089d0:	0020      	movs	r0, r4
100089d2:	9905      	ldr	r1, [sp, #20]
100089d4:	47b0      	blx	r6
100089d6:	0006      	movs	r6, r0
100089d8:	9b01      	ldr	r3, [sp, #4]
100089da:	9a02      	ldr	r2, [sp, #8]
100089dc:	4293      	cmp	r3, r2
100089de:	d1cf      	bne.n	10008980 <ble_msg_handler+0x54>
100089e0:	0030      	movs	r0, r6
100089e2:	b007      	add	sp, #28
100089e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
100089e6:	3b01      	subs	r3, #1
100089e8:	e7d4      	b.n	10008994 <ble_msg_handler+0x68>
100089ea:	46c0      	nop			; (mov r8, r8)
100089ec:	200151c8 	.word	0x200151c8
100089f0:	200151c4 	.word	0x200151c4
100089f4:	1000b818 	.word	0x1000b818
100089f8:	000066b1 	.word	0x000066b1
100089fc:	1000b6f5 	.word	0x1000b6f5
10008a00:	0000ffff 	.word	0x0000ffff
10008a04:	1000b808 	.word	0x1000b808
10008a08:	1000b6dc 	.word	0x1000b6dc
10008a0c:	1000b6e7 	.word	0x1000b6e7
10008a10:	00006609 	.word	0x00006609

10008a14 <ble_task_init>:
10008a14:	b510      	push	{r4, lr}
10008a16:	2004      	movs	r0, #4
10008a18:	4901      	ldr	r1, [pc, #4]	; (10008a20 <ble_task_init+0xc>)
10008a1a:	4b02      	ldr	r3, [pc, #8]	; (10008a24 <ble_task_init+0x10>)
10008a1c:	4798      	blx	r3
10008a1e:	bd10      	pop	{r4, pc}
10008a20:	1000b7fc 	.word	0x1000b7fc
10008a24:	00001775 	.word	0x00001775

10008a28 <ble_task_register_handler>:
10008a28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10008a2a:	4e11      	ldr	r6, [pc, #68]	; (10008a70 <ble_task_register_handler+0x48>)
10008a2c:	0005      	movs	r5, r0
10008a2e:	8833      	ldrh	r3, [r6, #0]
10008a30:	000f      	movs	r7, r1
10008a32:	2b09      	cmp	r3, #9
10008a34:	d904      	bls.n	10008a40 <ble_task_register_handler+0x18>
10008a36:	227a      	movs	r2, #122	; 0x7a
10008a38:	490e      	ldr	r1, [pc, #56]	; (10008a74 <ble_task_register_handler+0x4c>)
10008a3a:	480f      	ldr	r0, [pc, #60]	; (10008a78 <ble_task_register_handler+0x50>)
10008a3c:	4b0f      	ldr	r3, [pc, #60]	; (10008a7c <ble_task_register_handler+0x54>)
10008a3e:	4798      	blx	r3
10008a40:	2400      	movs	r4, #0
10008a42:	8833      	ldrh	r3, [r6, #0]
10008a44:	4a0e      	ldr	r2, [pc, #56]	; (10008a80 <ble_task_register_handler+0x58>)
10008a46:	429c      	cmp	r4, r3
10008a48:	d306      	bcc.n	10008a58 <ble_task_register_handler+0x30>
10008a4a:	00d9      	lsls	r1, r3, #3
10008a4c:	1850      	adds	r0, r2, r1
10008a4e:	3301      	adds	r3, #1
10008a50:	6047      	str	r7, [r0, #4]
10008a52:	5255      	strh	r5, [r2, r1]
10008a54:	8033      	strh	r3, [r6, #0]
10008a56:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10008a58:	00e3      	lsls	r3, r4, #3
10008a5a:	5ad3      	ldrh	r3, [r2, r3]
10008a5c:	42ab      	cmp	r3, r5
10008a5e:	d104      	bne.n	10008a6a <ble_task_register_handler+0x42>
10008a60:	227e      	movs	r2, #126	; 0x7e
10008a62:	4904      	ldr	r1, [pc, #16]	; (10008a74 <ble_task_register_handler+0x4c>)
10008a64:	4807      	ldr	r0, [pc, #28]	; (10008a84 <ble_task_register_handler+0x5c>)
10008a66:	4b05      	ldr	r3, [pc, #20]	; (10008a7c <ble_task_register_handler+0x54>)
10008a68:	4798      	blx	r3
10008a6a:	3401      	adds	r4, #1
10008a6c:	b2e4      	uxtb	r4, r4
10008a6e:	e7e8      	b.n	10008a42 <ble_task_register_handler+0x1a>
10008a70:	200151c4 	.word	0x200151c4
10008a74:	1000b6dc 	.word	0x1000b6dc
10008a78:	1000b717 	.word	0x1000b717
10008a7c:	00006609 	.word	0x00006609
10008a80:	200151c8 	.word	0x200151c8
10008a84:	1000b742 	.word	0x1000b742

10008a88 <ble_task_msg_handler_validate>:
10008a88:	b510      	push	{r4, lr}
10008a8a:	4b09      	ldr	r3, [pc, #36]	; (10008ab0 <ble_task_msg_handler_validate+0x28>)
10008a8c:	8819      	ldrh	r1, [r3, #0]
10008a8e:	290a      	cmp	r1, #10
10008a90:	d90c      	bls.n	10008aac <ble_task_msg_handler_validate+0x24>
10008a92:	4c08      	ldr	r4, [pc, #32]	; (10008ab4 <ble_task_msg_handler_validate+0x2c>)
10008a94:	4808      	ldr	r0, [pc, #32]	; (10008ab8 <ble_task_msg_handler_validate+0x30>)
10008a96:	47a0      	blx	r4
10008a98:	210a      	movs	r1, #10
10008a9a:	4808      	ldr	r0, [pc, #32]	; (10008abc <ble_task_msg_handler_validate+0x34>)
10008a9c:	47a0      	blx	r4
10008a9e:	4808      	ldr	r0, [pc, #32]	; (10008ac0 <ble_task_msg_handler_validate+0x38>)
10008aa0:	47a0      	blx	r4
10008aa2:	228f      	movs	r2, #143	; 0x8f
10008aa4:	4907      	ldr	r1, [pc, #28]	; (10008ac4 <ble_task_msg_handler_validate+0x3c>)
10008aa6:	4808      	ldr	r0, [pc, #32]	; (10008ac8 <ble_task_msg_handler_validate+0x40>)
10008aa8:	4b08      	ldr	r3, [pc, #32]	; (10008acc <ble_task_msg_handler_validate+0x44>)
10008aaa:	4798      	blx	r3
10008aac:	bd10      	pop	{r4, pc}
10008aae:	46c0      	nop			; (mov r8, r8)
10008ab0:	200151c4 	.word	0x200151c4
10008ab4:	000066b1 	.word	0x000066b1
10008ab8:	1000b766 	.word	0x1000b766
10008abc:	1000b79f 	.word	0x1000b79f
10008ac0:	1000b7d1 	.word	0x1000b7d1
10008ac4:	1000b6dc 	.word	0x1000b6dc
10008ac8:	1000b4d2 	.word	0x1000b4d2
10008acc:	00006609 	.word	0x00006609

10008ad0 <porting_ble_err_code_t>:
10008ad0:	b510      	push	{r4, lr}
10008ad2:	28ff      	cmp	r0, #255	; 0xff
10008ad4:	d900      	bls.n	10008ad8 <porting_ble_err_code_t+0x8>
10008ad6:	e2db      	b.n	10009090 <porting_ble_err_code_t+0x5c0>
10008ad8:	f000 fb86 	bl	100091e8 <____gnu_thumb1_case_uhi_veneer>
10008adc:	019102e1 	.word	0x019102e1
10008ae0:	01950193 	.word	0x01950193
10008ae4:	019a0197 	.word	0x019a0197
10008ae8:	019e019c 	.word	0x019e019c
10008aec:	01a301a0 	.word	0x01a301a0
10008af0:	01a701a5 	.word	0x01a701a5
10008af4:	01ac01a9 	.word	0x01ac01a9
10008af8:	01b001ae 	.word	0x01b001ae
10008afc:	01b501b2 	.word	0x01b501b2
10008b00:	02da02da 	.word	0x02da02da
10008b04:	02da02da 	.word	0x02da02da
10008b08:	02da02da 	.word	0x02da02da
10008b0c:	02da02da 	.word	0x02da02da
10008b10:	02da02da 	.word	0x02da02da
10008b14:	02da02da 	.word	0x02da02da
10008b18:	02da02da 	.word	0x02da02da
10008b1c:	01880186 	.word	0x01880186
10008b20:	018d018b 	.word	0x018d018b
10008b24:	02da018f 	.word	0x02da018f
10008b28:	02da02da 	.word	0x02da02da
10008b2c:	02da02da 	.word	0x02da02da
10008b30:	02da02da 	.word	0x02da02da
10008b34:	02da02da 	.word	0x02da02da
10008b38:	02da02da 	.word	0x02da02da
10008b3c:	011f011d 	.word	0x011f011d
10008b40:	01250122 	.word	0x01250122
10008b44:	012b0128 	.word	0x012b0128
10008b48:	0131012e 	.word	0x0131012e
10008b4c:	01370134 	.word	0x01370134
10008b50:	013d013a 	.word	0x013d013a
10008b54:	0142013f 	.word	0x0142013f
10008b58:	013d0145 	.word	0x013d0145
10008b5c:	01020100 	.word	0x01020100
10008b60:	01060104 	.word	0x01060104
10008b64:	010a0108 	.word	0x010a0108
10008b68:	010e010c 	.word	0x010e010c
10008b6c:	01130111 	.word	0x01130111
10008b70:	01170115 	.word	0x01170115
10008b74:	011b0119 	.word	0x011b0119
10008b78:	02da02da 	.word	0x02da02da
10008b7c:	01b201ac 	.word	0x01b201ac
10008b80:	01ba01ba 	.word	0x01ba01ba
10008b84:	01bc01bc 	.word	0x01bc01bc
10008b88:	02da01be 	.word	0x02da01be
10008b8c:	02da02da 	.word	0x02da02da
10008b90:	02da02da 	.word	0x02da02da
10008b94:	02da02da 	.word	0x02da02da
10008b98:	02da02da 	.word	0x02da02da
10008b9c:	014802da 	.word	0x014802da
10008ba0:	014c014a 	.word	0x014c014a
10008ba4:	0151014e 	.word	0x0151014e
10008ba8:	01550153 	.word	0x01550153
10008bac:	015a0157 	.word	0x015a0157
10008bb0:	015e015c 	.word	0x015e015c
10008bb4:	01630160 	.word	0x01630160
10008bb8:	02da0165 	.word	0x02da0165
10008bbc:	016702da 	.word	0x016702da
10008bc0:	016b0169 	.word	0x016b0169
10008bc4:	0170016d 	.word	0x0170016d
10008bc8:	01740172 	.word	0x01740172
10008bcc:	01790176 	.word	0x01790176
10008bd0:	017d017b 	.word	0x017d017b
10008bd4:	0182017f 	.word	0x0182017f
10008bd8:	02da0184 	.word	0x02da0184
10008bdc:	01c101b7 	.word	0x01c101b7
10008be0:	01c501c3 	.word	0x01c501c3
10008be4:	01ca01c7 	.word	0x01ca01c7
10008be8:	01ce01cc 	.word	0x01ce01cc
10008bec:	01d301d0 	.word	0x01d301d0
10008bf0:	01d701d5 	.word	0x01d701d5
10008bf4:	01dc01d9 	.word	0x01dc01d9
10008bf8:	01e001de 	.word	0x01e001de
10008bfc:	01e802da 	.word	0x01e802da
10008c00:	01ec01ea 	.word	0x01ec01ea
10008c04:	01f001ee 	.word	0x01f001ee
10008c08:	01f401f2 	.word	0x01f401f2
10008c0c:	01f801f6 	.word	0x01f801f6
10008c10:	01fc01fa 	.word	0x01fc01fa
10008c14:	020001fe 	.word	0x020001fe
10008c18:	02040202 	.word	0x02040202
10008c1c:	02080206 	.word	0x02080206
10008c20:	020c020a 	.word	0x020c020a
10008c24:	0210020e 	.word	0x0210020e
10008c28:	02140212 	.word	0x02140212
10008c2c:	02180216 	.word	0x02180216
10008c30:	021c021a 	.word	0x021c021a
10008c34:	0220021e 	.word	0x0220021e
10008c38:	02240222 	.word	0x02240222
10008c3c:	02280226 	.word	0x02280226
10008c40:	022c022a 	.word	0x022c022a
10008c44:	0230022e 	.word	0x0230022e
10008c48:	02340232 	.word	0x02340232
10008c4c:	02380236 	.word	0x02380236
10008c50:	02da023a 	.word	0x02da023a
10008c54:	023e023c 	.word	0x023e023c
10008c58:	02420240 	.word	0x02420240
10008c5c:	02da0244 	.word	0x02da0244
10008c60:	02da0246 	.word	0x02da0246
10008c64:	024a0248 	.word	0x024a0248
10008c68:	02c0024c 	.word	0x02c0024c
10008c6c:	02da02c2 	.word	0x02da02c2
10008c70:	02c602c4 	.word	0x02c602c4
10008c74:	02ca02c8 	.word	0x02ca02c8
10008c78:	02ce02cc 	.word	0x02ce02cc
10008c7c:	02d202d0 	.word	0x02d202d0
10008c80:	02d602d4 	.word	0x02d602d4
10008c84:	02da02d8 	.word	0x02da02d8
10008c88:	02da02da 	.word	0x02da02da
10008c8c:	02da02da 	.word	0x02da02da
10008c90:	02da02da 	.word	0x02da02da
10008c94:	02da02da 	.word	0x02da02da
10008c98:	02da02da 	.word	0x02da02da
10008c9c:	02da02da 	.word	0x02da02da
10008ca0:	02da02da 	.word	0x02da02da
10008ca4:	02da02da 	.word	0x02da02da
10008ca8:	02da02da 	.word	0x02da02da
10008cac:	02da02da 	.word	0x02da02da
10008cb0:	02da02da 	.word	0x02da02da
10008cb4:	02da02da 	.word	0x02da02da
10008cb8:	02da02da 	.word	0x02da02da
10008cbc:	02da02da 	.word	0x02da02da
10008cc0:	02da02da 	.word	0x02da02da
10008cc4:	02da02da 	.word	0x02da02da
10008cc8:	02da02da 	.word	0x02da02da
10008ccc:	02da02da 	.word	0x02da02da
10008cd0:	02da02da 	.word	0x02da02da
10008cd4:	01e202da 	.word	0x01e202da
10008cd8:	01e601e4 	.word	0x01e601e4
10008cdc:	48a6      	ldr	r0, [pc, #664]	; (10008f78 <porting_ble_err_code_t+0x4a8>)
10008cde:	bd10      	pop	{r4, pc}
10008ce0:	48a6      	ldr	r0, [pc, #664]	; (10008f7c <porting_ble_err_code_t+0x4ac>)
10008ce2:	e7fc      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ce4:	48a6      	ldr	r0, [pc, #664]	; (10008f80 <porting_ble_err_code_t+0x4b0>)
10008ce6:	e7fa      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ce8:	48a6      	ldr	r0, [pc, #664]	; (10008f84 <porting_ble_err_code_t+0x4b4>)
10008cea:	e7f8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008cec:	48a6      	ldr	r0, [pc, #664]	; (10008f88 <porting_ble_err_code_t+0x4b8>)
10008cee:	e7f6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008cf0:	48a6      	ldr	r0, [pc, #664]	; (10008f8c <porting_ble_err_code_t+0x4bc>)
10008cf2:	e7f4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008cf4:	48a6      	ldr	r0, [pc, #664]	; (10008f90 <porting_ble_err_code_t+0x4c0>)
10008cf6:	e7f2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008cf8:	2081      	movs	r0, #129	; 0x81
10008cfa:	00c0      	lsls	r0, r0, #3
10008cfc:	e7ef      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008cfe:	48a5      	ldr	r0, [pc, #660]	; (10008f94 <porting_ble_err_code_t+0x4c4>)
10008d00:	e7ed      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d02:	48a5      	ldr	r0, [pc, #660]	; (10008f98 <porting_ble_err_code_t+0x4c8>)
10008d04:	e7eb      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d06:	48a5      	ldr	r0, [pc, #660]	; (10008f9c <porting_ble_err_code_t+0x4cc>)
10008d08:	e7e9      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d0a:	48a5      	ldr	r0, [pc, #660]	; (10008fa0 <porting_ble_err_code_t+0x4d0>)
10008d0c:	e7e7      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d0e:	48a5      	ldr	r0, [pc, #660]	; (10008fa4 <porting_ble_err_code_t+0x4d4>)
10008d10:	e7e5      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d12:	48a5      	ldr	r0, [pc, #660]	; (10008fa8 <porting_ble_err_code_t+0x4d8>)
10008d14:	e7e3      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d16:	48a5      	ldr	r0, [pc, #660]	; (10008fac <porting_ble_err_code_t+0x4dc>)
10008d18:	e7e1      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d1a:	2081      	movs	r0, #129	; 0x81
10008d1c:	0040      	lsls	r0, r0, #1
10008d1e:	e7de      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d20:	2012      	movs	r0, #18
10008d22:	30ff      	adds	r0, #255	; 0xff
10008d24:	e7db      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d26:	2004      	movs	r0, #4
10008d28:	30ff      	adds	r0, #255	; 0xff
10008d2a:	e7d8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d2c:	2089      	movs	r0, #137	; 0x89
10008d2e:	0040      	lsls	r0, r0, #1
10008d30:	e7d5      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d32:	2083      	movs	r0, #131	; 0x83
10008d34:	0040      	lsls	r0, r0, #1
10008d36:	e7d2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d38:	2008      	movs	r0, #8
10008d3a:	30ff      	adds	r0, #255	; 0xff
10008d3c:	e7cf      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d3e:	2084      	movs	r0, #132	; 0x84
10008d40:	0040      	lsls	r0, r0, #1
10008d42:	e7cc      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d44:	200a      	movs	r0, #10
10008d46:	30ff      	adds	r0, #255	; 0xff
10008d48:	e7c9      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d4a:	2085      	movs	r0, #133	; 0x85
10008d4c:	0040      	lsls	r0, r0, #1
10008d4e:	e7c6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d50:	2006      	movs	r0, #6
10008d52:	30ff      	adds	r0, #255	; 0xff
10008d54:	e7c3      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d56:	4895      	ldr	r0, [pc, #596]	; (10008fac <porting_ble_err_code_t+0x4dc>)
10008d58:	e7c1      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d5a:	2002      	movs	r0, #2
10008d5c:	30ff      	adds	r0, #255	; 0xff
10008d5e:	e7be      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d60:	2014      	movs	r0, #20
10008d62:	30ff      	adds	r0, #255	; 0xff
10008d64:	e7bb      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d66:	2086      	movs	r0, #134	; 0x86
10008d68:	0040      	lsls	r0, r0, #1
10008d6a:	e7b8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d6c:	4890      	ldr	r0, [pc, #576]	; (10008fb0 <porting_ble_err_code_t+0x4e0>)
10008d6e:	e7b6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d70:	4890      	ldr	r0, [pc, #576]	; (10008fb4 <porting_ble_err_code_t+0x4e4>)
10008d72:	e7b4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d74:	4890      	ldr	r0, [pc, #576]	; (10008fb8 <porting_ble_err_code_t+0x4e8>)
10008d76:	e7b2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d78:	20c1      	movs	r0, #193	; 0xc1
10008d7a:	0080      	lsls	r0, r0, #2
10008d7c:	e7af      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d7e:	488f      	ldr	r0, [pc, #572]	; (10008fbc <porting_ble_err_code_t+0x4ec>)
10008d80:	e7ad      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d82:	488f      	ldr	r0, [pc, #572]	; (10008fc0 <porting_ble_err_code_t+0x4f0>)
10008d84:	e7ab      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d86:	488f      	ldr	r0, [pc, #572]	; (10008fc4 <porting_ble_err_code_t+0x4f4>)
10008d88:	e7a9      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d8a:	20c2      	movs	r0, #194	; 0xc2
10008d8c:	0080      	lsls	r0, r0, #2
10008d8e:	e7a6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d90:	488d      	ldr	r0, [pc, #564]	; (10008fc8 <porting_ble_err_code_t+0x4f8>)
10008d92:	e7a4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d94:	488d      	ldr	r0, [pc, #564]	; (10008fcc <porting_ble_err_code_t+0x4fc>)
10008d96:	e7a2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d98:	488d      	ldr	r0, [pc, #564]	; (10008fd0 <porting_ble_err_code_t+0x500>)
10008d9a:	e7a0      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008d9c:	20c3      	movs	r0, #195	; 0xc3
10008d9e:	0080      	lsls	r0, r0, #2
10008da0:	e79d      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008da2:	488c      	ldr	r0, [pc, #560]	; (10008fd4 <porting_ble_err_code_t+0x504>)
10008da4:	e79b      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008da6:	488c      	ldr	r0, [pc, #560]	; (10008fd8 <porting_ble_err_code_t+0x508>)
10008da8:	e799      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008daa:	4881      	ldr	r0, [pc, #516]	; (10008fb0 <porting_ble_err_code_t+0x4e0>)
10008dac:	e797      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dae:	4881      	ldr	r0, [pc, #516]	; (10008fb4 <porting_ble_err_code_t+0x4e4>)
10008db0:	e795      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008db2:	4881      	ldr	r0, [pc, #516]	; (10008fb8 <porting_ble_err_code_t+0x4e8>)
10008db4:	e793      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008db6:	20c1      	movs	r0, #193	; 0xc1
10008db8:	0080      	lsls	r0, r0, #2
10008dba:	e790      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dbc:	487f      	ldr	r0, [pc, #508]	; (10008fbc <porting_ble_err_code_t+0x4ec>)
10008dbe:	e78e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dc0:	487f      	ldr	r0, [pc, #508]	; (10008fc0 <porting_ble_err_code_t+0x4f0>)
10008dc2:	e78c      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dc4:	487f      	ldr	r0, [pc, #508]	; (10008fc4 <porting_ble_err_code_t+0x4f4>)
10008dc6:	e78a      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dc8:	20c2      	movs	r0, #194	; 0xc2
10008dca:	0080      	lsls	r0, r0, #2
10008dcc:	e787      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dce:	487e      	ldr	r0, [pc, #504]	; (10008fc8 <porting_ble_err_code_t+0x4f8>)
10008dd0:	e785      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dd2:	487e      	ldr	r0, [pc, #504]	; (10008fcc <porting_ble_err_code_t+0x4fc>)
10008dd4:	e783      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dd6:	487e      	ldr	r0, [pc, #504]	; (10008fd0 <porting_ble_err_code_t+0x500>)
10008dd8:	e781      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dda:	20c3      	movs	r0, #195	; 0xc3
10008ddc:	0080      	lsls	r0, r0, #2
10008dde:	e77e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008de0:	487c      	ldr	r0, [pc, #496]	; (10008fd4 <porting_ble_err_code_t+0x504>)
10008de2:	e77c      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008de4:	487c      	ldr	r0, [pc, #496]	; (10008fd8 <porting_ble_err_code_t+0x508>)
10008de6:	e77a      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008de8:	487c      	ldr	r0, [pc, #496]	; (10008fdc <porting_ble_err_code_t+0x50c>)
10008dea:	e778      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dec:	20c4      	movs	r0, #196	; 0xc4
10008dee:	0080      	lsls	r0, r0, #2
10008df0:	e775      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008df2:	487b      	ldr	r0, [pc, #492]	; (10008fe0 <porting_ble_err_code_t+0x510>)
10008df4:	e773      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008df6:	487b      	ldr	r0, [pc, #492]	; (10008fe4 <porting_ble_err_code_t+0x514>)
10008df8:	e771      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dfa:	487b      	ldr	r0, [pc, #492]	; (10008fe8 <porting_ble_err_code_t+0x518>)
10008dfc:	e76f      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008dfe:	487b      	ldr	r0, [pc, #492]	; (10008fec <porting_ble_err_code_t+0x51c>)
10008e00:	e76d      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e02:	487b      	ldr	r0, [pc, #492]	; (10008ff0 <porting_ble_err_code_t+0x520>)
10008e04:	e76b      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e06:	487b      	ldr	r0, [pc, #492]	; (10008ff4 <porting_ble_err_code_t+0x524>)
10008e08:	e769      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e0a:	2081      	movs	r0, #129	; 0x81
10008e0c:	0080      	lsls	r0, r0, #2
10008e0e:	e766      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e10:	4879      	ldr	r0, [pc, #484]	; (10008ff8 <porting_ble_err_code_t+0x528>)
10008e12:	e764      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e14:	4879      	ldr	r0, [pc, #484]	; (10008ffc <porting_ble_err_code_t+0x52c>)
10008e16:	e762      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e18:	4879      	ldr	r0, [pc, #484]	; (10009000 <porting_ble_err_code_t+0x530>)
10008e1a:	e760      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e1c:	2082      	movs	r0, #130	; 0x82
10008e1e:	0080      	lsls	r0, r0, #2
10008e20:	e75d      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e22:	4878      	ldr	r0, [pc, #480]	; (10009004 <porting_ble_err_code_t+0x534>)
10008e24:	e75b      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e26:	4878      	ldr	r0, [pc, #480]	; (10009008 <porting_ble_err_code_t+0x538>)
10008e28:	e759      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e2a:	4878      	ldr	r0, [pc, #480]	; (1000900c <porting_ble_err_code_t+0x53c>)
10008e2c:	e757      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e2e:	2083      	movs	r0, #131	; 0x83
10008e30:	0080      	lsls	r0, r0, #2
10008e32:	e754      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e34:	4876      	ldr	r0, [pc, #472]	; (10009010 <porting_ble_err_code_t+0x540>)
10008e36:	e752      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e38:	4876      	ldr	r0, [pc, #472]	; (10009014 <porting_ble_err_code_t+0x544>)
10008e3a:	e750      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e3c:	4876      	ldr	r0, [pc, #472]	; (10009018 <porting_ble_err_code_t+0x548>)
10008e3e:	e74e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e40:	2084      	movs	r0, #132	; 0x84
10008e42:	0080      	lsls	r0, r0, #2
10008e44:	e74b      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e46:	4875      	ldr	r0, [pc, #468]	; (1000901c <porting_ble_err_code_t+0x54c>)
10008e48:	e749      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e4a:	20a0      	movs	r0, #160	; 0xa0
10008e4c:	0080      	lsls	r0, r0, #2
10008e4e:	e746      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e50:	4868      	ldr	r0, [pc, #416]	; (10008ff4 <porting_ble_err_code_t+0x524>)
10008e52:	e744      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e54:	486c      	ldr	r0, [pc, #432]	; (10009008 <porting_ble_err_code_t+0x538>)
10008e56:	e742      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e58:	20a4      	movs	r0, #164	; 0xa4
10008e5a:	0080      	lsls	r0, r0, #2
10008e5c:	e73f      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e5e:	4870      	ldr	r0, [pc, #448]	; (10009020 <porting_ble_err_code_t+0x550>)
10008e60:	e73d      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e62:	4870      	ldr	r0, [pc, #448]	; (10009024 <porting_ble_err_code_t+0x554>)
10008e64:	e73b      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e66:	4870      	ldr	r0, [pc, #448]	; (10009028 <porting_ble_err_code_t+0x558>)
10008e68:	e739      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e6a:	20a1      	movs	r0, #161	; 0xa1
10008e6c:	0080      	lsls	r0, r0, #2
10008e6e:	e736      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e70:	486e      	ldr	r0, [pc, #440]	; (1000902c <porting_ble_err_code_t+0x55c>)
10008e72:	e734      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e74:	486e      	ldr	r0, [pc, #440]	; (10009030 <porting_ble_err_code_t+0x560>)
10008e76:	e732      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e78:	486e      	ldr	r0, [pc, #440]	; (10009034 <porting_ble_err_code_t+0x564>)
10008e7a:	e730      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e7c:	20a2      	movs	r0, #162	; 0xa2
10008e7e:	0080      	lsls	r0, r0, #2
10008e80:	e72d      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e82:	486d      	ldr	r0, [pc, #436]	; (10009038 <porting_ble_err_code_t+0x568>)
10008e84:	e72b      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e86:	486d      	ldr	r0, [pc, #436]	; (1000903c <porting_ble_err_code_t+0x56c>)
10008e88:	e729      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e8a:	486d      	ldr	r0, [pc, #436]	; (10009040 <porting_ble_err_code_t+0x570>)
10008e8c:	e727      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e8e:	20a3      	movs	r0, #163	; 0xa3
10008e90:	0080      	lsls	r0, r0, #2
10008e92:	e724      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e94:	486b      	ldr	r0, [pc, #428]	; (10009044 <porting_ble_err_code_t+0x574>)
10008e96:	e722      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e98:	486b      	ldr	r0, [pc, #428]	; (10009048 <porting_ble_err_code_t+0x578>)
10008e9a:	e720      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008e9c:	486b      	ldr	r0, [pc, #428]	; (1000904c <porting_ble_err_code_t+0x57c>)
10008e9e:	e71e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ea0:	486b      	ldr	r0, [pc, #428]	; (10009050 <porting_ble_err_code_t+0x580>)
10008ea2:	e71c      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ea4:	486b      	ldr	r0, [pc, #428]	; (10009054 <porting_ble_err_code_t+0x584>)
10008ea6:	e71a      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ea8:	486b      	ldr	r0, [pc, #428]	; (10009058 <porting_ble_err_code_t+0x588>)
10008eaa:	e718      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008eac:	2001      	movs	r0, #1
10008eae:	e716      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008eb0:	2002      	movs	r0, #2
10008eb2:	e714      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008eb4:	2003      	movs	r0, #3
10008eb6:	e712      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008eb8:	2004      	movs	r0, #4
10008eba:	e710      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ebc:	2005      	movs	r0, #5
10008ebe:	e70e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ec0:	2006      	movs	r0, #6
10008ec2:	e70c      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ec4:	2007      	movs	r0, #7
10008ec6:	e70a      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ec8:	2008      	movs	r0, #8
10008eca:	e708      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ecc:	2009      	movs	r0, #9
10008ece:	e706      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ed0:	200a      	movs	r0, #10
10008ed2:	e704      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ed4:	200b      	movs	r0, #11
10008ed6:	e702      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ed8:	200c      	movs	r0, #12
10008eda:	e700      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008edc:	200d      	movs	r0, #13
10008ede:	e6fe      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ee0:	200e      	movs	r0, #14
10008ee2:	e6fc      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ee4:	200f      	movs	r0, #15
10008ee6:	e6fa      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ee8:	2010      	movs	r0, #16
10008eea:	e6f8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008eec:	2011      	movs	r0, #17
10008eee:	e6f6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ef0:	2012      	movs	r0, #18
10008ef2:	e6f4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ef4:	2013      	movs	r0, #19
10008ef6:	e6f2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008ef8:	2014      	movs	r0, #20
10008efa:	e6f0      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008efc:	2015      	movs	r0, #21
10008efe:	e6ee      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f00:	2016      	movs	r0, #22
10008f02:	e6ec      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f04:	2017      	movs	r0, #23
10008f06:	e6ea      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f08:	2018      	movs	r0, #24
10008f0a:	e6e8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f0c:	2019      	movs	r0, #25
10008f0e:	e6e6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f10:	201a      	movs	r0, #26
10008f12:	e6e4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f14:	201b      	movs	r0, #27
10008f16:	e6e2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f18:	201c      	movs	r0, #28
10008f1a:	e6e0      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f1c:	201d      	movs	r0, #29
10008f1e:	e6de      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f20:	201e      	movs	r0, #30
10008f22:	e6dc      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f24:	201f      	movs	r0, #31
10008f26:	e6da      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f28:	2020      	movs	r0, #32
10008f2a:	e6d8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f2c:	2021      	movs	r0, #33	; 0x21
10008f2e:	e6d6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f30:	2022      	movs	r0, #34	; 0x22
10008f32:	e6d4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f34:	2023      	movs	r0, #35	; 0x23
10008f36:	e6d2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f38:	2024      	movs	r0, #36	; 0x24
10008f3a:	e6d0      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f3c:	2025      	movs	r0, #37	; 0x25
10008f3e:	e6ce      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f40:	2026      	movs	r0, #38	; 0x26
10008f42:	e6cc      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f44:	2027      	movs	r0, #39	; 0x27
10008f46:	e6ca      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f48:	2028      	movs	r0, #40	; 0x28
10008f4a:	e6c8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f4c:	2029      	movs	r0, #41	; 0x29
10008f4e:	e6c6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f50:	202a      	movs	r0, #42	; 0x2a
10008f52:	e6c4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f54:	202c      	movs	r0, #44	; 0x2c
10008f56:	e6c2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f58:	202d      	movs	r0, #45	; 0x2d
10008f5a:	e6c0      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f5c:	202e      	movs	r0, #46	; 0x2e
10008f5e:	e6be      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f60:	202f      	movs	r0, #47	; 0x2f
10008f62:	e6bc      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f64:	2030      	movs	r0, #48	; 0x30
10008f66:	e6ba      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f68:	2032      	movs	r0, #50	; 0x32
10008f6a:	e6b8      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f6c:	2034      	movs	r0, #52	; 0x34
10008f6e:	e6b6      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f70:	2035      	movs	r0, #53	; 0x35
10008f72:	e6b4      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f74:	2036      	movs	r0, #54	; 0x36
10008f76:	e6b2      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10008f78:	00000401 	.word	0x00000401
10008f7c:	00000402 	.word	0x00000402
10008f80:	00000403 	.word	0x00000403
10008f84:	00000404 	.word	0x00000404
10008f88:	00000405 	.word	0x00000405
10008f8c:	00000406 	.word	0x00000406
10008f90:	00000407 	.word	0x00000407
10008f94:	00000409 	.word	0x00000409
10008f98:	0000040a 	.word	0x0000040a
10008f9c:	0000040b 	.word	0x0000040b
10008fa0:	0000040c 	.word	0x0000040c
10008fa4:	0000040d 	.word	0x0000040d
10008fa8:	000004ff 	.word	0x000004ff
10008fac:	000001ff 	.word	0x000001ff
10008fb0:	00000301 	.word	0x00000301
10008fb4:	00000302 	.word	0x00000302
10008fb8:	00000303 	.word	0x00000303
10008fbc:	00000305 	.word	0x00000305
10008fc0:	00000306 	.word	0x00000306
10008fc4:	00000307 	.word	0x00000307
10008fc8:	00000309 	.word	0x00000309
10008fcc:	0000030a 	.word	0x0000030a
10008fd0:	0000030b 	.word	0x0000030b
10008fd4:	0000030d 	.word	0x0000030d
10008fd8:	0000030e 	.word	0x0000030e
10008fdc:	000003ff 	.word	0x000003ff
10008fe0:	00000311 	.word	0x00000311
10008fe4:	00000312 	.word	0x00000312
10008fe8:	00000313 	.word	0x00000313
10008fec:	00000201 	.word	0x00000201
10008ff0:	00000202 	.word	0x00000202
10008ff4:	00000203 	.word	0x00000203
10008ff8:	00000205 	.word	0x00000205
10008ffc:	00000206 	.word	0x00000206
10009000:	00000207 	.word	0x00000207
10009004:	00000209 	.word	0x00000209
10009008:	0000020a 	.word	0x0000020a
1000900c:	0000020b 	.word	0x0000020b
10009010:	0000020d 	.word	0x0000020d
10009014:	0000020e 	.word	0x0000020e
10009018:	0000020f 	.word	0x0000020f
1000901c:	00000211 	.word	0x00000211
10009020:	00000281 	.word	0x00000281
10009024:	00000282 	.word	0x00000282
10009028:	00000283 	.word	0x00000283
1000902c:	00000285 	.word	0x00000285
10009030:	00000286 	.word	0x00000286
10009034:	00000287 	.word	0x00000287
10009038:	00000289 	.word	0x00000289
1000903c:	0000028a 	.word	0x0000028a
10009040:	0000028b 	.word	0x0000028b
10009044:	0000028d 	.word	0x0000028d
10009048:	0000028e 	.word	0x0000028e
1000904c:	0000028f 	.word	0x0000028f
10009050:	000002fd 	.word	0x000002fd
10009054:	000002fe 	.word	0x000002fe
10009058:	000002ff 	.word	0x000002ff
1000905c:	2037      	movs	r0, #55	; 0x37
1000905e:	e63e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009060:	2038      	movs	r0, #56	; 0x38
10009062:	e63c      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009064:	203a      	movs	r0, #58	; 0x3a
10009066:	e63a      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009068:	203b      	movs	r0, #59	; 0x3b
1000906a:	e638      	b.n	10008cde <porting_ble_err_code_t+0x20e>
1000906c:	203c      	movs	r0, #60	; 0x3c
1000906e:	e636      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009070:	203d      	movs	r0, #61	; 0x3d
10009072:	e634      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009074:	203e      	movs	r0, #62	; 0x3e
10009076:	e632      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009078:	20ff      	movs	r0, #255	; 0xff
1000907a:	e630      	b.n	10008cde <porting_ble_err_code_t+0x20e>
1000907c:	2040      	movs	r0, #64	; 0x40
1000907e:	e62e      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009080:	2041      	movs	r0, #65	; 0x41
10009082:	e62c      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009084:	2042      	movs	r0, #66	; 0x42
10009086:	e62a      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009088:	2043      	movs	r0, #67	; 0x43
1000908a:	e628      	b.n	10008cde <porting_ble_err_code_t+0x20e>
1000908c:	2044      	movs	r0, #68	; 0x44
1000908e:	e626      	b.n	10008cde <porting_ble_err_code_t+0x20e>
10009090:	2100      	movs	r1, #0
10009092:	4b04      	ldr	r3, [pc, #16]	; (100090a4 <porting_ble_err_code_t+0x5d4>)
10009094:	4a04      	ldr	r2, [pc, #16]	; (100090a8 <porting_ble_err_code_t+0x5d8>)
10009096:	4c05      	ldr	r4, [pc, #20]	; (100090ac <porting_ble_err_code_t+0x5dc>)
10009098:	47a0      	blx	r4
1000909a:	4805      	ldr	r0, [pc, #20]	; (100090b0 <porting_ble_err_code_t+0x5e0>)
1000909c:	e61f      	b.n	10008cde <porting_ble_err_code_t+0x20e>
1000909e:	2000      	movs	r0, #0
100090a0:	e61d      	b.n	10008cde <porting_ble_err_code_t+0x20e>
100090a2:	46c0      	nop			; (mov r8, r8)
100090a4:	00000223 	.word	0x00000223
100090a8:	1000b830 	.word	0x1000b830
100090ac:	00006641 	.word	0x00006641
100090b0:	000004ff 	.word	0x000004ff

100090b4 <porting_co_error>:
100090b4:	b570      	push	{r4, r5, r6, lr}
100090b6:	0a03      	lsrs	r3, r0, #8
100090b8:	0004      	movs	r4, r0
100090ba:	2b00      	cmp	r3, #0
100090bc:	d006      	beq.n	100090cc <porting_co_error+0x18>
100090be:	2b03      	cmp	r3, #3
100090c0:	d006      	beq.n	100090d0 <porting_co_error+0x1c>
100090c2:	2100      	movs	r1, #0
100090c4:	4b09      	ldr	r3, [pc, #36]	; (100090ec <porting_co_error+0x38>)
100090c6:	4a0a      	ldr	r2, [pc, #40]	; (100090f0 <porting_co_error+0x3c>)
100090c8:	4d0a      	ldr	r5, [pc, #40]	; (100090f4 <porting_co_error+0x40>)
100090ca:	47a8      	blx	r5
100090cc:	b2e0      	uxtb	r0, r4
100090ce:	e00b      	b.n	100090e8 <porting_co_error+0x34>
100090d0:	0001      	movs	r1, r0
100090d2:	2202      	movs	r2, #2
100090d4:	4b08      	ldr	r3, [pc, #32]	; (100090f8 <porting_co_error+0x44>)
100090d6:	2011      	movs	r0, #17
100090d8:	4391      	bics	r1, r2
100090da:	4299      	cmp	r1, r3
100090dc:	d004      	beq.n	100090e8 <porting_co_error+0x34>
100090de:	4b07      	ldr	r3, [pc, #28]	; (100090fc <porting_co_error+0x48>)
100090e0:	2011      	movs	r0, #17
100090e2:	429c      	cmp	r4, r3
100090e4:	d000      	beq.n	100090e8 <porting_co_error+0x34>
100090e6:	380c      	subs	r0, #12
100090e8:	bd70      	pop	{r4, r5, r6, pc}
100090ea:	46c0      	nop			; (mov r8, r8)
100090ec:	00000422 	.word	0x00000422
100090f0:	1000b830 	.word	0x1000b830
100090f4:	00006641 	.word	0x00006641
100090f8:	00000305 	.word	0x00000305
100090fc:	00000312 	.word	0x00000312

10009100 <framework_set_llm_env_rand_addr>:
10009100:	b510      	push	{r4, lr}
10009102:	0001      	movs	r1, r0
10009104:	4803      	ldr	r0, [pc, #12]	; (10009114 <framework_set_llm_env_rand_addr+0x14>)
10009106:	2206      	movs	r2, #6
10009108:	308f      	adds	r0, #143	; 0x8f
1000910a:	30ff      	adds	r0, #255	; 0xff
1000910c:	f000 f87c 	bl	10009208 <__memcpy_veneer>
10009110:	bd10      	pop	{r4, pc}
10009112:	46c0      	nop			; (mov r8, r8)
10009114:	200012cc 	.word	0x200012cc

10009118 <__gnu_thumb1_case_sqi>:
10009118:	b402      	push	{r1}
1000911a:	4671      	mov	r1, lr
1000911c:	0849      	lsrs	r1, r1, #1
1000911e:	0049      	lsls	r1, r1, #1
10009120:	5609      	ldrsb	r1, [r1, r0]
10009122:	0049      	lsls	r1, r1, #1
10009124:	448e      	add	lr, r1
10009126:	bc02      	pop	{r1}
10009128:	4770      	bx	lr
1000912a:	46c0      	nop			; (mov r8, r8)

1000912c <__ctzsi2>:
1000912c:	4241      	negs	r1, r0
1000912e:	4008      	ands	r0, r1
10009130:	211c      	movs	r1, #28
10009132:	2301      	movs	r3, #1
10009134:	041b      	lsls	r3, r3, #16
10009136:	4298      	cmp	r0, r3
10009138:	d301      	bcc.n	1000913e <__ctzsi2+0x12>
1000913a:	0c00      	lsrs	r0, r0, #16
1000913c:	3910      	subs	r1, #16
1000913e:	0a1b      	lsrs	r3, r3, #8
10009140:	4298      	cmp	r0, r3
10009142:	d301      	bcc.n	10009148 <__ctzsi2+0x1c>
10009144:	0a00      	lsrs	r0, r0, #8
10009146:	3908      	subs	r1, #8
10009148:	091b      	lsrs	r3, r3, #4
1000914a:	4298      	cmp	r0, r3
1000914c:	d301      	bcc.n	10009152 <__ctzsi2+0x26>
1000914e:	0900      	lsrs	r0, r0, #4
10009150:	3904      	subs	r1, #4
10009152:	a202      	add	r2, pc, #8	; (adr r2, 1000915c <__ctzsi2+0x30>)
10009154:	5c10      	ldrb	r0, [r2, r0]
10009156:	1a40      	subs	r0, r0, r1
10009158:	4770      	bx	lr
1000915a:	46c0      	nop			; (mov r8, r8)
1000915c:	1d1d1c1b 	.word	0x1d1d1c1b
10009160:	1e1e1e1e 	.word	0x1e1e1e1e
10009164:	1f1f1f1f 	.word	0x1f1f1f1f
10009168:	1f1f1f1f 	.word	0x1f1f1f1f

1000916c <__popcountsi2>:
1000916c:	4a09      	ldr	r2, [pc, #36]	; (10009194 <__popcountsi2+0x28>)
1000916e:	0843      	lsrs	r3, r0, #1
10009170:	4013      	ands	r3, r2
10009172:	1ac0      	subs	r0, r0, r3
10009174:	0003      	movs	r3, r0
10009176:	4a08      	ldr	r2, [pc, #32]	; (10009198 <__popcountsi2+0x2c>)
10009178:	0880      	lsrs	r0, r0, #2
1000917a:	4010      	ands	r0, r2
1000917c:	4013      	ands	r3, r2
1000917e:	181b      	adds	r3, r3, r0
10009180:	0918      	lsrs	r0, r3, #4
10009182:	18c0      	adds	r0, r0, r3
10009184:	4b05      	ldr	r3, [pc, #20]	; (1000919c <__popcountsi2+0x30>)
10009186:	4003      	ands	r3, r0
10009188:	0218      	lsls	r0, r3, #8
1000918a:	18c0      	adds	r0, r0, r3
1000918c:	0403      	lsls	r3, r0, #16
1000918e:	18c0      	adds	r0, r0, r3
10009190:	0e00      	lsrs	r0, r0, #24
10009192:	4770      	bx	lr
10009194:	55555555 	.word	0x55555555
10009198:	33333333 	.word	0x33333333
1000919c:	0f0f0f0f 	.word	0x0f0f0f0f

100091a0 <__libc_init_array>:
100091a0:	b570      	push	{r4, r5, r6, lr}
100091a2:	4d0c      	ldr	r5, [pc, #48]	; (100091d4 <__libc_init_array+0x34>)
100091a4:	4e0c      	ldr	r6, [pc, #48]	; (100091d8 <__libc_init_array+0x38>)
100091a6:	1b76      	subs	r6, r6, r5
100091a8:	10b6      	asrs	r6, r6, #2
100091aa:	d005      	beq.n	100091b8 <__libc_init_array+0x18>
100091ac:	2400      	movs	r4, #0
100091ae:	cd08      	ldmia	r5!, {r3}
100091b0:	3401      	adds	r4, #1
100091b2:	4798      	blx	r3
100091b4:	42a6      	cmp	r6, r4
100091b6:	d1fa      	bne.n	100091ae <__libc_init_array+0xe>
100091b8:	f7f6 ff5a 	bl	10000070 <_init>
100091bc:	4d07      	ldr	r5, [pc, #28]	; (100091dc <__libc_init_array+0x3c>)
100091be:	4e08      	ldr	r6, [pc, #32]	; (100091e0 <__libc_init_array+0x40>)
100091c0:	1b76      	subs	r6, r6, r5
100091c2:	10b6      	asrs	r6, r6, #2
100091c4:	d005      	beq.n	100091d2 <__libc_init_array+0x32>
100091c6:	2400      	movs	r4, #0
100091c8:	cd08      	ldmia	r5!, {r3}
100091ca:	3401      	adds	r4, #1
100091cc:	4798      	blx	r3
100091ce:	42a6      	cmp	r6, r4
100091d0:	d1fa      	bne.n	100091c8 <__libc_init_array+0x28>
100091d2:	bd70      	pop	{r4, r5, r6, pc}
100091d4:	20014d08 	.word	0x20014d08
100091d8:	20014d08 	.word	0x20014d08
100091dc:	20014d08 	.word	0x20014d08
100091e0:	20014d54 	.word	0x20014d54
100091e4:	00000000 	.word	0x00000000

100091e8 <____gnu_thumb1_case_uhi_veneer>:
100091e8:	b401      	push	{r0}
100091ea:	4802      	ldr	r0, [pc, #8]	; (100091f4 <____gnu_thumb1_case_uhi_veneer+0xc>)
100091ec:	4684      	mov	ip, r0
100091ee:	bc01      	pop	{r0}
100091f0:	4760      	bx	ip
100091f2:	bf00      	nop
100091f4:	0002ed29 	.word	0x0002ed29

100091f8 <____gnu_thumb1_case_uqi_veneer>:
100091f8:	b401      	push	{r0}
100091fa:	4802      	ldr	r0, [pc, #8]	; (10009204 <____gnu_thumb1_case_uqi_veneer+0xc>)
100091fc:	4684      	mov	ip, r0
100091fe:	bc01      	pop	{r0}
10009200:	4760      	bx	ip
10009202:	bf00      	nop
10009204:	0002ed01 	.word	0x0002ed01

10009208 <__memcpy_veneer>:
10009208:	b401      	push	{r0}
1000920a:	4802      	ldr	r0, [pc, #8]	; (10009214 <__memcpy_veneer+0xc>)
1000920c:	4684      	mov	ip, r0
1000920e:	bc01      	pop	{r0}
10009210:	4760      	bx	ip
10009212:	bf00      	nop
10009214:	00005821 	.word	0x00005821

10009218 <app_version>:
10009218:	76655224 6f697369 41203a6e 56207070     $Revision: App V
10009228:	69737265 30206e6f 302e302e 2420392e     ersion 0.0.0.9 $
	...

10009239 <atmosic_sdk_ver>:
10009239:	76655224 6f697369 53203a6e 56204b44     $Revision: SDK V
10009249:	69737265 35206e6f 302e332e 5b002420     ersion 5.3.0 $.[
10009259:	2e303125 5d733031 395b1b5b 1b576d35     %10.10s][.[95mW.
10009269:	5d6d305b 6e49203a 696c6176 61442064     [0m]: Invalid Da
10009279:	50206174 656b6361                        ta Packet.

10009283 <M_NAME>:
10009283:	636e756c 61705f68 72657372 31255b00     lunch_parser.[%1
10009293:	30312e30 1b5b5d73 6d31395b 305b1b45     0.10s][.[91mE.[0
100092a3:	203a5d6d 6f727245 64252072 53202d20     m]: Error %d - S
100092b3:	74656d6f 676e6968 74697720 686b2068     omething with kh
100092c3:	00687361 3031255b 7330312e 5b1b5b5d     ash.[%10.10s][.[
100092d3:	566d3739 6d305b1b 43203a5d 6b636568     97mV.[0m]: Check
100092e3:	69206465 7325206e 31255b00 30312e30     ed in %s.[%10.10
100092f3:	1b5b5d73 6d32395b 305b1b44 203a5d6d     s][.[92mD.[0m]: 
10009303:	69636552 6e697665 70732067 61696365     Recieving specia
10009313:	7325206c 31255b00 30312e30 1b5b5d73     l %s.[%10.10s][.
10009323:	6d32395b 305b1b44 203a5d6d 63656843     [92mD.[0m]: Chec
10009333:	676e696b 206e6920 64757473 20746e65     king in student 
10009343:	68746977 65707320 6c616963 6e756c20     with special lun
10009353:	70206863 656b6361 72282074 20697373     ch packet (rssi 
10009363:	6425203d 65790029 6f6e0073 31255b00     = %d).yes.no.[%1
10009373:	30312e30 1b5b5d73 6d37395b 305b1b56     0.10s][.[97mV.[0
10009383:	203a5d6d 28207325 00296425 3031255b     m]: %s (%d).[%10
10009393:	7330312e 5b1b5b5d 446d3239 6d305b1b     .10s][.[92mD.[0m
100093a3:	52203a5d 20495353 666f7250 20656c69     ]: RSSI Profile 
100093b3:	61746f74 25203a6c 69202c64 3d207864     total: %d, idx =
100093c3:	20642520 6c6c7566 25203d20 72612073      %d full = %s ar
100093d3:	203d2072 2c64255b 2c642520 2c642520     r = [%d, %d, %d,
100093e3:	2c642520 5d642520 3d3d3d00 3d3d3d3d      %d, %d].=======
100093f3:	3d3d3d3d 3d3d3d3d 3d3d3d3d               ============ .

10009401 <M_NAME>:
10009401:	636e756c 616d5f68 6567616e               lunch_manager..

10009410 <__ac_prime_list>:
10009410:	00000000 00000003 0000000b 00000017     ................
10009420:	00000035 00000061 000000c1 00000185     5...a...........
10009430:	00000301 00000607 00000c07 00001807     ................
10009440:	00003001 00006011 0000c005 0001800d     .0...`..........
10009450:	00030005 00060019 000c0001 00180005     ................
10009460:	0030000b 0060000d 00c00005 01800013     ..0...`.........
10009470:	03000005 06000017 0c000013 18000005     ................
10009480:	30000059 60000005 c0000001 fffffffb     Y..0...`........
10009490:	3031255b 7330312e 5b1b5b5d 456d3139     [%10.10s][.[91mE
100094a0:	6d305b1b 45203a5d 726f7272 6e75202c     .[0m]: Error, un
100094b0:	776f6e6b 656b206e                        known key.

100094ba <CSWTCH.3>:
100094ba:	201f1e27 24232221                        '.. !"#$%&

100094c4 <M_NAME>:
100094c4:	636e756c 65685f68 7265706c 31255b00     lunch_helper.[%1
100094d4:	30312e30 1b5b5d73 6d32395b 305b1b44     0.10s][.[92mD.[0
100094e4:	203a5d6d 74747542 43206e6f 6b63696c     m]: Button Click
100094f4:	                                         ed.

100094f7 <M_NAME>:
100094f7:	636e756c 61705f68 625f7269 6f747475     lunch_pair_butto
10009507:	255b006e 312e3031 5b5d7330 31395b1b     n.[%10.10s][.[91
10009517:	5b1b456d 3a5d6d30 20732520 6c696146     mE.[0m]: %s Fail
10009527:	206f7420 72617473 63732074 77206e61      to start scan w
10009537:	20687469 74617473 25207375 255b0064     ith status %d.[%
10009547:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
10009557:	3a5d6d30 6e6f4320 7463656e 63206465     0m]: Connected c
10009567:	626c6c61 006b6361 3031255b 7330312e     allback.[%10.10s
10009577:	5b1b5b5d 456d3139 6d305b1b 25203a5d     ][.[91mE.[0m]: %
10009587:	61462073 74206c69 7473206f 20747261     s Fail to start 
10009597:	20766461 68746977 61747320 20737574     adv with status 
100095a7:	50006425 69726961 5200676e 6e6f6365     %d.Pairing.Recon
100095b7:	7463656e 00676e69 3031255b 7330312e     necting.[%10.10s
100095c7:	5b1b5b5d 446d3239 6d305b1b 5b203a5d     ][.[92mD.[0m]: [
100095d7:	205d6425 5b007325 2e303125 5d733031     %d] %s.[%10.10s]
100095e7:	395b1b5b 1b456d31 5d6d305b 7325203a     [.[91mE.[0m]: %s
100095f7:	69614620 6f74206c 65726320 20657461      Fail to create 
10009607:	6e616373 00642520 3031255b 7330312e     scan %d.[%10.10s
10009617:	5b1b5b5d 446d3239 6d305b1b 6e203a5d     ][.[92mD.[0m]: n
10009627:	61642063 3d206174 756c2520 31255b00     c data = %lu.[%1
10009637:	30312e30 1b5b5d73 6d35395b 305b1b57     0.10s][.[95mW.[0
10009647:	203a5d6d 69766544 77206563 62207361     m]: Device was b
10009657:	65646e6f 6e692064 6e465b20 25202b20     onded in [Fn + %
10009667:	5b005d64 2e303125 5d733031 395b1b5b     d].[%10.10s][.[9
10009677:	1b576d35 5d6d305b 6552203a 6e6e6f63     5mW.[0m]: Reconn
10009687:	69746365 2e2e676e 255b002e 312e3031     ecting....[%10.1
10009697:	5b5d7330 31395b1b 5b1b456d 3a5d6d30     0s][.[91mE.[0m]:
100096a7:	72724520 2d20726f 756f4320 6e20646c      Error - Could n
100096b7:	7020746f 65737261 6e756c20 64206863     ot parse lunch d
100096c7:	00617461 3031255b 7330312e 5b1b5b5d     ata.[%10.10s][.[
100096d7:	446d3239 6d305b1b 25203a5d 61203a73     92mD.[0m]: %s: a
100096e7:	695f7463 253d7864 64612064 74735f76     ct_idx=%d adv_st
100096f7:	3d657461 5b006425 2e303125 5d733031     ate=%d.[%10.10s]
10009707:	395b1b5b 1b456d31 5d6d305b 7245203a     [.[91mE.[0m]: Er
10009717:	20726f72 5f766461 74617473 203d2065     ror adv_state = 
10009727:	202c6425 74617473 3d207375 00642520     %d, status = %d.
10009737:	636e756c 61675f68 00632e70              lunch_gap.c.

10009743 <M_NAME>:
10009743:	636e756c 61675f68                        lunch_gap..

1000974e <__compound_literal.0>:
1000974e:	00060006 012c0042                       ....B.,.

10009756 <__func__.0>:
10009756:	636e756c 72635f68 65746165 6163735f     lunch_create_sca
10009766:	                                         n.

10009768 <__func__.2>:
10009768:	636e756c 74735f68 5f747261 00766461     lunch_start_adv.

10009778 <__func__.3>:
10009778:	5f766461 74617473 68635f65 65676e61     adv_state_change
	...

10009789 <__func__.4>:
10009789:	636e756c 74735f68 5f747261 6e616373     lunch_start_scan
10009799:	                                         ...

1000979c <gap_callbacks>:
1000979c:	10000f31 1000127d 10001259 10000e89     1...}...Y.......
	...
100097b4:	10000e61 00000000 10000cd5 1000105d     a...........]...
100097c4:	10001225 00000000 00000000 00000000     %...............
100097d4:	00000000                                ....

100097d8 <gap_s_tbl>:
100097d8:	00010100 10000da1 00020200 10000cc5     ................
100097e8:	00030300 10000cb5 00020201 10000cc5     ................
100097f8:	00030301 10000cb5 00020102 00000000     ................
10009808:	00030103 00000000 00010502 10000ca5     ................
10009818:	00010503 10000c95 00050703 10000ced     ................
10009828:	00050702 10000ced 00040603 00000000     ................
10009838:	00040602 00000000 00010404 10000c85     ................
10009848:	00010805 10000c75 00050405 00000000     ....u...........
10009858:	00060905 10000c35 00070a06 00000000     ....5...........
10009868:	00010807 10000c75 00050b07 00000000     ....u...........

10009878 <param_nego>:
10009878:	10000fb9 012c0301 00000005 1000974e     ......,.....N...

10009888 <scan_callbacks.1>:
10009888:	10000c29 00000000 100011ed 100011d5     )...............
10009898:	3031255b 7330312e 5b1b5b5d 446d3239     [%10.10s][.[92mD
100098a8:	6d305b1b 1b203a5d 6d64255b 5b1b7325     .[0m]: .[%dm%s.[
100098b8:	006d6425 5f454c42 50474f48 49445f44     %dm.BLE_HOGPD_DI
100098c8:	4c424153 42004445 485f454c 4450474f     SABLED.BLE_HOGPD
100098d8:	4c44495f 4c420045 4f485f45 5f445047     _IDLE.BLE_HOGPD_
100098e8:	42414e45 0044454c 5f454c42 50474f48     ENABLED.BLE_HOGP
100098f8:	45525f44 00594441                       D_READY.

10009900 <HOGP_STATE_STR>:
10009900:	100098bc 100098cf 100098de 100098f0     ................

10009910 <M_NAME>:
10009910:	636e756c 6f685f68                        lunch_hogp.

1000991b <hid_keyboard_report_map>:
1000991b:	06090105 018501a1 e0190705 0015e729     ............)...
1000992b:	01750125 02810895 08950175 05950181     %.u.....u.......
1000993b:	08050175 05290119 01950291 01910375     u.....).....u...
1000994b:	08750695 65250015 00190705 00816529     ..u...%e....)e..
1000995b:	090c05c0 8501a101 950c7502 26001502     .........u.....&
1000996b:	001907ff 8107ff2a 0000c000               ....*........

10009978 <lunch_hogpd_parm>:
10009978:	00010064 01010205 01000000 00000002     d...............
10009988:	03000111 00000000 00000000 00000000     ................
	...
100099a4:	1000991b 00000000 0000005a 00000001     ........Z.......
100099b4:	1000132d 00000000 00000000 00010000     -...............

100099c4 <diss_att_db>:
100099c4:	02002800 00000000 02002803 00000000     .(.......(......
100099d4:	02002a29 00808000 02002803 00000000     )*.......(......
100099e4:	02002a24 00808000 02002803 00000000     $*.......(......
100099f4:	02002a25 00808000 02002803 00000000     %*.......(......
10009a04:	02002a27 00808000 02002803 00000000     '*.......(......
10009a14:	02002a26 00808000 02002803 00000000     &*.......(......
10009a24:	02002a28 00808000 02002803 00000000     (*.......(......
10009a34:	02002a23 00088000 02002803 00000000     #*.......(......
10009a44:	02002a2a 00088000 02002803 00000000     **.......(......
10009a54:	02002a50 00078000                       P*......

10009a5c <diss_itf>:
10009a5c:	100014b1 10001459 10001455 10001457     ....Y...U...W...

10009a6c <diss_msg_handler_tab>:
10009a6c:	00001400 100015d5 00000c13 10001729     ............)...
10009a7c:	00001403 1000168d 696e6f63 3c207864     ........conidx <
10009a8c:	454c4220 4e4f435f 5443454e 5f4e4f49      BLE_CONNECTION_
10009a9c:	0058414d 646e6168 2120656c 5441203d     MAX.handle != AT
10009aac:	4e495f54 494c4156 44485f44 612a004c     T_INVALID_HDL.*a
10009abc:	695f7474 21207864 4f48203d 5f445047     tt_idx != HOGPD_
10009acc:	5f584449 0000424e                       IDX_NB..

10009ad4 <hids_att_db>:
10009ad4:	02002800 00000000 02002802 00000000     .(.......(......
10009ae4:	02002803 00000000 02002a4a 00040000     .(......J*......
10009af4:	02002803 00000000 04002a4c 00018000     .(......L*......
10009b04:	02002803 00000000 02002a4b 02008000     .(......K*......
10009b14:	02002907 00020000 02002803 00000000     .).......(......
10009b24:	06002a4e 00018000 02002803 00000000     N*.......(......
10009b34:	12002a22 00088000 0a002902 00000000     "*.......)......
10009b44:	02002803 00000000 0e002a32 00088000     .(......2*......
10009b54:	02002803 00000000 12002a33 00088000     .(......3*......
10009b64:	0e002902 00000000 02002803 00000000     .).......(......
10009b74:	02002a4d 02008000 02002908 00020000     M*.......)......
10009b84:	0e002902 00000000                       .)......

10009b8c <hogpd_itf>:
10009b8c:	10001999 1000187d 10001835 10001839     ....}...5...9...
10009b9c:	70676f68 61745f64 632e6b73 676f6800     hogpd_task.c.hog
10009bac:	655f6470 3d21766e 4c4c554e               pd_env!=NULL.

10009bb9 <CSWTCH.29>:
10009bb9:	0f0c0714                                 .......

10009bc0 <hogpd_msg_handler_tab>:
10009bc0:	00002600 10002771 00002602 10002811     .&..q'...&...(..
10009bd0:	00002605 10002675 00002607 100025a5     .&..u&...&...%..
10009be0:	00000c17 1000216d 00000c15 10002399     ....m!.......#..
10009bf0:	00000c13 100021fd 00000c00 1000289d     .....!.......(..
10009c00:	2e332e35 44530030 6556204b 6f697372     5.3.0.SDK Versio
10009c10:	25203a6e 2e300073 2e302e30 50410039     n: %s.0.0.0.9.AP
10009c20:	65562050 6f697372 25203a6e 255b0073     P Version: %s.[%
10009c30:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
10009c40:	3a5d6d30 6e756c20 63206863 656e6e6f     0m]: lunch conne
10009c50:	64657463 6c616320 6361626c 6570006b     cted callback.pe
10009c60:	20666972 67657200 72616c75 31255b00     rif .regular.[%1
10009c70:	30312e30 1b5b5d73 6d32395b 305b1b44     0.10s][.[92mD.[0
10009c80:	203a5d6d 74696e49 20676e69 25206e69     m]: Initing in %
10009c90:	6f6d2073 28206564 73656f64 2074276e     s mode (doesn't 
10009ca0:	61206f64 6874796e 20676e69 3a776f6e     do anything now:
10009cb0:	646f7420 6966206f 6b002978 70676f68      todo fix).khogp
10009cc0:	646b0064 00737369 3031255b 7330312e     d.kdiss.[%10.10s
10009cd0:	5b1b5b5d 566d3739 6d305b1b 4c203a5d     ][.[97mV.[0m]: L
10009ce0:	68636e75 3a504f20 00642520 3031255b     unch OP: %d.[%10
10009cf0:	7330312e 5b1b5b5d 446d3239 6d305b1b     .10s][.[92mD.[0m
10009d00:	49203a5d 20454c44 656d6974 255b0072     ]: IDLE timer.[%
10009d10:	312e3031 5b5d7330 34395b1b 5b1b4e6d     10.10s][.[94mN.[
10009d20:	3a5d6d30 6e674920 2065726f 656c6469     0m]: Ignore idle
10009d30:	7a756320 64204920 74276e6f 6e617720      cuz I don't wan
10009d40:	6420616e 6f637369 63656e6e 5b002174     na disconnect!.[
10009d50:	2e303125 5d733031 395b1b5b 1b4e6d34     %10.10s][.[94mN.
10009d60:	5d6d305b 4948203a 6f6e2044 65722074     [0m]: HID not re
10009d70:	20796461 20726f66 6f6c2061 7420676e     ady for a long t
10009d80:	0a656d69 31255b00 30312e30 1b5b5d73     ime..[%10.10s][.
10009d90:	6d32395b 305b1b44 203a5d6d 72657375     [92mD.[0m]: user
10009da0:	69616d5f 2029286e 656e6f64               _main() done.

10009dad <M_NAME>:
10009dad:	636e756c 63735f68 656e6e61               lunch_scanner..

10009dbc <s_tbl>:
10009dbc:	00010000 10002add 00040202 00000000     .....*..........
10009dcc:	00030302 00000000 00020101 00000000     ................
10009ddc:	00040201 00000000 00030301 00000000     ................
10009dec:	00050704 10002a75 00020404 00000000     ....u*..........
10009dfc:	00020e04 00000000 00030703 00000000     ................
10009e0c:	00020803 10002a25 00050503 00000000     ....%*..........
10009e1c:	00050505 00000000 00020802 10002a25     ............%*..
10009e2c:	00020502 00000000 00050605 00000000     ................
10009e3c:	00050603 00000000 00020e03 00000000     ................
10009e4c:	00060905 10002aa5 00020805 10002a55     .....*......U*..
10009e5c:	00080d05 10002a39 00080d06 10002a39     ....9*......9*..
10009e6c:	00020806 10002a55 00020808 10002a25     ....U*......%*..
10009e7c:	00070b06 00000000 00020807 10002a55     ............U*..
10009e8c:	00060c07 10002a09 44524148 55414620     .....*..HARD FAU
10009e9c:	0021544c 3a307220 38302520 2020786c     LT!. r0: %08lx  
10009eac:	203a3172 6c383025 72202078 25203a32     r1: %08lx  r2: %
10009ebc:	786c3830 20202020 203a3372 6c383025     08lx    r3: %08l
10009ecc:	72000a78 203a3231 6c383025 6c202078     x..r12: %08lx  l
10009edc:	25203a72 786c3830 63702020 3025203a     r: %08lx  pc: %0
10009eec:	20786c38 53507820 25203a52 786c3830     8lx  xPSR: %08lx
10009efc:	4f52000a 72655f4d 61746172 2e30315f     ..ROM_errata_10.
10009f0c:	52410063 5f594152 284e454c 63746170     c.ARRAY_LEN(patc
10009f1c:	5f646568 5f636c6c 5f67736d 5f6c6468     hed_llc_msg_hdl_
10009f2c:	29626174 203d3d20 4b534154 5345445f     tab) == TASK_DES
10009f3c:	4c4c5f43 736d2e43 6e635f67 79640074     C_LLC.msg_cnt.dy
10009f4c:	696d616e 6f6d2063 25206564 70202c64     namic mode %d, p
10009f5c:	6f4d6572 25206564 4f520064 72655f4d     reMode %d.ROM_er
10009f6c:	61746172 2e36315f 52410063 5f594152     rata_16.c.ARRAY_
10009f7c:	284e454c 63746170 5f646568 5f6d6c6c     LEN(patched_llm_
10009f8c:	5f67736d 5f6c6468 29626174 203d3d20     msg_hdl_tab) == 
10009f9c:	4b534154 5345445f 4c4c5f43 736d2e4d     TASK_DESC_LLM.ms
10009fac:	6e635f67 6e690074 72726574 2e747075     g_cnt.interrupt.
10009fbc:	616d0063 54006b73 69206568 5f72746e     c.mask.The intr_
10009fcc:	73636576 72726120 69207961 75662073     vecs array is fu
10009fdc:	202e6c6c 69666544 6220656e 65676769     ll. Define bigge
10009fec:	4e492072 52524554 5f545055 5f58414d     r INTERRUPT_MAX_
10009ffc:	2e505247 00000000                       GRP.....

1000a004 <CSWTCH.35>:
1000a004:	20000000 20000004 00000000 00000000     ... ... ........
	...
1000a028:	20000014 00000000 00000000 2000001c     ... ........... 
1000a038:	20000020 20000024 20000028 2000002c      .. $.. (.. ,.. 
1000a048:	20000030 20000034 20000038 2000003c     0.. 4.. 8.. <.. 
1000a058:	20000040 20000044 20000048 2000004c     @.. D.. H.. L.. 
1000a068:	20000050 20000054 20000058 2000005c     P.. T.. X.. \.. 
1000a078:	20000060 20000064 20000068 2000006c     `.. d.. h.. l.. 
1000a088:	20000070 20000074 20000078 2000007c     p.. t.. x.. |.. 
1000a098:	20000080 20000084 20000088 2000008c     ... ... ... ... 
1000a0a8:	20000090 20000094 20000098 2000009c     ... ... ... ... 
1000a0b8:	200000a0 745f7773 72656d69 736d203a     ... sw_timer: ms
1000a0c8:	6f742067 6b6e7520 6e776f6e 20646920     g to unknown id 
1000a0d8:	64207525 25207473 72662075 25206d6f     %u dst %u from %
1000a0e8:	77730075 6d69745f 203a7265 2067736d     u.sw_timer: msg 
1000a0f8:	68746977 64616220 6d697420 695f7265     with bad timer_i
1000a108:	75252064 5f777300 656d6974 6d203a72     d %u.sw_timer: m
1000a118:	77206773 20687469 65657266 6d697420     sg with free tim
1000a128:	695f7265 75252064 5f777300 656d6974     er_id %u.sw_time
1000a138:	00632e72 745f7773 72656d69 6572665f     r.c.sw_timer_fre
1000a148:	65685f65 3d206461 554e203d 73004c4c     e_head == NULL.s
1000a158:	69745f77 5f72656d 65657266 6165685f     w_timer_free_hea
1000a168:	75630064 75630072 683e2d72 6c646e61     d.cur.cur->handl
1000a178:	49007265 49543244 2852454d 656d6974     er.ID2TIMER(time
1000a188:	64695f72 683e2d29 6c646e61 00007265     r_id)->handler..

1000a198 <TASK_DESC_USER1>:
1000a198:	1000a1a4 20014f58 00010001              ....XO. ....

1000a1a4 <sw_timer_msg_handler_tab>:
1000a1a4:	0000ffff 10003141 655f7773 746e6576     ....A1..sw_event
1000a1b4:	6162203a 616d2064 25206b73 2c786c23     : bad mask %#lx,
1000a1c4:	65766520 695f746e 75252064 5f777300      event_id %u.sw_
1000a1d4:	6e657665 66203a74 20656572 6e657665     event: free even
1000a1e4:	64695f74 00752520 655f7773 746e6576     t_id %u.sw_event
1000a1f4:	7300632e 76655f77 5f746e65 65657266     .c.sw_event_free
1000a204:	6165685f 3d3d2064 4c554e20 7461004c     _head == NULL.at
1000a214:	70675f6d 632e6f69 6d746100 6970675f     m_gpio.c.atm_gpi
1000a224:	61765f6f 6164696c 675f6574 286f6970     o_validate_gpio(
1000a234:	6f697067 3d3d2029 4d544120 4950475f     gpio) == ATM_GPI
1000a244:	4f4e5f4f 5252455f 5f776800 2e676663     O_NO_ERR.hw_cfg.
1000a254:	74720063 203d3d20 00337472 203a7325     c.rt == rt3.%s: 
1000a264:	61766e49 2064696c 61726170               Invalid params.

1000a273 <__func__.0>:
1000a273:	635f7768 725f6766 6f747365 725f6572     hw_cfg_restore_r
1000a283:	63735f78                                 x_scan.

1000a28a <__func__.1>:
1000a28a:	635f7768 6f5f6766 6d697470 5f657a69     hw_cfg_optimize_
1000a29a:	735f7872 006e6163 75736e55 726f7070     rx_scan.Unsuppor
1000a2aa:	20646574 72616f62 326d0064 00313032     ted board.m2201.
1000a2ba:	3032336d 326d0031 00313332 3532326d     m3201.m2231.m225
1000a2ca:	336d0031 00313332 3232336d 326d0031     1.m3231.m3221.m2
1000a2da:	00313232 3032326d 336d0032 00323032     221.m2202.m3202.
1000a2ea:	78656e55 74636570 66206465 6873616c     Unexpected flash
1000a2fa:	70797420 6e550065 65707865 64657463      type.Unexpected
1000a30a:	63617020 6567616b 70797420 6e550065      package type.Un
1000a31a:	65707865 64657463 6e697020 72726120     expected pin arr
1000a32a:	65676e61 746e656d 656e5500 63657078     angement.Unexpec
1000a33a:	20646574 76726168 69747365 7320676e     ted harvesting s
1000a34a:	6f707075 28007472 29302828 203c3c20     upport.(((0) << 
1000a35a:	20293131 2828207c 3c202933 2933203c     11) | ((3) << 3)
1000a36a:	28207c20 20293128 30203c3c 207c2029      | ((1) << 0) | 
1000a37a:	29322828 203c3c20 7c202938 32282820     ((2) << 8) | ((2
1000a38a:	3c3c2029 29333120 28207c20 20293128     ) << 13) | ((1) 
1000a39a:	36203c3c 42002929 6472616f 6e6f6320     << 6)).Board con
1000a3aa:	75676966 69746172 62206e6f 676e6965     figuration being
1000a3ba:	65737520 6e692064 65687420 4b445320      used in the SDK
1000a3ca:	73252820 6f642029 6e207365 6d20746f      (%s) does not m
1000a3da:	68637461 65687420 6e6f6320 7463656e     atch the connect
1000a3ea:	62206465 6472616f 23252820 2e29786c     ed board (%#lx).
1000a3fa:	74655320 414f4220 253d4452 75642073      Set BOARD=%s du
1000a40a:	676e6972 65687420 69756220 7020646c     ring the build p
1000a41a:	65636f72 202e7373 65666552 6f742072     rocess. Refer to
1000a42a:	6d746120 6369736f 6b64735f 6178652f      atmosic_sdk/exa
1000a43a:	656c706d 45522f73 454d4441 726f6620     mples/README for
1000a44a:	6c206120 20747369 7320666f 6f707075      a list of suppo
1000a45a:	64657472 616f6220 2e736472 6e697000     rted boards..pin
1000a46a:	2e78756d 78650063 6c665f74 5f687361     mux.c.ext_flash_
1000a47a:	5f706d63 74697277 25402865 2c786c23     cmp_write(@%#lx,
1000a48a:	756c2520 20003a29 78323025 2e2e2000      %lu):. %02x. ..
1000a49a:	7865002e 6c665f74 5f687361 74697277     ..ext_flash_writ
1000a4aa:	25402865 2c786c23 756c2520 41462029     e(@%#lx, %lu) FA
1000a4ba:	25204c49 75252075 6c232520 43000a78     IL %u %u %#lx..C
1000a4ca:	35005053 37003578 36003778 20003678     SP.5x5.7x7.6x6. 
1000a4da:	63617453 2064656b 73616c66 20003a68     Stacked flash:. 
1000a4ea:	5f545845 53414c46 65003a48 665f7478     EXT_FLASH:.ext_f
1000a4fa:	6873616c 6165725f 20292864 4c494146     lash_read() FAIL
1000a50a:	25204445 70000a75 632e756d 73657200     ED %u..pmu.c.res
1000a51a:	632e7465 61747300 00737574 746f6f62     et.c.status.boot
1000a52a:	6174735f 20737574 7825203d 6c6f4300     _status = %x.Col
1000a53a:	6f622064 5300746f 65747379 6572206d     d boot.System re
1000a54a:	00746573 65626948 69746172 77206e6f     set.Hiberation w
1000a55a:	75656b61 4f530070 666f2043 61772066     akeup.SOC off wa
1000a56a:	7075656b 6f724200 756f6e77 6f432074     keup.Brownout Co
1000a57a:	7469646e 206e6f69 65746564 64657463     ndition detected
1000a58a:	6e45203a 69726574 5320676e 4f5f434f     : Entering SOC_O
1000a59a:	62004646 6f6e7772 632e7475 64252300     FF.brwnout.c.#%d
1000a5aa:	25783020 786c3830 540a000a 65636172      0x%08lx...Trace
1000a5ba:	6b636162 6d6f6320 74656c70 25203a65     back complete: %
1000a5ca:	41000a64 736f6d74 54206369 2e686365     d..Atmosic Tech.
1000a5da:	44424b00 0031302d ff563412 debc9afe     .KBD-01..4V.....
1000a5ea:	302e3100 302e302e 302e3100 3000302e     .1.0.0.0.1.0.0.0
1000a5fa:	382e312e ff00372e bbccddee 706100aa     .1.8.7........ap
1000a60a:	69645f70 632e7373 045e0200 03000040     p_diss.c..^.@...
	...

1000a61c <app_dis_parm>:
1000a61c:	01ff0000 100049c9 3031255b 7330312e     .....I..[%10.10s
1000a62c:	5b1b5b5d 456d3139 6d305b1b 69203a5d     ][.[91mE.[0m]: i
1000a63c:	253a7864 73203a75 75746174 23252073     dx:%u: status %#
1000a64c:	255b0078 312e3031 5b5d7330 31395b1b     x.[%10.10s][.[91
1000a65c:	5b1b456d 3a5d6d30 76646120 6e617320     mE.[0m]: adv san
1000a66c:	20797469 20727265 7974202d 253d6570     ity err - type=%
1000a67c:	202c7823 706f7270 7823253d 6870202c     #x, prop=%#x, ph
1000a68c:	23253d79 64202c78 5f637369 65646f6d     y=%#x, disc_mode
1000a69c:	7823253d 6572202c 6e6f7361 7823253d     =%#x, reason=%#x
1000a6ac:	6d746100 7664615f 5b00632e 2e303125     .atm_adv.c.[%10.
1000a6bc:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
1000a6cc:	6441203a 3a752576 004e4f20 3031255b     : Adv%u: ON.[%10
1000a6dc:	7330312e 5b1b5b5d 566d3739 6d305b1b     .10s][.[97mV.[0m
1000a6ec:	61203a5d 63207664 74616572 25286465     ]: adv created(%
1000a6fc:	5b002975 2e303125 5d733031 395b1b5b     u).[%10.10s][.[9
1000a70c:	1b446d32 5d6d305b 6441203a 3a752576     2mD.[0m]: Adv%u:
1000a71c:	46464f20 23252820 5b002978 2e303125      OFF (%#x).[%10.
1000a72c:	5d733031 395b1b5b 1b456d31 5d6d305b     10s][.[91mE.[0m]
1000a73c:	7257203a 20676e6f 6564726f 61002172     : Wrong order!.a
1000a74c:	635f7664 255b0062 312e3031 5b5d7330     dv_cb.[%10.10s][
1000a75c:	31395b1b 5b1b456d 3a5d6d30 686e5520     .[91mE.[0m]: Unh
1000a76c:	6c646e61 74206465 3d657079 00782325     andled type=%#x.
1000a77c:	3031255b 7330312e 5b1b5b5d 446d3239     [%10.10s][.[92mD
1000a78c:	6d305b1b 63203a5d 2c642562 736e6920     .[0m]: cb%d, ins
1000a79c:	2c642574 74616420 00642561 3031255b     t%d, data%d.[%10
1000a7ac:	7330312e 5b1b5b5d 4e6d3439 6d305b1b     .10s][.[94mN.[0m
1000a7bc:	75203a5d 74616470 20676e69 44494156     ]: updating VAID
1000a7cc:	206f7420 20656874 20766461 61746164      to the adv data
1000a7dc:	31255b00 30312e30 1b5b5d73 6d37395b     .[%10.10s][.[97m
1000a7ec:	305b1b56 203a5d6d 6d656c65 20746e65     V.[0m]: element 
1000a7fc:	3a6e656c 32302520 74612058 64255b20     len: %02X at [%d
1000a80c:	255b005d 312e3031 5b5d7330 32395b1b     ].[%10.10s][.[92
1000a81c:	5b1b446d 3a5d6d30 756f6620 6d20646e     mD.[0m]: found m
1000a82c:	64206661 20617461 72617473 74612074     af data start at
1000a83c:	64255b20 255b005d 312e3031 5b5d7330      [%d].[%10.10s][
1000a84c:	32395b1b 5b1b446d 3a5d6d30 206f6e20     .[92mD.[0m]: no 
1000a85c:	68746170 206f7420 61647075 76206574     path to update v
1000a86c:	00646961 3031255b 7330312e 5b1b5b5d     aid.[%10.10s][.[
1000a87c:	446d3239 6d305b1b 6e203a5d 6163206f     92mD.[0m]: no ca
1000a88c:	69636970 66207974 5020726f 5f485441     picity for PATH_
1000a89c:	45534e49 4e5f5452 5b005745 2e303125     INSERT_NEW.[%10.
1000a8ac:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
1000a8bc:	6f6e203a 70616320 74696369 6f662079     : no capicity fo
1000a8cc:	41502072 495f4854 5245534e 50415f54     r PATH_INSERT_AP
1000a8dc:	444e4550 31255b00 30312e30 1b5b5d73     PEND.[%10.10s][.
1000a8ec:	6d32395b 305b1b44 203a5d6d 6e616863     [92mD.[0m]: chan
1000a8fc:	76206567 5f646961 6f742048 6425203a     ge vaid_H to: %d
1000a90c:	31255b00 30312e30 1b5b5d73 6d37395b     .[%10.10s][.[97m
1000a91c:	305b1b56 203a5d6d 20766461 61746164     V.[0m]: adv data
1000a92c:	5d64255b 3025203a 5b005832 2e303125     [%d]: %02X.[%10.
1000a93c:	5d733031 395b1b5b 1b4e6d34 5d6d305b     10s][.[94mN.[0m]
1000a94c:	7075203a 65746164 41562064 74204449     : updated VAID t
1000a95c:	6874206f 64612065 61642076               o the adv data.

1000a96b <M_NAME>:
1000a96b:	5f6d7461 00766461 5f6d7461 2e6d7361     atm_adv.atm_asm.
1000a97b:	255b0063 312e3031 5b5d7330 32395b1b     c.[%10.10s][.[92
1000a98b:	5b1b446d 3a5d6d30 73696420 3a6e6f63     mD.[0m]: discon:
1000a99b:	61747320 3d737574 00782325 5f6d7461      status=%#x.atm_
1000a9ab:	2e706167 255b0063 312e3031 5b5d7330     gap.c.[%10.10s][
1000a9bb:	31395b1b 5b1b456d 3a5d6d30 4b524920     .[91mE.[0m]: IRK
1000a9cb:	73696d20 75622073 6f622074 6465646e      miss but bonded
1000a9db:	31255b00 30312e30 1b5b5d73 6d31395b     .[%10.10s][.[91m
1000a9eb:	305b1b45 203a5d6d 20787463 20646e61     E.[0m]: ctx and 
1000a9fb:	2d787463 67656e3e 6163206f 746f6e6e     ctx->nego cannot
1000aa0b:	20656220 4c4c554e 31255b00 30312e30      be NULL.[%10.10
1000aa1b:	1b5b5d73 6d37395b 305b1b56 203a5d6d     s][.[97mV.[0m]: 
1000aa2b:	67726174 28207465 25206425 5b002964     target (%d %d).[
1000aa3b:	2e303125 5d733031 395b1b5b 1b446d32     %10.10s][.[92mD.
1000aa4b:	5d6d305b 6150203a 206d6172 20544f4e     [0m]: Param NOT 
1000aa5b:	646f6f67 6425282e 6425202c 255b0029     good.(%d, %d).[%
1000aa6b:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
1000aa7b:	3a5d6d30 78614d20 64707520 20657461     0m]: Max update 
1000aa8b:	72746572 20736569 63616572 2e646568     retries reached.
1000aa9b:	31255b00 30312e30 1b5b5d73 6d37395b     .[%10.10s][.[97m
1000aaab:	305b1b56 203a5d6d 61726150 6f67206d     V.[0m]: Param go
1000aabb:	2528646f 25202c64 5b002964 2e303125     od(%d, %d).[%10.
1000aacb:	5d733031 395b1b5b 1b576d35 5d6d305b     10s][.[95mW.[0m]
1000aadb:	7325203a 6e49203a 696c6176 6f632064     : %s: Invalid co
1000aaeb:	7864696e 31255b00 30312e30 1b5b5d73     nidx.[%10.10s][.
1000aafb:	6d37395b 305b1b56 203a5d6d 20636f6c     [97mV.[0m]: loc 
1000ab0b:	6574616c 2079636e 6c706d63 7473203a     latency cmpl: st
1000ab1b:	73757461 7823253d 6e696c00 5b006f66     atus=%#x.linfo.[
1000ab2b:	2e303125 5d733031 395b1b5b 1b456d31     %10.10s][.[91mE.
1000ab3b:	5d6d305b 696d203a 63207373 73252062     [0m]: miss cb %s
1000ab4b:	63657300 7165725f 31255b00 30312e30     .sec_req.[%10.10
1000ab5b:	1b5b5d73 6d35395b 305b1b57 203a5d6d     s][.[95mW.[0m]: 
1000ab6b:	61686e55 656c646e 41472064 6d204350     Unhandled GAPC m
1000ab7b:	25206773 63007823 65746e6f 3d207478     sg %#x.context =
1000ab8b:	6126203d 6c5f6d74 736b6e69 6e6f635b     = &atm_links[con
1000ab9b:	5d786469 31255b00 30312e30 1b5b5d73     idx].[%10.10s][.
1000abab:	6d31395b 305b1b45 203a5d6d 20667270     [91mE.[0m]: prf 
1000abbb:	6e6f7277 726f2067 00726564 3031255b     wrong order.[%10
1000abcb:	7330312e 5b1b5b5d 456d3139 6d305b1b     .10s][.[91mE.[0m
1000abdb:	6d203a5d 6c75646f 6f6e2065 6f662074     ]: module not fo
1000abeb:	00646e75 3031255b 7330312e 5b1b5b5d     und.[%10.10s][.[
1000abfb:	456d3139 6d305b1b 6d203a5d 6c75646f     91mE.[0m]: modul
1000ac0b:	62632065 746f6e20 756f6620 6400646e     e cb not found.d
1000ac1b:	6f637369 004d006e 5f747865 00766461     iscon.M.ext_adv.
1000ac2b:	3031255b 7330312e 5b1b5b5d 446d3239     [%10.10s][.[92mD
1000ac3b:	6d305b1b 43203a5d 496e6e6f 6920646e     .[0m]: ConnInd i
1000ac4b:	253d7864 6f722064 253d656c 255b0073     dx=%d role=%s.[%
1000ac5b:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
1000ac6b:	3a5d6d30 73694420 206e6f63 3d646e49     0m]: Discon Ind=
1000ac7b:	00582325 5f6e6f63 61647075 70006574     %#X.con_update.p
1000ac8b:	00726961 72696170 7165725f 31255b00     air.pair_req.[%1
1000ac9b:	30312e30 1b5b5d73 6d32395b 305b1b44     0.10s][.[92mD.[0
1000acab:	203a5d6d 61647055 72206574 203a7165     m]: Update req: 
1000acbb:	3d6e696d 31286425 6d35322e 6d202973     min=%d(1.25ms) m
1000accb:	253d7861 2e312864 736d3532 616c2029     ax=%d(1.25ms) la
1000acdb:	64253d74 3d6f7420 31286425 29736d30     t=%d to=%d(10ms)
1000aceb:	79687000 31255b00 30312e30 1b5b5d73     .phy.[%10.10s][.
1000acfb:	6d35395b 305b1b57 203a5d6d 7373696d     [95mW.[0m]: miss
1000ad0b:	20626320 6c007325 6b705f65 69735f74      cb %s.le_pkt_si
1000ad1b:	5b00657a 2e303125 5d733031 395b1b5b     ze.[%10.10s][.[9
1000ad2b:	1b566d37 5d6d305b 6564203a 6e695f76     7mV.[0m]: dev_in
1000ad3b:	65725f66 6f203a71 65736666 64253d74     f_req: offset=%d
1000ad4b:	78616d20 2064253d 656d616e 6e656c5f      max=%d name_len
1000ad5b:	0064253a 3031255b 7330312e 5b1b5b5d     :%d.[%10.10s][.[
1000ad6b:	446d3239 6d305b1b 64203a5d 695f7665     92mD.[0m]: dev_i
1000ad7b:	3a6f666e 71657220 0064253d 00636e65     nfo: req=%d.enc.
1000ad8b:	72696170 6d756e5f 63697265 69617000     pair_numeric.pai
1000ad9b:	61705f72 656b7373 255b0079 312e3031     r_passkey.[%10.1
1000adab:	5b5d7330 31395b1b 5b1b456d 3a5d6d30     0s][.[91mE.[0m]:
1000adbb:	686e5520 6c646e61 45206465 253d4449      Unhandled EID=%
1000adcb:	5b007823 2e303125 5d733031 395b1b5b     #x.[%10.10s][.[9
1000addb:	1b566d37 5d6d305b 6f63203a 7864696e     7mV.[0m]: conidx
1000adeb:	2064253d 20636f6c 6574616c 3d79636e     =%d loc latency=
1000adfb:	5b006425 2e303125 5d733031 395b1b5b     %d.[%10.10s][.[9
1000ae0b:	1b446d32 5d6d305b 202b203a 72656550     2mD.[0m]: + Peer
1000ae1b:	64252820 30252029 253a5832 3a583230      (%d) %02X:%02X:
1000ae2b:	58323025 3230253a 30253a58 253a5832     %02X:%02X:%02X:%
1000ae3b:	00583230 3031255b 7330312e 5b1b5b5d     02X.[%10.10s][.[
1000ae4b:	446d3239 6d305b1b 2b203a5d 746e4920     92mD.[0m]: + Int
1000ae5b:	61767265 202b206c 20643525 696e7528     erval + %5d (uni
1000ae6b:	2e313a74 736d3532 255b0029 312e3031     t:1.25ms).[%10.1
1000ae7b:	5b5d7330 32395b1b 5b1b446d 3a5d6d30     0s][.[92mD.[0m]:
1000ae8b:	4c202b20 6e657461 20207963 3525202b      + Latency  + %5
1000ae9b:	255b0064 312e3031 5b5d7330 32395b1b     d.[%10.10s][.[92
1000aeab:	5b1b446d 3a5d6d30 53202b20 4f547075     mD.[0m]: + SupTO
1000aebb:	25202b20 28206435 74696e75 6d30313a      + %5d (unit:10m
1000aecb:	00002973 00000000                        s).......

1000aed4 <M_NAME>:
1000aed4:	5f6d7461 00706167                       atm_gap.

1000aedc <cfm.0>:
1000aedc:	00000001                                 ......

1000aee2 <zero.1>:
1000aee2:	00000000                                 ......

1000aee8 <default_bt_init_param.2>:
1000aee8:	1000af3a 03c1120b 00060006 012c0042     :...........B.,.
1000aef8:	00000000 1000af08 00000000 00000000     ................

1000af08 <default_dev_conf.1>:
1000af08:	0384000f 00000000 00000000 00000000     ................
	...
1000af20:	03000000 00000000 00fb0040 00a00848     ........@...H...
1000af30:	00000017 00000000                        ..........

1000af3a <dname.0>:
1000af3a:	6f6d7441 20636973 00005442 00000000     Atmosic BT......
1000af4a:	255b0000 312e3031 5b5d7330 31395b1b     ..[%10.10s][.[91
1000af5a:	5b1b456d 3a5d6d30 3a732520 766e4920     mE.[0m]: %s: Inv
1000af6a:	64696c61 72617020 20736d61 7320726f     alid params or s
1000af7a:	65746174 31255b00 30312e30 1b5b5d73     tate.[%10.10s][.
1000af8a:	6d31395b 305b1b45 203a5d6d 6e616353     [91mE.[0m]: Scan
1000af9a:	61747320 66207472 656c6961 25203a64      start failed: %
1000afaa:	25202c75 255b0075 312e3031 5b5d7330     u, %u.[%10.10s][
1000afba:	31395b1b 5b1b456d 3a5d6d30 3a732520     .[91mE.[0m]: %s:
1000afca:	206f4e20 6f6d656d 5b007972 2e303125      No memory.[%10.
1000afda:	5d733031 395b1b5b 1b456d31 5d6d305b     10s][.[91mE.[0m]
1000afea:	7325203a 766e4920 64696c61 72617020     : %s Invalid par
1000affa:	20736d61 7320726f 65746174 6425203a     ams or state: %d
1000b00a:	31255b00 30312e30 1b5b5d73 6d31395b     .[%10.10s][.[91m
1000b01a:	305b1b45 203a5d6d 6e616353 65726320     E.[0m]: Scan cre
1000b02a:	6f697461 6166206e 64656c69 7525203a     ation failed: %u
1000b03a:	7525202c 31255b00 30312e30 1b5b5d73     , %u.[%10.10s][.
1000b04a:	6d31395b 305b1b45 203a5d6d 203a7325     [91mE.[0m]: %s: 
1000b05a:	61766e49 2064696c 61726170 6f20736d     Invalid params o
1000b06a:	74732072 3a657461 00642520              r state: %d.

1000b076 <M_NAME>:
1000b076:	5f6d7461 6e616373                        atm_scan.

1000b07f <__func__.0>:
1000b07f:	5f6d7461 6e616373 6f74735f 64657070     atm_scan_stopped
1000b08f:	646e695f                                 _ind.

1000b094 <__func__.5>:
1000b094:	6d706167 706d635f 7476655f 6163735f     gapm_cmp_evt_sca
1000b0a4:	74735f6e 00747261                       n_start.

1000b0ac <__func__.6>:
1000b0ac:	5f6d7461 6e616373 6174735f               atm_scan_start.

1000b0bb <__func__.7>:
1000b0bb:	6d706167 706d635f 7476655f 6572635f     gapm_cmp_evt_cre
1000b0cb:	5f657461 6e616373                        ate_scan.

1000b0d4 <__func__.8>:
1000b0d4:	5f6d7461 6e616373 6572635f 00657461     atm_scan_create.
1000b0e4:	5f656c62 73736964 6400632e 20617461     ble_diss.c.data 
1000b0f4:	4e203d21 004c4c55                       != NULL.

1000b0fc <ble_diss_handlers>:
1000b0fc:	1000b104 00000001                       ........

1000b104 <ble_diss_msg_handler_list>:
1000b104:	00001402 100062e9                       .....b..

1000b10c <diss_ops>:
1000b10c:	100062d5 100062ad 5f656c62 2e706167     .b...b..ble_gap.
1000b11c:	6e550063 646e6168 2064656c 20706d63     c.Unhandled cmp 
1000b12c:	00747665 61686e55 656c646e 61672064     evt.Unhandled ga
1000b13c:	635f6370 655f706d 6f207476 23252870     pc_cmp_evt op(%#
1000b14c:	202c2978 74617473 25287375 4f002975     x), status(%u).O
1000b15c:	6e20424f 7320746f 6f707075 00217472     OB not support!.
1000b16c:	736c6166 53430065 6e204b52 7320746f     false.CSRK not s
1000b17c:	6f707075 79207472 00217465 61766e69     upport yet!.inva
1000b18c:	2064696c 61647075 63206574 64696e6f     lid update conid
1000b19c:	73250078 616e203a 6c20656d 253d6e65     x.%s: name len=%
1000b1ac:	65460064 72757461 6f6e2065 75732074     d.Feature not su
1000b1bc:	726f7070 25202c74 73762064 00642520     pport, %d vs %d.
1000b1cc:	76746361 7864695f 7525203a 6e656c20     actv_idx: %u len
1000b1dc:	7525203a                                 : %u.

1000b1e1 <__func__.2>:
1000b1e1:	74726f70 5f676e69 63706167 7465675f     porting_gapc_get
1000b1f1:	7665645f 666e695f 66635f6f               _dev_info_cfm..

1000b200 <ble_gapc_handlers>:
1000b200:	1000b208 0000000e                       ........

1000b208 <ble_gapc_msg_handler_list>:
1000b208:	0000ffff 10006c1d 00000e2e 10006bfd     .....l.......k..
1000b218:	00000e0f 10006bbd 00000e15 10006ac9     .....k.......j..
1000b228:	00000e13 10006a15 00000e17 100069dd     .....j.......i..
1000b238:	00000e00 100067bd 00000e07 1000654d     .....g......Me..
1000b248:	00000e08 10006505 00000e09 100064c9     .....e.......d..
1000b258:	00000e1d 10006485 00000e29 10006449     .....d..)...Id..
1000b268:	00000e30 10006921 00000e2c 100068f5     0...!i..,....h..

1000b278 <ble_gapm_handlers>:
1000b278:	1000b280 0000000b                       ........

1000b280 <ble_gapm_msg_handler_list>:
1000b280:	0000ffff 10006391 00000da4 10006631     .....c......1f..
1000b290:	00000d00 10006595 00000d1a 10006631     .....e......1f..
1000b2a0:	00000d27 10006631 00000d15 10006631     '...1f......1f..
1000b2b0:	00000d08 10006631 00000d1c 10006631     ....1f......1f..
1000b2c0:	00000d18 10006631 00000da5 10006e45     ....1f......En..
1000b2d0:	00000da7 10006dcd 5f656c62 5f706167     .....m..ble_gap_
1000b2e0:	2e636573 255b0063 312e3031 5b5d7330     sec.c.[%10.10s][
1000b2f0:	35395b1b 5b1b576d 3a5d6d30 69646520     .[95mW.[0m]: edi
1000b300:	6f6e2076 616d2074 00686374 3031255b     v not match.[%10
1000b310:	7330312e 5b1b5b5d 456d3139 6d305b1b     .10s][.[91mE.[0m
1000b320:	63203a5d 74276e61 756f6620 2520646e     ]: can't found %
1000b330:	61742064 23252067 203d2078 5b006425     d tag %#x = %d.[
1000b340:	2e303125 5d733031 395b1b5b 1b456d31     %10.10s][.[91mE.
1000b350:	5d6d305b 6f4e203a 79656b20 756f6620     [0m]: No key fou
1000b360:	5b00646e 2e303125 5d733031 395b1b5b     nd.[%10.10s][.[9
1000b370:	1b456d31 5d6d305b 6f4e203a 65657020     1mE.[0m]: No pee
1000b380:	64622072 72646461 726f6620 00752520     r bdaddr for %u.
1000b390:	3031255b 7330312e 5b1b5b5d 456d3139     [%10.10s][.[91mE
1000b3a0:	6d305b1b 4e203a5d 62206e6f 2c646e6f     .[0m]: Non bond,
1000b3b0:	6d655220 2065766f 72656570 62207327      Remove peer's b
1000b3c0:	69646e6f 6920676e 006f666e 5f706167     onding info.gap_
1000b3d0:	20646965 2325203d 64690078 203c2078     eid = %#x.idx < 
1000b3e0:	424d554e 425f5245 49444e4f 0053474e     NUMBER_BONDINGS.
1000b3f0:	3031255b 7330312e 5b1b5b5d 4e6d3439     [%10.10s][.[94mN
1000b400:	6d305b1b 64203a5d 74656c65 6f622065     .[0m]: delete bo
1000b410:	2520646e 253a2064 255b0064 312e3031     nd %d :%d.[%10.1
1000b420:	5b5d7330 31395b1b 5b1b456d 3a5d6d30     0s][.[91mE.[0m]:
1000b430:	67615420 44564e20 41545f53 4f4d5f47      Tag NVDS_TAG_MO
1000b440:	5f455355 5f46544e 20474643 7364766e     USE_NTF_CFG nvds
1000b450:	6c65645f 69616620 25203a6c 5b002075     _del fail: %u .[
1000b460:	2e303125 5d733031 395b1b5b 1b456d31     %10.10s][.[91mE.
1000b470:	5d6d305b 2325203a 255b0078 312e3031     [0m]: %#x.[%10.1
1000b480:	5b5d7330 34395b1b 5b1b4e6d 3a5d6d30     0s][.[94mN.[0m]:
1000b490:	4e4f4220 414d2044 3a204b53 78682520      BOND MASK : %hx
	...

1000b4a1 <M_NAME>:
1000b4a1:	5f656c62 5f706167 00636573              ble_gap_sec.

1000b4ad <tag_id.1>:
1000b4ad:	62a6a2a1 685f656c 6470676f 6900632e     ...ble_hogpd.c.i
1000b4bd:	5f74696e 61726170 6e3e2d6d 65705f62     nit_param->nb_pe
1000b4cd:	3e207265 72003020 635f7470 635f706d     er > 0.rpt_cmp_c
1000b4dd:	6c620062 6f685f65 5f647067 5f747072     b.ble_hogpd_rpt_
1000b4ed:	20746e63 6e69203c 705f7469 6d617261     cnt < init_param
1000b4fd:	626e3e2d 7065725f 0074726f 3031255b     ->nb_report.[%10
1000b50d:	7330312e 5b1b5b5d 456d3139 6d305b1b     .10s][.[91mE.[0m
1000b51d:	70203a5d 755f7472 74616470 65203a65     ]: prt_update: e
1000b52d:	726f7272 78232520 31255b00 30312e30     rror %#x.[%10.10
1000b53d:	1b5b5d73 6d35395b 305b1b57 203a5d6d     s][.[95mW.[0m]: 
1000b54d:	20747072 64616572 74697720 74756f68     rpt read without
1000b55d:	00626320 3031255b 7330312e 5b1b5b5d      cb.[%10.10s][.[
1000b56d:	4e6d3439 6d305b1b 55203a5d 6e61686e     94mN.[0m]: Unhan
1000b57d:	64656c64 74707220 70797420 255b0065     dled rpt type.[%
1000b58d:	312e3031 5b5d7330 31395b1b 5b1b456d     10.10s][.[91mE.[
1000b59d:	3a5d6d30 74707220 69727720 77206574     0m]: rpt write w
1000b5ad:	6f687469 63207475 255b0062 312e3031     ithout cb.[%10.1
1000b5bd:	5b5d7330 34395b1b 5b1b4e6d 3a5d6d30     0s][.[94mN.[0m]:
1000b5cd:	686e5520 6c646e61 72206465 72207470      Unhandled rpt r
1000b5dd:	6f207165 255b0070 312e3031 5b5d7330     eq op.[%10.10s][
1000b5ed:	35395b1b 5b1b576d 3a5d6d30 65737520     .[95mW.[0m]: use
1000b5fd:	66656420 746c7561 63636320 616d2064      default cccd ma
1000b60d:	28206b73 31307830 255b0029 312e3031     sk (0x01).[%10.1
1000b61d:	5b5d7330 31395b1b 5b1b456d 3a5d6d30     0s][.[91mE.[0m]:
1000b62d:	76654420 20656369 20746f6e 646e6f62      Device not bond
1000b63d:	5b006465 2e303125 5d733031 395b1b5b     ed.[%10.10s][.[9
1000b64d:	1b576d35 5d6d305b 7072203a 6c635f74     5mW.[0m]: rpt_cl
1000b65d:	3a6d6961 206f4e20 66667562 00007265     aim: No buffer..
	...

1000b677 <M_NAME>:
1000b677:	5f656c62 70676f68 00000064               ble_hogpd....

1000b684 <ble_hogpd_cbs>:
1000b684:	100082c1 10008259                       ....Y...

1000b68c <ble_hogpd_handlers>:
1000b68c:	1000b694 00000009                       ........

1000b694 <ble_hogpd_msg_handler_list>:
1000b694:	00002601 1000821d 00002608 1000861d     .&.......&......
1000b6a4:	00002606 10008331 00002604 10008509     .&..1....&......
1000b6b4:	00002609 10008775 00002603 1000841d     .&..u....&......
1000b6c4:	00000e01 10008389 00000e03 100081e9     ................
1000b6d4:	00000e19 100086dd 5f656c62 6b736174     ........ble_task
1000b6e4:	6800632e 6c646e61 3e2d7265 636e7566     .c.handler->func
1000b6f4:	20732500 6e55202d 646e6168 2064656c     .%s - Unhandled 
1000b704:	6967736d 23252064 72662078 25206d6f     msgid %#x from %
1000b714:	62007823 745f656c 5f6b7361 6e756f63     #x.ble_task_coun
1000b724:	203c2074 5f454c42 5f47534d 444e4148     t < BLE_MSG_HAND
1000b734:	5f52454c 5453494c 5a49535f 62700045     LER_LIST_SIZE.pb
1000b744:	685f656c 6c646e61 5b737265 742e5d69     le_handlers[i].t
1000b754:	5f6b7361 21206469 6174203d 695f6b73     ask_id != task_i
1000b764:	70410064 63696c70 6f697461 7263206e     d.Application cr
1000b774:	65746165 75252073 73656d20 65676173     eates %u message
1000b784:	6e616820 72656c64 6f662073 4c422072      handlers for BL
1000b794:	65732045 63697672 62007365 6f207475     E services.but o
1000b7a4:	20796c6e 766f7270 73656469 20642520     nly provides %d 
1000b7b4:	20726f66 6e697375 50202e67 7361656c     for using. Pleas
1000b7c4:	6f6d2065 79666964 65687420 6c617600     e modify the.val
1000b7d4:	64206575 6e696665 62206465 4c422079     ue defined by BL
1000b7e4:	534d5f45 41485f47 454c444e 494c5f52     E_MSG_HANDLER_LI
1000b7f4:	535f5453 00455a49                       ST_SIZE.

1000b7fc <TASK_DESC_APP>:
1000b7fc:	1000b828 200151c6 00010001              (....Q. ....

1000b808 <__func__.0>:
1000b808:	5f656c62 5f746567 646e6168 0072656c     ble_get_handler.

1000b818 <__func__.1>:
1000b818:	5f656c62 5f67736d 646e6168 0072656c     ble_msg_handler.

1000b828 <ble_msg_handler_tab>:
1000b828:	0000ffff 1000892d 74726f70 5f676e69     ....-...porting_
1000b838:	2e656c62                                 ble.c.

Disassembly of section .data:

20014000 <interrupt_hdlr>:
20014000:	b510      	push	{r4, lr}
20014002:	490b      	ldr	r1, [pc, #44]	; (20014030 <interrupt_hdlr+0x30>)
20014004:	4b0b      	ldr	r3, [pc, #44]	; (20014034 <interrupt_hdlr+0x34>)
20014006:	480c      	ldr	r0, [pc, #48]	; (20014038 <interrupt_hdlr+0x38>)
20014008:	4798      	blx	r3
2001400a:	200a      	movs	r0, #10
2001400c:	4b0b      	ldr	r3, [pc, #44]	; (2001403c <interrupt_hdlr+0x3c>)
2001400e:	4798      	blx	r3
20014010:	200a      	movs	r0, #10
20014012:	4b0b      	ldr	r3, [pc, #44]	; (20014040 <interrupt_hdlr+0x40>)
20014014:	4798      	blx	r3
20014016:	200a      	movs	r0, #10
20014018:	4b0a      	ldr	r3, [pc, #40]	; (20014044 <interrupt_hdlr+0x44>)
2001401a:	4798      	blx	r3
2001401c:	200a      	movs	r0, #10
2001401e:	4b0a      	ldr	r3, [pc, #40]	; (20014048 <interrupt_hdlr+0x48>)
20014020:	4798      	blx	r3
20014022:	4b0a      	ldr	r3, [pc, #40]	; (2001404c <interrupt_hdlr+0x4c>)
20014024:	2114      	movs	r1, #20
20014026:	7818      	ldrb	r0, [r3, #0]
20014028:	4b09      	ldr	r3, [pc, #36]	; (20014050 <interrupt_hdlr+0x50>)
2001402a:	4798      	blx	r3
2001402c:	bd10      	pop	{r4, pc}
2001402e:	46c0      	nop			; (mov r8, r8)
20014030:	100094f7 	.word	0x100094f7
20014034:	000066b1 	.word	0x000066b1
20014038:	100094d1 	.word	0x100094d1
2001403c:	200143f5 	.word	0x200143f5
20014040:	20014365 	.word	0x20014365
20014044:	10003665 	.word	0x10003665
20014048:	200143ad 	.word	0x200143ad
2001404c:	20014d64 	.word	0x20014d64
20014050:	100032b9 	.word	0x100032b9

20014054 <adv_act_idx>:
20014054:	                                         .

20014055 <cur_lidx>:
20014055:	                                         .

20014056 <scan_act_idx>:
20014056:	                                         .

20014057 <lunch_conidx>:
20014057:	                                         .

20014058 <user_rv_appm_init.0>:
20014058:	10002921 00000000                       !)......

20014060 <user_rv_appm_init.0>:
20014060:	10002bcd 00000000                       .+......

20014068 <HFH_Stopper>:
20014068:	10002ca1                                .,..

2001406c <llc_stopped_ind_handler_hook>:
2001406c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
2001406e:	0005      	movs	r5, r0
20014070:	2081      	movs	r0, #129	; 0x81
20014072:	000e      	movs	r6, r1
20014074:	4f08      	ldr	r7, [pc, #32]	; (20014098 <llc_stopped_ind_handler_hook+0x2c>)
20014076:	0011      	movs	r1, r2
20014078:	0040      	lsls	r0, r0, #1
2001407a:	0014      	movs	r4, r2
2001407c:	9301      	str	r3, [sp, #4]
2001407e:	47b8      	blx	r7
20014080:	2004      	movs	r0, #4
20014082:	0021      	movs	r1, r4
20014084:	30ff      	adds	r0, #255	; 0xff
20014086:	47b8      	blx	r7
20014088:	0022      	movs	r2, r4
2001408a:	0031      	movs	r1, r6
2001408c:	0028      	movs	r0, r5
2001408e:	9b01      	ldr	r3, [sp, #4]
20014090:	4c02      	ldr	r4, [pc, #8]	; (2001409c <llc_stopped_ind_handler_hook+0x30>)
20014092:	47a0      	blx	r4
20014094:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
20014096:	46c0      	nop			; (mov r8, r8)
20014098:	000010bd 	.word	0x000010bd
2001409c:	0000de89 	.word	0x0000de89

200140a0 <user_rv_appm_init.2>:
200140a0:	10002d39 00000000                       9-......

200140a8 <patched_lld_con_sched>:
200140a8:	b5f0      	push	{r4, r5, r6, r7, lr}
200140aa:	4b43      	ldr	r3, [pc, #268]	; (200141b8 <patched_lld_con_sched+0x110>)
200140ac:	0004      	movs	r4, r0
200140ae:	33d0      	adds	r3, #208	; 0xd0
200140b0:	7818      	ldrb	r0, [r3, #0]
200140b2:	b085      	sub	sp, #20
200140b4:	4b41      	ldr	r3, [pc, #260]	; (200141bc <patched_lld_con_sched+0x114>)
200140b6:	000d      	movs	r5, r1
200140b8:	3005      	adds	r0, #5
200140ba:	2106      	movs	r1, #6
200140bc:	0016      	movs	r6, r2
200140be:	4798      	blx	r3
200140c0:	2314      	movs	r3, #20
200140c2:	434b      	muls	r3, r1
200140c4:	2100      	movs	r1, #0
200140c6:	4a3e      	ldr	r2, [pc, #248]	; (200141c0 <patched_lld_con_sched+0x118>)
200140c8:	189b      	adds	r3, r3, r2
200140ca:	881b      	ldrh	r3, [r3, #0]
200140cc:	b29b      	uxth	r3, r3
200140ce:	9303      	str	r3, [sp, #12]
200140d0:	428e      	cmp	r6, r1
200140d2:	d001      	beq.n	200140d8 <patched_lld_con_sched+0x30>
200140d4:	4259      	negs	r1, r3
200140d6:	4159      	adcs	r1, r3
200140d8:	4b3a      	ldr	r3, [pc, #232]	; (200141c4 <patched_lld_con_sched+0x11c>)
200140da:	00a0      	lsls	r0, r4, #2
200140dc:	58c3      	ldr	r3, [r0, r3]
200140de:	9102      	str	r1, [sp, #8]
200140e0:	9301      	str	r3, [sp, #4]
200140e2:	3352      	adds	r3, #82	; 0x52
200140e4:	781b      	ldrb	r3, [r3, #0]
200140e6:	2b01      	cmp	r3, #1
200140e8:	d142      	bne.n	20014170 <patched_lld_con_sched+0xc8>
200140ea:	2900      	cmp	r1, #0
200140ec:	d040      	beq.n	20014170 <patched_lld_con_sched+0xc8>
200140ee:	9f01      	ldr	r7, [sp, #4]
200140f0:	377e      	adds	r7, #126	; 0x7e
200140f2:	883e      	ldrh	r6, [r7, #0]
200140f4:	2e00      	cmp	r6, #0
200140f6:	d03b      	beq.n	20014170 <patched_lld_con_sched+0xc8>
200140f8:	9901      	ldr	r1, [sp, #4]
200140fa:	3150      	adds	r1, #80	; 0x50
200140fc:	8809      	ldrh	r1, [r1, #0]
200140fe:	468c      	mov	ip, r1
20014100:	4660      	mov	r0, ip
20014102:	9901      	ldr	r1, [sp, #4]
20014104:	3184      	adds	r1, #132	; 0x84
20014106:	8809      	ldrh	r1, [r1, #0]
20014108:	1a40      	subs	r0, r0, r1
2001410a:	1e42      	subs	r2, r0, #1
2001410c:	4296      	cmp	r6, r2
2001410e:	db2f      	blt.n	20014170 <patched_lld_con_sched+0xc8>
20014110:	2801      	cmp	r0, #1
20014112:	dd2d      	ble.n	20014170 <patched_lld_con_sched+0xc8>
20014114:	4662      	mov	r2, ip
20014116:	3a02      	subs	r2, #2
20014118:	1a51      	subs	r1, r2, r1
2001411a:	8039      	strh	r1, [r7, #0]
2001411c:	001a      	movs	r2, r3
2001411e:	0029      	movs	r1, r5
20014120:	0020      	movs	r0, r4
20014122:	4b29      	ldr	r3, [pc, #164]	; (200141c8 <patched_lld_con_sched+0x120>)
20014124:	4798      	blx	r3
20014126:	803e      	strh	r6, [r7, #0]
20014128:	4e28      	ldr	r6, [pc, #160]	; (200141cc <patched_lld_con_sched+0x124>)
2001412a:	7833      	ldrb	r3, [r6, #0]
2001412c:	9302      	str	r3, [sp, #8]
2001412e:	2b00      	cmp	r3, #0
20014130:	d01b      	beq.n	2001416a <patched_lld_con_sched+0xc2>
20014132:	4c27      	ldr	r4, [pc, #156]	; (200141d0 <patched_lld_con_sched+0x128>)
20014134:	9903      	ldr	r1, [sp, #12]
20014136:	6823      	ldr	r3, [r4, #0]
20014138:	4d26      	ldr	r5, [pc, #152]	; (200141d4 <patched_lld_con_sched+0x12c>)
2001413a:	005a      	lsls	r2, r3, #1
2001413c:	2301      	movs	r3, #1
2001413e:	6022      	str	r2, [r4, #0]
20014140:	4219      	tst	r1, r3
20014142:	d01b      	beq.n	2001417c <patched_lld_con_sched+0xd4>
20014144:	4313      	orrs	r3, r2
20014146:	6023      	str	r3, [r4, #0]
20014148:	2300      	movs	r3, #0
2001414a:	2201      	movs	r2, #1
2001414c:	56eb      	ldrsb	r3, [r5, r3]
2001414e:	56aa      	ldrsb	r2, [r5, r2]
20014150:	189a      	adds	r2, r3, r2
20014152:	2302      	movs	r3, #2
20014154:	56eb      	ldrsb	r3, [r5, r3]
20014156:	189b      	adds	r3, r3, r2
20014158:	9a02      	ldr	r2, [sp, #8]
2001415a:	2a01      	cmp	r2, #1
2001415c:	d11b      	bne.n	20014196 <patched_lld_con_sched+0xee>
2001415e:	33f2      	adds	r3, #242	; 0xf2
20014160:	da03      	bge.n	2001416a <patched_lld_con_sched+0xc2>
20014162:	2302      	movs	r3, #2
20014164:	7033      	strb	r3, [r6, #0]
20014166:	4b1c      	ldr	r3, [pc, #112]	; (200141d8 <patched_lld_con_sched+0x130>)
20014168:	4798      	blx	r3
2001416a:	2000      	movs	r0, #0
2001416c:	b005      	add	sp, #20
2001416e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20014170:	0029      	movs	r1, r5
20014172:	0020      	movs	r0, r4
20014174:	9a02      	ldr	r2, [sp, #8]
20014176:	4b14      	ldr	r3, [pc, #80]	; (200141c8 <patched_lld_con_sched+0x120>)
20014178:	4798      	blx	r3
2001417a:	e7d5      	b.n	20014128 <patched_lld_con_sched+0x80>
2001417c:	9b01      	ldr	r3, [sp, #4]
2001417e:	4f17      	ldr	r7, [pc, #92]	; (200141dc <patched_lld_con_sched+0x134>)
20014180:	339d      	adds	r3, #157	; 0x9d
20014182:	7838      	ldrb	r0, [r7, #0]
20014184:	781b      	ldrb	r3, [r3, #0]
20014186:	2103      	movs	r1, #3
20014188:	542b      	strb	r3, [r5, r0]
2001418a:	3001      	adds	r0, #1
2001418c:	4b14      	ldr	r3, [pc, #80]	; (200141e0 <patched_lld_con_sched+0x138>)
2001418e:	b2c0      	uxtb	r0, r0
20014190:	4798      	blx	r3
20014192:	7039      	strb	r1, [r7, #0]
20014194:	e7d8      	b.n	20014148 <patched_lld_con_sched+0xa0>
20014196:	33d1      	adds	r3, #209	; 0xd1
20014198:	dbe7      	blt.n	2001416a <patched_lld_con_sched+0xc2>
2001419a:	203f      	movs	r0, #63	; 0x3f
2001419c:	6823      	ldr	r3, [r4, #0]
2001419e:	4018      	ands	r0, r3
200141a0:	4b10      	ldr	r3, [pc, #64]	; (200141e4 <patched_lld_con_sched+0x13c>)
200141a2:	4798      	blx	r3
200141a4:	2802      	cmp	r0, #2
200141a6:	dde0      	ble.n	2001416a <patched_lld_con_sched+0xc2>
200141a8:	2301      	movs	r3, #1
200141aa:	7033      	strb	r3, [r6, #0]
200141ac:	4b0e      	ldr	r3, [pc, #56]	; (200141e8 <patched_lld_con_sched+0x140>)
200141ae:	4798      	blx	r3
200141b0:	2300      	movs	r3, #0
200141b2:	6023      	str	r3, [r4, #0]
200141b4:	e7d9      	b.n	2001416a <patched_lld_con_sched+0xc2>
200141b6:	46c0      	nop			; (mov r8, r8)
200141b8:	200015a0 	.word	0x200015a0
200141bc:	0002f01d 	.word	0x0002f01d
200141c0:	300084fc 	.word	0x300084fc
200141c4:	20000dac 	.word	0x20000dac
200141c8:	0001a3cd 	.word	0x0001a3cd
200141cc:	20014e6b 	.word	0x20014e6b
200141d0:	20014e70 	.word	0x20014e70
200141d4:	20014e68 	.word	0x20014e68
200141d8:	200144b9 	.word	0x200144b9
200141dc:	20014e6c 	.word	0x20014e6c
200141e0:	0002ee49 	.word	0x0002ee49
200141e4:	1000916d 	.word	0x1000916d
200141e8:	20014445 	.word	0x20014445

200141ec <user_rv_lld_con_sched.0>:
200141ec:	200140a9 00000000                       .@. ....

200141f4 <lld_scan_end_ind_handler_hook>:
200141f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200141f6:	001f      	movs	r7, r3
200141f8:	4b07      	ldr	r3, [pc, #28]	; (20014218 <lld_scan_end_ind_handler_hook+0x24>)
200141fa:	0004      	movs	r4, r0
200141fc:	681b      	ldr	r3, [r3, #0]
200141fe:	000d      	movs	r5, r1
20014200:	0016      	movs	r6, r2
20014202:	2b00      	cmp	r3, #0
20014204:	d101      	bne.n	2001420a <lld_scan_end_ind_handler_hook+0x16>
20014206:	4b05      	ldr	r3, [pc, #20]	; (2001421c <lld_scan_end_ind_handler_hook+0x28>)
20014208:	4798      	blx	r3
2001420a:	003b      	movs	r3, r7
2001420c:	0032      	movs	r2, r6
2001420e:	0029      	movs	r1, r5
20014210:	0020      	movs	r0, r4
20014212:	4c03      	ldr	r4, [pc, #12]	; (20014220 <lld_scan_end_ind_handler_hook+0x2c>)
20014214:	47a0      	blx	r4
20014216:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20014218:	20000e28 	.word	0x20000e28
2001421c:	0002d6f1 	.word	0x0002d6f1
20014220:	0000c5c1 	.word	0x0000c5c1

20014224 <user_rv_appm_init.2>:
20014224:	10002e2d 00000000                       -.......

2001422c <atm_pm_prevent_hibernation>:
2001422c:	b510      	push	{r4, lr}
2001422e:	0003      	movs	r3, r0
20014230:	480b      	ldr	r0, [pc, #44]	; (20014260 <atm_pm_prevent_hibernation+0x34>)
20014232:	6884      	ldr	r4, [r0, #8]
20014234:	6840      	ldr	r0, [r0, #4]
20014236:	4304      	orrs	r4, r0
20014238:	2001      	movs	r0, #1
2001423a:	2c00      	cmp	r4, #0
2001423c:	d002      	beq.n	20014244 <atm_pm_prevent_hibernation+0x18>
2001423e:	7018      	strb	r0, [r3, #0]
20014240:	2000      	movs	r0, #0
20014242:	bd10      	pop	{r4, pc}
20014244:	2a00      	cmp	r2, #0
20014246:	d1fc      	bne.n	20014242 <atm_pm_prevent_hibernation+0x16>
20014248:	4b06      	ldr	r3, [pc, #24]	; (20014264 <atm_pm_prevent_hibernation+0x38>)
2001424a:	681b      	ldr	r3, [r3, #0]
2001424c:	2b00      	cmp	r3, #0
2001424e:	d0f8      	beq.n	20014242 <atm_pm_prevent_hibernation+0x16>
20014250:	680a      	ldr	r2, [r1, #0]
20014252:	2a00      	cmp	r2, #0
20014254:	d001      	beq.n	2001425a <atm_pm_prevent_hibernation+0x2e>
20014256:	4293      	cmp	r3, r2
20014258:	daf3      	bge.n	20014242 <atm_pm_prevent_hibernation+0x16>
2001425a:	2001      	movs	r0, #1
2001425c:	600b      	str	r3, [r1, #0]
2001425e:	e7f0      	b.n	20014242 <atm_pm_prevent_hibernation+0x16>
20014260:	20014f14 	.word	0x20014f14
20014264:	20014f10 	.word	0x20014f10

20014268 <atm_pm_prevent_retention>:
20014268:	4a04      	ldr	r2, [pc, #16]	; (2001427c <atm_pm_prevent_retention+0x14>)
2001426a:	0003      	movs	r3, r0
2001426c:	6852      	ldr	r2, [r2, #4]
2001426e:	2001      	movs	r0, #1
20014270:	2a00      	cmp	r2, #0
20014272:	d001      	beq.n	20014278 <atm_pm_prevent_retention+0x10>
20014274:	7018      	strb	r0, [r3, #0]
20014276:	2000      	movs	r0, #0
20014278:	4770      	bx	lr
2001427a:	46c0      	nop			; (mov r8, r8)
2001427c:	20014f14 	.word	0x20014f14

20014280 <user_rv_plf_prevent_hibernation.2>:
20014280:	2001422d 00000000                       -B. ....

20014288 <user_rv_plf_prevent_retention.1>:
20014288:	20014269 00000000                       iB. ....

20014290 <intr_comb_hdlr>:
20014290:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20014292:	4d0d      	ldr	r5, [pc, #52]	; (200142c8 <intr_comb_hdlr+0x38>)
20014294:	4b0d      	ldr	r3, [pc, #52]	; (200142cc <intr_comb_hdlr+0x3c>)
20014296:	002f      	movs	r7, r5
20014298:	681c      	ldr	r4, [r3, #0]
2001429a:	4e0d      	ldr	r6, [pc, #52]	; (200142d0 <intr_comb_hdlr+0x40>)
2001429c:	4004      	ands	r4, r0
2001429e:	3714      	adds	r7, #20
200142a0:	2c00      	cmp	r4, #0
200142a2:	d001      	beq.n	200142a8 <intr_comb_hdlr+0x18>
200142a4:	42bd      	cmp	r5, r7
200142a6:	d100      	bne.n	200142aa <intr_comb_hdlr+0x1a>
200142a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200142aa:	682b      	ldr	r3, [r5, #0]
200142ac:	0018      	movs	r0, r3
200142ae:	4020      	ands	r0, r4
200142b0:	4223      	tst	r3, r4
200142b2:	d005      	beq.n	200142c0 <intr_comb_hdlr+0x30>
200142b4:	6833      	ldr	r3, [r6, #0]
200142b6:	2b00      	cmp	r3, #0
200142b8:	d000      	beq.n	200142bc <intr_comb_hdlr+0x2c>
200142ba:	4798      	blx	r3
200142bc:	682b      	ldr	r3, [r5, #0]
200142be:	439c      	bics	r4, r3
200142c0:	3504      	adds	r5, #4
200142c2:	3604      	adds	r6, #4
200142c4:	e7ec      	b.n	200142a0 <intr_comb_hdlr+0x10>
200142c6:	46c0      	nop			; (mov r8, r8)
200142c8:	20014f38 	.word	0x20014f38
200142cc:	20014f20 	.word	0x20014f20
200142d0:	20014f24 	.word	0x20014f24

200142d4 <PORT0_COMB_Handler>:
200142d4:	b510      	push	{r4, lr}
200142d6:	4b02      	ldr	r3, [pc, #8]	; (200142e0 <PORT0_COMB_Handler+0xc>)
200142d8:	6c18      	ldr	r0, [r3, #64]	; 0x40
200142da:	4b02      	ldr	r3, [pc, #8]	; (200142e4 <PORT0_COMB_Handler+0x10>)
200142dc:	4798      	blx	r3
200142de:	bd10      	pop	{r4, pc}
200142e0:	40010000 	.word	0x40010000
200142e4:	20014291 	.word	0x20014291

200142e8 <PORT1_COMB_Handler>:
200142e8:	b510      	push	{r4, lr}
200142ea:	4b03      	ldr	r3, [pc, #12]	; (200142f8 <PORT1_COMB_Handler+0x10>)
200142ec:	6c18      	ldr	r0, [r3, #64]	; 0x40
200142ee:	4b03      	ldr	r3, [pc, #12]	; (200142fc <PORT1_COMB_Handler+0x14>)
200142f0:	0400      	lsls	r0, r0, #16
200142f2:	4798      	blx	r3
200142f4:	bd10      	pop	{r4, pc}
200142f6:	46c0      	nop			; (mov r8, r8)
200142f8:	40011000 	.word	0x40011000
200142fc:	20014291 	.word	0x20014291

20014300 <user_rv_appm_init.0>:
20014300:	10003129 00000000                       )1......

20014308 <user_rv_appm_init.0>:
20014308:	1000335d 00000000                       ]3......

20014310 <atm_timer_prevent>:
20014310:	4b04      	ldr	r3, [pc, #16]	; (20014324 <atm_timer_prevent+0x14>)
20014312:	0001      	movs	r1, r0
20014314:	681a      	ldr	r2, [r3, #0]
20014316:	685b      	ldr	r3, [r3, #4]
20014318:	2001      	movs	r0, #1
2001431a:	431a      	orrs	r2, r3
2001431c:	d001      	beq.n	20014322 <atm_timer_prevent+0x12>
2001431e:	7008      	strb	r0, [r1, #0]
20014320:	2000      	movs	r0, #0
20014322:	4770      	bx	lr
20014324:	20015028 	.word	0x20015028

20014328 <user_rv_plf_prevent_hibernation.6>:
20014328:	20014311 00000000                       .C. ....

20014330 <user_rv_plf_prevent_retention.5>:
20014330:	20014311 00000000                       .C. ....

20014338 <atm_gpio_validate_gpio>:
20014338:	2201      	movs	r2, #1
2001433a:	0011      	movs	r1, r2
2001433c:	4081      	lsls	r1, r0
2001433e:	b510      	push	{r4, lr}
20014340:	4c06      	ldr	r4, [pc, #24]	; (2001435c <atm_gpio_validate_gpio+0x24>)
20014342:	0003      	movs	r3, r0
20014344:	0010      	movs	r0, r2
20014346:	4221      	tst	r1, r4
20014348:	d007      	beq.n	2001435a <atm_gpio_validate_gpio+0x22>
2001434a:	2b1e      	cmp	r3, #30
2001434c:	d805      	bhi.n	2001435a <atm_gpio_validate_gpio+0x22>
2001434e:	4b04      	ldr	r3, [pc, #16]	; (20014360 <atm_gpio_validate_gpio+0x28>)
20014350:	6818      	ldr	r0, [r3, #0]
20014352:	4008      	ands	r0, r1
20014354:	4243      	negs	r3, r0
20014356:	4158      	adcs	r0, r3
20014358:	4090      	lsls	r0, r2
2001435a:	bd10      	pop	{r4, pc}
2001435c:	343d2e00 	.word	0x343d2e00
20014360:	20015030 	.word	0x20015030

20014364 <atm_gpio_clear_int_status>:
20014364:	b510      	push	{r4, lr}
20014366:	4b0b      	ldr	r3, [pc, #44]	; (20014394 <atm_gpio_clear_int_status+0x30>)
20014368:	0004      	movs	r4, r0
2001436a:	4798      	blx	r3
2001436c:	2800      	cmp	r0, #0
2001436e:	d005      	beq.n	2001437c <atm_gpio_clear_int_status+0x18>
20014370:	222c      	movs	r2, #44	; 0x2c
20014372:	4909      	ldr	r1, [pc, #36]	; (20014398 <atm_gpio_clear_int_status+0x34>)
20014374:	4809      	ldr	r0, [pc, #36]	; (2001439c <atm_gpio_clear_int_status+0x38>)
20014376:	4b0a      	ldr	r3, [pc, #40]	; (200143a0 <atm_gpio_clear_int_status+0x3c>)
20014378:	32ff      	adds	r2, #255	; 0xff
2001437a:	4798      	blx	r3
2001437c:	2c0f      	cmp	r4, #15
2001437e:	d906      	bls.n	2001438e <atm_gpio_clear_int_status+0x2a>
20014380:	3c10      	subs	r4, #16
20014382:	4a08      	ldr	r2, [pc, #32]	; (200143a4 <atm_gpio_clear_int_status+0x40>)
20014384:	b2e4      	uxtb	r4, r4
20014386:	2301      	movs	r3, #1
20014388:	40a3      	lsls	r3, r4
2001438a:	6413      	str	r3, [r2, #64]	; 0x40
2001438c:	bd10      	pop	{r4, pc}
2001438e:	4a06      	ldr	r2, [pc, #24]	; (200143a8 <atm_gpio_clear_int_status+0x44>)
20014390:	e7f9      	b.n	20014386 <atm_gpio_clear_int_status+0x22>
20014392:	46c0      	nop			; (mov r8, r8)
20014394:	20014339 	.word	0x20014339
20014398:	1000a212 	.word	0x1000a212
2001439c:	1000a21d 	.word	0x1000a21d
200143a0:	00006609 	.word	0x00006609
200143a4:	40011000 	.word	0x40011000
200143a8:	40010000 	.word	0x40010000

200143ac <atm_gpio_set_int_enable>:
200143ac:	b510      	push	{r4, lr}
200143ae:	4b0b      	ldr	r3, [pc, #44]	; (200143dc <atm_gpio_set_int_enable+0x30>)
200143b0:	0004      	movs	r4, r0
200143b2:	4798      	blx	r3
200143b4:	2800      	cmp	r0, #0
200143b6:	d005      	beq.n	200143c4 <atm_gpio_set_int_enable+0x18>
200143b8:	223a      	movs	r2, #58	; 0x3a
200143ba:	4909      	ldr	r1, [pc, #36]	; (200143e0 <atm_gpio_set_int_enable+0x34>)
200143bc:	4809      	ldr	r0, [pc, #36]	; (200143e4 <atm_gpio_set_int_enable+0x38>)
200143be:	4b0a      	ldr	r3, [pc, #40]	; (200143e8 <atm_gpio_set_int_enable+0x3c>)
200143c0:	32ff      	adds	r2, #255	; 0xff
200143c2:	4798      	blx	r3
200143c4:	2c0f      	cmp	r4, #15
200143c6:	d906      	bls.n	200143d6 <atm_gpio_set_int_enable+0x2a>
200143c8:	3c10      	subs	r4, #16
200143ca:	4a08      	ldr	r2, [pc, #32]	; (200143ec <atm_gpio_set_int_enable+0x40>)
200143cc:	b2e4      	uxtb	r4, r4
200143ce:	2301      	movs	r3, #1
200143d0:	40a3      	lsls	r3, r4
200143d2:	6293      	str	r3, [r2, #40]	; 0x28
200143d4:	bd10      	pop	{r4, pc}
200143d6:	4a06      	ldr	r2, [pc, #24]	; (200143f0 <atm_gpio_set_int_enable+0x44>)
200143d8:	e7f9      	b.n	200143ce <atm_gpio_set_int_enable+0x22>
200143da:	46c0      	nop			; (mov r8, r8)
200143dc:	20014339 	.word	0x20014339
200143e0:	1000a212 	.word	0x1000a212
200143e4:	1000a21d 	.word	0x1000a21d
200143e8:	00006609 	.word	0x00006609
200143ec:	40011000 	.word	0x40011000
200143f0:	40010000 	.word	0x40010000

200143f4 <atm_gpio_set_int_disable>:
200143f4:	b510      	push	{r4, lr}
200143f6:	4b0b      	ldr	r3, [pc, #44]	; (20014424 <atm_gpio_set_int_disable+0x30>)
200143f8:	0004      	movs	r4, r0
200143fa:	4798      	blx	r3
200143fc:	2800      	cmp	r0, #0
200143fe:	d005      	beq.n	2001440c <atm_gpio_set_int_disable+0x18>
20014400:	2248      	movs	r2, #72	; 0x48
20014402:	4909      	ldr	r1, [pc, #36]	; (20014428 <atm_gpio_set_int_disable+0x34>)
20014404:	4809      	ldr	r0, [pc, #36]	; (2001442c <atm_gpio_set_int_disable+0x38>)
20014406:	4b0a      	ldr	r3, [pc, #40]	; (20014430 <atm_gpio_set_int_disable+0x3c>)
20014408:	32ff      	adds	r2, #255	; 0xff
2001440a:	4798      	blx	r3
2001440c:	2c0f      	cmp	r4, #15
2001440e:	d906      	bls.n	2001441e <atm_gpio_set_int_disable+0x2a>
20014410:	3c10      	subs	r4, #16
20014412:	4a08      	ldr	r2, [pc, #32]	; (20014434 <atm_gpio_set_int_disable+0x40>)
20014414:	b2e4      	uxtb	r4, r4
20014416:	2301      	movs	r3, #1
20014418:	40a3      	lsls	r3, r4
2001441a:	62d3      	str	r3, [r2, #44]	; 0x2c
2001441c:	bd10      	pop	{r4, pc}
2001441e:	4a06      	ldr	r2, [pc, #24]	; (20014438 <atm_gpio_set_int_disable+0x44>)
20014420:	e7f9      	b.n	20014416 <atm_gpio_set_int_disable+0x22>
20014422:	46c0      	nop			; (mov r8, r8)
20014424:	20014339 	.word	0x20014339
20014428:	1000a212 	.word	0x1000a212
2001442c:	1000a21d 	.word	0x1000a21d
20014430:	00006609 	.word	0x00006609
20014434:	40011000 	.word	0x40011000
20014438:	40010000 	.word	0x40010000

2001443c <user_rv_prf_itf_get.0>:
2001443c:	10003709 00000000                       .7......

20014444 <hw_cfg_max_interference_perf>:
20014444:	b570      	push	{r4, r5, r6, lr}
20014446:	2501      	movs	r5, #1
20014448:	4a14      	ldr	r2, [pc, #80]	; (2001449c <hw_cfg_max_interference_perf+0x58>)
2001444a:	4815      	ldr	r0, [pc, #84]	; (200144a0 <hw_cfg_max_interference_perf+0x5c>)
2001444c:	6814      	ldr	r4, [r2, #0]
2001444e:	6015      	str	r5, [r2, #0]
20014450:	7801      	ldrb	r1, [r0, #0]
20014452:	4b14      	ldr	r3, [pc, #80]	; (200144a4 <hw_cfg_max_interference_perf+0x60>)
20014454:	2900      	cmp	r1, #0
20014456:	d10a      	bne.n	2001446e <hw_cfg_max_interference_perf+0x2a>
20014458:	6ed9      	ldr	r1, [r3, #108]	; 0x6c
2001445a:	4e13      	ldr	r6, [pc, #76]	; (200144a8 <hw_cfg_max_interference_perf+0x64>)
2001445c:	400e      	ands	r6, r1
2001445e:	4913      	ldr	r1, [pc, #76]	; (200144ac <hw_cfg_max_interference_perf+0x68>)
20014460:	4331      	orrs	r1, r6
20014462:	66d9      	str	r1, [r3, #108]	; 0x6c
20014464:	6b19      	ldr	r1, [r3, #48]	; 0x30
20014466:	4e12      	ldr	r6, [pc, #72]	; (200144b0 <hw_cfg_max_interference_perf+0x6c>)
20014468:	4031      	ands	r1, r6
2001446a:	6319      	str	r1, [r3, #48]	; 0x30
2001446c:	7005      	strb	r5, [r0, #0]
2001446e:	6c19      	ldr	r1, [r3, #64]	; 0x40
20014470:	4810      	ldr	r0, [pc, #64]	; (200144b4 <hw_cfg_max_interference_perf+0x70>)
20014472:	4008      	ands	r0, r1
20014474:	21c0      	movs	r1, #192	; 0xc0
20014476:	0089      	lsls	r1, r1, #2
20014478:	4301      	orrs	r1, r0
2001447a:	207f      	movs	r0, #127	; 0x7f
2001447c:	6419      	str	r1, [r3, #64]	; 0x40
2001447e:	69d9      	ldr	r1, [r3, #28]
20014480:	4381      	bics	r1, r0
20014482:	0008      	movs	r0, r1
20014484:	2162      	movs	r1, #98	; 0x62
20014486:	4301      	orrs	r1, r0
20014488:	207c      	movs	r0, #124	; 0x7c
2001448a:	61d9      	str	r1, [r3, #28]
2001448c:	6a19      	ldr	r1, [r3, #32]
2001448e:	4381      	bics	r1, r0
20014490:	0008      	movs	r0, r1
20014492:	2130      	movs	r1, #48	; 0x30
20014494:	4301      	orrs	r1, r0
20014496:	6219      	str	r1, [r3, #32]
20014498:	6014      	str	r4, [r2, #0]
2001449a:	bd70      	pop	{r4, r5, r6, pc}
2001449c:	50003018 	.word	0x50003018
200144a0:	2001503c 	.word	0x2001503c
200144a4:	50006000 	.word	0x50006000
200144a8:	00fffc3f 	.word	0x00fffc3f
200144ac:	320001c0 	.word	0x320001c0
200144b0:	dfffffff 	.word	0xdfffffff
200144b4:	fffffc1f 	.word	0xfffffc1f

200144b8 <hw_cfg_max_range_perf>:
200144b8:	2301      	movs	r3, #1
200144ba:	b510      	push	{r4, lr}
200144bc:	4a0d      	ldr	r2, [pc, #52]	; (200144f4 <hw_cfg_max_range_perf+0x3c>)
200144be:	480e      	ldr	r0, [pc, #56]	; (200144f8 <hw_cfg_max_range_perf+0x40>)
200144c0:	6814      	ldr	r4, [r2, #0]
200144c2:	6013      	str	r3, [r2, #0]
200144c4:	4b0d      	ldr	r3, [pc, #52]	; (200144fc <hw_cfg_max_range_perf+0x44>)
200144c6:	6c19      	ldr	r1, [r3, #64]	; 0x40
200144c8:	4008      	ands	r0, r1
200144ca:	21c8      	movs	r1, #200	; 0xc8
200144cc:	0089      	lsls	r1, r1, #2
200144ce:	4301      	orrs	r1, r0
200144d0:	207f      	movs	r0, #127	; 0x7f
200144d2:	6419      	str	r1, [r3, #64]	; 0x40
200144d4:	69d9      	ldr	r1, [r3, #28]
200144d6:	4381      	bics	r1, r0
200144d8:	0008      	movs	r0, r1
200144da:	2168      	movs	r1, #104	; 0x68
200144dc:	4301      	orrs	r1, r0
200144de:	207c      	movs	r0, #124	; 0x7c
200144e0:	61d9      	str	r1, [r3, #28]
200144e2:	6a19      	ldr	r1, [r3, #32]
200144e4:	4381      	bics	r1, r0
200144e6:	0008      	movs	r0, r1
200144e8:	2118      	movs	r1, #24
200144ea:	4301      	orrs	r1, r0
200144ec:	6219      	str	r1, [r3, #32]
200144ee:	6014      	str	r4, [r2, #0]
200144f0:	bd10      	pop	{r4, pc}
200144f2:	46c0      	nop			; (mov r8, r8)
200144f4:	50003018 	.word	0x50003018
200144f8:	fffffc1f 	.word	0xfffffc1f
200144fc:	50006000 	.word	0x50006000

20014500 <NMI_Handler>:
20014500:	b510      	push	{r4, lr}
20014502:	4b0b      	ldr	r3, [pc, #44]	; (20014530 <NMI_Handler+0x30>)
20014504:	681a      	ldr	r2, [r3, #0]
20014506:	1c51      	adds	r1, r2, #1
20014508:	6019      	str	r1, [r3, #0]
2001450a:	2a00      	cmp	r2, #0
2001450c:	d108      	bne.n	20014520 <NMI_Handler+0x20>
2001450e:	21c0      	movs	r1, #192	; 0xc0
20014510:	4b08      	ldr	r3, [pc, #32]	; (20014534 <NMI_Handler+0x34>)
20014512:	4809      	ldr	r0, [pc, #36]	; (20014538 <NMI_Handler+0x38>)
20014514:	0109      	lsls	r1, r1, #4
20014516:	5058      	str	r0, [r3, r1]
20014518:	2001      	movs	r0, #1
2001451a:	60d8      	str	r0, [r3, #12]
2001451c:	505a      	str	r2, [r3, r1]
2001451e:	bd10      	pop	{r4, pc}
20014520:	b672      	cpsid	i
20014522:	4b06      	ldr	r3, [pc, #24]	; (2001453c <NMI_Handler+0x3c>)
20014524:	2100      	movs	r1, #0
20014526:	6818      	ldr	r0, [r3, #0]
20014528:	4b05      	ldr	r3, [pc, #20]	; (20014540 <NMI_Handler+0x40>)
2001452a:	4798      	blx	r3
2001452c:	e7fe      	b.n	2001452c <NMI_Handler+0x2c>
2001452e:	46c0      	nop			; (mov r8, r8)
20014530:	20000bf8 	.word	0x20000bf8
20014534:	40008000 	.word	0x40008000
20014538:	1acce551 	.word	0x1acce551
2001453c:	20001280 	.word	0x20001280
20014540:	0000672d 	.word	0x0000672d

20014544 <ext_flash_write_page>:
20014544:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20014546:	0004      	movs	r4, r0
20014548:	9100      	str	r1, [sp, #0]
2001454a:	9201      	str	r2, [sp, #4]
2001454c:	f3ef 8c10 	mrs	ip, PRIMASK
20014550:	b672      	cpsid	i
20014552:	2301      	movs	r3, #1
20014554:	4a75      	ldr	r2, [pc, #468]	; (2001472c <ext_flash_write_page+0x1e8>)
20014556:	2580      	movs	r5, #128	; 0x80
20014558:	6013      	str	r3, [r2, #0]
2001455a:	2280      	movs	r2, #128	; 0x80
2001455c:	4b74      	ldr	r3, [pc, #464]	; (20014730 <ext_flash_write_page+0x1ec>)
2001455e:	0492      	lsls	r2, r2, #18
20014560:	69d8      	ldr	r0, [r3, #28]
20014562:	2680      	movs	r6, #128	; 0x80
20014564:	0200      	lsls	r0, r0, #8
20014566:	0a00      	lsrs	r0, r0, #8
20014568:	601a      	str	r2, [r3, #0]
2001456a:	2280      	movs	r2, #128	; 0x80
2001456c:	4060      	eors	r0, r4
2001456e:	2106      	movs	r1, #6
20014570:	2408      	movs	r4, #8
20014572:	0092      	lsls	r2, r2, #2
20014574:	046d      	lsls	r5, r5, #17
20014576:	0076      	lsls	r6, r6, #1
20014578:	601a      	str	r2, [r3, #0]
2001457a:	0049      	lsls	r1, r1, #1
2001457c:	432a      	orrs	r2, r5
2001457e:	3c01      	subs	r4, #1
20014580:	601a      	str	r2, [r3, #0]
20014582:	b2c9      	uxtb	r1, r1
20014584:	2c00      	cmp	r4, #0
20014586:	d000      	beq.n	2001458a <ext_flash_write_page+0x46>
20014588:	e0ba      	b.n	20014700 <ext_flash_write_page+0x1bc>
2001458a:	2280      	movs	r2, #128	; 0x80
2001458c:	0492      	lsls	r2, r2, #18
2001458e:	601c      	str	r4, [r3, #0]
20014590:	2580      	movs	r5, #128	; 0x80
20014592:	601a      	str	r2, [r3, #0]
20014594:	2680      	movs	r6, #128	; 0x80
20014596:	601a      	str	r2, [r3, #0]
20014598:	2280      	movs	r2, #128	; 0x80
2001459a:	2132      	movs	r1, #50	; 0x32
2001459c:	3408      	adds	r4, #8
2001459e:	0092      	lsls	r2, r2, #2
200145a0:	046d      	lsls	r5, r5, #17
200145a2:	0076      	lsls	r6, r6, #1
200145a4:	601a      	str	r2, [r3, #0]
200145a6:	0049      	lsls	r1, r1, #1
200145a8:	432a      	orrs	r2, r5
200145aa:	3c01      	subs	r4, #1
200145ac:	601a      	str	r2, [r3, #0]
200145ae:	b2c9      	uxtb	r1, r1
200145b0:	2c00      	cmp	r4, #0
200145b2:	d000      	beq.n	200145b6 <ext_flash_write_page+0x72>
200145b4:	e0ab      	b.n	2001470e <ext_flash_write_page+0x1ca>
200145b6:	2680      	movs	r6, #128	; 0x80
200145b8:	2580      	movs	r5, #128	; 0x80
200145ba:	0c01      	lsrs	r1, r0, #16
200145bc:	b2c9      	uxtb	r1, r1
200145be:	3408      	adds	r4, #8
200145c0:	0076      	lsls	r6, r6, #1
200145c2:	046d      	lsls	r5, r5, #17
200145c4:	2780      	movs	r7, #128	; 0x80
200145c6:	b24a      	sxtb	r2, r1
200145c8:	17d2      	asrs	r2, r2, #31
200145ca:	4032      	ands	r2, r6
200145cc:	00bf      	lsls	r7, r7, #2
200145ce:	19d2      	adds	r2, r2, r7
200145d0:	601a      	str	r2, [r3, #0]
200145d2:	0049      	lsls	r1, r1, #1
200145d4:	432a      	orrs	r2, r5
200145d6:	3c01      	subs	r4, #1
200145d8:	601a      	str	r2, [r3, #0]
200145da:	b2c9      	uxtb	r1, r1
200145dc:	2c00      	cmp	r4, #0
200145de:	d1f1      	bne.n	200145c4 <ext_flash_write_page+0x80>
200145e0:	2680      	movs	r6, #128	; 0x80
200145e2:	2580      	movs	r5, #128	; 0x80
200145e4:	0a01      	lsrs	r1, r0, #8
200145e6:	b2c9      	uxtb	r1, r1
200145e8:	3408      	adds	r4, #8
200145ea:	0076      	lsls	r6, r6, #1
200145ec:	046d      	lsls	r5, r5, #17
200145ee:	2780      	movs	r7, #128	; 0x80
200145f0:	b24a      	sxtb	r2, r1
200145f2:	17d2      	asrs	r2, r2, #31
200145f4:	4032      	ands	r2, r6
200145f6:	00bf      	lsls	r7, r7, #2
200145f8:	19d2      	adds	r2, r2, r7
200145fa:	601a      	str	r2, [r3, #0]
200145fc:	0049      	lsls	r1, r1, #1
200145fe:	432a      	orrs	r2, r5
20014600:	3c01      	subs	r4, #1
20014602:	601a      	str	r2, [r3, #0]
20014604:	b2c9      	uxtb	r1, r1
20014606:	2c00      	cmp	r4, #0
20014608:	d1f1      	bne.n	200145ee <ext_flash_write_page+0xaa>
2001460a:	2580      	movs	r5, #128	; 0x80
2001460c:	2480      	movs	r4, #128	; 0x80
2001460e:	2108      	movs	r1, #8
20014610:	b2c0      	uxtb	r0, r0
20014612:	006d      	lsls	r5, r5, #1
20014614:	0464      	lsls	r4, r4, #17
20014616:	2680      	movs	r6, #128	; 0x80
20014618:	b242      	sxtb	r2, r0
2001461a:	17d2      	asrs	r2, r2, #31
2001461c:	402a      	ands	r2, r5
2001461e:	00b6      	lsls	r6, r6, #2
20014620:	1992      	adds	r2, r2, r6
20014622:	601a      	str	r2, [r3, #0]
20014624:	0040      	lsls	r0, r0, #1
20014626:	4322      	orrs	r2, r4
20014628:	3901      	subs	r1, #1
2001462a:	601a      	str	r2, [r3, #0]
2001462c:	b2c0      	uxtb	r0, r0
2001462e:	2900      	cmp	r1, #0
20014630:	d1f1      	bne.n	20014616 <ext_flash_write_page+0xd2>
20014632:	9a00      	ldr	r2, [sp, #0]
20014634:	9801      	ldr	r0, [sp, #4]
20014636:	1882      	adds	r2, r0, r2
20014638:	9200      	str	r2, [sp, #0]
2001463a:	2510      	movs	r5, #16
2001463c:	2680      	movs	r6, #128	; 0x80
2001463e:	7802      	ldrb	r2, [r0, #0]
20014640:	0076      	lsls	r6, r6, #1
20014642:	0914      	lsrs	r4, r2, #4
20014644:	00e1      	lsls	r1, r4, #3
20014646:	4029      	ands	r1, r5
20014648:	01a5      	lsls	r5, r4, #6
2001464a:	4035      	ands	r5, r6
2001464c:	430d      	orrs	r5, r1
2001464e:	2780      	movs	r7, #128	; 0x80
20014650:	2101      	movs	r1, #1
20014652:	017f      	lsls	r7, r7, #5
20014654:	4021      	ands	r1, r4
20014656:	0264      	lsls	r4, r4, #9
20014658:	403c      	ands	r4, r7
2001465a:	4329      	orrs	r1, r5
2001465c:	4321      	orrs	r1, r4
2001465e:	4d35      	ldr	r5, [pc, #212]	; (20014734 <ext_flash_write_page+0x1f0>)
20014660:	4c35      	ldr	r4, [pc, #212]	; (20014738 <ext_flash_write_page+0x1f4>)
20014662:	0209      	lsls	r1, r1, #8
20014664:	430c      	orrs	r4, r1
20014666:	4329      	orrs	r1, r5
20014668:	601c      	str	r4, [r3, #0]
2001466a:	6019      	str	r1, [r3, #0]
2001466c:	210f      	movs	r1, #15
2001466e:	2410      	movs	r4, #16
20014670:	4011      	ands	r1, r2
20014672:	00cf      	lsls	r7, r1, #3
20014674:	4027      	ands	r7, r4
20014676:	018c      	lsls	r4, r1, #6
20014678:	4034      	ands	r4, r6
2001467a:	433c      	orrs	r4, r7
2001467c:	2780      	movs	r7, #128	; 0x80
2001467e:	3eff      	subs	r6, #255	; 0xff
20014680:	4032      	ands	r2, r6
20014682:	0249      	lsls	r1, r1, #9
20014684:	017f      	lsls	r7, r7, #5
20014686:	4314      	orrs	r4, r2
20014688:	4039      	ands	r1, r7
2001468a:	4e2b      	ldr	r6, [pc, #172]	; (20014738 <ext_flash_write_page+0x1f4>)
2001468c:	430c      	orrs	r4, r1
2001468e:	0224      	lsls	r4, r4, #8
20014690:	4326      	orrs	r6, r4
20014692:	432c      	orrs	r4, r5
20014694:	601e      	str	r6, [r3, #0]
20014696:	601c      	str	r4, [r3, #0]
20014698:	9a00      	ldr	r2, [sp, #0]
2001469a:	3001      	adds	r0, #1
2001469c:	4282      	cmp	r2, r0
2001469e:	d1cc      	bne.n	2001463a <ext_flash_write_page+0xf6>
200146a0:	2080      	movs	r0, #128	; 0x80
200146a2:	2200      	movs	r2, #0
200146a4:	2580      	movs	r5, #128	; 0x80
200146a6:	0480      	lsls	r0, r0, #18
200146a8:	601a      	str	r2, [r3, #0]
200146aa:	046d      	lsls	r5, r5, #17
200146ac:	6018      	str	r0, [r3, #0]
200146ae:	2180      	movs	r1, #128	; 0x80
200146b0:	2208      	movs	r2, #8
200146b2:	2405      	movs	r4, #5
200146b4:	6018      	str	r0, [r3, #0]
200146b6:	0089      	lsls	r1, r1, #2
200146b8:	6019      	str	r1, [r3, #0]
200146ba:	0064      	lsls	r4, r4, #1
200146bc:	4329      	orrs	r1, r5
200146be:	3a01      	subs	r2, #1
200146c0:	6019      	str	r1, [r3, #0]
200146c2:	b2e4      	uxtb	r4, r4
200146c4:	2a00      	cmp	r2, #0
200146c6:	d129      	bne.n	2001471c <ext_flash_write_page+0x1d8>
200146c8:	2108      	movs	r1, #8
200146ca:	2480      	movs	r4, #128	; 0x80
200146cc:	2702      	movs	r7, #2
200146ce:	2600      	movs	r6, #0
200146d0:	601e      	str	r6, [r3, #0]
200146d2:	4e1a      	ldr	r6, [pc, #104]	; (2001473c <ext_flash_write_page+0x1f8>)
200146d4:	601d      	str	r5, [r3, #0]
200146d6:	601e      	str	r6, [r3, #0]
200146d8:	685e      	ldr	r6, [r3, #4]
200146da:	423e      	tst	r6, r7
200146dc:	d000      	beq.n	200146e0 <ext_flash_write_page+0x19c>
200146de:	4322      	orrs	r2, r4
200146e0:	3901      	subs	r1, #1
200146e2:	0864      	lsrs	r4, r4, #1
200146e4:	2900      	cmp	r1, #0
200146e6:	d1f2      	bne.n	200146ce <ext_flash_write_page+0x18a>
200146e8:	6019      	str	r1, [r3, #0]
200146ea:	6018      	str	r0, [r3, #0]
200146ec:	07d2      	lsls	r2, r2, #31
200146ee:	d4de      	bmi.n	200146ae <ext_flash_write_page+0x16a>
200146f0:	2290      	movs	r2, #144	; 0x90
200146f2:	0552      	lsls	r2, r2, #21
200146f4:	601a      	str	r2, [r3, #0]
200146f6:	4b0d      	ldr	r3, [pc, #52]	; (2001472c <ext_flash_write_page+0x1e8>)
200146f8:	6019      	str	r1, [r3, #0]
200146fa:	f38c 8810 	msr	PRIMASK, ip
200146fe:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
20014700:	2780      	movs	r7, #128	; 0x80
20014702:	b24a      	sxtb	r2, r1
20014704:	17d2      	asrs	r2, r2, #31
20014706:	4032      	ands	r2, r6
20014708:	00bf      	lsls	r7, r7, #2
2001470a:	19d2      	adds	r2, r2, r7
2001470c:	e734      	b.n	20014578 <ext_flash_write_page+0x34>
2001470e:	2780      	movs	r7, #128	; 0x80
20014710:	b24a      	sxtb	r2, r1
20014712:	17d2      	asrs	r2, r2, #31
20014714:	4032      	ands	r2, r6
20014716:	00bf      	lsls	r7, r7, #2
20014718:	19d2      	adds	r2, r2, r7
2001471a:	e743      	b.n	200145a4 <ext_flash_write_page+0x60>
2001471c:	2680      	movs	r6, #128	; 0x80
2001471e:	b261      	sxtb	r1, r4
20014720:	0076      	lsls	r6, r6, #1
20014722:	17c9      	asrs	r1, r1, #31
20014724:	4031      	ands	r1, r6
20014726:	19b6      	adds	r6, r6, r6
20014728:	1989      	adds	r1, r1, r6
2001472a:	e7c5      	b.n	200146b8 <ext_flash_write_page+0x174>
2001472c:	4000303c 	.word	0x4000303c
20014730:	4000f000 	.word	0x4000f000
20014734:	01222200 	.word	0x01222200
20014738:	00222200 	.word	0x00222200
2001473c:	01000002 	.word	0x01000002

20014740 <macronix_exit_deep_power_down>:
20014740:	2301      	movs	r3, #1
20014742:	2280      	movs	r2, #128	; 0x80
20014744:	b5f0      	push	{r4, r5, r6, r7, lr}
20014746:	2680      	movs	r6, #128	; 0x80
20014748:	2580      	movs	r5, #128	; 0x80
2001474a:	2008      	movs	r0, #8
2001474c:	21eb      	movs	r1, #235	; 0xeb
2001474e:	4c20      	ldr	r4, [pc, #128]	; (200147d0 <macronix_exit_deep_power_down+0x90>)
20014750:	0492      	lsls	r2, r2, #18
20014752:	6023      	str	r3, [r4, #0]
20014754:	4b1f      	ldr	r3, [pc, #124]	; (200147d4 <macronix_exit_deep_power_down+0x94>)
20014756:	0076      	lsls	r6, r6, #1
20014758:	601a      	str	r2, [r3, #0]
2001475a:	046d      	lsls	r5, r5, #17
2001475c:	2780      	movs	r7, #128	; 0x80
2001475e:	b24a      	sxtb	r2, r1
20014760:	17d2      	asrs	r2, r2, #31
20014762:	4032      	ands	r2, r6
20014764:	00bf      	lsls	r7, r7, #2
20014766:	19d2      	adds	r2, r2, r7
20014768:	601a      	str	r2, [r3, #0]
2001476a:	0049      	lsls	r1, r1, #1
2001476c:	432a      	orrs	r2, r5
2001476e:	3801      	subs	r0, #1
20014770:	601a      	str	r2, [r3, #0]
20014772:	b2c9      	uxtb	r1, r1
20014774:	2800      	cmp	r0, #0
20014776:	d1f1      	bne.n	2001475c <macronix_exit_deep_power_down+0x1c>
20014778:	2206      	movs	r2, #6
2001477a:	4817      	ldr	r0, [pc, #92]	; (200147d8 <macronix_exit_deep_power_down+0x98>)
2001477c:	4917      	ldr	r1, [pc, #92]	; (200147dc <macronix_exit_deep_power_down+0x9c>)
2001477e:	3a01      	subs	r2, #1
20014780:	6018      	str	r0, [r3, #0]
20014782:	6019      	str	r1, [r3, #0]
20014784:	2a00      	cmp	r2, #0
20014786:	d1fa      	bne.n	2001477e <macronix_exit_deep_power_down+0x3e>
20014788:	4915      	ldr	r1, [pc, #84]	; (200147e0 <macronix_exit_deep_power_down+0xa0>)
2001478a:	4816      	ldr	r0, [pc, #88]	; (200147e4 <macronix_exit_deep_power_down+0xa4>)
2001478c:	6019      	str	r1, [r3, #0]
2001478e:	4916      	ldr	r1, [pc, #88]	; (200147e8 <macronix_exit_deep_power_down+0xa8>)
20014790:	6019      	str	r1, [r3, #0]
20014792:	4916      	ldr	r1, [pc, #88]	; (200147ec <macronix_exit_deep_power_down+0xac>)
20014794:	6019      	str	r1, [r3, #0]
20014796:	4916      	ldr	r1, [pc, #88]	; (200147f0 <macronix_exit_deep_power_down+0xb0>)
20014798:	6019      	str	r1, [r3, #0]
2001479a:	2180      	movs	r1, #128	; 0x80
2001479c:	0449      	lsls	r1, r1, #17
2001479e:	601a      	str	r2, [r3, #0]
200147a0:	6019      	str	r1, [r3, #0]
200147a2:	601a      	str	r2, [r3, #0]
200147a4:	6019      	str	r1, [r3, #0]
200147a6:	601a      	str	r2, [r3, #0]
200147a8:	6019      	str	r1, [r3, #0]
200147aa:	601a      	str	r2, [r3, #0]
200147ac:	6019      	str	r1, [r3, #0]
200147ae:	601a      	str	r2, [r3, #0]
200147b0:	6019      	str	r1, [r3, #0]
200147b2:	6018      	str	r0, [r3, #0]
200147b4:	601a      	str	r2, [r3, #0]
200147b6:	6019      	str	r1, [r3, #0]
200147b8:	490e      	ldr	r1, [pc, #56]	; (200147f4 <macronix_exit_deep_power_down+0xb4>)
200147ba:	2001      	movs	r0, #1
200147bc:	6019      	str	r1, [r3, #0]
200147be:	2180      	movs	r1, #128	; 0x80
200147c0:	0489      	lsls	r1, r1, #18
200147c2:	601a      	str	r2, [r3, #0]
200147c4:	6019      	str	r1, [r3, #0]
200147c6:	2190      	movs	r1, #144	; 0x90
200147c8:	0549      	lsls	r1, r1, #21
200147ca:	6019      	str	r1, [r3, #0]
200147cc:	6022      	str	r2, [r4, #0]
200147ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
200147d0:	4000303c 	.word	0x4000303c
200147d4:	4000f000 	.word	0x4000f000
200147d8:	00222200 	.word	0x00222200
200147dc:	01222200 	.word	0x01222200
200147e0:	00232300 	.word	0x00232300
200147e4:	010000f0 	.word	0x010000f0
200147e8:	01232300 	.word	0x01232300
200147ec:	00323200 	.word	0x00323200
200147f0:	01323200 	.word	0x01323200
200147f4:	0100000f 	.word	0x0100000f

200147f8 <winbond_deep_power_down>:
200147f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200147fa:	2388      	movs	r3, #136	; 0x88
200147fc:	2401      	movs	r4, #1
200147fe:	4d09      	ldr	r5, [pc, #36]	; (20014824 <winbond_deep_power_down+0x2c>)
20014800:	4e09      	ldr	r6, [pc, #36]	; (20014828 <winbond_deep_power_down+0x30>)
20014802:	4f0a      	ldr	r7, [pc, #40]	; (2001482c <winbond_deep_power_down+0x34>)
20014804:	059b      	lsls	r3, r3, #22
20014806:	602c      	str	r4, [r5, #0]
20014808:	4809      	ldr	r0, [pc, #36]	; (20014830 <winbond_deep_power_down+0x38>)
2001480a:	6033      	str	r3, [r6, #0]
2001480c:	603c      	str	r4, [r7, #0]
2001480e:	4b09      	ldr	r3, [pc, #36]	; (20014834 <winbond_deep_power_down+0x3c>)
20014810:	4798      	blx	r3
20014812:	2302      	movs	r3, #2
20014814:	603b      	str	r3, [r7, #0]
20014816:	2390      	movs	r3, #144	; 0x90
20014818:	055b      	lsls	r3, r3, #21
2001481a:	6033      	str	r3, [r6, #0]
2001481c:	2300      	movs	r3, #0
2001481e:	0020      	movs	r0, r4
20014820:	602b      	str	r3, [r5, #0]
20014822:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20014824:	4000303c 	.word	0x4000303c
20014828:	4000f000 	.word	0x4000f000
2001482c:	4000302c 	.word	0x4000302c
20014830:	0003cd70 	.word	0x0003cd70
20014834:	00007a05 	.word	0x00007a05

20014838 <macronix_deep_power_down>:
20014838:	2188      	movs	r1, #136	; 0x88
2001483a:	b570      	push	{r4, r5, r6, lr}
2001483c:	2401      	movs	r4, #1
2001483e:	4b0a      	ldr	r3, [pc, #40]	; (20014868 <macronix_deep_power_down+0x30>)
20014840:	4a0a      	ldr	r2, [pc, #40]	; (2001486c <macronix_deep_power_down+0x34>)
20014842:	0589      	lsls	r1, r1, #22
20014844:	601c      	str	r4, [r3, #0]
20014846:	6011      	str	r1, [r2, #0]
20014848:	2200      	movs	r2, #0
2001484a:	4e09      	ldr	r6, [pc, #36]	; (20014870 <macronix_deep_power_down+0x38>)
2001484c:	4d09      	ldr	r5, [pc, #36]	; (20014874 <macronix_deep_power_down+0x3c>)
2001484e:	601a      	str	r2, [r3, #0]
20014850:	0030      	movs	r0, r6
20014852:	602c      	str	r4, [r5, #0]
20014854:	4b08      	ldr	r3, [pc, #32]	; (20014878 <macronix_deep_power_down+0x40>)
20014856:	4798      	blx	r3
20014858:	0030      	movs	r0, r6
2001485a:	4b08      	ldr	r3, [pc, #32]	; (2001487c <macronix_deep_power_down+0x44>)
2001485c:	4798      	blx	r3
2001485e:	2302      	movs	r3, #2
20014860:	0020      	movs	r0, r4
20014862:	602b      	str	r3, [r5, #0]
20014864:	bd70      	pop	{r4, r5, r6, pc}
20014866:	46c0      	nop			; (mov r8, r8)
20014868:	4000303c 	.word	0x4000303c
2001486c:	4000f000 	.word	0x4000f000
20014870:	0003cd70 	.word	0x0003cd70
20014874:	4000302c 	.word	0x4000302c
20014878:	00007971 	.word	0x00007971
2001487c:	00007a05 	.word	0x00007a05

20014880 <macronix_rv_plf_back_from_retain_all>:
20014880:	20014741 00000000                       AG. ....

20014888 <macronix_rv_plf_retain_all>:
20014888:	20014839 00000000                       9H. ....

20014890 <winbond_rv_plf_retain_all>:
20014890:	200147f9 00000000                       .G. ....

20014898 <pmu_soc_off>:
20014898:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001489a:	4b17      	ldr	r3, [pc, #92]	; (200148f8 <pmu_soc_off+0x60>)
2001489c:	781b      	ldrb	r3, [r3, #0]
2001489e:	2b00      	cmp	r3, #0
200148a0:	d129      	bne.n	200148f6 <pmu_soc_off+0x5e>
200148a2:	2401      	movs	r4, #1
200148a4:	4b15      	ldr	r3, [pc, #84]	; (200148fc <pmu_soc_off+0x64>)
200148a6:	4d16      	ldr	r5, [pc, #88]	; (20014900 <pmu_soc_off+0x68>)
200148a8:	2218      	movs	r2, #24
200148aa:	2109      	movs	r1, #9
200148ac:	0028      	movs	r0, r5
200148ae:	4f15      	ldr	r7, [pc, #84]	; (20014904 <pmu_soc_off+0x6c>)
200148b0:	601c      	str	r4, [r3, #0]
200148b2:	47b8      	blx	r7
200148b4:	4220      	tst	r0, r4
200148b6:	d118      	bne.n	200148ea <pmu_soc_off+0x52>
200148b8:	2240      	movs	r2, #64	; 0x40
200148ba:	2109      	movs	r1, #9
200148bc:	0028      	movs	r0, r5
200148be:	47b8      	blx	r7
200148c0:	4c11      	ldr	r4, [pc, #68]	; (20014908 <pmu_soc_off+0x70>)
200148c2:	2240      	movs	r2, #64	; 0x40
200148c4:	4004      	ands	r4, r0
200148c6:	0023      	movs	r3, r4
200148c8:	2109      	movs	r1, #9
200148ca:	0028      	movs	r0, r5
200148cc:	4e0f      	ldr	r6, [pc, #60]	; (2001490c <pmu_soc_off+0x74>)
200148ce:	47b0      	blx	r6
200148d0:	2109      	movs	r1, #9
200148d2:	2240      	movs	r2, #64	; 0x40
200148d4:	0028      	movs	r0, r5
200148d6:	47b8      	blx	r7
200148d8:	0001      	movs	r1, r0
200148da:	4284      	cmp	r4, r0
200148dc:	d005      	beq.n	200148ea <pmu_soc_off+0x52>
200148de:	2376      	movs	r3, #118	; 0x76
200148e0:	0020      	movs	r0, r4
200148e2:	4a0b      	ldr	r2, [pc, #44]	; (20014910 <pmu_soc_off+0x78>)
200148e4:	4c0b      	ldr	r4, [pc, #44]	; (20014914 <pmu_soc_off+0x7c>)
200148e6:	33ff      	adds	r3, #255	; 0xff
200148e8:	47a0      	blx	r4
200148ea:	2300      	movs	r3, #0
200148ec:	4a03      	ldr	r2, [pc, #12]	; (200148fc <pmu_soc_off+0x64>)
200148ee:	6013      	str	r3, [r2, #0]
200148f0:	4a01      	ldr	r2, [pc, #4]	; (200148f8 <pmu_soc_off+0x60>)
200148f2:	3301      	adds	r3, #1
200148f4:	7013      	strb	r3, [r2, #0]
200148f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200148f8:	2001505c 	.word	0x2001505c
200148fc:	5000301c 	.word	0x5000301c
20014900:	0003cd78 	.word	0x0003cd78
20014904:	0000777f 	.word	0x0000777f
20014908:	fffff7ff 	.word	0xfffff7ff
2001490c:	0000779f 	.word	0x0000779f
20014910:	1000a511 	.word	0x1000a511
20014914:	00006641 	.word	0x00006641

20014918 <pmu_hibernate>:
20014918:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001491a:	4b22      	ldr	r3, [pc, #136]	; (200149a4 <pmu_hibernate+0x8c>)
2001491c:	0014      	movs	r4, r2
2001491e:	781b      	ldrb	r3, [r3, #0]
20014920:	2b04      	cmp	r3, #4
20014922:	d939      	bls.n	20014998 <pmu_hibernate+0x80>
20014924:	2301      	movs	r3, #1
20014926:	4a20      	ldr	r2, [pc, #128]	; (200149a8 <pmu_hibernate+0x90>)
20014928:	4820      	ldr	r0, [pc, #128]	; (200149ac <pmu_hibernate+0x94>)
2001492a:	6013      	str	r3, [r2, #0]
2001492c:	6806      	ldr	r6, [r0, #0]
2001492e:	2000      	movs	r0, #0
20014930:	401e      	ands	r6, r3
20014932:	4b1f      	ldr	r3, [pc, #124]	; (200149b0 <pmu_hibernate+0x98>)
20014934:	6010      	str	r0, [r2, #0]
20014936:	681b      	ldr	r3, [r3, #0]
20014938:	2b01      	cmp	r3, #1
2001493a:	d103      	bne.n	20014944 <pmu_hibernate+0x2c>
2001493c:	4b1d      	ldr	r3, [pc, #116]	; (200149b4 <pmu_hibernate+0x9c>)
2001493e:	6818      	ldr	r0, [r3, #0]
20014940:	1e43      	subs	r3, r0, #1
20014942:	4198      	sbcs	r0, r3
20014944:	4b1c      	ldr	r3, [pc, #112]	; (200149b8 <pmu_hibernate+0xa0>)
20014946:	0c24      	lsrs	r4, r4, #16
20014948:	681a      	ldr	r2, [r3, #0]
2001494a:	2301      	movs	r3, #1
2001494c:	2c00      	cmp	r4, #0
2001494e:	d107      	bne.n	20014960 <pmu_hibernate+0x48>
20014950:	4c1a      	ldr	r4, [pc, #104]	; (200149bc <pmu_hibernate+0xa4>)
20014952:	6aa4      	ldr	r4, [r4, #40]	; 0x28
20014954:	2c00      	cmp	r4, #0
20014956:	d103      	bne.n	20014960 <pmu_hibernate+0x48>
20014958:	4b19      	ldr	r3, [pc, #100]	; (200149c0 <pmu_hibernate+0xa8>)
2001495a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
2001495c:	1e5c      	subs	r4, r3, #1
2001495e:	41a3      	sbcs	r3, r4
20014960:	2e00      	cmp	r6, #0
20014962:	d000      	beq.n	20014966 <pmu_hibernate+0x4e>
20014964:	2640      	movs	r6, #64	; 0x40
20014966:	3a01      	subs	r2, #1
20014968:	4254      	negs	r4, r2
2001496a:	4162      	adcs	r2, r4
2001496c:	4c15      	ldr	r4, [pc, #84]	; (200149c4 <pmu_hibernate+0xac>)
2001496e:	0140      	lsls	r0, r0, #5
20014970:	7825      	ldrb	r5, [r4, #0]
20014972:	0112      	lsls	r2, r2, #4
20014974:	1e6c      	subs	r4, r5, #1
20014976:	41a5      	sbcs	r5, r4
20014978:	4c13      	ldr	r4, [pc, #76]	; (200149c8 <pmu_hibernate+0xb0>)
2001497a:	00ed      	lsls	r5, r5, #3
2001497c:	7827      	ldrb	r7, [r4, #0]
2001497e:	2f00      	cmp	r7, #0
20014980:	d10c      	bne.n	2001499c <pmu_hibernate+0x84>
20014982:	1e0c      	subs	r4, r1, #0
20014984:	d000      	beq.n	20014988 <pmu_hibernate+0x70>
20014986:	003c      	movs	r4, r7
20014988:	4333      	orrs	r3, r6
2001498a:	4303      	orrs	r3, r0
2001498c:	4313      	orrs	r3, r2
2001498e:	432b      	orrs	r3, r5
20014990:	4323      	orrs	r3, r4
20014992:	d101      	bne.n	20014998 <pmu_hibernate+0x80>
20014994:	4b0d      	ldr	r3, [pc, #52]	; (200149cc <pmu_hibernate+0xb4>)
20014996:	4798      	blx	r3
20014998:	2001      	movs	r0, #1
2001499a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2001499c:	2900      	cmp	r1, #0
2001499e:	d0fb      	beq.n	20014998 <pmu_hibernate+0x80>
200149a0:	2404      	movs	r4, #4
200149a2:	e7f1      	b.n	20014988 <pmu_hibernate+0x70>
200149a4:	20000fde 	.word	0x20000fde
200149a8:	50003020 	.word	0x50003020
200149ac:	500080f8 	.word	0x500080f8
200149b0:	40003028 	.word	0x40003028
200149b4:	4000a0c4 	.word	0x4000a0c4
200149b8:	40003030 	.word	0x40003030
200149bc:	40010000 	.word	0x40010000
200149c0:	40011000 	.word	0x40011000
200149c4:	200012c8 	.word	0x200012c8
200149c8:	200012c9 	.word	0x200012c9
200149cc:	20014899 	.word	0x20014899

200149d0 <user_rv_plf_hibernate.0>:
200149d0:	20014919 00000000                       .I. ....

200149d8 <user_init_check_brwnout>:
200149d8:	b5f0      	push	{r4, r5, r6, r7, lr}
200149da:	b087      	sub	sp, #28
200149dc:	9302      	str	r3, [sp, #8]
200149de:	4b71      	ldr	r3, [pc, #452]	; (20014ba4 <user_init_check_brwnout+0x1cc>)
200149e0:	9004      	str	r0, [sp, #16]
200149e2:	7818      	ldrb	r0, [r3, #0]
200149e4:	9101      	str	r1, [sp, #4]
200149e6:	9205      	str	r2, [sp, #20]
200149e8:	2800      	cmp	r0, #0
200149ea:	d002      	beq.n	200149f2 <user_init_check_brwnout+0x1a>
200149ec:	2001      	movs	r0, #1
200149ee:	b007      	add	sp, #28
200149f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200149f2:	2301      	movs	r3, #1
200149f4:	4c6c      	ldr	r4, [pc, #432]	; (20014ba8 <user_init_check_brwnout+0x1d0>)
200149f6:	4a6d      	ldr	r2, [pc, #436]	; (20014bac <user_init_check_brwnout+0x1d4>)
200149f8:	6023      	str	r3, [r4, #0]
200149fa:	6852      	ldr	r2, [r2, #4]
200149fc:	496c      	ldr	r1, [pc, #432]	; (20014bb0 <user_init_check_brwnout+0x1d8>)
200149fe:	40da      	lsrs	r2, r3
20014a00:	4393      	bics	r3, r2
20014a02:	700b      	strb	r3, [r1, #0]
20014a04:	6020      	str	r0, [r4, #0]
20014a06:	780b      	ldrb	r3, [r1, #0]
20014a08:	2b00      	cmp	r3, #0
20014a0a:	d103      	bne.n	20014a14 <user_init_check_brwnout+0x3c>
20014a0c:	4b69      	ldr	r3, [pc, #420]	; (20014bb4 <user_init_check_brwnout+0x1dc>)
20014a0e:	781b      	ldrb	r3, [r3, #0]
20014a10:	2b00      	cmp	r3, #0
20014a12:	d0eb      	beq.n	200149ec <user_init_check_brwnout+0x14>
20014a14:	4b68      	ldr	r3, [pc, #416]	; (20014bb8 <user_init_check_brwnout+0x1e0>)
20014a16:	4869      	ldr	r0, [pc, #420]	; (20014bbc <user_init_check_brwnout+0x1e4>)
20014a18:	4798      	blx	r3
20014a1a:	f3ef 8310 	mrs	r3, PRIMASK
20014a1e:	9303      	str	r3, [sp, #12]
20014a20:	b672      	cpsid	i
20014a22:	2301      	movs	r3, #1
20014a24:	4a66      	ldr	r2, [pc, #408]	; (20014bc0 <user_init_check_brwnout+0x1e8>)
20014a26:	4d67      	ldr	r5, [pc, #412]	; (20014bc4 <user_init_check_brwnout+0x1ec>)
20014a28:	6013      	str	r3, [r2, #0]
20014a2a:	2109      	movs	r1, #9
20014a2c:	2240      	movs	r2, #64	; 0x40
20014a2e:	0028      	movs	r0, r5
20014a30:	2480      	movs	r4, #128	; 0x80
20014a32:	4e65      	ldr	r6, [pc, #404]	; (20014bc8 <user_init_check_brwnout+0x1f0>)
20014a34:	47b0      	blx	r6
20014a36:	01e4      	lsls	r4, r4, #7
20014a38:	4220      	tst	r0, r4
20014a3a:	d112      	bne.n	20014a62 <user_init_check_brwnout+0x8a>
20014a3c:	4304      	orrs	r4, r0
20014a3e:	0023      	movs	r3, r4
20014a40:	2240      	movs	r2, #64	; 0x40
20014a42:	2109      	movs	r1, #9
20014a44:	0028      	movs	r0, r5
20014a46:	4f61      	ldr	r7, [pc, #388]	; (20014bcc <user_init_check_brwnout+0x1f4>)
20014a48:	47b8      	blx	r7
20014a4a:	2109      	movs	r1, #9
20014a4c:	2240      	movs	r2, #64	; 0x40
20014a4e:	0028      	movs	r0, r5
20014a50:	47b0      	blx	r6
20014a52:	0001      	movs	r1, r0
20014a54:	4284      	cmp	r4, r0
20014a56:	d004      	beq.n	20014a62 <user_init_check_brwnout+0x8a>
20014a58:	0020      	movs	r0, r4
20014a5a:	2342      	movs	r3, #66	; 0x42
20014a5c:	4a5c      	ldr	r2, [pc, #368]	; (20014bd0 <user_init_check_brwnout+0x1f8>)
20014a5e:	4c5d      	ldr	r4, [pc, #372]	; (20014bd4 <user_init_check_brwnout+0x1fc>)
20014a60:	47a0      	blx	r4
20014a62:	4d58      	ldr	r5, [pc, #352]	; (20014bc4 <user_init_check_brwnout+0x1ec>)
20014a64:	2218      	movs	r2, #24
20014a66:	2109      	movs	r1, #9
20014a68:	0028      	movs	r0, r5
20014a6a:	4e57      	ldr	r6, [pc, #348]	; (20014bc8 <user_init_check_brwnout+0x1f0>)
20014a6c:	47b0      	blx	r6
20014a6e:	2401      	movs	r4, #1
20014a70:	4220      	tst	r0, r4
20014a72:	d112      	bne.n	20014a9a <user_init_check_brwnout+0xc2>
20014a74:	4304      	orrs	r4, r0
20014a76:	0023      	movs	r3, r4
20014a78:	2218      	movs	r2, #24
20014a7a:	2109      	movs	r1, #9
20014a7c:	0028      	movs	r0, r5
20014a7e:	4f53      	ldr	r7, [pc, #332]	; (20014bcc <user_init_check_brwnout+0x1f4>)
20014a80:	47b8      	blx	r7
20014a82:	2109      	movs	r1, #9
20014a84:	2218      	movs	r2, #24
20014a86:	0028      	movs	r0, r5
20014a88:	47b0      	blx	r6
20014a8a:	0001      	movs	r1, r0
20014a8c:	4284      	cmp	r4, r0
20014a8e:	d004      	beq.n	20014a9a <user_init_check_brwnout+0xc2>
20014a90:	0020      	movs	r0, r4
20014a92:	2348      	movs	r3, #72	; 0x48
20014a94:	4a4e      	ldr	r2, [pc, #312]	; (20014bd0 <user_init_check_brwnout+0x1f8>)
20014a96:	4c4f      	ldr	r4, [pc, #316]	; (20014bd4 <user_init_check_brwnout+0x1fc>)
20014a98:	47a0      	blx	r4
20014a9a:	4d4a      	ldr	r5, [pc, #296]	; (20014bc4 <user_init_check_brwnout+0x1ec>)
20014a9c:	2238      	movs	r2, #56	; 0x38
20014a9e:	2109      	movs	r1, #9
20014aa0:	0028      	movs	r0, r5
20014aa2:	2480      	movs	r4, #128	; 0x80
20014aa4:	4e48      	ldr	r6, [pc, #288]	; (20014bc8 <user_init_check_brwnout+0x1f0>)
20014aa6:	47b0      	blx	r6
20014aa8:	0264      	lsls	r4, r4, #9
20014aaa:	4220      	tst	r0, r4
20014aac:	d114      	bne.n	20014ad8 <user_init_check_brwnout+0x100>
20014aae:	4b4a      	ldr	r3, [pc, #296]	; (20014bd8 <user_init_check_brwnout+0x200>)
20014ab0:	2238      	movs	r2, #56	; 0x38
20014ab2:	4018      	ands	r0, r3
20014ab4:	4304      	orrs	r4, r0
20014ab6:	0023      	movs	r3, r4
20014ab8:	2109      	movs	r1, #9
20014aba:	0028      	movs	r0, r5
20014abc:	4f43      	ldr	r7, [pc, #268]	; (20014bcc <user_init_check_brwnout+0x1f4>)
20014abe:	47b8      	blx	r7
20014ac0:	2109      	movs	r1, #9
20014ac2:	2238      	movs	r2, #56	; 0x38
20014ac4:	0028      	movs	r0, r5
20014ac6:	47b0      	blx	r6
20014ac8:	0001      	movs	r1, r0
20014aca:	4284      	cmp	r4, r0
20014acc:	d004      	beq.n	20014ad8 <user_init_check_brwnout+0x100>
20014ace:	0020      	movs	r0, r4
20014ad0:	234f      	movs	r3, #79	; 0x4f
20014ad2:	4a3f      	ldr	r2, [pc, #252]	; (20014bd0 <user_init_check_brwnout+0x1f8>)
20014ad4:	4c3f      	ldr	r4, [pc, #252]	; (20014bd4 <user_init_check_brwnout+0x1fc>)
20014ad6:	47a0      	blx	r4
20014ad8:	4d3a      	ldr	r5, [pc, #232]	; (20014bc4 <user_init_check_brwnout+0x1ec>)
20014ada:	2200      	movs	r2, #0
20014adc:	210c      	movs	r1, #12
20014ade:	4e3a      	ldr	r6, [pc, #232]	; (20014bc8 <user_init_check_brwnout+0x1f0>)
20014ae0:	0028      	movs	r0, r5
20014ae2:	47b0      	blx	r6
20014ae4:	2401      	movs	r4, #1
20014ae6:	4304      	orrs	r4, r0
20014ae8:	0023      	movs	r3, r4
20014aea:	2200      	movs	r2, #0
20014aec:	210c      	movs	r1, #12
20014aee:	0028      	movs	r0, r5
20014af0:	4f36      	ldr	r7, [pc, #216]	; (20014bcc <user_init_check_brwnout+0x1f4>)
20014af2:	47b8      	blx	r7
20014af4:	210c      	movs	r1, #12
20014af6:	2200      	movs	r2, #0
20014af8:	0028      	movs	r0, r5
20014afa:	47b0      	blx	r6
20014afc:	0001      	movs	r1, r0
20014afe:	4284      	cmp	r4, r0
20014b00:	d004      	beq.n	20014b0c <user_init_check_brwnout+0x134>
20014b02:	0020      	movs	r0, r4
20014b04:	2354      	movs	r3, #84	; 0x54
20014b06:	4a32      	ldr	r2, [pc, #200]	; (20014bd0 <user_init_check_brwnout+0x1f8>)
20014b08:	4c32      	ldr	r4, [pc, #200]	; (20014bd4 <user_init_check_brwnout+0x1fc>)
20014b0a:	47a0      	blx	r4
20014b0c:	4d2d      	ldr	r5, [pc, #180]	; (20014bc4 <user_init_check_brwnout+0x1ec>)
20014b0e:	2204      	movs	r2, #4
20014b10:	210c      	movs	r1, #12
20014b12:	4e2d      	ldr	r6, [pc, #180]	; (20014bc8 <user_init_check_brwnout+0x1f0>)
20014b14:	0028      	movs	r0, r5
20014b16:	2480      	movs	r4, #128	; 0x80
20014b18:	47b0      	blx	r6
20014b1a:	01a4      	lsls	r4, r4, #6
20014b1c:	4304      	orrs	r4, r0
20014b1e:	0023      	movs	r3, r4
20014b20:	2204      	movs	r2, #4
20014b22:	210c      	movs	r1, #12
20014b24:	0028      	movs	r0, r5
20014b26:	4f29      	ldr	r7, [pc, #164]	; (20014bcc <user_init_check_brwnout+0x1f4>)
20014b28:	47b8      	blx	r7
20014b2a:	210c      	movs	r1, #12
20014b2c:	2204      	movs	r2, #4
20014b2e:	0028      	movs	r0, r5
20014b30:	47b0      	blx	r6
20014b32:	0001      	movs	r1, r0
20014b34:	4284      	cmp	r4, r0
20014b36:	d004      	beq.n	20014b42 <user_init_check_brwnout+0x16a>
20014b38:	0020      	movs	r0, r4
20014b3a:	2358      	movs	r3, #88	; 0x58
20014b3c:	4a24      	ldr	r2, [pc, #144]	; (20014bd0 <user_init_check_brwnout+0x1f8>)
20014b3e:	4c25      	ldr	r4, [pc, #148]	; (20014bd4 <user_init_check_brwnout+0x1fc>)
20014b40:	47a0      	blx	r4
20014b42:	2300      	movs	r3, #0
20014b44:	4a1e      	ldr	r2, [pc, #120]	; (20014bc0 <user_init_check_brwnout+0x1e8>)
20014b46:	6013      	str	r3, [r2, #0]
20014b48:	4b24      	ldr	r3, [pc, #144]	; (20014bdc <user_init_check_brwnout+0x204>)
20014b4a:	681c      	ldr	r4, [r3, #0]
20014b4c:	2c00      	cmp	r4, #0
20014b4e:	d010      	beq.n	20014b72 <user_init_check_brwnout+0x19a>
20014b50:	6823      	ldr	r3, [r4, #0]
20014b52:	4a23      	ldr	r2, [pc, #140]	; (20014be0 <user_init_check_brwnout+0x208>)
20014b54:	4293      	cmp	r3, r2
20014b56:	d103      	bne.n	20014b60 <user_init_check_brwnout+0x188>
20014b58:	2300      	movs	r3, #0
20014b5a:	9302      	str	r3, [sp, #8]
20014b5c:	6864      	ldr	r4, [r4, #4]
20014b5e:	e7f5      	b.n	20014b4c <user_init_check_brwnout+0x174>
20014b60:	9a02      	ldr	r2, [sp, #8]
20014b62:	2a00      	cmp	r2, #0
20014b64:	d1fa      	bne.n	20014b5c <user_init_check_brwnout+0x184>
20014b66:	9a05      	ldr	r2, [sp, #20]
20014b68:	9901      	ldr	r1, [sp, #4]
20014b6a:	9804      	ldr	r0, [sp, #16]
20014b6c:	4798      	blx	r3
20014b6e:	2800      	cmp	r0, #0
20014b70:	d1f2      	bne.n	20014b58 <user_init_check_brwnout+0x180>
20014b72:	4b1c      	ldr	r3, [pc, #112]	; (20014be4 <user_init_check_brwnout+0x20c>)
20014b74:	4798      	blx	r3
20014b76:	9b01      	ldr	r3, [sp, #4]
20014b78:	2b00      	cmp	r3, #0
20014b7a:	d00b      	beq.n	20014b94 <user_init_check_brwnout+0x1bc>
20014b7c:	2301      	movs	r3, #1
20014b7e:	4a0a      	ldr	r2, [pc, #40]	; (20014ba8 <user_init_check_brwnout+0x1d0>)
20014b80:	2102      	movs	r1, #2
20014b82:	6013      	str	r3, [r2, #0]
20014b84:	9801      	ldr	r0, [sp, #4]
20014b86:	4b18      	ldr	r3, [pc, #96]	; (20014be8 <user_init_check_brwnout+0x210>)
20014b88:	4798      	blx	r3
20014b8a:	9b03      	ldr	r3, [sp, #12]
20014b8c:	f383 8810 	msr	PRIMASK, r3
20014b90:	2000      	movs	r0, #0
20014b92:	e72c      	b.n	200149ee <user_init_check_brwnout+0x16>
20014b94:	4b07      	ldr	r3, [pc, #28]	; (20014bb4 <user_init_check_brwnout+0x1dc>)
20014b96:	781b      	ldrb	r3, [r3, #0]
20014b98:	2b00      	cmp	r3, #0
20014b9a:	d1ef      	bne.n	20014b7c <user_init_check_brwnout+0x1a4>
20014b9c:	23fa      	movs	r3, #250	; 0xfa
20014b9e:	00db      	lsls	r3, r3, #3
20014ba0:	9301      	str	r3, [sp, #4]
20014ba2:	e7eb      	b.n	20014b7c <user_init_check_brwnout+0x1a4>
20014ba4:	2001505e 	.word	0x2001505e
20014ba8:	50003020 	.word	0x50003020
20014bac:	500080fc 	.word	0x500080fc
20014bb0:	2001505f 	.word	0x2001505f
20014bb4:	2001505d 	.word	0x2001505d
20014bb8:	000066b1 	.word	0x000066b1
20014bbc:	1000a56f 	.word	0x1000a56f
20014bc0:	5000301c 	.word	0x5000301c
20014bc4:	0003cd78 	.word	0x0003cd78
20014bc8:	0000777f 	.word	0x0000777f
20014bcc:	0000779f 	.word	0x0000779f
20014bd0:	1000a59d 	.word	0x1000a59d
20014bd4:	00006641 	.word	0x00006641
20014bd8:	fffdffff 	.word	0xfffdffff
20014bdc:	200012a0 	.word	0x200012a0
20014be0:	20014bfd 	.word	0x20014bfd
20014be4:	20014899 	.word	0x20014899
20014be8:	000061e5 	.word	0x000061e5

20014bec <user_init_check_brwnout_retain_all>:
20014bec:	b510      	push	{r4, lr}
20014bee:	2300      	movs	r3, #0
20014bf0:	4c01      	ldr	r4, [pc, #4]	; (20014bf8 <user_init_check_brwnout_retain_all+0xc>)
20014bf2:	47a0      	blx	r4
20014bf4:	bd10      	pop	{r4, pc}
20014bf6:	46c0      	nop			; (mov r8, r8)
20014bf8:	200149d9 	.word	0x200149d9

20014bfc <user_init_check_brwnout_hibernate>:
20014bfc:	b510      	push	{r4, lr}
20014bfe:	2301      	movs	r3, #1
20014c00:	4c01      	ldr	r4, [pc, #4]	; (20014c08 <user_init_check_brwnout_hibernate+0xc>)
20014c02:	47a0      	blx	r4
20014c04:	bd10      	pop	{r4, pc}
20014c06:	46c0      	nop			; (mov r8, r8)
20014c08:	200149d9 	.word	0x200149d9

20014c0c <user_rv_plf_hibernate.0>:
20014c0c:	20014bfd 00000000                       .K. ....

20014c14 <user_rv_plf_retain_all.1>:
20014c14:	20014bed 00000000                       .K. ....

20014c1c <swd_dbg_prevent>:
20014c1c:	2301      	movs	r3, #1
20014c1e:	b510      	push	{r4, lr}
20014c20:	2400      	movs	r4, #0
20014c22:	0002      	movs	r2, r0
20014c24:	4805      	ldr	r0, [pc, #20]	; (20014c3c <swd_dbg_prevent+0x20>)
20014c26:	4906      	ldr	r1, [pc, #24]	; (20014c40 <swd_dbg_prevent+0x24>)
20014c28:	6003      	str	r3, [r0, #0]
20014c2a:	6809      	ldr	r1, [r1, #0]
20014c2c:	6004      	str	r4, [r0, #0]
20014c2e:	0b89      	lsrs	r1, r1, #14
20014c30:	0018      	movs	r0, r3
20014c32:	4219      	tst	r1, r3
20014c34:	d001      	beq.n	20014c3a <swd_dbg_prevent+0x1e>
20014c36:	0020      	movs	r0, r4
20014c38:	7013      	strb	r3, [r2, #0]
20014c3a:	bd10      	pop	{r4, pc}
20014c3c:	50003020 	.word	0x50003020
20014c40:	500080f0 	.word	0x500080f0

20014c44 <user_rv_plf_prevent_hibernation.0>:
20014c44:	20014c1d 00000000                       .L. ....

20014c4c <user_rv_plf_prevent_retention.1>:
20014c4c:	20014c1d 00000000                       .L. ....

20014c54 <__compound_literal.0>:
20014c54:	0000000f 20014cbc                       .....L. 

20014c5c <__compound_literal.1>:
20014c5c:	0000000f 20014ccb                       .....L. 

20014c64 <__compound_literal.2>:
20014c64:	00000008 20014cda                       .....L. 

20014c6c <default_adv_create_param>:
20014c6c:	00000000 00030100 00000000 00000000     ................
20014c7c:	00000000 00000040 00000040 00000107     ....@...@.......
20014c8c:	00000100 00500050 00000000 00030100     ....P.P.........
	...
20014ca8:	00000040 00000040 00000107 00000100     @...@...........
20014cb8:	00500050                                P.P.

20014cbc <default_adv_data0>:
20014cbc:	18120303 03c11903 0a24ff06               ..........$....

20014ccb <default_adv_data1>:
20014ccb:	18120303 03c11903 0a24ff06               ..........$....

20014cda <default_scan_data1>:
20014cda:	18120303 03c11903                        ..........

20014ce4 <default_set_adv_data>:
20014ce4:	20014c54 00000000 20014c5c 20014c64     TL. ....\L. dL. 

20014cf4 <default_scan_params>:
20014cf4:	00010102 00100010 00100010 00000000     ................

20014d04 <fix_bond_index>:
20014d04:	000000ff                                ....

20014d08 <__init_array_start>:
20014d08:	10003d5d 	.word	0x10003d5d
20014d0c:	10002c85 	.word	0x10002c85
20014d10:	10003b89 	.word	0x10003b89
20014d14:	10002931 	.word	0x10002931
20014d18:	10000b1d 	.word	0x10000b1d
20014d1c:	10002d29 	.word	0x10002d29
20014d20:	10002d9d 	.word	0x10002d9d
20014d24:	10002e05 	.word	0x10002e05
20014d28:	10002e91 	.word	0x10002e91
20014d2c:	10002ed9 	.word	0x10002ed9
20014d30:	10003195 	.word	0x10003195
20014d34:	100033d9 	.word	0x100033d9
20014d38:	10003435 	.word	0x10003435
20014d3c:	1000353d 	.word	0x1000353d
20014d40:	10003735 	.word	0x10003735
20014d44:	100042a5 	.word	0x100042a5
20014d48:	100044bd 	.word	0x100044bd
20014d4c:	10004511 	.word	0x10004511
20014d50:	10004539 	.word	0x10004539
