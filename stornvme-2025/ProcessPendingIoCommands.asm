// rcx: DeviceExtension (HBA)
// rdx(structure)
//      rdx+0: IoSubmissionQueue VA
//      rdx+8: IoSubmissionQueue PA
stornvme!ProcessPendingIoCommands:
fffff802`5724dc50 4055            push    rbp
fffff802`5724dc52 53              push    rbx
fffff802`5724dc53 56              push    rsi
fffff802`5724dc54 57              push    rdi
fffff802`5724dc55 4154            push    r12
fffff802`5724dc57 4155            push    r13
fffff802`5724dc59 4156            push    r14
fffff802`5724dc5b 4157            push    r15
fffff802`5724dc5d 488dac2408ffffff lea     rbp,[rsp-0F8h]
fffff802`5724dc65 4881ecf8010000  sub     rsp,1F8h
fffff802`5724dc6c 488b058d230300  mov     rax,qword ptr [stornvme!_security_cookie (fffff802`57280000)]
fffff802`5724dc73 4833c4          xor     rax,rsp
fffff802`5724dc76 488985e0000000  mov     qword ptr [rbp+0E0h],rax
fffff802`5724dc7d 0fb7423a        movzx   eax,word ptr [rdx+3Ah]
fffff802`5724dc81 4c8daa90000000  lea     r13,[rdx+90h]
fffff802`5724dc88 4533f6          xor     r14d,r14d
fffff802`5724dc8b 4c894d50        mov     qword ptr [rbp+50h],r9
fffff802`5724dc8f 488bf9          mov     rdi,rcx
fffff802`5724dc92 4c897528        mov     qword ptr [rbp+28h],r14
fffff802`5724dc96 4869c888010000  imul    rcx,rax,188h
fffff802`5724dc9d 0f57c0          xorps   xmm0,xmm0
fffff802`5724dca0 0f114568        movups  xmmword ptr [rbp+68h],xmm0
fffff802`5724dca4 0f114578        movups  xmmword ptr [rbp+78h],xmm0
fffff802`5724dca8 498bd8          mov     rbx,r8
fffff802`5724dcab 4c897520        mov     qword ptr [rbp+20h],r14
fffff802`5724dcaf 488b87a0030000  mov     rax,qword ptr [rdi+3A0h]
fffff802`5724dcb6 488bf2          mov     rsi,rdx
fffff802`5724dcb9 480578feffff    add     rax,0FFFFFFFFFFFFFE78h
fffff802`5724dcbf 48895d08        mov     qword ptr [rbp+8],rbx
fffff802`5724dcc3 4803c1          add     rax,rcx
fffff802`5724dcc6 66448974246c    mov     word ptr [rsp+6Ch],r14w
fffff802`5724dccc 48898588000000  mov     qword ptr [rbp+88h],rax
fffff802`5724dcd3 458bfe          mov     r15d,r14d
fffff802`5724dcd6 66448974247c    mov     word ptr [rsp+7Ch],r14w
fffff802`5724dcdc 66448975d0      mov     word ptr [rbp-30h],r14w
fffff802`5724dce1 4d85c0          test    r8,r8
fffff802`5724dce4 0f85af000000    jne     stornvme!ProcessPendingIoCommands+0x149 (fffff802`5724dd99)  Branch

stornvme!ProcessPendingIoCommands+0x9a:
fffff802`5724dcea 4d397500        cmp     qword ptr [r13],r14
fffff802`5724dcee 0f848a000000    je      stornvme!ProcessPendingIoCommands+0x12e (fffff802`5724dd7e)  Branch

stornvme!ProcessPendingIoCommands+0xa4:
fffff802`5724dcf4 0fb74a34        movzx   ecx,word ptr [rdx+34h]
fffff802`5724dcf8 0fb74236        movzx   eax,word ptr [rdx+36h]
fffff802`5724dcfc ffc1            inc     ecx
fffff802`5724dcfe 3bc1            cmp     eax,ecx
fffff802`5724dd00 747c            je      stornvme!ProcessPendingIoCommands+0x12e (fffff802`5724dd7e)  Branch

stornvme!ProcessPendingIoCommands+0xb2:
fffff802`5724dd02 f7471810010000  test    dword ptr [rdi+18h],110h
fffff802`5724dd09 4c8d6718        lea     r12,[rdi+18h]
fffff802`5724dd0d 756f            jne     stornvme!ProcessPendingIoCommands+0x12e (fffff802`5724dd7e)  Branch

stornvme!ProcessPendingIoCommands+0xbf:
fffff802`5724dd0f 488d4240        lea     rax,[rdx+40h]
fffff802`5724dd13 488bd7          mov     rdx,rdi
fffff802`5724dd16 488d4d68        lea     rcx,[rbp+68h]
fffff802`5724dd1a 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`5724dd1f 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff802`5724dd24 448d4301        lea     r8d,[rbx+1]
fffff802`5724dd28 8d4b5d          lea     ecx,[rbx+5Dh]
fffff802`5724dd2b 4c8bc8          mov     r9,rax
fffff802`5724dd2e 4c8b1563630300  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5724dd35 e846bc02f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`5724dd3a 4d8bf5          mov     r14,r13
fffff802`5724dd3d eb12            jmp     stornvme!ProcessPendingIoCommands+0x101 (fffff802`5724dd51)  Branch

stornvme!ProcessPendingIoCommands+0xef:
fffff802`5724dd3f 488b8698000000  mov     rax,qword ptr [rsi+98h]
fffff802`5724dd46 48895808        mov     qword ptr [rax+8],rbx

stornvme!ProcessPendingIoCommands+0xfa:
fffff802`5724dd4a 48899e98000000  mov     qword ptr [rsi+98h],rbx

stornvme!ProcessPendingIoCommands+0x101:
fffff802`5724dd51 4d393e          cmp     qword ptr [r14],r15
fffff802`5724dd54 0f856c0a0000    jne     stornvme!ProcessPendingIoCommands+0xb76 (fffff802`5724e7c6)  Branch

stornvme!ProcessPendingIoCommands+0x10a:
fffff802`5724dd5a 4c8d4568        lea     r8,[rbp+68h]
fffff802`5724dd5e 488bd7          mov     rdx,rdi
fffff802`5724dd61 b904100000      mov     ecx,1004h
fffff802`5724dd66 4c8b1543630300  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`5724dd6d e8ee6d02f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`5724dd72 4585ff          test    r15d,r15d
fffff802`5724dd75 0f85f10c0000    jne     stornvme!ProcessPendingIoCommands+0xe1c (fffff802`5724ea6c)  Branch

stornvme!ProcessPendingIoCommands+0x12b:
fffff802`5724dd7b 4533f6          xor     r14d,r14d

stornvme!ProcessPendingIoCommands+0x12e:
fffff802`5724dd7e 4883be9000000000 cmp     qword ptr [rsi+90h],0
fffff802`5724dd86 b801000000      mov     eax,1
fffff802`5724dd8b 7573            jne     stornvme!ProcessPendingIoCommands+0x1b0 (fffff802`5724de00)  Branch

stornvme!ProcessPendingIoCommands+0x13d:
fffff802`5724dd8d 4883bea000000000 cmp     qword ptr [rsi+0A0h],0
fffff802`5724dd95 7569            jne     stornvme!ProcessPendingIoCommands+0x1b0 (fffff802`5724de00)  Branch

stornvme!ProcessPendingIoCommands+0x147:
fffff802`5724dd97 eb75            jmp     stornvme!ProcessPendingIoCommands+0x1be (fffff802`5724de0e)  Branch

stornvme!ProcessPendingIoCommands+0x149:
fffff802`5724dd99 488d4240        lea     rax,[rdx+40h]
fffff802`5724dd9d 41b801000000    mov     r8d,1
fffff802`5724dda3 488d4d68        lea     rcx,[rbp+68h]
fffff802`5724dda7 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`5724ddac 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff802`5724ddb1 4c8bc8          mov     r9,rax
fffff802`5724ddb4 488bd7          mov     rdx,rdi
fffff802`5724ddb7 4d8bf5          mov     r14,r13
fffff802`5724ddba 418d485c        lea     ecx,[r8+5Ch]
fffff802`5724ddbe 4c8b15d3620300  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5724ddc5 e8b6bb02f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`5724ddca 8b4718          mov     eax,dword ptr [rdi+18h]
fffff802`5724ddcd 4c8d6718        lea     r12,[rdi+18h]
fffff802`5724ddd1 a810            test    al,10h
fffff802`5724ddd3 0f85af090000    jne     stornvme!ProcessPendingIoCommands+0xb38 (fffff802`5724e788)  Branch

stornvme!ProcessPendingIoCommands+0x189:
fffff802`5724ddd9 33c0            xor     eax,eax
fffff802`5724dddb 48894308        mov     qword ptr [rbx+8],rax
fffff802`5724dddf 8b87a4100000    mov     eax,dword ptr [rdi+10A4h]
fffff802`5724dde5 894310          mov     dword ptr [rbx+10h],eax
fffff802`5724dde8 4d397d00        cmp     qword ptr [r13],r15
fffff802`5724ddec 0f854dffffff    jne     stornvme!ProcessPendingIoCommands+0xef (fffff802`5724dd3f)  Branch

