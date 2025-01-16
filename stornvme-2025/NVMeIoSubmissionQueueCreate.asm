stornvme!NVMeIoSubmissionQueueCreate:
fffff804`232d37f0 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff804`232d37f5 55              push    rbp
fffff804`232d37f6 56              push    rsi
fffff804`232d37f7 57              push    rdi
fffff804`232d37f8 4154            push    r12
fffff804`232d37fa 4155            push    r13
fffff804`232d37fc 4156            push    r14
fffff804`232d37fe 4157            push    r15
fffff804`232d3800 488bec          mov     rbp,rsp
fffff804`232d3803 4883ec50        sub     rsp,50h
fffff804`232d3807 33c0            xor     eax,eax
fffff804`232d3809 4c8db94a010000  lea     r15,[rcx+14Ah]
fffff804`232d3810 48894540        mov     qword ptr [rbp+40h],rax
fffff804`232d3814 8bf8            mov     edi,eax
fffff804`232d3816 48894558        mov     qword ptr [rbp+58h],rax
fffff804`232d381a 450fb6f0        movzx   r14d,r8b
fffff804`232d381e 488945f0        mov     qword ptr [rbp-10h],rax
fffff804`232d3822 440fb6ea        movzx   r13d,dl
fffff804`232d3826 488945e0        mov     qword ptr [rbp-20h],rax
fffff804`232d382a 488bd9          mov     rbx,rcx
fffff804`232d382d 488945e8        mov     qword ptr [rbp-18h],rax
fffff804`232d3831 8b8180000000    mov     eax,dword ptr [rcx+80h]
fffff804`232d3837 a808            test    al,8
fffff804`232d3839 0f8599010000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x1e8 (fffff804`232d39d8)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x4f:
fffff804`232d383f 4532e4          xor     r12b,r12b

stornvme!NVMeIoSubmissionQueueCreate+0x52:
fffff804`232d3842 be01000000      mov     esi,1
fffff804`232d3847 660f1f840000000000 nop   word ptr [rax+rax]

stornvme!NVMeIoSubmissionQueueCreate+0x60:
fffff804`232d3850 66413b37        cmp     si,word ptr [r15]
fffff804`232d3854 0f8771010000    ja      stornvme!NVMeIoSubmissionQueueCreate+0x1db (fffff804`232d39cb)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x6a:
fffff804`232d385a 4584f6          test    r14b,r14b
fffff804`232d385d 0f850e010000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x181 (fffff804`232d3971)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x73:
fffff804`232d3863 488dbbe0030000  lea     rdi,[rbx+3E0h]
fffff804`232d386a 488bcb          mov     rcx,rbx
fffff804`232d386d 488bd7          mov     rdx,rdi
fffff804`232d3870 e8ab130000      call    stornvme!LocalCommandReuse (fffff804`232d4c20)
fffff804`232d3875 488b8340040000  mov     rax,qword ptr [rbx+440h]
fffff804`232d387c 48897d40        mov     qword ptr [rbp+40h],rdi
fffff804`232d3880 488b7de0        mov     rdi,qword ptr [rbp-20h]
fffff804`232d3884 48894558        mov     qword ptr [rbp+58h],rax

stornvme!NVMeIoSubmissionQueueCreate+0x98:
fffff804`232d3888 80887910000001  or      byte ptr [rax+1079h],1
fffff804`232d388f 33c9            xor     ecx,ecx
fffff804`232d3891 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232d3895 80a079100000fd  and     byte ptr [rax+1079h],0FDh
fffff804`232d389c 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232d38a0 6689886c100000  mov     word ptr [rax+106Ch],cx
fffff804`232d38a7 4c8b4558        mov     r8,qword ptr [rbp+58h]
fffff804`232d38ab 0fb7c6          movzx   eax,si
fffff804`232d38ae 41c6800010000001 mov     byte ptr [r8+1000h],1
fffff804`232d38b6 488d1440        lea     rdx,[rax+rax*2]
fffff804`232d38ba 488b8398030000  mov     rax,qword ptr [rbx+398h]
fffff804`232d38c1 48c1e206        shl     rdx,6
fffff804`232d38c5 488b8c0248ffffff mov     rcx,qword ptr [rdx+rax-0B8h]
fffff804`232d38cd 49898818100000  mov     qword ptr [r8+1018h],rcx
fffff804`232d38d4 664189b028100000 mov     word ptr [r8+1028h],si
fffff804`232d38dc 0fb78346010000  movzx   eax,word ptr [rbx+146h]
fffff804`232d38e3 66ffc8          dec     ax
fffff804`232d38e6 664189802a100000 mov     word ptr [r8+102Ah],ax
fffff804`232d38ee 418b802c100000  mov     eax,dword ptr [r8+102Ch]
fffff804`232d38f5 83e0fd          and     eax,0FFFFFFFDh
fffff804`232d38f8 83c805          or      eax,5
fffff804`232d38fb 4189802c100000  mov     dword ptr [r8+102Ch],eax
fffff804`232d3902 488b8398030000  mov     rax,qword ptr [rbx+398h]
fffff804`232d3909 0fb78c027affffff movzx   ecx,word ptr [rdx+rax-86h]
fffff804`232d3911 664189882e100000 mov     word ptr [r8+102Eh],cx
fffff804`232d3919 4584f6          test    r14b,r14b
fffff804`232d391c 0f85cf000000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x201 (fffff804`232d39f1)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x132:
fffff804`232d3922 4584e4          test    r12b,r12b
fffff804`232d3925 0f85c6000000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x201 (fffff804`232d39f1)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x13b:
fffff804`232d392b 488b5540        mov     rdx,qword ptr [rbp+40h]
fffff804`232d392f 488bcb          mov     rcx,rbx
fffff804`232d3932 4883c208        add     rdx,8
fffff804`232d3936 e855100000      call    stornvme!ProcessCommand (fffff804`232d4990)
fffff804`232d393b 4584f6          test    r14b,r14b
fffff804`232d393e 0f85f2000000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x246 (fffff804`232d3a36)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x154:
fffff804`232d3944 488b5540        mov     rdx,qword ptr [rbp+40h]
fffff804`232d3948 450fb6c5        movzx   r8d,r13b
fffff804`232d394c 4883c208        add     rdx,8
fffff804`232d3950 488bcb          mov     rcx,rbx
fffff804`232d3953 e878feffff      call    stornvme!WaitForCommandComplete (fffff804`232d37d0)
fffff804`232d3958 488b4540        mov     rax,qword ptr [rbp+40h]
fffff804`232d395c 0fb6480b        movzx   ecx,byte ptr [rax+0Bh]
fffff804`232d3960 80f901          cmp     cl,1
fffff804`232d3963 0f854f010000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x2c8 (fffff804`232d3ab8)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x179:
fffff804`232d3969 66ffc6          inc     si
fffff804`232d396c e9dffeffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x60 (fffff804`232d3850)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x181:
fffff804`232d3971 488d4540        lea     rax,[rbp+40h]
fffff804`232d3975 41b94e766d65    mov     r9d,656D764Eh
fffff804`232d397b 41b880000000    mov     r8d,80h
fffff804`232d3981 4889442420      mov     qword ptr [rsp+20h],rax
fffff804`232d3986 488bd3          mov     rdx,rbx
fffff804`232d3989 33c9            xor     ecx,ecx
fffff804`232d398b 4c8b1506070400  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff804`23314098)]
fffff804`232d3992 e8e95ff9fd      call    storport!StorPortExtendedFunction (fffff804`21269980)
fffff804`232d3997 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff804`232d399b 4885c9          test    rcx,rcx
fffff804`232d399e 0f85aec40200    jne     stornvme!NVMeIoSubmissionQueueCreate+0x2c662 (fffff804`232ffe52)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x1b4:
fffff804`232d39a4 4885ff          test    rdi,rdi
fffff804`232d39a7 0f85c3000000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x280 (fffff804`232d3a70)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x1bd:
fffff804`232d39ad b8010000c1      mov     eax,0C1000001h

stornvme!NVMeIoSubmissionQueueCreate+0x1c2:
fffff804`232d39b2 488b9c2498000000 mov     rbx,qword ptr [rsp+98h]
fffff804`232d39ba 4883c450        add     rsp,50h
fffff804`232d39be 415f            pop     r15
fffff804`232d39c0 415e            pop     r14
fffff804`232d39c2 415d            pop     r13
fffff804`232d39c4 415c            pop     r12
fffff804`232d39c6 5f              pop     rdi
fffff804`232d39c7 5e              pop     rsi
fffff804`232d39c8 5d              pop     rbp
fffff804`232d39c9 c3              ret

stornvme!NVMeIoSubmissionQueueCreate+0x1db:
fffff804`232d39cb 4584e4          test    r12b,r12b
fffff804`232d39ce 0f85f9000000    jne     stornvme!NVMeIoSubmissionQueueCreate+0x2dd (fffff804`232d3acd)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x1e4:
fffff804`232d39d4 33c0            xor     eax,eax
fffff804`232d39d6 ebda            jmp     stornvme!NVMeIoSubmissionQueueCreate+0x1c2 (fffff804`232d39b2)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x1e8:
fffff804`232d39d8 0fb78144010000  movzx   eax,word ptr [rcx+144h]
fffff804`232d39df 41b401          mov     r12b,1
fffff804`232d39e2 66413907        cmp     word ptr [r15],ax
fffff804`232d39e6 0f8256feffff    jb      stornvme!NVMeIoSubmissionQueueCreate+0x52 (fffff804`232d3842)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x1fc:
fffff804`232d39ec e94efeffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x4f (fffff804`232d383f)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x201:
fffff804`232d39f1 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232d39f5 488d0d94260200  lea     rcx,[stornvme!NVMeIoSubmissionQueueCreateCompletion (fffff804`232f6090)]
fffff804`232d39fc 48898858100000  mov     qword ptr [rax+1058h],rcx
fffff804`232d3a03 4584e4          test    r12b,r12b
fffff804`232d3a06 0f841fffffff    je      stornvme!NVMeIoSubmissionQueueCreate+0x13b (fffff804`232d392b)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x21c:
fffff804`232d3a0c 488b4de8        mov     rcx,qword ptr [rbp-18h]
fffff804`232d3a10 4885c9          test    rcx,rcx
fffff804`232d3a13 0f84c7c40200    je      stornvme!NVMeIoSubmissionQueueCreate+0x2c6f0 (fffff804`232ffee0)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x229:
fffff804`232d3a19 488b4540        mov     rax,qword ptr [rbp+40h]
fffff804`232d3a1d 4883c008        add     rax,8
fffff804`232d3a21 48894128        mov     qword ptr [rcx+28h],rax
fffff804`232d3a25 488b4540        mov     rax,qword ptr [rbp+40h]
fffff804`232d3a29 4883c008        add     rax,8
fffff804`232d3a2d 488945e8        mov     qword ptr [rbp-18h],rax
fffff804`232d3a31 e933ffffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x179 (fffff804`232d3969)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x246:
fffff804`232d3a36 0fb78344010000  movzx   eax,word ptr [rbx+144h]
fffff804`232d3a3d 663983d8010000  cmp     word ptr [rbx+1D8h],ax
fffff804`232d3a44 0f851fffffff    jne     stornvme!NVMeIoSubmissionQueueCreate+0x179 (fffff804`232d3969)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x25a:
fffff804`232d3a4a 41b8e8030000    mov     r8d,3E8h
fffff804`232d3a50 488bd3          mov     rdx,rbx
fffff804`232d3a53 b951000000      mov     ecx,51h
fffff804`232d3a58 4c8b1539060400  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff804`23314098)]
fffff804`232d3a5f e81c5ff9fd      call    storport!StorPortExtendedFunction (fffff804`21269980)
fffff804`232d3a64 f0ff83d4030000  lock inc dword ptr [rbx+3D4h]
fffff804`232d3a6b e9f9feffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x179 (fffff804`232d3969)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x280:
fffff804`232d3a70 488bcf          mov     rcx,rdi
fffff804`232d3a73 e8387c0000      call    stornvme!GetSrbExtension (fffff804`232db6b0)
fffff804`232d3a78 4c8b45e0        mov     r8,qword ptr [rbp-20h]
fffff804`232d3a7c ba00200000      mov     edx,2000h
fffff804`232d3a81 488bcb          mov     rcx,rbx
fffff804`232d3a84 488bb860100000  mov     rdi,qword ptr [rax+1060h]
fffff804`232d3a8b 498b7028        mov     rsi,qword ptr [r8+28h]
fffff804`232d3a8f 4983c038        add     r8,38h
fffff804`232d3a93 4c8b4f68        mov     r9,qword ptr [rdi+68h]
fffff804`232d3a97 e844950000      call    stornvme!NVMeFreeDmaBuffer (fffff804`232dcfe0)
fffff804`232d3a9c 488bd7          mov     rdx,rdi
fffff804`232d3a9f 488bcb          mov     rcx,rbx
fffff804`232d3aa2 e895690100      call    stornvme!NVMeFreePool (fffff804`232ea43c)
fffff804`232d3aa7 488975e0        mov     qword ptr [rbp-20h],rsi
fffff804`232d3aab 488bfe          mov     rdi,rsi
fffff804`232d3aae 4885f6          test    rsi,rsi
fffff804`232d3ab1 75bd            jne     stornvme!NVMeIoSubmissionQueueCreate+0x280 (fffff804`232d3a70)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2c3:
fffff804`232d3ab3 e9f5feffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x1bd (fffff804`232d39ad)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2c8:
fffff804`232d3ab8 80f905          cmp     cl,5
fffff804`232d3abb b8010000c1      mov     eax,0C1000001h
fffff804`232d3ac0 ba0c0000c1      mov     edx,0C100000Ch
fffff804`232d3ac5 0f44c2          cmove   eax,edx
fffff804`232d3ac8 e9e5feffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x1c2 (fffff804`232d39b2)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2dd:
fffff804`232d3acd 4885ff          test    rdi,rdi
fffff804`232d3ad0 0f84fefeffff    je      stornvme!NVMeIoSubmissionQueueCreate+0x1e4 (fffff804`232d39d4)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2e6:
fffff804`232d3ad6 488bd7          mov     rdx,rdi
fffff804`232d3ad9 488bcb          mov     rcx,rbx
fffff804`232d3adc e807610200      call    stornvme!ProcessMultipleCommands (fffff804`232f9be8)
fffff804`232d3ae1 e9eefeffff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x1e4 (fffff804`232d39d4)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2c662:
fffff804`232ffe52 33d2            xor     edx,edx
fffff804`232ffe54 41b880000000    mov     r8d,80h
fffff804`232ffe5a e861f1ffff      call    stornvme!_memset_spec_ermsb (fffff804`232fefc0)
fffff804`232ffe5f 4c8d4df0        lea     r9,[rbp-10h]
fffff804`232ffe63 ba00200000      mov     edx,2000h
fffff804`232ffe68 4c8d4558        lea     r8,[rbp+58h]
fffff804`232ffe6c 488bcb          mov     rcx,rbx
fffff804`232ffe6f e80cc7fdff      call    stornvme!NVMeAllocateDmaBuffer (fffff804`232dc580)
fffff804`232ffe74 488b4d58        mov     rcx,qword ptr [rbp+58h]
fffff804`232ffe78 4885c9          test    rcx,rcx
fffff804`232ffe7b 7478            je      stornvme!NVMeIoSubmissionQueueCreate+0x2c705 (fffff804`232ffef5)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2c68d:
fffff804`232ffe7d 33d2            xor     edx,edx
fffff804`232ffe7f 41b880100000    mov     r8d,1080h
fffff804`232ffe85 e836f1ffff      call    stornvme!_memset_spec_ermsb (fffff804`232fefc0)
fffff804`232ffe8a 488b4540        mov     rax,qword ptr [rbp+40h]
fffff804`232ffe8e c6400b00        mov     byte ptr [rax+0Bh],0
fffff804`232ffe92 488b4540        mov     rax,qword ptr [rbp+40h]
fffff804`232ffe96 c740140000000f  mov     dword ptr [rax+14h],0F000000h
fffff804`232ffe9d 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff804`232ffea1 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232ffea5 48894160        mov     qword ptr [rcx+60h],rax
fffff804`232ffea9 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff804`232ffead 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232ffeb1 48894140        mov     qword ptr [rcx+40h],rax
fffff804`232ffeb5 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff804`232ffeb9 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff804`232ffebd 48894168        mov     qword ptr [rcx+68h],rax
fffff804`232ffec1 488b4540        mov     rax,qword ptr [rbp+40h]
fffff804`232ffec5 c60001          mov     byte ptr [rax],1
fffff804`232ffec8 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232ffecc 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff804`232ffed0 48898860100000  mov     qword ptr [rax+1060h],rcx
fffff804`232ffed7 488b4558        mov     rax,qword ptr [rbp+58h]
fffff804`232ffedb e9a839fdff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x98 (fffff804`232d3888)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2c6f0:
fffff804`232ffee0 488b7d40        mov     rdi,qword ptr [rbp+40h]
fffff804`232ffee4 4883c708        add     rdi,8
fffff804`232ffee8 48897de0        mov     qword ptr [rbp-20h],rdi
fffff804`232ffeec 48897de8        mov     qword ptr [rbp-18h],rdi
fffff804`232ffef0 e9743afdff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x179 (fffff804`232d3969)  Branch

stornvme!NVMeIoSubmissionQueueCreate+0x2c705:
fffff804`232ffef5 488b5540        mov     rdx,qword ptr [rbp+40h]
fffff804`232ffef9 488bcb          mov     rcx,rbx
fffff804`232ffefc e83ba5feff      call    stornvme!NVMeFreePool (fffff804`232ea43c)
fffff804`232fff01 90              nop
fffff804`232fff02 e99d3afdff      jmp     stornvme!NVMeIoSubmissionQueueCreate+0x1b4 (fffff804`232d39a4)  Branch
                                              ^ Extra character error in 'uf stornvme!NVMeIoSubmissionQueueCreate\'
