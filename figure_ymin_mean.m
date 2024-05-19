% ymin25mean = mean(ymin(:,1:183)) ;
% ymin50mean = mean(ymin(:,1:131)) ;
% ymin100mean = mean(ymin(:,1:109)) ;
% ymin150mean = mean(ymin(:,1:96)) ;

subplot(2,2,1)
plot((1:183).*0.006, (ymin25mean(1:end).*(91/2048)-(ymin25mean(1).*(91/2048)))*0.1)
title('25g')
xlabel('Time (s)')
ylabel ('Vertical Location (m)')
ylim([0 8])
xlim([0 1.1])
text (0.2,6,'y = 0.63t^2')

subplot(2,2,2)
plot((1:131).*0.006, (ymin50mean(1:end).*(91/2048)-(ymin50mean(1).*(91/2048)))*0.1)
title('50g')
xlabel('Time (s)')
ylabel ('Vertical Location (m)')
ylim([0 8])
xlim([0 1.1])
text (0.2,6,'y = 0.97t^2')

subplot(2,2,3)
plot((1:109).*0.006, (ymin100mean(1:end).*(91/2048)-(ymin100mean(1).*(91/2048)))*0.1)
title('100g')
xlabel('Time (s)')
ylabel ('Vertical Location (m)')
ylim([0 8])
xlim([0 1.1])
text (0.17,6,'y = 1.42t^2')

subplot(2,2,4)
plot((1:96).*0.006, (ymin150mean(1:end).*(91/2048)-(ymin150mean(1).*(91/2048)))*0.1)
title('150g')
xlabel('Time (s)')
ylabel ('Vertical Location (m)')
ylim([0 8])
xlim([0 1.1])
text (0.15,6,'y = 2.28t^2')

sgtitle('Vertical Location as a Function of Time')