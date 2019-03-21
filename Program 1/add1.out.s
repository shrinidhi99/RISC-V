
a.out:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	32018193          	addi	gp,gp,800 # 123d0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11be8 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c20 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1ba000ef          	jal	ra,1027e <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	10c50513          	addi	a0,a0,268 # 101d4 <__libc_fini_array>
   100d0:	0d8000ef          	jal	ra,101a8 <atexit>
   100d4:	148000ef          	jal	ra,1021c <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	0d20006f          	j	101b4 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	bd050713          	addi	a4,a0,-1072 # 11bd0 <__TMC_END__>
   100f0:	bd078793          	addi	a5,a5,-1072 # 11bd0 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	bd050513          	addi	a0,a0,-1072
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	bd078593          	addi	a1,a5,-1072 # 11bd0 <__TMC_END__>
   10114:	bd050793          	addi	a5,a0,-1072 # 11bd0 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	bd050513          	addi	a0,a0,-1072
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11be8 <_edata>
   1013c:	eb15                	bnez	a4,10170 <__do_global_dtors_aux+0x38>
   1013e:	1141                	addi	sp,sp,-16
   10140:	e022                	sd	s0,0(sp)
   10142:	e406                	sd	ra,8(sp)
   10144:	843e                	mv	s0,a5
   10146:	fa3ff0ef          	jal	ra,100e8 <deregister_tm_clones>
   1014a:	000007b7          	lui	a5,0x0
   1014e:	00078793          	mv	a5,a5
   10152:	cb81                	beqz	a5,10162 <__do_global_dtors_aux+0x2a>
   10154:	6545                	lui	a0,0x11
   10156:	47050513          	addi	a0,a0,1136 # 11470 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11be8 <_edata>
   10168:	60a2                	ld	ra,8(sp)
   1016a:	6402                	ld	s0,0(sp)
   1016c:	0141                	addi	sp,sp,16
   1016e:	8082                	ret
   10170:	8082                	ret

0000000000010172 <frame_dummy>:
   10172:	000007b7          	lui	a5,0x0
   10176:	00078793          	mv	a5,a5
   1017a:	cf99                	beqz	a5,10198 <frame_dummy+0x26>
   1017c:	65c9                	lui	a1,0x12
   1017e:	6545                	lui	a0,0x11
   10180:	1141                	addi	sp,sp,-16
   10182:	bf058593          	addi	a1,a1,-1040 # 11bf0 <object.5217>
   10186:	47050513          	addi	a0,a0,1136 # 11470 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	4285                	li	t0,1
   1019e:	430d                	li	t1,3
   101a0:	006283bb          	addw	t2,t0,t1
   101a4:	00742023          	sw	t2,0(s0)

00000000000101a8 <atexit>:
   101a8:	85aa                	mv	a1,a0
   101aa:	4681                	li	a3,0
   101ac:	4601                	li	a2,0
   101ae:	4501                	li	a0,0
   101b0:	1780006f          	j	10328 <__register_exitproc>

00000000000101b4 <exit>:
   101b4:	1141                	addi	sp,sp,-16
   101b6:	4581                	li	a1,0
   101b8:	e022                	sd	s0,0(sp)
   101ba:	e406                	sd	ra,8(sp)
   101bc:	842a                	mv	s0,a0
   101be:	1d0000ef          	jal	ra,1038e <__call_exitprocs>
   101c2:	67c9                	lui	a5,0x12
   101c4:	bd87b503          	ld	a0,-1064(a5) # 11bd8 <_global_impure_ptr>
   101c8:	6d3c                	ld	a5,88(a0)
   101ca:	c391                	beqz	a5,101ce <exit+0x1a>
   101cc:	9782                	jalr	a5
   101ce:	8522                	mv	a0,s0
   101d0:	26e000ef          	jal	ra,1043e <_exit>

