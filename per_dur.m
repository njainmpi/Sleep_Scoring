function [output1, output2] = per_dur (input, combined_dur) 

sa_d = 0;
sq_d = 0;
sr_d = 0;
sn_d = 0;
sd_d = 0;

 
output2 = input(input(:,2) < 3602, :);

output1 = strings(7,4);

for ii = 1:length(output2)
    if output2(ii) == 0
       sa_d = sa_d+1;

    elseif output2(ii) == 1
           sq_d = sq_d+1;
            
    elseif output2(ii) == 2
           sn_d = sn_d+1;
            
    elseif output2(ii) == 3
           sr_d = sr_d+1;
           
    else sd_d = sd_d+1;
    end
end

 
output1 (4,1) = 'Active Wake';
output1 (5,1) = 'Quiet Wake';
output1 (6,1) = 'Sleep';
output1 (7,1) = 'Doubt';
output1 (2,3) = 'Percentage';
output1 (2,4) = 'Duration';

 
 
output1 (4,3) = (sa_d)/(sq_d+sn_d+sr_d+sa_d);
output1 (4,4) = (sa_d)*combined_dur;

output1 (5,3) = (sq_d)/(sq_d+sn_d+sr_d+sa_d);
output1 (5,4) = (sq_d)*combined_dur;

output1 (6,3) = (sn_d + sr_d)/(sq_d+sn_d+sr_d+sa_d);
output1 (6,4) = (sn_d + sr_d)*combined_dur;

output1 (7,3) = (sd_d)/(sq_d+sn_d+sr_d+sa_d);
output1 (7,4) = (sd_d)*combined_dur;

end