storport!RaidStartIoPacket:
fffff804`21246d60 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff804`21246d65 55              push    rbp
fffff804`21246d66 56              push    rsi
fffff804`21246d67 57              push    rdi
fffff804`21246d68 4154            push    r12
fffff804`21246d6a 4155            push    r13
fffff804`21246d6c 4156            push    r14
fffff804`21246d6e 4157            push    r15
fffff804`21246d70 488d6c24e0      lea     rbp,[rsp-20h]
fffff804`21246d75 4881ec20010000  sub     rsp,120h
fffff804`21246d7c 488b05fda51200  mov     rax,qword ptr [storport!_security_cookie (fffff804`21371380)]
fffff804`21246d83 4833c4          xor     rax,rsp
fffff804`21246d86 48894518        mov     qword ptr [rbp+18h],rax
fffff804`21246d8a 4c8ba2b8000000  mov     r12,qword ptr [rdx+0B8h]
fffff804`21246d91 4533f6          xor     r14d,r14d
fffff804`21246d94 33c0            xor     eax,eax
fffff804`21246d96 4489742478      mov     dword ptr [rsp+78h],r14d
fffff804`21246d9b 0f57c0          xorps   xmm0,xmm0
fffff804`21246d9e 488945e0        mov     qword ptr [rbp-20h],rax
fffff804`21246da2 488bfa          mov     rdi,rdx
fffff804`21246da5 8945e8          mov     dword ptr [rbp-18h],eax
fffff804`21246da8 4c8bf9          mov     r15,rcx
fffff804`21246dab 4489442464      mov     dword ptr [rsp+64h],r8d
fffff804`21246db0 0f1145d0        movups  xmmword ptr [rbp-30h],xmm0
fffff804`21246db4 4d8b6c2408      mov     r13,qword ptr [r12+8]
fffff804`21246db9 4c896d08        mov     qword ptr [rbp+8],r13
fffff804`21246dbd 4889542470      mov     qword ptr [rsp+70h],rdx
fffff804`21246dc2 4c896590        mov     qword ptr [rbp-70h],r12
fffff804`21246dc6 4c897598        mov     qword ptr [rbp-68h],r14
fffff804`21246dca 4c8975b0        mov     qword ptr [rbp-50h],r14
fffff804`21246dce 448975ac        mov     dword ptr [rbp-54h],r14d
fffff804`21246dd2 448975a8        mov     dword ptr [rbp-58h],r14d
fffff804`21246dd6 3881180d0000    cmp     byte ptr [rcx+0D18h],al
fffff804`21246ddc 0f85fa040000    jne     storport!RaidStartIoPacket+0x57c (fffff804`212472dc)  Branch

storport!RaidStartIoPacket+0x82:
fffff804`21246de2 4488742460      mov     byte ptr [rsp+60h],r14b

storport!RaidStartIoPacket+0x87:
fffff804`21246de7 410fb64d02      movzx   ecx,byte ptr [r13+2]
fffff804`21246dec 80f928          cmp     cl,28h
fffff804`21246def 0f8511030000    jne     storport!RaidStartIoPacket+0x3a6 (fffff804`21247106)  Branch

storport!RaidStartIoPacket+0x95:
fffff804`21246df5 418b7518        mov     esi,dword ptr [r13+18h]

storport!RaidStartIoPacket+0x99:
fffff804`21246df9 41f687ca01000002 test    byte ptr [r15+1CAh],2
fffff804`21246e01 0f8583020000    jne     storport!RaidStartIoPacket+0x32a (fffff804`2124708a)  Branch

storport!RaidStartIoPacket+0xa7:
fffff804`21246e07 488d4c2478      lea     rcx,[rsp+78h]
fffff804`21246e0c 4c8b1595551300  mov     r10,qword ptr [storport!_imp_KeGetCurrentProcessorNumberEx (fffff804`2137c3a8)]
fffff804`21246e13 e868b3586d      call    nt!KeGetCurrentProcessorNumberEx (fffff804`8e7d2180)
fffff804`21246e18 41807d0228      cmp     byte ptr [r13+2],28h
fffff804`21246e1d 0f85c0030000    jne     storport!RaidStartIoPacket+0x483 (fffff804`212471e3)  Branch

storport!RaidStartIoPacket+0xc3:
fffff804`21246e23 8b442478        mov     eax,dword ptr [rsp+78h]
fffff804`21246e27 41894560        mov     dword ptr [r13+60h],eax
fffff804`21246e2b 4c896d98        mov     qword ptr [rbp-68h],r13

storport!RaidStartIoPacket+0xcf:
fffff804`21246e2f 33c0            xor     eax,eax
fffff804`21246e31 f0450fb1b780030000 lock cmpxchg dword ptr [r15+380h],r14d
fffff804`21246e3a 41f6878800000002 test    byte ptr [r15+88h],2
fffff804`21246e42 8bd8            mov     ebx,eax
fffff804`21246e44 8944247c        mov     dword ptr [rsp+7Ch],eax
fffff804`21246e48 48c745a0ffffffff mov     qword ptr [rbp-60h],0FFFFFFFFFFFFFFFFh
fffff804`21246e50 0f84a9010000    je      storport!RaidStartIoPacket+0x29f (fffff804`21246fff)  Branch

storport!RaidStartIoPacket+0xf6:
fffff804`21246e56 488b97b8000000  mov     rdx,qword ptr [rdi+0B8h]
fffff804`21246e5d 803a0f          cmp     byte ptr [rdx],0Fh
fffff804`21246e60 0f8599010000    jne     storport!RaidStartIoPacket+0x29f (fffff804`21246fff)  Branch

storport!RaidStartIoPacket+0x106:
fffff804`21246e66 488b5208        mov     rdx,qword ptr [rdx+8]
fffff804`21246e6a 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff804`21246e6e 3c28            cmp     al,28h
fffff804`21246e70 0f8528040000    jne     storport!RaidStartIoPacket+0x53e (fffff804`2124729e)  Branch

storport!RaidStartIoPacket+0x116:
fffff804`21246e76 8b4a14          mov     ecx,dword ptr [rdx+14h]

storport!RaidStartIoPacket+0x119:
fffff804`21246e79 85c9            test    ecx,ecx
fffff804`21246e7b 0f857e010000    jne     storport!RaidStartIoPacket+0x29f (fffff804`21246fff)  Branch

storport!RaidStartIoPacket+0x121:
fffff804`21246e81 3c28            cmp     al,28h
fffff804`21246e83 0f8575030000    jne     storport!RaidStartIoPacket+0x49e (fffff804`212471fe)  Branch

storport!RaidStartIoPacket+0x129:
fffff804`21246e89 4d8bce          mov     r9,r14
fffff804`21246e8c 44397214        cmp     dword ptr [rdx+14h],r14d
fffff804`21246e90 754c            jne     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x132:
fffff804`21246e92 8b7a38          mov     edi,dword ptr [rdx+38h]
fffff804`21246e95 458be6          mov     r12d,r14d
fffff804`21246e98 85ff            test    edi,edi
fffff804`21246e9a 7442            je      storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x13c:
fffff804`21246e9c 4c8d5a78        lea     r11,[rdx+78h]

storport!RaidStartIoPacket+0x140:
fffff804`21246ea0 418b03          mov     eax,dword ptr [r11]
fffff804`21246ea3 3d80000000      cmp     eax,80h
fffff804`21246ea8 7228            jb      storport!RaidStartIoPacket+0x172 (fffff804`21246ed2)  Branch

storport!RaidStartIoPacket+0x14a:
fffff804`21246eaa 448b4210        mov     r8d,dword ptr [rdx+10h]
fffff804`21246eae 413bc0          cmp     eax,r8d
fffff804`21246eb1 731f            jae     storport!RaidStartIoPacket+0x172 (fffff804`21246ed2)  Branch

storport!RaidStartIoPacket+0x153:
fffff804`21246eb3 8b1c02          mov     ebx,dword ptr [rdx+rax]
fffff804`21246eb6 4c8d1402        lea     r10,[rdx+rax]
fffff804`21246eba 8bc8            mov     ecx,eax
fffff804`21246ebc 83fb40          cmp     ebx,40h
fffff804`21246ebf 0f85c6040000    jne     storport!RaidStartIoPacket+0x62b (fffff804`2124738b)  Branch

storport!RaidStartIoPacket+0x165:
fffff804`21246ec5 4883c128        add     rcx,28h
fffff804`21246ec9 493bc8          cmp     rcx,r8
fffff804`21246ecc 0f86f7030000    jbe     storport!RaidStartIoPacket+0x569 (fffff804`212472c9)  Branch

storport!RaidStartIoPacket+0x172:
fffff804`21246ed2 41ffc4          inc     r12d
fffff804`21246ed5 4983c304        add     r11,4
fffff804`21246ed9 443be7          cmp     r12d,edi
fffff804`21246edc 72c2            jb      storport!RaidStartIoPacket+0x140 (fffff804`21246ea0)  Branch

storport!RaidStartIoPacket+0x17e:
fffff804`21246ede 4532c0          xor     r8b,r8b
fffff804`21246ee1 44397214        cmp     dword ptr [rdx+14h],r14d
fffff804`21246ee5 0f8523030000    jne     storport!RaidStartIoPacket+0x4ae (fffff804`2124720e)  Branch

storport!RaidStartIoPacket+0x18b:
fffff804`21246eeb 448b6238        mov     r12d,dword ptr [rdx+38h]
fffff804`21246eef 448975a0        mov     dword ptr [rbp-60h],r14d
fffff804`21246ef3 4585e4          test    r12d,r12d
fffff804`21246ef6 0f8412030000    je      storport!RaidStartIoPacket+0x4ae (fffff804`2124720e)  Branch

storport!RaidStartIoPacket+0x19c:
fffff804`21246efc 488d5a78        lea     rbx,[rdx+78h]

storport!RaidStartIoPacket+0x1a0:
fffff804`21246f00 8b03            mov     eax,dword ptr [rbx]
fffff804`21246f02 3d80000000      cmp     eax,80h
fffff804`21246f07 722a            jb      storport!RaidStartIoPacket+0x1d3 (fffff804`21246f33)  Branch

storport!RaidStartIoPacket+0x1a9:
fffff804`21246f09 448b5210        mov     r10d,dword ptr [rdx+10h]
fffff804`21246f0d 413bc2          cmp     eax,r10d
fffff804`21246f10 7321            jae     storport!RaidStartIoPacket+0x1d3 (fffff804`21246f33)  Branch

storport!RaidStartIoPacket+0x1b2:
fffff804`21246f12 448b1c02        mov     r11d,dword ptr [rdx+rax]
fffff804`21246f16 488d3c02        lea     rdi,[rdx+rax]
fffff804`21246f1a 8bc8            mov     ecx,eax
fffff804`21246f1c 4183fb40        cmp     r11d,40h
fffff804`21246f20 0f85120a0000    jne     storport!RaidStartIoPacket+0xbd8 (fffff804`21247938)  Branch

storport!RaidStartIoPacket+0x1c6:
fffff804`21246f26 4883c128        add     rcx,28h

storport!RaidStartIoPacket+0x1ca:
fffff804`21246f2a 493bca          cmp     rcx,r10
fffff804`21246f2d 0f86d6020000    jbe     storport!RaidStartIoPacket+0x4a9 (fffff804`21247209)  Branch

storport!RaidStartIoPacket+0x1d3:
fffff804`21246f33 8b45a0          mov     eax,dword ptr [rbp-60h]
fffff804`21246f36 4883c304        add     rbx,4
fffff804`21246f3a ffc0            inc     eax
fffff804`21246f3c 8945a0          mov     dword ptr [rbp-60h],eax
fffff804`21246f3f 413bc4          cmp     eax,r12d
fffff804`21246f42 72bc            jb      storport!RaidStartIoPacket+0x1a0 (fffff804`21246f00)  Branch

storport!RaidStartIoPacket+0x1e4:
fffff804`21246f44 e9c5020000      jmp     storport!RaidStartIoPacket+0x4ae (fffff804`2124720e)  Branch

storport!RaidStartIoPacket+0x1e9:
fffff804`21246f49 498d5548        lea     rdx,[r13+48h]

storport!RaidStartIoPacket+0x1ed:
fffff804`21246f4d 0fb60a          movzx   ecx,byte ptr [rdx]
fffff804`21246f50 8d41f8          lea     eax,[rcx-8]
fffff804`21246f53 a8fd            test    al,0FDh
fffff804`21246f55 0f8463150000    je      storport!RaidStartIoPacket+0x175e (fffff804`212484be)  Branch

storport!RaidStartIoPacket+0x1fb:
fffff804`21246f5b 8d41d8          lea     eax,[rcx-28h]
fffff804`21246f5e a8fd            test    al,0FDh
fffff804`21246f60 0f85de140000    jne     storport!RaidStartIoPacket+0x16e4 (fffff804`21248444)  Branch

storport!RaidStartIoPacket+0x206:
fffff804`21246f66 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff804`21246f6a 884583          mov     byte ptr [rbp-7Dh],al
fffff804`21246f6d 0fb64203        movzx   eax,byte ptr [rdx+3]
fffff804`21246f71 884582          mov     byte ptr [rbp-7Eh],al
fffff804`21246f74 0fb64204        movzx   eax,byte ptr [rdx+4]
fffff804`21246f78 884581          mov     byte ptr [rbp-7Fh],al
fffff804`21246f7b 0fb64205        movzx   eax,byte ptr [rdx+5]
fffff804`21246f7f 884580          mov     byte ptr [rbp-80h],al
fffff804`21246f82 4c8b4580        mov     r8,qword ptr [rbp-80h]

storport!RaidStartIoPacket+0x226:
fffff804`21246f86 498b87600d0000  mov     rax,qword ptr [r15+0D60h]
fffff804`21246f8d 498b4f18        mov     rcx,qword ptr [r15+18h]
fffff804`21246f91 0fb61c38        movzx   ebx,byte ptr [rax+rdi]
fffff804`21246f95 4885c9          test    rcx,rcx
fffff804`21246f98 7461            je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x23a:
fffff804`21246f9a 81394441564e    cmp     dword ptr [rcx],4E564144h
fffff804`21246fa0 7459            je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x242:
fffff804`21246fa2 448b9144130000  mov     r10d,dword ptr [rcx+1344h]
fffff804`21246fa9 4585d2          test    r10d,r10d
fffff804`21246fac 744d            je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x24e:
fffff804`21246fae 4c8b8948130000  mov     r9,qword ptr [rcx+1348h]
fffff804`21246fb5 4d85c9          test    r9,r9
fffff804`21246fb8 7441            je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x25a:
fffff804`21246fba 418bc4          mov     eax,r12d
fffff804`21246fbd f00fc18140130000 lock xadd dword ptr [rcx+1340h],eax
fffff804`21246fc5 ffc0            inc     eax
fffff804`21246fc7 33d2            xor     edx,edx
fffff804`21246fc9 41f7f2          div     eax,r10d
fffff804`21246fcc 488d0c52        lea     rcx,[rdx+rdx*2]
fffff804`21246fd0 48c1e104        shl     rcx,4
fffff804`21246fd4 4903c9          add     rcx,r9
fffff804`21246fd7 c7012f000000    mov     dword ptr [rcx],2Fh
fffff804`21246fdd 48a11400000080f7ffff mov rax,qword ptr [FFFFF78000000014h]
fffff804`21246fe7 48894128        mov     qword ptr [rcx+28h],rax
fffff804`21246feb 4c894108        mov     qword ptr [rcx+8],r8
fffff804`21246fef 48897910        mov     qword ptr [rcx+10h],rdi
fffff804`21246ff3 48895918        mov     qword ptr [rcx+18h],rbx
fffff804`21246ff7 4c896120        mov     qword ptr [rcx+20h],r12

storport!RaidStartIoPacket+0x29b:
fffff804`21246ffb 4c8b6590        mov     r12,qword ptr [rbp-70h]

storport!RaidStartIoPacket+0x29f:
fffff804`21246fff 8b542464        mov     edx,dword ptr [rsp+64h]

storport!RaidStartIoPacket+0x2a3:
fffff804`21247003 410fb64502      movzx   eax,byte ptr [r13+2]
fffff804`21247008 3c28            cmp     al,28h
fffff804`2124700a 7504            jne     storport!RaidStartIoPacket+0x2b0 (fffff804`21247010)  Branch

storport!RaidStartIoPacket+0x2ac:
fffff804`2124700c 418b4514        mov     eax,dword ptr [r13+14h]

storport!RaidStartIoPacket+0x2b0:
fffff804`21247010 bf02000000      mov     edi,2
fffff804`21247015 83f809          cmp     eax,9
fffff804`21247018 7558            jne     storport!RaidStartIoPacket+0x312 (fffff804`21247072)  Branch

storport!RaidStartIoPacket+0x2ba:
fffff804`2124701a f7c600081000    test    esi,100800h
fffff804`21247020 0f848c0a0000    je      storport!RaidStartIoPacket+0xd52 (fffff804`21247ab2)  Branch

storport!RaidStartIoPacket+0x2c6:
fffff804`21247026 83ca08          or      edx,8
fffff804`21247029 4d89742410      mov     qword ptr [r12+10h],r14
fffff804`2124702e 89542464        mov     dword ptr [rsp+64h],edx
fffff804`21247032 4538b7c9010000  cmp     byte ptr [r15+1C9h],r14b
fffff804`21247039 0f8d620a0000    jge     storport!RaidStartIoPacket+0xd41 (fffff804`21247aa1)  Branch

storport!RaidStartIoPacket+0x2df:
fffff804`2124703f 498b8f38070000  mov     rcx,qword ptr [r15+738h]
fffff804`21247046 4c8b158b511300  mov     r10,qword ptr [storport!_imp_ExAcquireRundownProtectionCacheAware (fffff804`2137c1d8)]
fffff804`2124704d e8fe80446d      call    nt!ExAcquireRundownProtectionCacheAware (fffff804`8e68f150)
fffff804`21247052 84c0            test    al,al
fffff804`21247054 0f84470a0000    je      storport!RaidStartIoPacket+0xd41 (fffff804`21247aa1)  Branch

storport!RaidStartIoPacket+0x2fa:
fffff804`2124705a 498b8f38070000  mov     rcx,qword ptr [r15+738h]
fffff804`21247061 4c8b15e0521300  mov     r10,qword ptr [storport!_imp_ExReleaseRundownProtectionCacheAware (fffff804`2137c348)]
fffff804`21247068 e8032a4f6d      call    nt!ExReleaseRundownProtectionCacheAware (fffff804`8e739a70)
fffff804`2124706d e9c90a0000      jmp     storport!RaidStartIoPacket+0xddb (fffff804`21247b3b)  Branch

