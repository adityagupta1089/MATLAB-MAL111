i=1;
for a=[-5,4,-2,0,2,4,5]
    for b=[-5,4,-2,0,2,4,5]
        subplot(7,7,i);
        x=2.*cos(t)-a;
        y=2.*sin(t)+b;
        plot(x,y);
        i=i+1;
    end
end