00000000000101d4 <__libc_fini_array>:
   101d4:	7179                	addi	sp,sp,-48
   101d6:	67c5                	lui	a5,0x11
   101d8:	6745                	lui	a4,0x11
   101da:	f022                	sd	s0,32(sp)
   101dc:	48070713          	addi	a4,a4,1152 # 11480 <__init_array_end>
   101e0:	48878413          	addi	s0,a5,1160 # 11488 <__fini_array_end>
   101e4:	8c19                	sub	s0,s0,a4
   101e6:	ec26                	sd	s1,24(sp)
   101e8:	e84a                	sd	s2,16(sp)
   101ea:	e44e                	sd	s3,8(sp)
   101ec:	f406                	sd	ra,40(sp)
   101ee:	840d                	srai	s0,s0,0x3
   101f0:	4481                	li	s1,0
   101f2:	48878913          	addi	s2,a5,1160
   101f6:	59e1                	li	s3,-8
   101f8:	00941a63          	bne	s0,s1,1020c <__libc_fini_array+0x38>
   101fc:	7402                	ld	s0,32(sp)
   101fe:	70a2                	ld	ra,40(sp)
   10200:	64e2                	ld	s1,24(sp)
   10202:	6942                	ld	s2,16(sp)
   10204:	69a2                	ld	s3,8(sp)
   10206:	6145                	addi	sp,sp,48
   10208:	edfff06f          	j	100e6 <_fini>
   1020c:	033487b3          	mul	a5,s1,s3
   10210:	0485                	addi	s1,s1,1
   10212:	97ca                	add	a5,a5,s2
   10214:	ff87b783          	ld	a5,-8(a5)
   10218:	9782                	jalr	a5
   1021a:	bff9                	j	101f8 <__libc_fini_array+0x24>

000000000001021c <__libc_init_array>:
   1021c:	1101                	addi	sp,sp,-32
   1021e:	e822                	sd	s0,16(sp)
   10220:	e426                	sd	s1,8(sp)
   10222:	6445                	lui	s0,0x11
   10224:	64c5                	lui	s1,0x11
   10226:	47448793          	addi	a5,s1,1140 # 11474 <__preinit_array_end>
   1022a:	47440413          	addi	s0,s0,1140 # 11474 <__preinit_array_end>
   1022e:	8c1d                	sub	s0,s0,a5
   10230:	e04a                	sd	s2,0(sp)
   10232:	ec06                	sd	ra,24(sp)
   10234:	840d                	srai	s0,s0,0x3
   10236:	47448493          	addi	s1,s1,1140
   1023a:	4901                	li	s2,0
   1023c:	02891763          	bne	s2,s0,1026a <__libc_init_array+0x4e>
   10240:	64c5                	lui	s1,0x11
   10242:	ea5ff0ef          	jal	ra,100e6 <_fini>
   10246:	6445                	lui	s0,0x11
   10248:	47848793          	addi	a5,s1,1144 # 11478 <__frame_dummy_init_array_entry>
   1024c:	48040413          	addi	s0,s0,1152 # 11480 <__init_array_end>
   10250:	8c1d                	sub	s0,s0,a5
   10252:	840d                	srai	s0,s0,0x3
   10254:	47848493          	addi	s1,s1,1144
   10258:	4901                	li	s2,0
   1025a:	00891d63          	bne	s2,s0,10274 <__libc_init_array+0x58>
   1025e:	60e2                	ld	ra,24(sp)
   10260:	6442                	ld	s0,16(sp)
   10262:	64a2                	ld	s1,8(sp)
   10264:	6902                	ld	s2,0(sp)
   10266:	6105                	addi	sp,sp,32
   10268:	8082                	ret
   1026a:	609c                	ld	a5,0(s1)
   1026c:	0905                	addi	s2,s2,1
   1026e:	04a1                	addi	s1,s1,8
   10270:	9782                	jalr	a5
   10272:	b7e9                	j	1023c <__libc_init_array+0x20>
   10274:	609c                	ld	a5,0(s1)
   10276:	0905                	addi	s2,s2,1
   10278:	04a1                	addi	s1,s1,8
   1027a:	9782                	jalr	a5
   1027c:	bff9                	j	1025a <__libc_init_array+0x3e>