storport!RaidStartIoPacket+0x312:
fffff804`21247072 83f808          cmp     eax,8
fffff804`21247075 0f85c50d0000    jne     storport!RaidStartIoPacket+0x10e0 (fffff804`21247e40)  Branch

storport!RaidStartIoPacket+0x31b:
fffff804`2124707b 498b4718        mov     rax,qword ptr [r15+18h]
fffff804`2124707f 4438b0d3010000  cmp     byte ptr [rax+1D3h],r14b
fffff804`21247086 7592            jne     storport!RaidStartIoPacket+0x2ba (fffff804`2124701a)  Branch

storport!RaidStartIoPacket+0x328:
fffff804`21247088 eb9c            jmp     storport!RaidStartIoPacket+0x2c6 (fffff804`21247026)  Branch

storport!RaidStartIoPacket+0x32a:
fffff804`2124708a 80f928          cmp     cl,28h
fffff804`2124708d 0f8517020000    jne     storport!RaidStartIoPacket+0x54a (fffff804`212472aa)  Branch

storport!RaidStartIoPacket+0x333:
fffff804`21247093 418b4514        mov     eax,dword ptr [r13+14h]

storport!RaidStartIoPacket+0x337:
fffff804`21247097 83f820          cmp     eax,20h
fffff804`2124709a 0f8467fdffff    je      storport!RaidStartIoPacket+0xa7 (fffff804`21246e07)  Branch

storport!RaidStartIoPacket+0x340:
fffff804`212470a0 83f813          cmp     eax,13h
fffff804`212470a3 0f845efdffff    je      storport!RaidStartIoPacket+0xa7 (fffff804`21246e07)  Branch

storport!RaidStartIoPacket+0x349:
fffff804`212470a9 85c0            test    eax,eax
fffff804`212470ab 756f            jne     storport!RaidStartIoPacket+0x3bc (fffff804`2124711c)  Branch

storport!RaidStartIoPacket+0x34d:
fffff804`212470ad 80f928          cmp     cl,28h
fffff804`212470b0 755d            jne     storport!RaidStartIoPacket+0x3af (fffff804`2124710f)  Branch

storport!RaidStartIoPacket+0x352:
fffff804`212470b2 498bd6          mov     rdx,r14
fffff804`212470b5 45397514        cmp     dword ptr [r13+14h],r14d
fffff804`212470b9 7558            jne     storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0x35b:
fffff804`212470bb 458b4538        mov     r8d,dword ptr [r13+38h]
fffff804`212470bf 458bde          mov     r11d,r14d
fffff804`212470c2 4585c0          test    r8d,r8d
fffff804`212470c5 744c            je      storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0x367:
fffff804`212470c7 4d8d5578        lea     r10,[r13+78h]

storport!RaidStartIoPacket+0x36b:
fffff804`212470cb 418b02          mov     eax,dword ptr [r10]
fffff804`212470ce 3d80000000      cmp     eax,80h
fffff804`212470d3 7223            jb      storport!RaidStartIoPacket+0x398 (fffff804`212470f8)  Branch

storport!RaidStartIoPacket+0x375:
fffff804`212470d5 458b4d10        mov     r9d,dword ptr [r13+10h]
fffff804`212470d9 413bc1          cmp     eax,r9d
fffff804`212470dc 731a            jae     storport!RaidStartIoPacket+0x398 (fffff804`212470f8)  Branch

storport!RaidStartIoPacket+0x37e:
fffff804`212470de 428b0c28        mov     ecx,dword ptr [rax+r13]
fffff804`212470e2 83f940          cmp     ecx,40h
fffff804`212470e5 0f857c080000    jne     storport!RaidStartIoPacket+0xc07 (fffff804`21247967)  Branch

storport!RaidStartIoPacket+0x38b:
fffff804`212470eb 488d4828        lea     rcx,[rax+28h]

storport!RaidStartIoPacket+0x38f:
fffff804`212470ef 493bc9          cmp     rcx,r9
fffff804`212470f2 0f867c020000    jbe     storport!RaidStartIoPacket+0x614 (fffff804`21247374)  Branch

storport!RaidStartIoPacket+0x398:
fffff804`212470f8 41ffc3          inc     r11d
fffff804`212470fb 4983c204        add     r10,4
fffff804`212470ff 453bd8          cmp     r11d,r8d
fffff804`21247102 72c7            jb      storport!RaidStartIoPacket+0x36b (fffff804`212470cb)  Branch

storport!RaidStartIoPacket+0x3a4:
fffff804`21247104 eb0d            jmp     storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0x3a6:
fffff804`21247106 418b750c        mov     esi,dword ptr [r13+0Ch]
fffff804`2124710a e9eafcffff      jmp     storport!RaidStartIoPacket+0x99 (fffff804`21246df9)  Branch

storport!RaidStartIoPacket+0x3af:
fffff804`2124710f 498d5548        lea     rdx,[r13+48h]

storport!RaidStartIoPacket+0x3b3:
fffff804`21247113 4885d2          test    rdx,rdx
fffff804`21247116 0f8595010000    jne     storport!RaidStartIoPacket+0x551 (fffff804`212472b1)  Branch

storport!RaidStartIoPacket+0x3bc:
fffff804`2124711c 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff804`21247124 448bc0          mov     r8d,eax
fffff804`21247127 498b4728        mov     rax,qword ptr [r15+28h]
fffff804`2124712b 49c1e006        shl     r8,6
fffff804`2124712f 458b0c00        mov     r9d,dword ptr [r8+rax]

storport!RaidStartIoPacket+0x3d3:
fffff804`21247133 41f6c101        test    r9b,1
fffff804`21247137 0f8563110000    jne     storport!RaidStartIoPacket+0x1540 (fffff804`212482a0)  Branch

storport!RaidStartIoPacket+0x3dd:
fffff804`2124713d 498b4f28        mov     rcx,qword ptr [r15+28h]
fffff804`21247141 418d51fe        lea     edx,[r9-2]
fffff804`21247145 418bc1          mov     eax,r9d
fffff804`21247148 f0420fb11401    lock cmpxchg dword ptr [rcx+r8],edx
fffff804`2124714e 448bc8          mov     r9d,eax
fffff804`21247151 75e0            jne     storport!RaidStartIoPacket+0x3d3 (fffff804`21247133)  Branch

storport!RaidStartIoPacket+0x3f3:
fffff804`21247153 41807d0228      cmp     byte ptr [r13+2],28h
fffff804`21247158 410fb64503      movzx   eax,byte ptr [r13+3]
fffff804`2124715d 0f85bf070000    jne     storport!RaidStartIoPacket+0xbc2 (fffff804`21247922)  Branch

storport!RaidStartIoPacket+0x403:
fffff804`21247163 c0f807          sar     al,7
fffff804`21247166 2480            and     al,80h
fffff804`21247168 0438            add     al,38h

storport!RaidStartIoPacket+0x40a:
fffff804`2124716a 41884503        mov     byte ptr [r13+3],al
fffff804`2124716e 44383518ab1200  cmp     byte ptr [storport!StorEtwLoggingEnabled (fffff804`21371c8d)],r14b
fffff804`21247175 c6878d000000ac  mov     byte ptr [rdi+8Dh],0ACh
fffff804`2124717c c747300a0500c0  mov     dword ptr [rdi+30h],0C000050Ah
fffff804`21247183 743b            je      storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x425:
fffff804`21247185 0f57c0          xorps   xmm0,xmm0
fffff804`21247188 488d5508        lea     rdx,[rbp+8]
fffff804`2124718c 488bcf          mov     rcx,rdi
fffff804`2124718f 0f114508        movups  xmmword ptr [rbp+8],xmm0
fffff804`21247193 4c8b1506501300  mov     r10,qword ptr [storport!_imp_IoGetActivityIdIrp (fffff804`2137c1a0)]
fffff804`2124719a e8e114596d      call    nt!IoGetActivityIdIrp (fffff804`8e7d8680)
fffff804`2124719f 488b8fb8000000  mov     rcx,qword ptr [rdi+0B8h]
fffff804`212471a6 0fb601          movzx   eax,byte ptr [rcx]
fffff804`212471a9 3c0f            cmp     al,0Fh
fffff804`212471ab 0f855b0c0000    jne     storport!RaidStartIoPacket+0x10ac (fffff804`21247e0c)  Branch

storport!RaidStartIoPacket+0x451:
fffff804`212471b1 0fb60529b11200  movzx   eax,byte ptr [storport!Microsoft_Windows_StorPortEnableBits+0x1 (fffff804`213722e1)]
fffff804`212471b8 84c0            test    al,al
fffff804`212471ba 0f885e130000    js      storport!RaidStartIoPacket+0x17be (fffff804`2124851e)  Branch

storport!RaidStartIoPacket+0x460:
fffff804`212471c0 33d2            xor     edx,edx
fffff804`212471c2 488bcf          mov     rcx,rdi
fffff804`212471c5 4c8b154c511300  mov     r10,qword ptr [storport!_imp_IofCompleteRequest (fffff804`2137c318)]
fffff804`212471cc e84fb1416d      call    nt!IofCompleteRequest (fffff804`8e662320)
fffff804`212471d1 f049ff87a8080000 lock inc qword ptr [r15+8A8h]
fffff804`212471d9 b801000000      mov     eax,1
fffff804`212471de e9f7050000      jmp     storport!RaidStartIoPacket+0xa7a (fffff804`212477da)  Branch

storport!RaidStartIoPacket+0x483:
fffff804`212471e3 4d397528        cmp     qword ptr [r13+28h],r14
fffff804`212471e7 7508            jne     storport!RaidStartIoPacket+0x491 (fffff804`212471f1)  Branch

storport!RaidStartIoPacket+0x489:
fffff804`212471e9 498b4538        mov     rax,qword ptr [r13+38h]
fffff804`212471ed 49894528        mov     qword ptr [r13+28h],rax

storport!RaidStartIoPacket+0x491:
fffff804`212471f1 8b442478        mov     eax,dword ptr [rsp+78h]
fffff804`212471f5 41894538        mov     dword ptr [r13+38h],eax
fffff804`212471f9 e931fcffff      jmp     storport!RaidStartIoPacket+0xcf (fffff804`21246e2f)  Branch

storport!RaidStartIoPacket+0x49e:
fffff804`212471fe 440fb6420a      movzx   r8d,byte ptr [rdx+0Ah]
fffff804`21247203 4c8d4a48        lea     r9,[rdx+48h]
fffff804`21247207 eb09            jmp     storport!RaidStartIoPacket+0x4b2 (fffff804`21247212)  Branch

storport!RaidStartIoPacket+0x4a9:
fffff804`21247209 440fb6470a      movzx   r8d,byte ptr [rdi+0Ah]

storport!RaidStartIoPacket+0x4ae:
fffff804`2124720e 8b5c247c        mov     ebx,dword ptr [rsp+7Ch]

storport!RaidStartIoPacket+0x4b2:
fffff804`21247212 410fb6c8        movzx   ecx,r8b
fffff804`21247216 4d85c9          test    r9,r9
fffff804`21247219 0f84dcfdffff    je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x4bf:
fffff804`2124721f 410fb601        movzx   eax,byte ptr [r9]
fffff804`21247223 2c0a            sub     al,0Ah
fffff804`21247225 a85f            test    al,5Fh
fffff804`21247227 0f85cefdffff    jne     storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x4cd:
fffff804`2124722d 4539b7a4030000  cmp     dword ptr [r15+3A4h],r14d
fffff804`21247234 0f84c1fdffff    je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x4da:
fffff804`2124723a 807a0228        cmp     byte ptr [rdx+2],28h
fffff804`2124723e 7565            jne     storport!RaidStartIoPacket+0x545 (fffff804`212472a5)  Branch

storport!RaidStartIoPacket+0x4e0:
fffff804`21247240 8b4218          mov     eax,dword ptr [rdx+18h]

storport!RaidStartIoPacket+0x4e3:
fffff804`21247243 0fbae00c        bt      eax,0Ch
fffff804`21247247 0f83aefdffff    jae     storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x4ed:
fffff804`2124724d 4d39b7600d0000  cmp     qword ptr [r15+0D60h],r14
fffff804`21247254 0f84a1fdffff    je      storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x4fa:
fffff804`2124725a 8bd1            mov     edx,ecx
fffff804`2124725c 498bc9          mov     rcx,r9
fffff804`2124725f e8a84e0f00      call    storport!PortSrbGetLbaFromCdb (fffff804`2133c10c)
fffff804`21247264 488bd0          mov     rdx,rax
fffff804`21247267 498bcf          mov     rcx,r15
fffff804`2124726a e8ad2b0600      call    storport!GetZoneIndexFromUnitAndLba (fffff804`212a9e1c)
fffff804`2124726f 488b542470      mov     rdx,qword ptr [rsp+70h]
fffff804`21247274 498d8fd0020000  lea     rcx,[r15+2D0h]
fffff804`2124727b 8bf8            mov     edi,eax
fffff804`2124727d e8e2af0400      call    storport!RaidUpdateZoneIoReceiveWithStatus (fffff804`21292264)
fffff804`21247282 84c0            test    al,al
fffff804`21247284 0f84670f0000    je      storport!RaidStartIoPacket+0x1491 (fffff804`212481f1)  Branch

storport!RaidStartIoPacket+0x52a:
fffff804`2124728a 8b542464        mov     edx,dword ptr [rsp+64h]
fffff804`2124728e 4c8b6590        mov     r12,qword ptr [rbp-70h]
fffff804`21247292 83ca20          or      edx,20h
fffff804`21247295 89542464        mov     dword ptr [rsp+64h],edx
fffff804`21247299 e965fdffff      jmp     storport!RaidStartIoPacket+0x2a3 (fffff804`21247003)  Branch

storport!RaidStartIoPacket+0x53e:
fffff804`2124729e 8bc8            mov     ecx,eax
fffff804`212472a0 e9d4fbffff      jmp     storport!RaidStartIoPacket+0x119 (fffff804`21246e79)  Branch

storport!RaidStartIoPacket+0x545:
fffff804`212472a5 8b420c          mov     eax,dword ptr [rdx+0Ch]
fffff804`212472a8 eb99            jmp     storport!RaidStartIoPacket+0x4e3 (fffff804`21247243)  Branch

storport!RaidStartIoPacket+0x54a:
fffff804`212472aa 8bc1            mov     eax,ecx
fffff804`212472ac e9e6fdffff      jmp     storport!RaidStartIoPacket+0x337 (fffff804`21247097)  Branch

storport!RaidStartIoPacket+0x551:
fffff804`212472b1 0fb602          movzx   eax,byte ptr [rdx]
fffff804`212472b4 3c12            cmp     al,12h
fffff804`212472b6 0f844bfbffff    je      storport!RaidStartIoPacket+0xa7 (fffff804`21246e07)  Branch

storport!RaidStartIoPacket+0x55c:
fffff804`212472bc 3ca0            cmp     al,0A0h
fffff804`212472be 0f8558feffff    jne     storport!RaidStartIoPacket+0x3bc (fffff804`2124711c)  Branch

storport!RaidStartIoPacket+0x564:
fffff804`212472c4 e93efbffff      jmp     storport!RaidStartIoPacket+0xa7 (fffff804`21246e07)  Branch

storport!RaidStartIoPacket+0x569:
fffff804`212472c9 45384a0a        cmp     byte ptr [r10+0Ah],r9b
fffff804`212472cd 0f860bfcffff    jbe     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x573:
fffff804`212472d3 4d8d4a18        lea     r9,[r10+18h]
fffff804`212472d7 e902fcffff      jmp     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x57c:
fffff804`212472dc 410fb64502      movzx   eax,byte ptr [r13+2]
fffff804`212472e1 3c28            cmp     al,28h
fffff804`212472e3 0f8548060000    jne     storport!RaidStartIoPacket+0xbd1 (fffff804`21247931)  Branch

storport!RaidStartIoPacket+0x589:
fffff804`212472e9 418b4d14        mov     ecx,dword ptr [r13+14h]

storport!RaidStartIoPacket+0x58d:
fffff804`212472ed 85c9            test    ecx,ecx
fffff804`212472ef 0f85edfaffff    jne     storport!RaidStartIoPacket+0x82 (fffff804`21246de2)  Branch

storport!RaidStartIoPacket+0x595:
fffff804`212472f5 3c28            cmp     al,28h
fffff804`212472f7 0f8561060000    jne     storport!RaidStartIoPacket+0xbfe (fffff804`2124795e)  Branch

storport!RaidStartIoPacket+0x59d:
fffff804`212472fd 4d8bc6          mov     r8,r14
fffff804`21247300 45397514        cmp     dword ptr [r13+14h],r14d
fffff804`21247304 754c            jne     storport!RaidStartIoPacket+0x5f2 (fffff804`21247352)  Branch

storport!RaidStartIoPacket+0x5a6:
fffff804`21247306 418b7d38        mov     edi,dword ptr [r13+38h]
fffff804`2124730a 418bf6          mov     esi,r14d
fffff804`2124730d 85ff            test    edi,edi
fffff804`2124730f 743e            je      storport!RaidStartIoPacket+0x5ef (fffff804`2124734f)  Branch

storport!RaidStartIoPacket+0x5b1:
fffff804`21247311 498d5d78        lea     rbx,[r13+78h]

storport!RaidStartIoPacket+0x5b5:
fffff804`21247315 8b03            mov     eax,dword ptr [rbx]
fffff804`21247317 3d80000000      cmp     eax,80h
fffff804`2124731c 7227            jb      storport!RaidStartIoPacket+0x5e5 (fffff804`21247345)  Branch

storport!RaidStartIoPacket+0x5be:
fffff804`2124731e 458b4d10        mov     r9d,dword ptr [r13+10h]
fffff804`21247322 413bc1          cmp     eax,r9d
fffff804`21247325 731e            jae     storport!RaidStartIoPacket+0x5e5 (fffff804`21247345)  Branch

storport!RaidStartIoPacket+0x5c7:
fffff804`21247327 428b0c28        mov     ecx,dword ptr [rax+r13]
fffff804`2124732b 4e8d1c28        lea     r11,[rax+r13]
fffff804`2124732f 83f940          cmp     ecx,40h
fffff804`21247332 0f85eb060000    jne     storport!RaidStartIoPacket+0xcc3 (fffff804`21247a23)  Branch

storport!RaidStartIoPacket+0x5d8:
fffff804`21247338 488d4828        lea     rcx,[rax+28h]
fffff804`2124733c 493bc9          cmp     rcx,r9
fffff804`2124733f 0f8658060000    jbe     storport!RaidStartIoPacket+0xc3d (fffff804`2124799d)  Branch

storport!RaidStartIoPacket+0x5e5:
fffff804`21247345 ffc6            inc     esi
fffff804`21247347 4883c304        add     rbx,4
fffff804`2124734b 3bf7            cmp     esi,edi
fffff804`2124734d 72c6            jb      storport!RaidStartIoPacket+0x5b5 (fffff804`21247315)  Branch

storport!RaidStartIoPacket+0x5ef:
fffff804`2124734f 488bfa          mov     rdi,rdx

storport!RaidStartIoPacket+0x5f2:
fffff804`21247352 4d85c0          test    r8,r8
fffff804`21247355 0f8487faffff    je      storport!RaidStartIoPacket+0x82 (fffff804`21246de2)  Branch

storport!RaidStartIoPacket+0x5fb:
fffff804`2124735b 410fb608        movzx   ecx,byte ptr [r8]
fffff804`2124735f 8d41f8          lea     eax,[rcx-8]
fffff804`21247362 a85d            test    al,5Dh
fffff804`21247364 0f858a110000    jne     storport!RaidStartIoPacket+0x1794 (fffff804`212484f4)  Branch

storport!RaidStartIoPacket+0x60a:
fffff804`2124736a c644246001      mov     byte ptr [rsp+60h],1
fffff804`2124736f e973faffff      jmp     storport!RaidStartIoPacket+0x87 (fffff804`21246de7)  Branch

storport!RaidStartIoPacket+0x614:
fffff804`21247374 423854280a      cmp     byte ptr [rax+r13+0Ah],dl
fffff804`21247379 0f8694fdffff    jbe     storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0x61f:
fffff804`2124737f 498d5518        lea     rdx,[r13+18h]
fffff804`21247383 4803d0          add     rdx,rax
fffff804`21247386 e988fdffff      jmp     storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0x62b:
fffff804`2124738b 83eb41          sub     ebx,41h
fffff804`2124738e 0f84c20b0000    je      storport!RaidStartIoPacket+0x11f6 (fffff804`21247f56)  Branch

storport!RaidStartIoPacket+0x634:
fffff804`21247394 83fb01          cmp     ebx,1
fffff804`21247397 0f8535fbffff    jne     storport!RaidStartIoPacket+0x172 (fffff804`21246ed2)  Branch

storport!RaidStartIoPacket+0x63d:
fffff804`2124739d 4883c128        add     rcx,28h
fffff804`212473a1 493bc8          cmp     rcx,r8
fffff804`212473a4 0f8728fbffff    ja      storport!RaidStartIoPacket+0x172 (fffff804`21246ed2)  Branch

storport!RaidStartIoPacket+0x64a:
fffff804`212473aa 45394a0c        cmp     dword ptr [r10+0Ch],r9d
fffff804`212473ae 0f862afbffff    jbe     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x654:
fffff804`212473b4 4d8d4a20        lea     r9,[r10+20h]
fffff804`212473b8 e921fbffff      jmp     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x65d:
fffff804`212473bd 33c0            xor     eax,eax
fffff804`212473bf 0f57c0          xorps   xmm0,xmm0
fffff804`212473c2 418bde          mov     ebx,r14d
fffff804`212473c5 48894500        mov     qword ptr [rbp],rax
fffff804`212473c9 0f1145f0        movups  xmmword ptr [rbp-10h],xmm0
fffff804`212473cd 394608          cmp     dword ptr [rsi+8],eax
fffff804`212473d0 7667            jbe     storport!RaidStartIoPacket+0x6d9 (fffff804`21247439)  Branch

storport!RaidStartIoPacket+0x672:
fffff804`212473d2 4c8d68ff        lea     r13,[rax-1]
fffff804`212473d6 66660f1f840000000000 nop word ptr [rax+rax]

storport!RaidStartIoPacket+0x680:
fffff804`212473e0 8bfb            mov     edi,ebx
fffff804`212473e2 488d55f0        lea     rdx,[rbp-10h]
fffff804`212473e6 48ffc7          inc     rdi
fffff804`212473e9 48c1e706        shl     rdi,6
fffff804`212473ed 4803fe          add     rdi,rsi
fffff804`212473f0 488d4f28        lea     rcx,[rdi+28h]
fffff804`212473f4 4c8b156d4f1300  mov     r10,qword ptr [storport!_imp_KeAcquireInStackQueuedSpinLock (fffff804`2137c368)]
fffff804`212473fb e8c011426d      call    nt!KeAcquireInStackQueuedSpinLock (fffff804`8e6685c0)
fffff804`21247400 488b07          mov     rax,qword ptr [rdi]
fffff804`21247403 483bc7          cmp     rax,rdi
fffff804`21247406 0f85f6030000    jne     storport!RaidStartIoPacket+0xaa2 (fffff804`21247802)  Branch

