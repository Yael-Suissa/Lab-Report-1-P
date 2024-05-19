hpixels = 1024;
vpixels = 544;
exposureTime = 2.94;
frameHeight = 5.8;

subplot(2,2,1)
plot((1:(375)).*exposureTime, x025)
    title('25g')
    xlabel('Time (ms)')
    ylabel ('Horizontal Location (cm)')

subplot(2,2,2)
plot((1:(269)).*exposureTime, x050)
    title('50g')
    xlabel('Time (ms)')
    ylabel ('Horizontal Location (cm)')

subplot(2,2,3)
plot((1:(224)).*exposureTime, x100)
    title('100g')
    xlabel('Time (ms)')
    ylabel ('Horizontal Location (cm)')

subplot(2,2,4)
plot((1:(197)).*exposureTime, x150)
    title('150g')
    xlabel('Time (ms)')
    ylabel ('Horizontal Location (cm)')

sgtitle('Hoorizontal Location as a Function of Time')