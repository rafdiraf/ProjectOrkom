;untuk mencetak tabel 
tabel1 :
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl1
	mov edx, mktbl1_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl2
	mov edx, mktbl2_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	;if(nm1==D || nm1==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm1],0xa44
	je ulang1
	cmp dword [nm1],0xa45
	je ulang1
	jne baris1
ulang1:
	;fungsi cetak 
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris1:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl3
	mov edx, mktbl3_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	;if(nm2==D || nm2==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm2],0xa44
	je ulang2
	cmp dword [nm2],0xa45
	je ulang2
	jne baris2
ulang2:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris2:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl4
	mov edx, mktbl4_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	;if(nm3==D || nm3==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm3],0xa44
	je ulang3
	cmp dword [nm3],0xa45
	je ulang3
	jne baris3
ulang3:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris3:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl5
	mov edx, mktbl5_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	;if(nm4==D || nm4==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm4],0xa44
	je ulang4
	cmp dword [nm4],0xa45
	je ulang4
	jne baris4
ulang4:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris4:	
	call newline
	
	mov ecx, 1		;menginisiasi proses semester satu
	call ipksmstr1
	;jmp ext1

tabel2 :
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl1
	mov edx, mktbl1_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl7
	mov edx, mktbl7_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	;if(nm1==D || nm1==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm1],0xa44
	je ulang5
	cmp dword [nm1],0xa45
	je ulang5
	jne baris5
ulang5:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris5:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl8
	mov edx, mktbl8_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	;if(nm2==D || nm2==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm2],0xa44
	je ulang6
	cmp dword [nm2],0xa45
	je ulang6
	jne baris6
ulang6:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris6:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl9
	mov edx, mktbl9_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	;if(nm3==D || nm3==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm3],0xa44
	je ulang7
	cmp dword [nm3],0xa45
	je ulang7
	jne baris7
ulang7:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris7:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl10
	mov edx, mktbl10_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	;if(nm4==D || nm4==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm4],0xa44
	je ulang8
	cmp dword [nm4],0xa45
	je ulang8
	jne baris8
ulang8:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris8:	
	call newline
	
	mov ecx, 2		;menginisiasi proses semester dua
	call ipksmstr1
	jmp ext1
	
tabel3 :
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl1
	mov edx, mktbl1_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl11
	mov edx, mktbl11_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	;if(nm1==D || nm1==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm1],0xa44
	je ulang9
	cmp dword [nm1],0xa45
	je ulang9
	jne baris9
ulang9:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris9:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl12
	mov edx, mktbl12_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	;if(nm2==D || nm2==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm2],0xa44
	je ulang10
	cmp dword [nm2],0xa45
	je ulang10
	jne baris10
ulang10:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris10:		
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl13
	mov edx, mktbl13_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	;if(nm3==D || nm3==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm3],0xa44
	je ulang11
	cmp dword [nm3],0xa45
	je ulang11
	jne baris11
ulang11:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris11:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl14
	mov edx, mktbl14_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	;if(nm4==D || nm4==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm4],0xa44
	je ulang12
	cmp dword [nm4],0xa45
	je ulang12
	jne baris12
ulang12:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris12:	
	call newline
	
	mov ecx, 3		;menginisiasi proses semester 3
	call ipksmstr1
	jmp ext1	
	
tabel4:
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl1
	mov edx, mktbl1_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl15
	mov edx, mktbl15_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm1
	mov edx, max_digit
	int 0x80
	;if(nm1==D || nm1==E){printf("-(Mengulang Mata Kuliah di Atas)-")
	cmp dword [nm1],0xa44
	je ulang13
	cmp dword [nm1],0xa45
	je ulang13
	jne baris13
ulang13:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris13:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl16
	mov edx, mktbl16_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm2
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm2],0xa44
	je ulang14
	cmp dword [nm2],0xa45
	je ulang14
	jne baris14
ulang14:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris14:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl17
	mov edx, mktbl17_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm3
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm3],0xa44
	je ulang15
	cmp dword [nm3],0xa45
	je ulang15
	jne baris15
ulang15:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris15:	
	call newline
	
	mov eax, 4
	mov ebx, 1
	mov ecx, mktbl18
	mov edx, mktbl18_len
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, nm4
	mov edx, max_digit
	int 0x80
	
	cmp dword [nm4],0xa44
	je ulang16
	cmp dword [nm4],0xa45
	je ulang16
	jne baris16
ulang16:
	mov eax, remed
	mov ebx, 1 ;stdout
	call printStr 
baris16:	
	call newline
	
	mov ecx, 4		;menginisiasi proses semester 4
	call ipksmstr1
	jmp ext1
	
	
ext1 :
	
ret