stornvme!ProcessPendingIoCommands+0x1a2:
fffff802`5724ddf2 49895d00        mov     qword ptr [r13],rbx
fffff802`5724ddf6 e94fffffff      jmp     stornvme!ProcessPendingIoCommands+0xfa (fffff802`5724dd4a)  Branch

stornvme!ProcessPendingIoCommands+0x1ab:
fffff802`5724ddfb b801000000      mov     eax,1

stornvme!ProcessPendingIoCommands+0x1b0:
fffff802`5724de00 4883bf9810000000 cmp     qword ptr [rdi+1098h],0
fffff802`5724de08 0f85ec5c0200    jne     stornvme!ProcessPendingIoCommands+0x25eaa (fffff802`57273afa)  Branch

stornvme!ProcessPendingIoCommands+0x1be:
fffff802`5724de0e 488b8de0000000  mov     rcx,qword ptr [rbp+0E0h]
fffff802`5724de15 4833cc          xor     rcx,rsp
fffff802`5724de18 e8630a0200      call    stornvme!_security_check_cookie (fffff802`5726e880)
fffff802`5724de1d 4881c4f8010000  add     rsp,1F8h
fffff802`5724de24 415f            pop     r15
fffff802`5724de26 415e            pop     r14
fffff802`5724de28 415d            pop     r13
fffff802`5724de2a 415c            pop     r12
fffff802`5724de2c 5f              pop     rdi
fffff802`5724de2d 5e              pop     rsi
fffff802`5724de2e 5b              pop     rbx
fffff802`5724de2f 5d              pop     rbp
fffff802`5724de30 c3              ret

stornvme!ProcessPendingIoCommands+0x1f0:
fffff802`5724de40 41f7042400010000 test    dword ptr [r12],100h
fffff802`5724de48 48894590        mov     qword ptr [rbp-70h],rax
fffff802`5724de4c 4c896588        mov     qword ptr [rbp-78h],r12
fffff802`5724de50 4c896d98        mov     qword ptr [rbp-68h],r13
fffff802`5724de54 0f853e080000    jne     stornvme!ProcessPendingIoCommands+0xa48 (fffff802`5724e698)  Branch

stornvme!ProcessPendingIoCommands+0x20a:
fffff802`5724de5a f787c80f000000020000 test dword ptr [rdi+0FC8h],200h
fffff802`5724de64 0f852e080000    jne     stornvme!ProcessPendingIoCommands+0xa48 (fffff802`5724e698)  Branch

stornvme!ProcessPendingIoCommands+0x21a:
fffff802`5724de6a 0fb75630        movzx   edx,word ptr [rsi+30h]
fffff802`5724de6e 4c8d4c247c      lea     r9,[rsp+7Ch]
fffff802`5724de73 4c8d44246c      lea     r8,[rsp+6Ch]
fffff802`5724de78 488bcf          mov     rcx,rdi
fffff802`5724de7b e8000c0000      call    stornvme!AssignCommandId (fffff802`5724ea80)
fffff802`5724de80 84c0            test    al,al
fffff802`5724de82 0f8410080000    je      stornvme!ProcessPendingIoCommands+0xa48 (fffff802`5724e698)  Branch

stornvme!ProcessPendingIoCommands+0x238:
fffff802`5724de88 4d8b5500        mov     r10,qword ptr [r13]
fffff802`5724de8c 0f57c0          xorps   xmm0,xmm0
fffff802`5724de8f 0f118590000000  movups  xmmword ptr [rbp+90h],xmm0
fffff802`5724de96 33d2            xor     edx,edx
fffff802`5724de98 4c89542450      mov     qword ptr [rsp+50h],r10
fffff802`5724de9d 0f1185a0000000  movups  xmmword ptr [rbp+0A0h],xmm0
fffff802`5724dea4 8955f8          mov     dword ptr [rbp-8],edx
fffff802`5724dea7 0f1185b0000000  movups  xmmword ptr [rbp+0B0h],xmm0
fffff802`5724deae 0f1185c0000000  movups  xmmword ptr [rbp+0C0h],xmm0
fffff802`5724deb5 0f1185d0000000  movups  xmmword ptr [rbp+0D0h],xmm0
fffff802`5724debc 410fb64a03      movzx   ecx,byte ptr [r10+3]
fffff802`5724dec1 488b84cf78060000 mov     rax,qword ptr [rdi+rcx*8+678h]
fffff802`5724dec9 448b4834        mov     r9d,dword ptr [rax+34h]
fffff802`5724decd 44894c2474      mov     dword ptr [rsp+74h],r9d
fffff802`5724ded2 3b8fe0000000    cmp     ecx,dword ptr [rdi+0E0h]
fffff802`5724ded8 0f83a2080000    jae     stornvme!ProcessPendingIoCommands+0xb30 (fffff802`5724e780)  Branch

stornvme!ProcessPendingIoCommands+0x28e:
fffff802`5724dede 0faee8          lfence
fffff802`5724dee1 488b8ccf78060000 mov     rcx,qword ptr [rdi+rcx*8+678h]
fffff802`5724dee9 4885c9          test    rcx,rcx
fffff802`5724deec 0f848e080000    je      stornvme!ProcessPendingIoCommands+0xb30 (fffff802`5724e780)  Branch

stornvme!ProcessPendingIoCommands+0x2a2:
fffff802`5724def2 8b4910          mov     ecx,dword ptr [rcx+10h]
fffff802`5724def5 894d10          mov     dword ptr [rbp+10h],ecx

stornvme!ProcessPendingIoCommands+0x2a8:
fffff802`5724def8 8b87a4100000    mov     eax,dword ptr [rdi+10A4h]
fffff802`5724defe 894530          mov     dword ptr [rbp+30h],eax
fffff802`5724df01 498b4208        mov     rax,qword ptr [r10+8]
fffff802`5724df05 49894500        mov     qword ptr [r13],rax
fffff802`5724df09 4885c0          test    rax,rax
fffff802`5724df0c 0f84c1080000    je      stornvme!ProcessPendingIoCommands+0xb83 (fffff802`5724e7d3)  Branch

stornvme!ProcessPendingIoCommands+0x2c2:
fffff802`5724df12 b801000000      mov     eax,1
fffff802`5724df17 41894210        mov     dword ptr [r10+10h],eax
fffff802`5724df1b 4c3bd3          cmp     r10,rbx
fffff802`5724df1e 0f84bb080000    je      stornvme!ProcessPendingIoCommands+0xb8f (fffff802`5724e7df)  Branch

stornvme!ProcessPendingIoCommands+0x2d4:
fffff802`5724df24 668985d0000000  mov     word ptr [rbp+0D0h],ax
fffff802`5724df2b 4c8d8d90000000  lea     r9,[rbp+90h]
fffff802`5724df32 c785d400000004000000 mov dword ptr [rbp+0D4h],4
fffff802`5724df3c 4d8bc2          mov     r8,r10
fffff802`5724df3f 410fb64203      movzx   eax,byte ptr [r10+3]
fffff802`5724df44 488bd7          mov     rdx,rdi
fffff802`5724df47 8885da000000    mov     byte ptr [rbp+0DAh],al
fffff802`5724df4d b901200000      mov     ecx,2001h
fffff802`5724df52 488d85d0000000  lea     rax,[rbp+0D0h]
fffff802`5724df59 48898590000000  mov     qword ptr [rbp+90h],rax
fffff802`5724df60 4c8b1549610300  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`5724df67 e8f46b02f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`5724df6c 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5724df71 4c8d9d90000000  lea     r11,[rbp+90h]
fffff802`5724df78 448b4c2474      mov     r9d,dword ptr [rsp+74h]
fffff802`5724df7d 4c895c2460      mov     qword ptr [rsp+60h],r11

stornvme!ProcessPendingIoCommands+0x332:
fffff802`5724df82 8b4778          mov     eax,dword ptr [rdi+78h]
fffff802`5724df85 85c0            test    eax,eax
fffff802`5724df87 0f856c080000    jne     stornvme!ProcessPendingIoCommands+0xba9 (fffff802`5724e7f9)  Branch

stornvme!ProcessPendingIoCommands+0x33d:
fffff802`5724df8d 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724df91 0f57c0          xorps   xmm0,xmm0
fffff802`5724df94 440fb744247c    movzx   r8d,word ptr [rsp+7Ch]
fffff802`5724df9a 0fb754246c      movzx   edx,word ptr [rsp+6Ch]
fffff802`5724df9f 418bc8          mov     ecx,r8d
fffff802`5724dfa2 8b5d30          mov     ebx,dword ptr [rbp+30h]
fffff802`5724dfa5 48c1e105        shl     rcx,5
fffff802`5724dfa9 4c89540810      mov     qword ptr [rax+rcx+10h],r10
fffff802`5724dfae 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724dfb2 6689540118      mov     word ptr [rcx+rax+18h],dx
fffff802`5724dfb7 4803d2          add     rdx,rdx
fffff802`5724dfba 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724dfbe 895c0104        mov     dword ptr [rcx+rax+4],ebx
fffff802`5724dfc2 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724dfc6 410fb65a03      movzx   ebx,byte ptr [r10+3]
fffff802`5724dfcb c1e308          shl     ebx,8
fffff802`5724dfce 83cb48          or      ebx,48h
fffff802`5724dfd1 488b0cd0        mov     rcx,qword ptr [rax+rdx*8]
fffff802`5724dfd5 0f1101          movups  xmmword ptr [rcx],xmm0
fffff802`5724dfd8 0f114110        movups  xmmword ptr [rcx+10h],xmm0
fffff802`5724dfdc 0f114120        movups  xmmword ptr [rcx+20h],xmm0
fffff802`5724dfe0 0f114130        movups  xmmword ptr [rcx+30h],xmm0
fffff802`5724dfe4 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724dfe8 488b0cd0        mov     rcx,qword ptr [rax+rdx*8]
fffff802`5724dfec 6644894102      mov     word ptr [rcx+2],r8w
fffff802`5724dff1 418b5204        mov     edx,dword ptr [r10+4]
fffff802`5724dff5 418b4b10        mov     ecx,dword ptr [r11+10h]
fffff802`5724dff9 448b87d0000000  mov     r8d,dword ptr [rdi+0D0h]
fffff802`5724e000 2bca            sub     ecx,edx
fffff802`5724e002 498b4308        mov     rax,qword ptr [r11+8]
fffff802`5724e006 4803c1          add     rax,rcx
fffff802`5724e009 488945a0        mov     qword ptr [rbp-60h],rax
fffff802`5724e00d b800002000      mov     eax,200000h
fffff802`5724e012 3bd0            cmp     edx,eax
fffff802`5724e014 0f47d0          cmova   edx,eax
fffff802`5724e017 8b4720          mov     eax,dword ptr [rdi+20h]
fffff802`5724e01a 413bd0          cmp     edx,r8d
fffff802`5724e01d 440f46c2        cmovbe  r8d,edx
fffff802`5724e021 4489442468      mov     dword ptr [rsp+68h],r8d
fffff802`5724e026 85c0            test    eax,eax
fffff802`5724e028 0f85fe070000    jne     stornvme!ProcessPendingIoCommands+0xbdc (fffff802`5724e82c)  Branch

stornvme!ProcessPendingIoCommands+0x3de:
fffff802`5724e02e 410fb64203      movzx   eax,byte ptr [r10+3]
fffff802`5724e033 488b8cc778060000 mov     rcx,qword ptr [rdi+rax*8+678h]
fffff802`5724e03b 0fb7415c        movzx   eax,word ptr [rcx+5Ch]
fffff802`5724e03f 6685c0          test    ax,ax
fffff802`5724e042 0f84f5070000    je      stornvme!ProcessPendingIoCommands+0xbed (fffff802`5724e83d)  Branch

stornvme!ProcessPendingIoCommands+0x3f8:
fffff802`5724e048 410fafc1        imul    eax,r9d

stornvme!ProcessPendingIoCommands+0x3fc:
fffff802`5724e04c 8945f8          mov     dword ptr [rbp-8],eax
fffff802`5724e04f 85c0            test    eax,eax
fffff802`5724e051 0f8508080000    jne     stornvme!ProcessPendingIoCommands+0xc0f (fffff802`5724e85f)  Branch

stornvme!ProcessPendingIoCommands+0x407:
fffff802`5724e057 4533c9          xor     r9d,r9d
fffff802`5724e05a 4d894a08        mov     qword ptr [r10+8],r9
fffff802`5724e05e 4c894dd8        mov     qword ptr [rbp-28h],r9
fffff802`5724e062 4c894d40        mov     qword ptr [rbp+40h],r9
fffff802`5724e066 4c894db0        mov     qword ptr [rbp-50h],r9
fffff802`5724e06a 4d394b20        cmp     qword ptr [r11+20h],r9
fffff802`5724e06e 0f8463060000    je      stornvme!ProcessPendingIoCommands+0xa87 (fffff802`5724e6d7)  Branch

stornvme!ProcessPendingIoCommands+0x424:
fffff802`5724e074 45394b28        cmp     dword ptr [r11+28h],r9d
fffff802`5724e078 0f8459060000    je      stornvme!ProcessPendingIoCommands+0xa87 (fffff802`5724e6d7)  Branch

stornvme!ProcessPendingIoCommands+0x42e:
fffff802`5724e07e 4585c0          test    r8d,r8d
fffff802`5724e081 0f8450060000    je      stornvme!ProcessPendingIoCommands+0xa87 (fffff802`5724e6d7)  Branch

stornvme!ProcessPendingIoCommands+0x437:
fffff802`5724e087 418b4b2c        mov     ecx,dword ptr [r11+2Ch]
fffff802`5724e08b 418bc0          mov     eax,r8d
fffff802`5724e08e 412b4b08        sub     ecx,dword ptr [r11+8]
fffff802`5724e092 25ff0f0000      and     eax,0FFFh
fffff802`5724e097 034da0          add     ecx,dword ptr [rbp-60h]
fffff802`5724e09a 05ff0f0000      add     eax,0FFFh
fffff802`5724e09f 81e1ff0f0000    and     ecx,0FFFh
fffff802`5724e0a5 4c894d80        mov     qword ptr [rbp-80h],r9
fffff802`5724e0a9 03c8            add     ecx,eax
fffff802`5724e0ab 418bc0          mov     eax,r8d
fffff802`5724e0ae c1e80c          shr     eax,0Ch
fffff802`5724e0b1 c1e90c          shr     ecx,0Ch
fffff802`5724e0b4 03c8            add     ecx,eax
fffff802`5724e0b6 894c2444        mov     dword ptr [rsp+44h],ecx
fffff802`5724e0ba 83f902          cmp     ecx,2
fffff802`5724e0bd 0f8682000000    jbe     stornvme!ProcessPendingIoCommands+0x4f5 (fffff802`5724e145)  Branch

stornvme!ProcessPendingIoCommands+0x473:
fffff802`5724e0c3 488b96b0000000  mov     rdx,qword ptr [rsi+0B0h]
fffff802`5724e0ca 4885d2          test    rdx,rdx
fffff802`5724e0cd 0f84c5070000    je      stornvme!ProcessPendingIoCommands+0xc48 (fffff802`5724e898)  Branch

stornvme!ProcessPendingIoCommands+0x483:
fffff802`5724e0d3 488955d8        mov     qword ptr [rbp-28h],rdx
fffff802`5724e0d7 488b4218        mov     rax,qword ptr [rdx+18h]
fffff802`5724e0db 488986b0000000  mov     qword ptr [rsi+0B0h],rax
fffff802`5724e0e2 4c894a18        mov     qword ptr [rdx+18h],r9

stornvme!ProcessPendingIoCommands+0x496:
fffff802`5724e0e6 4c8b4dd8        mov     r9,qword ptr [rbp-28h]
fffff802`5724e0ea 418b5110        mov     edx,dword ptr [r9+10h]
fffff802`5724e0ee 8d42ff          lea     eax,[rdx-1]
fffff802`5724e0f1 3dfe010000      cmp     eax,1FEh
fffff802`5724e0f6 0f86cb070000    jbe     stornvme!ProcessPendingIoCommands+0xc77 (fffff802`5724e8c7)  Branch

stornvme!ProcessPendingIoCommands+0x4ac:
fffff802`5724e0fc 498b09          mov     rcx,qword ptr [r9]
fffff802`5724e0ff 41b800100000    mov     r8d,1000h

stornvme!ProcessPendingIoCommands+0x4b5:
fffff802`5724e105 33d2            xor     edx,edx
fffff802`5724e107 e8b40e0200      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`5724e10c 448b442468      mov     r8d,dword ptr [rsp+68h]
fffff802`5724e111 8b4c2444        mov     ecx,dword ptr [rsp+44h]
fffff802`5724e115 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`5724e11a 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5724e11f 4c8b4dd8        mov     r9,qword ptr [rbp-28h]

stornvme!ProcessPendingIoCommands+0x4d3:
fffff802`5724e123 8d41ff          lea     eax,[rcx-1]
fffff802`5724e126 41894110        mov     dword ptr [r9+10h],eax
fffff802`5724e12a 488b45d8        mov     rax,qword ptr [rbp-28h]
fffff802`5724e12e 49894208        mov     qword ptr [r10+8],rax
fffff802`5724e132 488b08          mov     rcx,qword ptr [rax]
fffff802`5724e135 4883c008        add     rax,8
fffff802`5724e139 488945b0        mov     qword ptr [rbp-50h],rax
fffff802`5724e13d 48894d80        mov     qword ptr [rbp-80h],rcx
fffff802`5724e141 48894d40        mov     qword ptr [rbp+40h],rcx

stornvme!ProcessPendingIoCommands+0x4f5:
fffff802`5724e145 488b45a0        mov     rax,qword ptr [rbp-60h]
fffff802`5724e149 4181e0ff0f0000  and     r8d,0FFFh
fffff802`5724e150 418b532c        mov     edx,dword ptr [r11+2Ch]
fffff802`5724e154 4181c0ff0f0000  add     r8d,0FFFh
fffff802`5724e15b 412b5308        sub     edx,dword ptr [r11+8]
fffff802`5724e15f 0fb74c246c      movzx   ecx,word ptr [rsp+6Ch]
fffff802`5724e164 03d0            add     edx,eax
fffff802`5724e166 418b4328        mov     eax,dword ptr [r11+28h]
fffff802`5724e16a 4803c9          add     rcx,rcx
fffff802`5724e16d 4d8b6b20        mov     r13,qword ptr [r11+20h]
fffff802`5724e171 448bca          mov     r9d,edx
fffff802`5724e174 89442440        mov     dword ptr [rsp+40h],eax
fffff802`5724e178 4181e1ff0f0000  and     r9d,0FFFh
fffff802`5724e17f 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724e183 4503c1          add     r8d,r9d
fffff802`5724e186 41c1e80c        shr     r8d,0Ch
fffff802`5724e18a 448be2          mov     r12d,edx
fffff802`5724e18d 41c1ec0c        shr     r12d,0Ch
fffff802`5724e191 4c896dc0        mov     qword ptr [rbp-40h],r13
fffff802`5724e195 488b04c8        mov     rax,qword ptr [rax+rcx*8]
fffff802`5724e199 8b4c2468        mov     ecx,dword ptr [rsp+68h]
fffff802`5724e19d 488945c8        mov     qword ptr [rbp-38h],rax
fffff802`5724e1a1 8bc1            mov     eax,ecx
fffff802`5724e1a3 c1e80c          shr     eax,0Ch
fffff802`5724e1a6 4403c0          add     r8d,eax
fffff802`5724e1a9 b800000000      mov     eax,0
fffff802`5724e1ae 81fa00100000    cmp     edx,1000h
fffff802`5724e1b4 4489442474      mov     dword ptr [rsp+74h],r8d
fffff802`5724e1b9 440f42e0        cmovb   r12d,eax
fffff802`5724e1bd 440f42ca        cmovb   r9d,edx
fffff802`5724e1c1 4489642444      mov     dword ptr [rsp+44h],r12d
fffff802`5724e1c6 4585c0          test    r8d,r8d
fffff802`5724e1c9 0f851c070000    jne     stornvme!ProcessPendingIoCommands+0xc9b (fffff802`5724e8eb)  Branch

stornvme!ProcessPendingIoCommands+0x57f:
fffff802`5724e1cf 4c8b4d90        mov     r9,qword ptr [rbp-70h]
fffff802`5724e1d3 33d2            xor     edx,edx
fffff802`5724e1d5 4c8b6d98        mov     r13,qword ptr [rbp-68h]
fffff802`5724e1d9 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`5724e1dd c7442440010000c1 mov     dword ptr [rsp+40h],0C1000001h
fffff802`5724e1e5 8b442440        mov     eax,dword ptr [rsp+40h]
fffff802`5724e1e9 4c894c2458      mov     qword ptr [rsp+58h],r9

stornvme!ProcessPendingIoCommands+0x59e:
fffff802`5724e1ee 4c894db0        mov     qword ptr [rbp-50h],r9
fffff802`5724e1f2 4c8965c0        mov     qword ptr [rbp-40h],r12
fffff802`5724e1f6 4c896d90        mov     qword ptr [rbp-70h],r13
fffff802`5724e1fa 3d030000c1      cmp     eax,0C1000003h
fffff802`5724e1ff 0f84634d0200    je      stornvme!ProcessPendingIoCommands+0x25318 (fffff802`57272f68)  Branch

stornvme!ProcessPendingIoCommands+0x5b5:
fffff802`5724e205 4533c9          xor     r9d,r9d

stornvme!ProcessPendingIoCommands+0x5b8:
fffff802`5724e208 85c0            test    eax,eax
fffff802`5724e20a 0f85c7040000    jne     stornvme!ProcessPendingIoCommands+0xa87 (fffff802`5724e6d7)  Branch

stornvme!ProcessPendingIoCommands+0x5c0:
fffff802`5724e210 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724e214 0fb74c246c      movzx   ecx,word ptr [rsp+6Ch]
fffff802`5724e219 450fb67203      movzx   r14d,byte ptr [r10+3]
fffff802`5724e21e 4803c9          add     rcx,rcx
fffff802`5724e221 4c8b0cc8        mov     r9,qword ptr [rax+rcx*8]  // r9: nvme_command
fffff802`5724e225 418b4338        mov     eax,dword ptr [r11+38h]
fffff802`5724e229 4c894da8        mov     qword ptr [rbp-58h],r9
fffff802`5724e22d a80f            test    al,0Fh
fffff802`5724e22f 0f85e1060000    jne     stornvme!ProcessPendingIoCommands+0xcc6 (fffff802`5724e916)  Branch

stornvme!ProcessPendingIoCommands+0x5e5:
fffff802`5724e235 41c60102        mov     byte ptr [r9],2

stornvme!ProcessPendingIoCommands+0x5e9:
fffff802`5724e239 418121fffcffff  and     dword ptr [r9],0FFFFFCFFh
fffff802`5724e240 8b4510          mov     eax,dword ptr [rbp+10h]
fffff802`5724e243 41894104        mov     dword ptr [r9+4],eax
fffff802`5724e247 33c0            xor     eax,eax
fffff802`5724e249 49894110        mov     qword ptr [r9+10h],rax
fffff802`5724e24d 4a8b94f778060000 mov     rdx,qword ptr [rdi+r14*8+678h]
fffff802`5724e255 488b45a0        mov     rax,qword ptr [rbp-60h]
fffff802`5724e259 448b742468      mov     r14d,dword ptr [rsp+68h]
fffff802`5724e25e 448b4234        mov     r8d,dword ptr [rdx+34h]
fffff802`5724e262 4899            cqo
fffff802`5724e264 49f7f8          idiv    rax,r8
fffff802`5724e267 33d2            xor     edx,edx
fffff802`5724e269 41894128        mov     dword ptr [r9+28h],eax
fffff802`5724e26d 48c1e820        shr     rax,20h
fffff802`5724e271 4189412c        mov     dword ptr [r9+2Ch],eax
fffff802`5724e275 418d46ff        lea     eax,[r14-1]
fffff802`5724e279 4103c0          add     eax,r8d
fffff802`5724e27c 41f7f0          div     eax,r8d
fffff802`5724e27f 33d2            xor     edx,edx
fffff802`5724e281 66ffc8          dec     ax
fffff802`5724e284 6641894130      mov     word ptr [r9+30h],ax
fffff802`5724e289 41816130ffffffc3 and     dword ptr [r9+30h],0C3FFFFFFh
fffff802`5724e291 418b4b38        mov     ecx,dword ptr [r11+38h]
fffff802`5724e295 418b4130        mov     eax,dword ptr [r9+30h]
fffff802`5724e299 83e120          and     ecx,20h
fffff802`5724e29c 25ffffff3f      and     eax,3FFFFFFFh
fffff802`5724e2a1 41c6413400      mov     byte ptr [r9+34h],0
fffff802`5724e2a6 c1e119          shl     ecx,19h
fffff802`5724e2a9 0bc8            or      ecx,eax
fffff802`5724e2ab 33c0            xor     eax,eax
fffff802`5724e2ad 49894138        mov     qword ptr [r9+38h],rax
fffff802`5724e2b1 0fb744246c      movzx   eax,word ptr [rsp+6Ch]
fffff802`5724e2b6 41894930        mov     dword ptr [r9+30h],ecx
fffff802`5724e2ba 4803c0          add     rax,rax
fffff802`5724e2bd 45297204        sub     dword ptr [r10+4],r14d
fffff802`5724e2c1 488bcf          mov     rcx,rdi
fffff802`5724e2c4 4c8b4618        mov     r8,qword ptr [rsi+18h]
fffff802`5724e2c8 4d8b04c0        mov     r8,qword ptr [r8+rax*8]
fffff802`5724e2cc e8ff82ffff      call    stornvme!ProcessCommandTrace (fffff802`572465d0)
fffff802`5724e2d1 f6471510        test    byte ptr [rdi+15h],10h
fffff802`5724e2d5 0f85a7510200    jne     stornvme!ProcessPendingIoCommands+0x25832 (fffff802`57273482)  Branch

stornvme!ProcessPendingIoCommands+0x68b:
fffff802`5724e2db 8b476c          mov     eax,dword ptr [rdi+6Ch]
fffff802`5724e2de a802            test    al,2
fffff802`5724e2e0 0f859c510200    jne     stornvme!ProcessPendingIoCommands+0x25832 (fffff802`57273482)  Branch

stornvme!ProcessPendingIoCommands+0x696:
fffff802`5724e2e6 440fb744247c    movzx   r8d,word ptr [rsp+7Ch]

stornvme!ProcessPendingIoCommands+0x69c:
fffff802`5724e2ec 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e2f0 410fb7c8        movzx   ecx,r8w
fffff802`5724e2f4 48c1e105        shl     rcx,5
fffff802`5724e2f8 891c01          mov     dword ptr [rcx+rax],ebx
fffff802`5724e2fb 66f0ff8688000000 lock inc word ptr [rsi+88h]
fffff802`5724e303 0fb744247c      movzx   eax,word ptr [rsp+7Ch]
fffff802`5724e308 41ffc7          inc     r15d
fffff802`5724e30b 440fb774246c    movzx   r14d,word ptr [rsp+6Ch]
fffff802`5724e311 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`5724e316 668945d0        mov     word ptr [rbp-30h],ax

stornvme!ProcessPendingIoCommands+0x6ca:
fffff802`5724e31a 4183780400      cmp     dword ptr [r8+4],0
fffff802`5724e31f 488b442458      mov     rax,qword ptr [rsp+58h]
fffff802`5724e324 48894580        mov     qword ptr [rbp-80h],rax
fffff802`5724e328 4c896588        mov     qword ptr [rbp-78h],r12
fffff802`5724e32c 4c896da0        mov     qword ptr [rbp-60h],r13
fffff802`5724e330 0f8453030000    je      stornvme!ProcessPendingIoCommands+0xa39 (fffff802`5724e689)  Branch

stornvme!ProcessPendingIoCommands+0x6e6:
fffff802`5724e336 33db            xor     ebx,ebx
fffff802`5724e338 488d45f0        lea     rax,[rbp-10h]
fffff802`5724e33c 41b94e766d43    mov     r9d,436D764Eh
fffff802`5724e342 48895df0        mov     qword ptr [rbp-10h],rbx
fffff802`5724e346 488bd7          mov     rdx,rdi
fffff802`5724e349 66895c2478      mov     word ptr [rsp+78h],bx
fffff802`5724e34e 33c9            xor     ecx,ecx
fffff802`5724e350 66895c2470      mov     word ptr [rsp+70h],bx
fffff802`5724e355 448d4318        lea     r8d,[rbx+18h]
fffff802`5724e359 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`5724e35e 4c8b15335d0300  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5724e365 e816b602f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`5724e36a 85c0            test    eax,eax
fffff802`5724e36c 0f8512030000    jne     stornvme!ProcessPendingIoCommands+0xa34 (fffff802`5724e684)  Branch

stornvme!ProcessPendingIoCommands+0x722:
fffff802`5724e372 0fb75630        movzx   edx,word ptr [rsi+30h]
fffff802`5724e376 4c8d4c2470      lea     r9,[rsp+70h]
fffff802`5724e37b 4c8d442478      lea     r8,[rsp+78h]
fffff802`5724e380 488bcf          mov     rcx,rdi
fffff802`5724e383 e8f8060000      call    stornvme!AssignCommandId (fffff802`5724ea80)
fffff802`5724e388 84c0            test    al,al
fffff802`5724e38a 0f84dc020000    je      stornvme!ProcessPendingIoCommands+0xa1c (fffff802`5724e66c)  Branch

stornvme!ProcessPendingIoCommands+0x740:
fffff802`5724e390 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e394 0f57c0          xorps   xmm0,xmm0
fffff802`5724e397 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`5724e39c 440fb74c2470    movzx   r9d,word ptr [rsp+70h]
fffff802`5724e3a2 448b5530        mov     r10d,dword ptr [rbp+30h]
fffff802`5724e3a6 418bd1          mov     edx,r9d
fffff802`5724e3a9 48c1e205        shl     rdx,5
fffff802`5724e3ad 410fb64803      movzx   ecx,byte ptr [r8+3]
fffff802`5724e3b2 884803          mov     byte ptr [rax+3],cl
fffff802`5724e3b5 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e3b9 668918          mov     word ptr [rax],bx
fffff802`5724e3bc 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e3c0 885802          mov     byte ptr [rax+2],bl
fffff802`5724e3c3 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e3c7 895804          mov     dword ptr [rax+4],ebx
fffff802`5724e3ca 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e3ce 48895808        mov     qword ptr [rax+8],rbx
fffff802`5724e3d2 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e3d6 4c894010        mov     qword ptr [rax+10h],r8
fffff802`5724e3da 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff802`5724e3de 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e3e2 4889440a10      mov     qword ptr [rdx+rcx+10h],rax
fffff802`5724e3e7 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e3eb 0fb74c2478      movzx   ecx,word ptr [rsp+78h]
fffff802`5724e3f0 66894c0218      mov     word ptr [rdx+rax+18h],cx
fffff802`5724e3f5 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e3f9 4489540204      mov     dword ptr [rdx+rax+4],r10d
fffff802`5724e3fe 8bd1            mov     edx,ecx
fffff802`5724e400 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724e404 4803d2          add     rdx,rdx
fffff802`5724e407 410fb65803      movzx   ebx,byte ptr [r8+3]
fffff802`5724e40c 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`5724e411 c1e308          shl     ebx,8
fffff802`5724e414 488b0cd0        mov     rcx,qword ptr [rax+rdx*8]
fffff802`5724e418 81cbc8000000    or      ebx,0C8h
fffff802`5724e41e 0f1101          movups  xmmword ptr [rcx],xmm0
fffff802`5724e421 0f114110        movups  xmmword ptr [rcx+10h],xmm0
fffff802`5724e425 0f114120        movups  xmmword ptr [rcx+20h],xmm0
fffff802`5724e429 0f114130        movups  xmmword ptr [rcx+30h],xmm0
fffff802`5724e42d 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724e431 488b0cd0        mov     rcx,qword ptr [rax+rdx*8]
fffff802`5724e435 6644894902      mov     word ptr [rcx+2],r9w
fffff802`5724e43a 418b4804        mov     ecx,dword ptr [r8+4]
fffff802`5724e43e 418b4210        mov     eax,dword ptr [r10+10h]
fffff802`5724e442 498b5208        mov     rdx,qword ptr [r10+8]
fffff802`5724e446 2bc1            sub     eax,ecx
fffff802`5724e448 448b9fd0000000  mov     r11d,dword ptr [rdi+0D0h]
fffff802`5724e44f 4803c2          add     rax,rdx
fffff802`5724e452 488945c0        mov     qword ptr [rbp-40h],rax
fffff802`5724e456 b800002000      mov     eax,200000h
fffff802`5724e45b 3bc8            cmp     ecx,eax
fffff802`5724e45d 48895518        mov     qword ptr [rbp+18h],rdx
fffff802`5724e461 0f47c8          cmova   ecx,eax
fffff802`5724e464 8b4720          mov     eax,dword ptr [rdi+20h]
fffff802`5724e467 413bcb          cmp     ecx,r11d
fffff802`5724e46a 440f46d9        cmovbe  r11d,ecx
fffff802`5724e46e 44895c2444      mov     dword ptr [rsp+44h],r11d
fffff802`5724e473 85c0            test    eax,eax
fffff802`5724e475 0f85e2040000    jne     stornvme!ProcessPendingIoCommands+0xd0d (fffff802`5724e95d)  Branch

stornvme!ProcessPendingIoCommands+0x82b:
fffff802`5724e47b 448b4df8        mov     r9d,dword ptr [rbp-8]
fffff802`5724e47f 4585c9          test    r9d,r9d
fffff802`5724e482 0f85e6040000    jne     stornvme!ProcessPendingIoCommands+0xd1e (fffff802`5724e96e)  Branch

stornvme!ProcessPendingIoCommands+0x838:
fffff802`5724e488 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff802`5724e48c 4533c9          xor     r9d,r9d
fffff802`5724e48f 48894500        mov     qword ptr [rbp],rax
fffff802`5724e493 4c894de8        mov     qword ptr [rbp-18h],r9
fffff802`5724e497 4c894d18        mov     qword ptr [rbp+18h],r9
fffff802`5724e49b 4c894dc8        mov     qword ptr [rbp-38h],r9
fffff802`5724e49f 4885c0          test    rax,rax
fffff802`5724e4a2 0f847e010000    je      stornvme!ProcessPendingIoCommands+0x9d6 (fffff802`5724e626)  Branch

stornvme!ProcessPendingIoCommands+0x858:
fffff802`5724e4a8 4d394a20        cmp     qword ptr [r10+20h],r9
fffff802`5724e4ac 0f8474010000    je      stornvme!ProcessPendingIoCommands+0x9d6 (fffff802`5724e626)  Branch

stornvme!ProcessPendingIoCommands+0x862:
fffff802`5724e4b2 45394a28        cmp     dword ptr [r10+28h],r9d
fffff802`5724e4b6 0f846a010000    je      stornvme!ProcessPendingIoCommands+0x9d6 (fffff802`5724e626)  Branch

stornvme!ProcessPendingIoCommands+0x86c:
fffff802`5724e4bc 4585db          test    r11d,r11d
fffff802`5724e4bf 0f8461010000    je      stornvme!ProcessPendingIoCommands+0x9d6 (fffff802`5724e626)  Branch

stornvme!ProcessPendingIoCommands+0x875:
fffff802`5724e4c5 418b4a2c        mov     ecx,dword ptr [r10+2Ch]
fffff802`5724e4c9 418bc3          mov     eax,r11d
fffff802`5724e4cc 2bca            sub     ecx,edx
fffff802`5724e4ce 4c894d90        mov     qword ptr [rbp-70h],r9
fffff802`5724e4d2 034dc0          add     ecx,dword ptr [rbp-40h]
fffff802`5724e4d5 25ff0f0000      and     eax,0FFFh
fffff802`5724e4da 81e1ff0f0000    and     ecx,0FFFh
fffff802`5724e4e0 05ff0f0000      add     eax,0FFFh
fffff802`5724e4e5 03c8            add     ecx,eax
fffff802`5724e4e7 418bc3          mov     eax,r11d
fffff802`5724e4ea c1e80c          shr     eax,0Ch
fffff802`5724e4ed c1e90c          shr     ecx,0Ch
fffff802`5724e4f0 03c8            add     ecx,eax
fffff802`5724e4f2 894c2440        mov     dword ptr [rsp+40h],ecx
fffff802`5724e4f6 83f902          cmp     ecx,2
fffff802`5724e4f9 0f8681000000    jbe     stornvme!ProcessPendingIoCommands+0x930 (fffff802`5724e580)  Branch

stornvme!ProcessPendingIoCommands+0x8af:
fffff802`5724e4ff 488b96b0000000  mov     rdx,qword ptr [rsi+0B0h]
fffff802`5724e506 4885d2          test    rdx,rdx
fffff802`5724e509 0f8499040000    je      stornvme!ProcessPendingIoCommands+0xd58 (fffff802`5724e9a8)  Branch

stornvme!ProcessPendingIoCommands+0x8bf:
fffff802`5724e50f 488955e8        mov     qword ptr [rbp-18h],rdx
fffff802`5724e513 488b4218        mov     rax,qword ptr [rdx+18h]
fffff802`5724e517 488986b0000000  mov     qword ptr [rsi+0B0h],rax
fffff802`5724e51e 4c894a18        mov     qword ptr [rdx+18h],r9

stornvme!ProcessPendingIoCommands+0x8d2:
fffff802`5724e522 4c8b4de8        mov     r9,qword ptr [rbp-18h]
fffff802`5724e526 418b5110        mov     edx,dword ptr [r9+10h]
fffff802`5724e52a 8d42ff          lea     eax,[rdx-1]
fffff802`5724e52d 3dfe010000      cmp     eax,1FEh
fffff802`5724e532 0f869f040000    jbe     stornvme!ProcessPendingIoCommands+0xd87 (fffff802`5724e9d7)  Branch

stornvme!ProcessPendingIoCommands+0x8e8:
fffff802`5724e538 498b09          mov     rcx,qword ptr [r9]
fffff802`5724e53b 41b800100000    mov     r8d,1000h

stornvme!ProcessPendingIoCommands+0x8f1:
fffff802`5724e541 33d2            xor     edx,edx
fffff802`5724e543 e8780a0200      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`5724e548 8b4c2440        mov     ecx,dword ptr [rsp+40h]
fffff802`5724e54c 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`5724e551 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`5724e556 4c8b4de8        mov     r9,qword ptr [rbp-18h]

stornvme!ProcessPendingIoCommands+0x90a:
fffff802`5724e55a 8d41ff          lea     eax,[rcx-1]
fffff802`5724e55d 488b4d00        mov     rcx,qword ptr [rbp]
fffff802`5724e561 41894110        mov     dword ptr [r9+10h],eax
fffff802`5724e565 488b45e8        mov     rax,qword ptr [rbp-18h]
fffff802`5724e569 48894108        mov     qword ptr [rcx+8],rax
fffff802`5724e56d 488b08          mov     rcx,qword ptr [rax]
fffff802`5724e570 4883c008        add     rax,8
fffff802`5724e574 488945c8        mov     qword ptr [rbp-38h],rax
fffff802`5724e578 48894d90        mov     qword ptr [rbp-70h],rcx
fffff802`5724e57c 48894d18        mov     qword ptr [rbp+18h],rcx

stornvme!ProcessPendingIoCommands+0x930:
fffff802`5724e580 488b45c0        mov     rax,qword ptr [rbp-40h]
fffff802`5724e584 418b522c        mov     edx,dword ptr [r10+2Ch]
fffff802`5724e588 412b5208        sub     edx,dword ptr [r10+8]
fffff802`5724e58c 0fb74c2478      movzx   ecx,word ptr [rsp+78h]
fffff802`5724e591 03d0            add     edx,eax
fffff802`5724e593 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724e597 4803c9          add     rcx,rcx
fffff802`5724e59a 448b4c2444      mov     r9d,dword ptr [rsp+44h]
fffff802`5724e59f 448bda          mov     r11d,edx
fffff802`5724e5a2 4d8b6220        mov     r12,qword ptr [r10+20h]
fffff802`5724e5a6 4181e1ff0f0000  and     r9d,0FFFh
fffff802`5724e5ad 458b6a28        mov     r13d,dword ptr [r10+28h]
fffff802`5724e5b1 4181c1ff0f0000  add     r9d,0FFFh
fffff802`5724e5b8 488b04c8        mov     rax,qword ptr [rax+rcx*8]
fffff802`5724e5bc 4181e3ff0f0000  and     r11d,0FFFh
fffff802`5724e5c3 4503cb          add     r9d,r11d
fffff802`5724e5c6 488945a8        mov     qword ptr [rbp-58h],rax
fffff802`5724e5ca 8b442444        mov     eax,dword ptr [rsp+44h]
fffff802`5724e5ce 8bca            mov     ecx,edx
fffff802`5724e5d0 c1e80c          shr     eax,0Ch
fffff802`5724e5d3 41c1e90c        shr     r9d,0Ch
fffff802`5724e5d7 4403c8          add     r9d,eax
fffff802`5724e5da c1e90c          shr     ecx,0Ch
fffff802`5724e5dd 81fa00100000    cmp     edx,1000h
fffff802`5724e5e3 4c8965b0        mov     qword ptr [rbp-50h],r12
fffff802`5724e5e7 b800000000      mov     eax,0
fffff802`5724e5ec 44894c2468      mov     dword ptr [rsp+68h],r9d
fffff802`5724e5f1 0f42c8          cmovb   ecx,eax
fffff802`5724e5f4 440f42da        cmovb   r11d,edx
fffff802`5724e5f8 894c2440        mov     dword ptr [rsp+40h],ecx
fffff802`5724e5fc 4585c9          test    r9d,r9d
fffff802`5724e5ff 0f85f6030000    jne     stornvme!ProcessPendingIoCommands+0xdab (fffff802`5724e9fb)  Branch

stornvme!ProcessPendingIoCommands+0x9b5:
fffff802`5724e605 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff802`5724e609 b8010000c1      mov     eax,0C1000001h
fffff802`5724e60e 4c8b6da0        mov     r13,qword ptr [rbp-60h]
fffff802`5724e612 4533c9          xor     r9d,r9d
fffff802`5724e615 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`5724e619 48894c2458      mov     qword ptr [rsp+58h],rcx

stornvme!ProcessPendingIoCommands+0x9ce:
fffff802`5724e61e 85c0            test    eax,eax
fffff802`5724e620 0f8400040000    je      stornvme!ProcessPendingIoCommands+0xdd6 (fffff802`5724ea26)  Branch

stornvme!ProcessPendingIoCommands+0x9d6:
fffff802`5724e626 440fb7442470    movzx   r8d,word ptr [rsp+70h]
fffff802`5724e62c ba34000000      mov     edx,34h
fffff802`5724e631 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e635 418bc8          mov     ecx,r8d
fffff802`5724e638 48c1e105        shl     rcx,5
fffff802`5724e63c 44890c01        mov     dword ptr [rcx+rax],r9d
fffff802`5724e640 418bc8          mov     ecx,r8d
fffff802`5724e643 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e647 48c1e105        shl     rcx,5
fffff802`5724e64b 4c894c0110      mov     qword ptr [rcx+rax+10h],r9
fffff802`5724e650 488bce          mov     rcx,rsi
fffff802`5724e653 0fb74634        movzx   eax,word ptr [rsi+34h]
fffff802`5724e657 6644894638      mov     word ptr [rsi+38h],r8w
fffff802`5724e65c 6685c0          test    ax,ax
fffff802`5724e65f 0f84ef030000    je      stornvme!ProcessPendingIoCommands+0xe04 (fffff802`5724ea54)  Branch

stornvme!ProcessPendingIoCommands+0xa15:
fffff802`5724e665 66ffc8          dec     ax
fffff802`5724e668 66890411        mov     word ptr [rcx+rdx],ax

stornvme!ProcessPendingIoCommands+0xa1c:
fffff802`5724e66c 4c8b45f0        mov     r8,qword ptr [rbp-10h]
fffff802`5724e670 488bd7          mov     rdx,rdi
fffff802`5724e673 b901000000      mov     ecx,1
fffff802`5724e678 4c8b15195a0300  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5724e67f e8fcb202f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)

stornvme!ProcessPendingIoCommands+0xa34:
fffff802`5724e684 488b442458      mov     rax,qword ptr [rsp+58h]

stornvme!ProcessPendingIoCommands+0xa39:
fffff802`5724e689 49837d0000      cmp     qword ptr [r13],0
fffff802`5724e68e 488b5d08        mov     rbx,qword ptr [rbp+8]
fffff802`5724e692 0f85a8f7ffff    jne     stornvme!ProcessPendingIoCommands+0x1f0 (fffff802`5724de40)  Branch

stornvme!ProcessPendingIoCommands+0xa48:
fffff802`5724e698 4585ff          test    r15d,r15d
fffff802`5724e69b 0f84b9f6ffff    je      stornvme!ProcessPendingIoCommands+0x10a (fffff802`5724dd5a)  Branch

stornvme!ProcessPendingIoCommands+0xa51:
fffff802`5724e6a1 410fb7c6        movzx   eax,r14w
fffff802`5724e6a5 4533f6          xor     r14d,r14d
fffff802`5724e6a8 ffc0            inc     eax
fffff802`5724e6aa 418bd6          mov     edx,r14d
fffff802`5724e6ad 0fb7c8          movzx   ecx,ax
fffff802`5724e6b0 0fb78746010000  movzx   eax,word ptr [rdi+146h]
fffff802`5724e6b7 3bc8            cmp     ecx,eax
fffff802`5724e6b9 488b4610        mov     rax,qword ptr [rsi+10h]
fffff802`5724e6bd 0f45d1          cmovne  edx,ecx
fffff802`5724e6c0 8910            mov     dword ptr [rax],edx
fffff802`5724e6c2 f044093424      lock or dword ptr [rsp],r14d
fffff802`5724e6c7 8b476c          mov     eax,dword ptr [rdi+6Ch]
fffff802`5724e6ca a802            test    al,2
fffff802`5724e6cc 0f8488f6ffff    je      stornvme!ProcessPendingIoCommands+0x10a (fffff802`5724dd5a)  Branch

stornvme!ProcessPendingIoCommands+0xa82:
fffff802`5724e6d2 e9c5520200      jmp     stornvme!ProcessPendingIoCommands+0x25d4c (fffff802`5727399c)  Branch

stornvme!ProcessPendingIoCommands+0xa87:
fffff802`5724e6d7 440fb744247c    movzx   r8d,word ptr [rsp+7Ch]
fffff802`5724e6dd ba34000000      mov     edx,34h
fffff802`5724e6e2 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e6e6 418bc8          mov     ecx,r8d
fffff802`5724e6e9 48c1e105        shl     rcx,5
fffff802`5724e6ed 44890c01        mov     dword ptr [rcx+rax],r9d
fffff802`5724e6f1 418bc8          mov     ecx,r8d
fffff802`5724e6f4 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`5724e6f8 48c1e105        shl     rcx,5
fffff802`5724e6fc 4c894c0110      mov     qword ptr [rcx+rax+10h],r9
fffff802`5724e701 488bce          mov     rcx,rsi
fffff802`5724e704 0fb74634        movzx   eax,word ptr [rsi+34h]
fffff802`5724e708 6644894638      mov     word ptr [rsi+38h],r8w
fffff802`5724e70d 6685c0          test    ax,ax
fffff802`5724e710 0f844a030000    je      stornvme!ProcessPendingIoCommands+0xe10 (fffff802`5724ea60)  Branch

stornvme!ProcessPendingIoCommands+0xac6:
fffff802`5724e716 66ffc8          dec     ax
fffff802`5724e719 4c8d4568        lea     r8,[rbp+68h]
fffff802`5724e71d 6689040a        mov     word ptr [rdx+rcx],ax
fffff802`5724e721 488bd7          mov     rdx,rdi
fffff802`5724e724 b904100000      mov     ecx,1004h
fffff802`5724e729 4c8b1580590300  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`5724e730 e82b6402f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`5724e735 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`5724e73a 41b926000000    mov     r9d,26h
fffff802`5724e740 488bd7          mov     rdx,rdi
fffff802`5724e743 b900200000      mov     ecx,2000h
fffff802`5724e748 4c8b1561590300  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`5724e74f e80c6402f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`5724e754 4c8b4c2458      mov     r9,qword ptr [rsp+58h]
fffff802`5724e759 488d4568        lea     rax,[rbp+68h]
fffff802`5724e75d 41b801000000    mov     r8d,1
fffff802`5724e763 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`5724e768 488bd7          mov     rdx,rdi
fffff802`5724e76b 418d485c        lea     ecx,[r8+5Ch]
fffff802`5724e76f 4c8b1522590300  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5724e776 e805b202f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`5724e77b e904ffffff      jmp     stornvme!ProcessPendingIoCommands+0xa34 (fffff802`5724e684)  Branch

stornvme!ProcessPendingIoCommands+0xb30:
fffff802`5724e780 895510          mov     dword ptr [rbp+10h],edx
fffff802`5724e783 e970f7ffff      jmp     stornvme!ProcessPendingIoCommands+0x2a8 (fffff802`5724def8)  Branch

stornvme!ProcessPendingIoCommands+0xb38:
fffff802`5724e788 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff802`5724e78c 3c04            cmp     al,4
fffff802`5724e78e 0f831e440200    jae     stornvme!ProcessPendingIoCommands+0x24f62 (fffff802`57272bb2)  Branch

stornvme!ProcessPendingIoCommands+0xb44:
fffff802`5724e794 fec0            inc     al
fffff802`5724e796 4533f6          xor     r14d,r14d
fffff802`5724e799 884302          mov     byte ptr [rbx+2],al
fffff802`5724e79c 4c897308        mov     qword ptr [rbx+8],r14
fffff802`5724e7a0 8b87a4100000    mov     eax,dword ptr [rdi+10A4h]
fffff802`5724e7a6 894310          mov     dword ptr [rbx+10h],eax
fffff802`5724e7a9 4c39b6a0000000  cmp     qword ptr [rsi+0A0h],r14
fffff802`5724e7b0 0f84d0430200    je      stornvme!ProcessPendingIoCommands+0x24f36 (fffff802`57272b86)  Branch

stornvme!ProcessPendingIoCommands+0xb66:
fffff802`5724e7b6 488b86a8000000  mov     rax,qword ptr [rsi+0A8h]
fffff802`5724e7bd 48895808        mov     qword ptr [rax+8],rbx
fffff802`5724e7c1 e9c7430200      jmp     stornvme!ProcessPendingIoCommands+0x24f3d (fffff802`57272b8d)  Branch

stornvme!ProcessPendingIoCommands+0xb76:
fffff802`5724e7c6 450fb7f7        movzx   r14d,r15w
fffff802`5724e7ca 488d4640        lea     rax,[rsi+40h]
fffff802`5724e7ce e96df6ffff      jmp     stornvme!ProcessPendingIoCommands+0x1f0 (fffff802`5724de40)  Branch

stornvme!ProcessPendingIoCommands+0xb83:
fffff802`5724e7d3 48899698000000  mov     qword ptr [rsi+98h],rdx
fffff802`5724e7da e933f7ffff      jmp     stornvme!ProcessPendingIoCommands+0x2c2 (fffff802`5724df12)  Branch

stornvme!ProcessPendingIoCommands+0xb8f:
fffff802`5724e7df 488b4d50        mov     rcx,qword ptr [rbp+50h]
fffff802`5724e7e3 4885c9          test    rcx,rcx
fffff802`5724e7e6 0f8438f7ffff    je      stornvme!ProcessPendingIoCommands+0x2d4 (fffff802`5724df24)  Branch

stornvme!ProcessPendingIoCommands+0xb9c:
fffff802`5724e7ec 4c8bd9          mov     r11,rcx
fffff802`5724e7ef 48894c2460      mov     qword ptr [rsp+60h],rcx
fffff802`5724e7f4 e989f7ffff      jmp     stornvme!ProcessPendingIoCommands+0x332 (fffff802`5724df82)  Branch

stornvme!ProcessPendingIoCommands+0xba9:
fffff802`5724e7f9 49837b0800      cmp     qword ptr [r11+8],0
fffff802`5724e7fe 0f8489f7ffff    je      stornvme!ProcessPendingIoCommands+0x33d (fffff802`5724df8d)  Branch

stornvme!ProcessPendingIoCommands+0xbb4:
fffff802`5724e804 4101432c        add     dword ptr [r11+2Ch],eax
fffff802`5724e808 410fb64203      movzx   eax,byte ptr [r10+3]
fffff802`5724e80d 488b8cc778060000 mov     rcx,qword ptr [rdi+rax*8+678h]
fffff802`5724e815 8b5134          mov     edx,dword ptr [rcx+34h]
fffff802`5724e818 8b4f78          mov     ecx,dword ptr [rdi+78h]
fffff802`5724e81b ffc9            dec     ecx
fffff802`5724e81d 03ca            add     ecx,edx
fffff802`5724e81f f7da            neg     edx
fffff802`5724e821 23ca            and     ecx,edx
fffff802`5724e823 41294b10        sub     dword ptr [r11+10h],ecx
fffff802`5724e827 e961f7ffff      jmp     stornvme!ProcessPendingIoCommands+0x33d (fffff802`5724df8d)  Branch

stornvme!ProcessPendingIoCommands+0xbdc:
fffff802`5724e82c 443bc0          cmp     r8d,eax
fffff802`5724e82f 440f47c0        cmova   r8d,eax
fffff802`5724e833 4489442468      mov     dword ptr [rsp+68h],r8d
fffff802`5724e838 e9f1f7ffff      jmp     stornvme!ProcessPendingIoCommands+0x3de (fffff802`5724e02e)  Branch

stornvme!ProcessPendingIoCommands+0xbed:
fffff802`5724e83d 8b4f34          mov     ecx,dword ptr [rdi+34h]
fffff802`5724e840 413bc9          cmp     ecx,r9d
fffff802`5724e843 0f820ef8ffff    jb      stornvme!ProcessPendingIoCommands+0x407 (fffff802`5724e057)  Branch

stornvme!ProcessPendingIoCommands+0xbf9:
fffff802`5724e849 33d2            xor     edx,edx
fffff802`5724e84b 8bc1            mov     eax,ecx
fffff802`5724e84d 41f7f1          div     eax,r9d
fffff802`5724e850 85d2            test    edx,edx
fffff802`5724e852 0f85fff7ffff    jne     stornvme!ProcessPendingIoCommands+0x407 (fffff802`5724e057)  Branch

stornvme!ProcessPendingIoCommands+0xc08:
fffff802`5724e858 8bc1            mov     eax,ecx
fffff802`5724e85a e9edf7ffff      jmp     stornvme!ProcessPendingIoCommands+0x3fc (fffff802`5724e04c)  Branch

stornvme!ProcessPendingIoCommands+0xc0f:
fffff802`5724e85f 448bc0          mov     r8d,eax
fffff802`5724e862 488b45a0        mov     rax,qword ptr [rbp-60h]
fffff802`5724e866 4899            cqo
fffff802`5724e868 49f7f8          idiv    rax,r8
fffff802`5724e86b 488bc8          mov     rcx,rax
fffff802`5724e86e 4c8bca          mov     r9,rdx
fffff802`5724e871 8b442468        mov     eax,dword ptr [rsp+68h]
fffff802`5724e875 480345a0        add     rax,qword ptr [rbp-60h]
fffff802`5724e879 4899            cqo
fffff802`5724e87b 49f7f8          idiv    rax,r8
fffff802`5724e87e 483bc8          cmp     rcx,rax
fffff802`5724e881 0f8466430200    je      stornvme!ProcessPendingIoCommands+0x24f9d (fffff802`57272bed)  Branch

stornvme!ProcessPendingIoCommands+0xc37:
fffff802`5724e887 448b45f8        mov     r8d,dword ptr [rbp-8]
fffff802`5724e88b 452bc1          sub     r8d,r9d
fffff802`5724e88e 4489442468      mov     dword ptr [rsp+68h],r8d
fffff802`5724e893 e9bff7ffff      jmp     stornvme!ProcessPendingIoCommands+0x407 (fffff802`5724e057)  Branch

stornvme!ProcessPendingIoCommands+0xc48:
fffff802`5724e898 4c398eb8000000  cmp     qword ptr [rsi+0B8h],r9
fffff802`5724e89f 0f8452430200    je      stornvme!ProcessPendingIoCommands+0x24fa7 (fffff802`57272bf7)  Branch

stornvme!ProcessPendingIoCommands+0xc55:
fffff802`5724e8a5 498bc9          mov     rcx,r9
fffff802`5724e8a8 48878eb8000000  xchg    rcx,qword ptr [rsi+0B8h]
fffff802`5724e8af 48894dd8        mov     qword ptr [rbp-28h],rcx
fffff802`5724e8b3 488b4118        mov     rax,qword ptr [rcx+18h]
fffff802`5724e8b7 488986b0000000  mov     qword ptr [rsi+0B0h],rax
fffff802`5724e8be 4c894918        mov     qword ptr [rcx+18h],r9
fffff802`5724e8c2 e9fd430200      jmp     stornvme!ProcessPendingIoCommands+0x25074 (fffff802`57272cc4)  Branch

stornvme!ProcessPendingIoCommands+0xc77:
fffff802`5724e8c7 498b01          mov     rax,qword ptr [r9]
fffff802`5724e8ca 8d14d500000000  lea     edx,[rdx*8]
fffff802`5724e8d1 c1ea02          shr     edx,2
fffff802`5724e8d4 85d2            test    edx,edx
fffff802`5724e8d6 0f8447f8ffff    je      stornvme!ProcessPendingIoCommands+0x4d3 (fffff802`5724e123)  Branch

stornvme!ProcessPendingIoCommands+0xc8c:
fffff802`5724e8dc 448bc2          mov     r8d,edx
fffff802`5724e8df 488bc8          mov     rcx,rax
fffff802`5724e8e2 49c1e002        shl     r8,2
fffff802`5724e8e6 e91af8ffff      jmp     stornvme!ProcessPendingIoCommands+0x4b5 (fffff802`5724e105)  Branch

stornvme!ProcessPendingIoCommands+0xc9b:
fffff802`5724e8eb 438d0404        lea     eax,[r12+r8]
fffff802`5724e8ef 3b442440        cmp     eax,dword ptr [rsp+40h]
fffff802`5724e8f3 0f86d4430200    jbe     stornvme!ProcessPendingIoCommands+0x2507d (fffff802`57272ccd)  Branch

stornvme!ProcessPendingIoCommands+0xca9:
fffff802`5724e8f9 4c8b4d90        mov     r9,qword ptr [rbp-70h]
fffff802`5724e8fd b8010000c1      mov     eax,0C1000001h
fffff802`5724e902 4c8b6d98        mov     r13,qword ptr [rbp-68h]
fffff802`5724e906 33d2            xor     edx,edx
fffff802`5724e908 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`5724e90c 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`5724e911 e9d8f8ffff      jmp     stornvme!ProcessPendingIoCommands+0x59e (fffff802`5724e1ee)  Branch

stornvme!ProcessPendingIoCommands+0xcc6:
fffff802`5724e916 41c60101        mov     byte ptr [r9],1
fffff802`5724e91a 4d8bc3          mov     r8,r11
fffff802`5724e91d 458bce          mov     r9d,r14d
fffff802`5724e920 33d2            xor     edx,edx
fffff802`5724e922 488bcf          mov     rcx,rdi
fffff802`5724e925 e806090000      call    stornvme!GetStreamId (fffff802`5724f230)
fffff802`5724e92a 4c8b4da8        mov     r9,qword ptr [rbp-58h]
fffff802`5724e92e 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5724e933 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`5724e938 6685c0          test    ax,ax
fffff802`5724e93b 0f84f8f8ffff    je      stornvme!ProcessPendingIoCommands+0x5e9 (fffff802`5724e239)  Branch

stornvme!ProcessPendingIoCommands+0xcf1:
fffff802`5724e941 418b4930        mov     ecx,dword ptr [r9+30h]
fffff802`5724e945 81e1ffff1fff    and     ecx,0FF1FFFFFh
fffff802`5724e94b 6641894136      mov     word ptr [r9+36h],ax
fffff802`5724e950 0fbae914        bts     ecx,14h
fffff802`5724e954 41894930        mov     dword ptr [r9+30h],ecx
fffff802`5724e958 e9dcf8ffff      jmp     stornvme!ProcessPendingIoCommands+0x5e9 (fffff802`5724e239)  Branch

stornvme!ProcessPendingIoCommands+0xd0d:
fffff802`5724e95d 443bd8          cmp     r11d,eax
fffff802`5724e960 440f47d8        cmova   r11d,eax
fffff802`5724e964 44895c2444      mov     dword ptr [rsp+44h],r11d
fffff802`5724e969 e90dfbffff      jmp     stornvme!ProcessPendingIoCommands+0x82b (fffff802`5724e47b)  Branch

stornvme!ProcessPendingIoCommands+0xd1e:
fffff802`5724e96e 488b45c0        mov     rax,qword ptr [rbp-40h]
fffff802`5724e972 4899            cqo
fffff802`5724e974 49f7f9          idiv    rax,r9
fffff802`5724e977 488bc8          mov     rcx,rax
fffff802`5724e97a 48895500        mov     qword ptr [rbp],rdx
fffff802`5724e97e 418bc3          mov     eax,r11d
fffff802`5724e981 480345c0        add     rax,qword ptr [rbp-40h]
fffff802`5724e985 4899            cqo
fffff802`5724e987 49f7f9          idiv    rax,r9
fffff802`5724e98a 488b5518        mov     rdx,qword ptr [rbp+18h]
fffff802`5724e98e 483bc8          cmp     rcx,rax
fffff802`5724e991 0f84f1faffff    je      stornvme!ProcessPendingIoCommands+0x838 (fffff802`5724e488)  Branch

stornvme!ProcessPendingIoCommands+0xd47:
fffff802`5724e997 458bd9          mov     r11d,r9d
fffff802`5724e99a 442b5d00        sub     r11d,dword ptr [rbp]
fffff802`5724e99e 44895c2444      mov     dword ptr [rsp+44h],r11d
fffff802`5724e9a3 e9e0faffff      jmp     stornvme!ProcessPendingIoCommands+0x838 (fffff802`5724e488)  Branch

stornvme!ProcessPendingIoCommands+0xd58:
fffff802`5724e9a8 4c398eb8000000  cmp     qword ptr [rsi+0B8h],r9
fffff802`5724e9af 0f84274b0200    je      stornvme!ProcessPendingIoCommands+0x2588c (fffff802`572734dc)  Branch

stornvme!ProcessPendingIoCommands+0xd65:
fffff802`5724e9b5 498bc9          mov     rcx,r9
fffff802`5724e9b8 48878eb8000000  xchg    rcx,qword ptr [rsi+0B8h]
fffff802`5724e9bf 48894de8        mov     qword ptr [rbp-18h],rcx
fffff802`5724e9c3 488b4118        mov     rax,qword ptr [rcx+18h]
fffff802`5724e9c7 488986b0000000  mov     qword ptr [rsi+0B0h],rax
fffff802`5724e9ce 4c894918        mov     qword ptr [rcx+18h],r9
fffff802`5724e9d2 e9934b0200      jmp     stornvme!ProcessPendingIoCommands+0x2591a (fffff802`5727356a)  Branch

stornvme!ProcessPendingIoCommands+0xd87:
fffff802`5724e9d7 498b01          mov     rax,qword ptr [r9]
fffff802`5724e9da 8d14d500000000  lea     edx,[rdx*8]
fffff802`5724e9e1 c1ea02          shr     edx,2
fffff802`5724e9e4 85d2            test    edx,edx
fffff802`5724e9e6 0f846efbffff    je      stornvme!ProcessPendingIoCommands+0x90a (fffff802`5724e55a)  Branch

stornvme!ProcessPendingIoCommands+0xd9c:
fffff802`5724e9ec 448bc2          mov     r8d,edx
fffff802`5724e9ef 488bc8          mov     rcx,rax
fffff802`5724e9f2 49c1e002        shl     r8,2
fffff802`5724e9f6 e946fbffff      jmp     stornvme!ProcessPendingIoCommands+0x8f1 (fffff802`5724e541)  Branch

stornvme!ProcessPendingIoCommands+0xdab:
fffff802`5724e9fb 418d0409        lea     eax,[r9+rcx]
fffff802`5724e9ff 413bc5          cmp     eax,r13d
fffff802`5724ea02 4c8b6da0        mov     r13,qword ptr [rbp-60h]
fffff802`5724ea06 0f86674b0200    jbe     stornvme!ProcessPendingIoCommands+0x25923 (fffff802`57273573)  Branch

stornvme!ProcessPendingIoCommands+0xdbc:
fffff802`5724ea0c 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff802`5724ea10 b8010000c1      mov     eax,0C1000001h
fffff802`5724ea15 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`5724ea19 4533c9          xor     r9d,r9d
fffff802`5724ea1c 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff802`5724ea21 e9f8fbffff      jmp     stornvme!ProcessPendingIoCommands+0x9ce (fffff802`5724e61e)  Branch

stornvme!ProcessPendingIoCommands+0xdd6:
fffff802`5724ea26 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`5724ea2a 0fb74c2478      movzx   ecx,word ptr [rsp+78h]
fffff802`5724ea2f 450fb67003      movzx   r14d,byte ptr [r8+3]
fffff802`5724ea34 4803c9          add     rcx,rcx
fffff802`5724ea37 4c8b0cc8        mov     r9,qword ptr [rax+rcx*8]
fffff802`5724ea3b 418b4238        mov     eax,dword ptr [r10+38h]
fffff802`5724ea3f 4c894da8        mov     qword ptr [rbp-58h],r9
fffff802`5724ea43 a80f            test    al,0Fh
fffff802`5724ea45 0f85c64d0200    jne     stornvme!ProcessPendingIoCommands+0x25bc1 (fffff802`57273811)  Branch

stornvme!ProcessPendingIoCommands+0xdfb:
fffff802`5724ea4b 41c60102        mov     byte ptr [r9],2
fffff802`5724ea4f e9f64d0200      jmp     stornvme!ProcessPendingIoCommands+0x25bfa (fffff802`5727384a)  Branch

stornvme!ProcessPendingIoCommands+0xe04:
fffff802`5724ea54 0fb78746010000  movzx   eax,word ptr [rdi+146h]
fffff802`5724ea5b e905fcffff      jmp     stornvme!ProcessPendingIoCommands+0xa15 (fffff802`5724e665)  Branch

stornvme!ProcessPendingIoCommands+0xe10:
fffff802`5724ea60 0fb78746010000  movzx   eax,word ptr [rdi+146h]
fffff802`5724ea67 e9aafcffff      jmp     stornvme!ProcessPendingIoCommands+0xac6 (fffff802`5724e716)  Branch

stornvme!ProcessPendingIoCommands+0xe1c:
fffff802`5724ea6c 4533f6          xor     r14d,r14d
fffff802`5724ea6f e9774f0200      jmp     stornvme!ProcessPendingIoCommands+0x25d9b (fffff802`572739eb)  Branch

stornvme!ProcessPendingIoCommands+0x24f36:
fffff802`57272b86 48899ea0000000  mov     qword ptr [rsi+0A0h],rbx

stornvme!ProcessPendingIoCommands+0x24f3d:
fffff802`57272b8d 4c8d4568        lea     r8,[rbp+68h]
fffff802`57272b91 48899ea8000000  mov     qword ptr [rsi+0A8h],rbx
fffff802`57272b98 488bd7          mov     rdx,rdi
fffff802`57272b9b b904100000      mov     ecx,1004h
fffff802`57272ba0 4c8b1509150100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`57272ba7 e8b41f00f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`57272bac 90              nop
fffff802`57272bad e9ccb1fdff      jmp     stornvme!ProcessPendingIoCommands+0x12e (fffff802`5724dd7e)  Branch

stornvme!ProcessPendingIoCommands+0x24f62:
fffff802`57272bb2 4c8d4568        lea     r8,[rbp+68h]
fffff802`57272bb6 488bd7          mov     rdx,rdi
fffff802`57272bb9 b904100000      mov     ecx,1004h
fffff802`57272bbe 4c8b15eb140100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`57272bc5 e8961f00f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`57272bca 41b90e000000    mov     r9d,0Eh
fffff802`57272bd0 4c8bc3          mov     r8,rbx
fffff802`57272bd3 488bd7          mov     rdx,rdi
fffff802`57272bd6 b900200000      mov     ecx,2000h
fffff802`57272bdb 4c8b15ce140100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`57272be2 e8791f00f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`57272be7 90              nop
fffff802`57272be8 e98eb1fdff      jmp     stornvme!ProcessPendingIoCommands+0x12b (fffff802`5724dd7b)  Branch

stornvme!ProcessPendingIoCommands+0x24f9d:
fffff802`57272bed 448b442468      mov     r8d,dword ptr [rsp+68h]
fffff802`57272bf2 e960b4fdff      jmp     stornvme!ProcessPendingIoCommands+0x407 (fffff802`5724e057)  Branch

stornvme!ProcessPendingIoCommands+0x24fa7:
fffff802`57272bf7 488d4540        lea     rax,[rbp+40h]
fffff802`57272bfb 41b94e766d50    mov     r9d,506D764Eh
fffff802`57272c01 41b800100000    mov     r8d,1000h
fffff802`57272c07 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`57272c0c 488bd7          mov     rdx,rdi
fffff802`57272c0f 33c9            xor     ecx,ecx
fffff802`57272c11 4c8b1580140100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57272c18 e8636d00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57272c1d 85c0            test    eax,eax
fffff802`57272c1f 7411            je      stornvme!ProcessPendingIoCommands+0x24fe2 (fffff802`57272c32)  Branch

stornvme!ProcessPendingIoCommands+0x24fd1:
fffff802`57272c21 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272c26 33d2            xor     edx,edx
fffff802`57272c28 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272c2d e928030000      jmp     stornvme!ProcessPendingIoCommands+0x2530a (fffff802`57272f5a)  Branch

stornvme!ProcessPendingIoCommands+0x24fe2:
fffff802`57272c32 488d45d8        lea     rax,[rbp-28h]
fffff802`57272c36 41b94e766d50    mov     r9d,506D764Eh
fffff802`57272c3c 41b820000000    mov     r8d,20h
fffff802`57272c42 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`57272c47 488bd7          mov     rdx,rdi
fffff802`57272c4a 33c9            xor     ecx,ecx
fffff802`57272c4c 4c8b1545140100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57272c53 e8286d00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57272c58 89442440        mov     dword ptr [rsp+40h],eax
fffff802`57272c5c 85c0            test    eax,eax
fffff802`57272c5e 742d            je      stornvme!ProcessPendingIoCommands+0x2503d (fffff802`57272c8d)  Branch

stornvme!ProcessPendingIoCommands+0x25010:
fffff802`57272c60 4c8b4540        mov     r8,qword ptr [rbp+40h]
fffff802`57272c64 488bd7          mov     rdx,rdi
fffff802`57272c67 b901000000      mov     ecx,1
fffff802`57272c6c 4c8b1525140100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57272c73 e8086d00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57272c78 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272c7d 33d2            xor     edx,edx
fffff802`57272c7f 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272c84 8b442440        mov     eax,dword ptr [rsp+40h]
fffff802`57272c88 e9cd020000      jmp     stornvme!ProcessPendingIoCommands+0x2530a (fffff802`57272f5a)  Branch

stornvme!ProcessPendingIoCommands+0x2503d:
fffff802`57272c8d 488b4dd8        mov     rcx,qword ptr [rbp-28h]
fffff802`57272c91 488b4540        mov     rax,qword ptr [rbp+40h]
fffff802`57272c95 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272c9a 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272c9f 448b442468      mov     r8d,dword ptr [rsp+68h]
fffff802`57272ca4 488901          mov     qword ptr [rcx],rax
fffff802`57272ca7 33c9            xor     ecx,ecx
fffff802`57272ca9 488b45d8        mov     rax,qword ptr [rbp-28h]
fffff802`57272cad 48894808        mov     qword ptr [rax+8],rcx
fffff802`57272cb1 488b45d8        mov     rax,qword ptr [rbp-28h]
fffff802`57272cb5 c7401000020000  mov     dword ptr [rax+10h],200h
fffff802`57272cbc 488b45d8        mov     rax,qword ptr [rbp-28h]
fffff802`57272cc0 48894818        mov     qword ptr [rax+18h],rcx

stornvme!ProcessPendingIoCommands+0x25074:
fffff802`57272cc4 8b4c2444        mov     ecx,dword ptr [rsp+44h]
fffff802`57272cc8 e919b4fdff      jmp     stornvme!ProcessPendingIoCommands+0x496 (fffff802`5724e0e6)  Branch

stornvme!ProcessPendingIoCommands+0x2507d:
fffff802`57272ccd 4b8b4ce500      mov     rcx,qword ptr [r13+r12*8]
fffff802`57272cd2 488b55c8        mov     rdx,qword ptr [rbp-38h]
fffff802`57272cd6 4c8b6d98        mov     r13,qword ptr [rbp-68h]
fffff802`57272cda 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`57272cde 48c1e10c        shl     rcx,0Ch
fffff802`57272ce2 418bc1          mov     eax,r9d
fffff802`57272ce5 4c8b4d90        mov     r9,qword ptr [rbp-70h]
fffff802`57272ce9 4803c8          add     rcx,rax
fffff802`57272cec 48894a18        mov     qword ptr [rdx+18h],rcx
fffff802`57272cf0 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57272cf5 4183f801        cmp     r8d,1
fffff802`57272cf9 0f8457020000    je      stornvme!ProcessPendingIoCommands+0x25306 (fffff802`57272f56)  Branch

stornvme!ProcessPendingIoCommands+0x250af:
fffff802`57272cff 4183f802        cmp     r8d,2
fffff802`57272d03 7566            jne     stornvme!ProcessPendingIoCommands+0x2511b (fffff802`57272d6b)  Branch

stornvme!ProcessPendingIoCommands+0x250b5:
fffff802`57272d05 8b4c2444        mov     ecx,dword ptr [rsp+44h]
fffff802`57272d09 488b45c0        mov     rax,qword ptr [rbp-40h]
fffff802`57272d0d ffc1            inc     ecx
fffff802`57272d0f 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57272d14 488b04c8        mov     rax,qword ptr [rax+rcx*8]
fffff802`57272d18 48c1e00c        shl     rax,0Ch
fffff802`57272d1c 48894220        mov     qword ptr [rdx+20h],rax
fffff802`57272d20 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`57272d24 4885c0          test    rax,rax
fffff802`57272d27 0f8429020000    je      stornvme!ProcessPendingIoCommands+0x25306 (fffff802`57272f56)  Branch

stornvme!ProcessPendingIoCommands+0x250dd:
fffff802`57272d2d 48837db000      cmp     qword ptr [rbp-50h],0
fffff802`57272d32 751e            jne     stornvme!ProcessPendingIoCommands+0x25102 (fffff802`57272d52)  Branch

stornvme!ProcessPendingIoCommands+0x250e4:
fffff802`57272d34 33d2            xor     edx,edx
fffff802`57272d36 41b800100000    mov     r8d,1000h
fffff802`57272d3c 488bc8          mov     rcx,rax
fffff802`57272d3f e87cc2ffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`57272d44 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272d49 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272d4e 488b55c8        mov     rdx,qword ptr [rbp-38h]

stornvme!ProcessPendingIoCommands+0x25102:
fffff802`57272d52 488b4220        mov     rax,qword ptr [rdx+20h]
fffff802`57272d56 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff802`57272d5a 488901          mov     qword ptr [rcx],rax
fffff802`57272d5d 488b4590        mov     rax,qword ptr [rbp-70h]
fffff802`57272d61 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`57272d66 e9eb010000      jmp     stornvme!ProcessPendingIoCommands+0x25306 (fffff802`57272f56)  Branch

stornvme!ProcessPendingIoCommands+0x2511b:
fffff802`57272d6b 33c0            xor     eax,eax
fffff802`57272d6d 894560          mov     dword ptr [rbp+60h],eax
fffff802`57272d70 483945b0        cmp     qword ptr [rbp-50h],rax
fffff802`57272d74 7520            jne     stornvme!ProcessPendingIoCommands+0x25146 (fffff802`57272d96)  Branch

stornvme!ProcessPendingIoCommands+0x25126:
fffff802`57272d76 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff802`57272d7a 33d2            xor     edx,edx
fffff802`57272d7c 41b800100000    mov     r8d,1000h
fffff802`57272d82 e839c2ffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`57272d87 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272d8c 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272d91 448b442474      mov     r8d,dword ptr [rsp+74h]

stornvme!ProcessPendingIoCommands+0x25146:
fffff802`57272d96 488b5580        mov     rdx,qword ptr [rbp-80h]
fffff802`57272d9a 458d48ff        lea     r9d,[r8-1]
fffff802`57272d9e 488b4590        mov     rax,qword ptr [rbp-70h]
fffff802`57272da2 b901000000      mov     ecx,1
fffff802`57272da7 488955a8        mov     qword ptr [rbp-58h],rdx
fffff802`57272dab 894c2448        mov     dword ptr [rsp+48h],ecx
fffff802`57272daf 44894c2440      mov     dword ptr [rsp+40h],r9d
fffff802`57272db4 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`57272db9 443bc1          cmp     r8d,ecx
fffff802`57272dbc 0f864d010000    jbe     stornvme!ProcessPendingIoCommands+0x252bf (fffff802`57272f0f)  Branch

stornvme!ProcessPendingIoCommands+0x25172:
fffff802`57272dc2 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`57272dc7 4183f908        cmp     r9d,8
fffff802`57272dcb 0f8204010000    jb      stornvme!ProcessPendingIoCommands+0x25285 (fffff802`57272ed5)  Branch

stornvme!ProcessPendingIoCommands+0x25181:
fffff802`57272dd1 4a8d04ca        lea     rax,[rdx+r9*8]
fffff802`57272dd5 894c2448        mov     dword ptr [rsp+48h],ecx
fffff802`57272dd9 448b4c2444      mov     r9d,dword ptr [rsp+44h]
fffff802`57272dde 488b55c0        mov     rdx,qword ptr [rbp-40h]
fffff802`57272de2 48894500        mov     qword ptr [rbp],rax
fffff802`57272de6 418d4101        lea     eax,[r9+1]
fffff802`57272dea 488d04c2        lea     rax,[rdx+rax*8]
fffff802`57272dee 48894538        mov     qword ptr [rbp+38h],rax
fffff802`57272df2 8b442440        mov     eax,dword ptr [rsp+40h]
fffff802`57272df6 4103c1          add     eax,r9d
fffff802`57272df9 488d14c2        lea     rdx,[rdx+rax*8]
fffff802`57272dfd 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`57272e01 4883c008        add     rax,8
fffff802`57272e05 483bc2          cmp     rax,rdx
fffff802`57272e08 7717            ja      stornvme!ProcessPendingIoCommands+0x251d1 (fffff802`57272e21)  Branch

stornvme!ProcessPendingIoCommands+0x251ba:
fffff802`57272e0a 488b4590        mov     rax,qword ptr [rbp-70h]
fffff802`57272e0e 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`57272e13 488b4538        mov     rax,qword ptr [rbp+38h]
fffff802`57272e17 48394500        cmp     qword ptr [rbp],rax
fffff802`57272e1b 0f83b9000000    jae     stornvme!ProcessPendingIoCommands+0x2528a (fffff802`57272eda)  Branch

stornvme!ProcessPendingIoCommands+0x251d1:
fffff802`57272e21 8b442440        mov     eax,dword ptr [rsp+40h]
fffff802`57272e25 418bc8          mov     ecx,r8d
fffff802`57272e28 83e007          and     eax,7
fffff802`57272e2b 2bc8            sub     ecx,eax
fffff802`57272e2d 488b4590        mov     rax,qword ptr [rbp-70h]
fffff802`57272e31 458d4105        lea     r8d,[r9+5]
fffff802`57272e35 4c8b6d98        mov     r13,qword ptr [rbp-68h]
fffff802`57272e39 448bc9          mov     r9d,ecx
fffff802`57272e3c 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`57272e40 488b55c0        mov     rdx,qword ptr [rbp-40h]
fffff802`57272e44 4c8b5da8        mov     r11,qword ptr [rbp-58h]
fffff802`57272e48 448b542448      mov     r10d,dword ptr [rsp+48h]
fffff802`57272e4d 4889442458      mov     qword ptr [rsp+58h],rax

stornvme!ProcessPendingIoCommands+0x25202:
fffff802`57272e52 418d40fc        lea     eax,[r8-4]
fffff802`57272e56 4183c208        add     r10d,8
fffff802`57272e5a f30f6f04c2      movdqu  xmm0,xmmword ptr [rdx+rax*8]
fffff802`57272e5f 418d40fe        lea     eax,[r8-2]
fffff802`57272e63 418bca          mov     ecx,r10d
fffff802`57272e66 660f73f00c      psllq   xmm0,0Ch
fffff802`57272e6b f3410f7f03      movdqu  xmmword ptr [r11],xmm0
fffff802`57272e70 f30f6f04c2      movdqu  xmm0,xmmword ptr [rdx+rax*8]
fffff802`57272e75 418d4002        lea     eax,[r8+2]
fffff802`57272e79 660f73f00c      psllq   xmm0,0Ch
fffff802`57272e7e f3410f7f4310    movdqu  xmmword ptr [r11+10h],xmm0
fffff802`57272e84 f3420f6f04c2    movdqu  xmm0,xmmword ptr [rdx+r8*8]
fffff802`57272e8a 458d4008        lea     r8d,[r8+8]
fffff802`57272e8e 660f73f00c      psllq   xmm0,0Ch
fffff802`57272e93 f3410f7f4320    movdqu  xmmword ptr [r11+20h],xmm0
fffff802`57272e99 f30f6f04c2      movdqu  xmm0,xmmword ptr [rdx+rax*8]
fffff802`57272e9e 660f73f00c      psllq   xmm0,0Ch
fffff802`57272ea3 f3410f7f4330    movdqu  xmmword ptr [r11+30h],xmm0
fffff802`57272ea9 4983c340        add     r11,40h
fffff802`57272ead 453bd1          cmp     r10d,r9d
fffff802`57272eb0 72a0            jb      stornvme!ProcessPendingIoCommands+0x25202 (fffff802`57272e52)  Branch

stornvme!ProcessPendingIoCommands+0x25262:
fffff802`57272eb2 448b442474      mov     r8d,dword ptr [rsp+74h]
fffff802`57272eb7 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272ebc 448b4c2444      mov     r9d,dword ptr [rsp+44h]
fffff802`57272ec1 4c895da8        mov     qword ptr [rbp-58h],r11
fffff802`57272ec5 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272eca 894c2448        mov     dword ptr [rsp+48h],ecx
fffff802`57272ece 413bc8          cmp     ecx,r8d
fffff802`57272ed1 7207            jb      stornvme!ProcessPendingIoCommands+0x2528a (fffff802`57272eda)  Branch

stornvme!ProcessPendingIoCommands+0x25283:
fffff802`57272ed3 eb36            jmp     stornvme!ProcessPendingIoCommands+0x252bb (fffff802`57272f0b)  Branch

stornvme!ProcessPendingIoCommands+0x25285:
fffff802`57272ed5 448b4c2444      mov     r9d,dword ptr [rsp+44h]

stornvme!ProcessPendingIoCommands+0x2528a:
fffff802`57272eda 4c8b55c0        mov     r10,qword ptr [rbp-40h]
fffff802`57272ede 4c8b5da8        mov     r11,qword ptr [rbp-58h]
fffff802`57272ee2 8b542448        mov     edx,dword ptr [rsp+48h]

stornvme!ProcessPendingIoCommands+0x25296:
fffff802`57272ee6 418d0411        lea     eax,[r9+rdx]
fffff802`57272eea ffc2            inc     edx
fffff802`57272eec 498b04c2        mov     rax,qword ptr [r10+rax*8]
fffff802`57272ef0 4d8d5b08        lea     r11,[r11+8]
fffff802`57272ef4 48c1e00c        shl     rax,0Ch
fffff802`57272ef8 498943f8        mov     qword ptr [r11-8],rax
fffff802`57272efc 413bd0          cmp     edx,r8d
fffff802`57272eff 72e5            jb      stornvme!ProcessPendingIoCommands+0x25296 (fffff802`57272ee6)  Branch

stornvme!ProcessPendingIoCommands+0x252b1:
fffff802`57272f01 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272f06 4c8b5c2460      mov     r11,qword ptr [rsp+60h]

stornvme!ProcessPendingIoCommands+0x252bb:
fffff802`57272f0b 488b5580        mov     rdx,qword ptr [rbp-80h]

stornvme!ProcessPendingIoCommands+0x252bf:
fffff802`57272f0f 488b4db0        mov     rcx,qword ptr [rbp-50h]
fffff802`57272f13 4885c9          test    rcx,rcx
fffff802`57272f16 7408            je      stornvme!ProcessPendingIoCommands+0x252d0 (fffff802`57272f20)  Branch

stornvme!ProcessPendingIoCommands+0x252c8:
fffff802`57272f18 488b01          mov     rax,qword ptr [rcx]
fffff802`57272f1b 4885c0          test    rax,rax
fffff802`57272f1e 752e            jne     stornvme!ProcessPendingIoCommands+0x252fe (fffff802`57272f4e)  Branch

stornvme!ProcessPendingIoCommands+0x252d0:
fffff802`57272f20 4c8bc2          mov     r8,rdx
fffff802`57272f23 4c8d4d60        lea     r9,[rbp+60h]
fffff802`57272f27 33d2            xor     edx,edx
fffff802`57272f29 488bcf          mov     rcx,rdi
fffff802`57272f2c 4c8b1595110100  mov     r10,qword ptr [stornvme!_imp_StorPortGetPhysicalAddress (fffff802`572840c8)]
fffff802`57272f33 e8f8a9fef5      call    storport!StorPortGetPhysicalAddress (fffff802`4d25d930)
fffff802`57272f38 488b4db0        mov     rcx,qword ptr [rbp-50h]
fffff802`57272f3c 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57272f41 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57272f46 4885c9          test    rcx,rcx
fffff802`57272f49 7403            je      stornvme!ProcessPendingIoCommands+0x252fe (fffff802`57272f4e)  Branch

stornvme!ProcessPendingIoCommands+0x252fb:
fffff802`57272f4b 488901          mov     qword ptr [rcx],rax

stornvme!ProcessPendingIoCommands+0x252fe:
fffff802`57272f4e 488b4dc8        mov     rcx,qword ptr [rbp-38h]
fffff802`57272f52 48894120        mov     qword ptr [rcx+20h],rax

stornvme!ProcessPendingIoCommands+0x25306:
fffff802`57272f56 33d2            xor     edx,edx
fffff802`57272f58 8bc2            mov     eax,edx

stornvme!ProcessPendingIoCommands+0x2530a:
fffff802`57272f5a 8b4c2468        mov     ecx,dword ptr [rsp+68h]
fffff802`57272f5e 4c8b4c2458      mov     r9,qword ptr [rsp+58h]
fffff802`57272f63 e986b2fdff      jmp     stornvme!ProcessPendingIoCommands+0x59e (fffff802`5724e1ee)  Branch

stornvme!ProcessPendingIoCommands+0x25318:
fffff802`57272f68 81f900100000    cmp     ecx,1000h
fffff802`57272f6e 0f861c010000    jbe     stornvme!ProcessPendingIoCommands+0x25440 (fffff802`57273090)  Branch

stornvme!ProcessPendingIoCommands+0x25324:
fffff802`57272f74 49837b2000      cmp     qword ptr [r11+20h],0
fffff802`57272f79 c744246800100000 mov     dword ptr [rsp+68h],1000h
fffff802`57272f81 488955e0        mov     qword ptr [rbp-20h],rdx
fffff802`57272f85 48895548        mov     qword ptr [rbp+48h],rdx
fffff802`57272f89 48895598        mov     qword ptr [rbp-68h],rdx
fffff802`57272f8d 0f84fd000000    je      stornvme!ProcessPendingIoCommands+0x25440 (fffff802`57273090)  Branch

stornvme!ProcessPendingIoCommands+0x25343:
fffff802`57272f93 41837b2800      cmp     dword ptr [r11+28h],0
fffff802`57272f98 0f84f2000000    je      stornvme!ProcessPendingIoCommands+0x25440 (fffff802`57273090)  Branch

stornvme!ProcessPendingIoCommands+0x2534e:
fffff802`57272f9e 418b4b2c        mov     ecx,dword ptr [r11+2Ch]
fffff802`57272fa2 412b4b08        sub     ecx,dword ptr [r11+8]
fffff802`57272fa6 4c8b45a0        mov     r8,qword ptr [rbp-60h]
fffff802`57272faa 4103c8          add     ecx,r8d
fffff802`57272fad 48895580        mov     qword ptr [rbp-80h],rdx
fffff802`57272fb1 81e1ff0f0000    and     ecx,0FFFh
fffff802`57272fb7 81c1ff0f0000    add     ecx,0FFFh
fffff802`57272fbd c1e90c          shr     ecx,0Ch
fffff802`57272fc0 ffc1            inc     ecx
fffff802`57272fc2 894c2448        mov     dword ptr [rsp+48h],ecx
fffff802`57272fc6 83f902          cmp     ecx,2
fffff802`57272fc9 0f8686010000    jbe     stornvme!ProcessPendingIoCommands+0x25505 (fffff802`57273155)  Branch

stornvme!ProcessPendingIoCommands+0x2537f:
fffff802`57272fcf 488b96b0000000  mov     rdx,qword ptr [rsi+0B0h]
fffff802`57272fd6 4885d2          test    rdx,rdx
fffff802`57272fd9 741a            je      stornvme!ProcessPendingIoCommands+0x253a5 (fffff802`57272ff5)  Branch

stornvme!ProcessPendingIoCommands+0x2538b:
fffff802`57272fdb 488955e0        mov     qword ptr [rbp-20h],rdx
fffff802`57272fdf 488b4218        mov     rax,qword ptr [rdx+18h]
fffff802`57272fe3 488986b0000000  mov     qword ptr [rsi+0B0h],rax
fffff802`57272fea 33c0            xor     eax,eax
fffff802`57272fec 48894218        mov     qword ptr [rdx+18h],rax
fffff802`57272ff0 e9e1000000      jmp     stornvme!ProcessPendingIoCommands+0x25486 (fffff802`572730d6)  Branch

stornvme!ProcessPendingIoCommands+0x253a5:
fffff802`57272ff5 4883beb800000000 cmp     qword ptr [rsi+0B8h],0
fffff802`57272ffd 7425            je      stornvme!ProcessPendingIoCommands+0x253d4 (fffff802`57273024)  Branch

stornvme!ProcessPendingIoCommands+0x253af:
fffff802`57272fff 4533ed          xor     r13d,r13d
fffff802`57273002 418bcd          mov     ecx,r13d
fffff802`57273005 48878eb8000000  xchg    rcx,qword ptr [rsi+0B8h]
fffff802`5727300c 48894de0        mov     qword ptr [rbp-20h],rcx
fffff802`57273010 488b4118        mov     rax,qword ptr [rcx+18h]
fffff802`57273014 488986b0000000  mov     qword ptr [rsi+0B0h],rax
fffff802`5727301b 4c896918        mov     qword ptr [rcx+18h],r13
fffff802`5727301f e9ae000000      jmp     stornvme!ProcessPendingIoCommands+0x25482 (fffff802`572730d2)  Branch

stornvme!ProcessPendingIoCommands+0x253d4:
fffff802`57273024 488d4548        lea     rax,[rbp+48h]
fffff802`57273028 41b94e766d50    mov     r9d,506D764Eh
fffff802`5727302e 41b800100000    mov     r8d,1000h
fffff802`57273034 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`57273039 488bd7          mov     rdx,rdi
fffff802`5727303c 33c9            xor     ecx,ecx
fffff802`5727303e 4c8b1553100100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57273045 e8366900f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`5727304a 85c0            test    eax,eax
fffff802`5727304c 7542            jne     stornvme!ProcessPendingIoCommands+0x25440 (fffff802`57273090)  Branch

stornvme!ProcessPendingIoCommands+0x253fe:
fffff802`5727304e 488d45e0        lea     rax,[rbp-20h]
fffff802`57273052 41b94e766d50    mov     r9d,506D764Eh
fffff802`57273058 41b820000000    mov     r8d,20h
fffff802`5727305e 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`57273063 488bd7          mov     rdx,rdi
fffff802`57273066 33c9            xor     ecx,ecx
fffff802`57273068 4c8b1529100100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5727306f e80c6900f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273074 85c0            test    eax,eax
fffff802`57273076 7420            je      stornvme!ProcessPendingIoCommands+0x25448 (fffff802`57273098)  Branch

stornvme!ProcessPendingIoCommands+0x25428:
fffff802`57273078 4c8b4548        mov     r8,qword ptr [rbp+48h]
fffff802`5727307c 488bd7          mov     rdx,rdi
fffff802`5727307f b901000000      mov     ecx,1
fffff802`57273084 4c8b150d100100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5727308b e8f06800f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)

stornvme!ProcessPendingIoCommands+0x25440:
fffff802`57273090 4533c9          xor     r9d,r9d
fffff802`57273093 e93fb6fdff      jmp     stornvme!ProcessPendingIoCommands+0xa87 (fffff802`5724e6d7)  Branch

stornvme!ProcessPendingIoCommands+0x25448:
fffff802`57273098 488b4de0        mov     rcx,qword ptr [rbp-20h]
fffff802`5727309c 488b4548        mov     rax,qword ptr [rbp+48h]
fffff802`572730a0 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`572730a5 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`572730aa 4c8b4db0        mov     r9,qword ptr [rbp-50h]
fffff802`572730ae 4c8b45a0        mov     r8,qword ptr [rbp-60h]
fffff802`572730b2 488901          mov     qword ptr [rcx],rax
fffff802`572730b5 33c9            xor     ecx,ecx
fffff802`572730b7 488b45e0        mov     rax,qword ptr [rbp-20h]
fffff802`572730bb 48894808        mov     qword ptr [rax+8],rcx
fffff802`572730bf 488b45e0        mov     rax,qword ptr [rbp-20h]
fffff802`572730c3 c7401000020000  mov     dword ptr [rax+10h],200h
fffff802`572730ca 488b45e0        mov     rax,qword ptr [rbp-20h]
fffff802`572730ce 48894818        mov     qword ptr [rax+18h],rcx

stornvme!ProcessPendingIoCommands+0x25482:
fffff802`572730d2 8b4c2448        mov     ecx,dword ptr [rsp+48h]

stornvme!ProcessPendingIoCommands+0x25486:
fffff802`572730d6 4c8b65e0        mov     r12,qword ptr [rbp-20h]
fffff802`572730da 418b542410      mov     edx,dword ptr [r12+10h]
fffff802`572730df 8d42ff          lea     eax,[rdx-1]
fffff802`572730e2 3dfe010000      cmp     eax,1FEh
fffff802`572730e7 771e            ja      stornvme!ProcessPendingIoCommands+0x254b7 (fffff802`57273107)  Branch

stornvme!ProcessPendingIoCommands+0x25499:
fffff802`572730e9 4d8b2c24        mov     r13,qword ptr [r12]
fffff802`572730ed 8d04d500000000  lea     eax,[rdx*8]
fffff802`572730f4 c1e802          shr     eax,2
fffff802`572730f7 85c0            test    eax,eax
fffff802`572730f9 7437            je      stornvme!ProcessPendingIoCommands+0x254e2 (fffff802`57273132)  Branch

stornvme!ProcessPendingIoCommands+0x254ab:
fffff802`572730fb 448bc0          mov     r8d,eax
fffff802`572730fe 498bcd          mov     rcx,r13
fffff802`57273101 49c1e002        shl     r8,2
fffff802`57273105 eb0a            jmp     stornvme!ProcessPendingIoCommands+0x254c1 (fffff802`57273111)  Branch

stornvme!ProcessPendingIoCommands+0x254b7:
fffff802`57273107 498b0c24        mov     rcx,qword ptr [r12]
fffff802`5727310b 41b800100000    mov     r8d,1000h

stornvme!ProcessPendingIoCommands+0x254c1:
fffff802`57273111 33d2            xor     edx,edx
fffff802`57273113 e8a8beffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`57273118 4c8b45a0        mov     r8,qword ptr [rbp-60h]
fffff802`5727311c 8b4c2448        mov     ecx,dword ptr [rsp+48h]
fffff802`57273120 4c8b4db0        mov     r9,qword ptr [rbp-50h]
fffff802`57273124 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57273129 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5727312e 4c8b65e0        mov     r12,qword ptr [rbp-20h]

stornvme!ProcessPendingIoCommands+0x254e2:
fffff802`57273132 8d41ff          lea     eax,[rcx-1]
fffff802`57273135 4189442410      mov     dword ptr [r12+10h],eax
fffff802`5727313a 488b45e0        mov     rax,qword ptr [rbp-20h]
fffff802`5727313e 49894208        mov     qword ptr [r10+8],rax
fffff802`57273142 488b08          mov     rcx,qword ptr [rax]
fffff802`57273145 4883c008        add     rax,8
fffff802`57273149 48894598        mov     qword ptr [rbp-68h],rax
fffff802`5727314d 48894d80        mov     qword ptr [rbp-80h],rcx
fffff802`57273151 48894d48        mov     qword ptr [rbp+48h],rcx

stornvme!ProcessPendingIoCommands+0x25505:
fffff802`57273155 418b532c        mov     edx,dword ptr [r11+2Ch]
fffff802`57273159 412b5308        sub     edx,dword ptr [r11+8]
fffff802`5727315d 0fb74c246c      movzx   ecx,word ptr [rsp+6Ch]
fffff802`57273162 4103d0          add     edx,r8d
fffff802`57273165 488b4618        mov     rax,qword ptr [rsi+18h]
fffff802`57273169 4803c9          add     rcx,rcx
fffff802`5727316c 4d8b6320        mov     r12,qword ptr [r11+20h]
fffff802`57273170 448bea          mov     r13d,edx
fffff802`57273173 4181e5ff0f0000  and     r13d,0FFFh
fffff802`5727317a 4c896588        mov     qword ptr [rbp-78h],r12
fffff802`5727317e 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57273183 488b04c8        mov     rax,qword ptr [rax+rcx*8]
fffff802`57273187 8bca            mov     ecx,edx
fffff802`57273189 488945c8        mov     qword ptr [rbp-38h],rax
fffff802`5727318d c1e90c          shr     ecx,0Ch
fffff802`57273190 418d85ff0f0000  lea     eax,[r13+0FFFh]
fffff802`57273197 c1e80c          shr     eax,0Ch
fffff802`5727319a ffc0            inc     eax
fffff802`5727319c 81fa00100000    cmp     edx,1000h
fffff802`572731a2 89442444        mov     dword ptr [rsp+44h],eax
fffff802`572731a6 0f424d28        cmovb   ecx,dword ptr [rbp+28h]
fffff802`572731aa 440f42ea        cmovb   r13d,edx
fffff802`572731ae 03c1            add     eax,ecx
fffff802`572731b0 894c2440        mov     dword ptr [rsp+40h],ecx
fffff802`572731b4 413b4328        cmp     eax,dword ptr [r11+28h]
fffff802`572731b8 7612            jbe     stornvme!ProcessPendingIoCommands+0x2557c (fffff802`572731cc)  Branch

stornvme!ProcessPendingIoCommands+0x2556a:
fffff802`572731ba 4c8b6d90        mov     r13,qword ptr [rbp-70h]
fffff802`572731be b8010000c1      mov     eax,0C1000001h
fffff802`572731c3 4c8b65c0        mov     r12,qword ptr [rbp-40h]
fffff802`572731c7 e939b0fdff      jmp     stornvme!ProcessPendingIoCommands+0x5b5 (fffff802`5724e205)  Branch

stornvme!ProcessPendingIoCommands+0x2557c:
fffff802`572731cc 498b0ccc        mov     rcx,qword ptr [r12+rcx*8]
fffff802`572731d0 488b5590        mov     rdx,qword ptr [rbp-70h]
fffff802`572731d4 4c8b45c0        mov     r8,qword ptr [rbp-40h]
fffff802`572731d8 418bc5          mov     eax,r13d
fffff802`572731db 4d8be0          mov     r12,r8
fffff802`572731de 48c1e10c        shl     rcx,0Ch
fffff802`572731e2 4c8bea          mov     r13,rdx
fffff802`572731e5 4803c8          add     rcx,rax
fffff802`572731e8 488b45c8        mov     rax,qword ptr [rbp-38h]
fffff802`572731ec 48894818        mov     qword ptr [rax+18h],rcx
fffff802`572731f0 8b442444        mov     eax,dword ptr [rsp+44h]
fffff802`572731f4 83f801          cmp     eax,1
fffff802`572731f7 0f847a020000    je      stornvme!ProcessPendingIoCommands+0x25827 (fffff802`57273477)  Branch

stornvme!ProcessPendingIoCommands+0x255ad:
fffff802`572731fd 83f802          cmp     eax,2
fffff802`57273200 7577            jne     stornvme!ProcessPendingIoCommands+0x25629 (fffff802`57273279)  Branch

stornvme!ProcessPendingIoCommands+0x255b2:
fffff802`57273202 8b4c2440        mov     ecx,dword ptr [rsp+40h]
fffff802`57273206 488b4588        mov     rax,qword ptr [rbp-78h]
fffff802`5727320a ffc1            inc     ecx
fffff802`5727320c 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57273211 488b04c8        mov     rax,qword ptr [rax+rcx*8]
fffff802`57273215 488b4dc8        mov     rcx,qword ptr [rbp-38h]
fffff802`57273219 48c1e00c        shl     rax,0Ch
fffff802`5727321d 48894120        mov     qword ptr [rcx+20h],rax
fffff802`57273221 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`57273225 4885c0          test    rax,rax
fffff802`57273228 0f8449020000    je      stornvme!ProcessPendingIoCommands+0x25827 (fffff802`57273477)  Branch

stornvme!ProcessPendingIoCommands+0x255de:
fffff802`5727322e 48837d9800      cmp     qword ptr [rbp-68h],0
fffff802`57273233 7524            jne     stornvme!ProcessPendingIoCommands+0x25609 (fffff802`57273259)  Branch

stornvme!ProcessPendingIoCommands+0x255e5:
fffff802`57273235 33d2            xor     edx,edx
fffff802`57273237 41b800100000    mov     r8d,1000h
fffff802`5727323d 488bc8          mov     rcx,rax
fffff802`57273240 e87bbdffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`57273245 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5727324a 4d8bc4          mov     r8,r12
fffff802`5727324d 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57273252 498bd5          mov     rdx,r13
fffff802`57273255 4c8b4db0        mov     r9,qword ptr [rbp-50h]

stornvme!ProcessPendingIoCommands+0x25609:
fffff802`57273259 4c8b6580        mov     r12,qword ptr [rbp-80h]
fffff802`5727325d 4c8bea          mov     r13,rdx
fffff802`57273260 488b45c8        mov     rax,qword ptr [rbp-38h]
fffff802`57273264 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57273269 488b4020        mov     rax,qword ptr [rax+20h]
fffff802`5727326d 49890424        mov     qword ptr [r12],rax
fffff802`57273271 4d8be0          mov     r12,r8
fffff802`57273274 e9fe010000      jmp     stornvme!ProcessPendingIoCommands+0x25827 (fffff802`57273477)  Branch

stornvme!ProcessPendingIoCommands+0x25629:
fffff802`57273279 4c8b6580        mov     r12,qword ptr [rbp-80h]
fffff802`5727327d 33c9            xor     ecx,ecx
fffff802`5727327f 894d5c          mov     dword ptr [rbp+5Ch],ecx
fffff802`57273282 48394d98        cmp     qword ptr [rbp-68h],rcx
fffff802`57273286 7529            jne     stornvme!ProcessPendingIoCommands+0x25661 (fffff802`572732b1)  Branch

stornvme!ProcessPendingIoCommands+0x25638:
fffff802`57273288 33d2            xor     edx,edx
fffff802`5727328a 41b800100000    mov     r8d,1000h
fffff802`57273290 498bcc          mov     rcx,r12
fffff802`57273293 e828bdffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`57273298 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5727329d 498bd5          mov     rdx,r13
fffff802`572732a0 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`572732a5 4c8b4db0        mov     r9,qword ptr [rbp-50h]
fffff802`572732a9 4c8b45c0        mov     r8,qword ptr [rbp-40h]
fffff802`572732ad 8b442444        mov     eax,dword ptr [rsp+44h]

stornvme!ProcessPendingIoCommands+0x25661:
fffff802`572732b1 4c8965a8        mov     qword ptr [rbp-58h],r12
fffff802`572732b5 b901000000      mov     ecx,1
fffff802`572732ba 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`572732bf 448d60ff        lea     r12d,[rax-1]
fffff802`572732c3 4489642474      mov     dword ptr [rsp+74h],r12d
fffff802`572732c8 4d8be0          mov     r12,r8
fffff802`572732cb 4c8bea          mov     r13,rdx
fffff802`572732ce 3bc1            cmp     eax,ecx
fffff802`572732d0 0f8659010000    jbe     stornvme!ProcessPendingIoCommands+0x257df (fffff802`5727342f)  Branch

stornvme!ProcessPendingIoCommands+0x25686:
fffff802`572732d6 837c247408      cmp     dword ptr [rsp+74h],8
fffff802`572732db 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`572732e0 0f8208010000    jb      stornvme!ProcessPendingIoCommands+0x2579e (fffff802`572733ee)  Branch

stornvme!ProcessPendingIoCommands+0x25696:
fffff802`572732e6 4c8b6580        mov     r12,qword ptr [rbp-80h]
fffff802`572732ea 8d50ff          lea     edx,[rax-1]
fffff802`572732ed 448b6c2440      mov     r13d,dword ptr [rsp+40h]
fffff802`572732f2 894c2448        mov     dword ptr [rsp+48h],ecx
fffff802`572732f6 498d04d4        lea     rax,[r12+rdx*8]
fffff802`572732fa 48894538        mov     qword ptr [rbp+38h],rax
fffff802`572732fe 418d4d01        lea     ecx,[r13+1]
fffff802`57273302 488b4588        mov     rax,qword ptr [rbp-78h]
fffff802`57273306 488d04c8        lea     rax,[rax+rcx*8]
fffff802`5727330a 48894500        mov     qword ptr [rbp],rax
fffff802`5727330e 428d0c2a        lea     ecx,[rdx+r13]
fffff802`57273312 488b4588        mov     rax,qword ptr [rbp-78h]
fffff802`57273316 488d14c8        lea     rdx,[rax+rcx*8]
fffff802`5727331a 488b4d90        mov     rcx,qword ptr [rbp-70h]
fffff802`5727331e 498d442408      lea     rax,[r12+8]
fffff802`57273323 483bc2          cmp     rax,rdx
fffff802`57273326 771e            ja      stornvme!ProcessPendingIoCommands+0x256f6 (fffff802`57273346)  Branch

stornvme!ProcessPendingIoCommands+0x256d8:
fffff802`57273328 488b4500        mov     rax,qword ptr [rbp]
fffff802`5727332c 4c8be9          mov     r13,rcx
fffff802`5727332f 4d8be0          mov     r12,r8
fffff802`57273332 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57273337 48394538        cmp     qword ptr [rbp+38h],rax
fffff802`5727333b 0f83b2000000    jae     stornvme!ProcessPendingIoCommands+0x257a3 (fffff802`572733f3)  Branch

stornvme!ProcessPendingIoCommands+0x256f1:
fffff802`57273341 448b6c2440      mov     r13d,dword ptr [rsp+40h]

stornvme!ProcessPendingIoCommands+0x256f6:
fffff802`57273346 8b442474        mov     eax,dword ptr [rsp+74h]
fffff802`5727334a 8b542444        mov     edx,dword ptr [rsp+44h]
fffff802`5727334e 83e007          and     eax,7
fffff802`57273351 2bd0            sub     edx,eax
fffff802`57273353 89542474        mov     dword ptr [rsp+74h],edx
fffff802`57273357 448b542448      mov     r10d,dword ptr [rsp+48h]
fffff802`5727335c 418d5505        lea     edx,[r13+5]
fffff802`57273360 448b5c2474      mov     r11d,dword ptr [rsp+74h]
fffff802`57273365 4d8be0          mov     r12,r8
fffff802`57273368 4c8b45a8        mov     r8,qword ptr [rbp-58h]
fffff802`5727336c 4c8be9          mov     r13,rcx
fffff802`5727336f 4c894c2458      mov     qword ptr [rsp+58h],r9
fffff802`57273374 4c8b4d88        mov     r9,qword ptr [rbp-78h]

stornvme!ProcessPendingIoCommands+0x25728:
fffff802`57273378 8d42fc          lea     eax,[rdx-4]
fffff802`5727337b 4183c208        add     r10d,8
fffff802`5727337f f3410f6f04c1    movdqu  xmm0,xmmword ptr [r9+rax*8]
fffff802`57273385 8d42fe          lea     eax,[rdx-2]
fffff802`57273388 660f73f00c      psllq   xmm0,0Ch
fffff802`5727338d f3410f7f00      movdqu  xmmword ptr [r8],xmm0
fffff802`57273392 f3410f6f04c1    movdqu  xmm0,xmmword ptr [r9+rax*8]
fffff802`57273398 8d4202          lea     eax,[rdx+2]
fffff802`5727339b 660f73f00c      psllq   xmm0,0Ch
fffff802`572733a0 f3410f7f4010    movdqu  xmmword ptr [r8+10h],xmm0
fffff802`572733a6 f3410f6f04d1    movdqu  xmm0,xmmword ptr [r9+rdx*8]
fffff802`572733ac 8d5208          lea     edx,[rdx+8]
fffff802`572733af 660f73f00c      psllq   xmm0,0Ch
fffff802`572733b4 f3410f7f4020    movdqu  xmmword ptr [r8+20h],xmm0
fffff802`572733ba f3410f6f04c1    movdqu  xmm0,xmmword ptr [r9+rax*8]
fffff802`572733c0 418bc2          mov     eax,r10d
fffff802`572733c3 660f73f00c      psllq   xmm0,0Ch
fffff802`572733c8 f3410f7f4030    movdqu  xmmword ptr [r8+30h],xmm0
fffff802`572733ce 4983c040        add     r8,40h
fffff802`572733d2 453bd3          cmp     r10d,r11d
fffff802`572733d5 72a1            jb      stornvme!ProcessPendingIoCommands+0x25728 (fffff802`57273378)  Branch

stornvme!ProcessPendingIoCommands+0x25787:
fffff802`572733d7 8b542444        mov     edx,dword ptr [rsp+44h]
fffff802`572733db 448bc8          mov     r9d,eax
fffff802`572733de 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`572733e3 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`572733e8 3bc2            cmp     eax,edx
fffff802`572733ea 7214            jb      stornvme!ProcessPendingIoCommands+0x257b0 (fffff802`57273400)  Branch

stornvme!ProcessPendingIoCommands+0x2579c:
fffff802`572733ec eb41            jmp     stornvme!ProcessPendingIoCommands+0x257df (fffff802`5727342f)  Branch

stornvme!ProcessPendingIoCommands+0x2579e:
fffff802`572733ee 448bc9          mov     r9d,ecx
fffff802`572733f1 eb05            jmp     stornvme!ProcessPendingIoCommands+0x257a8 (fffff802`572733f8)  Branch

stornvme!ProcessPendingIoCommands+0x257a3:
fffff802`572733f3 448b4c2448      mov     r9d,dword ptr [rsp+48h]

stornvme!ProcessPendingIoCommands+0x257a8:
fffff802`572733f8 4c8b45a8        mov     r8,qword ptr [rbp-58h]
fffff802`572733fc 8b542444        mov     edx,dword ptr [rsp+44h]

stornvme!ProcessPendingIoCommands+0x257b0:
fffff802`57273400 448b5c2440      mov     r11d,dword ptr [rsp+40h]
fffff802`57273405 4c8b5588        mov     r10,qword ptr [rbp-78h]

stornvme!ProcessPendingIoCommands+0x257b9:
fffff802`57273409 438d040b        lea     eax,[r11+r9]
fffff802`5727340d 41ffc1          inc     r9d
fffff802`57273410 498b04c2        mov     rax,qword ptr [r10+rax*8]
fffff802`57273414 4d8d4008        lea     r8,[r8+8]
fffff802`57273418 48c1e00c        shl     rax,0Ch
fffff802`5727341c 498940f8        mov     qword ptr [r8-8],rax
fffff802`57273420 443bca          cmp     r9d,edx
fffff802`57273423 72e4            jb      stornvme!ProcessPendingIoCommands+0x257b9 (fffff802`57273409)  Branch

stornvme!ProcessPendingIoCommands+0x257d5:
fffff802`57273425 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`5727342a 4c8b5c2460      mov     r11,qword ptr [rsp+60h]

stornvme!ProcessPendingIoCommands+0x257df:
fffff802`5727342f 488b4598        mov     rax,qword ptr [rbp-68h]
fffff802`57273433 4885c0          test    rax,rax
fffff802`57273436 7408            je      stornvme!ProcessPendingIoCommands+0x257f0 (fffff802`57273440)  Branch

stornvme!ProcessPendingIoCommands+0x257e8:
fffff802`57273438 488b00          mov     rax,qword ptr [rax]
fffff802`5727343b 4885c0          test    rax,rax
fffff802`5727343e 752f            jne     stornvme!ProcessPendingIoCommands+0x2581f (fffff802`5727346f)  Branch

stornvme!ProcessPendingIoCommands+0x257f0:
fffff802`57273440 4c8b4580        mov     r8,qword ptr [rbp-80h]
fffff802`57273444 4c8d4d5c        lea     r9,[rbp+5Ch]
fffff802`57273448 33d2            xor     edx,edx
fffff802`5727344a 488bcf          mov     rcx,rdi
fffff802`5727344d 4c8b15740c0100  mov     r10,qword ptr [stornvme!_imp_StorPortGetPhysicalAddress (fffff802`572840c8)]
fffff802`57273454 e8d7a4fef5      call    storport!StorPortGetPhysicalAddress (fffff802`4d25d930)
fffff802`57273459 488b4d98        mov     rcx,qword ptr [rbp-68h]
fffff802`5727345d 4c8b542450      mov     r10,qword ptr [rsp+50h]
fffff802`57273462 4c8b5c2460      mov     r11,qword ptr [rsp+60h]
fffff802`57273467 4885c9          test    rcx,rcx
fffff802`5727346a 7403            je      stornvme!ProcessPendingIoCommands+0x2581f (fffff802`5727346f)  Branch

stornvme!ProcessPendingIoCommands+0x2581c:
fffff802`5727346c 488901          mov     qword ptr [rcx],rax

stornvme!ProcessPendingIoCommands+0x2581f:
fffff802`5727346f 488b4dc8        mov     rcx,qword ptr [rbp-38h]
fffff802`57273473 48894120        mov     qword ptr [rcx+20h],rax

stornvme!ProcessPendingIoCommands+0x25827:
fffff802`57273477 4533c9          xor     r9d,r9d
fffff802`5727347a 418bc1          mov     eax,r9d
fffff802`5727347d e986adfdff      jmp     stornvme!ProcessPendingIoCommands+0x5b8 (fffff802`5724e208)  Branch

stornvme!ProcessPendingIoCommands+0x25832:
fffff802`57273482 4533c0          xor     r8d,r8d
fffff802`57273485 4c8d4d20        lea     r9,[rbp+20h]
fffff802`57273489 488bd7          mov     rdx,rdi
fffff802`5727348c 418d482f        lea     ecx,[r8+2Fh]
fffff802`57273490 4c8b15010c0100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57273497 e8e46400f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`5727349c 488b4520        mov     rax,qword ptr [rbp+20h]
fffff802`572734a0 440fb744247c    movzx   r8d,word ptr [rsp+7Ch]
fffff802`572734a6 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff802`572734aa 418bd0          mov     edx,r8d
fffff802`572734ad 48c1e205        shl     rdx,5
fffff802`572734b1 4889440a08      mov     qword ptr [rdx+rcx+8],rax
fffff802`572734b6 488b4628        mov     rax,qword ptr [rsi+28h]
fffff802`572734ba 4885c0          test    rax,rax
fffff802`572734bd 7415            je      stornvme!ProcessPendingIoCommands+0x25884 (fffff802`572734d4)  Branch

stornvme!ProcessPendingIoCommands+0x2586f:
fffff802`572734bf 418bc8          mov     ecx,r8d
fffff802`572734c2 4803c9          add     rcx,rcx
fffff802`572734c5 33d2            xor     edx,edx
fffff802`572734c7 488914c8        mov     qword ptr [rax+rcx*8],rdx
fffff802`572734cb 488b4628        mov     rax,qword ptr [rsi+28h]
fffff802`572734cf 488954c808      mov     qword ptr [rax+rcx*8+8],rdx

stornvme!ProcessPendingIoCommands+0x25884:
fffff802`572734d4 83cb20          or      ebx,20h
fffff802`572734d7 e910aefdff      jmp     stornvme!ProcessPendingIoCommands+0x69c (fffff802`5724e2ec)  Branch

stornvme!ProcessPendingIoCommands+0x2588c:
fffff802`572734dc 488d4518        lea     rax,[rbp+18h]
fffff802`572734e0 41b94e766d50    mov     r9d,506D764Eh
fffff802`572734e6 41b800100000    mov     r8d,1000h
fffff802`572734ec 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`572734f1 488bd7          mov     rdx,rdi
fffff802`572734f4 33c9            xor     ecx,ecx
fffff802`572734f6 4c8b159b0b0100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`572734fd e87e6400f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273502 85c0            test    eax,eax
fffff802`57273504 0f858a040000    jne     stornvme!ProcessPendingIoCommands+0x25d44 (fffff802`57273994)  Branch

stornvme!ProcessPendingIoCommands+0x258ba:
fffff802`5727350a 488d45e8        lea     rax,[rbp-18h]
fffff802`5727350e 41b94e766d50    mov     r9d,506D764Eh
fffff802`57273514 41b820000000    mov     r8d,20h
fffff802`5727351a 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`5727351f 488bd7          mov     rdx,rdi
fffff802`57273522 33c9            xor     ecx,ecx
fffff802`57273524 4c8b156d0b0100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5727352b e8506400f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273530 85c0            test    eax,eax
fffff802`57273532 0f8544040000    jne     stornvme!ProcessPendingIoCommands+0x25d2c (fffff802`5727397c)  Branch

stornvme!ProcessPendingIoCommands+0x258e8:
fffff802`57273538 488b4de8        mov     rcx,qword ptr [rbp-18h]
fffff802`5727353c 488b4518        mov     rax,qword ptr [rbp+18h]
fffff802`57273540 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`57273545 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`5727354a 488901          mov     qword ptr [rcx],rax
fffff802`5727354d 33c9            xor     ecx,ecx
fffff802`5727354f 488b45e8        mov     rax,qword ptr [rbp-18h]
fffff802`57273553 48894808        mov     qword ptr [rax+8],rcx
fffff802`57273557 488b45e8        mov     rax,qword ptr [rbp-18h]
fffff802`5727355b c7401000020000  mov     dword ptr [rax+10h],200h
fffff802`57273562 488b45e8        mov     rax,qword ptr [rbp-18h]
fffff802`57273566 48894818        mov     qword ptr [rax+18h],rcx

stornvme!ProcessPendingIoCommands+0x2591a:
fffff802`5727356a 8b4c2440        mov     ecx,dword ptr [rsp+40h]
fffff802`5727356e e9afaffdff      jmp     stornvme!ProcessPendingIoCommands+0x8d2 (fffff802`5724e522)  Branch

stornvme!ProcessPendingIoCommands+0x25923:
fffff802`57273573 498b0ccc        mov     rcx,qword ptr [r12+rcx*8]
fffff802`57273577 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`5727357b 48c1e10c        shl     rcx,0Ch
fffff802`5727357f 418bc3          mov     eax,r11d
fffff802`57273582 4803c8          add     rcx,rax
fffff802`57273585 488b45a8        mov     rax,qword ptr [rbp-58h]
fffff802`57273589 48894818        mov     qword ptr [rax+18h],rcx
fffff802`5727358d 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff802`57273591 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff802`57273596 4183f901        cmp     r9d,1
fffff802`5727359a 0f8466020000    je      stornvme!ProcessPendingIoCommands+0x25bb6 (fffff802`57273806)  Branch

stornvme!ProcessPendingIoCommands+0x25950:
fffff802`572735a0 4183f902        cmp     r9d,2
fffff802`572735a4 756e            jne     stornvme!ProcessPendingIoCommands+0x259c4 (fffff802`57273614)  Branch

stornvme!ProcessPendingIoCommands+0x25956:
fffff802`572735a6 8b442440        mov     eax,dword ptr [rsp+40h]
fffff802`572735aa 488b55b0        mov     rdx,qword ptr [rbp-50h]
fffff802`572735ae ffc0            inc     eax
fffff802`572735b0 488b4da8        mov     rcx,qword ptr [rbp-58h]
fffff802`572735b4 488b04c2        mov     rax,qword ptr [rdx+rax*8]
fffff802`572735b8 48c1e00c        shl     rax,0Ch
fffff802`572735bc 48894120        mov     qword ptr [rcx+20h],rax
fffff802`572735c0 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`572735c4 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`572735c9 488b4590        mov     rax,qword ptr [rbp-70h]
fffff802`572735cd 4885c0          test    rax,rax
fffff802`572735d0 0f8430020000    je      stornvme!ProcessPendingIoCommands+0x25bb6 (fffff802`57273806)  Branch

stornvme!ProcessPendingIoCommands+0x25986:
fffff802`572735d6 48837dc800      cmp     qword ptr [rbp-38h],0
fffff802`572735db 751a            jne     stornvme!ProcessPendingIoCommands+0x259a7 (fffff802`572735f7)  Branch

stornvme!ProcessPendingIoCommands+0x2598d:
fffff802`572735dd 33d2            xor     edx,edx
fffff802`572735df 41b800100000    mov     r8d,1000h
fffff802`572735e5 488bc8          mov     rcx,rax
fffff802`572735e8 e8d3b9ffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`572735ed 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`572735f2 4c8b542460      mov     r10,qword ptr [rsp+60h]

stornvme!ProcessPendingIoCommands+0x259a7:
fffff802`572735f7 488b45a8        mov     rax,qword ptr [rbp-58h]
fffff802`572735fb 488b4d90        mov     rcx,qword ptr [rbp-70h]
fffff802`572735ff 488b4020        mov     rax,qword ptr [rax+20h]
fffff802`57273603 488901          mov     qword ptr [rcx],rax
fffff802`57273606 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`5727360a 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`5727360f e9f2010000      jmp     stornvme!ProcessPendingIoCommands+0x25bb6 (fffff802`57273806)  Branch

stornvme!ProcessPendingIoCommands+0x259c4:
fffff802`57273614 33c0            xor     eax,eax
fffff802`57273616 894558          mov     dword ptr [rbp+58h],eax
fffff802`57273619 483945c8        cmp     qword ptr [rbp-38h],rax
fffff802`5727361d 7520            jne     stornvme!ProcessPendingIoCommands+0x259ef (fffff802`5727363f)  Branch

stornvme!ProcessPendingIoCommands+0x259cf:
fffff802`5727361f 488b4d90        mov     rcx,qword ptr [rbp-70h]
fffff802`57273623 33d2            xor     edx,edx
fffff802`57273625 41b800100000    mov     r8d,1000h
fffff802`5727362b e890b9ffff      call    stornvme!_memset_spec_ermsb (fffff802`5726efc0)
fffff802`57273630 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`57273635 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`5727363a 448b4c2468      mov     r9d,dword ptr [rsp+68h]

stornvme!ProcessPendingIoCommands+0x259ef:
fffff802`5727363f 488b4d90        mov     rcx,qword ptr [rbp-70h]
fffff802`57273643 458d59ff        lea     r11d,[r9-1]
fffff802`57273647 488b5580        mov     rdx,qword ptr [rbp-80h]
fffff802`5727364b b801000000      mov     eax,1
fffff802`57273650 48894d98        mov     qword ptr [rbp-68h],rcx
fffff802`57273654 89442448        mov     dword ptr [rsp+48h],eax
fffff802`57273658 44895c2474      mov     dword ptr [rsp+74h],r11d
fffff802`5727365d 4889542458      mov     qword ptr [rsp+58h],rdx
fffff802`57273662 443bc8          cmp     r9d,eax
fffff802`57273665 0f8654010000    jbe     stornvme!ProcessPendingIoCommands+0x25b6f (fffff802`572737bf)  Branch

stornvme!ProcessPendingIoCommands+0x25a1b:
fffff802`5727366b 4889542458      mov     qword ptr [rsp+58h],rdx
fffff802`57273670 488b55b0        mov     rdx,qword ptr [rbp-50h]
fffff802`57273674 4183fb08        cmp     r11d,8
fffff802`57273678 0f8209010000    jb      stornvme!ProcessPendingIoCommands+0x25b37 (fffff802`57273787)  Branch

stornvme!ProcessPendingIoCommands+0x25a2e:
fffff802`5727367e 89442448        mov     dword ptr [rsp+48h],eax
fffff802`57273682 4a8d04d9        lea     rax,[rcx+r11*8]
fffff802`57273686 448b5c2440      mov     r11d,dword ptr [rsp+40h]
fffff802`5727368b 48894538        mov     qword ptr [rbp+38h],rax
fffff802`5727368f 418d4301        lea     eax,[r11+1]
fffff802`57273693 488d04c2        lea     rax,[rdx+rax*8]
fffff802`57273697 48894500        mov     qword ptr [rbp],rax
fffff802`5727369b 8b442474        mov     eax,dword ptr [rsp+74h]
fffff802`5727369f 4103c3          add     eax,r11d
fffff802`572736a2 488d14c2        lea     rdx,[rdx+rax*8]
fffff802`572736a6 488d4108        lea     rax,[rcx+8]
fffff802`572736aa 483bc2          cmp     rax,rdx
fffff802`572736ad 771c            ja      stornvme!ProcessPendingIoCommands+0x25a7b (fffff802`572736cb)  Branch

stornvme!ProcessPendingIoCommands+0x25a5f:
fffff802`572736af 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`572736b3 4889442458      mov     qword ptr [rsp+58h],rax
fffff802`572736b8 488b4500        mov     rax,qword ptr [rbp]
fffff802`572736bc 48394538        cmp     qword ptr [rbp+38h],rax
fffff802`572736c0 7209            jb      stornvme!ProcessPendingIoCommands+0x25a7b (fffff802`572736cb)  Branch

stornvme!ProcessPendingIoCommands+0x25a72:
fffff802`572736c2 488b55b0        mov     rdx,qword ptr [rbp-50h]
fffff802`572736c6 e9c1000000      jmp     stornvme!ProcessPendingIoCommands+0x25b3c (fffff802`5727378c)  Branch

stornvme!ProcessPendingIoCommands+0x25a7b:
fffff802`572736cb 8b442474        mov     eax,dword ptr [rsp+74h]
fffff802`572736cf 418bc9          mov     ecx,r9d
fffff802`572736d2 83e007          and     eax,7
fffff802`572736d5 2bc8            sub     ecx,eax
fffff802`572736d7 488b4580        mov     rax,qword ptr [rbp-80h]
fffff802`572736db 458d4b05        lea     r9d,[r11+5]
fffff802`572736df 4c8b6da0        mov     r13,qword ptr [rbp-60h]
fffff802`572736e3 448bd9          mov     r11d,ecx
fffff802`572736e6 4c8b6588        mov     r12,qword ptr [rbp-78h]
fffff802`572736ea 488b55b0        mov     rdx,qword ptr [rbp-50h]
fffff802`572736ee 4c8b4598        mov     r8,qword ptr [rbp-68h]
fffff802`572736f2 448b542448      mov     r10d,dword ptr [rsp+48h]
fffff802`572736f7 4889442458      mov     qword ptr [rsp+58h],rax

stornvme!ProcessPendingIoCommands+0x25aac:
fffff802`572736fc 418d41fc        lea     eax,[r9-4]
fffff802`57273700 4183c208        add     r10d,8
fffff802`57273704 f30f6f04c2      movdqu  xmm0,xmmword ptr [rdx+rax*8]
fffff802`57273709 418d41fe        lea     eax,[r9-2]
fffff802`5727370d 418bca          mov     ecx,r10d
fffff802`57273710 660f73f00c      psllq   xmm0,0Ch
fffff802`57273715 f3410f7f00      movdqu  xmmword ptr [r8],xmm0
fffff802`5727371a f30f6f04c2      movdqu  xmm0,xmmword ptr [rdx+rax*8]
fffff802`5727371f 418d4102        lea     eax,[r9+2]
fffff802`57273723 660f73f00c      psllq   xmm0,0Ch
fffff802`57273728 f3410f7f4010    movdqu  xmmword ptr [r8+10h],xmm0
fffff802`5727372e f3420f6f04ca    movdqu  xmm0,xmmword ptr [rdx+r9*8]
fffff802`57273734 458d4908        lea     r9d,[r9+8]
fffff802`57273738 660f73f00c      psllq   xmm0,0Ch
fffff802`5727373d f3410f7f4020    movdqu  xmmword ptr [r8+20h],xmm0
fffff802`57273743 f30f6f04c2      movdqu  xmm0,xmmword ptr [rdx+rax*8]
fffff802`57273748 660f73f00c      psllq   xmm0,0Ch
fffff802`5727374d f3410f7f4030    movdqu  xmmword ptr [r8+30h],xmm0
fffff802`57273753 4983c040        add     r8,40h
fffff802`57273757 453bd3          cmp     r10d,r11d
fffff802`5727375a 72a0            jb      stornvme!ProcessPendingIoCommands+0x25aac (fffff802`572736fc)  Branch

stornvme!ProcessPendingIoCommands+0x25b0c:
fffff802`5727375c 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`57273761 448b4c2468      mov     r9d,dword ptr [rsp+68h]
fffff802`57273766 448b5c2440      mov     r11d,dword ptr [rsp+40h]
fffff802`5727376b 4c894598        mov     qword ptr [rbp-68h],r8
fffff802`5727376f 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`57273774 488b4598        mov     rax,qword ptr [rbp-68h]
fffff802`57273778 48894598        mov     qword ptr [rbp-68h],rax
fffff802`5727377c 894c2448        mov     dword ptr [rsp+48h],ecx
fffff802`57273780 413bc9          cmp     ecx,r9d
fffff802`57273783 7207            jb      stornvme!ProcessPendingIoCommands+0x25b3c (fffff802`5727378c)  Branch

stornvme!ProcessPendingIoCommands+0x25b35:
fffff802`57273785 eb34            jmp     stornvme!ProcessPendingIoCommands+0x25b6b (fffff802`572737bb)  Branch

stornvme!ProcessPendingIoCommands+0x25b37:
fffff802`57273787 448b5c2440      mov     r11d,dword ptr [rsp+40h]

stornvme!ProcessPendingIoCommands+0x25b3c:
fffff802`5727378c 4c8b5598        mov     r10,qword ptr [rbp-68h]
fffff802`57273790 448b442448      mov     r8d,dword ptr [rsp+48h]

stornvme!ProcessPendingIoCommands+0x25b45:
fffff802`57273795 438d0418        lea     eax,[r8+r11]
fffff802`57273799 41ffc0          inc     r8d
fffff802`5727379c 488b04c2        mov     rax,qword ptr [rdx+rax*8]
fffff802`572737a0 4d8d5208        lea     r10,[r10+8]
fffff802`572737a4 48c1e00c        shl     rax,0Ch
fffff802`572737a8 498942f8        mov     qword ptr [r10-8],rax
fffff802`572737ac 453bc1          cmp     r8d,r9d
fffff802`572737af 72e4            jb      stornvme!ProcessPendingIoCommands+0x25b45 (fffff802`57273795)  Branch

stornvme!ProcessPendingIoCommands+0x25b61:
fffff802`572737b1 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`572737b6 4c8b542460      mov     r10,qword ptr [rsp+60h]

stornvme!ProcessPendingIoCommands+0x25b6b:
fffff802`572737bb 488b4d90        mov     rcx,qword ptr [rbp-70h]

stornvme!ProcessPendingIoCommands+0x25b6f:
fffff802`572737bf 488b45c8        mov     rax,qword ptr [rbp-38h]
fffff802`572737c3 4885c0          test    rax,rax
fffff802`572737c6 7408            je      stornvme!ProcessPendingIoCommands+0x25b80 (fffff802`572737d0)  Branch

stornvme!ProcessPendingIoCommands+0x25b78:
fffff802`572737c8 488b00          mov     rax,qword ptr [rax]
fffff802`572737cb 4885c0          test    rax,rax
fffff802`572737ce 752e            jne     stornvme!ProcessPendingIoCommands+0x25bae (fffff802`572737fe)  Branch

stornvme!ProcessPendingIoCommands+0x25b80:
fffff802`572737d0 4c8bc1          mov     r8,rcx
fffff802`572737d3 4c8d4d58        lea     r9,[rbp+58h]
fffff802`572737d7 488bcf          mov     rcx,rdi
fffff802`572737da 33d2            xor     edx,edx
fffff802`572737dc 4c8b15e5080100  mov     r10,qword ptr [stornvme!_imp_StorPortGetPhysicalAddress (fffff802`572840c8)]
fffff802`572737e3 e848a1fef5      call    storport!StorPortGetPhysicalAddress (fffff802`4d25d930)
fffff802`572737e8 488b4dc8        mov     rcx,qword ptr [rbp-38h]
fffff802`572737ec 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`572737f1 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`572737f6 4885c9          test    rcx,rcx
fffff802`572737f9 7403            je      stornvme!ProcessPendingIoCommands+0x25bae (fffff802`572737fe)  Branch

stornvme!ProcessPendingIoCommands+0x25bab:
fffff802`572737fb 488901          mov     qword ptr [rcx],rax

stornvme!ProcessPendingIoCommands+0x25bae:
fffff802`572737fe 488b4da8        mov     rcx,qword ptr [rbp-58h]
fffff802`57273802 48894120        mov     qword ptr [rcx+20h],rax

stornvme!ProcessPendingIoCommands+0x25bb6:
fffff802`57273806 4533c9          xor     r9d,r9d
fffff802`57273809 418bc1          mov     eax,r9d
fffff802`5727380c e90daefdff      jmp     stornvme!ProcessPendingIoCommands+0x9ce (fffff802`5724e61e)  Branch

stornvme!ProcessPendingIoCommands+0x25bc1:
fffff802`57273811 41c60101        mov     byte ptr [r9],1
fffff802`57273815 4d8bc2          mov     r8,r10
fffff802`57273818 458bce          mov     r9d,r14d
fffff802`5727381b 33d2            xor     edx,edx
fffff802`5727381d 488bcf          mov     rcx,rdi
fffff802`57273820 e80bbafdff      call    stornvme!GetStreamId (fffff802`5724f230)
fffff802`57273825 4c8b4da8        mov     r9,qword ptr [rbp-58h]
fffff802`57273829 4c8b542460      mov     r10,qword ptr [rsp+60h]
fffff802`5727382e 6685c0          test    ax,ax
fffff802`57273831 7417            je      stornvme!ProcessPendingIoCommands+0x25bfa (fffff802`5727384a)  Branch

stornvme!ProcessPendingIoCommands+0x25be3:
fffff802`57273833 418b4930        mov     ecx,dword ptr [r9+30h]
fffff802`57273837 81e1ffff1fff    and     ecx,0FF1FFFFFh
fffff802`5727383d 6641894136      mov     word ptr [r9+36h],ax
fffff802`57273842 0fbae914        bts     ecx,14h
fffff802`57273846 41894930        mov     dword ptr [r9+30h],ecx

stornvme!ProcessPendingIoCommands+0x25bfa:
fffff802`5727384a 418121fffcffff  and     dword ptr [r9],0FFFFFCFFh
fffff802`57273851 4533db          xor     r11d,r11d
fffff802`57273854 8b4510          mov     eax,dword ptr [rbp+10h]
fffff802`57273857 41894104        mov     dword ptr [r9+4],eax
fffff802`5727385b 488b45c0        mov     rax,qword ptr [rbp-40h]
fffff802`5727385f 4d895910        mov     qword ptr [r9+10h],r11
fffff802`57273863 4a8b94f778060000 mov     rdx,qword ptr [rdi+r14*8+678h]
fffff802`5727386b 448b742444      mov     r14d,dword ptr [rsp+44h]
fffff802`57273870 448b4234        mov     r8d,dword ptr [rdx+34h]
fffff802`57273874 4899            cqo
fffff802`57273876 49f7f8          idiv    rax,r8
fffff802`57273879 33d2            xor     edx,edx
fffff802`5727387b 41894128        mov     dword ptr [r9+28h],eax
fffff802`5727387f 48c1e820        shr     rax,20h
fffff802`57273883 4189412c        mov     dword ptr [r9+2Ch],eax
fffff802`57273887 418d46ff        lea     eax,[r14-1]
fffff802`5727388b 4103c0          add     eax,r8d
fffff802`5727388e 41f7f0          div     eax,r8d
fffff802`57273891 33d2            xor     edx,edx
fffff802`57273893 66ffc8          dec     ax
fffff802`57273896 6641894130      mov     word ptr [r9+30h],ax
fffff802`5727389b 418b4930        mov     ecx,dword ptr [r9+30h]
fffff802`5727389f 81e1ffffffc3    and     ecx,0C3FFFFFFh
fffff802`572738a5 41894930        mov     dword ptr [r9+30h],ecx
fffff802`572738a9 81e1ffffff3f    and     ecx,3FFFFFFFh
fffff802`572738af 418b4238        mov     eax,dword ptr [r10+38h]
fffff802`572738b3 83e0e0          and     eax,0FFFFFFE0h
fffff802`572738b6 45885934        mov     byte ptr [r9+34h],r11b
fffff802`572738ba c1e019          shl     eax,19h
fffff802`572738bd 33c1            xor     eax,ecx
fffff802`572738bf 4d895938        mov     qword ptr [r9+38h],r11
fffff802`572738c3 0fbaf01f        btr     eax,1Fh
fffff802`572738c7 488bcf          mov     rcx,rdi
fffff802`572738ca 41894130        mov     dword ptr [r9+30h],eax
fffff802`572738ce 4c8b4618        mov     r8,qword ptr [rsi+18h]
fffff802`572738d2 0fb7442478      movzx   eax,word ptr [rsp+78h]
fffff802`572738d7 4803c0          add     rax,rax
fffff802`572738da 4d8b04c0        mov     r8,qword ptr [r8+rax*8]
fffff802`572738de e8ed2cfdff      call    stornvme!ProcessCommandTrace (fffff802`572465d0)
fffff802`572738e3 f6471510        test    byte ptr [rdi+15h],10h
fffff802`572738e7 750f            jne     stornvme!ProcessPendingIoCommands+0x25ca8 (fffff802`572738f8)  Branch

stornvme!ProcessPendingIoCommands+0x25c99:
fffff802`572738e9 8b476c          mov     eax,dword ptr [rdi+6Ch]
fffff802`572738ec a802            test    al,2
fffff802`572738ee 7508            jne     stornvme!ProcessPendingIoCommands+0x25ca8 (fffff802`572738f8)  Branch

stornvme!ProcessPendingIoCommands+0x25ca0:
fffff802`572738f0 440fb74c2470    movzx   r9d,word ptr [rsp+70h]
fffff802`572738f6 eb55            jmp     stornvme!ProcessPendingIoCommands+0x25cfd (fffff802`5727394d)  Branch

stornvme!ProcessPendingIoCommands+0x25ca8:
fffff802`572738f8 4533c0          xor     r8d,r8d
fffff802`572738fb 4c8d4d20        lea     r9,[rbp+20h]
fffff802`572738ff 488bd7          mov     rdx,rdi
fffff802`57273902 418d482f        lea     ecx,[r8+2Fh]
fffff802`57273906 4c8b158b070100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5727390d e86e6000f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273912 488b4520        mov     rax,qword ptr [rbp+20h]
fffff802`57273916 440fb74c2470    movzx   r9d,word ptr [rsp+70h]
fffff802`5727391c 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff802`57273920 418bd1          mov     edx,r9d
fffff802`57273923 48c1e205        shl     rdx,5
fffff802`57273927 4889440a08      mov     qword ptr [rdx+rcx+8],rax
fffff802`5727392c 488b4628        mov     rax,qword ptr [rsi+28h]
fffff802`57273930 4885c0          test    rax,rax
fffff802`57273933 7415            je      stornvme!ProcessPendingIoCommands+0x25cfa (fffff802`5727394a)  Branch

stornvme!ProcessPendingIoCommands+0x25ce5:
fffff802`57273935 418bc9          mov     ecx,r9d
fffff802`57273938 4803c9          add     rcx,rcx
fffff802`5727393b 33d2            xor     edx,edx
fffff802`5727393d 488914c8        mov     qword ptr [rax+rcx*8],rdx
fffff802`57273941 488b4628        mov     rax,qword ptr [rsi+28h]
fffff802`57273945 488954c808      mov     qword ptr [rax+rcx*8+8],rdx

stornvme!ProcessPendingIoCommands+0x25cfa:
fffff802`5727394a 83cb20          or      ebx,20h

stornvme!ProcessPendingIoCommands+0x25cfd:
fffff802`5727394d 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff802`57273952 410fb7c9        movzx   ecx,r9w
fffff802`57273956 45297004        sub     dword ptr [r8+4],r14d
fffff802`5727395a 6641ff00        inc     word ptr [r8]
fffff802`5727395e 488b4620        mov     rax,qword ptr [rsi+20h]
fffff802`57273962 48c1e105        shl     rcx,5
fffff802`57273966 891c01          mov     dword ptr [rcx+rax],ebx
fffff802`57273969 66f0ff8688000000 lock inc word ptr [rsi+88h]
fffff802`57273971 440fb7742478    movzx   r14d,word ptr [rsp+78h]
fffff802`57273977 e99ea9fdff      jmp     stornvme!ProcessPendingIoCommands+0x6ca (fffff802`5724e31a)  Branch

stornvme!ProcessPendingIoCommands+0x25d2c:
fffff802`5727397c 4c8b4518        mov     r8,qword ptr [rbp+18h]
fffff802`57273980 488bd7          mov     rdx,rdi
fffff802`57273983 b901000000      mov     ecx,1
fffff802`57273988 4c8b1509070100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`5727398f e8ec5f00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)

stornvme!ProcessPendingIoCommands+0x25d44:
fffff802`57273994 4533c9          xor     r9d,r9d
fffff802`57273997 e98aacfdff      jmp     stornvme!ProcessPendingIoCommands+0x9d6 (fffff802`5724e626)  Branch

stornvme!ProcessPendingIoCommands+0x25d4c:
fffff802`5727399c 4c397628        cmp     qword ptr [rsi+28h],r14
fffff802`572739a0 0f84b4a3fdff    je      stornvme!ProcessPendingIoCommands+0x10a (fffff802`5724dd5a)  Branch

stornvme!ProcessPendingIoCommands+0x25d56:
fffff802`572739a6 4533c0          xor     r8d,r8d
fffff802`572739a9 4c8d4d20        lea     r9,[rbp+20h]
fffff802`572739ad 488bd7          mov     rdx,rdi
fffff802`572739b0 418d482f        lea     ecx,[r8+2Fh]
fffff802`572739b4 4c8b15dd060100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`572739bb e8c05f00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`572739c0 488b4e28        mov     rcx,qword ptr [rsi+28h]
fffff802`572739c4 4c8d4568        lea     r8,[rbp+68h]
fffff802`572739c8 488b4520        mov     rax,qword ptr [rbp+20h]
fffff802`572739cc 0fb755d0        movzx   edx,word ptr [rbp-30h]
fffff802`572739d0 4803d2          add     rdx,rdx
fffff802`572739d3 488904d1        mov     qword ptr [rcx+rdx*8],rax
fffff802`572739d7 488bd7          mov     rdx,rdi
fffff802`572739da b904100000      mov     ecx,1004h
fffff802`572739df 4c8b15ca060100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`572739e6 e8751100f6      call    storport!StorPortNotification (fffff802`4d274b60)

stornvme!ProcessPendingIoCommands+0x25d9b:
fffff802`572739eb 488b9d88000000  mov     rbx,qword ptr [rbp+88h]
fffff802`572739f2 80bbf800000000  cmp     byte ptr [rbx+0F8h],0
fffff802`572739f9 0f84fca3fdff    je      stornvme!ProcessPendingIoCommands+0x1ab (fffff802`5724ddfb)  Branch

stornvme!ProcessPendingIoCommands+0x25daf:
fffff802`572739ff 4c8d4528        lea     r8,[rbp+28h]
fffff802`57273a03 44897528        mov     dword ptr [rbp+28h],r14d
fffff802`57273a07 488bd7          mov     rdx,rdi
fffff802`57273a0a b95c000000      mov     ecx,5Ch
fffff802`57273a0f 4c8b1582060100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57273a16 e8655f00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273a1b 488b8b00010000  mov     rcx,qword ptr [rbx+100h]
fffff802`57273a22 4885c9          test    rcx,rcx
fffff802`57273a25 0f858c000000    jne     stornvme!ProcessPendingIoCommands+0x25e67 (fffff802`57273ab7)  Branch

stornvme!ProcessPendingIoCommands+0x25ddb:
fffff802`57273a2b 8b87a40e0000    mov     eax,dword ptr [rdi+0EA4h]
fffff802`57273a31 a810            test    al,10h
fffff802`57273a33 744b            je      stornvme!ProcessPendingIoCommands+0x25e30 (fffff802`57273a80)  Branch

stornvme!ProcessPendingIoCommands+0x25de5:
fffff802`57273a35 8b4528          mov     eax,dword ptr [rbp+28h]
fffff802`57273a38 488d0cc0        lea     rcx,[rax+rax*8]
fffff802`57273a3c 488b8708010000  mov     rax,qword ptr [rdi+108h]
fffff802`57273a43 488b54c808      mov     rdx,qword ptr [rax+rcx*8+8]
fffff802`57273a48 4885d2          test    rdx,rdx
fffff802`57273a4b 7433            je      stornvme!ProcessPendingIoCommands+0x25e30 (fffff802`57273a80)  Branch

stornvme!ProcessPendingIoCommands+0x25dfd:
fffff802`57273a4d 44897508        mov     dword ptr [rbp+8],r14d
fffff802`57273a51 4c8d8308010000  lea     r8,[rbx+108h]
fffff802`57273a58 0fb744c810      movzx   eax,word ptr [rax+rcx*8+10h]
fffff802`57273a5d 4c8d4d08        lea     r9,[rbp+8]
fffff802`57273a61 66894508        mov     word ptr [rbp+8],ax
fffff802`57273a65 b90b100000      mov     ecx,100Bh
fffff802`57273a6a 480fbcc2        bsf     rax,rdx
fffff802`57273a6e 488bd7          mov     rdx,rdi
fffff802`57273a71 89450a          mov     dword ptr [rbp+0Ah],eax
fffff802`57273a74 4c8b1535060100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`57273a7b e8e01000f6      call    storport!StorPortNotification (fffff802`4d274b60)

stornvme!ProcessPendingIoCommands+0x25e30:
fffff802`57273a80 448b4d28        mov     r9d,dword ptr [rbp+28h]
fffff802`57273a84 488d4550        lea     rax,[rbp+50h]
fffff802`57273a88 4889442428      mov     qword ptr [rsp+28h],rax
fffff802`57273a8d 4c8d8308010000  lea     r8,[rbx+108h]
fffff802`57273a94 488bd7          mov     rdx,rdi
fffff802`57273a97 4c89742420      mov     qword ptr [rsp+20h],r14
fffff802`57273a9c b902100000      mov     ecx,1002h
fffff802`57273aa1 44897550        mov     dword ptr [rbp+50h],r14d
fffff802`57273aa5 4c8b1504060100  mov     r10,qword ptr [stornvme!_imp_StorPortNotification (fffff802`572840b0)]
fffff802`57273aac e8af1000f6      call    storport!StorPortNotification (fffff802`4d274b60)
fffff802`57273ab1 90              nop
fffff802`57273ab2 e944a3fdff      jmp     stornvme!ProcessPendingIoCommands+0x1ab (fffff802`5724ddfb)  Branch

stornvme!ProcessPendingIoCommands+0x25e67:
fffff802`57273ab7 8b83fc000000    mov     eax,dword ptr [rbx+0FCh]
fffff802`57273abd 488bd7          mov     rdx,rdi
fffff802`57273ac0 448b4528        mov     r8d,dword ptr [rbp+28h]
fffff802`57273ac4 4c6bc8f6        imul    r9,rax,0FFFFFFFFFFFFFFF6h
fffff802`57273ac8 488d45b8        lea     rax,[rbp-48h]
fffff802`57273acc c645b800        mov     byte ptr [rbp-48h],0
fffff802`57273ad0 4e8b04c1        mov     r8,qword ptr [rcx+r8*8]
fffff802`57273ad4 b959000000      mov     ecx,59h
fffff802`57273ad9 4889442430      mov     qword ptr [rsp+30h],rax
fffff802`57273ade 4c89742428      mov     qword ptr [rsp+28h],r14
fffff802`57273ae3 4c89742420      mov     qword ptr [rsp+20h],r14
fffff802`57273ae8 4c8b15a9050100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57273aef e88c5e00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273af4 90              nop
fffff802`57273af5 e901a3fdff      jmp     stornvme!ProcessPendingIoCommands+0x1ab (fffff802`5724ddfb)  Branch

stornvme!ProcessPendingIoCommands+0x25eaa:
fffff802`57273afa 83bfa010000000  cmp     dword ptr [rdi+10A0h],0
fffff802`57273b01 0f8507a3fdff    jne     stornvme!ProcessPendingIoCommands+0x1be (fffff802`5724de0e)  Branch

stornvme!ProcessPendingIoCommands+0x25eb7:
fffff802`57273b07 8787a0100000    xchg    eax,dword ptr [rdi+10A0h]
fffff802`57273b0d 85c0            test    eax,eax
fffff802`57273b0f 0f85f9a2fdff    jne     stornvme!ProcessPendingIoCommands+0x1be (fffff802`5724de0e)  Branch

stornvme!ProcessPendingIoCommands+0x25ec5:
fffff802`57273b15 4c8b8798100000  mov     r8,qword ptr [rdi+1098h]
fffff802`57273b1c 4c8d0d1d99fdff  lea     r9,[stornvme!IoTimeoutCallback (fffff802`5724d440)]
fffff802`57273b23 48c744243090d00300 mov   qword ptr [rsp+30h],3D090h
fffff802`57273b2c 8d4821          lea     ecx,[rax+21h]
fffff802`57273b2f 48c744242840420f00 mov   qword ptr [rsp+28h],0F4240h
fffff802`57273b38 488bd7          mov     rdx,rdi
fffff802`57273b3b 4c89742420      mov     qword ptr [rsp+20h],r14
fffff802`57273b40 4c8b1551050100  mov     r10,qword ptr [stornvme!_imp_StorPortExtendedFunction (fffff802`57284098)]
fffff802`57273b47 e8345e00f6      call    storport!StorPortExtendedFunction (fffff802`4d279980)
fffff802`57273b4c 90              nop
fffff802`57273b4d e9bca2fdff      jmp     stornvme!ProcessPendingIoCommands+0x1be (fffff802`5724de0e)  Branch