000000000001027e <memset>:
   1027e:	433d                	li	t1,15
   10280:	872a                	mv	a4,a0
   10282:	02c37163          	bleu	a2,t1,102a4 <memset+0x26>
   10286:	00f77793          	andi	a5,a4,15
   1028a:	e3c1                	bnez	a5,1030a <memset+0x8c>
   1028c:	e1bd                	bnez	a1,102f2 <memset+0x74>
   1028e:	ff067693          	andi	a3,a2,-16
   10292:	8a3d                	andi	a2,a2,15
   10294:	96ba                	add	a3,a3,a4
   10296:	e30c                	sd	a1,0(a4)
   10298:	e70c                	sd	a1,8(a4)
   1029a:	0741                	addi	a4,a4,16
   1029c:	fed76de3          	bltu	a4,a3,10296 <memset+0x18>
   102a0:	e211                	bnez	a2,102a4 <memset+0x26>
   102a2:	8082                	ret
   102a4:	40c306b3          	sub	a3,t1,a2
   102a8:	068a                	slli	a3,a3,0x2
   102aa:	00000297          	auipc	t0,0x0
   102ae:	9696                	add	a3,a3,t0
   102b0:	00a68067          	jr	10(a3)
   102b4:	00b70723          	sb	a1,14(a4)
   102b8:	00b706a3          	sb	a1,13(a4)
   102bc:	00b70623          	sb	a1,12(a4)
   102c0:	00b705a3          	sb	a1,11(a4)
   102c4:	00b70523          	sb	a1,10(a4)
   102c8:	00b704a3          	sb	a1,9(a4)
   102cc:	00b70423          	sb	a1,8(a4)
   102d0:	00b703a3          	sb	a1,7(a4)
   102d4:	00b70323          	sb	a1,6(a4)
   102d8:	00b702a3          	sb	a1,5(a4)
   102dc:	00b70223          	sb	a1,4(a4)
   102e0:	00b701a3          	sb	a1,3(a4)
   102e4:	00b70123          	sb	a1,2(a4)
   102e8:	00b700a3          	sb	a1,1(a4)
   102ec:	00b70023          	sb	a1,0(a4)
   102f0:	8082                	ret
   102f2:	0ff5f593          	andi	a1,a1,255
   102f6:	00859693          	slli	a3,a1,0x8
   102fa:	8dd5                	or	a1,a1,a3
   102fc:	01059693          	slli	a3,a1,0x10
   10300:	8dd5                	or	a1,a1,a3
   10302:	02059693          	slli	a3,a1,0x20
   10306:	8dd5                	or	a1,a1,a3
   10308:	b759                	j	1028e <memset+0x10>
   1030a:	00279693          	slli	a3,a5,0x2
   1030e:	00000297          	auipc	t0,0x0
   10312:	9696                	add	a3,a3,t0
   10314:	8286                	mv	t0,ra
   10316:	fa2680e7          	jalr	-94(a3)
   1031a:	8096                	mv	ra,t0
   1031c:	17c1                	addi	a5,a5,-16
   1031e:	8f1d                	sub	a4,a4,a5
   10320:	963e                	add	a2,a2,a5
   10322:	f8c371e3          	bleu	a2,t1,102a4 <memset+0x26>
   10326:	b79d                	j	1028c <memset+0xe>

0000000000010328 <__register_exitproc>:
   10328:	67c9                	lui	a5,0x12
   1032a:	bd87b703          	ld	a4,-1064(a5) # 11bd8 <_global_impure_ptr>
   1032e:	832a                	mv	t1,a0
   10330:	1f873783          	ld	a5,504(a4)
   10334:	e789                	bnez	a5,1033e <__register_exitproc+0x16>
   10336:	20070793          	addi	a5,a4,512
   1033a:	1ef73c23          	sd	a5,504(a4)
   1033e:	4798                	lw	a4,8(a5)
   10340:	487d                	li	a6,31
   10342:	557d                	li	a0,-1
   10344:	04e84463          	blt	a6,a4,1038c <__register_exitproc+0x64>
   10348:	02030a63          	beqz	t1,1037c <__register_exitproc+0x54>
   1034c:	00371813          	slli	a6,a4,0x3
   10350:	983e                	add	a6,a6,a5
   10352:	10c83823          	sd	a2,272(a6)
   10356:	3107a883          	lw	a7,784(a5)
   1035a:	4605                	li	a2,1
   1035c:	00e6163b          	sllw	a2,a2,a4
   10360:	00c8e8b3          	or	a7,a7,a2
   10364:	3117a823          	sw	a7,784(a5)
   10368:	20d83823          	sd	a3,528(a6)
   1036c:	4689                	li	a3,2
   1036e:	00d31763          	bne	t1,a3,1037c <__register_exitproc+0x54>
   10372:	3147a683          	lw	a3,788(a5)
   10376:	8e55                	or	a2,a2,a3
   10378:	30c7aa23          	sw	a2,788(a5)
   1037c:	0017069b          	addiw	a3,a4,1
   10380:	0709                	addi	a4,a4,2
   10382:	070e                	slli	a4,a4,0x3
   10384:	c794                	sw	a3,8(a5)
   10386:	97ba                	add	a5,a5,a4
   10388:	e38c                	sd	a1,0(a5)
   1038a:	4501                	li	a0,0
   1038c:	8082                	ret

