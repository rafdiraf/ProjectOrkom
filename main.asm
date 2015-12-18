; fungsi untuk clear screen
%include    'Function/clear.asm'
; fungsi untuk cetak matakuliah dan input nilai mutu
%include    'Function/inoutmatakuliah.asm'
; fungsi untuk cetak tabel nilai mutu
%include    'Function/tabelnilai.asm'
; fungsi untuk konfersi nilai mutu ke index prestasi
%include    'Function/konfersinmtoip.asm'
; fungsi cetak newline
%include    'Function/newline.asm'
;fungsi perhitungan nilai
%include    'Function/aritmatik.asm'

%include    'Function/printNum.asm'
%include    'Function/printStr.asm'
%include    'Function/printChar.asm'

; menggunakan fungsi dari bahasa C
extern printf
extern scanf
section .data

	
	buka  	db "______________________________...______________________________", 10
			db "        ~ SELAMAT DATANG DI APLIKASI PERHITUNGAN IPK ~         ", 10
			db "                           - Oleh -                            ", 10
			db "                        RAFDI || JAIS                          ", 10
			db "                    G64154042 || G64154038                     ", 10
			db "______________________________...______________________________", 10
			db " ", 10
			db "                        ~ SEMESTER I ~                         ", 0xa
			db "                 Silahkan masukkan nilai mutu!                 ", 0xa
			db "                 (A / AB / B / BC / C / D / E)                 ", 0xa, 0
	smstr2  db " ", 10
			db "                       ~ SEMESTER II ~                         ",0xa
			db "                 Silahkan masukkan nilai mutu!                 ", 0xa
			db "                 (A / AB / B / BC / C / D / E)                 ", 0xa, 0
	smstr3  db " ", 10
			db "                       ~ SEMESTER III ~                        ",0xa
			db "                 Silahkan masukkan nilai mutu!                 ", 0xa
			db "                 (A / AB / B / BC / C / D / E)                 ", 0xa, 0
	smstr4  db " ", 10
			db "                       ~ SEMESTER IV ~                         ",0xa
			db "                 Silahkan masukkan nilai mutu!                 ", 0xa
			db "                 (A / AB / B / BC / C / D / E)                 ", 0xa, 0
			
	hasil 	db " ", 10
			db "___________________________________",10
			db "SKS Kumulatif             : 43 ",10 
			db "Indeks Prestasi Kumulatif : ",0
	border	db "___________________________________",0
	
	error1  db "Terjadi kesalahan input data",10
			db "Input data berupa nilai mutu terdiri dari",10
			db "A,AB,B,BC,C,D,E (Huruf Kapital)",10
			db "Apakah anda ingin mengulangi proses [y/n] : ",0
	tutup	db " ", 10
			db "______________________________...______________________________", 10
			db " Terimakasih telah menggunakan Aplikasi Perhitungan Nilai IPK  ", 10
			db "                 ~ Semoga dapat bermanfaat ~                   ", 10
			db "______________________________...______________________________", 10, 0
	popup	db "Apakah anda ingin melakukan perhitungan kembali [y/n] : ",0
	A  dd 400
	AB dd 350
	B  dd 300
	BC dd 250
	C  dd 200
	D  dd 100
	E  dd 0
	
	ent db "",10
	ent_len equ $-ent
	
	titik db "."
	titik_len equ $-titik
	
	remed db "-(Mengulang Mata Kuliah di Atas)-",0
	
	mk1 db "Dasar Pemrograman	: ",
	mk1_len equ $-mk1
	mk2 db "Struktur Diskrit	: ",
	mk2_len equ $-mk2
	mk3 db "Organisasi Komputer	: ",
	mk3_len equ $-mk3
	mk4 db "Etika Komputasi		: ",
	mk4_len equ $-mk4
	
	mk5 db "Statistik		: ",
	mk5_len equ $-mk5
	mk6 db "Biologi			: ",
	mk6_len equ $-mk6
	mk7 db "Kimia			: ",
	mk7_len equ $-mk7
	mk8 db "Network Programing	: ",
	mk8_len equ $-mk8
	
	mk9  db "Rekayasa Perangkat Lunak  : ",
	mk9_len equ $-mk9
	mk10 db "Sistem Oprasi             : ",
	mk10_len equ $-mk10
	mk11 db "Kecerdasan Buatan         : ",
	mk11_len equ $-mk11
	mk12 db "Komputer Grafik           : ",
	mk12_len equ $-mk12
	
	mk13 db "Komunikasi Data JARKOM : ",
	mk13_len equ $-mk13
	mk14 db "Kolokium               : ",
	mk14_len equ $-mk14
	mk15 db "Seminar                : ",
	mk15_len equ $-mk15
	mk16 db "Tugas Akhir            : ",
	mk16_len equ $-mk16
	
	mktbl1 db "No  Mata Kuliah            SKS  Index",10
	mktbl1_len equ $-mktbl1
	mktbl2 db "1   Dasar Pemrograman       3    "
	mktbl2_len equ $-mktbl2
	mktbl3 db "2   Struktur Diskrit        3    "
	mktbl3_len equ $-mktbl3
	mktbl4 db "3   Organisasi Komputer     3    "
	mktbl4_len equ $-mktbl4
	mktbl5 db "4   Etika Komputasi         3    "
	mktbl5_len equ $-mktbl5
	
	nipk db "Nilai IP Semester       :    ",0

	mktbl7 db "1   Statistik               3    "
	mktbl7_len equ $-mktbl7
	mktbl8 db "2   Biologi                 2    "
	mktbl8_len equ $-mktbl8
	mktbl9 db "3   Kimia                   2    "
	mktbl9_len equ $-mktbl9
	mktbl10 db "4   Network Programing      3    "
	mktbl10_len equ $-mktbl10
	
	mktbl11 db "1  Rekayasa Perangkat Lunak 3    "
	mktbl11_len equ $-mktbl11
	mktbl12 db "2  Sistem Oprasi            3    "
	mktbl12_len equ $-mktbl12
	mktbl13 db "3  Kecerdasan Buatan        3    "
	mktbl13_len equ $-mktbl13
	mktbl14 db "4  Komputer Grafik          3    "
	mktbl14_len equ $-mktbl14
	
	mktbl15 db "1   Komunikasi Data JARKOM  3    "
	mktbl15_len equ $-mktbl15
	mktbl16 db "2   Kolokium                1    "
	mktbl16_len equ $-mktbl16
	mktbl17 db "3   Seminar                 1    "
	mktbl17_len equ $-mktbl17
	mktbl18 db "4   Tugas Akhir             4    "
	mktbl18_len equ $-mktbl18
	
	; untuk clear screen
    clr_scr     db      27, '[H', 27, '[2J', 0
    len_clr_scr equ     $-clr_scr
	
	max_digit equ 3
