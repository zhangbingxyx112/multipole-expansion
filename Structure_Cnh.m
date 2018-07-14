figure;
for k = 1:10
    X = 0
    Y = 0
    centers = [X Y];
    radii = 0.5;
    subplot(2,5,k);
    % Set the axis aspect ratio to 1:1.
     axis square
    % Set a title.
    title(['Cn = ' num2str(k)])
    viscircles(centers,radii,'Color','k','LineWidth',3);
    hold on;
    x1=0;x2=0;y1=0.1;y2=0.5;
    plot([x1,x2],[y1,y2],'k','LineWidth',3);
    st=2.0*pi/k;    %Ðý×ªµÄ½Ç¶È
    for i=1:k
    x11=x1*cos(st)-y1*sin(st);
    y11=x1*sin(st)+y1*cos(st);
    x22=x2*cos(st)-y2*sin(st);
    y22=x2*sin(st)+y2*cos(st);
    hold on;
    plot([x11,x22],[y11,y22],'k','LineWidth',3);
    st=st+2.0*pi/k;
    end
    hold off;
end
