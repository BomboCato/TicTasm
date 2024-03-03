name "flags"

org 100h

game:  
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       
       mov printWDr, offset msgEmpty
       call printWD
       
        
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       
       call DrawGrid           
                 

 
       ; read character in al:

turn:      
       ;insert loop
          
       cmp turnp, 0    ;if turn == -1 then it's player 2's turn          
       jl  player2t   ;if turn == 1 player 1 turn
                        
                        
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       
       mov ah, 09
       mov al, 0
       mov bx, 0012   ;changes text color
       mov cx, 32h
       int 10h                  
                
                
       mov printWDr, offset p1turn
       call printWD  
       mov turnp, -1
       mov points, 1      ; player 1 points = 1
       jmp askAgain 
       

player2t:    
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       mov ah, 09
       mov al, 0
       mov bx, 0011
       mov cx, 32h
       int 10h 
       mov printWDr, offset p2turn
       call printWD
       mov turnp, 1
       mov points, 10    ; player 2 points = 10
       
askAgain:       
       mov ah, 1 
       int 21h   
                 
       cmp al,'1'
       jl  askAgain          
       
       cmp al,'9'
       jg  askAgain
                 
                 
       cmp al,'1'
       jne notCell1
       cmp cell1,0 ;if cell's value is 0 then cell is free
       jne occup1        
       call addCell1
       mov ah, points
       mov cell1,ah
       call CheckWin
       jmp turn
       
notCell1:
               
       cmp al,'2'
       jne notCell2
       cmp cell2,0 ;if cell's value is 0 then cell is free
       jne occup2       
       call addCell2
       mov ah, points
       mov cell2,ah
       call CheckWin
       jmp turn
            
       
notCell2:
            
       cmp al,'3'
       jne notCell3
       cmp cell3,0 ;if cell's value is 0 then cell is free
       jne occup3        
       call addCell3
       mov ah, points
       mov cell3,ah
       call CheckWin
       jmp turn
         
notCell3: 
       
       cmp al,'4'
       jne notCell4
       cmp cell4,0 ;if cell's value is 0 then cell is free
       jne occup4        
       call addCell4
       mov ah, points
       mov cell4,ah
       call CheckWin  
       jmp turn

notCell4:
      
       
       cmp al,'5'
       jne notCell5
       cmp cell5,0 ;if cell's value is 0 then cell is free
       jne occup5   
       call addCell5
       mov ah, points
       mov cell5,ah
       call CheckWin 
       jmp turn
       
notCell5:
               
       cmp al,'6'
       jne notCell6
       cmp cell6,0 ;if cell's value is 0 then cell is free
       jne occup6       
       call addCell6
       mov ah, points
       mov cell6,ah
       call CheckWin 
       jmp turn
 

notCell6:
       
       cmp al,'7'
       jne notCell7
       cmp cell7,0 ;if cell's value is 0 then cell is free
       jne occup7        
       call addCell7
       mov ah, points
       mov cell7,ah
       call CheckWin  
       jmp turn
       
notCell7:
       
       cmp al,'8'
       jne notCell8
       cmp cell8,0 ;if cell's value is 0 then cell is free
       jne occup8        
       call addCell8
       mov ah, points
       mov cell8,ah
       call CheckWin 
       jmp turn
        
notCell8: 
        
       cmp al,'9'
       jne notCell9
       cmp cell9,0 ;if cell's value is 0 then cell is free
       jne occup9  
       call addCell9
       mov ah, points
       mov cell9,ah
       call CheckWin
       jmp turn

notCell9:
        
       jmp askAgain 
        
        
       
   
       

occup9:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell9, 10
       je  p1_9
       mov printWDr, offset c9p1
       call printWD
       jmp askAgain
       
p1_9:  mov printWDr, offset c9p2
       call printWD
       jmp askAgain 
 
 

occup8:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell8, 10
       je  p1_8
       mov printWDr, offset c8p1
       call printWD
       jmp askAgain
       
p1_8:  mov printWDr, offset c8p2
       call printWD
       jmp askAgain

occup7:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell7, 10
       je  p1_7
       mov printWDr, offset c7p1
       call printWD
       jmp askAgain
       
p1_7:  mov printWDr, offset c7p2
       call printWD
       jmp askAgain
       
occup6:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell6, 10
       je  p1_6
       mov printWDr, offset c6p1
       call printWD
       jmp askAgain
       
p1_6:  mov printWDr, offset c6p2
       call printWD
       jmp askAgain
       
occup5:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell5, 10
       je  p1_5
       mov printWDr, offset c5p1
       call printWD
       jmp askAgain
       
p1_5:  mov printWDr, offset c5p2
       call printWD
       jmp askAgain
       
occup4:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell4, 10
       je  p1_4
       mov printWDr, offset c4p1
       call printWD
       jmp askAgain
       
