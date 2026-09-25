0x180001000: sub	rsp, 0x28
0x180001004: mov	ecx, 0x20
0x180001009: call	0x180002d90
0x18000100e: mov	qword ptr [rax], rax
0x180001011: mov	qword ptr [rax + 8], rax
0x180001015: mov	qword ptr [rip + 0x61b75c], rax
0x18000101c: mov	qword ptr [rip + 0x61b761], 0
0x180001027: xorps	xmm0, xmm0
0x18000102a: movdqa	xmmword ptr [rip + 0x61b75e], xmm0
0x180001032: mov	qword ptr [rip + 0x61b763], 7
0x18000103d: mov	qword ptr [rip + 0x61b760], 8
0x180001048: mov	dword ptr [rip + 0x61b71e], 0x3f800000
0x180001052: mov	r8, rax
0x180001055: mov	edx, 0x10
0x18000105a: lea	rcx, [rip + 0x61b727]
0x180001061: call	0x180002420
0x180001066: nop	
0x180001067: lea	rcx, [rip + 0x2ed2]
0x18000106e: add	rsp, 0x28
0x180001072: jmp	0x180003124
0x180001077: int3	
0x180001078: int3	
0x180001079: int3	
0x18000107a: int3	
0x18000107b: int3	
0x18000107c: int3	
0x18000107d: int3	
0x18000107e: int3	
0x18000107f: int3	
0x180001080: lea	rcx, [rip + 0x2ec9]
0x180001087: jmp	0x180003124
0x18000108c: int3	
0x18000108d: int3	
0x18000108e: int3	
0x18000108f: int3	
0x180001090: lea	rax, [rip + 0x61b6d1]
0x180001097: ret	
0x180001098: int3	
0x180001099: int3	
0x18000109a: int3	
0x18000109b: int3	
0x18000109c: int3	
0x18000109d: int3	
0x18000109e: int3	
0x18000109f: int3	
0x1800010a0: mov	qword ptr [rsp + 8], rcx
0x1800010a5: mov	qword ptr [rsp + 0x10], rdx
0x1800010aa: mov	qword ptr [rsp + 0x18], r8
0x1800010af: mov	qword ptr [rsp + 0x20], r9
0x1800010b4: push	rbx
0x1800010b5: push	rdi
0x1800010b6: sub	rsp, 0x38
0x1800010ba: mov	ecx, 1
0x1800010bf: lea	rdi, [rsp + 0x58]
0x1800010c4: call	qword ptr [rip + 0x3136]   ; api-ms-win-crt-stdio-l1-1-0.dll!__acrt_iob_func
0x1800010ca: mov	rbx, rax
0x1800010cd: call	0x180001090
0x1800010d2: mov	r8, qword ptr [rsp + 0x50]
0x1800010d7: xor	r9d, r9d
0x1800010da: mov	rdx, rbx
0x1800010dd: mov	qword ptr [rsp + 0x20], rdi
0x1800010e2: mov	rcx, qword ptr [rax]
0x1800010e5: call	qword ptr [rip + 0x310d]   ; api-ms-win-crt-stdio-l1-1-0.dll!__stdio_common_vfprintf
0x1800010eb: add	rsp, 0x38
0x1800010ef: pop	rdi
0x1800010f0: pop	rbx
0x1800010f1: ret	
0x1800010f2: int3	
0x1800010f3: int3	
0x1800010f4: int3	
0x1800010f5: int3	
0x1800010f6: int3	
0x1800010f7: int3	
0x1800010f8: int3	
0x1800010f9: int3	
0x1800010fa: int3	
0x1800010fb: int3	
0x1800010fc: int3	
0x1800010fd: int3	
0x1800010fe: int3	
0x1800010ff: int3	
0x180001100: push	rbx
0x180001102: sub	rsp, 0x20
0x180001106: mov	rbx, rcx
0x180001109: mov	rax, rdx
0x18000110c: lea	rcx, [rip + 0x31cd]
0x180001113: xorps	xmm0, xmm0
0x180001116: lea	rdx, [rbx + 8]
0x18000111a: mov	qword ptr [rbx], rcx
0x18000111d: lea	rcx, [rax + 8]
0x180001121: movups	xmmword ptr [rdx], xmm0
0x180001124: call	qword ptr [rip + 0x3006]   ; VCRUNTIME140.dll!__std_exception_copy
0x18000112a: mov	rax, rbx
0x18000112d: add	rsp, 0x20
0x180001131: pop	rbx
0x180001132: ret	
0x180001133: int3	
0x180001134: int3	
0x180001135: int3	
0x180001136: int3	
0x180001137: int3	
0x180001138: int3	
0x180001139: int3	
0x18000113a: int3	
0x18000113b: int3	
0x18000113c: int3	
0x18000113d: int3	
0x18000113e: int3	
0x18000113f: int3	
0x180001140: mov	rdx, qword ptr [rcx + 8]
0x180001144: lea	rax, [rip + 0x4d0345]
0x18000114b: test	rdx, rdx
0x18000114e: cmovne	rax, rdx
0x180001152: ret	
0x180001153: int3	
0x180001154: int3	
0x180001155: int3	
0x180001156: int3	
0x180001157: int3	
0x180001158: int3	
0x180001159: int3	
0x18000115a: int3	
0x18000115b: int3	
0x18000115c: int3	
0x18000115d: int3	
0x18000115e: int3	
0x18000115f: int3	
0x180001160: mov	qword ptr [rsp + 8], rbx
0x180001165: push	rdi
0x180001166: sub	rsp, 0x20
0x18000116a: lea	rax, [rip + 0x316f]
0x180001171: mov	rdi, rcx
0x180001174: mov	qword ptr [rcx], rax
0x180001177: mov	ebx, edx
0x180001179: add	rcx, 8
0x18000117d: call	qword ptr [rip + 0x2fb5]   ; VCRUNTIME140.dll!__std_exception_destroy
0x180001183: test	bl, 1
0x180001186: je	0x180001195
0x180001188: mov	edx, 0x18
0x18000118d: mov	rcx, rdi
0x180001190: call	0x180003144
0x180001195: mov	rbx, qword ptr [rsp + 0x30]
0x18000119a: mov	rax, rdi
0x18000119d: add	rsp, 0x20
0x1800011a1: pop	rdi
0x1800011a2: ret	
0x1800011a3: int3	
0x1800011a4: int3	
0x1800011a5: int3	
0x1800011a6: int3	
0x1800011a7: int3	
0x1800011a8: int3	
0x1800011a9: int3	
0x1800011aa: int3	
0x1800011ab: int3	
0x1800011ac: int3	
0x1800011ad: int3	
0x1800011ae: int3	
0x1800011af: int3	
0x1800011b0: lea	rax, [rip + 0x3129]
0x1800011b7: mov	qword ptr [rcx], rax
0x1800011ba: add	rcx, 8
0x1800011be: jmp	qword ptr [rip + 0x2f73]   ; VCRUNTIME140.dll!__std_exception_destroy
0x1800011c5: int3	
0x1800011c6: int3	
0x1800011c7: int3	
0x1800011c8: int3	
0x1800011c9: int3	
0x1800011ca: int3	
0x1800011cb: int3	
0x1800011cc: int3	
0x1800011cd: int3	
0x1800011ce: int3	
0x1800011cf: int3	
0x1800011d0: lea	rax, [rip + 0x4d02d1]
0x1800011d7: mov	qword ptr [rcx + 0x10], 0
0x1800011df: mov	qword ptr [rcx + 8], rax
0x1800011e3: lea	rax, [rip + 0x3136]
0x1800011ea: mov	qword ptr [rcx], rax
0x1800011ed: mov	rax, rcx
0x1800011f0: ret	
0x1800011f1: int3	
0x1800011f2: int3	
0x1800011f3: int3	
0x1800011f4: int3	
0x1800011f5: int3	
0x1800011f6: int3	
0x1800011f7: int3	
0x1800011f8: int3	
0x1800011f9: int3	
0x1800011fa: int3	
0x1800011fb: int3	
0x1800011fc: int3	
0x1800011fd: int3	
0x1800011fe: int3	
0x1800011ff: int3	
0x180001200: sub	rsp, 0x48
0x180001204: lea	rcx, [rsp + 0x20]
0x180001209: call	0x1800011d0
0x18000120e: lea	rdx, [rip + 0x619e53]
0x180001215: lea	rcx, [rsp + 0x20]
0x18000121a: call	0x180003c1c
0x18000121f: int3	
0x180001220: push	rbx
0x180001222: sub	rsp, 0x20
0x180001226: mov	rbx, rcx
0x180001229: mov	rax, rdx
0x18000122c: lea	rcx, [rip + 0x30ad]
0x180001233: xorps	xmm0, xmm0
0x180001236: lea	rdx, [rbx + 8]
0x18000123a: mov	qword ptr [rbx], rcx
0x18000123d: lea	rcx, [rax + 8]
0x180001241: movups	xmmword ptr [rdx], xmm0
0x180001244: call	qword ptr [rip + 0x2ee6]   ; VCRUNTIME140.dll!__std_exception_copy
0x18000124a: lea	rax, [rip + 0x30cf]
0x180001251: mov	qword ptr [rbx], rax
0x180001254: mov	rax, rbx
0x180001257: add	rsp, 0x20
0x18000125b: pop	rbx
0x18000125c: ret	
0x18000125d: int3	
0x18000125e: int3	
0x18000125f: int3	
0x180001260: push	rbx
0x180001262: sub	rsp, 0x20
0x180001266: mov	rbx, rcx
0x180001269: mov	rax, rdx
0x18000126c: lea	rcx, [rip + 0x306d]
0x180001273: xorps	xmm0, xmm0
0x180001276: lea	rdx, [rbx + 8]
0x18000127a: mov	qword ptr [rbx], rcx
0x18000127d: lea	rcx, [rax + 8]
0x180001281: movups	xmmword ptr [rdx], xmm0
0x180001284: call	qword ptr [rip + 0x2ea6]   ; VCRUNTIME140.dll!__std_exception_copy
0x18000128a: lea	rax, [rip + 0x3067]
0x180001291: mov	qword ptr [rbx], rax
0x180001294: mov	rax, rbx
0x180001297: add	rsp, 0x20
0x18000129b: pop	rbx
0x18000129c: ret	
0x18000129d: int3	
0x18000129e: int3	
0x18000129f: int3	
0x1800012a0: sub	rsp, 0x28
0x1800012a4: lea	rcx, [rip + 0x4d0215]
0x1800012ab: call	qword ptr [rip + 0x2e3f]   ; MSVCP140.dll!?_Xlength_error@std@@YAXPEBD@Z
0x1800012b1: int3	
0x1800012b2: int3	
0x1800012b3: int3	
0x1800012b4: int3	
0x1800012b5: int3	
0x1800012b6: int3	
0x1800012b7: int3	
0x1800012b8: int3	
0x1800012b9: int3	
0x1800012ba: int3	
0x1800012bb: int3	
0x1800012bc: int3	
0x1800012bd: int3	
0x1800012be: int3	
0x1800012bf: int3	
0x1800012c0: push	rbx
0x1800012c2: sub	rsp, 0x40
0x1800012c6: mov	rax, qword ptr [rip + 0x61ad73]
0x1800012cd: xor	rax, rsp
0x1800012d0: mov	qword ptr [rsp + 0x30], rax
0x1800012d5: mov	r8, rdx
0x1800012d8: mov	byte ptr [rsp + 0x28], 1
0x1800012dd: lea	rdx, [rcx + 8]
0x1800012e1: mov	qword ptr [rsp + 0x20], r8
0x1800012e6: lea	rax, [rip + 0x2ff3]
0x1800012ed: mov	rbx, rcx
0x1800012f0: mov	qword ptr [rcx], rax
0x1800012f3: xorps	xmm0, xmm0
0x1800012f6: lea	rcx, [rsp + 0x20]
0x1800012fb: movups	xmmword ptr [rdx], xmm0
0x1800012fe: call	qword ptr [rip + 0x2e2c]   ; VCRUNTIME140.dll!__std_exception_copy
0x180001304: lea	rax, [rip + 0x1f2ad5]
0x18000130b: mov	qword ptr [rbx], rax
0x18000130e: mov	rax, rbx
0x180001311: mov	rcx, qword ptr [rsp + 0x30]
0x180001316: xor	rcx, rsp
0x180001319: call	0x180002d70
0x18000131e: add	rsp, 0x40
0x180001322: pop	rbx
0x180001323: ret	
0x180001324: int3	
0x180001325: int3	
0x180001326: int3	
0x180001327: int3	
0x180001328: int3	
0x180001329: int3	
0x18000132a: int3	
0x18000132b: int3	
0x18000132c: int3	
0x18000132d: int3	
0x18000132e: int3	
0x18000132f: int3	
0x180001330: push	rbx
0x180001332: sub	rsp, 0x20
0x180001336: mov	rbx, rcx
0x180001339: mov	rax, rdx
0x18000133c: lea	rcx, [rip + 0x2f9d]
0x180001343: xorps	xmm0, xmm0
0x180001346: lea	rdx, [rbx + 8]
0x18000134a: mov	qword ptr [rbx], rcx
0x18000134d: lea	rcx, [rax + 8]
0x180001351: movups	xmmword ptr [rdx], xmm0
0x180001354: call	qword ptr [rip + 0x2dd6]   ; VCRUNTIME140.dll!__std_exception_copy
0x18000135a: lea	rax, [rip + 0x1f2a7f]
0x180001361: mov	qword ptr [rbx], rax
0x180001364: mov	rax, rbx
0x180001367: add	rsp, 0x20
0x18000136b: pop	rbx
0x18000136c: ret	
0x18000136d: int3	
0x18000136e: int3	
0x18000136f: int3	
0x180001370: mov	qword ptr [rsp + 0x10], rbx
0x180001375: push	rdi
0x180001376: sub	rsp, 0x30
0x18000137a: mov	rdi, rcx
0x18000137d: xor	ebx, ebx
0x18000137f: mov	rcx, qword ptr [rcx + 0x18]
0x180001383: test	rcx, rcx
0x180001386: je	0x1800013c5
0x180001388: mov	rdx, qword ptr [rdi + 0x28]
0x18000138c: sub	rdx, rcx
0x18000138f: and	rdx, 0xfffffffffffffff8
0x180001393: cmp	rdx, 0x1000
0x18000139a: jb	0x1800013b4
0x18000139c: mov	rax, qword ptr [rcx - 8]
0x1800013a0: add	rdx, 0x27
0x1800013a4: sub	rcx, rax
0x1800013a7: sub	rcx, 8
0x1800013ab: cmp	rcx, 0x1f
0x1800013af: ja	0x18000140d
0x1800013b1: mov	rcx, rax
0x1800013b4: call	0x180003144
0x1800013b9: mov	qword ptr [rdi + 0x18], rbx
0x1800013bd: mov	qword ptr [rdi + 0x20], rbx
0x1800013c1: mov	qword ptr [rdi + 0x28], rbx
0x1800013c5: mov	rcx, qword ptr [rdi + 8]
0x1800013c9: mov	rax, qword ptr [rcx + 8]
0x1800013cd: mov	qword ptr [rax], rbx
0x1800013d0: mov	rcx, qword ptr [rcx]
0x1800013d3: test	rcx, rcx
0x1800013d6: je	0x1800013f5
0x1800013d8: nop	dword ptr [rax + rax]
0x1800013e0: mov	rbx, qword ptr [rcx]
0x1800013e3: mov	edx, 0x20
0x1800013e8: call	0x180003144
0x1800013ed: mov	rcx, rbx
0x1800013f0: test	rbx, rbx
0x1800013f3: jne	0x1800013e0
0x1800013f5: mov	rcx, qword ptr [rdi + 8]
0x1800013f9: mov	edx, 0x20
0x1800013fe: mov	rbx, qword ptr [rsp + 0x48]
0x180001403: add	rsp, 0x30
0x180001407: pop	rdi
0x180001408: jmp	0x180003144
0x18000140d: xor	r9d, r9d
0x180001410: mov	qword ptr [rsp + 0x20], rbx
0x180001415: xor	r8d, r8d
0x180001418: xor	edx, edx
0x18000141a: xor	ecx, ecx
0x18000141c: call	qword ptr [rip + 0x2dae]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180001422: int3	
0x180001423: int3	
0x180001424: int3	
0x180001425: int3	
0x180001426: int3	
0x180001427: int3	
0x180001428: int3	
0x180001429: int3	
0x18000142a: int3	
0x18000142b: int3	
0x18000142c: int3	
0x18000142d: int3	
0x18000142e: int3	
0x18000142f: int3	
0x180001430: push	rbx
0x180001432: sub	rsp, 0x20
0x180001436: mov	rcx, qword ptr [rip + 0x61b343]
0x18000143d: test	rcx, rcx
0x180001440: je	0x1800014e9
0x180001446: mov	rax, qword ptr [rip + 0x61b35b]
0x18000144d: shr	rax, 3
0x180001451: cmp	rax, rcx
0x180001454: jbe	0x180001471
0x180001456: mov	rdx, qword ptr [rip + 0x61b31b]
0x18000145d: lea	rcx, [rip + 0x61b30c]
0x180001464: mov	r8, rdx
0x180001467: mov	rdx, qword ptr [rdx]
0x18000146a: call	0x180002030
0x18000146f: jmp	0x1800014e9
0x180001471: mov	rcx, qword ptr [rip + 0x61b300]
0x180001478: mov	rax, qword ptr [rcx + 8]
0x18000147c: mov	qword ptr [rax], 0
0x180001483: mov	rcx, qword ptr [rcx]
0x180001486: test	rcx, rcx
0x180001489: je	0x1800014a5
0x18000148b: nop	dword ptr [rax + rax]
0x180001490: mov	rbx, qword ptr [rcx]
0x180001493: mov	edx, 0x20
0x180001498: call	0x180003144
0x18000149d: mov	rcx, rbx
0x1800014a0: test	rbx, rbx
0x1800014a3: jne	0x180001490
0x1800014a5: mov	rax, qword ptr [rip + 0x61b2cc]
0x1800014ac: lea	r8, [rsp + 0x30]
0x1800014b1: mov	qword ptr [rax], rax
0x1800014b4: mov	rax, qword ptr [rip + 0x61b2bd]
0x1800014bb: mov	qword ptr [rax + 8], rax
0x1800014bf: mov	rax, qword ptr [rip + 0x61b2b2]
0x1800014c6: mov	rdx, qword ptr [rip + 0x61b2c3]
0x1800014cd: mov	rcx, qword ptr [rip + 0x61b2b4]
0x1800014d4: mov	qword ptr [rsp + 0x30], rax
0x1800014d9: mov	qword ptr [rip + 0x61b29c], 0
0x1800014e4: call	0x180001f60
0x1800014e9: mov	rbx, qword ptr [rip + 0x61b2c8]
0x1800014f0: cmp	rbx, qword ptr [rip + 0x61b2b9]
0x1800014f7: je	0x18000152a
0x1800014f9: nop	dword ptr [rax]
0x180001500: mov	rcx, qword ptr [rbx - 8]
0x180001504: add	rbx, -8
0x180001508: call	qword ptr [rip + 0x2b4a]   ; KERNEL32.dll!FreeLibrary
0x18000150e: mov	rax, qword ptr [rip + 0x61b29b]
0x180001515: cmp	rbx, rax
0x180001518: jne	0x180001500
0x18000151a: cmp	rax, qword ptr [rip + 0x61b297]
0x180001521: je	0x18000152a
0x180001523: mov	qword ptr [rip + 0x61b28e], rax
0x18000152a: add	rsp, 0x20
0x18000152e: pop	rbx
0x18000152f: ret	
0x180001530: sub	rsp, 0x48
0x180001534: test	rcx, rcx
0x180001537: je	0x180001695
0x18000153d: mov	rax, qword ptr [rcx]
0x180001540: test	rax, rax
0x180001543: je	0x180001695
0x180001549: mov	r9, qword ptr [rcx + 8]
0x18000154d: test	r9, r9
0x180001550: je	0x180001695
0x180001556: cmp	dword ptr [rax], 0xc0000005
0x18000155c: jne	0x180001695
0x180001562: test	byte ptr [rax + 4], 1
0x180001566: jne	0x180001695
0x18000156c: cmp	qword ptr [rip + 0x61b20c], 0
0x180001574: je	0x18000169c
0x18000157a: cmp	dword ptr [rax + 0x18], 2
0x18000157e: jb	0x180001695
0x180001584: cmp	qword ptr [rax + 0x20], 8
0x180001589: jne	0x180001695
0x18000158f: mov	r8, qword ptr [r9 + 0xf8]
0x180001596: mov	rax, r8
0x180001599: shr	rax, 8
0x18000159d: movzx	edx, al
0x1800015a0: movzx	eax, r8b
0x1800015a4: movabs	rcx, 0xcbf29ce484222325
0x1800015ae: xor	rax, rcx
0x1800015b1: movabs	r10, 0x100000001b3
0x1800015bb: imul	rax, r10
0x1800015bf: xor	rdx, rax
0x1800015c2: imul	rdx, r10
0x1800015c6: mov	rax, r8
0x1800015c9: shr	rax, 0x10
0x1800015cd: movzx	ecx, al
0x1800015d0: xor	rdx, rcx
0x1800015d3: imul	rdx, r10
0x1800015d7: mov	rax, r8
0x1800015da: shr	rax, 0x18
0x1800015de: movzx	ecx, al
0x1800015e1: xor	rdx, rcx
0x1800015e4: imul	rdx, r10
0x1800015e8: mov	rax, r8
0x1800015eb: shr	rax, 0x20
0x1800015ef: movzx	ecx, al
0x1800015f2: xor	rdx, rcx
0x1800015f5: imul	rdx, r10
0x1800015f9: mov	rax, r8
0x1800015fc: shr	rax, 0x28
0x180001600: movzx	ecx, al
0x180001603: xor	rdx, rcx
0x180001606: imul	rdx, r10
0x18000160a: mov	rax, r8
0x18000160d: shr	rax, 0x30
0x180001611: movzx	ecx, al
0x180001614: xor	rcx, rdx
0x180001617: imul	rcx, r10
0x18000161b: mov	rax, r8
0x18000161e: shr	rax, 0x38
0x180001622: xor	rcx, rax
0x180001625: imul	rcx, r10
0x180001629: and	rcx, qword ptr [rip + 0x61b170]
0x180001630: shl	rcx, 4
0x180001634: add	rcx, qword ptr [rip + 0x61b14d]
0x18000163b: mov	rax, qword ptr [rcx + 8]
0x18000163f: mov	rdx, qword ptr [rip + 0x61b132]
0x180001646: cmp	rax, rdx
0x180001649: je	0x180001665
0x18000164b: mov	rcx, qword ptr [rcx]
0x18000164e: cmp	r8, qword ptr [rax + 0x10]
0x180001652: je	0x180001667
0x180001654: cmp	rax, rcx
0x180001657: je	0x180001665
0x180001659: mov	rax, qword ptr [rax + 8]
0x18000165d: cmp	r8, qword ptr [rax + 0x10]
0x180001661: jne	0x180001654
0x180001663: jmp	0x180001667
0x180001665: xor	eax, eax
0x180001667: mov	rcx, rdx
0x18000166a: test	rax, rax
0x18000166d: cmovne	rcx, rax
0x180001671: cmp	rcx, rdx
0x180001674: je	0x180001695
0x180001676: mov	rax, qword ptr [rcx + 0x18]
0x18000167a: test	rax, rax
0x18000167d: je	0x180001695
0x18000167f: cmp	rax, r8
0x180001682: je	0x180001695
0x180001684: mov	qword ptr [r9 + 0xf8], rax
0x18000168b: mov	eax, 0xffffffff
0x180001690: add	rsp, 0x48
0x180001694: ret	
0x180001695: xor	eax, eax
0x180001697: add	rsp, 0x48
0x18000169b: ret	
0x18000169c: lea	rdx, [rip + 0x2776d]
0x1800016a3: lea	rcx, [rsp + 0x20]
0x1800016a8: call	0x1800012c0
0x1800016ad: lea	rdx, [rip + 0x6198bc]
0x1800016b4: lea	rcx, [rsp + 0x20]
0x1800016b9: call	0x180003c1c
0x1800016be: int3	
0x1800016bf: int3	
0x1800016c0: mov	qword ptr [rsp + 0x10], rbx
0x1800016c5: mov	qword ptr [rsp + 0x18], rsi
0x1800016ca: push	rdi
0x1800016cb: sub	rsp, 0xb0
0x1800016d2: movaps	xmmword ptr [rsp + 0xa0], xmm6
0x1800016da: mov	qword ptr [rsp + 0x38], rcx
0x1800016df: xor	esi, esi
0x1800016e1: mov	qword ptr [rcx + 0x10], rsi
0x1800016e5: mov	rax, rcx
0x1800016e8: cmp	qword ptr [rcx + 0x18], 0xf
0x1800016ed: jbe	0x1800016f2
0x1800016ef: mov	rax, qword ptr [rcx]
0x1800016f2: mov	byte ptr [rax], sil
0x1800016f5: cmp	qword ptr [rip + 0x61b0cc], rsi
0x1800016fc: je	0x180001744
0x1800016fe: cmp	qword ptr [rcx + 0x18], 0x27
0x180001703: jb	0x18000172e
0x180001705: mov	rbx, qword ptr [rcx]
0x180001708: mov	qword ptr [rcx + 0x10], 0x27
0x180001710: mov	r8d, 0x27
0x180001716: lea	rdx, [rip + 0x276cb]
0x18000171d: mov	rcx, rbx
0x180001720: call	0x180003d89
0x180001725: mov	byte ptr [rbx + 0x27], sil
0x180001729: jmp	0x1800019c7
0x18000172e: lea	r9, [rip + 0x276b3]
0x180001735: mov	edx, 0x27
0x18000173a: call	0x180002760
0x18000173f: jmp	0x1800019c7
0x180001744: movss	xmm0, dword ptr [rip + 0x618aa0]
0x18000174c: divss	xmm0, dword ptr [rip + 0x61b01c]
0x180001754: call	0x180003d8f
0x180001759: xor	eax, eax
0x18000175b: movss	xmm6, dword ptr [rip + 0x618a8d]
0x180001763: comiss	xmm0, xmm6
0x180001766: jb	0x180001780
0x180001768: subss	xmm0, xmm6
0x18000176c: comiss	xmm0, xmm6
0x18000176f: jae	0x180001780
0x180001771: movabs	rbx, 0x8000000000000000
0x18000177b: mov	rax, rbx
0x18000177e: jmp	0x18000178a
0x180001780: movabs	rbx, 0x8000000000000000
0x18000178a: cvttss2si	rdi, xmm0
0x18000178f: add	rdi, rax
0x180001792: mov	rcx, qword ptr [rip + 0x61afe7]
0x180001799: xorps	xmm0, xmm0
0x18000179c: test	rcx, rcx
0x18000179f: js	0x1800017a8
0x1800017a1: cvtsi2ss	xmm0, rcx
0x1800017a6: jmp	0x1800017bd
0x1800017a8: mov	rax, rcx
0x1800017ab: shr	rax, 1
0x1800017ae: and	ecx, 1
0x1800017b1: or	rax, rcx
0x1800017b4: cvtsi2ss	xmm0, rax
0x1800017b9: addss	xmm0, xmm0
0x1800017bd: divss	xmm0, dword ptr [rip + 0x61afab]
0x1800017c5: call	0x180003d8f
0x1800017ca: xor	eax, eax
0x1800017cc: comiss	xmm0, xmm6
0x1800017cf: jb	0x1800017dd
0x1800017d1: subss	xmm0, xmm6
0x1800017d5: comiss	xmm0, xmm6
0x1800017d8: jae	0x1800017dd
0x1800017da: mov	rax, rbx
0x1800017dd: cvttss2si	rdx, xmm0
0x1800017e2: add	rdx, rax
0x1800017e5: cmp	rdx, rdi
0x1800017e8: cmovb	rdx, rdi
0x1800017ec: cmp	rdx, qword ptr [rip + 0x61afb5]
0x1800017f3: jbe	0x1800017fa
0x1800017f5: call	0x180002580
0x1800017fa: mov	rax, qword ptr [rip + 0x61afbf]
0x180001801: mov	rcx, qword ptr [rip + 0x61afa8]
0x180001808: sub	rax, rcx
0x18000180b: sar	rax, 3
0x18000180f: cmp	rax, 0x131eb
0x180001815: jae	0x1800018c1
0x18000181b: mov	rdi, qword ptr [rip + 0x61af96]
0x180001822: sub	rdi, rcx
0x180001825: sar	rdi, 3
0x180001829: mov	ecx, 0x98f7f
0x18000182e: call	0x180002d90
0x180001833: test	rax, rax
0x180001836: je	0x1800018e5
0x18000183c: lea	rbx, [rax + 0x27]
0x180001840: and	rbx, 0xffffffffffffffe0
0x180001844: mov	qword ptr [rbx - 8], rax
0x180001848: mov	r8, qword ptr [rip + 0x61af69]
0x18000184f: mov	rdx, qword ptr [rip + 0x61af5a]
0x180001856: sub	r8, rdx
0x180001859: mov	rcx, rbx
0x18000185c: call	0x180003d89
0x180001861: mov	rcx, qword ptr [rip + 0x61af48]
0x180001868: test	rcx, rcx
0x18000186b: je	0x1800018a1
0x18000186d: mov	rdx, qword ptr [rip + 0x61af4c]
0x180001874: sub	rdx, rcx
0x180001877: and	rdx, 0xfffffffffffffff8
0x18000187b: mov	rax, rcx
0x18000187e: cmp	rdx, 0x1000
0x180001885: jb	0x18000189c
0x180001887: add	rdx, 0x27
0x18000188b: mov	rcx, qword ptr [rcx - 8]
0x18000188f: sub	rax, rcx
0x180001892: sub	rax, 8
0x180001896: cmp	rax, 0x1f
0x18000189a: ja	0x1800018e5
0x18000189c: call	0x180003144
0x1800018a1: mov	qword ptr [rip + 0x61af08], rbx
0x1800018a8: lea	rax, [rbx + rdi*8]
0x1800018ac: mov	qword ptr [rip + 0x61af05], rax
0x1800018b3: lea	rax, [rbx + 0x98f58]
0x1800018ba: mov	qword ptr [rip + 0x61aeff], rax
0x1800018c1: lea	rbx, [rip + 0x27708]
0x1800018c8: lea	rsi, [rip + 0x1f2509]
0x1800018cf: nop	
0x1800018d0: cmp	rbx, rsi
0x1800018d3: je	0x1800019a5
0x1800018d9: cmp	qword ptr [rbx], 0
0x1800018dd: je	0x1800019e3
0x1800018e3: jmp	0x1800018fb
0x1800018e5: mov	qword ptr [rsp + 0x20], rsi
0x1800018ea: xor	r9d, r9d
0x1800018ed: xor	r8d, r8d
0x1800018f0: xor	edx, edx
0x1800018f2: xor	ecx, ecx
0x1800018f4: call	qword ptr [rip + 0x28d6]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x1800018fa: int3	
0x1800018fb: mov	rcx, qword ptr [rbx + 8]
0x1800018ff: test	rcx, rcx
0x180001902: je	0x180001a05
0x180001908: mov	rax, qword ptr [rbx + 0x10]
0x18000190c: test	rax, rax
0x18000190f: je	0x180001a05
0x180001915: cmp	byte ptr [rcx], 0
0x180001918: je	0x180001a05
0x18000191e: cmp	byte ptr [rax], 0
0x180001921: je	0x180001a05
0x180001927: call	qword ptr [rip + 0x26fb]   ; KERNEL32.dll!LoadLibraryA
0x18000192d: mov	rdi, rax
0x180001930: mov	qword ptr [rsp + 0x30], rax
0x180001935: test	rax, rax
0x180001938: jne	0x180001940
0x18000193a: call	qword ptr [rip + 0x26e0]   ; KERNEL32.dll!GetLastError
0x180001940: mov	rdx, qword ptr [rip + 0x61ae71]
0x180001947: cmp	rdx, qword ptr [rip + 0x61ae72]
0x18000194e: je	0x18000195d
0x180001950: mov	qword ptr [rdx], rdi
0x180001953: add	qword ptr [rip + 0x61ae5d], 8
0x18000195b: jmp	0x180001967
0x18000195d: lea	r8, [rsp + 0x30]
0x180001962: call	0x180002260
0x180001967: mov	rdx, qword ptr [rbx + 0x10]
0x18000196b: mov	rcx, rdi
0x18000196e: call	qword ptr [rip + 0x26dc]   ; KERNEL32.dll!GetProcAddress
0x180001974: mov	rdi, rax
0x180001977: test	rax, rax
0x18000197a: jne	0x180001982
0x18000197c: call	qword ptr [rip + 0x269e]   ; KERNEL32.dll!GetLastError
0x180001982: mov	qword ptr [rsp + 0x30], rdi
0x180001987: lea	r9, [rsp + 0x30]
0x18000198c: mov	r8, rbx
0x18000198f: lea	rdx, [rsp + 0x90]
0x180001997: call	0x180001b20
0x18000199c: add	rbx, 0x18
0x1800019a0: jmp	0x1800018d0
0x1800019a5: lea	rdx, [rip - 0x47c]
0x1800019ac: mov	ecx, 1
0x1800019b1: call	qword ptr [rip + 0x2691]   ; KERNEL32.dll!AddVectoredExceptionHandler
0x1800019b7: mov	qword ptr [rip + 0x61ae0a], rax
0x1800019be: test	rax, rax
0x1800019c1: je	0x180001a27
0x1800019c3: mov	al, 1
0x1800019c5: jmp	0x1800019c9
0x1800019c7: xor	al, al
0x1800019c9: lea	r11, [rsp + 0xb0]
0x1800019d1: mov	rbx, qword ptr [r11 + 0x18]
0x1800019d5: mov	rsi, qword ptr [r11 + 0x20]
0x1800019d9: movaps	xmm6, xmmword ptr [r11 - 0x10]
0x1800019de: mov	rsp, r11
0x1800019e1: pop	rdi
0x1800019e2: ret	
0x1800019e3: lea	rdx, [rip + 0x27456]
0x1800019ea: lea	rcx, [rsp + 0x48]
0x1800019ef: call	0x1800012c0
0x1800019f4: lea	rdx, [rip + 0x619575]
0x1800019fb: lea	rcx, [rsp + 0x48]
0x180001a00: call	0x180003c1c
0x180001a05: lea	rdx, [rip + 0x2747c]
0x180001a0c: lea	rcx, [rsp + 0x60]
0x180001a11: call	0x1800012c0
0x180001a16: lea	rdx, [rip + 0x619553]
0x180001a1d: lea	rcx, [rsp + 0x60]
0x180001a22: call	0x180003c1c
0x180001a27: lea	rdx, [rip + 0x27432]
0x180001a2e: lea	rcx, [rsp + 0x78]
0x180001a33: call	0x1800012c0
0x180001a38: lea	rdx, [rip + 0x619531]
0x180001a3f: lea	rcx, [rsp + 0x78]
0x180001a44: call	0x180003c1c
0x180001a49: int3	
0x180001a4a: int3	
0x180001a4b: int3	
0x180001a4c: int3	
0x180001a4d: int3	
0x180001a4e: int3	
0x180001a4f: int3	
0x180001a50: mov	qword ptr [rsp + 8], rbx
0x180001a55: mov	qword ptr [rsp + 0x18], rsi
0x180001a5a: push	rdi
0x180001a5b: sub	rsp, 0x30
0x180001a5f: mov	rax, qword ptr [rip + 0x61a5da]
0x180001a66: xor	rax, rsp
0x180001a69: mov	qword ptr [rsp + 0x28], rax
0x180001a6e: movabs	rbx, 0x279e8b810ad
0x180001a78: mov	eax, 0x80000000
0x180001a7d: sub	rbx, rdx
0x180001a80: mov	ecx, 0xffffffff
0x180001a85: add	rax, rbx
0x180001a88: mov	rdi, rdx
0x180001a8b: cmp	rax, rcx
0x180001a8e: ja	0x180001af6
0x180001a90: lea	r9, [rsp + 0x20]
0x180001a95: mov	dword ptr [rsp + 0x20], 0
0x180001a9d: mov	edx, 4
0x180001aa2: lea	rcx, [rdi + 3]
0x180001aa6: mov	r8d, 0x40
0x180001aac: call	qword ptr [rip + 0x2556]   ; KERNEL32.dll!VirtualProtect
0x180001ab2: test	eax, eax
0x180001ab4: je	0x180001af6
0x180001ab6: mov	dword ptr [rdi + 3], ebx
0x180001ab9: call	qword ptr [rip + 0x2551]   ; KERNEL32.dll!GetCurrentProcess
0x180001abf: mov	r8d, 7
0x180001ac5: mov	rdx, rdi
0x180001ac8: mov	rcx, rax
0x180001acb: call	qword ptr [rip + 0x258f]   ; KERNEL32.dll!FlushInstructionCache
0x180001ad1: mov	r8d, dword ptr [rsp + 0x20]
0x180001ad6: lea	r9, [rsp + 0x24]
0x180001adb: mov	edx, 4
0x180001ae0: mov	dword ptr [rsp + 0x24], 0
0x180001ae8: lea	rcx, [rdi + 3]
0x180001aec: call	qword ptr [rip + 0x2516]   ; KERNEL32.dll!VirtualProtect
0x180001af2: mov	al, 1
0x180001af4: jmp	0x180001af8
0x180001af6: xor	al, al
0x180001af8: mov	rcx, qword ptr [rsp + 0x28]
0x180001afd: xor	rcx, rsp
0x180001b00: call	0x180002d70
0x180001b05: mov	rbx, qword ptr [rsp + 0x40]
0x180001b0a: mov	rsi, qword ptr [rsp + 0x50]
0x180001b0f: add	rsp, 0x30
0x180001b13: pop	rdi
0x180001b14: ret	
0x180001b15: int3	
0x180001b16: int3	
0x180001b17: int3	
0x180001b18: int3	
0x180001b19: int3	
0x180001b1a: int3	
0x180001b1b: int3	
0x180001b1c: int3	
0x180001b1d: int3	
0x180001b1e: int3	
0x180001b1f: int3	
0x180001b20: mov	qword ptr [rsp + 8], rbx
0x180001b25: push	rbp
0x180001b26: push	rsi
0x180001b27: push	rdi
0x180001b28: push	r14
0x180001b2a: push	r15
0x180001b2c: sub	rsp, 0x30
0x180001b30: mov	r15, r9
0x180001b33: mov	rdi, r8
0x180001b36: mov	r14, rdx
0x180001b39: movzx	ebp, byte ptr [r8]
0x180001b3d: movabs	rax, 0xcbf29ce484222325
0x180001b47: xor	rbp, rax
0x180001b4a: movabs	rcx, 0x100000001b3
0x180001b54: imul	rbp, rcx
0x180001b58: movzx	eax, byte ptr [r8 + 1]
0x180001b5d: xor	rbp, rax
0x180001b60: imul	rbp, rcx
0x180001b64: movzx	eax, byte ptr [r8 + 2]
0x180001b69: xor	rbp, rax
0x180001b6c: imul	rbp, rcx
0x180001b70: movzx	eax, byte ptr [r8 + 3]
0x180001b75: xor	rbp, rax
0x180001b78: imul	rbp, rcx
0x180001b7c: movzx	eax, byte ptr [r8 + 4]
0x180001b81: xor	rbp, rax
0x180001b84: imul	rbp, rcx
0x180001b88: movzx	eax, byte ptr [r8 + 5]
0x180001b8d: xor	rbp, rax
0x180001b90: imul	rbp, rcx
0x180001b94: movzx	eax, byte ptr [r8 + 6]
0x180001b99: xor	rbp, rax
0x180001b9c: imul	rbp, rcx
0x180001ba0: movzx	eax, byte ptr [r8 + 7]
0x180001ba5: xor	rbp, rax
0x180001ba8: imul	rbp, rcx
0x180001bac: mov	rdx, rbp
0x180001baf: and	rdx, qword ptr [rip + 0x61abea]
0x180001bb6: add	rdx, rdx
0x180001bb9: mov	rcx, qword ptr [rip + 0x61abc8]
0x180001bc0: mov	rax, qword ptr [rcx + rdx*8 + 8]
0x180001bc5: mov	rsi, qword ptr [rip + 0x61abac]
0x180001bcc: cmp	rax, rsi
0x180001bcf: je	0x180001c07
0x180001bd1: mov	rdx, qword ptr [rcx + rdx*8]
0x180001bd5: mov	rcx, qword ptr [r8]
0x180001bd8: cmp	rcx, qword ptr [rax + 0x10]
0x180001bdc: je	0x180001bef
0x180001bde: nop	
0x180001be0: cmp	rax, rdx
0x180001be3: je	0x180001c04
0x180001be5: mov	rax, qword ptr [rax + 8]
0x180001be9: cmp	rcx, qword ptr [rax + 0x10]
0x180001bed: jne	0x180001be0
0x180001bef: mov	rsi, qword ptr [rax]
0x180001bf2: test	rax, rax
0x180001bf5: je	0x180001c07
0x180001bf7: mov	qword ptr [r14], rax
0x180001bfa: mov	byte ptr [r14 + 8], 0
0x180001bff: jmp	0x180001df0
0x180001c04: mov	rsi, rax
0x180001c07: movabs	rax, 0x7ffffffffffffff
0x180001c11: cmp	qword ptr [rip + 0x61ab68], rax
0x180001c18: jne	0x180001c28
0x180001c1a: lea	rcx, [rip + 0x2736f]
0x180001c21: call	qword ptr [rip + 0x24c9]   ; MSVCP140.dll!?_Xlength_error@std@@YAXPEBD@Z
0x180001c27: int3	
0x180001c28: lea	rax, [rip + 0x61ab49]
0x180001c2f: mov	qword ptr [rsp + 0x20], rax
0x180001c34: mov	qword ptr [rsp + 0x28], 0
0x180001c3d: mov	ecx, 0x20
0x180001c42: call	0x180002d90
0x180001c47: mov	rbx, rax
0x180001c4a: mov	qword ptr [rsp + 0x28], rax
0x180001c4f: mov	rcx, qword ptr [rdi]
0x180001c52: mov	qword ptr [rax + 0x10], rcx
0x180001c56: mov	rcx, qword ptr [r15]
0x180001c59: mov	qword ptr [rax + 0x18], rcx
0x180001c5d: mov	rdx, qword ptr [rip + 0x61ab1c]
0x180001c64: lea	rcx, [rdx + 1]
0x180001c68: xorps	xmm0, xmm0
0x180001c6b: test	rcx, rcx
0x180001c6e: js	0x180001c77
0x180001c70: cvtsi2ss	xmm0, rcx
0x180001c75: jmp	0x180001c8c
0x180001c77: mov	rax, rcx
0x180001c7a: shr	rax, 1
0x180001c7d: and	ecx, 1
0x180001c80: or	rax, rcx
0x180001c83: cvtsi2ss	xmm0, rax
0x180001c88: addss	xmm0, xmm0
0x180001c8c: mov	rdi, qword ptr [rip + 0x61ab15]
0x180001c93: xorps	xmm2, xmm2
0x180001c96: test	rdi, rdi
0x180001c99: js	0x180001ca2
0x180001c9b: cvtsi2ss	xmm2, rdi
0x180001ca0: jmp	0x180001cba
0x180001ca2: mov	rcx, rdi
0x180001ca5: shr	rcx, 1
0x180001ca8: mov	rax, rdi
0x180001cab: and	eax, 1
0x180001cae: or	rcx, rax
0x180001cb1: cvtsi2ss	xmm2, rcx
0x180001cb6: addss	xmm2, xmm2
0x180001cba: movaps	xmm1, xmm0
0x180001cbd: divss	xmm1, xmm2
0x180001cc1: movss	xmm3, dword ptr [rip + 0x61aaa7]
0x180001cc9: comiss	xmm1, xmm3
0x180001ccc: jbe	0x180001d89
0x180001cd2: divss	xmm0, xmm3
0x180001cd6: call	0x180003d8f
0x180001cdb: xor	ecx, ecx
0x180001cdd: movss	xmm1, dword ptr [rip + 0x61850b]
0x180001ce5: comiss	xmm0, xmm1
0x180001ce8: jb	0x180001d00
0x180001cea: subss	xmm0, xmm1
0x180001cee: comiss	xmm0, xmm1
0x180001cf1: jae	0x180001d00
0x180001cf3: movabs	rax, 0x8000000000000000
0x180001cfd: mov	rcx, rax
0x180001d00: cvttss2si	rax, xmm0
0x180001d05: add	rax, rcx
0x180001d08: mov	ecx, 8
0x180001d0d: cmp	rax, rcx
0x180001d10: cmova	rcx, rax
0x180001d14: cmp	rdi, rcx
0x180001d17: jae	0x180001d35
0x180001d19: cmp	rdi, 0x200
0x180001d20: jae	0x180001d32
0x180001d22: lea	rax, [rdi*8]
0x180001d2a: mov	rdi, rax
0x180001d2d: cmp	rax, rcx
0x180001d30: jae	0x180001d35
0x180001d32: mov	rdi, rcx
0x180001d35: mov	rdx, rdi
0x180001d38: call	0x180002580
0x180001d3d: mov	rcx, qword ptr [rip + 0x61aa5c]
0x180001d44: and	rcx, rbp
0x180001d47: add	rcx, rcx
0x180001d4a: mov	rdx, qword ptr [rip + 0x61aa37]
0x180001d51: mov	rax, qword ptr [rdx + rcx*8 + 8]
0x180001d56: mov	rsi, qword ptr [rip + 0x61aa1b]
0x180001d5d: cmp	rax, rsi
0x180001d60: je	0x180001d82
0x180001d62: mov	rdx, qword ptr [rdx + rcx*8]
0x180001d66: mov	rcx, qword ptr [rbx + 0x10]
0x180001d6a: cmp	rcx, qword ptr [rax + 0x10]
0x180001d6e: je	0x180001d7f
0x180001d70: cmp	rax, rdx
0x180001d73: je	0x180001dcc
0x180001d75: mov	rax, qword ptr [rax + 8]
0x180001d79: cmp	rcx, qword ptr [rax + 0x10]
0x180001d7d: jne	0x180001d70
0x180001d7f: mov	rsi, qword ptr [rax]
0x180001d82: mov	rdx, qword ptr [rip + 0x61a9f7]
0x180001d89: mov	r8, qword ptr [rsi + 8]
0x180001d8d: inc	rdx
0x180001d90: mov	qword ptr [rip + 0x61a9e9], rdx
0x180001d97: mov	qword ptr [rbx], rsi
0x180001d9a: mov	qword ptr [rbx + 8], r8
0x180001d9e: mov	qword ptr [r8], rbx
0x180001da1: mov	qword ptr [rsi + 8], rbx
0x180001da5: mov	rax, qword ptr [rip + 0x61a9f4]
0x180001dac: and	rax, rbp
0x180001daf: add	rax, rax
0x180001db2: mov	rcx, qword ptr [rip + 0x61a9cf]
0x180001db9: mov	rdx, qword ptr [rcx + rax*8]
0x180001dbd: cmp	rdx, qword ptr [rip + 0x61a9b4]
0x180001dc4: jne	0x180001dd1
0x180001dc6: mov	qword ptr [rcx + rax*8], rbx
0x180001dca: jmp	0x180001de3
0x180001dcc: mov	rsi, rax
0x180001dcf: jmp	0x180001d82
0x180001dd1: cmp	rdx, rsi
0x180001dd4: jne	0x180001ddc
0x180001dd6: mov	qword ptr [rcx + rax*8], rbx
0x180001dda: jmp	0x180001de8
0x180001ddc: cmp	qword ptr [rcx + rax*8 + 8], r8
0x180001de1: jne	0x180001de8
0x180001de3: mov	qword ptr [rcx + rax*8 + 8], rbx
0x180001de8: mov	qword ptr [r14], rbx
0x180001deb: mov	byte ptr [r14 + 8], 1
0x180001df0: mov	rax, r14
0x180001df3: mov	rbx, qword ptr [rsp + 0x60]
0x180001df8: add	rsp, 0x30
0x180001dfc: pop	r15
0x180001dfe: pop	r14
0x180001e00: pop	rdi
0x180001e01: pop	rsi
0x180001e02: pop	rbp
0x180001e03: ret	
0x180001e04: int3	
0x180001e05: int3	
0x180001e06: int3	
0x180001e07: int3	
0x180001e08: int3	
0x180001e09: int3	
0x180001e0a: int3	
0x180001e0b: int3	
0x180001e0c: int3	
0x180001e0d: int3	
0x180001e0e: int3	
0x180001e0f: int3	
0x180001e10: push	rbx
0x180001e12: sub	rsp, 0x30
0x180001e16: mov	rbx, rcx
0x180001e19: mov	rcx, qword ptr [rcx]
0x180001e1c: test	rcx, rcx
0x180001e1f: je	0x180001e5f
0x180001e21: mov	rdx, qword ptr [rbx + 0x10]
0x180001e25: sub	rdx, rcx
0x180001e28: and	rdx, 0xfffffffffffffff8
0x180001e2c: cmp	rdx, 0x1000
0x180001e33: jb	0x180001e4d
0x180001e35: mov	rax, qword ptr [rcx - 8]
0x180001e39: add	rdx, 0x27
0x180001e3d: sub	rcx, rax
0x180001e40: sub	rcx, 8
0x180001e44: cmp	rcx, 0x1f
0x180001e48: ja	0x180001e65
0x180001e4a: mov	rcx, rax
0x180001e4d: call	0x180003144
0x180001e52: xor	eax, eax
0x180001e54: mov	qword ptr [rbx], rax
0x180001e57: mov	qword ptr [rbx + 8], rax
0x180001e5b: mov	qword ptr [rbx + 0x10], rax
0x180001e5f: add	rsp, 0x30
0x180001e63: pop	rbx
0x180001e64: ret	
0x180001e65: xor	eax, eax
0x180001e67: xor	r9d, r9d
0x180001e6a: xor	r8d, r8d
0x180001e6d: mov	qword ptr [rsp + 0x20], rax
0x180001e72: xor	edx, edx
0x180001e74: xor	ecx, ecx
0x180001e76: call	qword ptr [rip + 0x2354]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180001e7c: int3	
0x180001e7d: int3	
0x180001e7e: int3	
0x180001e7f: int3	
0x180001e80: push	rdi
0x180001e82: sub	rsp, 0x20
0x180001e86: mov	rdx, qword ptr [rcx]
0x180001e89: mov	rdi, rcx
0x180001e8c: mov	rax, qword ptr [rdx + 8]
0x180001e90: mov	qword ptr [rax], 0
0x180001e97: mov	rcx, qword ptr [rdx]
0x180001e9a: test	rcx, rcx
0x180001e9d: je	0x180001eca
0x180001e9f: mov	qword ptr [rsp + 0x38], rbx
0x180001ea4: nop	dword ptr [rax]
0x180001ea8: nop	dword ptr [rax + rax]
0x180001eb0: mov	rbx, qword ptr [rcx]
0x180001eb3: mov	edx, 0x20
0x180001eb8: call	0x180003144
0x180001ebd: mov	rcx, rbx
0x180001ec0: test	rbx, rbx
0x180001ec3: jne	0x180001eb0
0x180001ec5: mov	rbx, qword ptr [rsp + 0x38]
0x180001eca: mov	rcx, qword ptr [rdi]
0x180001ecd: mov	edx, 0x20
0x180001ed2: add	rsp, 0x20
0x180001ed6: pop	rdi
0x180001ed7: jmp	0x180003144
0x180001edc: int3	
0x180001edd: int3	
0x180001ede: int3	
0x180001edf: int3	
0x180001ee0: push	rbx
0x180001ee2: sub	rsp, 0x30
0x180001ee6: mov	rdx, qword ptr [rcx + 0x18]
0x180001eea: mov	rbx, rcx
0x180001eed: cmp	rdx, 0xf
0x180001ef1: jbe	0x180001f1f
0x180001ef3: mov	rcx, qword ptr [rcx]
0x180001ef6: inc	rdx
0x180001ef9: cmp	rdx, 0x1000
0x180001f00: jb	0x180001f1a
0x180001f02: mov	rax, qword ptr [rcx - 8]
0x180001f06: add	rdx, 0x27
0x180001f0a: sub	rcx, rax
0x180001f0d: sub	rcx, 8
0x180001f11: cmp	rcx, 0x1f
0x180001f15: ja	0x180001f38
0x180001f17: mov	rcx, rax
0x180001f1a: call	0x180003144
0x180001f1f: mov	qword ptr [rbx + 0x10], 0
0x180001f27: mov	qword ptr [rbx + 0x18], 0xf
0x180001f2f: mov	byte ptr [rbx], 0
0x180001f32: add	rsp, 0x30
0x180001f36: pop	rbx
0x180001f37: ret	
0x180001f38: xor	r9d, r9d
0x180001f3b: mov	qword ptr [rsp + 0x20], 0
0x180001f44: xor	r8d, r8d
0x180001f47: xor	edx, edx
0x180001f49: xor	ecx, ecx
0x180001f4b: call	qword ptr [rip + 0x227f]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180001f51: int3	
0x180001f52: int3	
0x180001f53: int3	
0x180001f54: int3	
0x180001f55: int3	
0x180001f56: int3	
0x180001f57: int3	
0x180001f58: int3	
0x180001f59: int3	
0x180001f5a: int3	
0x180001f5b: int3	
0x180001f5c: int3	
0x180001f5d: int3	
0x180001f5e: int3	
0x180001f5f: int3	
0x180001f60: sub	rsp, 8
0x180001f64: mov	r10, rdx
0x180001f67: xor	eax, eax
0x180001f69: sub	rdx, rcx
0x180001f6c: mov	r9, rcx
0x180001f6f: add	rdx, 7
0x180001f73: shr	rdx, 3
0x180001f77: cmp	rcx, r10
0x180001f7a: cmova	rdx, rax
0x180001f7e: test	rdx, rdx
0x180001f81: je	0x180001fc2
0x180001f83: cmp	rdx, 2
0x180001f87: jb	0x180001fc2
0x180001f89: mov	rax, qword ptr [r8]
0x180001f8c: add	rcx, -8
0x180001f90: lea	rcx, [rcx + rdx*8]
0x180001f94: cmp	r9, r8
0x180001f97: ja	0x180001f9e
0x180001f99: cmp	rcx, r8
0x180001f9c: jae	0x180001fc2
0x180001f9e: mov	qword ptr [rsp], rdi
0x180001fa2: and	rdx, 0xfffffffffffffffe
0x180001fa6: mov	rdi, r9
0x180001fa9: lea	rdx, [rdx*8]
0x180001fb1: mov	rcx, rdx
0x180001fb4: shr	rcx, 3
0x180001fb8: rep stosq	qword ptr [rdi], rax
0x180001fbb: add	r9, rdx
0x180001fbe: mov	rdi, qword ptr [rsp]
0x180001fc2: cmp	r9, r10
0x180001fc5: je	0x180001fdf
0x180001fc7: nop	word ptr [rax + rax]
0x180001fd0: mov	rax, qword ptr [r8]
0x180001fd3: mov	qword ptr [r9], rax
0x180001fd6: add	r9, 8
0x180001fda: cmp	r9, r10
0x180001fdd: jne	0x180001fd0
0x180001fdf: add	rsp, 8
0x180001fe3: ret	
0x180001fe4: int3	
0x180001fe5: int3	
0x180001fe6: int3	
0x180001fe7: int3	
0x180001fe8: int3	
0x180001fe9: int3	
0x180001fea: int3	
0x180001feb: int3	
0x180001fec: int3	
0x180001fed: int3	
0x180001fee: int3	
0x180001fef: int3	
0x180001ff0: mov	rcx, qword ptr [rcx + 8]
0x180001ff4: test	rcx, rcx
0x180001ff7: je	0x180002003
0x180001ff9: mov	edx, 0x20
0x180001ffe: jmp	0x180003144
0x180002003: ret	
0x180002004: int3	
0x180002005: int3	
0x180002006: int3	
0x180002007: int3	
0x180002008: int3	
0x180002009: int3	
0x18000200a: int3	
0x18000200b: int3	
0x18000200c: int3	
0x18000200d: int3	
0x18000200e: int3	
0x18000200f: int3	
0x180002010: sub	rsp, 0x28
0x180002014: lea	rcx, [rip + 0x26f65]
0x18000201b: call	qword ptr [rip + 0x20cf]   ; MSVCP140.dll!?_Xlength_error@std@@YAXPEBD@Z
0x180002021: int3	
0x180002022: int3	
0x180002023: int3	
0x180002024: int3	
0x180002025: int3	
0x180002026: int3	
0x180002027: int3	
0x180002028: int3	
0x180002029: int3	
0x18000202a: int3	
0x18000202b: int3	
0x18000202c: int3	
0x18000202d: int3	
0x18000202e: int3	
0x18000202f: int3	
0x180002030: mov	rax, rsp
0x180002033: push	rbp
0x180002034: push	rsi
0x180002035: push	r14
0x180002037: sub	rsp, 0x50
0x18000203b: mov	rbp, r8
0x18000203e: mov	r14, rdx
0x180002041: mov	rsi, rcx
0x180002044: cmp	rdx, r8
0x180002047: je	0x18000223b
0x18000204d: mov	rdx, qword ptr [rcx + 0x18]
0x180002051: movabs	r8, 0x100000001b3
0x18000205b: mov	qword ptr [rax + 0x10], rbx
0x18000205f: mov	rbx, r14
0x180002062: mov	qword ptr [rax + 0x18], rdi
0x180002066: mov	qword ptr [rax + 0x20], r12
0x18000206a: mov	r12, qword ptr [rcx + 8]
0x18000206e: movzx	ecx, byte ptr [r14 + 0x10]
0x180002073: mov	qword ptr [rax - 0x20], r13
0x180002077: mov	r13, qword ptr [r14 + 8]
0x18000207b: mov	qword ptr [rax - 0x28], r15
0x18000207f: movabs	rax, 0xcbf29ce484222325
0x180002089: xor	rcx, rax
0x18000208c: mov	qword ptr [rsp + 0x30], rdx
0x180002091: movzx	eax, byte ptr [r14 + 0x11]
0x180002096: imul	rcx, r8
0x18000209a: xor	rcx, rax
0x18000209d: movzx	eax, byte ptr [r14 + 0x12]
0x1800020a2: imul	rcx, r8
0x1800020a6: xor	rcx, rax
0x1800020a9: movzx	eax, byte ptr [r14 + 0x13]
0x1800020ae: imul	rcx, r8
0x1800020b2: xor	rcx, rax
0x1800020b5: movzx	eax, byte ptr [r14 + 0x14]
0x1800020ba: imul	rcx, r8
0x1800020be: xor	rcx, rax
0x1800020c1: movzx	eax, byte ptr [r14 + 0x15]
0x1800020c6: imul	rcx, r8
0x1800020ca: xor	rcx, rax
0x1800020cd: movzx	eax, byte ptr [r14 + 0x16]
0x1800020d2: imul	rcx, r8
0x1800020d6: xor	rcx, rax
0x1800020d9: movzx	eax, byte ptr [r14 + 0x17]
0x1800020de: imul	rcx, r8
0x1800020e2: xor	rax, rcx
0x1800020e5: imul	rax, r8
0x1800020e9: and	rax, qword ptr [rsi + 0x30]
0x1800020ed: shl	rax, 4
0x1800020f1: add	rax, rdx
0x1800020f4: mov	qword ptr [rsp + 0x20], rax
0x1800020f9: mov	rcx, qword ptr [rax]
0x1800020fc: mov	r15, qword ptr [rax + 8]
0x180002100: mov	qword ptr [rsp + 0x28], rcx
0x180002105: nop	word ptr [rax + rax]
0x180002110: mov	rcx, rbx
0x180002113: mov	rdi, rbx
0x180002116: mov	rbx, qword ptr [rbx]
0x180002119: mov	edx, 0x20
0x18000211e: call	0x180003144
0x180002123: dec	qword ptr [rsi + 0x10]
0x180002127: cmp	rdi, r15
0x18000212a: je	0x180002149
0x18000212c: cmp	rbx, rbp
0x18000212f: jne	0x180002110
0x180002131: cmp	qword ptr [rsp + 0x28], r14
0x180002136: jne	0x180002214
0x18000213c: mov	rcx, qword ptr [rsp + 0x20]
0x180002141: mov	qword ptr [rcx], rbx
0x180002144: jmp	0x180002214
0x180002149: mov	rcx, qword ptr [rsp + 0x20]
0x18000214e: cmp	qword ptr [rsp + 0x28], r14
0x180002153: jne	0x18000215d
0x180002155: mov	qword ptr [rcx], r12
0x180002158: mov	rax, r12
0x18000215b: jmp	0x180002160
0x18000215d: mov	rax, r13
0x180002160: mov	qword ptr [rcx + 8], rax
0x180002164: cmp	rbx, rbp
0x180002167: je	0x180002214
0x18000216d: nop	dword ptr [rax]
0x180002170: movzx	r15d, byte ptr [rbx + 0x10]
0x180002175: movabs	rdx, 0x100000001b3
0x18000217f: movabs	rax, 0xcbf29ce484222325
0x180002189: xor	r15, rax
0x18000218c: movzx	eax, byte ptr [rbx + 0x11]
0x180002190: imul	r15, rdx
0x180002194: xor	r15, rax
0x180002197: movzx	eax, byte ptr [rbx + 0x12]
0x18000219b: imul	r15, rdx
0x18000219f: xor	r15, rax
0x1800021a2: movzx	eax, byte ptr [rbx + 0x13]
0x1800021a6: imul	r15, rdx
0x1800021aa: xor	r15, rax
0x1800021ad: movzx	eax, byte ptr [rbx + 0x14]
0x1800021b1: imul	r15, rdx
0x1800021b5: xor	r15, rax
0x1800021b8: movzx	eax, byte ptr [rbx + 0x15]
0x1800021bc: imul	r15, rdx
0x1800021c0: xor	r15, rax
0x1800021c3: movzx	eax, byte ptr [rbx + 0x16]
0x1800021c7: imul	r15, rdx
0x1800021cb: xor	r15, rax
0x1800021ce: movzx	eax, byte ptr [rbx + 0x17]
0x1800021d2: imul	r15, rdx
0x1800021d6: xor	r15, rax
0x1800021d9: imul	r15, rdx
0x1800021dd: and	r15, qword ptr [rsi + 0x30]
0x1800021e1: shl	r15, 4
0x1800021e5: add	r15, qword ptr [rsp + 0x30]
0x1800021ea: mov	r14, qword ptr [r15 + 8]
0x1800021ee: nop	
0x1800021f0: mov	rcx, rbx
0x1800021f3: mov	rdi, rbx
0x1800021f6: mov	rbx, qword ptr [rbx]
0x1800021f9: mov	edx, 0x20
0x1800021fe: call	0x180003144
0x180002203: dec	qword ptr [rsi + 0x10]
0x180002207: cmp	rdi, r14
0x18000220a: je	0x180002247
0x18000220c: cmp	rbx, rbp
0x18000220f: jne	0x1800021f0
0x180002211: mov	qword ptr [r15], rbx
0x180002214: mov	r12, qword ptr [rsp + 0x88]
0x18000221c: mov	rdi, qword ptr [rsp + 0x80]
0x180002224: mov	r15, qword ptr [rsp + 0x40]
0x180002229: mov	qword ptr [r13], rbx
0x18000222d: mov	qword ptr [rbx + 8], r13
0x180002231: mov	r13, qword ptr [rsp + 0x48]
0x180002236: mov	rbx, qword ptr [rsp + 0x78]
0x18000223b: mov	rax, rbp
0x18000223e: add	rsp, 0x50
0x180002242: pop	r14
0x180002244: pop	rsi
0x180002245: pop	rbp
0x180002246: ret	
0x180002247: mov	qword ptr [r15], r12
0x18000224a: mov	qword ptr [r15 + 8], r12
0x18000224e: cmp	rbx, rbp
0x180002251: jne	0x180002170
0x180002257: jmp	0x180002214
0x180002259: int3	
0x18000225a: int3	
0x18000225b: int3	
0x18000225c: int3	
0x18000225d: int3	
0x18000225e: int3	
0x18000225f: int3	
0x180002260: push	rbp
0x180002262: push	rsi
0x180002263: push	r15
0x180002265: sub	rsp, 0x30
0x180002269: mov	rax, qword ptr [rip + 0x61a548]
0x180002270: mov	rsi, rdx
0x180002273: mov	rbp, rdx
0x180002276: mov	r15, r8
0x180002279: mov	rdx, qword ptr [rip + 0x61a530]
0x180002280: movabs	r8, 0x1fffffffffffffff
0x18000228a: sub	rsi, rdx
0x18000228d: sub	rax, rdx
0x180002290: sar	rsi, 3
0x180002294: sar	rax, 3
0x180002298: cmp	rax, r8
0x18000229b: je	0x180002414
0x1800022a1: mov	rcx, qword ptr [rip + 0x61a518]
0x1800022a8: sub	rcx, rdx
0x1800022ab: mov	qword ptr [rsp + 0x50], rbx
0x1800022b0: sar	rcx, 3
0x1800022b4: mov	qword ptr [rsp + 0x60], rdi
0x1800022b9: mov	rdx, rcx
0x1800022bc: shr	rdx, 1
0x1800022bf: mov	qword ptr [rsp + 0x68], r14
0x1800022c4: lea	r14, [rax + 1]
0x1800022c8: mov	rax, r8
0x1800022cb: sub	rax, rdx
0x1800022ce: cmp	rcx, rax
0x1800022d1: ja	0x18000241a
0x1800022d7: lea	rax, [rdx + rcx]
0x1800022db: mov	rdi, r14
0x1800022de: cmp	rax, r14
0x1800022e1: cmovae	rdi, rax
0x1800022e5: cmp	rdi, r8
0x1800022e8: ja	0x18000241a
0x1800022ee: lea	rdi, [rdi*8]
0x1800022f6: test	rdi, rdi
0x1800022f9: jne	0x1800022ff
0x1800022fb: xor	ebx, ebx
0x1800022fd: jmp	0x18000233c
0x1800022ff: cmp	rdi, 0x1000
0x180002306: jb	0x180002331
0x180002308: lea	rcx, [rdi + 0x27]
0x18000230c: cmp	rcx, rdi
0x18000230f: jbe	0x18000241a
0x180002315: call	0x180002d90
0x18000231a: test	rax, rax
0x18000231d: je	0x1800023bd
0x180002323: lea	rbx, [rax + 0x27]
0x180002327: and	rbx, 0xffffffffffffffe0
0x18000232b: mov	qword ptr [rbx - 8], rax
0x18000232f: jmp	0x18000233c
0x180002331: mov	rcx, rdi
0x180002334: call	0x180002d90
0x180002339: mov	rbx, rax
0x18000233c: mov	rcx, qword ptr [r15]
0x18000233f: lea	rsi, [rbx + rsi*8]
0x180002343: mov	qword ptr [rsi], rcx
0x180002346: mov	rcx, rbx
0x180002349: mov	r8, qword ptr [rip + 0x61a468]
0x180002350: mov	rdx, qword ptr [rip + 0x61a459]
0x180002357: cmp	rbp, r8
0x18000235a: jne	0x180002361
0x18000235c: sub	r8, rdx
0x18000235f: jmp	0x18000237d
0x180002361: mov	r8, rbp
0x180002364: sub	r8, rdx
0x180002367: call	0x180003d89
0x18000236c: mov	r8, qword ptr [rip + 0x61a445]
0x180002373: lea	rcx, [rsi + 8]
0x180002377: sub	r8, rbp
0x18000237a: mov	rdx, rbp
0x18000237d: call	0x180003d89
0x180002382: mov	rcx, qword ptr [rip + 0x61a427]
0x180002389: test	rcx, rcx
0x18000238c: je	0x1800023dc
0x18000238e: mov	rdx, qword ptr [rip + 0x61a42b]
0x180002395: mov	rax, rcx
0x180002398: sub	rdx, rcx
0x18000239b: and	rdx, 0xfffffffffffffff8
0x18000239f: cmp	rdx, 0x1000
0x1800023a6: jb	0x1800023d7
0x1800023a8: mov	rcx, qword ptr [rcx - 8]
0x1800023ac: add	rdx, 0x27
0x1800023b0: sub	rax, rcx
0x1800023b3: sub	rax, 8
0x1800023b7: cmp	rax, 0x1f
0x1800023bb: jbe	0x1800023d7
0x1800023bd: xor	r9d, r9d
0x1800023c0: mov	qword ptr [rsp + 0x20], 0
0x1800023c9: xor	r8d, r8d
0x1800023cc: xor	edx, edx
0x1800023ce: xor	ecx, ecx
0x1800023d0: call	qword ptr [rip + 0x1dfa]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x1800023d6: int3	
0x1800023d7: call	0x180003144
0x1800023dc: lea	rcx, [rbx + r14*8]
0x1800023e0: mov	qword ptr [rip + 0x61a3c9], rbx
0x1800023e7: mov	r14, qword ptr [rsp + 0x68]
0x1800023ec: mov	rax, rsi
0x1800023ef: mov	qword ptr [rip + 0x61a3c2], rcx
0x1800023f6: lea	rcx, [rdi + rbx]
0x1800023fa: mov	rdi, qword ptr [rsp + 0x60]
0x1800023ff: mov	rbx, qword ptr [rsp + 0x50]
0x180002404: mov	qword ptr [rip + 0x61a3b5], rcx
0x18000240b: add	rsp, 0x30
0x18000240f: pop	r15
0x180002411: pop	rsi
0x180002412: pop	rbp
0x180002413: ret	
0x180002414: call	0x180002010
0x180002419: int3	
0x18000241a: call	0x180001200
0x18000241f: int3	
0x180002420: mov	qword ptr [rsp + 0x20], rbx
0x180002425: push	rbp
0x180002426: push	rdi
0x180002427: push	r14
0x180002429: sub	rsp, 0x30
0x18000242d: mov	rdi, qword ptr [rcx]
0x180002430: mov	r14, rcx
0x180002433: mov	rbx, r8
0x180002436: mov	r8, qword ptr [rcx + 8]
0x18000243a: mov	rcx, r8
0x18000243d: sub	rcx, rdi
0x180002440: mov	rax, rcx
0x180002443: sar	rax, 3
0x180002447: cmp	rax, rdx
0x18000244a: jae	0x180002545
0x180002450: movabs	rax, 0x1fffffffffffffff
0x18000245a: mov	qword ptr [rsp + 0x60], rsi
0x18000245f: cmp	rdx, rax
0x180002462: ja	0x18000256f
0x180002468: lea	rsi, [rdx*8]
0x180002470: xor	ebp, ebp
0x180002472: test	rsi, rsi
0x180002475: jne	0x18000247b
0x180002477: mov	edi, ebp
0x180002479: jmp	0x1800024b8
0x18000247b: cmp	rsi, 0x1000
0x180002482: jb	0x1800024ad
0x180002484: lea	rcx, [rsi + 0x27]
0x180002488: cmp	rcx, rsi
0x18000248b: jbe	0x18000256f
0x180002491: call	0x180002d90
0x180002496: test	rax, rax
0x180002499: je	0x18000252f
0x18000249f: lea	rdi, [rax + 0x27]
0x1800024a3: and	rdi, 0xffffffffffffffe0
0x1800024a7: mov	qword ptr [rdi - 8], rax
0x1800024ab: jmp	0x1800024b8
0x1800024ad: mov	rcx, rsi
0x1800024b0: call	0x180002d90
0x1800024b5: mov	rdi, rax
0x1800024b8: mov	rcx, qword ptr [r14]
0x1800024bb: mov	rax, qword ptr [r14 + 0x10]
0x1800024bf: sub	rax, rcx
0x1800024c2: sar	rax, 3
0x1800024c6: test	rax, rax
0x1800024c9: je	0x1800024f9
0x1800024cb: lea	rdx, [rax*8]
0x1800024d3: cmp	rdx, 0x1000
0x1800024da: jb	0x1800024f4
0x1800024dc: mov	rax, qword ptr [rcx - 8]
0x1800024e0: add	rdx, 0x27
0x1800024e4: sub	rcx, rax
0x1800024e7: sub	rcx, 8
0x1800024eb: cmp	rcx, 0x1f
0x1800024ef: ja	0x18000252f
0x1800024f1: mov	rcx, rax
0x1800024f4: call	0x180003144
0x1800024f9: lea	rax, [rsi + rdi]
0x1800024fd: mov	qword ptr [r14], rdi
0x180002500: mov	qword ptr [r14 + 8], rax
0x180002504: mov	qword ptr [r14 + 0x10], rax
0x180002508: cmp	rdi, rax
0x18000250b: je	0x18000251c
0x18000250d: nop	dword ptr [rax]
0x180002510: mov	qword ptr [rdi], rbx
0x180002513: add	rdi, 8
0x180002517: cmp	rdi, rax
0x18000251a: jne	0x180002510
0x18000251c: mov	rsi, qword ptr [rsp + 0x60]
0x180002521: mov	rbx, qword ptr [rsp + 0x68]
0x180002526: add	rsp, 0x30
0x18000252a: pop	r14
0x18000252c: pop	rdi
0x18000252d: pop	rbp
0x18000252e: ret	
0x18000252f: xor	r9d, r9d
0x180002532: mov	qword ptr [rsp + 0x20], rbp
0x180002537: xor	r8d, r8d
0x18000253a: xor	edx, edx
0x18000253c: xor	ecx, ecx
0x18000253e: call	qword ptr [rip + 0x1c8c]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180002544: int3	
0x180002545: add	rcx, 7
0x180002549: xor	ebp, ebp
0x18000254b: shr	rcx, 3
0x18000254f: cmp	rdi, r8
0x180002552: cmova	rcx, rbp
0x180002556: test	rcx, rcx
0x180002559: je	0x180002521
0x18000255b: mov	rax, rbx
0x18000255e: mov	rbx, qword ptr [rsp + 0x68]
0x180002563: rep stosq	qword ptr [rdi], rax
0x180002566: add	rsp, 0x30
0x18000256a: pop	r14
0x18000256c: pop	rdi
0x18000256d: pop	rbp
0x18000256e: ret	
0x18000256f: call	0x180001200
0x180002574: int3	
0x180002575: int3	
0x180002576: int3	
0x180002577: int3	
0x180002578: int3	
0x180002579: int3	
0x18000257a: int3	
0x18000257b: int3	
0x18000257c: int3	
0x18000257d: int3	
0x18000257e: int3	
0x18000257f: int3	
0x180002580: push	rbx
0x180002582: sub	rsp, 0x20
0x180002586: movabs	rax, 0xfffffffffffffff
0x180002590: mov	ebx, 1
0x180002595: bsr	rcx, rax
0x180002599: mov	eax, ebx
0x18000259b: shl	rax, cl
0x18000259e: cmp	rdx, rax
0x1800025a1: jbe	0x1800025b1
0x1800025a3: lea	rcx, [rip + 0x26a06]
0x1800025aa: call	qword ptr [rip + 0x1b40]   ; MSVCP140.dll!?_Xlength_error@std@@YAXPEBD@Z
0x1800025b0: int3	
0x1800025b1: lea	rax, [rdx - 1]
0x1800025b5: mov	qword ptr [rsp + 0x40], rdi
0x1800025ba: mov	rdi, qword ptr [rip + 0x61a1b7]
0x1800025c1: or	rax, rbx
0x1800025c4: bsr	rcx, rax
0x1800025c8: mov	r8, rdi
0x1800025cb: inc	ecx
0x1800025cd: shl	rbx, cl
0x1800025d0: lea	rcx, [rip + 0x61a1b1]
0x1800025d7: lea	rdx, [rbx + rbx]
0x1800025db: call	0x180002420
0x1800025e0: mov	rcx, qword ptr [rip + 0x61a191]
0x1800025e7: lea	r9, [rbx - 1]
0x1800025eb: mov	qword ptr [rip + 0x61a1ae], r9
0x1800025f2: mov	qword ptr [rip + 0x61a1af], rbx
0x1800025f9: mov	rcx, qword ptr [rcx]
0x1800025fc: mov	rdx, rcx
0x1800025ff: cmp	rcx, rdi
0x180002602: je	0x180002752
0x180002608: mov	qword ptr [rsp + 0x30], rsi
0x18000260d: movabs	rbx, 0x100000001b3
0x180002617: movabs	rsi, 0xcbf29ce484222325
0x180002621: movzx	eax, byte ptr [rcx + 0x11]
0x180002625: movzx	r11d, byte ptr [rcx + 0x10]
0x18000262a: mov	rdx, qword ptr [rdx]
0x18000262d: xor	r11, rsi
0x180002630: imul	r11, rbx
0x180002634: xor	r11, rax
0x180002637: movzx	eax, byte ptr [rcx + 0x12]
0x18000263b: imul	r11, rbx
0x18000263f: xor	r11, rax
0x180002642: movzx	eax, byte ptr [rcx + 0x13]
0x180002646: imul	r11, rbx
0x18000264a: xor	r11, rax
0x18000264d: movzx	eax, byte ptr [rcx + 0x14]
0x180002651: imul	r11, rbx
0x180002655: xor	r11, rax
0x180002658: movzx	eax, byte ptr [rcx + 0x15]
0x18000265c: imul	r11, rbx
0x180002660: xor	r11, rax
0x180002663: movzx	eax, byte ptr [rcx + 0x16]
0x180002667: imul	r11, rbx
0x18000266b: xor	r11, rax
0x18000266e: movzx	eax, byte ptr [rcx + 0x17]
0x180002672: imul	r11, rbx
0x180002676: xor	r11, rax
0x180002679: imul	r11, rbx
0x18000267d: and	r11, r9
0x180002680: shl	r11, 4
0x180002684: add	r11, qword ptr [rip + 0x61a0fd]
0x18000268b: mov	r9, qword ptr [r11]
0x18000268e: cmp	r9, rdi
0x180002691: jne	0x18000269c
0x180002693: mov	qword ptr [r11], rcx
0x180002696: mov	qword ptr [r11 + 8], rcx
0x18000269a: jmp	0x180002713
0x18000269c: mov	rax, qword ptr [r11 + 8]
0x1800026a0: mov	r8, qword ptr [rcx + 0x10]
0x1800026a4: cmp	r8, qword ptr [rax + 0x10]
0x1800026a8: jne	0x1800026d9
0x1800026aa: mov	r10, qword ptr [rax]
0x1800026ad: cmp	r10, rcx
0x1800026b0: je	0x1800026d3
0x1800026b2: mov	r9, qword ptr [rcx + 8]
0x1800026b6: mov	qword ptr [r9], rdx
0x1800026b9: mov	r8, qword ptr [rdx + 8]
0x1800026bd: mov	qword ptr [r8], r10
0x1800026c0: mov	rax, qword ptr [r10 + 8]
0x1800026c4: mov	qword ptr [rax], rcx
0x1800026c7: mov	qword ptr [r10 + 8], r8
0x1800026cb: mov	qword ptr [rdx + 8], r9
0x1800026cf: mov	qword ptr [rcx + 8], rax
0x1800026d3: mov	qword ptr [r11 + 8], rcx
0x1800026d7: jmp	0x180002713
0x1800026d9: cmp	r9, rax
0x1800026dc: je	0x1800026ef
0x1800026de: nop	
0x1800026e0: mov	rax, qword ptr [rax + 8]
0x1800026e4: cmp	r8, qword ptr [rax + 0x10]
0x1800026e8: je	0x180002727
0x1800026ea: cmp	r9, rax
0x1800026ed: jne	0x1800026e0
0x1800026ef: mov	r10, qword ptr [rcx + 8]
0x1800026f3: mov	qword ptr [r10], rdx
0x1800026f6: mov	r9, qword ptr [rdx + 8]
0x1800026fa: mov	qword ptr [r9], rax
0x1800026fd: mov	r8, qword ptr [rax + 8]
0x180002701: mov	qword ptr [r8], rcx
0x180002704: mov	qword ptr [rax + 8], r9
0x180002708: mov	qword ptr [rdx + 8], r10
0x18000270c: mov	qword ptr [rcx + 8], r8
0x180002710: mov	qword ptr [r11], rcx
0x180002713: mov	rcx, rdx
0x180002716: cmp	rdx, rdi
0x180002719: je	0x18000274d
0x18000271b: mov	r9, qword ptr [rip + 0x61a07e]
0x180002722: jmp	0x180002621
0x180002727: mov	r10, qword ptr [rax]
0x18000272a: mov	r9, qword ptr [rcx + 8]
0x18000272e: mov	qword ptr [r9], rdx
0x180002731: mov	r8, qword ptr [rdx + 8]
0x180002735: mov	qword ptr [r8], r10
0x180002738: mov	rax, qword ptr [r10 + 8]
0x18000273c: mov	qword ptr [rax], rcx
0x18000273f: mov	qword ptr [r10 + 8], r8
0x180002743: mov	qword ptr [rdx + 8], r9
0x180002747: mov	qword ptr [rcx + 8], rax
0x18000274b: jmp	0x180002713
0x18000274d: mov	rsi, qword ptr [rsp + 0x30]
0x180002752: mov	rdi, qword ptr [rsp + 0x40]
0x180002757: add	rsp, 0x20
0x18000275b: pop	rbx
0x18000275c: ret	
0x18000275d: int3	
0x18000275e: int3	
0x18000275f: int3	
0x180002760: push	rbp
0x180002762: push	rsi
0x180002763: push	rdi
0x180002764: push	r15
0x180002766: sub	rsp, 0x38
0x18000276a: movabs	rdi, 0x7fffffffffffffff
0x180002774: mov	r15, r9
0x180002777: mov	rbp, rdx
0x18000277a: mov	rsi, rcx
0x18000277d: cmp	rdx, rdi
0x180002780: ja	0x180002893
0x180002786: or	rdx, 0xf
0x18000278a: mov	qword ptr [rsp + 0x70], rbx
0x18000278f: mov	qword ptr [rsp + 0x30], r14
0x180002794: mov	r14, qword ptr [rcx + 0x18]
0x180002798: cmp	rdx, rdi
0x18000279b: ja	0x1800027e1
0x18000279d: mov	rcx, r14
0x1800027a0: mov	rax, rdi
0x1800027a3: shr	rcx, 1
0x1800027a6: sub	rax, rcx
0x1800027a9: cmp	r14, rax
0x1800027ac: ja	0x1800027e1
0x1800027ae: lea	rax, [r14 + rcx]
0x1800027b2: mov	rdi, rdx
0x1800027b5: cmp	rdx, rax
0x1800027b8: cmovb	rdi, rax
0x1800027bc: lea	rcx, [rdi + 1]
0x1800027c0: test	rcx, rcx
0x1800027c3: jne	0x1800027c9
0x1800027c5: xor	ebx, ebx
0x1800027c7: jmp	0x180002812
0x1800027c9: cmp	rcx, 0x1000
0x1800027d0: jb	0x18000280a
0x1800027d2: lea	rax, [rcx + 0x27]
0x1800027d6: cmp	rax, rcx
0x1800027d9: jbe	0x180002899
0x1800027df: jmp	0x1800027ef
0x1800027e1: movabs	rax, 0x8000000000000000
0x1800027eb: add	rax, 0x27
0x1800027ef: mov	rcx, rax
0x1800027f2: call	0x180002d90
0x1800027f7: test	rax, rax
0x1800027fa: je	0x180002879
0x1800027fc: lea	rbx, [rax + 0x27]
0x180002800: and	rbx, 0xffffffffffffffe0
0x180002804: mov	qword ptr [rbx - 8], rax
0x180002808: jmp	0x180002812
0x18000280a: call	0x180002d90
0x18000280f: mov	rbx, rax
0x180002812: mov	r8, rbp
0x180002815: mov	qword ptr [rsi + 0x10], rbp
0x180002819: mov	rdx, r15
0x18000281c: mov	qword ptr [rsi + 0x18], rdi
0x180002820: mov	rcx, rbx
0x180002823: call	0x180003d83
0x180002828: mov	byte ptr [rbx + rbp], 0
0x18000282c: cmp	r14, 0xf
0x180002830: jbe	0x18000285f
0x180002832: mov	rcx, qword ptr [rsi]
0x180002835: lea	rdx, [r14 + 1]
0x180002839: cmp	rdx, 0x1000
0x180002840: jb	0x18000285a
0x180002842: mov	rax, qword ptr [rcx - 8]
0x180002846: add	rdx, 0x27
0x18000284a: sub	rcx, rax
0x18000284d: sub	rcx, 8
0x180002851: cmp	rcx, 0x1f
0x180002855: ja	0x180002879
0x180002857: mov	rcx, rax
0x18000285a: call	0x180003144
0x18000285f: mov	qword ptr [rsi], rbx
0x180002862: mov	rax, rsi
0x180002865: mov	rbx, qword ptr [rsp + 0x70]
0x18000286a: mov	r14, qword ptr [rsp + 0x30]
0x18000286f: add	rsp, 0x38
0x180002873: pop	r15
0x180002875: pop	rdi
0x180002876: pop	rsi
0x180002877: pop	rbp
0x180002878: ret	
0x180002879: xor	r9d, r9d
0x18000287c: mov	qword ptr [rsp + 0x20], 0
0x180002885: xor	r8d, r8d
0x180002888: xor	edx, edx
0x18000288a: xor	ecx, ecx
0x18000288c: call	qword ptr [rip + 0x193e]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180002892: int3	
0x180002893: call	0x1800012a0
0x180002898: int3	
0x180002899: call	0x180001200
0x18000289e: int3	
0x18000289f: int3	
0x1800028a0: mov	qword ptr [rsp + 8], rbx
0x1800028a5: mov	qword ptr [rsp + 0x10], rsi
0x1800028aa: mov	qword ptr [rsp + 0x18], rdi
0x1800028af: mov	qword ptr [rsp + 0x20], r12
0x1800028b4: push	rbp
0x1800028b5: push	r14
0x1800028b7: push	r15
0x1800028b9: mov	rbp, rsp
0x1800028bc: sub	rsp, 0x70
0x1800028c0: mov	rax, qword ptr [rip + 0x619779]
0x1800028c7: xor	rax, rsp
0x1800028ca: mov	qword ptr [rbp - 0x10], rax
0x1800028ce: call	qword ptr [rip + 0x179c]   ; KERNEL32.dll!AllocConsole
0x1800028d4: xor	r15d, r15d
0x1800028d7: test	eax, eax
0x1800028d9: je	0x18000296b
0x1800028df: mov	qword ptr [rbp - 0x40], r15
0x1800028e3: mov	ecx, 1
0x1800028e8: call	qword ptr [rip + 0x1912]   ; api-ms-win-crt-stdio-l1-1-0.dll!__acrt_iob_func
0x1800028ee: mov	r9, rax
0x1800028f1: lea	r8, [rip + 0x617880]
0x1800028f8: lea	rdx, [rip + 0x617871]
0x1800028ff: lea	rcx, [rbp - 0x40]
0x180002903: call	qword ptr [rip + 0x18ff]   ; api-ms-win-crt-stdio-l1-1-0.dll!freopen_s
0x180002909: mov	ecx, 2
0x18000290e: call	qword ptr [rip + 0x18ec]   ; api-ms-win-crt-stdio-l1-1-0.dll!__acrt_iob_func
0x180002914: mov	r9, rax
0x180002917: lea	r8, [rip + 0x61785a]
0x18000291e: lea	rdx, [rip + 0x61784b]
0x180002925: lea	rcx, [rbp - 0x40]
0x180002929: call	qword ptr [rip + 0x18d9]   ; api-ms-win-crt-stdio-l1-1-0.dll!freopen_s
0x18000292f: xor	ecx, ecx
0x180002931: call	qword ptr [rip + 0x18c9]   ; api-ms-win-crt-stdio-l1-1-0.dll!__acrt_iob_func
0x180002937: mov	r9, rax
0x18000293a: lea	r8, [rip + 0x617843]
0x180002941: lea	rdx, [rip + 0x617834]
0x180002948: lea	rcx, [rbp - 0x40]
0x18000294c: call	qword ptr [rip + 0x18b6]   ; api-ms-win-crt-stdio-l1-1-0.dll!freopen_s
0x180002952: lea	rcx, [rip + 0x61783f]
0x180002959: call	qword ptr [rip + 0x1719]   ; KERNEL32.dll!SetConsoleTitleW
0x18000295f: lea	rcx, [rip + 0x617822]
0x180002966: call	0x1800010a0
0x18000296b: mov	ecx, 0x18
0x180002970: call	0x180002d90
0x180002975: mov	r14, rax
0x180002978: movabs	r12, 0x279e8000000
0x180002982: mov	qword ptr [rax], r12
0x180002985: movabs	rax, 0x279e9ab57ae
0x18000298f: mov	qword ptr [r14 + 8], rax
0x180002993: mov	qword ptr [r14 + 0x10], 0x1c5c000
0x18000299b: lea	r8, [rip + 0x61783e]
0x1800029a2: mov	edx, 0x65
0x1800029a7: lea	rcx, [rip - 0x29ae]
0x1800029ae: call	qword ptr [rip + 0x168c]   ; KERNEL32.dll!FindResourceW
0x1800029b4: mov	rbx, rax
0x1800029b7: test	rax, rax
0x1800029ba: jne	0x1800029d5
0x1800029bc: call	qword ptr [rip + 0x165e]   ; KERNEL32.dll!GetLastError
0x1800029c2: mov	edx, eax
0x1800029c4: lea	rcx, [rip + 0x264fd]
0x1800029cb: call	0x1800010a0
0x1800029d0: jmp	0x180002aa7
0x1800029d5: mov	rdx, rbx
0x1800029d8: lea	rcx, [rip - 0x29df]
0x1800029df: call	qword ptr [rip + 0x161b]   ; KERNEL32.dll!SizeofResource
0x1800029e5: mov	edi, eax
0x1800029e7: test	eax, eax
0x1800029e9: jne	0x180002a04
0x1800029eb: call	qword ptr [rip + 0x162f]   ; KERNEL32.dll!GetLastError
0x1800029f1: mov	edx, eax
0x1800029f3: lea	rcx, [rip + 0x264ae]
0x1800029fa: call	0x1800010a0
0x1800029ff: jmp	0x180002aa7
0x180002a04: mov	rdx, rbx
0x180002a07: lea	rcx, [rip - 0x2a0e]
0x180002a0e: call	qword ptr [rip + 0x1624]   ; KERNEL32.dll!LoadResource
0x180002a14: test	rax, rax
0x180002a17: jne	0x180002a2f
0x180002a19: call	qword ptr [rip + 0x1601]   ; KERNEL32.dll!GetLastError
0x180002a1f: mov	edx, eax
0x180002a21: lea	rcx, [rip + 0x264d8]
0x180002a28: call	0x1800010a0
0x180002a2d: jmp	0x180002aa7
0x180002a2f: mov	rcx, rax
0x180002a32: call	qword ptr [rip + 0x15f8]   ; KERNEL32.dll!LockResource
0x180002a38: mov	rsi, rax
0x180002a3b: test	rax, rax
0x180002a3e: jne	0x180002a4e
0x180002a40: lea	rcx, [rip + 0x26499]
0x180002a47: call	0x1800010a0
0x180002a4c: jmp	0x180002aa7
0x180002a4e: mov	rbx, rdi
0x180002a51: mov	r9d, 0x40
0x180002a57: mov	r8d, 0x3000
0x180002a5d: mov	rdx, rdi
0x180002a60: mov	rcx, r12
0x180002a63: call	qword ptr [rip + 0x15af]   ; KERNEL32.dll!VirtualAlloc
0x180002a69: mov	rdi, rax
0x180002a6c: test	rax, rax
0x180002a6f: jne	0x180002a87
0x180002a71: call	qword ptr [rip + 0x15a9]   ; KERNEL32.dll!GetLastError
0x180002a77: mov	edx, eax
0x180002a79: lea	rcx, [rip + 0x264c8]
0x180002a80: call	0x1800010a0
0x180002a85: jmp	0x180002aa7
0x180002a87: mov	r8, rbx
0x180002a8a: mov	rdx, rsi
0x180002a8d: mov	rcx, rdi
0x180002a90: call	0x180003d83
0x180002a95: mov	r8, rbx
0x180002a98: mov	rdx, rdi
0x180002a9b: lea	rcx, [rip + 0x26476]
0x180002aa2: call	0x1800010a0
0x180002aa7: lea	rcx, [rip + 0x260ba]
0x180002aae: call	qword ptr [rip + 0x1574]   ; KERNEL32.dll!LoadLibraryA
0x180002ab4: xorps	xmm0, xmm0
0x180002ab7: movups	xmmword ptr [rbp - 0x30], xmm0
0x180002abb: mov	qword ptr [rbp - 0x20], r15
0x180002abf: mov	qword ptr [rbp - 0x18], 0xf
0x180002ac7: mov	byte ptr [rbp - 0x30], r15b
0x180002acb: lea	rcx, [rbp - 0x30]
0x180002acf: call	0x1800016c0
0x180002ad4: test	al, al
0x180002ad6: jne	0x180002ca7
0x180002adc: lea	rdx, [rbp - 0x30]
0x180002ae0: cmp	qword ptr [rbp - 0x18], 0xf
0x180002ae5: cmova	rdx, qword ptr [rbp - 0x30]
0x180002aea: mov	r9d, 0x10
0x180002af0: lea	r8, [rip + 0x26469]
0x180002af7: xor	ecx, ecx
0x180002af9: call	qword ptr [rip + 0x1601]   ; USER32.dll!MessageBoxA
0x180002aff: nop	
0x180002b00: mov	rdx, qword ptr [rbp - 0x18]
0x180002b04: cmp	rdx, 0xf
0x180002b08: jbe	0x180002b3b
0x180002b0a: inc	rdx
0x180002b0d: mov	rcx, qword ptr [rbp - 0x30]
0x180002b11: mov	rax, rcx
0x180002b14: cmp	rdx, 0x1000
0x180002b1b: jb	0x180002b36
0x180002b1d: add	rdx, 0x27
0x180002b21: mov	rcx, qword ptr [rcx - 8]
0x180002b25: sub	rax, rcx
0x180002b28: sub	rax, 8
0x180002b2c: cmp	rax, 0x1f
0x180002b30: ja	0x180002ce5
0x180002b36: call	0x180003144
0x180002b3b: mov	rax, qword ptr [r14 + 8]
0x180002b3f: xor	r8d, r8d
0x180002b42: mov	edx, 1
0x180002b47: mov	rcx, r12
0x180002b4a: call	rax
0x180002b4c: mov	dword ptr [rbp - 0x38], r15d
0x180002b50: lea	r9, [rbp - 0x38]
0x180002b54: mov	edx, 5
0x180002b59: movabs	rbx, 0x279e8356b5a
0x180002b63: mov	r8d, 0x40
0x180002b69: mov	rcx, rbx
0x180002b6c: call	qword ptr [rip + 0x1496]   ; KERNEL32.dll!VirtualProtect
0x180002b72: test	eax, eax
0x180002b74: je	0x180002c7d
0x180002b7a: movabs	rax, 0x9090909090909090
0x180002b84: mov	dword ptr [rbx], eax
0x180002b86: mov	byte ptr [rbx + 4], al
0x180002b89: call	qword ptr [rip + 0x1481]   ; KERNEL32.dll!GetCurrentProcess
0x180002b8f: mov	rcx, rax
0x180002b92: mov	r8d, 5
0x180002b98: mov	rdx, rbx
0x180002b9b: call	qword ptr [rip + 0x14bf]   ; KERNEL32.dll!FlushInstructionCache
0x180002ba1: mov	dword ptr [rbp - 0x34], r15d
0x180002ba5: lea	r9, [rbp - 0x34]
0x180002ba9: mov	r8d, dword ptr [rbp - 0x38]
0x180002bad: mov	edx, 5
0x180002bb2: mov	rcx, rbx
0x180002bb5: call	qword ptr [rip + 0x144d]   ; KERNEL32.dll!VirtualProtect
0x180002bbb: mov	eax, dword ptr [rip + 0x263b7]
0x180002bc1: mov	dword ptr [rbp - 0x40], eax
0x180002bc4: movzx	eax, word ptr [rip + 0x263b1]
0x180002bcb: mov	word ptr [rbp - 0x3c], ax
0x180002bcf: movzx	eax, byte ptr [rip + 0x263a8]
0x180002bd6: mov	byte ptr [rbp - 0x3a], al
0x180002bd9: xor	eax, eax
0x180002bdb: mov	byte ptr [rbp - 0x39], al
0x180002bde: mov	dword ptr [rbp - 0x38], r15d
0x180002be2: lea	r9, [rbp - 0x38]
0x180002be6: mov	edx, 8
0x180002beb: movabs	rbx, 0x279e8b810b4
0x180002bf5: mov	r8d, 0x40
0x180002bfb: mov	rcx, rbx
0x180002bfe: call	qword ptr [rip + 0x1404]   ; KERNEL32.dll!VirtualProtect
0x180002c04: test	eax, eax
0x180002c06: je	0x180002c7d
0x180002c08: mov	rax, qword ptr [rbp - 0x40]
0x180002c0c: movabs	qword ptr [0x279e8b810b4], rax
0x180002c16: call	qword ptr [rip + 0x13f4]   ; KERNEL32.dll!GetCurrentProcess
0x180002c1c: mov	rcx, rax
0x180002c1f: mov	r8d, 8
0x180002c25: mov	rdx, rbx
0x180002c28: call	qword ptr [rip + 0x1432]   ; KERNEL32.dll!FlushInstructionCache
0x180002c2e: mov	dword ptr [rbp - 0x34], r15d
0x180002c32: lea	r9, [rbp - 0x34]
0x180002c36: mov	r8d, dword ptr [rbp - 0x38]
0x180002c3a: mov	edx, 8
0x180002c3f: mov	rcx, rbx
0x180002c42: call	qword ptr [rip + 0x13c0]   ; KERNEL32.dll!VirtualProtect
0x180002c48: movabs	rdx, 0x279e85b7cc0
0x180002c52: call	0x180001a50
0x180002c57: test	al, al
0x180002c59: je	0x180002c7d
0x180002c5b: movabs	rdx, 0x279e85a7093
0x180002c65: call	0x180001a50
0x180002c6a: test	al, al
0x180002c6c: je	0x180002c7d
0x180002c6e: movabs	rdx, 0x279e85a7088
0x180002c78: call	0x180001a50
0x180002c7d: mov	rcx, qword ptr [rbp - 0x10]
0x180002c81: xor	rcx, rsp
0x180002c84: call	0x180002d70
0x180002c89: lea	r11, [rsp + 0x70]
0x180002c8e: mov	rbx, qword ptr [r11 + 0x20]
0x180002c92: mov	rsi, qword ptr [r11 + 0x28]
0x180002c96: mov	rdi, qword ptr [r11 + 0x30]
0x180002c9a: mov	r12, qword ptr [r11 + 0x38]
0x180002c9e: mov	rsp, r11
0x180002ca1: pop	r15
0x180002ca3: pop	r14
0x180002ca5: pop	rbp
0x180002ca6: ret	
0x180002ca7: mov	rdx, qword ptr [rbp - 0x18]
0x180002cab: cmp	rdx, 0xf
0x180002caf: jbe	0x180002b3b
0x180002cb5: inc	rdx
0x180002cb8: mov	rcx, qword ptr [rbp - 0x30]
0x180002cbc: mov	rax, rcx
0x180002cbf: cmp	rdx, 0x1000
0x180002cc6: jb	0x180002b36
0x180002ccc: add	rdx, 0x27
0x180002cd0: mov	rcx, qword ptr [rcx - 8]
0x180002cd4: sub	rax, rcx
0x180002cd7: sub	rax, 8
0x180002cdb: cmp	rax, 0x1f
0x180002cdf: jbe	0x180002b36
0x180002ce5: mov	qword ptr [rsp + 0x20], r15
0x180002cea: xor	r9d, r9d
0x180002ced: xor	r8d, r8d
0x180002cf0: xor	edx, edx
0x180002cf2: xor	ecx, ecx
0x180002cf4: call	qword ptr [rip + 0x14d6]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180002cfa: int3	
0x180002cfb: int3	
0x180002cfc: int3	
0x180002cfd: int3	
0x180002cfe: int3	
0x180002cff: int3	
0x180002d00: sub	rsp, 0x38
0x180002d04: cmp	edx, 1
0x180002d07: jne	0x180002d48
0x180002d09: xor	eax, eax
0x180002d0b: lea	r8, [rip - 0x472]
0x180002d12: mov	qword ptr [rsp + 0x28], rax
0x180002d17: xor	r9d, r9d
0x180002d1a: xor	edx, edx
0x180002d1c: mov	dword ptr [rsp + 0x20], eax
0x180002d20: xor	ecx, ecx
0x180002d22: call	qword ptr [rip + 0x1340]   ; KERNEL32.dll!CreateThread
0x180002d28: test	rax, rax
0x180002d2b: jne	0x180002d48
0x180002d2d: call	qword ptr [rip + 0x12ed]   ; KERNEL32.dll!GetLastError
0x180002d33: mov	edx, eax
0x180002d35: lea	rcx, [rip + 0x61748c]
0x180002d3c: call	0x1800010a0
0x180002d41: xor	eax, eax
0x180002d43: add	rsp, 0x38
0x180002d47: ret	
0x180002d48: mov	eax, 1
0x180002d4d: add	rsp, 0x38
0x180002d51: ret	
0x180002d52: int3	
0x180002d53: int3	
0x180002d54: int3	
0x180002d55: int3	
0x180002d56: int3	
0x180002d57: int3	
0x180002d58: int3	
0x180002d59: int3	
0x180002d5a: int3	
0x180002d5b: int3	
0x180002d5c: int3	
0x180002d5d: int3	
0x180002d5e: int3	
0x180002d5f: int3	
0x180002d60: int3	
0x180002d61: int3	
0x180002d62: int3	
0x180002d63: int3	
0x180002d64: int3	
0x180002d65: int3	
0x180002d66: nop	word ptr [rax + rax]
0x180002d70: cmp	rcx, qword ptr [rip + 0x6192c9]
0x180002d77: jne	0x180002d89
0x180002d79: rol	rcx, 0x10
0x180002d7d: test	cx, 0xffff
0x180002d82: jne	0x180002d85
0x180002d84: ret	
0x180002d85: ror	rcx, 0x10
0x180002d89: jmp	0x180003500
0x180002d8e: int3	
0x180002d8f: int3	
0x180002d90: push	rbx
0x180002d92: sub	rsp, 0x20
0x180002d96: mov	rbx, rcx
0x180002d99: jmp	0x180002daa
0x180002d9b: mov	rcx, rbx
0x180002d9e: call	0x180003c2e
0x180002da3: test	eax, eax
0x180002da5: je	0x180002dba
0x180002da7: mov	rcx, rbx
0x180002daa: call	0x180003c34
0x180002daf: test	rax, rax
0x180002db2: je	0x180002d9b
0x180002db4: add	rsp, 0x20
0x180002db8: pop	rbx
0x180002db9: ret	
0x180002dba: cmp	rbx, -1
0x180002dbe: je	0x180002dc6
0x180002dc0: call	0x18000366c
0x180002dc5: int3	
0x180002dc6: call	0x180001200
0x180002dcb: int3	
0x180002dcc: sub	rsp, 0x28
0x180002dd0: call	0x18000392c
0x180002dd5: test	eax, eax
0x180002dd7: je	0x180002dfa
0x180002dd9: mov	rax, qword ptr gs:[0x30]
0x180002de2: mov	rcx, qword ptr [rax + 8]
0x180002de6: jmp	0x180002ded
0x180002de8: cmp	rcx, rax
0x180002deb: je	0x180002e01
0x180002ded: xor	eax, eax
0x180002def: lock cmpxchg	qword ptr [rip + 0x619390], rcx
0x180002df8: jne	0x180002de8
0x180002dfa: xor	al, al
0x180002dfc: add	rsp, 0x28
0x180002e00: ret	
0x180002e01: mov	al, 1
0x180002e03: jmp	0x180002dfc
0x180002e05: int3	
0x180002e06: int3	
0x180002e07: int3	
0x180002e08: sub	rsp, 0x28
0x180002e0c: call	0x18000392c
0x180002e11: test	eax, eax
0x180002e13: je	0x180002e1c
0x180002e15: call	0x18000368c
0x180002e1a: jmp	0x180002e35
0x180002e1c: call	0x180003924
0x180002e21: mov	ecx, eax
0x180002e23: call	0x180003c40
0x180002e28: test	eax, eax
0x180002e2a: je	0x180002e30
0x180002e2c: xor	al, al
0x180002e2e: jmp	0x180002e37
0x180002e30: call	0x180003c46
0x180002e35: mov	al, 1
0x180002e37: add	rsp, 0x28
0x180002e3b: ret	
0x180002e3c: sub	rsp, 0x28
0x180002e40: xor	ecx, ecx
0x180002e42: call	0x180002f74
0x180002e47: test	al, al
0x180002e49: setne	al
0x180002e4c: add	rsp, 0x28
0x180002e50: ret	
0x180002e51: int3	
0x180002e52: int3	
0x180002e53: int3	
0x180002e54: sub	rsp, 0x28
0x180002e58: call	0x180003c7c
0x180002e5d: test	al, al
0x180002e5f: jne	0x180002e65
0x180002e61: xor	al, al
0x180002e63: jmp	0x180002e77
0x180002e65: call	0x180003c7c
0x180002e6a: test	al, al
0x180002e6c: jne	0x180002e75
0x180002e6e: call	0x180003c7c
0x180002e73: jmp	0x180002e61
0x180002e75: mov	al, 1
0x180002e77: add	rsp, 0x28
0x180002e7b: ret	
0x180002e7c: sub	rsp, 0x28
0x180002e80: call	0x180003c7c
0x180002e85: call	0x180003c7c
0x180002e8a: mov	al, 1
0x180002e8c: add	rsp, 0x28
0x180002e90: ret	
0x180002e91: int3	
0x180002e92: int3	
0x180002e93: int3	
0x180002e94: mov	qword ptr [rsp + 8], rbx
0x180002e99: mov	qword ptr [rsp + 0x10], rbp
0x180002e9e: mov	qword ptr [rsp + 0x18], rsi
0x180002ea3: push	rdi
0x180002ea4: sub	rsp, 0x20
0x180002ea8: mov	rdi, r9
0x180002eab: mov	rsi, r8
0x180002eae: mov	ebx, edx
0x180002eb0: mov	rbp, rcx
0x180002eb3: call	0x18000392c
0x180002eb8: test	eax, eax
0x180002eba: jne	0x180002ed2
0x180002ebc: cmp	ebx, 1
0x180002ebf: jne	0x180002ed2
0x180002ec1: mov	r8, rsi
0x180002ec4: xor	edx, edx
0x180002ec6: mov	rcx, rbp
0x180002ec9: mov	rax, rdi
0x180002ecc: call	qword ptr [rip + 0x1356]
0x180002ed2: mov	rdx, qword ptr [rsp + 0x58]
0x180002ed7: mov	ecx, dword ptr [rsp + 0x50]
0x180002edb: mov	rbx, qword ptr [rsp + 0x30]
0x180002ee0: mov	rbp, qword ptr [rsp + 0x38]
0x180002ee5: mov	rsi, qword ptr [rsp + 0x40]
0x180002eea: add	rsp, 0x20
0x180002eee: pop	rdi
0x180002eef: jmp	0x180003c3a
0x180002ef4: sub	rsp, 0x28
0x180002ef8: call	0x18000392c
0x180002efd: test	eax, eax
0x180002eff: je	0x180002f11
0x180002f01: lea	rcx, [rip + 0x619290]
0x180002f08: add	rsp, 0x28
0x180002f0c: jmp	0x180003c58
0x180002f11: call	0x180003c80
0x180002f16: test	eax, eax
0x180002f18: jne	0x180002f1f
0x180002f1a: call	0x180003c64
0x180002f1f: add	rsp, 0x28
0x180002f23: ret	
0x180002f24: sub	rsp, 0x28
0x180002f28: xor	ecx, ecx
0x180002f2a: call	0x180003c7c
0x180002f2f: add	rsp, 0x28
0x180002f33: jmp	0x180003c7c
0x180002f38: sub	rsp, 0x28
0x180002f3c: test	ecx, ecx
0x180002f3e: jne	0x180002f47
0x180002f40: mov	byte ptr [rip + 0x619249], 1
0x180002f47: call	0x18000368c
0x180002f4c: call	0x180003c7c
0x180002f51: test	al, al
0x180002f53: jne	0x180002f59
0x180002f55: xor	al, al
0x180002f57: jmp	0x180002f6d
0x180002f59: call	0x180003c7c
0x180002f5e: test	al, al
0x180002f60: jne	0x180002f6b
0x180002f62: xor	ecx, ecx
0x180002f64: call	0x180003c7c
0x180002f69: jmp	0x180002f55
0x180002f6b: mov	al, 1
0x180002f6d: add	rsp, 0x28
0x180002f71: ret	
0x180002f72: int3	
0x180002f73: int3	
0x180002f74: push	rbx
0x180002f76: sub	rsp, 0x20
0x180002f7a: cmp	byte ptr [rip + 0x619210], 0
0x180002f81: mov	ebx, ecx
0x180002f83: jne	0x180002fec
0x180002f85: cmp	ecx, 1
0x180002f88: ja	0x180002ff4
0x180002f8a: call	0x18000392c
0x180002f8f: test	eax, eax
0x180002f91: je	0x180002fbb
0x180002f93: test	ebx, ebx
0x180002f95: jne	0x180002fbb
0x180002f97: lea	rcx, [rip + 0x6191fa]
0x180002f9e: call	0x180003c4c
0x180002fa3: test	eax, eax
0x180002fa5: jne	0x180002fb7
0x180002fa7: lea	rcx, [rip + 0x619202]
0x180002fae: call	0x180003c4c
0x180002fb3: test	eax, eax
0x180002fb5: je	0x180002fe5
0x180002fb7: xor	al, al
0x180002fb9: jmp	0x180002fee
0x180002fbb: movdqa	xmm0, xmmword ptr [rip + 0x12dd]
0x180002fc3: or	rax, 0xffffffffffffffff
0x180002fc7: movdqu	xmmword ptr [rip + 0x6191c9], xmm0
0x180002fcf: mov	qword ptr [rip + 0x6191d2], rax
0x180002fd6: movdqu	xmmword ptr [rip + 0x6191d2], xmm0
0x180002fde: mov	qword ptr [rip + 0x6191db], rax
0x180002fe5: mov	byte ptr [rip + 0x6191a5], 1
0x180002fec: mov	al, 1
0x180002fee: add	rsp, 0x20
0x180002ff2: pop	rbx
0x180002ff3: ret	
0x180002ff4: mov	ecx, 5
0x180002ff9: call	0x180003944
0x180002ffe: int3	
0x180002fff: int3	
0x180003000: sub	rsp, 0x18
0x180003004: mov	r8, rcx
0x180003007: mov	eax, 0x5a4d
0x18000300c: cmp	word ptr [rip - 0x3013], ax
0x180003013: jne	0x18000308d
0x180003015: movsxd	rcx, dword ptr [rip - 0x2fe0]
0x18000301c: lea	rdx, [rip - 0x3023]
0x180003023: add	rcx, rdx
0x180003026: cmp	dword ptr [rcx], 0x4550
0x18000302c: jne	0x18000308d
0x18000302e: mov	eax, 0x20b
0x180003033: cmp	word ptr [rcx + 0x18], ax
0x180003037: jne	0x18000308d
0x180003039: sub	r8, rdx
0x18000303c: movzx	edx, word ptr [rcx + 0x14]
0x180003040: add	rdx, 0x18
0x180003044: add	rdx, rcx
0x180003047: movzx	eax, word ptr [rcx + 6]
0x18000304b: lea	rcx, [rax + rax*4]
0x18000304f: lea	r9, [rdx + rcx*8]
0x180003053: mov	qword ptr [rsp], rdx
0x180003057: cmp	rdx, r9
0x18000305a: je	0x180003074
0x18000305c: mov	ecx, dword ptr [rdx + 0xc]
0x18000305f: cmp	r8, rcx
0x180003062: jb	0x18000306e
0x180003064: mov	eax, dword ptr [rdx + 8]
0x180003067: add	eax, ecx
0x180003069: cmp	r8, rax
0x18000306c: jb	0x180003076
0x18000306e: add	rdx, 0x28
0x180003072: jmp	0x180003053
0x180003074: xor	edx, edx
0x180003076: test	rdx, rdx
0x180003079: jne	0x18000307f
0x18000307b: xor	al, al
0x18000307d: jmp	0x180003093
0x18000307f: cmp	dword ptr [rdx + 0x24], 0
0x180003083: jge	0x180003089
0x180003085: xor	al, al
0x180003087: jmp	0x180003093
0x180003089: mov	al, 1
0x18000308b: jmp	0x180003093
0x18000308d: xor	al, al
0x18000308f: jmp	0x180003093
0x180003091: xor	al, al
0x180003093: add	rsp, 0x18
0x180003097: ret	
0x180003098: push	rbx
0x18000309a: sub	rsp, 0x20
0x18000309e: mov	bl, cl
0x1800030a0: call	0x18000392c
0x1800030a5: xor	edx, edx
0x1800030a7: test	eax, eax
0x1800030a9: je	0x1800030b6
0x1800030ab: test	bl, bl
0x1800030ad: jne	0x1800030b6
0x1800030af: xchg	qword ptr [rip + 0x6190d2], rdx
0x1800030b6: add	rsp, 0x20
0x1800030ba: pop	rbx
0x1800030bb: ret	
0x1800030bc: push	rbx
0x1800030be: sub	rsp, 0x20
0x1800030c2: cmp	byte ptr [rip + 0x6190c7], 0
0x1800030c9: mov	bl, cl
0x1800030cb: je	0x1800030d1
0x1800030cd: test	dl, dl
0x1800030cf: jne	0x1800030dd
0x1800030d1: call	0x180003c7c
0x1800030d6: mov	cl, bl
0x1800030d8: call	0x180003c7c
0x1800030dd: mov	al, 1
0x1800030df: add	rsp, 0x20
0x1800030e3: pop	rbx
0x1800030e4: ret	
0x1800030e5: int3	
0x1800030e6: int3	
0x1800030e7: int3	
0x1800030e8: push	rbx
0x1800030ea: sub	rsp, 0x20
0x1800030ee: cmp	qword ptr [rip + 0x6190a2], -1
0x1800030f6: mov	rbx, rcx
0x1800030f9: jne	0x180003102
0x1800030fb: call	0x180003c5e
0x180003100: jmp	0x180003111
0x180003102: mov	rdx, rbx
0x180003105: lea	rcx, [rip + 0x61908c]
0x18000310c: call	0x180003c52
0x180003111: xor	edx, edx
0x180003113: test	eax, eax
0x180003115: cmove	rdx, rbx
0x180003119: mov	rax, rdx
0x18000311c: add	rsp, 0x20
0x180003120: pop	rbx
0x180003121: ret	
0x180003122: int3	
0x180003123: int3	
0x180003124: sub	rsp, 0x28
0x180003128: call	0x1800030e8
0x18000312d: neg	rax
0x180003130: sbb	eax, eax
0x180003132: neg	eax
0x180003134: dec	eax
0x180003136: add	rsp, 0x28
0x18000313a: ret	
0x18000313b: int3	
0x18000313c: jmp	0x180003c6a
0x180003141: int3	
0x180003142: int3	
0x180003143: int3	
0x180003144: jmp	0x18000313c
0x180003149: int3	
0x18000314a: int3	
0x18000314b: int3	
0x18000314c: push	rbx
0x18000314e: sub	rsp, 0x20
0x180003152: lea	rax, [rip + 0x115f]
0x180003159: mov	rbx, rcx
0x18000315c: mov	qword ptr [rcx], rax
0x18000315f: test	dl, 1
0x180003162: je	0x18000316e
0x180003164: mov	edx, 0x18
0x180003169: call	0x180003144
0x18000316e: mov	rax, rbx
0x180003171: add	rsp, 0x20
0x180003175: pop	rbx
0x180003176: ret	
0x180003177: int3	
0x180003178: sub	rsp, 0x28
0x18000317c: test	edx, edx
0x18000317e: je	0x1800031b9
0x180003180: sub	edx, 1
0x180003183: je	0x1800031ad
0x180003185: sub	edx, 1
0x180003188: je	0x1800031a0
0x18000318a: cmp	edx, 1
0x18000318d: je	0x180003199
0x18000318f: mov	eax, 1
0x180003194: add	rsp, 0x28
0x180003198: ret	
0x180003199: call	0x180002e7c
0x18000319e: jmp	0x1800031a5
0x1800031a0: call	0x180002e54
0x1800031a5: movzx	eax, al
0x1800031a8: add	rsp, 0x28
0x1800031ac: ret	
0x1800031ad: mov	rdx, r8
0x1800031b0: add	rsp, 0x28
0x1800031b4: jmp	0x1800031c8
0x1800031b9: test	r8, r8
0x1800031bc: setne	cl
0x1800031bf: add	rsp, 0x28
0x1800031c3: jmp	0x1800032e0
0x1800031c8: mov	qword ptr [rsp + 8], rbx
0x1800031cd: mov	qword ptr [rsp + 0x10], rsi
0x1800031d2: mov	qword ptr [rsp + 0x20], rdi
0x1800031d7: push	r14
0x1800031d9: sub	rsp, 0x20
0x1800031dd: mov	rsi, rdx
0x1800031e0: mov	r14, rcx
0x1800031e3: xor	ecx, ecx
0x1800031e5: call	0x180002f38
0x1800031ea: test	al, al
0x1800031ec: je	0x1800032ba
0x1800031f2: call	0x180002dcc
0x1800031f7: mov	bl, al
0x1800031f9: mov	byte ptr [rsp + 0x40], al
0x1800031fd: mov	dil, 1
0x180003200: cmp	dword ptr [rip + 0x618f79], 0
0x180003207: jne	0x1800032d2
0x18000320d: mov	dword ptr [rip + 0x618f69], 1
0x180003217: call	0x180002e3c
0x18000321c: test	al, al
0x18000321e: je	0x18000326f
0x180003220: call	0x180003b8c
0x180003225: call	0x180003b44
0x18000322a: call	0x180003b68
0x18000322f: lea	rdx, [rip + 0x1042]
0x180003236: lea	rcx, [rip + 0x1033]
0x18000323d: call	0x180003c76
0x180003242: test	eax, eax
0x180003244: jne	0x18000326f
0x180003246: call	0x180002e08
0x18000324b: test	al, al
0x18000324d: je	0x18000326f
0x18000324f: lea	rdx, [rip + 0x1012]
0x180003256: lea	rcx, [rip + 0xff3]
0x18000325d: call	0x180003c70
0x180003262: mov	dword ptr [rip + 0x618f14], 2
0x18000326c: xor	dil, dil
0x18000326f: mov	cl, bl
0x180003271: call	0x180003098
0x180003276: test	dil, dil
0x180003279: jne	0x1800032ba
0x18000327b: call	0x180003b84
0x180003280: mov	rbx, rax
0x180003283: cmp	qword ptr [rax], 0
0x180003287: je	0x1800032ad
0x180003289: mov	rcx, rax
0x18000328c: call	0x180003000
0x180003291: test	al, al
0x180003293: je	0x1800032ad
0x180003295: mov	r8, rsi
0x180003298: mov	edx, 2
0x18000329d: mov	rcx, r14
0x1800032a0: mov	rax, qword ptr [rbx]
0x1800032a3: mov	r9, qword ptr [rip + 0xf7e]
0x1800032aa: call	r9
0x1800032ad: inc	dword ptr [rip + 0x618f15]
0x1800032b3: mov	eax, 1
0x1800032b8: jmp	0x1800032bc
0x1800032ba: xor	eax, eax
0x1800032bc: mov	rbx, qword ptr [rsp + 0x30]
0x1800032c1: mov	rsi, qword ptr [rsp + 0x38]
0x1800032c6: mov	rdi, qword ptr [rsp + 0x48]
0x1800032cb: add	rsp, 0x20
0x1800032cf: pop	r14
0x1800032d1: ret	
0x1800032d2: mov	ecx, 7
0x1800032d7: call	0x180003944
0x1800032dc: nop	
0x1800032dd: int3	
0x1800032de: int3	
0x1800032df: int3	
0x1800032e0: mov	qword ptr [rsp + 8], rbx
0x1800032e5: push	rdi
0x1800032e6: sub	rsp, 0x30
0x1800032ea: mov	dil, cl
0x1800032ed: mov	eax, dword ptr [rip + 0x618ed5]
0x1800032f3: test	eax, eax
0x1800032f5: jg	0x180003304
0x1800032f7: xor	eax, eax
0x1800032f9: mov	rbx, qword ptr [rsp + 0x40]
0x1800032fe: add	rsp, 0x30
0x180003302: pop	rdi
0x180003303: ret	
0x180003304: dec	eax
0x180003306: mov	dword ptr [rip + 0x618ebc], eax
0x18000330c: call	0x180002dcc
0x180003311: mov	bl, al
0x180003313: mov	byte ptr [rsp + 0x20], al
0x180003317: cmp	dword ptr [rip + 0x618e62], 2
0x18000331e: jne	0x180003356
0x180003320: call	0x180002ef4
0x180003325: call	0x180003b54
0x18000332a: call	0x180003bc8
0x18000332f: mov	dword ptr [rip + 0x618e47], 0
0x180003339: mov	cl, bl
0x18000333b: call	0x180003098
0x180003340: xor	edx, edx
0x180003342: mov	cl, dil
0x180003345: call	0x1800030bc
0x18000334a: movzx	ebx, al
0x18000334d: call	0x180002f24
0x180003352: mov	eax, ebx
0x180003354: jmp	0x1800032f9
0x180003356: mov	ecx, 7
0x18000335b: call	0x180003944
0x180003360: nop	
0x180003361: nop	
0x180003362: int3	
0x180003363: int3	
0x180003364: mov	rax, rsp
0x180003367: mov	qword ptr [rax + 0x20], rbx
0x18000336b: mov	qword ptr [rax + 0x18], r8
0x18000336f: mov	dword ptr [rax + 0x10], edx
0x180003372: mov	qword ptr [rax + 8], rcx
0x180003376: push	rsi
0x180003377: push	rdi
0x180003378: push	r14
0x18000337a: sub	rsp, 0x40
0x18000337e: mov	rsi, r8
0x180003381: mov	edi, edx
0x180003383: mov	r14, rcx
0x180003386: test	edx, edx
0x180003388: jne	0x180003399
0x18000338a: cmp	dword ptr [rip + 0x618e38], edx
0x180003390: jg	0x180003399
0x180003392: xor	eax, eax
0x180003394: jmp	0x18000347e
0x180003399: lea	eax, [rdx - 1]
0x18000339c: cmp	eax, 1
0x18000339f: ja	0x1800033e1
0x1800033a1: mov	rax, qword ptr [rip + 0xf18]
0x1800033a8: test	rax, rax
0x1800033ab: jne	0x1800033b2
0x1800033ad: lea	ebx, [rax + 1]
0x1800033b0: jmp	0x1800033ba
0x1800033b2: call	qword ptr [rip + 0xe70]
0x1800033b8: mov	ebx, eax
0x1800033ba: mov	dword ptr [rsp + 0x30], ebx
0x1800033be: test	ebx, ebx
0x1800033c0: je	0x180003474
0x1800033c6: mov	r8, rsi
0x1800033c9: mov	edx, edi
0x1800033cb: mov	rcx, r14
0x1800033ce: call	0x180003178
0x1800033d3: mov	ebx, eax
0x1800033d5: mov	dword ptr [rsp + 0x30], eax
0x1800033d9: test	eax, eax
0x1800033db: je	0x180003474
0x1800033e1: mov	r8, rsi
0x1800033e4: mov	edx, edi
0x1800033e6: mov	rcx, r14
0x1800033e9: call	0x180002d00
0x1800033ee: mov	ebx, eax
0x1800033f0: mov	dword ptr [rsp + 0x30], eax
0x1800033f4: cmp	edi, 1
0x1800033f7: jne	0x18000342f
0x1800033f9: test	eax, eax
0x1800033fb: jne	0x18000342f
0x1800033fd: mov	r8, rsi
0x180003400: xor	edx, edx
0x180003402: mov	rcx, r14
0x180003405: call	0x180002d00
0x18000340a: test	rsi, rsi
0x18000340d: setne	cl
0x180003410: call	0x1800032e0
0x180003415: mov	rax, qword ptr [rip + 0xea4]
0x18000341c: test	rax, rax
0x18000341f: je	0x18000342f
0x180003421: mov	r8, rsi
0x180003424: xor	edx, edx
0x180003426: mov	rcx, r14
0x180003429: call	qword ptr [rip + 0xdf9]
0x18000342f: test	edi, edi
0x180003431: je	0x180003438
0x180003433: cmp	edi, 3
0x180003436: jne	0x180003474
0x180003438: mov	r8, rsi
0x18000343b: mov	edx, edi
0x18000343d: mov	rcx, r14
0x180003440: call	0x180003178
0x180003445: mov	ebx, eax
0x180003447: mov	dword ptr [rsp + 0x30], eax
0x18000344b: test	eax, eax
0x18000344d: je	0x180003474
0x18000344f: mov	rax, qword ptr [rip + 0xe6a]
0x180003456: test	rax, rax
0x180003459: jne	0x180003460
0x18000345b: lea	ebx, [rax + 1]
0x18000345e: jmp	0x180003470
0x180003460: mov	r8, rsi
0x180003463: mov	edx, edi
0x180003465: mov	rcx, r14
0x180003468: call	qword ptr [rip + 0xdba]
0x18000346e: mov	ebx, eax
0x180003470: mov	dword ptr [rsp + 0x30], ebx
0x180003474: jmp	0x18000347c
0x180003476: xor	ebx, ebx
0x180003478: mov	dword ptr [rsp + 0x30], ebx
0x18000347c: mov	eax, ebx
0x18000347e: mov	rbx, qword ptr [rsp + 0x78]
0x180003483: add	rsp, 0x40
0x180003487: pop	r14
0x180003489: pop	rdi
0x18000348a: pop	rsi
0x18000348b: ret	
0x18000348c: mov	qword ptr [rsp + 8], rbx
0x180003491: mov	qword ptr [rsp + 0x10], rsi
0x180003496: push	rdi
0x180003497: sub	rsp, 0x20
0x18000349b: mov	rdi, r8
0x18000349e: mov	ebx, edx
0x1800034a0: mov	rsi, rcx
0x1800034a3: cmp	edx, 1
0x1800034a6: jne	0x1800034ad
0x1800034a8: call	0x180003a94
0x1800034ad: mov	r8, rdi
0x1800034b0: mov	edx, ebx
0x1800034b2: mov	rcx, rsi
0x1800034b5: mov	rbx, qword ptr [rsp + 0x30]
0x1800034ba: mov	rsi, qword ptr [rsp + 0x38]
0x1800034bf: add	rsp, 0x20
0x1800034c3: pop	rdi
0x1800034c4: jmp	0x180003364
0x1800034c9: int3	
0x1800034ca: int3	
0x1800034cb: int3	
0x1800034cc: push	rbx
0x1800034ce: sub	rsp, 0x20
0x1800034d2: mov	rbx, rcx
0x1800034d5: xor	ecx, ecx
0x1800034d7: call	qword ptr [rip + 0xbbb]   ; KERNEL32.dll!SetUnhandledExceptionFilter
0x1800034dd: mov	rcx, rbx
0x1800034e0: call	qword ptr [rip + 0xbaa]   ; KERNEL32.dll!UnhandledExceptionFilter
0x1800034e6: call	qword ptr [rip + 0xb24]   ; KERNEL32.dll!GetCurrentProcess
0x1800034ec: mov	rcx, rax
0x1800034ef: mov	edx, 0xc0000409
0x1800034f4: add	rsp, 0x20
0x1800034f8: pop	rbx
0x1800034f9: jmp	qword ptr [rip + 0xba0]   ; KERNEL32.dll!TerminateProcess
0x180003500: mov	qword ptr [rsp + 8], rcx
0x180003505: sub	rsp, 0x38
0x180003509: mov	ecx, 0x17
0x18000350e: call	qword ptr [rip + 0xb94]   ; KERNEL32.dll!IsProcessorFeaturePresent
0x180003514: test	eax, eax
0x180003516: je	0x18000351f
0x180003518: mov	ecx, 2
0x18000351d: int	0x29
0x18000351f: lea	rcx, [rip + 0x618d4a]
0x180003526: call	0x1800035d4
0x18000352b: mov	rax, qword ptr [rsp + 0x38]
0x180003530: mov	qword ptr [rip + 0x618e31], rax
0x180003537: lea	rax, [rsp + 0x38]
0x18000353c: add	rax, 8
0x180003540: mov	qword ptr [rip + 0x618dc1], rax
0x180003547: mov	rax, qword ptr [rip + 0x618e1a]
0x18000354e: mov	qword ptr [rip + 0x618c8b], rax
0x180003555: mov	rax, qword ptr [rsp + 0x40]
0x18000355a: mov	qword ptr [rip + 0x618d8f], rax
0x180003561: mov	dword ptr [rip + 0x618c65], 0xc0000409
0x18000356b: mov	dword ptr [rip + 0x618c5f], 1
0x180003575: mov	dword ptr [rip + 0x618c69], 1
0x18000357f: mov	eax, 8
0x180003584: imul	rax, rax, 0
0x180003588: lea	rcx, [rip + 0x618c61]
0x18000358f: mov	qword ptr [rcx + rax], 2
0x180003597: mov	eax, 8
0x18000359c: imul	rax, rax, 0
0x1800035a0: mov	rcx, qword ptr [rip + 0x618a99]
0x1800035a7: mov	qword ptr [rsp + rax + 0x20], rcx
0x1800035ac: mov	eax, 8
0x1800035b1: imul	rax, rax, 1
0x1800035b5: mov	rcx, qword ptr [rip + 0x618ac4]
0x1800035bc: mov	qword ptr [rsp + rax + 0x20], rcx
0x1800035c1: lea	rcx, [rip + 0xd00]
0x1800035c8: call	0x1800034cc
0x1800035cd: nop	
0x1800035ce: add	rsp, 0x38
0x1800035d2: ret	
0x1800035d3: int3	
0x1800035d4: push	rbx
0x1800035d6: push	rsi
0x1800035d7: push	rdi
0x1800035d8: sub	rsp, 0x40
0x1800035dc: mov	rbx, rcx
0x1800035df: call	qword ptr [rip + 0xafb]   ; KERNEL32.dll!RtlCaptureContext
0x1800035e5: mov	rsi, qword ptr [rbx + 0xf8]
0x1800035ec: xor	edi, edi
0x1800035ee: xor	r8d, r8d
0x1800035f1: lea	rdx, [rsp + 0x60]
0x1800035f6: mov	rcx, rsi
0x1800035f9: call	qword ptr [rip + 0xa81]   ; KERNEL32.dll!RtlLookupFunctionEntry
0x1800035ff: test	rax, rax
0x180003602: je	0x180003640
0x180003604: mov	rdx, qword ptr [rsp + 0x60]
0x180003609: lea	rcx, [rsp + 0x68]
0x18000360e: mov	qword ptr [rsp + 0x38], 0
0x180003617: mov	r9, rax
0x18000361a: mov	qword ptr [rsp + 0x30], rcx
0x18000361f: mov	r8, rsi
0x180003622: lea	rcx, [rsp + 0x70]
0x180003627: mov	qword ptr [rsp + 0x28], rcx
0x18000362c: xor	ecx, ecx
0x18000362e: mov	qword ptr [rsp + 0x20], rbx
0x180003633: call	qword ptr [rip + 0xa4f]   ; KERNEL32.dll!RtlVirtualUnwind
0x180003639: inc	edi
0x18000363b: cmp	edi, 2
0x18000363e: jl	0x1800035ee
0x180003640: add	rsp, 0x40
0x180003644: pop	rdi
0x180003645: pop	rsi
0x180003646: pop	rbx
0x180003647: ret	
0x180003648: lea	rax, [rip + 0xcb9]
0x18000364f: mov	qword ptr [rcx + 0x10], 0
0x180003657: mov	qword ptr [rcx + 8], rax
0x18000365b: lea	rax, [rip + 0xc96]
0x180003662: mov	qword ptr [rcx], rax
0x180003665: mov	rax, rcx
0x180003668: ret	
0x180003669: int3	
0x18000366a: int3	
0x18000366b: int3	
0x18000366c: sub	rsp, 0x48
0x180003670: lea	rcx, [rsp + 0x20]
0x180003675: call	0x180003648
0x18000367a: lea	rdx, [rip + 0x6178b7]
0x180003681: lea	rcx, [rsp + 0x20]
0x180003686: call	0x180003c1c
0x18000368b: int3	
0x18000368c: mov	qword ptr [rsp + 0x10], rbx
0x180003691: mov	qword ptr [rsp + 0x18], rbp
0x180003696: mov	qword ptr [rsp + 0x20], rsi
0x18000369b: push	rdi
0x18000369c: sub	rsp, 0x10
0x1800036a0: xor	eax, eax
0x1800036a2: xor	ecx, ecx
0x1800036a4: cpuid	
0x1800036a6: xor	ecx, 0x6c65746e
0x1800036ac: xor	edx, 0x49656e69
0x1800036b2: or	edx, ecx
0x1800036b4: mov	ebp, eax
0x1800036b6: mov	eax, 1
0x1800036bb: xor	ebx, 0x756e6547
0x1800036c1: or	edx, ebx
0x1800036c3: lea	ecx, [rax - 1]
0x1800036c6: cpuid	
0x1800036c8: mov	edi, ecx
0x1800036ca: jne	0x18000372a
0x1800036cc: and	eax, 0xfff3ff0
0x1800036d1: mov	qword ptr [rip + 0x6189bc], 0x8000
0x1800036dc: mov	qword ptr [rip + 0x6189b9], 0xffffffffffffffff
0x1800036e7: cmp	eax, 0x106c0
0x1800036ec: je	0x180003716
0x1800036ee: cmp	eax, 0x20660
0x1800036f3: je	0x180003716
0x1800036f5: cmp	eax, 0x20670
0x1800036fa: je	0x180003716
0x1800036fc: add	eax, 0xfffcf9b0
0x180003701: cmp	eax, 0x20
0x180003704: ja	0x18000372a
0x180003706: movabs	rcx, 0x100010001
0x180003710: bt	rcx, rax
0x180003714: jae	0x18000372a
0x180003716: mov	r8d, dword ptr [rip + 0x619027]
0x18000371d: or	r8d, 1
0x180003721: mov	dword ptr [rip + 0x61901c], r8d
0x180003728: jmp	0x180003731
0x18000372a: mov	r8d, dword ptr [rip + 0x619013]
0x180003731: xor	r9d, r9d
0x180003734: mov	esi, r9d
0x180003737: mov	r10d, r9d
0x18000373a: mov	r11d, r9d
0x18000373d: cmp	ebp, 7
0x180003740: jl	0x180003782
0x180003742: lea	eax, [r9 + 7]
0x180003746: xor	ecx, ecx
0x180003748: cpuid	
0x18000374a: mov	esi, edx
0x18000374c: mov	r9d, ebx
0x18000374f: bt	ebx, 9
0x180003753: jae	0x180003760
0x180003755: or	r8d, 2
0x180003759: mov	dword ptr [rip + 0x618fe4], r8d
0x180003760: cmp	eax, 1
0x180003763: jl	0x180003772
0x180003765: mov	eax, 7
0x18000376a: lea	ecx, [rax - 6]
0x18000376d: cpuid	
0x18000376f: mov	r10d, edx
0x180003772: mov	eax, 0x24
0x180003777: cmp	ebp, eax
0x180003779: jl	0x180003782
0x18000377b: xor	ecx, ecx
0x18000377d: cpuid	
0x18000377f: mov	r11d, ebx
0x180003782: mov	rax, qword ptr [rip + 0x6188ff]
0x180003789: and	rax, 0xfffffffffffffffe
0x18000378d: mov	dword ptr [rip + 0x6188f9], 1
0x180003797: mov	dword ptr [rip + 0x6188f3], 2
0x1800037a1: mov	qword ptr [rip + 0x6188e0], rax
0x1800037a8: bt	edi, 0x14
0x1800037ac: jae	0x1800037cd
0x1800037ae: and	rax, 0xffffffffffffffef
0x1800037b2: mov	dword ptr [rip + 0x6188d4], 2
0x1800037bc: mov	qword ptr [rip + 0x6188c5], rax
0x1800037c3: mov	dword ptr [rip + 0x6188c7], 6
0x1800037cd: bt	edi, 0x1b
0x1800037d1: jae	0x18000390a
0x1800037d7: xor	ecx, ecx
0x1800037d9: xgetbv	
0x1800037dc: shl	rdx, 0x20
0x1800037e0: or	rdx, rax
0x1800037e3: mov	qword ptr [rsp + 0x20], rdx
0x1800037e8: bt	edi, 0x1c
0x1800037ec: jae	0x1800038ee
0x1800037f2: mov	rax, qword ptr [rsp + 0x20]
0x1800037f7: and	al, 6
0x1800037f9: cmp	al, 6
0x1800037fb: jne	0x1800038ee
0x180003801: mov	eax, dword ptr [rip + 0x61888d]
0x180003807: mov	dl, 0xe0
0x180003809: or	eax, 8
0x18000380c: mov	dword ptr [rip + 0x61887a], 3
0x180003816: mov	dword ptr [rip + 0x618878], eax
0x18000381c: test	r9b, 0x20
0x180003820: je	0x180003884
0x180003822: or	eax, 0x20
0x180003825: mov	dword ptr [rip + 0x618861], 5
0x18000382f: mov	dword ptr [rip + 0x61885f], eax
0x180003835: mov	ecx, 0xd0030000
0x18000383a: mov	rax, qword ptr [rip + 0x618847]
0x180003841: and	r9d, ecx
0x180003844: and	rax, 0xfffffffffffffffd
0x180003848: mov	qword ptr [rip + 0x618839], rax
0x18000384f: cmp	r9d, ecx
0x180003852: jne	0x18000388b
0x180003854: mov	rax, qword ptr [rsp + 0x20]
0x180003859: and	al, dl
0x18000385b: cmp	al, dl
0x18000385d: jne	0x180003884
0x18000385f: mov	rax, qword ptr [rip + 0x618822]
0x180003866: or	dword ptr [rip + 0x618827], 0x40
0x18000386d: and	rax, 0xffffffffffffffdb
0x180003871: mov	dword ptr [rip + 0x618815], 6
0x18000387b: mov	qword ptr [rip + 0x618806], rax
0x180003882: jmp	0x18000388b
0x180003884: mov	rax, qword ptr [rip + 0x6187fd]
0x18000388b: bt	esi, 0x17
0x18000388f: jae	0x18000389d
0x180003891: btr	rax, 0x18
0x180003896: mov	qword ptr [rip + 0x6187eb], rax
0x18000389d: bt	r10d, 0x13
0x1800038a2: jae	0x1800038ee
0x1800038a4: mov	rax, qword ptr [rsp + 0x20]
0x1800038a9: and	al, dl
0x1800038ab: cmp	al, dl
0x1800038ad: jne	0x1800038ee
0x1800038af: mov	ecx, r11d
0x1800038b2: mov	eax, r11d
0x1800038b5: shr	rcx, 0x10
0x1800038b9: and	eax, 0x400ff
0x1800038be: and	ecx, 6
0x1800038c1: mov	dword ptr [rip + 0x618e79], eax
0x1800038c7: or	rcx, 0x1000029
0x1800038ce: not	rcx
0x1800038d1: and	rcx, qword ptr [rip + 0x6187b0]
0x1800038d8: mov	qword ptr [rip + 0x6187a9], rcx
0x1800038df: cmp	al, 1
0x1800038e1: jbe	0x1800038ee
0x1800038e3: and	rcx, 0xffffffffffffffbf
0x1800038e7: mov	qword ptr [rip + 0x61879a], rcx
0x1800038ee: bt	r10d, 0x15
0x1800038f3: jae	0x18000390a
0x1800038f5: mov	rax, qword ptr [rsp + 0x20]
0x1800038fa: bt	rax, 0x13
0x1800038ff: jae	0x18000390a
0x180003901: btr	qword ptr [rip + 0x61877e], 7
0x18000390a: mov	rbx, qword ptr [rsp + 0x28]
0x18000390f: xor	eax, eax
0x180003911: mov	rbp, qword ptr [rsp + 0x30]
0x180003916: mov	rsi, qword ptr [rsp + 0x38]
0x18000391b: add	rsp, 0x10
0x18000391f: pop	rdi
0x180003920: ret	
0x180003921: int3	
0x180003922: int3	
0x180003923: int3	
0x180003924: mov	eax, 1
0x180003929: ret	
0x18000392a: int3	
0x18000392b: int3	
0x18000392c: xor	eax, eax
0x18000392e: cmp	dword ptr [rip + 0x61877c], eax
0x180003934: setne	al
0x180003937: ret	
0x180003938: mov	dword ptr [rip + 0x618e06], 0
0x180003942: ret	
0x180003943: int3	
0x180003944: mov	qword ptr [rsp + 8], rbx
0x180003949: push	rbp
0x18000394a: lea	rbp, [rsp - 0x4c0]
0x180003952: sub	rsp, 0x5c0
0x180003959: mov	ebx, ecx
0x18000395b: mov	ecx, 0x17
0x180003960: call	qword ptr [rip + 0x742]   ; KERNEL32.dll!IsProcessorFeaturePresent
0x180003966: test	eax, eax
0x180003968: je	0x18000396e
0x18000396a: mov	ecx, ebx
0x18000396c: int	0x29
0x18000396e: mov	ecx, 3
0x180003973: call	0x180003938
0x180003978: xor	edx, edx
0x18000397a: lea	rcx, [rbp - 0x10]
0x18000397e: mov	r8d, 0x4d0
0x180003984: call	0x180003c22
0x180003989: lea	rcx, [rbp - 0x10]
0x18000398d: call	qword ptr [rip + 0x74d]   ; KERNEL32.dll!RtlCaptureContext
0x180003993: mov	rbx, qword ptr [rbp + 0xe8]
0x18000399a: lea	rdx, [rbp + 0x4d8]
0x1800039a1: mov	rcx, rbx
0x1800039a4: xor	r8d, r8d
0x1800039a7: call	qword ptr [rip + 0x6d3]   ; KERNEL32.dll!RtlLookupFunctionEntry
0x1800039ad: test	rax, rax
0x1800039b0: je	0x1800039f1
0x1800039b2: mov	rdx, qword ptr [rbp + 0x4d8]
0x1800039b9: lea	rcx, [rbp + 0x4e0]
0x1800039c0: mov	qword ptr [rsp + 0x38], 0
0x1800039c9: mov	r9, rax
0x1800039cc: mov	qword ptr [rsp + 0x30], rcx
0x1800039d1: mov	r8, rbx
0x1800039d4: lea	rcx, [rbp + 0x4e8]
0x1800039db: mov	qword ptr [rsp + 0x28], rcx
0x1800039e0: lea	rcx, [rbp - 0x10]
0x1800039e4: mov	qword ptr [rsp + 0x20], rcx
0x1800039e9: xor	ecx, ecx
0x1800039eb: call	qword ptr [rip + 0x697]   ; KERNEL32.dll!RtlVirtualUnwind
0x1800039f1: mov	rax, qword ptr [rbp + 0x4c8]
0x1800039f8: lea	rcx, [rsp + 0x50]
0x1800039fd: mov	qword ptr [rbp + 0xe8], rax
0x180003a04: xor	edx, edx
0x180003a06: lea	rax, [rbp + 0x4c8]
0x180003a0d: mov	r8d, 0x98
0x180003a13: add	rax, 8
0x180003a17: mov	qword ptr [rbp + 0x88], rax
0x180003a1e: call	0x180003c22
0x180003a23: mov	rax, qword ptr [rbp + 0x4c8]
0x180003a2a: mov	qword ptr [rsp + 0x60], rax
0x180003a2f: mov	dword ptr [rsp + 0x50], 0x40000015
0x180003a37: mov	dword ptr [rsp + 0x54], 1
0x180003a3f: call	qword ptr [rip + 0x66b]   ; KERNEL32.dll!IsDebuggerPresent
0x180003a45: mov	ebx, eax
0x180003a47: xor	ecx, ecx
0x180003a49: lea	rax, [rsp + 0x50]
0x180003a4e: mov	qword ptr [rsp + 0x40], rax
0x180003a53: lea	rax, [rbp - 0x10]
0x180003a57: mov	qword ptr [rsp + 0x48], rax
0x180003a5c: call	qword ptr [rip + 0x636]   ; KERNEL32.dll!SetUnhandledExceptionFilter
0x180003a62: lea	rcx, [rsp + 0x40]
0x180003a67: call	qword ptr [rip + 0x623]   ; KERNEL32.dll!UnhandledExceptionFilter
0x180003a6d: test	eax, eax
0x180003a6f: jne	0x180003a7e
0x180003a71: cmp	ebx, 1
0x180003a74: je	0x180003a7e
0x180003a76: lea	ecx, [rax + 3]
0x180003a79: call	0x180003938
0x180003a7e: mov	rbx, qword ptr [rsp + 0x5d0]
0x180003a86: add	rsp, 0x5c0
0x180003a8d: pop	rbp
0x180003a8e: ret	
0x180003a8f: int3	
0x180003a90: ret	0
0x180003a93: int3	
0x180003a94: mov	qword ptr [rsp + 0x18], rbx
0x180003a99: push	rbp
0x180003a9a: mov	rbp, rsp
0x180003a9d: sub	rsp, 0x30
0x180003aa1: mov	rax, qword ptr [rip + 0x618598]
0x180003aa8: movabs	rbx, 0x2b992ddfa232
0x180003ab2: cmp	rax, rbx
0x180003ab5: jne	0x180003b2e
0x180003ab7: lea	rcx, [rbp + 0x10]
0x180003abb: mov	qword ptr [rbp + 0x10], 0
0x180003ac3: call	qword ptr [rip + 0x607]   ; KERNEL32.dll!GetSystemTimeAsFileTime
0x180003ac9: mov	rax, qword ptr [rbp + 0x10]
0x180003acd: mov	qword ptr [rbp - 0x10], rax
0x180003ad1: call	qword ptr [rip + 0x5f1]   ; KERNEL32.dll!GetCurrentThreadId
0x180003ad7: mov	eax, eax
0x180003ad9: xor	qword ptr [rbp - 0x10], rax
0x180003add: call	qword ptr [rip + 0x5dd]   ; KERNEL32.dll!GetCurrentProcessId
0x180003ae3: mov	eax, eax
0x180003ae5: lea	rcx, [rbp + 0x18]
0x180003ae9: xor	qword ptr [rbp - 0x10], rax
0x180003aed: call	qword ptr [rip + 0x5c5]   ; KERNEL32.dll!QueryPerformanceCounter
0x180003af3: mov	eax, dword ptr [rbp + 0x18]
0x180003af6: lea	rcx, [rbp - 0x10]
0x180003afa: shl	rax, 0x20
0x180003afe: xor	rax, qword ptr [rbp + 0x18]
0x180003b02: xor	rax, qword ptr [rbp - 0x10]
0x180003b06: xor	rax, rcx
0x180003b09: movabs	rcx, 0xffffffffffff
0x180003b13: and	rax, rcx
0x180003b16: movabs	rcx, 0x2b992ddfa233
0x180003b20: cmp	rax, rbx
0x180003b23: cmove	rax, rcx
0x180003b27: mov	qword ptr [rip + 0x618512], rax
0x180003b2e: mov	rbx, qword ptr [rsp + 0x50]
0x180003b33: not	rax
0x180003b36: mov	qword ptr [rip + 0x618543], rax
0x180003b3d: add	rsp, 0x30
0x180003b41: pop	rbp
0x180003b42: ret	
0x180003b43: int3	
0x180003b44: lea	rcx, [rip + 0x618c05]
0x180003b4b: jmp	qword ptr [rip + 0x586]   ; KERNEL32.dll!InitializeSListHead
0x180003b52: int3	
0x180003b53: int3	
0x180003b54: lea	rcx, [rip + 0x618bf5]
0x180003b5b: jmp	0x180003c28
0x180003b60: lea	rax, [rip + 0x618bf9]
0x180003b67: ret	
0x180003b68: sub	rsp, 0x28
0x180003b6c: call	0x180001090
0x180003b71: or	qword ptr [rax], 0x24
0x180003b75: call	0x180003b60
0x180003b7a: or	qword ptr [rax], 2
0x180003b7e: add	rsp, 0x28
0x180003b82: ret	
0x180003b83: int3	
0x180003b84: lea	rax, [rip + 0x618c45]
0x180003b8b: ret	
0x180003b8c: mov	qword ptr [rsp + 8], rbx
0x180003b91: push	rdi
0x180003b92: sub	rsp, 0x20
0x180003b96: lea	rbx, [rip + 0x616e7b]
0x180003b9d: lea	rdi, [rip + 0x616e74]
0x180003ba4: jmp	0x180003bb8
0x180003ba6: mov	rax, qword ptr [rbx]
0x180003ba9: test	rax, rax
0x180003bac: je	0x180003bb4
0x180003bae: call	qword ptr [rip + 0x674]
0x180003bb4: add	rbx, 8
0x180003bb8: cmp	rbx, rdi
0x180003bbb: jb	0x180003ba6
0x180003bbd: mov	rbx, qword ptr [rsp + 0x30]
0x180003bc2: add	rsp, 0x20
0x180003bc6: pop	rdi
0x180003bc7: ret	
0x180003bc8: mov	qword ptr [rsp + 8], rbx
0x180003bcd: push	rdi
0x180003bce: sub	rsp, 0x20
0x180003bd2: lea	rbx, [rip + 0x616e4f]
0x180003bd9: lea	rdi, [rip + 0x616e48]
0x180003be0: jmp	0x180003bf4
0x180003be2: mov	rax, qword ptr [rbx]
0x180003be5: test	rax, rax
0x180003be8: je	0x180003bf0
0x180003bea: call	qword ptr [rip + 0x638]
0x180003bf0: add	rbx, 8
0x180003bf4: cmp	rbx, rdi
0x180003bf7: jb	0x180003be2
0x180003bf9: mov	rbx, qword ptr [rsp + 0x30]
0x180003bfe: add	rsp, 0x20
0x180003c02: pop	rdi
0x180003c03: ret	
0x180003c04: int3	
0x180003c05: int3	
0x180003c06: int3	
0x180003c07: int3	
0x180003c08: int3	
0x180003c09: int3	
0x180003c0a: int3	
0x180003c0b: int3	
0x180003c0c: int3	
0x180003c0d: int3	
0x180003c0e: int3	
0x180003c0f: int3	
0x180003c10: jmp	qword ptr [rip + 0x542]   ; VCRUNTIME140_1.dll!__CxxFrameHandler4
0x180003c16: jmp	qword ptr [rip + 0x50c]   ; VCRUNTIME140.dll!__C_specific_handler
0x180003c1c: jmp	qword ptr [rip + 0x526]   ; VCRUNTIME140.dll!_CxxThrowException
0x180003c22: jmp	qword ptr [rip + 0x4f8]   ; VCRUNTIME140.dll!memset
0x180003c28: jmp	qword ptr [rip + 0x4e2]   ; VCRUNTIME140.dll!__std_type_info_destroy_list
0x180003c2e: jmp	qword ptr [rip + 0x534]   ; api-ms-win-crt-heap-l1-1-0.dll!_callnewh
0x180003c34: jmp	qword ptr [rip + 0x536]   ; api-ms-win-crt-heap-l1-1-0.dll!malloc
0x180003c3a: jmp	qword ptr [rip + 0x560]   ; api-ms-win-crt-runtime-l1-1-0.dll!_seh_filter_dll
0x180003c40: jmp	qword ptr [rip + 0x5a2]   ; api-ms-win-crt-runtime-l1-1-0.dll!_configure_narrow_argv
0x180003c46: jmp	qword ptr [rip + 0x594]   ; api-ms-win-crt-runtime-l1-1-0.dll!_initialize_narrow_environment
0x180003c4c: jmp	qword ptr [rip + 0x586]   ; api-ms-win-crt-runtime-l1-1-0.dll!_initialize_onexit_table
0x180003c52: jmp	qword ptr [rip + 0x540]   ; api-ms-win-crt-runtime-l1-1-0.dll!_register_onexit_function
0x180003c58: jmp	qword ptr [rip + 0x56a]   ; api-ms-win-crt-runtime-l1-1-0.dll!_execute_onexit_table
0x180003c5e: jmp	qword ptr [rip + 0x55c]   ; api-ms-win-crt-runtime-l1-1-0.dll!_crt_atexit
0x180003c64: jmp	qword ptr [rip + 0x54e]   ; api-ms-win-crt-runtime-l1-1-0.dll!_cexit
0x180003c6a: jmp	qword ptr [rip + 0x508]   ; api-ms-win-crt-heap-l1-1-0.dll!free
0x180003c70: jmp	qword ptr [rip + 0x53a]   ; api-ms-win-crt-runtime-l1-1-0.dll!_initterm
0x180003c76: jmp	qword ptr [rip + 0x52c]   ; api-ms-win-crt-runtime-l1-1-0.dll!_initterm_e
0x180003c7c: mov	al, 1
0x180003c7e: ret	
0x180003c7f: int3	
0x180003c80: xor	eax, eax
0x180003c82: ret	
0x180003c83: int3	
0x180003c84: sub	rsp, 0x28
0x180003c88: mov	r8, qword ptr [r9 + 0x38]
0x180003c8c: mov	rcx, rdx
0x180003c8f: mov	rdx, r9
0x180003c92: call	0x180003ca4
0x180003c97: mov	eax, 1
0x180003c9c: add	rsp, 0x28
0x180003ca0: ret	
0x180003ca1: int3	
0x180003ca2: int3	
0x180003ca3: int3	
0x180003ca4: push	rbx
0x180003ca6: mov	r11d, dword ptr [r8]
0x180003ca9: mov	rbx, rdx
0x180003cac: and	r11d, 0xfffffff8
0x180003cb0: mov	r9, rcx
0x180003cb3: test	byte ptr [r8], 4
0x180003cb7: mov	r10, rcx
0x180003cba: je	0x180003ccf
0x180003cbc: mov	eax, dword ptr [r8 + 8]
0x180003cc0: movsxd	r10, dword ptr [r8 + 4]
0x180003cc4: neg	eax
0x180003cc6: add	r10, rcx
0x180003cc9: movsxd	rcx, eax
0x180003ccc: and	r10, rcx
0x180003ccf: movsxd	rax, r11d
0x180003cd2: mov	rdx, qword ptr [rax + r10]
0x180003cd6: mov	rax, qword ptr [rbx + 0x10]
0x180003cda: mov	ecx, dword ptr [rax + 8]
0x180003cdd: mov	rax, qword ptr [rbx + 8]
0x180003ce1: test	byte ptr [rcx + rax + 3], 0xf
0x180003ce6: je	0x180003cf8
0x180003ce8: movzx	eax, byte ptr [rcx + rax + 3]
0x180003ced: mov	ecx, 0xfffffff0
0x180003cf2: and	rax, rcx
0x180003cf5: add	r9, rax
0x180003cf8: xor	r9, rdx
0x180003cfb: mov	rcx, r9
0x180003cfe: pop	rbx
0x180003cff: jmp	0x180002d70
0x180003d04: mov	rax, rsp
0x180003d07: mov	qword ptr [rax + 8], rbx
0x180003d0b: mov	qword ptr [rax + 0x10], rbp
0x180003d0f: mov	qword ptr [rax + 0x18], rsi
0x180003d13: mov	qword ptr [rax + 0x20], rdi
0x180003d17: push	r14
0x180003d19: sub	rsp, 0x20
0x180003d1d: mov	rbx, qword ptr [r9 + 0x38]
0x180003d21: mov	rsi, rdx
0x180003d24: mov	r14, r8
0x180003d27: mov	rbp, rcx
0x180003d2a: mov	rdx, r9
0x180003d2d: mov	rcx, rsi
0x180003d30: mov	rdi, r9
0x180003d33: lea	r8, [rbx + 4]
0x180003d37: call	0x180003ca4
0x180003d3c: mov	eax, dword ptr [rbp + 4]
0x180003d3f: and	al, 0x66
0x180003d41: neg	al
0x180003d43: mov	eax, 1
0x180003d48: sbb	r9d, r9d
0x180003d4b: neg	r9d
0x180003d4e: add	r9d, eax
0x180003d51: test	dword ptr [rbx + 4], r9d
0x180003d55: je	0x180003d68
0x180003d57: mov	r9, rdi
0x180003d5a: mov	r8, r14
0x180003d5d: mov	rdx, rsi
0x180003d60: mov	rcx, rbp
0x180003d63: call	0x180003c10
0x180003d68: mov	rbx, qword ptr [rsp + 0x30]
0x180003d6d: mov	rbp, qword ptr [rsp + 0x38]
0x180003d72: mov	rsi, qword ptr [rsp + 0x40]
0x180003d77: mov	rdi, qword ptr [rsp + 0x48]
0x180003d7c: add	rsp, 0x20
0x180003d80: pop	r14
0x180003d82: ret	
0x180003d83: jmp	qword ptr [rip + 0x38f]   ; VCRUNTIME140.dll!memcpy
0x180003d89: jmp	qword ptr [rip + 0x3b1]   ; VCRUNTIME140.dll!memmove
0x180003d8f: jmp	qword ptr [rip + 0x3f3]   ; api-ms-win-crt-math-l1-1-0.dll!ceilf
0x180003d95: int3	
0x180003d96: int3	
0x180003d97: int3	
0x180003d98: int3	
0x180003d99: int3	
0x180003d9a: int3	
0x180003d9b: int3	
0x180003d9c: int3	
0x180003d9d: int3	
0x180003d9e: int3	
0x180003d9f: int3	
0x180003da0: int3	
0x180003da1: int3	
0x180003da2: int3	
0x180003da3: int3	
0x180003da4: int3	
0x180003da5: int3	
0x180003da6: nop	word ptr [rax + rax]
0x180003db0: jmp	rax
0x180003db2: int3	
0x180003db3: int3	
0x180003db4: int3	
0x180003db5: int3	
0x180003db6: int3	
0x180003db7: int3	
0x180003db8: int3	
0x180003db9: int3	
0x180003dba: int3	
0x180003dbb: int3	
0x180003dbc: int3	
0x180003dbd: int3	
0x180003dbe: int3	
0x180003dbf: int3	
0x180003dc0: int3	
0x180003dc1: int3	
0x180003dc2: int3	
0x180003dc3: int3	
0x180003dc4: int3	
0x180003dc5: int3	
0x180003dc6: nop	word ptr [rax + rax]
0x180003dd0: jmp	qword ptr [rip + 0x452]
0x180003dd6: int3	
0x180003dd7: int3	
0x180003dd8: int3	
0x180003dd9: int3	
0x180003dda: int3	
0x180003ddb: int3	
0x180003ddc: int3	
0x180003ddd: int3	
0x180003dde: int3	
0x180003ddf: int3	
0x180003de0: lea	rcx, [rip + 0x618989]
0x180003de7: add	rcx, 8
0x180003deb: jmp	0x180001e80
0x180003df0: lea	rcx, [rip + 0x618979]
0x180003df7: add	rcx, 0x18
0x180003dfb: jmp	0x180001e10
0x180003e00: mov	qword ptr [rsp + 0x10], rdx
0x180003e05: push	rbx
0x180003e06: push	rbp
0x180003e07: push	rdi
0x180003e08: sub	rsp, 0x30
0x180003e0c: mov	rbp, rdx
0x180003e0f: call	0x180001430
0x180003e14: mov	rcx, qword ptr [rbp + 0x40]
0x180003e18: mov	rax, qword ptr [rcx]
0x180003e1b: call	qword ptr [rax + 8]
0x180003e1e: mov	rbx, 0xffffffffffffffff
0x180003e25: inc	rbx
0x180003e28: cmp	byte ptr [rax + rbx], 0
0x180003e2c: jne	0x180003e25
0x180003e2e: mov	rcx, qword ptr [rbp + 0x38]
0x180003e32: cmp	rbx, qword ptr [rcx + 0x18]
0x180003e36: ja	0x180003e5d
0x180003e38: mov	rdi, rcx
0x180003e3b: cmp	qword ptr [rcx + 0x18], 0xf
0x180003e40: jbe	0x180003e45
0x180003e42: mov	rdi, qword ptr [rcx]
0x180003e45: mov	qword ptr [rcx + 0x10], rbx
0x180003e49: mov	r8, rbx
0x180003e4c: mov	rdx, rax
0x180003e4f: mov	rcx, rdi
0x180003e52: call	0x180003d89
0x180003e57: mov	byte ptr [rdi + rbx], 0
0x180003e5b: jmp	0x180003e69
0x180003e5d: mov	r9, rax
0x180003e60: mov	rdx, rbx
0x180003e63: call	0x180002760
0x180003e68: nop	
0x180003e69: movabs	rax, 0
0x180003e73: add	rsp, 0x30
0x180003e77: pop	rdi
0x180003e78: pop	rbp
0x180003e79: pop	rbx
0x180003e7a: ret	
0x180003e7b: int3	
0x180003e7c: int3	
0x180003e7d: int3	
0x180003e7e: int3	
0x180003e7f: int3	
0x180003e80: lea	rcx, [rdx + 0x20]
0x180003e87: jmp	0x180001ff0
0x180003e8c: lea	rcx, [rdx + 0x20]
0x180003e93: jmp	0x180001ff0
0x180003e98: int3	
0x180003e99: int3	
0x180003e9a: int3	
0x180003e9b: int3	
0x180003e9c: int3	
0x180003e9d: int3	
0x180003e9e: int3	
0x180003e9f: int3	
0x180003ea0: lea	rcx, [rdx + 0x40]
0x180003ea7: jmp	0x180001ee0
0x180003eac: push	rbp
0x180003eae: mov	rbp, rdx
0x180003eb1: mov	rax, qword ptr [rcx]
0x180003eb4: xor	ecx, ecx
0x180003eb6: cmp	dword ptr [rax], 0xc0000005
0x180003ebc: sete	cl
0x180003ebf: mov	eax, ecx
0x180003ec1: pop	rbp
0x180003ec2: ret	
0x180003ec3: int3	
0x180003ec4: push	rbp
0x180003ec6: sub	rsp, 0x20
0x180003eca: mov	rbp, rdx
0x180003ecd: mov	cl, byte ptr [rbp + 0x40]
0x180003ed0: add	rsp, 0x20
0x180003ed4: pop	rbp
0x180003ed5: jmp	0x180003098
0x180003eda: int3	
0x180003edb: push	rbp
0x180003edd: sub	rsp, 0x20
0x180003ee1: mov	rbp, rdx
0x180003ee4: mov	cl, byte ptr [rbp + 0x20]
0x180003ee7: call	0x180003098
0x180003eec: nop	
0x180003eed: add	rsp, 0x20
0x180003ef1: pop	rbp
0x180003ef2: ret	
0x180003ef3: int3	
0x180003ef4: push	rbp
0x180003ef6: sub	rsp, 0x20
0x180003efa: mov	rbp, rdx
0x180003efd: add	rsp, 0x20
0x180003f01: pop	rbp
0x180003f02: jmp	0x180002f24
0x180003f07: int3	
0x180003f08: push	rbp
0x180003f0a: sub	rsp, 0x30
0x180003f0e: mov	rbp, rdx
0x180003f11: mov	rax, qword ptr [rcx]
0x180003f14: mov	edx, dword ptr [rax]
0x180003f16: mov	qword ptr [rsp + 0x28], rcx
0x180003f1b: mov	dword ptr [rsp + 0x20], edx
0x180003f1f: lea	r9, [rip - 0xdae]
0x180003f26: mov	r8, qword ptr [rbp + 0x70]
0x180003f2a: mov	edx, dword ptr [rbp + 0x68]
0x180003f2d: mov	rcx, qword ptr [rbp + 0x60]
0x180003f31: call	0x180002e94
0x180003f36: nop	
0x180003f37: add	rsp, 0x30
0x180003f3b: pop	rbp
0x180003f3c: ret	
0x180003f3d: int3	
0x180003f3e: int3	
0x180003f3f: int3	
0x180003f40: lea	rcx, [rip + 0x618829]
0x180003f47: jmp	0x180001370
0x180003f4c: int3	
0x180003f4d: int3	
0x180003f4e: int3	
0x180003f4f: int3	
0x180003f50: sub	rsp, 0x38
0x180003f54: mov	rcx, qword ptr [rip + 0x618855]
0x180003f5b: test	rcx, rcx
0x180003f5e: je	0x180003fc4
0x180003f60: mov	rdx, qword ptr [rip + 0x618859]
0x180003f67: mov	rax, rcx
0x180003f6a: sub	rdx, rcx
0x180003f6d: and	rdx, 0xfffffffffffffff8
0x180003f71: cmp	rdx, 0x1000
0x180003f78: jb	0x180003fa9
0x180003f7a: mov	rcx, qword ptr [rcx - 8]
0x180003f7e: add	rdx, 0x27
0x180003f82: sub	rax, rcx
0x180003f85: sub	rax, 8
0x180003f89: cmp	rax, 0x1f
0x180003f8d: jbe	0x180003fa9
0x180003f8f: xor	r9d, r9d
0x180003f92: mov	qword ptr [rsp + 0x20], 0
0x180003f9b: xor	r8d, r8d
0x180003f9e: xor	edx, edx
0x180003fa0: xor	ecx, ecx
0x180003fa2: call	qword ptr [rip + 0x228]   ; api-ms-win-crt-runtime-l1-1-0.dll!_invoke_watson
0x180003fa8: int3	
0x180003fa9: call	0x180003144
0x180003fae: xorps	xmm0, xmm0
0x180003fb1: mov	qword ptr [rip + 0x6187f4], 0
0x180003fbc: movdqu	xmmword ptr [rip + 0x6187f4], xmm0
0x180003fc4: add	rsp, 0x38
0x180003fc8: ret	
0x180003fc9: add	byte ptr [rax], al
0x180003fcb: add	byte ptr [rax], al
0x180003fcd: add	byte ptr [rax], al
0x180003fcf: add	byte ptr [rax], al
0x180003fd1: add	byte ptr [rax], al
0x180003fd3: add	byte ptr [rax], al
0x180003fd5: add	byte ptr [rax], al
0x180003fd7: add	byte ptr [rax], al
0x180003fd9: add	byte ptr [rax], al
0x180003fdb: add	byte ptr [rax], al
0x180003fdd: add	byte ptr [rax], al
0x180003fdf: add	byte ptr [rax], al
0x180003fe1: add	byte ptr [rax], al
0x180003fe3: add	byte ptr [rax], al
0x180003fe5: add	byte ptr [rax], al
0x180003fe7: add	byte ptr [rax], al
0x180003fe9: add	byte ptr [rax], al
0x180003feb: add	byte ptr [rax], al
0x180003fed: add	byte ptr [rax], al
0x180003fef: add	byte ptr [rax], al
0x180003ff1: add	byte ptr [rax], al
0x180003ff3: add	byte ptr [rax], al
0x180003ff5: add	byte ptr [rax], al
0x180003ff7: add	byte ptr [rax], al
0x180003ff9: add	byte ptr [rax], al
0x180003ffb: add	byte ptr [rax], al
0x180003ffd: add	byte ptr [rax], al