000000000001038e <__call_exitprocs>:
   1038e:	715d                	addi	sp,sp,-80
   10390:	67c9                	lui	a5,0x12
   10392:	f44e                	sd	s3,40(sp)
   10394:	bd87b983          	ld	s3,-1064(a5) # 11bd8 <_global_impure_ptr>
   10398:	f052                	sd	s4,32(sp)
   1039a:	ec56                	sd	s5,24(sp)
   1039c:	e85a                	sd	s6,16(sp)
   1039e:	e486                	sd	ra,72(sp)
   103a0:	e0a2                	sd	s0,64(sp)
   103a2:	fc26                	sd	s1,56(sp)
   103a4:	f84a                	sd	s2,48(sp)
   103a6:	e45e                	sd	s7,8(sp)
   103a8:	8aaa                	mv	s5,a0
   103aa:	8a2e                	mv	s4,a1
   103ac:	4b05                	li	s6,1
   103ae:	1f89b403          	ld	s0,504(s3)
   103b2:	c801                	beqz	s0,103c2 <__call_exitprocs+0x34>
   103b4:	4404                	lw	s1,8(s0)
   103b6:	34fd                	addiw	s1,s1,-1
   103b8:	00349913          	slli	s2,s1,0x3
   103bc:	9922                	add	s2,s2,s0
   103be:	0004dd63          	bgez	s1,103d8 <__call_exitprocs+0x4a>
   103c2:	60a6                	ld	ra,72(sp)
   103c4:	6406                	ld	s0,64(sp)
   103c6:	74e2                	ld	s1,56(sp)
   103c8:	7942                	ld	s2,48(sp)
   103ca:	79a2                	ld	s3,40(sp)
   103cc:	7a02                	ld	s4,32(sp)
   103ce:	6ae2                	ld	s5,24(sp)
   103d0:	6b42                	ld	s6,16(sp)
   103d2:	6ba2                	ld	s7,8(sp)
   103d4:	6161                	addi	sp,sp,80
   103d6:	8082                	ret
   103d8:	000a0963          	beqz	s4,103ea <__call_exitprocs+0x5c>
   103dc:	21093783          	ld	a5,528(s2)
   103e0:	01478563          	beq	a5,s4,103ea <__call_exitprocs+0x5c>
   103e4:	34fd                	addiw	s1,s1,-1
   103e6:	1961                	addi	s2,s2,-8
   103e8:	bfd9                	j	103be <__call_exitprocs+0x30>
   103ea:	441c                	lw	a5,8(s0)
   103ec:	01093683          	ld	a3,16(s2)
   103f0:	37fd                	addiw	a5,a5,-1
   103f2:	02979663          	bne	a5,s1,1041e <__call_exitprocs+0x90>
   103f6:	c404                	sw	s1,8(s0)
   103f8:	d6f5                	beqz	a3,103e4 <__call_exitprocs+0x56>
   103fa:	31042703          	lw	a4,784(s0)
   103fe:	009b163b          	sllw	a2,s6,s1
   10402:	00842b83          	lw	s7,8(s0)
   10406:	8f71                	and	a4,a4,a2
   10408:	2701                	sext.w	a4,a4
   1040a:	ef09                	bnez	a4,10424 <__call_exitprocs+0x96>
   1040c:	9682                	jalr	a3
   1040e:	4418                	lw	a4,8(s0)
   10410:	1f89b783          	ld	a5,504(s3)
   10414:	f9771de3          	bne	a4,s7,103ae <__call_exitprocs+0x20>
   10418:	fcf406e3          	beq	s0,a5,103e4 <__call_exitprocs+0x56>
   1041c:	bf49                	j	103ae <__call_exitprocs+0x20>
   1041e:	00093823          	sd	zero,16(s2)
   10422:	bfd9                	j	103f8 <__call_exitprocs+0x6a>
   10424:	31442783          	lw	a5,788(s0)
   10428:	11093583          	ld	a1,272(s2)
   1042c:	8ff1                	and	a5,a5,a2
   1042e:	2781                	sext.w	a5,a5
   10430:	e781                	bnez	a5,10438 <__call_exitprocs+0xaa>
   10432:	8556                	mv	a0,s5
   10434:	9682                	jalr	a3
   10436:	bfe1                	j	1040e <__call_exitprocs+0x80>
   10438:	852e                	mv	a0,a1
   1043a:	9682                	jalr	a3
   1043c:	bfc9                	j	1040e <__call_exitprocs+0x80>