storport!RaidStartIoPacket+0x6ac:
fffff804`2124740c 488d4df0        lea     rcx,[rbp-10h]
fffff804`21247410 4c8b15214c1300  mov     r10,qword ptr [storport!_imp_KeReleaseInStackQueuedSpinLock (fffff804`2137c038)]
fffff804`21247417 e86424426d      call    nt!KeReleaseInStackQueuedSpinLock (fffff804`8e669880)
fffff804`2124741c ffc3            inc     ebx
fffff804`2124741e 3b5e08          cmp     ebx,dword ptr [rsi+8]
fffff804`21247421 72bd            jb      storport!RaidStartIoPacket+0x680 (fffff804`212473e0)  Branch

storport!RaidStartIoPacket+0x6c3:
fffff804`21247423 498d45ff        lea     rax,[r13-1]
fffff804`21247427 4c896da0        mov     qword ptr [rbp-60h],r13
fffff804`2124742b 4c8b6d08        mov     r13,qword ptr [rbp+8]
fffff804`2124742f 4883f8fd        cmp     rax,0FFFFFFFFFFFFFFFDh
fffff804`21247433 0f8662040000    jbe     storport!RaidStartIoPacket+0xb3b (fffff804`2124789b)  Branch

storport!RaidStartIoPacket+0x6d9:
fffff804`21247439 488b742470      mov     rsi,qword ptr [rsp+70h]

storport!RaidStartIoPacket+0x6de:
fffff804`2124743e 41807d0228      cmp     byte ptr [r13+2],28h
fffff804`21247443 0f8579040000    jne     storport!RaidStartIoPacket+0xb62 (fffff804`212478c2)  Branch

storport!RaidStartIoPacket+0x6e9:
fffff804`21247449 498bfd          mov     rdi,r13
fffff804`2124744c 4c896d98        mov     qword ptr [rbp-68h],r13
fffff804`21247450 45897504        mov     dword ptr [r13+4],r14d
fffff804`21247454 4589751c        mov     dword ptr [r13+1Ch],r14d

storport!RaidStartIoPacket+0x6f8:
fffff804`21247458 448b442464      mov     r8d,dword ptr [rsp+64h]
fffff804`2124745d 488d45a8        lea     rax,[rbp-58h]
fffff804`21247461 4889442438      mov     qword ptr [rsp+38h],rax
fffff804`21247466 498d8fd0020000  lea     rcx,[r15+2D0h]
fffff804`2124746d 488d45ac        lea     rax,[rbp-54h]
fffff804`21247471 488bd6          mov     rdx,rsi
fffff804`21247474 4889442430      mov     qword ptr [rsp+30h],rax
fffff804`21247479 488d45b0        lea     rax,[rbp-50h]
fffff804`2124747d 4889442428      mov     qword ptr [rsp+28h],rax
fffff804`21247482 4488642420      mov     byte ptr [rsp+20h],r12b
fffff804`21247487 e834110000      call    storport!RaidInsertDeviceQueue (fffff804`212485c0)
fffff804`2124748c 0fb6d8          movzx   ebx,al
fffff804`2124748f 84c0            test    al,al
fffff804`21247491 0f8519050000    jne     storport!RaidStartIoPacket+0xc50 (fffff804`212479b0)  Branch

storport!RaidStartIoPacket+0x737:
fffff804`21247497 f644246408      test    byte ptr [rsp+64h],8
fffff804`2124749c 750d            jne     storport!RaidStartIoPacket+0x74b (fffff804`212474ab)  Branch

storport!RaidStartIoPacket+0x73e:
fffff804`2124749e 4538b7f7020000  cmp     byte ptr [r15+2F7h],r14b
fffff804`212474a5 0f8538090000    jne     storport!RaidStartIoPacket+0x1083 (fffff804`21247de3)  Branch

storport!RaidStartIoPacket+0x74b:
fffff804`212474ab 84db            test    bl,bl
fffff804`212474ad 0f85cc030000    jne     storport!RaidStartIoPacket+0xb1f (fffff804`2124787f)  Branch

storport!RaidStartIoPacket+0x753:
fffff804`212474b3 c6868d000000a8  mov     byte ptr [rsi+8Dh],0A8h
fffff804`212474ba 4c8d6678        lea     r12,[rsi+78h]
fffff804`212474be 498bbfd8020000  mov     rdi,qword ptr [r15+2D8h]
fffff804`212474c5 33c0            xor     eax,eax
fffff804`212474c7 0f57c0          xorps   xmm0,xmm0
fffff804`212474ca 488945c8        mov     qword ptr [rbp-38h],rax
fffff804`212474ce 0f1145b8        movups  xmmword ptr [rbp-48h],xmm0
fffff804`212474d2 418bce          mov     ecx,r14d
fffff804`212474d5 488b5f30        mov     rbx,qword ptr [rdi+30h]
fffff804`212474d9 83bbc803000001  cmp     dword ptr [rbx+3C8h],1
fffff804`212474e0 0f87270c0000    ja      storport!RaidStartIoPacket+0x13ad (fffff804`2124810d)  Branch

storport!RaidStartIoPacket+0x786:
fffff804`212474e6 8bc1            mov     eax,ecx
fffff804`212474e8 488d1c80        lea     rbx,[rax+rax*4]
fffff804`212474ec 48c1e306        shl     rbx,6
fffff804`212474f0 4803df          add     rbx,rdi
fffff804`212474f3 7411            je      storport!RaidStartIoPacket+0x7a6 (fffff804`21247506)  Branch

storport!RaidStartIoPacket+0x795:
fffff804`212474f5 488b4330        mov     rax,qword ptr [rbx+30h]
fffff804`212474f9 4439b0dc030000  cmp     dword ptr [rax+3DCh],r14d
fffff804`21247500 0f85da040000    jne     storport!RaidStartIoPacket+0xc80 (fffff804`212479e0)  Branch

storport!RaidStartIoPacket+0x7a6:
fffff804`21247506 44397328        cmp     dword ptr [rbx+28h],r14d
fffff804`2124750a 0f85d0040000    jne     storport!RaidStartIoPacket+0xc80 (fffff804`212479e0)  Branch

storport!RaidStartIoPacket+0x7b0:
fffff804`21247510 448b8b80000000  mov     r9d,dword ptr [rbx+80h]
fffff804`21247517 4585c9          test    r9d,r9d
fffff804`2124751a 0f84f2020000    je      storport!RaidStartIoPacket+0xab2 (fffff804`21247812)  Branch

storport!RaidStartIoPacket+0x7c0:
fffff804`21247520 488b8398000000  mov     rax,qword ptr [rbx+98h]
fffff804`21247527 33d2            xor     edx,edx
fffff804`21247529 488b4840        mov     rcx,qword ptr [rax+40h]
fffff804`2124752d 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff804`21247535 448b81d0030000  mov     r8d,dword ptr [rcx+3D0h]
fffff804`2124753c 488b4b40        mov     rcx,qword ptr [rbx+40h]
fffff804`21247540 41f7f0          div     eax,r8d
fffff804`21247543 8bc2            mov     eax,edx
fffff804`21247545 33d2            xor     edx,edx
fffff804`21247547 410fafc1        imul    eax,r9d
fffff804`2124754b 41f7f0          div     eax,r8d
fffff804`2124754e 8bf0            mov     esi,eax
fffff804`21247550 488b0cc1        mov     rcx,qword ptr [rcx+rax*8]
fffff804`21247554 4c8b15954b1300  mov     r10,qword ptr [storport!_imp_ExpInterlockedPopEntrySList (fffff804`2137c0f0)]
fffff804`2124755b e890b3836d      call    nt!ExpInterlockedPopEntrySList (fffff804`8ea828f0)
fffff804`21247560 488bc8          mov     rcx,rax
fffff804`21247563 4885c0          test    rax,rax
fffff804`21247566 0f8450090000    je      storport!RaidStartIoPacket+0x115c (fffff804`21247ebc)  Branch

storport!RaidStartIoPacket+0x80c:
fffff804`2124756c 8931            mov     dword ptr [rcx],esi

storport!RaidStartIoPacket+0x80e:
fffff804`2124756e 488b742470      mov     rsi,qword ptr [rsp+70h]

storport!RaidStartIoPacket+0x813:
fffff804`21247573 4885c9          test    rcx,rcx
fffff804`21247576 0f84cb0b0000    je      storport!RaidStartIoPacket+0x13e7 (fffff804`21248147)  Branch

storport!RaidStartIoPacket+0x81c:
fffff804`2124757c 41bc01000000    mov     r12d,1
fffff804`21247582 418bc4          mov     eax,r12d
fffff804`21247585 f00fc183c0000000 lock xadd dword ptr [rbx+0C0h],eax
fffff804`2124758d ffc0            inc     eax
fffff804`2124758f 3b4324          cmp     eax,dword ptr [rbx+24h]
fffff804`21247592 0f83f5020000    jae     storport!RaidStartIoPacket+0xb2d (fffff804`2124788d)  Branch

storport!RaidStartIoPacket+0x838:
fffff804`21247598 488d5930        lea     rbx,[rcx+30h]
fffff804`2124759c 41bdffff0000    mov     r13d,0FFFFh
fffff804`212475a2 48895de0        mov     qword ptr [rbp-20h],rbx
fffff804`212475a6 488d81a0030000  lea     rax,[rcx+3A0h]
fffff804`212475ad 488945e8        mov     qword ptr [rbp-18h],rax
fffff804`212475b1 488d81a0040000  lea     rax,[rcx+4A0h]
fffff804`212475b8 488945d8        mov     qword ptr [rbp-28h],rax
fffff804`212475bc 4c8b8928030000  mov     r9,qword ptr [rcx+328h]
fffff804`212475c3 8b9118030000    mov     edx,dword ptr [rcx+318h]
fffff804`212475c9 8063109c        and     byte ptr [rbx+10h],9Ch
fffff804`212475cd 488bbb18030000  mov     rdi,qword ptr [rbx+318h]
fffff804`212475d4 c7034c3d2e1f    mov     dword ptr [rbx],1F2E3D4Ch
fffff804`212475da 4c897308        mov     qword ptr [rbx+8],r14
fffff804`212475de 6644896b14      mov     word ptr [rbx+14h],r13w
fffff804`212475e3 c64316ff        mov     byte ptr [rbx+16h],0FFh
fffff804`212475e7 44897318        mov     dword ptr [rbx+18h],r14d
fffff804`212475eb 4c897368        mov     qword ptr [rbx+68h],r14
fffff804`212475ef 4c897370        mov     qword ptr [rbx+70h],r14
fffff804`212475f3 4c89b388000000  mov     qword ptr [rbx+88h],r14
fffff804`212475fa 4c89b398000000  mov     qword ptr [rbx+98h],r14
fffff804`21247601 4c89b390000000  mov     qword ptr [rbx+90h],r14
fffff804`21247608 4c89b3c0000000  mov     qword ptr [rbx+0C0h],r14
fffff804`2124760f 4c89b3a0000000  mov     qword ptr [rbx+0A0h],r14
fffff804`21247616 4c89b3a8000000  mov     qword ptr [rbx+0A8h],r14
fffff804`2124761d 4c89b3d8000000  mov     qword ptr [rbx+0D8h],r14
fffff804`21247624 4c89b3e0000000  mov     qword ptr [rbx+0E0h],r14
fffff804`2124762b 4c897378        mov     qword ptr [rbx+78h],r14
fffff804`2124762f 4c89b3b8020000  mov     qword ptr [rbx+2B8h],r14
fffff804`21247636 4c89b3c0020000  mov     qword ptr [rbx+2C0h],r14
fffff804`2124763d 4c89b3c8020000  mov     qword ptr [rbx+2C8h],r14
fffff804`21247644 4c89b3d0020000  mov     qword ptr [rbx+2D0h],r14
fffff804`2124764b 8993e8020000    mov     dword ptr [rbx+2E8h],edx
fffff804`21247651 4c898bf8020000  mov     qword ptr [rbx+2F8h],r9
fffff804`21247658 4d85c9          test    r9,r9
fffff804`2124765b 740d            je      storport!RaidStartIoPacket+0x90a (fffff804`2124766a)  Branch

storport!RaidStartIoPacket+0x8fd:
fffff804`2124765d 448bc2          mov     r8d,edx
fffff804`21247660 498bc9          mov     rcx,r9
fffff804`21247663 33d2            xor     edx,edx
fffff804`21247665 e816db0f00      call    storport!_memset_spec_ermsb (fffff804`21345180)

storport!RaidStartIoPacket+0x90a:
fffff804`2124766a 8063107f        and     byte ptr [rbx+10h],7Fh
fffff804`2124766e 488d155b150000  lea     rdx,[storport!RaUnitStartIo (fffff804`21248bd0)]
fffff804`21247675 806311f0        and     byte ptr [rbx+11h],0F0h
fffff804`21247679 4c8d45d0        lea     r8,[rbp-30h]
fffff804`2124767d 4c89b300030000  mov     qword ptr [rbx+300h],r14
fffff804`21247684 0f57c0          xorps   xmm0,xmm0
fffff804`21247687 4489b3ec020000  mov     dword ptr [rbx+2ECh],r14d
fffff804`2124768e 4533c9          xor     r9d,r9d
fffff804`21247691 4489b308030000  mov     dword ptr [rbx+308h],r14d
fffff804`21247698 4889bb18030000  mov     qword ptr [rbx+318h],rdi
fffff804`2124769f 664489ab0c030000 mov     word ptr [rbx+30Ch],r13w
fffff804`212476a7 4c89b310030000  mov     qword ptr [rbx+310h],r14
fffff804`212476ae c78320030000ffffffff mov dword ptr [rbx+320h],0FFFFFFFFh
fffff804`212476b8 4489b328030000  mov     dword ptr [rbx+328h],r14d
fffff804`212476bf 4489b330030000  mov     dword ptr [rbx+330h],r14d
fffff804`212476c6 4c89b338030000  mov     qword ptr [rbx+338h],r14
fffff804`212476cd 0f118340030000  movups  xmmword ptr [rbx+340h],xmm0
fffff804`212476d4 4c89b350030000  mov     qword ptr [rbx+350h],r14
fffff804`212476db 4c89b358030000  mov     qword ptr [rbx+358h],r14
fffff804`212476e2 4c89b360030000  mov     qword ptr [rbx+360h],r14
fffff804`212476e9 4c89b368030000  mov     qword ptr [rbx+368h],r14
fffff804`212476f0 498b87c8020000  mov     rax,qword ptr [r15+2C8h]
fffff804`212476f7 498b8fc0020000  mov     rcx,qword ptr [r15+2C0h]
fffff804`212476fe 483bc2          cmp     rax,rdx
fffff804`21247701 488bd6          mov     rdx,rsi
fffff804`21247704 0f85950e0000    jne     storport!RaidStartIoPacket+0x183f (fffff804`2124859f)  Branch

storport!RaidStartIoPacket+0x9aa:
fffff804`2124770a e8c1140000      call    storport!RaUnitStartIo (fffff804`21248bd0) //

storport!RaidStartIoPacket+0x9af:
fffff804`2124770f 458bec          mov     r13d,r12d

storport!RaidStartIoPacket+0x9b2:
fffff804`21247712 807c246001      cmp     byte ptr [rsp+60h],1
fffff804`21247717 0f85aa000000    jne     storport!RaidStartIoPacket+0xa67 (fffff804`212477c7)  Branch

storport!RaidStartIoPacket+0x9bd:
fffff804`2124771d 498b4718        mov     rax,qword ptr [r15+18h]
fffff804`21247721 f6803412000001  test    byte ptr [rax+1234h],1
fffff804`21247728 0f8499000000    je      storport!RaidStartIoPacket+0xa67 (fffff804`212477c7)  Branch

storport!RaidStartIoPacket+0x9ce:
fffff804`2124772e 8b442478        mov     eax,dword ptr [rsp+78h]
fffff804`21247732 0fb7d0          movzx   edx,ax
fffff804`21247735 3b15959e1200    cmp     edx,dword ptr [storport!g_RaidPerfRedirectGroupCount (fffff804`213715d0)]
fffff804`2124773b 0f8386000000    jae     storport!RaidStartIoPacket+0xa67 (fffff804`212477c7)  Branch

storport!RaidStartIoPacket+0x9e1:
fffff804`21247741 440fb644247a    movzx   r8d,byte ptr [rsp+7Ah]
fffff804`21247747 0fb7c8          movzx   ecx,ax
fffff804`2124774a 488b05af9d1200  mov     rax,qword ptr [storport!g_RaidDPCRedirectionProcessors (fffff804`21371500)]
fffff804`21247751 443b0488        cmp     r8d,dword ptr [rax+rcx*4]
fffff804`21247755 7370            jae     storport!RaidStartIoPacket+0xa67 (fffff804`212477c7)  Branch

storport!RaidStartIoPacket+0x9f7:
fffff804`21247757 488b059a9e1200  mov     rax,qword ptr [storport!g_RaidPerProcessorState (fffff804`213715f8)]
fffff804`2124775e c1e206          shl     edx,6
fffff804`21247761 418d0c10        lea     ecx,[r8+rdx]
fffff804`21247765 48c1e107        shl     rcx,7
fffff804`21247769 4487640160      xchg    r12d,dword ptr [rcx+rax+60h]
fffff804`2124776e 488d1c01        lea     rbx,[rcx+rax]
fffff804`21247772 488d3c01        lea     rdi,[rcx+rax]
fffff804`21247776 488d4b40        lea     rcx,[rbx+40h]
fffff804`2124777a 4c8b150f4b1300  mov     r10,qword ptr [storport!_imp_FirstEntrySList (fffff804`2137c290)]
fffff804`21247781 e85ab1836d      call    nt!FirstEntrySList (fffff804`8ea828e0)
fffff804`21247786 4885c0          test    rax,rax
fffff804`21247789 0f853c010000    jne     storport!RaidStartIoPacket+0xb6b (fffff804`212478cb)  Branch

storport!RaidStartIoPacket+0xa2f:
fffff804`2124778f 488d4f50        lea     rcx,[rdi+50h]
fffff804`21247793 4c8b15f64a1300  mov     r10,qword ptr [storport!_imp_FirstEntrySList (fffff804`2137c290)]
fffff804`2124779a e841b1836d      call    nt!FirstEntrySList (fffff804`8ea828e0)
fffff804`2124779f 4885c0          test    rax,rax
fffff804`212477a2 0f85ce070000    jne     storport!RaidStartIoPacket+0x1216 (fffff804`21247f76)  Branch

storport!RaidStartIoPacket+0xa48:
fffff804`212477a8 0fb7542478      movzx   edx,word ptr [rsp+78h]
fffff804`212477ad 0fb64c247a      movzx   ecx,byte ptr [rsp+7Ah]
fffff804`212477b2 c1e206          shl     edx,6
fffff804`212477b5 03d1            add     edx,ecx
fffff804`212477b7 488b0d3a9e1200  mov     rcx,qword ptr [storport!g_RaidPerProcessorState (fffff804`213715f8)]
fffff804`212477be 48c1e207        shl     rdx,7
fffff804`212477c2 4487740a60      xchg    r14d,dword ptr [rdx+rcx+60h]

storport!RaidStartIoPacket+0xa67:
fffff804`212477c7 0fb64d88        movzx   ecx,byte ptr [rbp-78h]
fffff804`212477cb 4c8b15464a1300  mov     r10,qword ptr [storport!_imp_KeLowerIrql (fffff804`2137c218)]
fffff804`212477d2 e8e9b6586d      call    nt!KzLowerIrql (fffff804`8e7d2ec0)
fffff804`212477d7 418bc5          mov     eax,r13d

storport!RaidStartIoPacket+0xa7a:
fffff804`212477da 488b4d18        mov     rcx,qword ptr [rbp+18h]
fffff804`212477de 4833cc          xor     rcx,rsp
fffff804`212477e1 e84ad30f00      call    storport!_security_check_cookie (fffff804`21344b30)
fffff804`212477e6 488b9c2470010000 mov     rbx,qword ptr [rsp+170h]
fffff804`212477ee 4881c420010000  add     rsp,120h
fffff804`212477f5 415f            pop     r15
fffff804`212477f7 415e            pop     r14
fffff804`212477f9 415d            pop     r13
fffff804`212477fb 415c            pop     r12
fffff804`212477fd 5f              pop     rdi
fffff804`212477fe 5e              pop     rsi
fffff804`212477ff 5d              pop     rbp
fffff804`21247800 c3              ret

storport!RaidStartIoPacket+0xaa2:
fffff804`21247802 488b4028        mov     rax,qword ptr [rax+28h]
fffff804`21247806 493bc5          cmp     rax,r13
fffff804`21247809 4c0f42e8        cmovb   r13,rax
fffff804`2124780d e9fafbffff      jmp     storport!RaidStartIoPacket+0x6ac (fffff804`2124740c)  Branch

storport!RaidStartIoPacket+0xab2:
fffff804`21247812 488d4b40        lea     rcx,[rbx+40h]
fffff804`21247816 4c8b15d3481300  mov     r10,qword ptr [storport!_imp_ExpInterlockedPopEntrySList (fffff804`2137c0f0)]
fffff804`2124781d e8ceb0836d      call    nt!ExpInterlockedPopEntrySList (fffff804`8ea828f0)
fffff804`21247822 488bc8          mov     rcx,rax
fffff804`21247825 e949fdffff      jmp     storport!RaidStartIoPacket+0x813 (fffff804`21247573)  Branch

storport!RaidStartIoPacket+0xaca:
fffff804`2124782a 488b4b10        mov     rcx,qword ptr [rbx+10h]
fffff804`2124782e 488d4308        lea     rax,[rbx+8]
fffff804`21247832 483901          cmp     qword ptr [rcx],rax
fffff804`21247835 0f8599090000    jne     storport!RaidStartIoPacket+0x1474 (fffff804`212481d4)  Branch

storport!RaidStartIoPacket+0xadb:
fffff804`2124783b 49890424        mov     qword ptr [r12],rax
fffff804`2124783f 49894c2408      mov     qword ptr [r12+8],rcx
fffff804`21247844 4c8921          mov     qword ptr [rcx],r12
fffff804`21247847 4c896008        mov     qword ptr [rax+8],r12
fffff804`2124784b ff4318          inc     dword ptr [rbx+18h]
fffff804`2124784e 41f644241620    test    byte ptr [r12+16h],20h
fffff804`21247854 0f8520060000    jne     storport!RaidStartIoPacket+0x111a (fffff804`21247e7a)  Branch

storport!RaidStartIoPacket+0xafa:
fffff804`2124785a 488d4db8        lea     rcx,[rbp-48h]
fffff804`2124785e 4c8b15f34b1300  mov     r10,qword ptr [storport!_imp_KeReleaseInStackQueuedSpinLockFromDpcLevel (fffff804`2137c458)]
fffff804`21247865 e8b6fb426d      call    nt!KeReleaseInStackQueuedSpinLockFromDpcLevel (fffff804`8e677420)
fffff804`2124786a 498b97d8020000  mov     rdx,qword ptr [r15+2D8h]
fffff804`21247871 488b4230        mov     rax,qword ptr [rdx+30h]
fffff804`21247875 f6407004        test    byte ptr [rax+70h],4
fffff804`21247879 0f85870b0000    jne     storport!RaidStartIoPacket+0x16a6 (fffff804`21248406)  Branch

storport!RaidStartIoPacket+0xb1f:
fffff804`2124787f 458bee          mov     r13d,r14d
fffff804`21247882 41bc01000000    mov     r12d,1
fffff804`21247888 e985feffff      jmp     storport!RaidStartIoPacket+0x9b2 (fffff804`21247712)  Branch

storport!RaidStartIoPacket+0xb2d:
fffff804`2124788d 8b83c0000000    mov     eax,dword ptr [rbx+0C0h]
fffff804`21247893 894324          mov     dword ptr [rbx+24h],eax
fffff804`21247896 e9fdfcffff      jmp     storport!RaidStartIoPacket+0x838 (fffff804`21247598)  Branch

storport!RaidStartIoPacket+0xb3b:
fffff804`2124789b 4c8b1546481300  mov     r10,qword ptr [storport!_imp_KeQueryUnbiasedInterruptTime (fffff804`2137c0e8)]
fffff804`212478a2 e8f95a5b6d      call    nt!KeQueryUnbiasedInterruptTime (fffff804`8e7fd3a0)
fffff804`212478a7 488bc8          mov     rcx,rax
fffff804`212478aa 498b4718        mov     rax,qword ptr [r15+18h]
fffff804`212478ae 482b4da0        sub     rcx,qword ptr [rbp-60h]
fffff804`212478b2 483b8828130000  cmp     rcx,qword ptr [rax+1328h]
fffff804`212478b9 410f97c4        seta    r12b
fffff804`212478bd e977fbffff      jmp     storport!RaidStartIoPacket+0x6d9 (fffff804`21247439)  Branch

storport!RaidStartIoPacket+0xb62:
fffff804`212478c2 488b7d98        mov     rdi,qword ptr [rbp-68h]
fffff804`212478c6 e98dfbffff      jmp     storport!RaidStartIoPacket+0x6f8 (fffff804`21247458)  Branch

storport!RaidStartIoPacket+0xb6b:
fffff804`212478cb 488d4b40        lea     rcx,[rbx+40h]
fffff804`212478cf 4c8b15aa471300  mov     r10,qword ptr [storport!_imp_ExpInterlockedFlushSList (fffff804`2137c080)]
fffff804`212478d6 e895b0836d      call    nt!ExpInterlockedFlushSList (fffff804`8ea82970)
fffff804`212478db 488bf0          mov     rsi,rax
fffff804`212478de 4885c0          test    rax,rax
fffff804`212478e1 0f84a8feffff    je      storport!RaidStartIoPacket+0xa2f (fffff804`2124778f)  Branch

storport!RaidStartIoPacket+0xb87:
fffff804`212478e7 4c8d2532000200  lea     r12,[storport!RaidUnitCompleteRequest (fffff804`21267920)]

storport!RaidStartIoPacket+0xb8e:
fffff804`212478ee f646f101        test    byte ptr [rsi-0Fh],1
fffff804`212478f2 4c8d7ee0        lea     r15,[rsi-20h]
fffff804`212478f6 488b36          mov     rsi,qword ptr [rsi]
fffff804`212478f9 0f8559010000    jne     storport!RaidStartIoPacket+0xcf8 (fffff804`21247a58)  Branch

storport!RaidStartIoPacket+0xb9f:
fffff804`212478ff 498b8790020000  mov     rax,qword ptr [r15+290h]
fffff804`21247906 498bcf          mov     rcx,r15
fffff804`21247909 493bc4          cmp     rax,r12
fffff804`2124790c 0f85970c0000    jne     storport!RaidStartIoPacket+0x1849 (fffff804`212485a9)  Branch

storport!RaidStartIoPacket+0xbb2:
fffff804`21247912 e809000200      call    storport!RaidUnitCompleteRequest (fffff804`21267920)

storport!RaidStartIoPacket+0xbb7:
fffff804`21247917 4885f6          test    rsi,rsi
fffff804`2124791a 0f846ffeffff    je      storport!RaidStartIoPacket+0xa2f (fffff804`2124778f)  Branch

storport!RaidStartIoPacket+0xbc0:
fffff804`21247920 ebcc            jmp     storport!RaidStartIoPacket+0xb8e (fffff804`212478ee)  Branch

storport!RaidStartIoPacket+0xbc2:
fffff804`21247922 84c0            test    al,al
fffff804`21247924 0f88ed0b0000    js      storport!RaidStartIoPacket+0x17b7 (fffff804`21248517)  Branch

storport!RaidStartIoPacket+0xbca:
fffff804`2124792a b038            mov     al,38h
fffff804`2124792c e939f8ffff      jmp     storport!RaidStartIoPacket+0x40a (fffff804`2124716a)  Branch

storport!RaidStartIoPacket+0xbd1:
fffff804`21247931 8bc8            mov     ecx,eax
fffff804`21247933 e9b5f9ffff      jmp     storport!RaidStartIoPacket+0x58d (fffff804`212472ed)  Branch

storport!RaidStartIoPacket+0xbd8:
fffff804`21247938 4183eb41        sub     r11d,41h
fffff804`2124793c 0f846d060000    je      storport!RaidStartIoPacket+0x124f (fffff804`21247faf)  Branch

storport!RaidStartIoPacket+0xbe2:
fffff804`21247942 4183fb01        cmp     r11d,1
fffff804`21247946 0f85e7f5ffff    jne     storport!RaidStartIoPacket+0x1d3 (fffff804`21246f33)  Branch

storport!RaidStartIoPacket+0xbec:
fffff804`2124794c 4883c128        add     rcx,28h
fffff804`21247950 493bca          cmp     rcx,r10
fffff804`21247953 0f87daf5ffff    ja      storport!RaidStartIoPacket+0x1d3 (fffff804`21246f33)  Branch

storport!RaidStartIoPacket+0xbf9:
fffff804`21247959 e9b0f8ffff      jmp     storport!RaidStartIoPacket+0x4ae (fffff804`2124720e)  Branch

storport!RaidStartIoPacket+0xbfe:
fffff804`2124795e 4d8d4548        lea     r8,[r13+48h]
fffff804`21247962 e9ebf9ffff      jmp     storport!RaidStartIoPacket+0x5f2 (fffff804`21247352)  Branch

storport!RaidStartIoPacket+0xc07:
fffff804`21247967 83e941          sub     ecx,41h
fffff804`2124796a 0f8440070000    je      storport!RaidStartIoPacket+0x1350 (fffff804`212480b0)  Branch

storport!RaidStartIoPacket+0xc10:
fffff804`21247970 83f901          cmp     ecx,1
fffff804`21247973 0f857ff7ffff    jne     storport!RaidStartIoPacket+0x398 (fffff804`212470f8)  Branch

storport!RaidStartIoPacket+0xc19:
fffff804`21247979 488d4828        lea     rcx,[rax+28h]
fffff804`2124797d 493bc9          cmp     rcx,r9
fffff804`21247980 0f8772f7ffff    ja      storport!RaidStartIoPacket+0x398 (fffff804`212470f8)  Branch

storport!RaidStartIoPacket+0xc26:
fffff804`21247986 423954280c      cmp     dword ptr [rax+r13+0Ch],edx
fffff804`2124798b 0f8682f7ffff    jbe     storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0xc31:
fffff804`21247991 498d5520        lea     rdx,[r13+20h]
fffff804`21247995 4803d0          add     rdx,rax
fffff804`21247998 e976f7ffff      jmp     storport!RaidStartIoPacket+0x3b3 (fffff804`21247113)  Branch

storport!RaidStartIoPacket+0xc3d:
fffff804`2124799d 4538430a        cmp     byte ptr [r11+0Ah],r8b
fffff804`212479a1 0f86a8f9ffff    jbe     storport!RaidStartIoPacket+0x5ef (fffff804`2124734f)  Branch

storport!RaidStartIoPacket+0xc47:
fffff804`212479a7 4d8d4318        lea     r8,[r11+18h]
fffff804`212479ab e99ff9ffff      jmp     storport!RaidStartIoPacket+0x5ef (fffff804`2124734f)  Branch

storport!RaidStartIoPacket+0xc50:
fffff804`212479b0 4584e4          test    r12b,r12b
fffff804`212479b3 7407            je      storport!RaidStartIoPacket+0xc5c (fffff804`212479bc)  Branch

storport!RaidStartIoPacket+0xc55:
fffff804`212479b5 49ff8720080000  inc     qword ptr [r15+820h]

storport!RaidStartIoPacket+0xc5c:
fffff804`212479bc 41807d0228      cmp     byte ptr [r13+2],28h
fffff804`212479c1 0f84f1050000    je      storport!RaidStartIoPacket+0x1258 (fffff804`21247fb8)  Branch

storport!RaidStartIoPacket+0xc67:
fffff804`212479c7 8b4dac          mov     ecx,dword ptr [rbp-54h]
fffff804`212479ca 83f901          cmp     ecx,1
fffff804`212479cd 0f8545050000    jne     storport!RaidStartIoPacket+0x11b8 (fffff804`21247f18)  Branch

storport!RaidStartIoPacket+0xc73:
fffff804`212479d3 f049ff8708090000 lock inc qword ptr [r15+908h]
fffff804`212479db e9b7faffff      jmp     storport!RaidStartIoPacket+0x737 (fffff804`21247497)  Branch

storport!RaidStartIoPacket+0xc80:
fffff804`212479e0 488d55b8        lea     rdx,[rbp-48h]
fffff804`212479e4 488bcb          mov     rcx,rbx
fffff804`212479e7 4c8b15624a1300  mov     r10,qword ptr [storport!_imp_KeAcquireInStackQueuedSpinLockAtDpcLevel (fffff804`2137c450)]
fffff804`212479ee e86d0b426d      call    nt!KeAcquireInStackQueuedSpinLockAtDpcLevel (fffff804`8e668560)
fffff804`212479f3 488b4330        mov     rax,qword ptr [rbx+30h]
fffff804`212479f7 4439b0dc030000  cmp     dword ptr [rax+3DCh],r14d
fffff804`212479fe 0f8526feffff    jne     storport!RaidStartIoPacket+0xaca (fffff804`2124782a)  Branch

storport!RaidStartIoPacket+0xca4:
fffff804`21247a04 44397328        cmp     dword ptr [rbx+28h],r14d
fffff804`21247a08 0f851cfeffff    jne     storport!RaidStartIoPacket+0xaca (fffff804`2124782a)  Branch

storport!RaidStartIoPacket+0xcae:
fffff804`21247a0e 488d4db8        lea     rcx,[rbp-48h]
fffff804`21247a12 4c8b153f4a1300  mov     r10,qword ptr [storport!_imp_KeReleaseInStackQueuedSpinLockFromDpcLevel (fffff804`2137c458)]
fffff804`21247a19 e802fa426d      call    nt!KeReleaseInStackQueuedSpinLockFromDpcLevel (fffff804`8e677420)
fffff804`21247a1e e9edfaffff      jmp     storport!RaidStartIoPacket+0x7b0 (fffff804`21247510)  Branch

storport!RaidStartIoPacket+0xcc3:
fffff804`21247a23 83e941          sub     ecx,41h
fffff804`21247a26 0f84e4080000    je      storport!RaidStartIoPacket+0x15b0 (fffff804`21248310)  Branch

storport!RaidStartIoPacket+0xccc:
fffff804`21247a2c 83f901          cmp     ecx,1
fffff804`21247a2f 0f8510f9ffff    jne     storport!RaidStartIoPacket+0x5e5 (fffff804`21247345)  Branch

storport!RaidStartIoPacket+0xcd5:
fffff804`21247a35 488d4828        lea     rcx,[rax+28h]
fffff804`21247a39 493bc9          cmp     rcx,r9
fffff804`21247a3c 0f8703f9ffff    ja      storport!RaidStartIoPacket+0x5e5 (fffff804`21247345)  Branch

storport!RaidStartIoPacket+0xce2:
fffff804`21247a42 488bfa          mov     rdi,rdx
fffff804`21247a45 4539430c        cmp     dword ptr [r11+0Ch],r8d
fffff804`21247a49 0f8603f9ffff    jbe     storport!RaidStartIoPacket+0x5f2 (fffff804`21247352)  Branch

storport!RaidStartIoPacket+0xcef:
fffff804`21247a4f 4d8d4320        lea     r8,[r11+20h]
fffff804`21247a53 e9faf8ffff      jmp     storport!RaidStartIoPacket+0x5f2 (fffff804`21247352)  Branch

storport!RaidStartIoPacket+0xcf8:
fffff804`21247a58 498b9fd8000000  mov     rbx,qword ptr [r15+0D8h]
fffff804`21247a5f 4533c0          xor     r8d,r8d
fffff804`21247a62 418b97ec020000  mov     edx,dword ptr [r15+2ECh]
fffff804`21247a69 488b8b60130000  mov     rcx,qword ptr [rbx+1360h]
fffff804`21247a70 488b09          mov     rcx,qword ptr [rcx]
fffff804`21247a73 4c8b15d6461300  mov     r10,qword ptr [storport!_imp_PoFxIdleComponent (fffff804`2137c150)]
fffff804`21247a7a e8b1b24a6d      call    nt!PoFxIdleComponent (fffff804`8e6f2d30)
fffff804`21247a7f 488b8360130000  mov     rax,qword ptr [rbx+1360h]
fffff804`21247a86 f048ff4850      lock dec qword ptr [rax+50h]
fffff804`21247a8b 488b8360130000  mov     rax,qword ptr [rbx+1360h]
fffff804`21247a92 f048ff4060      lock inc qword ptr [rax+60h]
fffff804`21247a97 41806711fe      and     byte ptr [r15+11h],0FEh
fffff804`21247a9c e95efeffff      jmp     storport!RaidStartIoPacket+0xb9f (fffff804`212478ff)  Branch

storport!RaidStartIoPacket+0xd41:
fffff804`21247aa1 498b4718        mov     rax,qword ptr [r15+18h]
fffff804`21247aa5 4c39b060130000  cmp     qword ptr [rax+1360h],r14
fffff804`21247aac 0f8489000000    je      storport!RaidStartIoPacket+0xddb (fffff804`21247b3b)  Branch

storport!RaidStartIoPacket+0xd52:
fffff804`21247ab2 4c8b15d7451300  mov     r10,qword ptr [storport!_imp_KeGetCurrentIrql (fffff804`2137c090)]
fffff804`21247ab9 e8320c5a6d      call    nt!KeGetCurrentIrql (fffff804`8e7e86f0)
fffff804`21247abe 403ac7          cmp     al,dil
fffff804`21247ac1 0f83ce010000    jae     storport!RaidStartIoPacket+0xf35 (fffff804`21247c95)  Branch

storport!RaidStartIoPacket+0xd67:
fffff804`21247ac7 4538b7c8010000  cmp     byte ptr [r15+1C8h],r14b
fffff804`21247ace 0f8cc1010000    jl      storport!RaidStartIoPacket+0xf35 (fffff804`21247c95)  Branch

storport!RaidStartIoPacket+0xd74:
fffff804`21247ad4 41f687c901000001 test    byte ptr [r15+1C9h],1
fffff804`21247adc 0f85b3010000    jne     storport!RaidStartIoPacket+0xf35 (fffff804`21247c95)  Branch

storport!RaidStartIoPacket+0xd82:
fffff804`21247ae2 498b7f18        mov     rdi,qword ptr [r15+18h]
fffff804`21247ae6 32db            xor     bl,bl
fffff804`21247ae8 488b442470      mov     rax,qword ptr [rsp+70h]
fffff804`21247aed 41bc05000000    mov     r12d,5
fffff804`21247af3 488bb0b8000000  mov     rsi,qword ptr [rax+0B8h]
fffff804`21247afa 4c39b760130000  cmp     qword ptr [rdi+1360h],r14
fffff804`21247b01 0f85f7000000    jne     storport!RaidStartIoPacket+0xe9e (fffff804`21247bfe)  Branch

storport!RaidStartIoPacket+0xda7:
fffff804`21247b07 4538b7c9010000  cmp     byte ptr [r15+1C9h],r14b
fffff804`21247b0e 7d1b            jge     storport!RaidStartIoPacket+0xdcb (fffff804`21247b2b)  Branch

storport!RaidStartIoPacket+0xdb0:
fffff804`21247b10 498b8f38070000  mov     rcx,qword ptr [r15+738h]
fffff804`21247b17 4c8b15ba461300  mov     r10,qword ptr [storport!_imp_ExAcquireRundownProtectionCacheAware (fffff804`2137c1d8)]
fffff804`21247b1e e82d76446d      call    nt!ExAcquireRundownProtectionCacheAware (fffff804`8e68f150)
fffff804`21247b23 84c0            test    al,al
fffff804`21247b25 0f850c010000    jne     storport!RaidStartIoPacket+0xed7 (fffff804`21247c37)  Branch

storport!RaidStartIoPacket+0xdcb:
fffff804`21247b2b 0fb6c3          movzx   eax,bl
fffff804`21247b2e bf02000000      mov     edi,2
fffff804`21247b33 48894610        mov     qword ptr [rsi+10h],rax

storport!RaidStartIoPacket+0xdd7:
fffff804`21247b37 4c8b6590        mov     r12,qword ptr [rbp-70h]

storport!RaidStartIoPacket+0xddb:
fffff804`21247b3b 4438742460      cmp     byte ptr [rsp+60h],r14b
fffff804`21247b40 0f8573050000    jne     storport!RaidStartIoPacket+0x1359 (fffff804`212480b9)  Branch

storport!RaidStartIoPacket+0xde6:
fffff804`21247b46 b102            mov     cl,2
fffff804`21247b48 4c8b15a9471300  mov     r10,qword ptr [storport!_imp_KfRaiseIrql (fffff804`2137c2f8)]
fffff804`21247b4f e8dc6f596d      call    nt!KzRaiseIrql (fffff804`8e7deb30)
fffff804`21247b54 884588          mov     byte ptr [rbp-78h],al
fffff804`21247b57 498b4718        mov     rax,qword ptr [r15+18h]
fffff804`21247b5b f6803412000001  test    byte ptr [rax+1234h],1
fffff804`21247b62 0f84ee010000    je      storport!RaidStartIoPacket+0xff6 (fffff804`21247d56)  Branch

storport!RaidStartIoPacket+0xe08:
fffff804`21247b68 8b442478        mov     eax,dword ptr [rsp+78h]
fffff804`21247b6c 0fb7d0          movzx   edx,ax
fffff804`21247b6f 3b155b9a1200    cmp     edx,dword ptr [storport!g_RaidPerfRedirectGroupCount (fffff804`213715d0)]
fffff804`21247b75 0f83db010000    jae     storport!RaidStartIoPacket+0xff6 (fffff804`21247d56)  Branch

