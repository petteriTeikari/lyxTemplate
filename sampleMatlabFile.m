function sampleMatlabFile()

   % Time specifications:
   Fs = 20000;                  % samples per second
   dt = 1/Fs;                   % seconds per sample
   StopTime = 2;             % seconds
   t = (0:dt:StopTime-dt)';     % seconds
   
   % Sine wave:
   Fc = 25;                     % hertz
   y = sin(2*pi*Fc*t);
   
   % AM
   Fc2 = 1;
   y2 = sin(2*pi*Fc2*t);
   
   % rectify
   y = y - min(y(:)); y = y / max(y);
   y2 = y2 - min(y2(:)); y2 = y2/max(y2);
      
   close all
   figure('Color', 'w')
   
    hold on
    p = plot(t, y2, t, y.*y2);
        set(p(1), 'LineWidth', 4, 'Color', 'k')
        set(p(2), 'Color',[0.043 0.51 0.78]);
        
        tit = title('AM Ultrasound');
        lab(1) = xlabel('Time'); lab(2) = ylabel('Amplitude');
        set(gca, 'YLim', [0 1.02])
        
    set(gca, 'FontSize', 9)
    set(tit, 'FontSize', 10, 'FontWeight', 'bold')
    set(lab, 'FontSize', 9)
    
