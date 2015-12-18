;mengkonversi nilai mutu ke indeks prestasi
ipksmstr1:

	mov ebx, [nm1] ;copy isi variabel ke ebx
	mov edx, 1		;inisialisasi proses mata kuliah
	jmp konfersi
lagi1 :	
	mov ebx,[nm2]
	mov edx, 2		;inisialisasi proses mata kuliah
	jmp konfersi
lagi2 :
	mov ebx,[nm3]
	mov edx, 3		;inisialisasi proses mata kuliah
	jmp konfersi
lagi3 :
	mov ebx, [nm4]
	mov edx, 4		;inisialisasi proses mata kuliah
	jmp konfersi

;mengecek nilai inputan yang yang sebelumnya sudah ada di ebx
konfersi :

	cmp ebx,0xa41; banding nilai ebx dengan A
	je nilaiA
	
	cmp ebx,0xa4241; banding nilai ebx dengan AB
	je nilaiAB
	
	cmp ebx,0xa42; banding nilai ebx dengan B
	je nilaiB
	
	cmp ebx,0xa4342; banding nilai ebx dengan BC
	je nilaiBC
	
	cmp ebx,0xa43; banding nilai ebx dengan C
	je nilaiC
	
	cmp ebx,0xa44; banding nilai ebx dengan D
	je nilaiD
	
	cmp ebx,0xa45; banding nilai ebx dengan E
	je nilaiE
	
;menggunakan fungsi stack untuk metode penyimpanan nilai	
nilaiA:
	push dword [A]
	;membandingkan proses yang sedang berlangsung
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2
	
nilaiAB:
	push dword [AB]
	
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2
	
nilaiB:
	push dword [B]
	
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2
	
nilaiBC:
	push dword [BC]
	
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2

nilaiC:
	push dword [C]
	
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2

nilaiD:
	push dword [D]
	
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2

nilaiE:
	push dword [E]
	
	cmp edx, 1
	je lagi1
	cmp edx, 2
	je lagi2
	cmp edx, 3
	je lagi3
	cmp edx, 4
	je ext2

ext2 :
	;cek inisialisasi proses
	cmp ecx, 1
	je proses1
	
	cmp ecx, 2
	je proses2
	
	cmp ecx, 3
	je proses3
	
	cmp ecx, 4
	je proses4
	
proses1:
	call hitipk1
proses2:
	call hitipk2
proses3:
	call hitipk3
proses4:
	call hitipk4

ret