storport!RaidStartIoPacket+0xe1b:
fffff804`21247b7b 440fb644247a    movzx   r8d,byte ptr [rsp+7Ah]
fffff804`21247b81 0fb7c8          movzx   ecx,ax
fffff804`21247b84 488b0575991200  mov     rax,qword ptr [storport!g_RaidDPCRedirectionProcessors (fffff804`21371500)]
fffff804`21247b8b 443b0488        cmp     r8d,dword ptr [rax+rcx*4]
fffff804`21247b8f 0f83c1010000    jae     storport!RaidStartIoPacket+0xff6 (fffff804`21247d56)  Branch

storport!RaidStartIoPacket+0xe35:
fffff804`21247b95 488b055c9a1200  mov     rax,qword ptr [storport!g_RaidPerProcessorState (fffff804`213715f8)]
fffff804`21247b9c c1e206          shl     edx,6
fffff804`21247b9f 418d0c10        lea     ecx,[r8+rdx]
fffff804`21247ba3 48c1e107        shl     rcx,7
fffff804`21247ba7 4439740160      cmp     dword ptr [rcx+rax+60h],r14d
fffff804`21247bac 0f85a4010000    jne     storport!RaidStartIoPacket+0xff6 (fffff804`21247d56)  Branch

storport!RaidStartIoPacket+0xe52:
fffff804`21247bb2 877c0160        xchg    edi,dword ptr [rcx+rax+60h]
fffff804`21247bb6 c644246001      mov     byte ptr [rsp+60h],1

storport!RaidStartIoPacket+0xe5b:
fffff804`21247bbb 488b742470      mov     rsi,qword ptr [rsp+70h]
fffff804`21247bc0 c6868d000000a9  mov     byte ptr [rsi+8Dh],0A9h
fffff804`21247bc7 4d897c2420      mov     qword ptr [r12+20h],r15
fffff804`21247bcc 4532e4          xor     r12b,r12b
fffff804`21247bcf 498b4718        mov     rax,qword ptr [r15+18h]
fffff804`21247bd3 4885c0          test    rax,rax
fffff804`21247bd6 0f8462f8ffff    je      storport!RaidStartIoPacket+0x6de (fffff804`2124743e)  Branch

storport!RaidStartIoPacket+0xe7c:
fffff804`21247bdc 498bb700020000  mov     rsi,qword ptr [r15+200h]
fffff804`21247be3 4885f6          test    rsi,rsi
fffff804`21247be6 0f844df8ffff    je      storport!RaidStartIoPacket+0x6d9 (fffff804`21247439)  Branch

storport!RaidStartIoPacket+0xe8c:
fffff804`21247bec 4c39b028130000  cmp     qword ptr [rax+1328h],r14
fffff804`21247bf3 0f8640f8ffff    jbe     storport!RaidStartIoPacket+0x6d9 (fffff804`21247439)  Branch

storport!RaidStartIoPacket+0xe99:
fffff804`21247bf9 e9bff7ffff      jmp     storport!RaidStartIoPacket+0x65d (fffff804`212473bd)  Branch

storport!RaidStartIoPacket+0xe9e:
fffff804`21247bfe f6476c01        test    byte ptr [rdi+6Ch],1
fffff804`21247c02 0f856b010000    jne     storport!RaidStartIoPacket+0x1013 (fffff804`21247d73)  Branch

storport!RaidStartIoPacket+0xea8:
fffff804`21247c08 488b8f60130000  mov     rcx,qword ptr [rdi+1360h]
fffff804`21247c0f 458bc4          mov     r8d,r12d
fffff804`21247c12 4439775c        cmp     dword ptr [rdi+5Ch],r14d
fffff804`21247c16 b801000000      mov     eax,1
fffff804`21247c1b 440f46c0        cmovbe  r8d,eax
fffff804`21247c1f 33d2            xor     edx,edx
fffff804`21247c21 488b09          mov     rcx,qword ptr [rcx]
fffff804`21247c24 4c8b15dd481300  mov     r10,qword ptr [storport!_imp_PoFxActivateComponent (fffff804`2137c508)]
fffff804`21247c2b e8907b556d      call    nt!PoFxActivateComponent (fffff804`8e79f7c0)
fffff804`21247c30 b302            mov     bl,2
fffff804`21247c32 e9d0feffff      jmp     storport!RaidStartIoPacket+0xda7 (fffff804`21247b07)  Branch

storport!RaidStartIoPacket+0xed7:
fffff804`21247c37 f6476c01        test    byte ptr [rdi+6Ch],1
fffff804`21247c3b 0f8551010000    jne     storport!RaidStartIoPacket+0x1032 (fffff804`21247d92)  Branch

storport!RaidStartIoPacket+0xee1:
fffff804`21247c41 498b8f40070000  mov     rcx,qword ptr [r15+740h]
fffff804`21247c48 8b8194000000    mov     eax,dword ptr [rcx+94h]
fffff804`21247c4e a801            test    al,1
fffff804`21247c50 0f850a010000    jne     storport!RaidStartIoPacket+0x1000 (fffff804`21247d60)  Branch

storport!RaidStartIoPacket+0xef6:
fffff804`21247c56 4539b70c040000  cmp     dword ptr [r15+40Ch],r14d
fffff804`21247c5d b801000000      mov     eax,1
fffff804`21247c62 488b09          mov     rcx,qword ptr [rcx]
fffff804`21247c65 440f46e0        cmovbe  r12d,eax
fffff804`21247c69 33d2            xor     edx,edx
fffff804`21247c6b 458bc4          mov     r8d,r12d
fffff804`21247c6e 4c8b1593481300  mov     r10,qword ptr [storport!_imp_PoFxActivateComponent (fffff804`2137c508)]
fffff804`21247c75 e8467b556d      call    nt!PoFxActivateComponent (fffff804`8e79f7c0)
fffff804`21247c7a 498b8f38070000  mov     rcx,qword ptr [r15+738h]
fffff804`21247c81 80cb01          or      bl,1
fffff804`21247c84 4c8b15bd461300  mov     r10,qword ptr [storport!_imp_ExReleaseRundownProtectionCacheAware (fffff804`2137c348)]
fffff804`21247c8b e8e01d4f6d      call    nt!ExReleaseRundownProtectionCacheAware (fffff804`8e739a70)
fffff804`21247c90 e996feffff      jmp     storport!RaidStartIoPacket+0xdcb (fffff804`21247b2b)  Branch

storport!RaidStartIoPacket+0xf35:
fffff804`21247c95 498b7718        mov     rsi,qword ptr [r15+18h]
fffff804`21247c99 32db            xor     bl,bl
fffff804`21247c9b 488b442470      mov     rax,qword ptr [rsp+70h]
fffff804`21247ca0 4c8ba0b8000000  mov     r12,qword ptr [rax+0B8h]
fffff804`21247ca7 4c39b660130000  cmp     qword ptr [rsi+1360h],r14
fffff804`21247cae 752d            jne     storport!RaidStartIoPacket+0xf7d (fffff804`21247cdd)  Branch

storport!RaidStartIoPacket+0xf50:
fffff804`21247cb0 4538b7c9010000  cmp     byte ptr [r15+1C9h],r14b
fffff804`21247cb7 7d17            jge     storport!RaidStartIoPacket+0xf70 (fffff804`21247cd0)  Branch

storport!RaidStartIoPacket+0xf59:
fffff804`21247cb9 498b8f38070000  mov     rcx,qword ptr [r15+738h]
fffff804`21247cc0 4c8b1511451300  mov     r10,qword ptr [storport!_imp_ExAcquireRundownProtectionCacheAware (fffff804`2137c1d8)]
fffff804`21247cc7 e88474446d      call    nt!ExAcquireRundownProtectionCacheAware (fffff804`8e68f150)
fffff804`21247ccc 84c0            test    al,al
fffff804`21247cce 7538            jne     storport!RaidStartIoPacket+0xfa8 (fffff804`21247d08)  Branch

storport!RaidStartIoPacket+0xf70:
fffff804`21247cd0 0fb6c3          movzx   eax,bl
fffff804`21247cd3 4989442410      mov     qword ptr [r12+10h],rax
fffff804`21247cd8 e95afeffff      jmp     storport!RaidStartIoPacket+0xdd7 (fffff804`21247b37)  Branch

storport!RaidStartIoPacket+0xf7d:
fffff804`21247cdd f6466c01        test    byte ptr [rsi+6Ch],1
fffff804`21247ce1 0f85dd000000    jne     storport!RaidStartIoPacket+0x1064 (fffff804`21247dc4)  Branch

storport!RaidStartIoPacket+0xf87:
fffff804`21247ce7 488b8e60130000  mov     rcx,qword ptr [rsi+1360h]
fffff804`21247cee 448bc7          mov     r8d,edi
fffff804`21247cf1 33d2            xor     edx,edx
fffff804`21247cf3 488b09          mov     rcx,qword ptr [rcx]
fffff804`21247cf6 4c8b150b481300  mov     r10,qword ptr [storport!_imp_PoFxActivateComponent (fffff804`2137c508)]
fffff804`21247cfd e8be7a556d      call    nt!PoFxActivateComponent (fffff804`8e79f7c0)
fffff804`21247d02 400fb6df        movzx   ebx,dil
fffff804`21247d06 eba8            jmp     storport!RaidStartIoPacket+0xf50 (fffff804`21247cb0)  Branch

storport!RaidStartIoPacket+0xfa8:
fffff804`21247d08 f6466c01        test    byte ptr [rsi+6Ch],1
fffff804`21247d0c 0f8525020000    jne     storport!RaidStartIoPacket+0x11d7 (fffff804`21247f37)  Branch

storport!RaidStartIoPacket+0xfb2:
fffff804`21247d12 498b8f40070000  mov     rcx,qword ptr [r15+740h]
fffff804`21247d19 8b8194000000    mov     eax,dword ptr [rcx+94h]
fffff804`21247d1f a801            test    al,1
fffff804`21247d21 0f858a000000    jne     storport!RaidStartIoPacket+0x1051 (fffff804`21247db1)  Branch

storport!RaidStartIoPacket+0xfc7:
fffff804`21247d27 488b09          mov     rcx,qword ptr [rcx]
fffff804`21247d2a 448bc7          mov     r8d,edi
fffff804`21247d2d 33d2            xor     edx,edx
fffff804`21247d2f 4c8b15d2471300  mov     r10,qword ptr [storport!_imp_PoFxActivateComponent (fffff804`2137c508)]
fffff804`21247d36 e8857a556d      call    nt!PoFxActivateComponent (fffff804`8e79f7c0)
fffff804`21247d3b 498b8f38070000  mov     rcx,qword ptr [r15+738h]
fffff804`21247d42 80cb01          or      bl,1
fffff804`21247d45 4c8b15fc451300  mov     r10,qword ptr [storport!_imp_ExReleaseRundownProtectionCacheAware (fffff804`2137c348)]
fffff804`21247d4c e81f1d4f6d      call    nt!ExReleaseRundownProtectionCacheAware (fffff804`8e739a70)
fffff804`21247d51 e97affffff      jmp     storport!RaidStartIoPacket+0xf70 (fffff804`21247cd0)  Branch