p1_4:  mov printWDr, offset c4p2
       call printWD
       jmp askAgain

occup3:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell3, 10
       je  p1_3
       mov printWDr, offset c3p1
       call printWD
       jmp askAgain
       
p1_3:  mov printWDr, offset c3p2
       call printWD
       jmp askAgain
       
occup2:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell2, 10
       je  p1_2
       mov printWDr, offset c2p1
       call printWD
       jmp askAgain
       
p1_2:  mov printWDr, offset c2p2
       call printWD
       jmp askAgain       
    
    
occup1:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor        
       cmp cell1, 10
       je  p1_1
       mov printWDr, offset c1p1
       call printWD
       jmp askAgain
       
p1_1:  mov printWDr, offset c1p2
       call printWD
       jmp askAgain    
    
       
       
DrawGrid:   
       mov dh, 10
       mov dl, 21
       mov bh, 0
       mov ah, 2
       int 10h
                 
top:    
       ;dec acc
       
       cmp dh, 10
       jne next
            
       mov ah, 09h
       mov al, 201
       mov bl, 2
       mov cx, 1
       int 10h
       
next:       
       mov dl, 22      
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205
       mov bl, 2
       mov cx, 1
       int 10h
       
       cmp dh, 10
       jne next1
       
       mov dl, 23
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 203 ;middle character
       mov bl, 2
       mov cx, 1
       int 10h
next1:       
       mov dl, 24
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;top border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       cmp dh, 10
       jne next2:
       
       mov dl, 25
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 203 ;middle character
       mov bl, 2 
       mov cx, 1
       int 10h
next2:       
       mov dl, 26
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;top border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       cmp dh, 10
       jne mid
       
       mov dl, 27      
       mov ah, 2
       int 10h
               
       mov ah, 09h  ;top right corner
       mov al, 187
       mov bl, 2
       mov cx, 1
       int 10h
       
mid:   
       inc dh
       mov dl, 21
       mov bh, 0
       mov ah, 2
       int 10h
            
       mov ah, 09h
       mov al, 186
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 23      
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 186
       mov bl, 2
       mov cx, 1
       int 10h
              
       mov dl, 25      
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 186
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 27
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 186
       mov bl, 2
       mov cx, 1
       int 10h

bottom: 
       inc dh
       mov dl, 21
       mov bh, 0
       mov ah, 2
       int 10h
       cmp dh, 16
       je  lastBottom
       
       mov ah, 09h
       mov al, 204  ; bottom left corner  
       mov bl, 2
       int 10h
       
       mov dl, 22      
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;bottom border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 23
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 206 ;middle character
       mov bl, 2
       int 10h
       
       mov dl, 24
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;bottom border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 25
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 206 ;middle character
       mov bl, 2
       int 10h
       
       mov dl, 26
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;bottom border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 27      
       mov ah, 2
       int 10h
               
       mov ah, 09h
       mov al, 185 ;bottom right corner
       mov bl, 2
       mov cx, 1
       int 10h
       
       jmp  top
       
lastBottom:       
       mov ah, 09h
       mov al, 200  ; bottom left corner  
       mov bl, 2
       int 10h
       
       mov dl, 22      
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;bottom border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 23
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 202 ;middle character
       mov bl, 2
       int 10h
       
       mov dl, 24
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;bottom border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 25
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 202 ;middle character
       mov bl, 2
       int 10h
       
       mov dl, 26
       mov ah, 2
       int 10h
       
       mov ah, 09h
       mov al, 205 ;bottom border of grid
       mov bl, 2
       mov cx, 1
       int 10h
       
       mov dl, 27      
       mov ah, 2
       int 10h
               
       mov ah, 09h
       mov al, 188 ;bottom right corner
       mov bl, 2
       mov cx, 1
       int 10h
       
       ret

addCell7:
       mov dh, 11
       mov dl, 22
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross7
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross7:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret
       

addCell8:
       mov dh, 11
       mov dl, 24
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross8
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross8:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret

addCell9:
       mov dh, 11
       mov dl, 26
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross9
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross9:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret

addCell4:
       mov dh, 13
       mov dl, 22
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross4
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross4:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret         

addCell5:
       mov dh, 13
       mov dl, 24
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross5
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross5:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret

addCell6:
       mov dh, 13
       mov dl, 26
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross6
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross6:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret

addCell1:
       mov dh, 15
       mov dl, 22
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross1
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross1:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret        

addCell2:
       mov dh, 15
       mov dl, 24
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross2
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross2:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret                                 

addCell3:
       mov dh, 15
       mov dl, 26
       mov ah, 2
       int 10h
       
       mov ah, 09h
       cmp points, 10
       je  cross3
       mov al, 79
       mov bl, 12
       mov cx, 1
       int 10h
       ret
