figure;
for k = 1:8
    X = 0
    Y = 0
    centers = [X Y];
    radii = 0.5;
    subplot(2,4,k);
    % Set the axis aspect ratio to 1:1.
     axis square
      % Clear the axes.
    cla
    % Fix the axis limits.
    xlim([-0.55 0.55]);
    ylim([-0.55 0.55]);
    % Set a title.
    title(['Qn = ' num2str(2*(k-1))])
    viscircles(centers,radii,'Color','k','LineWidth',3);
    hold on;
    x1=0;y1=0.5;
    st=2.0*pi/(2*(k-1));    %Ðý×ªµÄ½Ç¶È
    flag=1;
    for i=1:2*(k-1)
    x11=x1*cos(st)-y1*sin(st);
    y11=x1*sin(st)+y1*cos(st);
    hold on;
    flag=flag*(-1);
    if flag==1
    scatter(x11,y11,200,'r','filled');
    scatter(x11,y11,100,'w','+','LineWidth',1.5);
    else
    scatter(x11,y11,200,'b','filled');  
     plot([x11-0.03,x11+0.03],[y11,y11],'w','LineWidth',1.5);
    end
    scatter(0,0,10,'k','filled');
    st=st+2.0*pi/(2*(k-1));
    end
    hold off;
end