storport!RaidStartIoPacket+0xff6:
fffff804`21247d56 4488742460      mov     byte ptr [rsp+60h],r14b
fffff804`21247d5b e95bfeffff      jmp     storport!RaidStartIoPacket+0xe5b (fffff804`21247bbb)  Branch

storport!RaidStartIoPacket+0x1000:
fffff804`21247d60 f0ff8190000000  lock inc dword ptr [rcx+90h]
fffff804`21247d67 498b8f40070000  mov     rcx,qword ptr [r15+740h]
fffff804`21247d6e e9e3feffff      jmp     storport!RaidStartIoPacket+0xef6 (fffff804`21247c56)  Branch

storport!RaidStartIoPacket+0x1013:
fffff804`21247d73 f048ff87a0140000 lock inc qword ptr [rdi+14A0h]
fffff804`21247d7b f6476c02        test    byte ptr [rdi+6Ch],2
fffff804`21247d7f 0f8483feffff    je      storport!RaidStartIoPacket+0xea8 (fffff804`21247c08)  Branch

storport!RaidStartIoPacket+0x1025:
fffff804`21247d85 f048ff87a8140000 lock inc qword ptr [rdi+14A8h]
fffff804`21247d8d e976feffff      jmp     storport!RaidStartIoPacket+0xea8 (fffff804`21247c08)  Branch

storport!RaidStartIoPacket+0x1032:
fffff804`21247d92 f049ff8768080000 lock inc qword ptr [r15+868h]
fffff804`21247d9a f6476c02        test    byte ptr [rdi+6Ch],2
fffff804`21247d9e 0f849dfeffff    je      storport!RaidStartIoPacket+0xee1 (fffff804`21247c41)  Branch

storport!RaidStartIoPacket+0x1044:
fffff804`21247da4 f049ff8770080000 lock inc qword ptr [r15+870h]
fffff804`21247dac e990feffff      jmp     storport!RaidStartIoPacket+0xee1 (fffff804`21247c41)  Branch

storport!RaidStartIoPacket+0x1051:
fffff804`21247db1 f0ff8190000000  lock inc dword ptr [rcx+90h]
fffff804`21247db8 498b8f40070000  mov     rcx,qword ptr [r15+740h]
fffff804`21247dbf e963ffffff      jmp     storport!RaidStartIoPacket+0xfc7 (fffff804`21247d27)  Branch

storport!RaidStartIoPacket+0x1064:
fffff804`21247dc4 f048ff86a0140000 lock inc qword ptr [rsi+14A0h]
fffff804`21247dcc 40847e6c        test    byte ptr [rsi+6Ch],dil
fffff804`21247dd0 0f8411ffffff    je      storport!RaidStartIoPacket+0xf87 (fffff804`21247ce7)  Branch

storport!RaidStartIoPacket+0x1076:
fffff804`21247dd6 f048ff86a8140000 lock inc qword ptr [rsi+14A8h]
fffff804`21247dde e904ffffff      jmp     storport!RaidStartIoPacket+0xf87 (fffff804`21247ce7)  Branch

storport!RaidStartIoPacket+0x1083:
fffff804`21247de3 4538b7c9010000  cmp     byte ptr [r15+1C9h],r14b
fffff804`21247dea 0f8cbbf6ffff    jl      storport!RaidStartIoPacket+0x74b (fffff804`212474ab)  Branch

storport!RaidStartIoPacket+0x1090:
fffff804`21247df0 418b87d0010000  mov     eax,dword ptr [r15+1D0h]
fffff804`21247df7 a870            test    al,70h
fffff804`21247df9 0f85acf6ffff    jne     storport!RaidStartIoPacket+0x74b (fffff804`212474ab)  Branch

storport!RaidStartIoPacket+0x109f:
fffff804`21247dff 498bcf          mov     rcx,r15
fffff804`21247e02 e829930300      call    storport!RaUnitRequestPowerUp (fffff804`21281130)
fffff804`21247e07 e99ff6ffff      jmp     storport!RaidStartIoPacket+0x74b (fffff804`212474ab)  Branch

storport!RaidStartIoPacket+0x10ac:
fffff804`21247e0c 3c0e            cmp     al,0Eh
fffff804`21247e0e 0f854f020000    jne     storport!RaidStartIoPacket+0x1303 (fffff804`21248063)  Branch

storport!RaidStartIoPacket+0x10b4:
fffff804`21247e14 f605c7a4120008  test    byte ptr [storport!Microsoft_Windows_StorPortEnableBits+0x2 (fffff804`213722e2)],8
fffff804`21247e1b 0f849ff3ffff    je      storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x10c1:
fffff804`21247e21 8b4730          mov     eax,dword ptr [rdi+30h]
fffff804`21247e24 4c8d4508        lea     r8,[rbp+8]
fffff804`21247e28 4c8bcf          mov     r9,rdi
fffff804`21247e2b 89442420        mov     dword ptr [rsp+20h],eax
fffff804`21247e2f 488d154aec1000  lea     rdx,[storport!EventNonReadWriteRequestComplete (fffff804`21356a80)]
fffff804`21247e36 e8517f0400      call    storport!McTemplateK0pd_EtwWriteTransfer (fffff804`2128fd8c)
fffff804`21247e3b e980f3ffff      jmp     storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x10e0:
fffff804`21247e40 83f825          cmp     eax,25h
fffff804`21247e43 0f87ddf1ffff    ja      storport!RaidStartIoPacket+0x2c6 (fffff804`21247026)  Branch

storport!RaidStartIoPacket+0x10e9:
fffff804`21247e49 4c8d05b081ffff  lea     r8,[storport!RaidUnitCompleteResetRequest <PERF> (storport+0x0) (fffff804`21240000)]
fffff804`21247e50 410fb6840061fb1100 movzx eax,byte ptr [r8+rax+11FB61h]
fffff804`21247e59 418b8c8055fb1100 mov     ecx,dword ptr [r8+rax*4+11FB55h]
fffff804`21247e61 4903c8          add     rcx,r8
fffff804`21247e64 ffe1            jmp     rcx