cross3:
       mov al, 88
       mov bl, 11
       mov cx, 1
       int 10h
       ret                 
      
CheckWin:
       mov al, 0
       add al, cell1
       add al, cell2
       add al, cell3
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       mov al, 0
       add al, cell4
       add al, cell5
       add al, cell6
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
  
       mov al, 0
       add al, cell7
       add al, cell8
       add al, cell9
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       mov al, 0
       add al, cell1
       add al, cell4
       add al, cell7
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       mov al, 0
       add al, cell2
       add al, cell5
       add al, cell8
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       mov al, 0
       add al, cell3
       add al, cell6
       add al, cell9
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       mov al, 0
       add al, cell1
       add al, cell5
       add al, cell9
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       mov al, 0
       add al, cell3
       add al, cell5
       add al, cell7
       cmp al, 3
       je  Player1Won 
       cmp al, 30
       je  Player2Won
       
       cmp cell1, 0
       je  notTie
       cmp cell2, 0
       je  notTie
       cmp cell3, 0
       je  notTie
       cmp cell4, 0
       je  notTie
       cmp cell5, 0
       je  notTie
       cmp cell6, 0
       je  notTie
       cmp cell7, 0
       je  notTie
       cmp cell8, 0
       je  notTie
       cmp cell9, 0
       je  notTie
       jmp TieEnd

notTie:  
       ret  
       
       
Player1Won:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       mov printWDr, offset p1win
       call printWD
       jmp stop  

Player2Won:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       mov printWDr, offset p2win

       call printWD 
       jmp stop
                   
TieEnd:
       mov setCursorX, 0
       mov setCursorY, 0
       call setCursor
       mov printWDr, offset tie
       call printWD                   

stop:   
        mov printWDr, offset key
        call printWD
        
        mov dl, 23
        mov dh, 0
        mov ah, 2
        int 10h 
        mov ah, 09h
        mov cx, 1
        mov al, 31
        int 10h
        
        mov ah, 7
        int 21h
        
        
        int 20h
        ret  ; stop
        

;msg1 db "enter a number or any other character to exit:  $"
msgEmpty db "                                                                                   $"              
   

p1turn db "It is player 1's turn !$", 0Dh,0Ah, "$"
p2turn db "It is player 2's turn !$", 0Dh,0Ah, "$"
   
                                    
;messages sent when a cell is occupied                                    
c1p1 db "player 1 already occupies cell 1$", 0Dh,0Ah, "$"
c1p2 db "player 2 already occupies cell 1$", 0Dh,0Ah, "$"
                                         
c2p1 db "player 1 already occupies cell 2$", 0Dh,0Ah, "$"
c2p2 db "player 2 already occupies cell 2$", 0Dh,0Ah, "$"

c3p1 db "player 1 already occupies cell 3$", 0Dh,0Ah, "$"
c3p2 db "player 2 already occupies cell 3$", 0Dh,0Ah, "$"
 
c4p1 db "player 1 already occupies cell 4$", 0Dh,0Ah, "$"
c4p2 db "player 2 already occupies cell 4$", 0Dh,0Ah, "$"

c5p1 db "player 1 already occupies cell 5$", 0Dh,0Ah, "$"
c5p2 db "player 2 already occupies cell 5$", 0Dh,0Ah, "$"

c6p1 db "player 1 already occupies cell 6$", 0Dh,0Ah, "$"
c6p2 db "player 2 already occupies cell 6$", 0Dh,0Ah, "$"

c7p1 db "player 1 already occupies cell 7$", 0Dh,0Ah, "$"
c7p2 db "player 2 already occupies cell 7$", 0Dh,0Ah, "$"

c8p1 db "player 1 already occupies cell 8$", 0Dh,0Ah, "$"
c8p2 db "player 2 already occupies cell 8$", 0Dh,0Ah, "$"

c9p1 db "player 1 already occupies cell 9$", 0Dh,0Ah, "$"
c9p2 db "player 2 already occupies cell 9$", 0Dh,0Ah, "$"


p1win db "Player 1 won the game$", 0Dh,0Ah, "$"
p2win db "Player 2 won the game$", 0Dh,0Ah, "$" 
tie   db "No one won the game so  it's a tie !$", 0Dh,0Ah, "$"

key   db 0Dh,0Ah, "Press any key to kill the app$", 0Dh,0Ah, "$"
 
    setCursorX db 0
    setCursorY db 0

setCursor:
    mov dh, setCursorY
    mov dl, setCursorX
    mov bh, 0
    mov ah, 2
    int 10h  
    ret        

    printWDr dw 0

printWD:
    mov dx, printWDr  
    mov ah, 9
    int 21h
    ret
cell1 db 0
cell2 db 0
cell3 db 0
cell4 db 0
cell5 db 0
cell6 db 0
cell7 db 0
cell8 db 0
cell9 db 0    

turnp  db 0
points db 10