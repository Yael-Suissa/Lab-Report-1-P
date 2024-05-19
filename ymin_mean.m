ymin25mean = mean(ymin(:,1:183)) ;
ymin50mean = mean(ymin(:,1:131)) ;
ymin100mean = mean(ymin(:,1:109)) ;
ymin150mean = mean(ymin(:,1:96)) ;

plot((1:96).*6, ymin150mean(1:end).*(91/2048)-(ymin150mean(1).*(91/2048)))
title('Vertical Location as a Function of Time for 150g Averaged')
xlabel('t (ms)')
ylabel ('x (cm)')