storport!RaidStartIoPacket+0x111a:
fffff804`21247e7a 498b442440      mov     rax,qword ptr [r12+40h]
fffff804`21247e7f 488b4808        mov     rcx,qword ptr [rax+8]
fffff804`21247e83 80790228        cmp     byte ptr [rcx+2],28h
fffff804`21247e87 0f851a020000    jne     storport!RaidStartIoPacket+0x1347 (fffff804`212480a7)  Branch

storport!RaidStartIoPacket+0x112d:
fffff804`21247e8d 488b4160        mov     rax,qword ptr [rcx+60h]

storport!RaidStartIoPacket+0x1131:
fffff804`21247e91 4881c308010000  add     rbx,108h
fffff804`21247e98 4883c018        add     rax,18h
fffff804`21247e9c 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff804`21247ea0 483919          cmp     qword ptr [rcx],rbx
fffff804`21247ea3 0f852b030000    jne     storport!RaidStartIoPacket+0x1474 (fffff804`212481d4)  Branch

storport!RaidStartIoPacket+0x1149:
fffff804`21247ea9 488918          mov     qword ptr [rax],rbx
fffff804`21247eac 48894808        mov     qword ptr [rax+8],rcx
fffff804`21247eb0 488901          mov     qword ptr [rcx],rax
fffff804`21247eb3 48894308        mov     qword ptr [rbx+8],rax
fffff804`21247eb7 e99ef9ffff      jmp     storport!RaidStartIoPacket+0xafa (fffff804`2124785a)  Branch

storport!RaidStartIoPacket+0x115c:
fffff804`21247ebc 448b8380000000  mov     r8d,dword ptr [rbx+80h]
fffff804`21247ec3 41bd01000000    mov     r13d,1
fffff804`21247ec9 453bc5          cmp     r8d,r13d
fffff804`21247ecc 0f869cf6ffff    jbe     storport!RaidStartIoPacket+0x80e (fffff804`2124756e)  Branch

storport!RaidStartIoPacket+0x1172:
fffff804`21247ed2 4885c9          test    rcx,rcx
fffff804`21247ed5 0f8591f6ffff    jne     storport!RaidStartIoPacket+0x80c (fffff804`2124756c)  Branch

storport!RaidStartIoPacket+0x117b:
fffff804`21247edb 488b4b40        mov     rcx,qword ptr [rbx+40h]
fffff804`21247edf 428d042e        lea     eax,[rsi+r13]
fffff804`21247ee3 33d2            xor     edx,edx
fffff804`21247ee5 41f7f0          div     eax,r8d
fffff804`21247ee8 488b0cd1        mov     rcx,qword ptr [rcx+rdx*8]
fffff804`21247eec 4c8b15fd411300  mov     r10,qword ptr [storport!_imp_ExpInterlockedPopEntrySList (fffff804`2137c0f0)]
fffff804`21247ef3 e8f8a9836d      call    nt!ExpInterlockedPopEntrySList (fffff804`8ea828f0)
fffff804`21247ef8 448b8380000000  mov     r8d,dword ptr [rbx+80h]
fffff804`21247eff 41ffc5          inc     r13d
fffff804`21247f02 488bc8          mov     rcx,rax
fffff804`21247f05 453be8          cmp     r13d,r8d
fffff804`21247f08 72c8            jb      storport!RaidStartIoPacket+0x1172 (fffff804`21247ed2)  Branch

storport!RaidStartIoPacket+0x11aa:
fffff804`21247f0a 4885c0          test    rax,rax
fffff804`21247f0d 0f8559f6ffff    jne     storport!RaidStartIoPacket+0x80c (fffff804`2124756c)  Branch

storport!RaidStartIoPacket+0x11b3:
fffff804`21247f13 e956f6ffff      jmp     storport!RaidStartIoPacket+0x80e (fffff804`2124756e)  Branch

storport!RaidStartIoPacket+0x11b8:
fffff804`21247f18 83e904          sub     ecx,4
fffff804`21247f1b 0f8472030000    je      storport!RaidStartIoPacket+0x1533 (fffff804`21248293)  Branch

storport!RaidStartIoPacket+0x11c1:
fffff804`21247f21 83e901          sub     ecx,1
fffff804`21247f24 0f85b1020000    jne     storport!RaidStartIoPacket+0x147b (fffff804`212481db)  Branch

storport!RaidStartIoPacket+0x11ca:
fffff804`21247f2a f049ff8718090000 lock inc qword ptr [r15+918h]
fffff804`21247f32 e960f5ffff      jmp     storport!RaidStartIoPacket+0x737 (fffff804`21247497)  Branch

storport!RaidStartIoPacket+0x11d7:
fffff804`21247f37 f049ff8768080000 lock inc qword ptr [r15+868h]
fffff804`21247f3f 40847e6c        test    byte ptr [rsi+6Ch],dil
fffff804`21247f43 0f84c9fdffff    je      storport!RaidStartIoPacket+0xfb2 (fffff804`21247d12)  Branch

storport!RaidStartIoPacket+0x11e9:
fffff804`21247f49 f049ff8770080000 lock inc qword ptr [r15+870h]
fffff804`21247f51 e9bcfdffff      jmp     storport!RaidStartIoPacket+0xfb2 (fffff804`21247d12)  Branch

storport!RaidStartIoPacket+0x11f6:
fffff804`21247f56 4883c138        add     rcx,38h
fffff804`21247f5a 493bc8          cmp     rcx,r8
fffff804`21247f5d 0f876fefffff    ja      storport!RaidStartIoPacket+0x172 (fffff804`21246ed2)  Branch

storport!RaidStartIoPacket+0x1203:
fffff804`21247f63 45384a0a        cmp     byte ptr [r10+0Ah],r9b
fffff804`21247f67 0f8671efffff    jbe     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x120d:
fffff804`21247f6d 4d8d4a18        lea     r9,[r10+18h]
fffff804`21247f71 e968efffff      jmp     storport!RaidStartIoPacket+0x17e (fffff804`21246ede)  Branch

storport!RaidStartIoPacket+0x1216:
fffff804`21247f76 488d4f50        lea     rcx,[rdi+50h]
fffff804`21247f7a 4c8b15ff401300  mov     r10,qword ptr [storport!_imp_ExpInterlockedFlushSList (fffff804`2137c080)]
fffff804`21247f81 e8eaa9836d      call    nt!ExpInterlockedFlushSList (fffff804`8ea82970)
fffff804`21247f86 488bd8          mov     rbx,rax
fffff804`21247f89 4885c0          test    rax,rax
fffff804`21247f8c 0f8416f8ffff    je      storport!RaidStartIoPacket+0xa48 (fffff804`212477a8)  Branch

storport!RaidStartIoPacket+0x1232:
fffff804`21247f92 488b5338        mov     rdx,qword ptr [rbx+38h]
fffff804`21247f96 488d4b80        lea     rcx,[rbx-80h]
fffff804`21247f9a 488b1b          mov     rbx,qword ptr [rbx]
fffff804`21247f9d 8b5218          mov     edx,dword ptr [rdx+18h]
fffff804`21247fa0 e85bdf0100      call    storport!RaidUnitCompleteIrpRequest (fffff804`21265f00)
fffff804`21247fa5 4885db          test    rbx,rbx
fffff804`21247fa8 75e8            jne     storport!RaidStartIoPacket+0x1232 (fffff804`21247f92)  Branch

storport!RaidStartIoPacket+0x124a:
fffff804`21247faa e9f9f7ffff      jmp     storport!RaidStartIoPacket+0xa48 (fffff804`212477a8)  Branch

storport!RaidStartIoPacket+0x124f:
fffff804`21247faf 4883c138        add     rcx,38h
fffff804`21247fb3 e972efffff      jmp     storport!RaidStartIoPacket+0x1ca (fffff804`21246f2a)  Branch

storport!RaidStartIoPacket+0x1258:
fffff804`21247fb8 8b45b0          mov     eax,dword ptr [rbp-50h]
fffff804`21247fbb 894704          mov     dword ptr [rdi+4],eax
fffff804`21247fbe 8b45b4          mov     eax,dword ptr [rbp-4Ch]
fffff804`21247fc1 89471c          mov     dword ptr [rdi+1Ch],eax
fffff804`21247fc4 4539b734090000  cmp     dword ptr [r15+934h],r14d
fffff804`21247fcb 0f84f6f9ffff    je      storport!RaidStartIoPacket+0xc67 (fffff804`212479c7)  Branch

storport!RaidStartIoPacket+0x1271:
fffff804`21247fd1 807f0228        cmp     byte ptr [rdi+2],28h
fffff804`21247fd5 0f85fb020000    jne     storport!RaidStartIoPacket+0x1576 (fffff804`212482d6)  Branch

storport!RaidStartIoPacket+0x127b:
fffff804`21247fdb 498bd6          mov     rdx,r14
fffff804`21247fde 44397714        cmp     dword ptr [rdi+14h],r14d
fffff804`21247fe2 7552            jne     storport!RaidStartIoPacket+0x12d6 (fffff804`21248036)  Branch