section .bss
	smstr resd max_digit
	nm1 resd max_digit
	nm2 resd max_digit
	nm3 resd max_digit
	nm4 resd max_digit
	
	validasi resd max_digit
	
	sum1 resd 10
	sum2 resd 10
	sum3 resd 10
	sum4 resd 10
	
	ipk1 resd 10
	floatipk1 resd 10
	ipk2 resd 10
	floatipk2 resd 10
	ipk3 resd 10
	floatipk3 resd 10
	ipk4 resd 10
	floatipk4 resd 10
	ipk resd 10
	floatipk resd 10
	
section .text
	global main
	
main:
	;Refresh variabel nm1,nm2,nm3,nm4
	mov dword [nm1],0
  	mov dword [nm2],0
  	mov dword [nm3],0
  	mov dword [nm4],0
	; clear screen
    call clrScr
    
    ;print buka dengan menggunakan library printf pada C
	push buka
    call printf
    add esp, 4
    ;Panggil fungsi Semester 1
    call semester1
    ;cetak Hasil perhitungan IP
print1:	
	mov eax, nipk		;memindahkan  variabel ke eax
	mov ebx, 1 			;stdout
	call printStr 		;panggil fungsi printStr
	
	mov eax, [ipk1]		;memindahkan  variabel ke eax
	mov ebx, 1			;stdout
    call printNum		;panggil fungsi printNum 
    
    ;mencetak titik untuk floating point
    mov eax, 4
	mov ebx, 1
	mov ecx, titik
	mov edx, titik_len
	int 0x80
	
	mov eax, [floatipk1]	;memindahkan isi dari variabel hasil sisa bagi ke eax
	mov ebx, 1				;stdout
    call printNum			;panggil fungsi printNum
    
    call newline
  	;refresh variabel nm1,nm2,nm3,nm4
  	mov dword [nm1],0
  	mov dword [nm2],0
  	mov dword [nm3],0
  	mov dword [nm4],0
  	
	
	call semester2

print2:	
	mov eax, nipk
	mov ebx, 1 ;stdout
	call printStr 
	
	mov eax, [ipk2]
	mov ebx, 1
    call printNum
    
    mov eax, 4
	mov ebx, 1
	mov ecx, titik
	mov edx, titik_len
	int 0x80
	
	mov eax, [floatipk2]
	mov ebx, 1
    call printNum
    
    call newline
    
    mov dword [nm1],0
  	mov dword [nm2],0
  	mov dword [nm3],0
  	mov dword [nm4],0
    
    call semester3
print3:	
	mov eax, nipk
	mov ebx, 1 ;stdout
	call printStr 
	
	mov eax, [ipk3]
	mov ebx, 1
    call printNum
    
    mov eax, 4
	mov ebx, 1
	mov ecx, titik
	mov edx, titik_len
	int 0x80
	
	mov eax, [floatipk3]
	mov ebx, 1
    call printNum
    
    call newline
    
    mov dword [nm1],0
  	mov dword [nm2],0
  	mov dword [nm3],0
  	mov dword [nm4],0
    
    call semester4
print4:	
	mov eax, nipk
	mov ebx, 1 ;stdout
	call printStr 
	
	mov eax, [ipk4]
	mov ebx, 1
    call printNum
    
    mov eax, 4
	mov ebx, 1
	mov ecx, titik
	mov edx, titik_len
	int 0x80
	
	mov eax, [floatipk4]
	mov ebx, 1
    call printNum
    
    call newline
    
    mov eax, hasil
    mov ebx, 1
    call printStr
    
    call hitipkakhir
print5:
    mov eax, [ipk]
	mov ebx, 1
    call printNum
    
    mov eax, 4
	mov ebx, 1
	mov ecx, titik
	mov edx, titik_len
	int 0x80
	
	mov eax, [floatipk]
	mov ebx, 1
    call printNum
    
    call newline
    
    mov eax, border
    mov ebx, 1
    call printStr
    
    call newline
    
	mov eax, tutup		;memindahkan  variabel ke eax
	mov ebx, 1 			;stdout
	call printStr 		;panggil fungsi printStr
	
	mov eax, popup		;memindahkan  variabel ke eax
	mov ebx, 1 			;stdout
	call printStr 		;panggil fungsi printStr
cekvalidasi:	
	mov eax, 3
	mov ebx, 2
	mov ecx, validasi
	mov edx, max_digit
	int 0x80
	;cek inputan validasi 
	cmp dword [validasi],0xa79
	je main
	cmp dword [validasi],0xa6E
	je exit
exit:
	mov eax,1
	mov ebx,0
	int 0x80
	
	