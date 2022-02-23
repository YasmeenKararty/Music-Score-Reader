function  [letters, types, noteBoundingBox] = BuildNotations(lineYaxis, noteStats, linePos, letters, halfPos, wholePos, types, noteBoundingBox)

for i = 1 : length(noteStats) % loop on note note
    for j = 1 : 5 % LinePos of 5 lines 
       
        position = noteStats(i).BoundingBox(2);
        type = WH_notes(halfPos, wholePos, position);
       
        if ((position >= linePos(lineYaxis, 2) - 1 &&  position <= linePos(lineYaxis, 2) + 2 ) && position > linePos(lineYaxis, 2) - 10)
            letters = [letters, 'G'];     
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
            
        elseif (position >= linePos(lineYaxis, 2) - 1 &&  position <= linePos(lineYaxis, 2) + 2 )
            letters = [letters, 'E'];     
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
            
        elseif (position > linePos(lineYaxis, 2) + 2 && position < linePos(lineYaxis + 1, 2))
            letters = [letters, 'D'];
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;                 

        elseif (position >= linePos(lineYaxis + 1, 2) - 1 &&  position <= linePos(lineYaxis + 1, 2) + 2 )
            letters = [letters, 'C'];
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
            
        elseif (position > linePos(lineYaxis + 1, 2) + 2 && position < linePos(lineYaxis + 2, 2))
            letters = [letters, 'B'];
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
            
       elseif (position >= linePos(lineYaxis + 2, 2) - 1 &&  position <= linePos(lineYaxis + 2, 2) + 2 )
           letters = [letters, 'A'];
           types = [types, type];
           noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
           break;  
                
       elseif (position >= linePos(lineYaxis + 3, 2) - 1 &&  position <= linePos(lineYaxis + 3, 2) + 2 )
           letters = [letters, 'F'];
           types = [types, type];
           noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
           break;    
       
        elseif (position > linePos(lineYaxis + 2, 2) + 2 && position < linePos(lineYaxis + 3, 2))
            letters = [letters, 'G'];
            types = [types, type]; 
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
            
        elseif (position > linePos(lineYaxis + 3, 2) + 2 && position < linePos(lineYaxis + 4, 2))
            letters = [letters, 'E'];
            types = [types, type]; 
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;    
            
        elseif(position >= linePos(lineYaxis + 4, 2) - 1 &&  position <= linePos(lineYaxis + 4, 2) + 2 )
            letters = [letters, 'D'];
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
            
        elseif (position >= linePos(lineYaxis + 4, 2) + 4 && position < linePos(lineYaxis + 4, 2) + 10)  
            letters = [letters, 'C'];
            types = [types, type];
            noteBoundingBox = vertcat(noteBoundingBox, noteStats(i).BoundingBox);
            break;
        end 
    end  
end
end