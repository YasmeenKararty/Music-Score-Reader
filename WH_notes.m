function  WH = WH_notes(halfPos, wholePos, position)

rows = size(halfPos,1);
for i = 1 : rows
    if (position == halfPos(i, 2))
        WH = 'H';
        break;
    end
end

for i = 1 :length(wholePos)
    if (position == wholePos(i, 2))
        WH = 'W';
        break;
    end  
end
end
