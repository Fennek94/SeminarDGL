
r=[0:0.01:15];

n=[0:1:3];

h = figure("visible", "off");
hold all;
leg='';

for i=1:length(n)
  plot(r,besselj(n(i),r));
  leg=strcat(leg,'$J_{',num2str(n(i)),'}(r)$;');
endfor
grid on;
axis([r(1) r(length(r)) -0.45 1.05]);
leg(length(leg)) = ''; %Letztes Semikolon entfernen
legend(strsplit(leg,';'),"location",'northeastoutside');
xlabel('Abstand $r$');
ylabel('Normierte Amplitude');
plot(r,zeros(1,length(r)),'--k');
print('-dpdflatexstandalone','besselfunction','-F:20');
close
