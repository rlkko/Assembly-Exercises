include inc\library.inc

.model small
.data

.stack 100h
.code

main proc

mov al,3
mov bl,3
          
addtwo al,bl 

printc 'e'
 
endp  

end