000000000001043e <_exit>:
   1043e:	4581                	li	a1,0
   10440:	4601                	li	a2,0
   10442:	4681                	li	a3,0
   10444:	4701                	li	a4,0
   10446:	4781                	li	a5,0
   10448:	05d00893          	li	a7,93
   1044c:	00000073          	ecall
   10450:	00055c63          	bgez	a0,10468 <_exit+0x2a>
   10454:	1141                	addi	sp,sp,-16
   10456:	e022                	sd	s0,0(sp)
   10458:	842a                	mv	s0,a0
   1045a:	e406                	sd	ra,8(sp)
   1045c:	4080043b          	negw	s0,s0
   10460:	00a000ef          	jal	ra,1046a <__errno>
   10464:	c100                	sw	s0,0(a0)
   10466:	a001                	j	10466 <_exit+0x28>
   10468:	a001                	j	10468 <_exit+0x2a>

000000000001046a <__errno>:
   1046a:	8101b503          	ld	a0,-2032(gp) # 11be0 <_impure_ptr>
   1046e:	8082                	ret

Disassembly of section .eh_frame:

0000000000011470 <__EH_FRAME_BEGIN__>:
   11470:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011478 <__frame_dummy_init_array_entry>:
   11478:	0172                	slli	sp,sp,0x1c
   1147a:	0001                	nop
   1147c:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011480 <__do_global_dtors_aux_fini_array_entry>:
   11480:	0138                	addi	a4,sp,136
   11482:	0001                	nop
   11484:	0000                	unimp
	...

Disassembly of section .data:

0000000000011488 <impure_data>:
	...
   11490:	19c0                	addi	s0,sp,244
   11492:	0001                	nop
   11494:	0000                	unimp
   11496:	0000                	unimp
   11498:	1a70                	addi	a2,sp,316
   1149a:	0001                	nop
   1149c:	0000                	unimp
   1149e:	0000                	unimp
   114a0:	1b20                	addi	s0,sp,440
   114a2:	0001                	nop
	...
   11570:	0001                	nop
   11572:	0000                	unimp
   11574:	0000                	unimp
   11576:	0000                	unimp
   11578:	330e                	fld	ft6,224(sp)
   1157a:	abcd                	j	11b6c <impure_data+0x6e4>
   1157c:	1234                	addi	a3,sp,296
   1157e:	e66d                	bnez	a2,11668 <impure_data+0x1e0>
   11580:	deec                	sw	a1,124(a3)
   11582:	0005                	c.nop	1
   11584:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011bd0 <__TMC_END__>:
	...

0000000000011bd8 <_global_impure_ptr>:
   11bd8:	1488                	addi	a0,sp,608
   11bda:	0001                	nop
   11bdc:	0000                	unimp
	...

0000000000011be0 <_impure_ptr>:
   11be0:	1488                	addi	a0,sp,608
   11be2:	0001                	nop
   11be4:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011be8 <__bss_start>:
	...

0000000000011bf0 <object.5217>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3720                	fld	fs0,104(a4)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
