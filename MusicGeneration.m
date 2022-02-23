function [] = MusicGeneration(melody, types)

% notes which will be used
notes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

% frequencies of notes above
freq = [440.00, 493.88, 261.63, 293.66, 329.63, 349.23, 392.00 ];
a = [];

% for loop which will create the melody sound
for k = 1 : numel(melody)
    
    if(strcmp(types(k), 'W'))
        note = 0:0.0004:1;
        % a will create the melody given variables defined above
        a = [a sin(2*pi*freq(strcmp(notes,melody{k}))*note)];
    else
        note = 0:0.0004:2;
        % a will create the melody given variables defined above
        a = [a sin(2*pi*freq(strcmp(notes,melody{k}))*note)];
    end
end

% plays the melody
sound(a);

end