storport!RaidStartIoPacket+0x1284:
fffff804`21247fe4 8b7f38          mov     edi,dword ptr [rdi+38h]
fffff804`21247fe7 458bde          mov     r11d,r14d
fffff804`21247fea 85ff            test    edi,edi
fffff804`21247fec 7444            je      storport!RaidStartIoPacket+0x12d2 (fffff804`21248032)  Branch

storport!RaidStartIoPacket+0x128e:
fffff804`21247fee 488b4d98        mov     rcx,qword ptr [rbp-68h]
fffff804`21247ff2 4c8d5178        lea     r10,[rcx+78h]

storport!RaidStartIoPacket+0x1296:
fffff804`21247ff6 418b02          mov     eax,dword ptr [r10]
fffff804`21247ff9 3d80000000      cmp     eax,80h
fffff804`21247ffe 7226            jb      storport!RaidStartIoPacket+0x12c6 (fffff804`21248026)  Branch

storport!RaidStartIoPacket+0x12a0:
fffff804`21248000 448b4110        mov     r8d,dword ptr [rcx+10h]
fffff804`21248004 413bc0          cmp     eax,r8d
fffff804`21248007 731d            jae     storport!RaidStartIoPacket+0x12c6 (fffff804`21248026)  Branch

storport!RaidStartIoPacket+0x12a9:
fffff804`21248009 8b0c08          mov     ecx,dword ptr [rax+rcx]
fffff804`2124800c 83f940          cmp     ecx,40h
fffff804`2124800f 0f851e030000    jne     storport!RaidStartIoPacket+0x15d3 (fffff804`21248333)  Branch

storport!RaidStartIoPacket+0x12b5:
fffff804`21248015 488d4828        lea     rcx,[rax+28h]

storport!RaidStartIoPacket+0x12b9:
fffff804`21248019 493bc8          cmp     rcx,r8
fffff804`2124801c 0f86bd020000    jbe     storport!RaidStartIoPacket+0x157f (fffff804`212482df)  Branch

storport!RaidStartIoPacket+0x12c2:
fffff804`21248022 488b4d98        mov     rcx,qword ptr [rbp-68h]

storport!RaidStartIoPacket+0x12c6:
fffff804`21248026 41ffc3          inc     r11d
fffff804`21248029 4983c204        add     r10,4
fffff804`2124802d 443bdf          cmp     r11d,edi
fffff804`21248030 72c4            jb      storport!RaidStartIoPacket+0x1296 (fffff804`21247ff6)  Branch

storport!RaidStartIoPacket+0x12d2:
fffff804`21248032 488b7d98        mov     rdi,qword ptr [rbp-68h]

storport!RaidStartIoPacket+0x12d6:
fffff804`21248036 4885d2          test    rdx,rdx
fffff804`21248039 0f8488f9ffff    je      storport!RaidStartIoPacket+0xc67 (fffff804`212479c7)  Branch

storport!RaidStartIoPacket+0x12df:
fffff804`2124803f 0fb60a          movzx   ecx,byte ptr [rdx]
fffff804`21248042 44397714        cmp     dword ptr [rdi+14h],r14d
fffff804`21248046 0f857bf9ffff    jne     storport!RaidStartIoPacket+0xc67 (fffff804`212479c7)  Branch

storport!RaidStartIoPacket+0x12ec:
fffff804`2124804c 80e908          sub     cl,8
fffff804`2124804f f6c15d          test    cl,5Dh
fffff804`21248052 0f858d030000    jne     storport!RaidStartIoPacket+0x1685 (fffff804`212483e5)  Branch

storport!RaidStartIoPacket+0x12f8:
fffff804`21248058 8b45a8          mov     eax,dword ptr [rbp-58h]
fffff804`2124805b 894730          mov     dword ptr [rdi+30h],eax
fffff804`2124805e e964f9ffff      jmp     storport!RaidStartIoPacket+0xc67 (fffff804`212479c7)  Branch

storport!RaidStartIoPacket+0x1303:
fffff804`21248063 3c1b            cmp     al,1Bh
fffff804`21248065 0f8555f1ffff    jne     storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x130b:
fffff804`2124806b 80790107        cmp     byte ptr [rcx+1],7
fffff804`2124806f 750a            jne     storport!RaidStartIoPacket+0x131b (fffff804`2124807b)  Branch

storport!RaidStartIoPacket+0x1311:
fffff804`21248071 44397108        cmp     dword ptr [rcx+8],r14d
fffff804`21248075 0f8421040000    je      storport!RaidStartIoPacket+0x173c (fffff804`2124849c)  Branch

storport!RaidStartIoPacket+0x131b:
fffff804`2124807b f60560a2120020  test    byte ptr [storport!Microsoft_Windows_StorPortEnableBits+0x2 (fffff804`213722e2)],20h
fffff804`21248082 0f8438f1ffff    je      storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x1328:
fffff804`21248088 8b4730          mov     eax,dword ptr [rdi+30h]
fffff804`2124808b 4c8d4508        lea     r8,[rbp+8]
fffff804`2124808f 4c8bcf          mov     r9,rdi
fffff804`21248092 89442420        mov     dword ptr [rsp+20h],eax
fffff804`21248096 488d1563021100  lea     rdx,[storport!EventPnpRequestComplete (fffff804`21358300)]
fffff804`2124809d e8ea7c0400      call    storport!McTemplateK0pd_EtwWriteTransfer (fffff804`2128fd8c)
fffff804`212480a2 e919f1ffff      jmp     storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x1347:
fffff804`212480a7 488b4130        mov     rax,qword ptr [rcx+30h]
fffff804`212480ab e9e1fdffff      jmp     storport!RaidStartIoPacket+0x1131 (fffff804`21247e91)  Branch

storport!RaidStartIoPacket+0x1350:
fffff804`212480b0 488d4838        lea     rcx,[rax+38h]
fffff804`212480b4 e936f0ffff      jmp     storport!RaidStartIoPacket+0x38f (fffff804`212470ef)  Branch

storport!RaidStartIoPacket+0x1359:
fffff804`212480b9 4183bf300d0000ff cmp     dword ptr [r15+0D30h],0FFFFFFFFh
fffff804`212480c1 498bde          mov     rbx,r14
fffff804`212480c4 0f85a2020000    jne     storport!RaidStartIoPacket+0x160c (fffff804`2124836c)  Branch

storport!RaidStartIoPacket+0x136a:
fffff804`212480ca 4183bf200d0000ff cmp     dword ptr [r15+0D20h],0FFFFFFFFh
fffff804`212480d2 0f8594020000    jne     storport!RaidStartIoPacket+0x160c (fffff804`2124836c)  Branch

storport!RaidStartIoPacket+0x1378:
fffff804`212480d8 41399f240d0000  cmp     dword ptr [r15+0D24h],ebx
fffff804`212480df 0f8587020000    jne     storport!RaidStartIoPacket+0x160c (fffff804`2124836c)  Branch

storport!RaidStartIoPacket+0x1385:
fffff804`212480e5 41807d0228      cmp     byte ptr [r13+2],28h
fffff804`212480ea 0f8595040000    jne     storport!RaidStartIoPacket+0x1825 (fffff804`21248585)  Branch

storport!RaidStartIoPacket+0x1390:
fffff804`212480f0 4c896d98        mov     qword ptr [rbp-68h],r13
fffff804`212480f4 4885db          test    rbx,rbx
fffff804`212480f7 0f8577040000    jne     storport!RaidStartIoPacket+0x1814 (fffff804`21248574)  Branch

storport!RaidStartIoPacket+0x139d:
fffff804`212480fd 418b87280d0000  mov     eax,dword ptr [r15+0D28h]
fffff804`21248104 41894528        mov     dword ptr [r13+28h],eax
fffff804`21248108 e939faffff      jmp     storport!RaidStartIoPacket+0xde6 (fffff804`21247b46)  Branch

storport!RaidStartIoPacket+0x13ad:
fffff804`2124810d 8b9bd0030000    mov     ebx,dword ptr [rbx+3D0h]
fffff804`21248113 4c8b158e421300  mov     r10,qword ptr [storport!_imp_KeGetCurrentProcessorNumberEx (fffff804`2137c3a8)]
fffff804`2124811a e861a0586d      call    nt!KeGetCurrentProcessorNumberEx (fffff804`8e7d2180)
fffff804`2124811f 33d2            xor     edx,edx
fffff804`21248121 f7f3            div     eax,ebx
fffff804`21248123 8bc8            mov     ecx,eax
fffff804`21248125 488b4730        mov     rax,qword ptr [rdi+30h]
fffff804`21248129 448b80c8030000  mov     r8d,dword ptr [rax+3C8h]
fffff804`21248130 413bc8          cmp     ecx,r8d
fffff804`21248133 0f82adf3ffff    jb      storport!RaidStartIoPacket+0x786 (fffff804`212474e6)  Branch

storport!RaidStartIoPacket+0x13d9:
fffff804`21248139 8bc1            mov     eax,ecx
fffff804`2124813b 33d2            xor     edx,edx
fffff804`2124813d 41f7f0          div     eax,r8d
fffff804`21248140 8bca            mov     ecx,edx
fffff804`21248142 e99ff3ffff      jmp     storport!RaidStartIoPacket+0x786 (fffff804`212474e6)  Branch

storport!RaidStartIoPacket+0x13e7:
fffff804`21248147 8b8390000000    mov     eax,dword ptr [rbx+90h]
fffff804`2124814d 398388000000    cmp     dword ptr [rbx+88h],eax
fffff804`21248153 731d            jae     storport!RaidStartIoPacket+0x1412 (fffff804`21248172)  Branch

storport!RaidStartIoPacket+0x13f5:
fffff804`21248155 488bcb          mov     rcx,rbx
fffff804`21248158 e87b380100      call    storport!RaAttemptHighWaterMarkIncrease (fffff804`2125b9d8)
fffff804`2124815d 488d4b40        lea     rcx,[rbx+40h]
fffff804`21248161 e8aa370100      call    storport!RaAllocateIoResource (fffff804`2125b910)
fffff804`21248166 488bc8          mov     rcx,rax
fffff804`21248169 4885c0          test    rax,rax
fffff804`2124816c 0f850af4ffff    jne     storport!RaidStartIoPacket+0x81c (fffff804`2124757c)  Branch

storport!RaidStartIoPacket+0x1412:
fffff804`21248172 488d55b8        lea     rdx,[rbp-48h]
fffff804`21248176 488bcb          mov     rcx,rbx
fffff804`21248179 4c8b15d0421300  mov     r10,qword ptr [storport!_imp_KeAcquireInStackQueuedSpinLockAtDpcLevel (fffff804`2137c450)]
fffff804`21248180 e8db03426d      call    nt!KeAcquireInStackQueuedSpinLockAtDpcLevel (fffff804`8e668560)
fffff804`21248185 488b4b10        mov     rcx,qword ptr [rbx+10h]
fffff804`21248189 488d4308        lea     rax,[rbx+8]
fffff804`2124818d 483901          cmp     qword ptr [rcx],rax
fffff804`21248190 7542            jne     storport!RaidStartIoPacket+0x1474 (fffff804`212481d4)  Branch

storport!RaidStartIoPacket+0x1432:
fffff804`21248192 49890424        mov     qword ptr [r12],rax
fffff804`21248196 49894c2408      mov     qword ptr [r12+8],rcx
fffff804`2124819b 4c8921          mov     qword ptr [rcx],r12
fffff804`2124819e 4c896008        mov     qword ptr [rax+8],r12
fffff804`212481a2 ff4318          inc     dword ptr [rbx+18h]
fffff804`212481a5 c743284e6f5265  mov     dword ptr [rbx+28h],65526F4Eh
fffff804`212481ac 41f644241620    test    byte ptr [r12+16h],20h
fffff804`212481b2 0f84a2f6ffff    je      storport!RaidStartIoPacket+0xafa (fffff804`2124785a)  Branch

storport!RaidStartIoPacket+0x1458:
fffff804`212481b8 498bcc          mov     rcx,r12
fffff804`212481bb e858bd0400      call    storport!RaidGetQosEntryForDeviceEntry (fffff804`21293f18)
fffff804`212481c0 4881c308010000  add     rbx,108h
fffff804`212481c7 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff804`212481cb 483919          cmp     qword ptr [rcx],rbx
fffff804`212481ce 0f84d5fcffff    je      storport!RaidStartIoPacket+0x1149 (fffff804`21247ea9)  Branch

storport!RaidStartIoPacket+0x1474:
fffff804`212481d4 b903000000      mov     ecx,3
fffff804`212481d9 cd29            int     29h

storport!RaidStartIoPacket+0x147b:
fffff804`212481db 83f901          cmp     ecx,1
fffff804`212481de 0f85b3f2ffff    jne     storport!RaidStartIoPacket+0x737 (fffff804`21247497)  Branch

storport!RaidStartIoPacket+0x1484:
fffff804`212481e4 f049ff8720090000 lock inc qword ptr [r15+920h]
fffff804`212481ec e9a6f2ffff      jmp     storport!RaidStartIoPacket+0x737 (fffff804`21247497)  Branch

storport!RaidStartIoPacket+0x1491:
fffff804`212481f1 85db            test    ebx,ebx
fffff804`212481f3 0f8591f0ffff    jne     storport!RaidStartIoPacket+0x52a (fffff804`2124728a)  Branch

storport!RaidStartIoPacket+0x1499:
fffff804`212481f9 41bc01000000    mov     r12d,1
fffff804`212481ff 498d8f680d0000  lea     rcx,[r15+0D68h]
fffff804`21248206 458bc4          mov     r8d,r12d
fffff804`21248209 8bd7            mov     edx,edi
fffff804`2124820b 4c8b1546431300  mov     r10,qword ptr [storport!_imp_RtlInterlockedSetBitRun (fffff804`2137c558)]
fffff804`21248212 e859f85d6d      call    nt!RtlInterlockedSetBitRun (fffff804`8e827a70)
fffff804`21248217 488b0532921200  mov     rax,qword ptr [storport!g_RaidLogControl+0x8 (fffff804`21371450)]
fffff804`2124821e 480fbae00c      bt      rax,0Ch
fffff804`21248223 0f83d2edffff    jae     storport!RaidStartIoPacket+0x29b (fffff804`21246ffb)  Branch

storport!RaidStartIoPacket+0x14c9:
fffff804`21248229 41807d0228      cmp     byte ptr [r13+2],28h
fffff804`2124822e 4c897580        mov     qword ptr [rbp-80h],r14
fffff804`21248232 0f8511edffff    jne     storport!RaidStartIoPacket+0x1e9 (fffff804`21246f49)  Branch

storport!RaidStartIoPacket+0x14d8:
fffff804`21248238 498bd6          mov     rdx,r14
fffff804`2124823b 45397514        cmp     dword ptr [r13+14h],r14d
fffff804`2124823f 0f8508edffff    jne     storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x14e5:
fffff804`21248245 418b5d38        mov     ebx,dword ptr [r13+38h]
fffff804`21248249 458bde          mov     r11d,r14d
fffff804`2124824c 85db            test    ebx,ebx
fffff804`2124824e 0f84f9ecffff    je      storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x14f4:
fffff804`21248254 4d8d5578        lea     r10,[r13+78h]

storport!RaidStartIoPacket+0x14f8:
fffff804`21248258 418b02          mov     eax,dword ptr [r10]
fffff804`2124825b 3d80000000      cmp     eax,80h
fffff804`21248260 721f            jb      storport!RaidStartIoPacket+0x1521 (fffff804`21248281)  Branch

storport!RaidStartIoPacket+0x1502:
fffff804`21248262 458b4510        mov     r8d,dword ptr [r13+10h]
fffff804`21248266 413bc0          cmp     eax,r8d
fffff804`21248269 7316            jae     storport!RaidStartIoPacket+0x1521 (fffff804`21248281)  Branch

storport!RaidStartIoPacket+0x150b:
fffff804`2124826b 428b0c28        mov     ecx,dword ptr [rax+r13]
fffff804`2124826f 83f940          cmp     ecx,40h
fffff804`21248272 0f8537010000    jne     storport!RaidStartIoPacket+0x164f (fffff804`212483af)  Branch

storport!RaidStartIoPacket+0x1518:
fffff804`21248278 488d4828        lea     rcx,[rax+28h]

storport!RaidStartIoPacket+0x151c:
fffff804`2124827c 493bc8          cmp     rcx,r8
fffff804`2124827f 7678            jbe     storport!RaidStartIoPacket+0x1599 (fffff804`212482f9)  Branch

storport!RaidStartIoPacket+0x1521:
fffff804`21248281 41ffc3          inc     r11d
fffff804`21248284 4983c204        add     r10,4
fffff804`21248288 443bdb          cmp     r11d,ebx
fffff804`2124828b 0f83bcecffff    jae     storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x1531:
fffff804`21248291 ebc5            jmp     storport!RaidStartIoPacket+0x14f8 (fffff804`21248258)  Branch

storport!RaidStartIoPacket+0x1533:
fffff804`21248293 f049ff8710090000 lock inc qword ptr [r15+910h]
fffff804`2124829b e9f7f1ffff      jmp     storport!RaidStartIoPacket+0x737 (fffff804`21247497)  Branch

storport!RaidStartIoPacket+0x1540:
fffff804`212482a0 48c7c0ffffffff  mov     rax,0FFFFFFFFFFFFFFFFh
fffff804`212482a7 f0410fc18708040000 lock xadd dword ptr [r15+408h],eax
fffff804`212482b0 83f801          cmp     eax,1
fffff804`212482b3 0f859aeeffff    jne     storport!RaidStartIoPacket+0x3f3 (fffff804`21247153)  Branch

storport!RaidStartIoPacket+0x1559:
fffff804`212482b9 498d8fd8010000  lea     rcx,[r15+1D8h]
fffff804`212482c0 4533c0          xor     r8d,r8d
fffff804`212482c3 33d2            xor     edx,edx
fffff804`212482c5 4c8b152c3f1300  mov     r10,qword ptr [storport!_imp_KeSetEvent (fffff804`2137c1f8)]
fffff804`212482cc e88f91416d      call    nt!KeSetEvent (fffff804`8e661460)
fffff804`212482d1 e97deeffff      jmp     storport!RaidStartIoPacket+0x3f3 (fffff804`21247153)  Branch

storport!RaidStartIoPacket+0x1576:
fffff804`212482d6 488d5748        lea     rdx,[rdi+48h]
fffff804`212482da e957fdffff      jmp     storport!RaidStartIoPacket+0x12d6 (fffff804`21248036)  Branch

storport!RaidStartIoPacket+0x157f:
fffff804`212482df 488b7d98        mov     rdi,qword ptr [rbp-68h]
fffff804`212482e3 3854380a        cmp     byte ptr [rax+rdi+0Ah],dl
fffff804`212482e7 0f8649fdffff    jbe     storport!RaidStartIoPacket+0x12d6 (fffff804`21248036)  Branch

storport!RaidStartIoPacket+0x158d:
fffff804`212482ed 488d5718        lea     rdx,[rdi+18h]
fffff804`212482f1 4803d0          add     rdx,rax
fffff804`212482f4 e93dfdffff      jmp     storport!RaidStartIoPacket+0x12d6 (fffff804`21248036)  Branch

storport!RaidStartIoPacket+0x1599:
fffff804`212482f9 423854280a      cmp     byte ptr [rax+r13+0Ah],dl
fffff804`212482fe 0f8649ecffff    jbe     storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x15a4:
fffff804`21248304 498d5518        lea     rdx,[r13+18h]
fffff804`21248308 4803d0          add     rdx,rax
fffff804`2124830b e93decffff      jmp     storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x15b0:
fffff804`21248310 488d4838        lea     rcx,[rax+38h]
fffff804`21248314 493bc9          cmp     rcx,r9
fffff804`21248317 0f8728f0ffff    ja      storport!RaidStartIoPacket+0x5e5 (fffff804`21247345)  Branch

storport!RaidStartIoPacket+0x15bd:
fffff804`2124831d 488bfa          mov     rdi,rdx
fffff804`21248320 4538430a        cmp     byte ptr [r11+0Ah],r8b
fffff804`21248324 0f8628f0ffff    jbe     storport!RaidStartIoPacket+0x5f2 (fffff804`21247352)  Branch

storport!RaidStartIoPacket+0x15ca:
fffff804`2124832a 4d8d4318        lea     r8,[r11+18h]
fffff804`2124832e e91ff0ffff      jmp     storport!RaidStartIoPacket+0x5f2 (fffff804`21247352)  Branch

storport!RaidStartIoPacket+0x15d3:
fffff804`21248333 83e941          sub     ecx,41h
fffff804`21248336 0f84a6010000    je      storport!RaidStartIoPacket+0x1782 (fffff804`212484e2)  Branch

storport!RaidStartIoPacket+0x15dc:
fffff804`2124833c 83f901          cmp     ecx,1
fffff804`2124833f 0f85ddfcffff    jne     storport!RaidStartIoPacket+0x12c2 (fffff804`21248022)  Branch

storport!RaidStartIoPacket+0x15e5:
fffff804`21248345 488d4828        lea     rcx,[rax+28h]
fffff804`21248349 493bc8          cmp     rcx,r8
fffff804`2124834c 0f87d0fcffff    ja      storport!RaidStartIoPacket+0x12c2 (fffff804`21248022)  Branch

storport!RaidStartIoPacket+0x15f2:
fffff804`21248352 488b7d98        mov     rdi,qword ptr [rbp-68h]
fffff804`21248356 3954380c        cmp     dword ptr [rax+rdi+0Ch],edx
fffff804`2124835a 0f86d6fcffff    jbe     storport!RaidStartIoPacket+0x12d6 (fffff804`21248036)  Branch

storport!RaidStartIoPacket+0x1600:
fffff804`21248360 488d5720        lea     rdx,[rdi+20h]
fffff804`21248364 4803d0          add     rdx,rax
fffff804`21248367 e9cafcffff      jmp     storport!RaidStartIoPacket+0x12d6 (fffff804`21248036)  Branch

storport!RaidStartIoPacket+0x160c:
fffff804`2124836c 4d8b4f08        mov     r9,qword ptr [r15+8]
fffff804`21248370 ba38000000      mov     edx,38h
fffff804`21248375 41b852614354    mov     r8d,54436152h
fffff804`2124837b 8d4a08          lea     ecx,[rdx+8]
fffff804`2124837e e85dc40200      call    storport!RaidAllocatePool (fffff804`212747e0)
fffff804`21248383 488bd8          mov     rbx,rax
fffff804`21248386 4885c0          test    rax,rax
fffff804`21248389 0f8456fdffff    je      storport!RaidStartIoPacket+0x1385 (fffff804`212480e5)  Branch

storport!RaidStartIoPacket+0x162f:
fffff804`2124838f c700dd22ee11    mov     dword ptr [rax],11EE22DDh
fffff804`21248395 4183bf300d0000ff cmp     dword ptr [r15+0D30h],0FFFFFFFFh
fffff804`2124839d 0f856d0f1000    jne     storport!RaidStartIoPacket+0x1025b0 (fffff804`21349310)  Branch

storport!RaidStartIoPacket+0x1643:
fffff804`212483a3 48c7c2ffffffff  mov     rdx,0FFFFFFFFFFFFFFFFh
fffff804`212483aa e97b0f1000      jmp     storport!RaidStartIoPacket+0x1025ca (fffff804`2134932a)  Branch

storport!RaidStartIoPacket+0x164f:
fffff804`212483af 83e941          sub     ecx,41h
fffff804`212483b2 0f8433010000    je      storport!RaidStartIoPacket+0x178b (fffff804`212484eb)  Branch

storport!RaidStartIoPacket+0x1658:
fffff804`212483b8 413bcc          cmp     ecx,r12d
fffff804`212483bb 0f85c0feffff    jne     storport!RaidStartIoPacket+0x1521 (fffff804`21248281)  Branch

storport!RaidStartIoPacket+0x1661:
fffff804`212483c1 488d4828        lea     rcx,[rax+28h]
fffff804`212483c5 493bc8          cmp     rcx,r8
fffff804`212483c8 0f87b3feffff    ja      storport!RaidStartIoPacket+0x1521 (fffff804`21248281)  Branch

storport!RaidStartIoPacket+0x166e:
fffff804`212483ce 423954280c      cmp     dword ptr [rax+r13+0Ch],edx
fffff804`212483d3 0f8674ebffff    jbe     storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x1679:
fffff804`212483d9 498d5520        lea     rdx,[r13+20h]
fffff804`212483dd 4803d0          add     rdx,rax
fffff804`212483e0 e968ebffff      jmp     storport!RaidStartIoPacket+0x1ed (fffff804`21246f4d)  Branch

storport!RaidStartIoPacket+0x1685:
fffff804`212483e5 803a42          cmp     byte ptr [rdx],42h
fffff804`212483e8 0f846afcffff    je      storport!RaidStartIoPacket+0x12f8 (fffff804`21248058)  Branch

storport!RaidStartIoPacket+0x168e:
fffff804`212483ee 0fb602          movzx   eax,byte ptr [rdx]
fffff804`212483f1 3c35            cmp     al,35h
fffff804`212483f3 0f845ffcffff    je      storport!RaidStartIoPacket+0x12f8 (fffff804`21248058)  Branch

storport!RaidStartIoPacket+0x1699:
fffff804`212483f9 3c91            cmp     al,91h
fffff804`212483fb 0f85c6f5ffff    jne     storport!RaidStartIoPacket+0xc67 (fffff804`212479c7)  Branch

storport!RaidStartIoPacket+0x16a1:
fffff804`21248401 e952fcffff      jmp     storport!RaidStartIoPacket+0x12f8 (fffff804`21248058)  Branch

storport!RaidStartIoPacket+0x16a6:
fffff804`21248406 817a284e6f5265  cmp     dword ptr [rdx+28h],65526F4Eh
fffff804`2124840d 0f856cf4ffff    jne     storport!RaidStartIoPacket+0xb1f (fffff804`2124787f)  Branch

storport!RaidStartIoPacket+0x16b3:
fffff804`21248413 44397218        cmp     dword ptr [rdx+18h],r14d
fffff804`21248417 0f8662f4ffff    jbe     storport!RaidStartIoPacket+0xb1f (fffff804`2124787f)  Branch

storport!RaidStartIoPacket+0x16bd:
fffff804`2124841d 4439b2c0000000  cmp     dword ptr [rdx+0C0h],r14d
fffff804`21248424 0f8555f4ffff    jne     storport!RaidStartIoPacket+0xb1f (fffff804`2124787f)  Branch

storport!RaidStartIoPacket+0x16ca:
fffff804`2124842a 488bca          mov     rcx,rdx
fffff804`2124842d 44897228        mov     dword ptr [rdx+28h],r14d
fffff804`21248431 e86a300200      call    storport!RaidAdapterRestartGateway (fffff804`2126b4a0)
fffff804`21248436 458bee          mov     r13d,r14d
fffff804`21248439 41bc01000000    mov     r12d,1
fffff804`2124843f e9cef2ffff      jmp     storport!RaidStartIoPacket+0x9b2 (fffff804`21247712)  Branch

storport!RaidStartIoPacket+0x16e4:
fffff804`21248444 8d4158          lea     eax,[rcx+58h]
fffff804`21248447 a8fd            test    al,0FDh
fffff804`21248449 0f8417ebffff    je      storport!RaidStartIoPacket+0x206 (fffff804`21246f66)  Branch

storport!RaidStartIoPacket+0x16ef:
fffff804`2124844f 80c178          add     cl,78h
fffff804`21248452 f6c1fd          test    cl,0FDh
fffff804`21248455 0f850d010000    jne     storport!RaidStartIoPacket+0x1808 (fffff804`21248568)  Branch

storport!RaidStartIoPacket+0x16fb:
fffff804`2124845b 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff804`2124845f 884587          mov     byte ptr [rbp-79h],al
fffff804`21248462 0fb64203        movzx   eax,byte ptr [rdx+3]
fffff804`21248466 884586          mov     byte ptr [rbp-7Ah],al
fffff804`21248469 0fb64204        movzx   eax,byte ptr [rdx+4]
fffff804`2124846d 884585          mov     byte ptr [rbp-7Bh],al
fffff804`21248470 0fb64205        movzx   eax,byte ptr [rdx+5]
fffff804`21248474 884584          mov     byte ptr [rbp-7Ch],al
fffff804`21248477 0fb64206        movzx   eax,byte ptr [rdx+6]
fffff804`2124847b 884583          mov     byte ptr [rbp-7Dh],al
fffff804`2124847e 0fb64207        movzx   eax,byte ptr [rdx+7]
fffff804`21248482 884582          mov     byte ptr [rbp-7Eh],al
fffff804`21248485 0fb64208        movzx   eax,byte ptr [rdx+8]
fffff804`21248489 884581          mov     byte ptr [rbp-7Fh],al
fffff804`2124848c 0fb64209        movzx   eax,byte ptr [rdx+9]
fffff804`21248490 884580          mov     byte ptr [rbp-80h],al
fffff804`21248493 4c8b4580        mov     r8,qword ptr [rbp-80h]
fffff804`21248497 e9eaeaffff      jmp     storport!RaidStartIoPacket+0x226 (fffff804`21246f86)  Branch

storport!RaidStartIoPacket+0x173c:
fffff804`2124849c f6053f9e120040  test    byte ptr [storport!Microsoft_Windows_StorPortEnableBits+0x2 (fffff804`213722e2)],40h
fffff804`212484a3 0f8417edffff    je      storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x1749:
fffff804`212484a9 488b4738        mov     rax,qword ptr [rdi+38h]
fffff804`212484ad 4885c0          test    rax,rax
fffff804`212484b0 0f847e0c1000    je      storport!RaidStartIoPacket+0x1023d4 (fffff804`21349134)  Branch

storport!RaidStartIoPacket+0x1756:
fffff804`212484b6 448b30          mov     r14d,dword ptr [rax]
fffff804`212484b9 e9760c1000      jmp     storport!RaidStartIoPacket+0x1023d4 (fffff804`21349134)  Branch

storport!RaidStartIoPacket+0x175e:
fffff804`212484be 440fb64201      movzx   r8d,byte ptr [rdx+1]
fffff804`212484c3 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff804`212484c7 4183e01f        and     r8d,1Fh
fffff804`212484cb 49c1e008        shl     r8,8
fffff804`212484cf 4c0bc0          or      r8,rax
fffff804`212484d2 0fb64203        movzx   eax,byte ptr [rdx+3]
fffff804`212484d6 49c1e008        shl     r8,8
fffff804`212484da 4c0bc0          or      r8,rax
fffff804`212484dd e9a4eaffff      jmp     storport!RaidStartIoPacket+0x226 (fffff804`21246f86)  Branch

storport!RaidStartIoPacket+0x1782:
fffff804`212484e2 488d4838        lea     rcx,[rax+38h]
fffff804`212484e6 e92efbffff      jmp     storport!RaidStartIoPacket+0x12b9 (fffff804`21248019)  Branch

storport!RaidStartIoPacket+0x178b:
fffff804`212484eb 488d4838        lea     rcx,[rax+38h]
fffff804`212484ef e988fdffff      jmp     storport!RaidStartIoPacket+0x151c (fffff804`2124827c)  Branch

storport!RaidStartIoPacket+0x1794:
fffff804`212484f4 80f925          cmp     cl,25h
fffff804`212484f7 0f846deeffff    je      storport!RaidStartIoPacket+0x60a (fffff804`2124736a)  Branch

storport!RaidStartIoPacket+0x179d:
fffff804`212484fd 80f99e          cmp     cl,9Eh
fffff804`21248500 0f8464eeffff    je      storport!RaidStartIoPacket+0x60a (fffff804`2124736a)  Branch

storport!RaidStartIoPacket+0x17a6:
fffff804`21248506 80e95e          sub     cl,5Eh
fffff804`21248509 80f901          cmp     cl,1
fffff804`2124850c 0f87d0e8ffff    ja      storport!RaidStartIoPacket+0x82 (fffff804`21246de2)  Branch

storport!RaidStartIoPacket+0x17b2:
fffff804`21248512 e953eeffff      jmp     storport!RaidStartIoPacket+0x60a (fffff804`2124736a)  Branch

storport!RaidStartIoPacket+0x17b7:
fffff804`21248517 b0b8            mov     al,0B8h
fffff804`21248519 e94cecffff      jmp     storport!RaidStartIoPacket+0x40a (fffff804`2124716a)  Branch

storport!RaidStartIoPacket+0x17be:
fffff804`2124851e 488b5108        mov     rdx,qword ptr [rcx+8]
fffff804`21248522 4032ff          xor     dil,dil
fffff804`21248525 4532c0          xor     r8b,r8b
fffff804`21248528 4532c9          xor     r9b,r9b
fffff804`2124852b 32db            xor     bl,bl
fffff804`2124852d 4532db          xor     r11b,r11b
fffff804`21248530 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff804`21248534 3c28            cmp     al,28h
fffff804`21248536 0f85be0c1000    jne     storport!RaidStartIoPacket+0x10249a (fffff804`213491fa)  Branch

storport!RaidStartIoPacket+0x17dc:
fffff804`2124853c 4d8bd6          mov     r10,r14
fffff804`2124853f 44397214        cmp     dword ptr [rdx+14h],r14d
fffff804`21248543 0f85bd0d1000    jne     storport!RaidStartIoPacket+0x1025a6 (fffff804`21349306)  Branch

storport!RaidStartIoPacket+0x17e9:
fffff804`21248549 8b4238          mov     eax,dword ptr [rdx+38h]
fffff804`2124854c 448974247c      mov     dword ptr [rsp+7Ch],r14d
fffff804`21248551 89442468        mov     dword ptr [rsp+68h],eax
fffff804`21248555 85c0            test    eax,eax
fffff804`21248557 0f84610c1000    je      storport!RaidStartIoPacket+0x10245e (fffff804`213491be)  Branch

storport!RaidStartIoPacket+0x17fd:
fffff804`2124855d 4c8d6278        lea     r12,[rdx+78h]
fffff804`21248561 8bc8            mov     ecx,eax
fffff804`21248563 e9ea0b1000      jmp     storport!RaidStartIoPacket+0x1023f2 (fffff804`21349152)  Branch

storport!RaidStartIoPacket+0x1808:
fffff804`21248568 49c7c0ffffffff  mov     r8,0FFFFFFFFFFFFFFFFh
fffff804`2124856f e912eaffff      jmp     storport!RaidStartIoPacket+0x226 (fffff804`21246f86)  Branch

storport!RaidStartIoPacket+0x1814:
fffff804`21248574 498b4560        mov     rax,qword ptr [r13+60h]
fffff804`21248578 48894310        mov     qword ptr [rbx+10h],rax
fffff804`2124857c 49895d60        mov     qword ptr [r13+60h],rbx
fffff804`21248580 e978fbffff      jmp     storport!RaidStartIoPacket+0x139d (fffff804`212480fd)  Branch

storport!RaidStartIoPacket+0x1825:
fffff804`21248585 4885db          test    rbx,rbx
fffff804`21248588 0f84b70d1000    je      storport!RaidStartIoPacket+0x1025e5 (fffff804`21349345)  Branch

storport!RaidStartIoPacket+0x182e:
fffff804`2124858e 498b4530        mov     rax,qword ptr [r13+30h]
fffff804`21248592 48894310        mov     qword ptr [rbx+10h],rax
fffff804`21248596 49895d30        mov     qword ptr [r13+30h],rbx
fffff804`2124859a e9a60d1000      jmp     storport!RaidStartIoPacket+0x1025e5 (fffff804`21349345)  Branch

storport!RaidStartIoPacket+0x183f:
fffff804`2124859f e8dca1d36d      call    nt!KscpCfgDispatchUserCallTargetEsSmep (fffff804`8ef82780)
fffff804`212485a4 e966f1ffff      jmp     storport!RaidStartIoPacket+0x9af (fffff804`2124770f)  Branch

storport!RaidStartIoPacket+0x1849:
fffff804`212485a9 e8d2a1d36d      call    nt!KscpCfgDispatchUserCallTargetEsSmep (fffff804`8ef82780)
fffff804`212485ae e964f3ffff      jmp     storport!RaidStartIoPacket+0xbb7 (fffff804`21247917)  Branch

storport!RaidStartIoPacket+0x1023d4:
fffff804`21349134 8b4730          mov     eax,dword ptr [rdi+30h]
fffff804`21349137 4c8d4508        lea     r8,[rbp+8]
fffff804`2134913b 89442428        mov     dword ptr [rsp+28h],eax
fffff804`2134913f 4c8bcf          mov     r9,rdi
fffff804`21349142 4489742420      mov     dword ptr [rsp+20h],r14d
fffff804`21349147 e838b9f4ff      call    storport!McTemplateK0pqd_EtwWriteTransfer (fffff804`21294a84)
fffff804`2134914c 90              nop
fffff804`2134914d e96ee0efff      jmp     storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x1023f2:
fffff804`21349152 418b0424        mov     eax,dword ptr [r12]
fffff804`21349156 3d80000000      cmp     eax,80h
fffff804`2134915b 0f8281000000    jb      storport!RaidStartIoPacket+0x102482 (fffff804`213491e2)  Branch

storport!RaidStartIoPacket+0x102401:
fffff804`21349161 8b7210          mov     esi,dword ptr [rdx+10h]
fffff804`21349164 3bc6            cmp     eax,esi
fffff804`21349166 737a            jae     storport!RaidStartIoPacket+0x102482 (fffff804`213491e2)  Branch

storport!RaidStartIoPacket+0x102408:
fffff804`21349168 8b0c02          mov     ecx,dword ptr [rdx+rax]
fffff804`2134916b 83f940          cmp     ecx,40h
fffff804`2134916e 745d            je      storport!RaidStartIoPacket+0x10246d (fffff804`213491cd)  Branch

storport!RaidStartIoPacket+0x102410:
fffff804`21349170 83e941          sub     ecx,41h
fffff804`21349173 7423            je      storport!RaidStartIoPacket+0x102438 (fffff804`21349198)  Branch

storport!RaidStartIoPacket+0x102415:
fffff804`21349175 83f901          cmp     ecx,1
fffff804`21349178 7564            jne     storport!RaidStartIoPacket+0x10247e (fffff804`213491de)  Branch

storport!RaidStartIoPacket+0x10241a:
fffff804`2134917a 488d4828        lea     rcx,[rax+28h]
fffff804`2134917e 483bce          cmp     rcx,rsi
fffff804`21349181 775b            ja      storport!RaidStartIoPacket+0x10247e (fffff804`213491de)  Branch

storport!RaidStartIoPacket+0x102423:
fffff804`21349183 443974020c      cmp     dword ptr [rdx+rax+0Ch],r14d
fffff804`21349188 7607            jbe     storport!RaidStartIoPacket+0x102431 (fffff804`21349191)  Branch

storport!RaidStartIoPacket+0x10242a:
fffff804`2134918a 4c8d5020        lea     r10,[rax+20h]
fffff804`2134918e 4c03d2          add     r10,rdx

storport!RaidStartIoPacket+0x102431:
fffff804`21349191 4c8b740218      mov     r14,qword ptr [rdx+rax+18h]
fffff804`21349196 eb1b            jmp     storport!RaidStartIoPacket+0x102453 (fffff804`213491b3)  Branch

storport!RaidStartIoPacket+0x102438:
fffff804`21349198 488d4838        lea     rcx,[rax+38h]
fffff804`2134919c 483bce          cmp     rcx,rsi
fffff804`2134919f 773d            ja      storport!RaidStartIoPacket+0x10247e (fffff804`213491de)  Branch

storport!RaidStartIoPacket+0x102441:
fffff804`213491a1 385c020a        cmp     byte ptr [rdx+rax+0Ah],bl
fffff804`213491a5 7607            jbe     storport!RaidStartIoPacket+0x10244e (fffff804`213491ae)  Branch

storport!RaidStartIoPacket+0x102447:
fffff804`213491a7 4c8d5018        lea     r10,[rax+18h]
fffff804`213491ab 4c03d2          add     r10,rdx

storport!RaidStartIoPacket+0x10244e:
fffff804`213491ae 4c8b740210      mov     r14,qword ptr [rdx+rax+10h]

storport!RaidStartIoPacket+0x102453:
fffff804`213491b3 0fb67c0208      movzx   edi,byte ptr [rdx+rax+8]
fffff804`213491b8 440fb6440209    movzx   r8d,byte ptr [rdx+rax+9]

storport!RaidStartIoPacket+0x10245e:
fffff804`213491be 4d85d2          test    r10,r10
fffff804`213491c1 0f843f010000    je      storport!RaidStartIoPacket+0x1025a6 (fffff804`21349306)  Branch

storport!RaidStartIoPacket+0x102467:
fffff804`213491c7 410fb60a        movzx   ecx,byte ptr [r10]
fffff804`213491cb eb46            jmp     storport!RaidStartIoPacket+0x1024b3 (fffff804`21349213)  Branch

storport!RaidStartIoPacket+0x10246d:
fffff804`213491cd 488d4828        lea     rcx,[rax+28h]
fffff804`213491d1 483bce          cmp     rcx,rsi
fffff804`213491d4 7708            ja      storport!RaidStartIoPacket+0x10247e (fffff804`213491de)  Branch

storport!RaidStartIoPacket+0x102476:
fffff804`213491d6 385c020a        cmp     byte ptr [rdx+rax+0Ah],bl
fffff804`213491da 77cb            ja      storport!RaidStartIoPacket+0x102447 (fffff804`213491a7)  Branch

storport!RaidStartIoPacket+0x10247c:
fffff804`213491dc ebd0            jmp     storport!RaidStartIoPacket+0x10244e (fffff804`213491ae)  Branch

storport!RaidStartIoPacket+0x10247e:
fffff804`213491de 8b4c2468        mov     ecx,dword ptr [rsp+68h]

storport!RaidStartIoPacket+0x102482:
fffff804`213491e2 8b44247c        mov     eax,dword ptr [rsp+7Ch]
fffff804`213491e6 4983c404        add     r12,4
fffff804`213491ea ffc0            inc     eax
fffff804`213491ec 8944247c        mov     dword ptr [rsp+7Ch],eax
fffff804`213491f0 3bc1            cmp     eax,ecx
fffff804`213491f2 0f825affffff    jb      storport!RaidStartIoPacket+0x1023f2 (fffff804`21349152)  Branch

storport!RaidStartIoPacket+0x102498:
fffff804`213491f8 ebc4            jmp     storport!RaidStartIoPacket+0x10245e (fffff804`213491be)  Branch

storport!RaidStartIoPacket+0x10249a:
fffff804`213491fa 0fb64a48        movzx   ecx,byte ptr [rdx+48h]
fffff804`213491fe 4c8b7220        mov     r14,qword ptr [rdx+20h]
fffff804`21349202 440fb6420b      movzx   r8d,byte ptr [rdx+0Bh]
fffff804`21349207 0fb67a04        movzx   edi,byte ptr [rdx+4]
fffff804`2134920b 85c0            test    eax,eax
fffff804`2134920d 0f85f3000000    jne     storport!RaidStartIoPacket+0x1025a6 (fffff804`21349306)  Branch

storport!RaidStartIoPacket+0x1024b3:
fffff804`21349213 80e908          sub     cl,8
fffff804`21349216 f6c15d          test    cl,5Dh
fffff804`21349219 0f85e7000000    jne     storport!RaidStartIoPacket+0x1025a6 (fffff804`21349306)  Branch

storport!RaidStartIoPacket+0x1024bf:
fffff804`2134921f 807a0301        cmp     byte ptr [rdx+3],1
fffff804`21349223 0f8492000000    je      storport!RaidStartIoPacket+0x10255b (fffff804`213492bb)  Branch

storport!RaidStartIoPacket+0x1024c9:
fffff804`21349229 4d85f6          test    r14,r14
fffff804`2134922c 0f8489000000    je      storport!RaidStartIoPacket+0x10255b (fffff804`213492bb)  Branch

storport!RaidStartIoPacket+0x1024d2:
fffff804`21349232 4584c0          test    r8b,r8b
fffff804`21349235 0f8480000000    je      storport!RaidStartIoPacket+0x10255b (fffff804`213492bb)  Branch

storport!RaidStartIoPacket+0x1024db:
fffff804`2134923b 410fb606        movzx   eax,byte ptr [r14]
fffff804`2134923f 4532d2          xor     r10b,r10b
fffff804`21349242 247f            and     al,7Fh
fffff804`21349244 410fb6c8        movzx   ecx,r8b
fffff804`21349248 2c72            sub     al,72h
fffff804`2134924a 4903ce          add     rcx,r14
fffff804`2134924d 3c01            cmp     al,1
fffff804`2134924f 498d4608        lea     rax,[r14+8]
fffff804`21349253 7646            jbe     storport!RaidStartIoPacket+0x10253b (fffff804`2134929b)  Branch

storport!RaidStartIoPacket+0x1024f5:
fffff804`21349255 483bc1          cmp     rax,rcx
fffff804`21349258 775c            ja      storport!RaidStartIoPacket+0x102556 (fffff804`213492b6)  Branch

storport!RaidStartIoPacket+0x1024fa:
fffff804`2134925a 410fb64e07      movzx   ecx,byte ptr [r14+7]
fffff804`2134925f 4d8d5e0d        lea     r11,[r14+0Dh]
fffff804`21349263 450fb64e02      movzx   r9d,byte ptr [r14+2]
fffff804`21349268 83c108          add     ecx,8
fffff804`2134926b 4180e10f        and     r9b,0Fh
fffff804`2134926f 410fb6c0        movzx   eax,r8b
fffff804`21349273 3bc8            cmp     ecx,eax
fffff804`21349275 0f46c1          cmovbe  eax,ecx
fffff804`21349278 8bc8            mov     ecx,eax
fffff804`2134927a 4903ce          add     rcx,r14
fffff804`2134927d 4c3bd9          cmp     r11,rcx
fffff804`21349280 7705            ja      storport!RaidStartIoPacket+0x102527 (fffff804`21349287)  Branch

storport!RaidStartIoPacket+0x102522:
fffff804`21349282 410fb65e0c      movzx   ebx,byte ptr [r14+0Ch]

storport!RaidStartIoPacket+0x102527:
fffff804`21349287 498d460e        lea     rax,[r14+0Eh]
fffff804`2134928b 483bc1          cmp     rax,rcx
fffff804`2134928e 7706            ja      storport!RaidStartIoPacket+0x102536 (fffff804`21349296)  Branch

storport!RaidStartIoPacket+0x102530:
fffff804`21349290 450fb61b        movzx   r11d,byte ptr [r11]
fffff804`21349294 eb1d            jmp     storport!RaidStartIoPacket+0x102553 (fffff804`213492b3)  Branch

storport!RaidStartIoPacket+0x102536:
fffff804`21349296 4532db          xor     r11b,r11b
fffff804`21349299 eb18            jmp     storport!RaidStartIoPacket+0x102553 (fffff804`213492b3)  Branch

storport!RaidStartIoPacket+0x10253b:
fffff804`2134929b 483bc1          cmp     rax,rcx
fffff804`2134929e 7716            ja      storport!RaidStartIoPacket+0x102556 (fffff804`213492b6)  Branch

storport!RaidStartIoPacket+0x102540:
fffff804`213492a0 450fb64e01      movzx   r9d,byte ptr [r14+1]
fffff804`213492a5 410fb65e02      movzx   ebx,byte ptr [r14+2]
fffff804`213492aa 4180e10f        and     r9b,0Fh
fffff804`213492ae 450fb65e03      movzx   r11d,byte ptr [r14+3]

storport!RaidStartIoPacket+0x102553:
fffff804`213492b3 41b201          mov     r10b,1

storport!RaidStartIoPacket+0x102556:
fffff804`213492b6 4584d2          test    r10b,r10b
fffff804`213492b9 7508            jne     storport!RaidStartIoPacket+0x102563 (fffff804`213492c3)  Branch

storport!RaidStartIoPacket+0x10255b:
fffff804`213492bb 4532db          xor     r11b,r11b
fffff804`213492be 32db            xor     bl,bl
fffff804`213492c0 4532c9          xor     r9b,r9b

storport!RaidStartIoPacket+0x102563:
fffff804`213492c3 488b442470      mov     rax,qword ptr [rsp+70h]
fffff804`213492c8 4c8d4508        lea     r8,[rbp+8]
fffff804`213492cc 4889442450      mov     qword ptr [rsp+50h],rax
fffff804`213492d1 0fb64203        movzx   eax,byte ptr [rdx+3]
fffff804`213492d5 44885c2448      mov     byte ptr [rsp+48h],r11b
fffff804`213492da 885c2440        mov     byte ptr [rsp+40h],bl
fffff804`213492de 44884c2438      mov     byte ptr [rsp+38h],r9b
fffff804`213492e3 40887c2430      mov     byte ptr [rsp+30h],dil
fffff804`213492e8 488b7c2470      mov     rdi,qword ptr [rsp+70h]
fffff804`213492ed 88442428        mov     byte ptr [rsp+28h],al
fffff804`213492f1 4c8bcf          mov     r9,rdi
fffff804`213492f4 8b4730          mov     eax,dword ptr [rdi+30h]
fffff804`213492f7 89442420        mov     dword ptr [rsp+20h],eax
fffff804`213492fb e8b469f4ff      call    storport!McTemplateK0pduuuuup_EtwWriteTransfer (fffff804`2128fcb4)
fffff804`21349300 90              nop
fffff804`21349301 e9badeefff      jmp     storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x1025a6:
fffff804`21349306 488b7c2470      mov     rdi,qword ptr [rsp+70h]
fffff804`2134930b e9b0deefff      jmp     storport!RaidStartIoPacket+0x460 (fffff804`212471c0)  Branch

storport!RaidStartIoPacket+0x1025b0:
fffff804`21349310 4c8b15d12d0300  mov     r10,qword ptr [storport!_imp_KeQueryUnbiasedInterruptTime (fffff804`2137c0e8)]
fffff804`21349317 e884404b6d      call    nt!KeQueryUnbiasedInterruptTime (fffff804`8e7fd3a0)
fffff804`2134931c 416997300d0000404b4c00 imul edx,dword ptr [r15+0D30h],4C4B40h
fffff804`21349327 4803d0          add     rdx,rax

storport!RaidStartIoPacket+0x1025ca:
fffff804`2134932a 488b442470      mov     rax,qword ptr [rsp+70h]
fffff804`2134932f 834c246410      or      dword ptr [rsp+64h],10h
fffff804`21349334 48895308        mov     qword ptr [rbx+8],rdx
fffff804`21349338 48894328        mov     qword ptr [rbx+28h],rax
fffff804`2134933c 4c897b30        mov     qword ptr [rbx+30h],r15
fffff804`21349340 e9a0edefff      jmp     storport!RaidStartIoPacket+0x1385 (fffff804`212480e5)  Branch

storport!RaidStartIoPacket+0x1025e5:
fffff804`21349345 418b87280d0000  mov     eax,dword ptr [r15+0D28h]
fffff804`2134934c 41894514        mov     dword ptr [r13+14h],eax
fffff804`21349350 e9f1e7efff      jmp     storport!RaidStartIoPacket+0xde6 (fffff804`21247b46)  Branch
