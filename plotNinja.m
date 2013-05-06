function plotNinja(plots,names,titleText,xText,yText)
	figure;
	p1 = plot(plots(:,1)); %Baseline
	hold on;
	set(p1,'Color',[0,0,0],'LineStyle','none','Marker','.','MarkerSize',10);
	hold on;
	p2 = plot(plots(:,2)); %QPFS
	hold on;
	set(p2,'Color',[1,0,0],'LineStyle','--','LineWidth',2,'Marker','.','MarkerSize',10);
	hold on;
	p3 = plot(plots(:,3)); %TLKM-QPFS
	hold on;
	set(p3,'Color',[0,0,1],'LineStyle','-','LineWidth',2);
	hold on;
	p4 = plot(plots(:,4)); %IKM-QPFS
	hold on;
	set(p4,'Color',[0,0.498,0],'LineStyle','-','LineWidth',2,'Marker','x','MarkerSize',10);
	hold on;
	l = legend([p1;p2;p3;p4],names);
	hold on;
	set(l,'FontSize',30);
	title(titleText);
	xlabel(xText);
	ylabel(yText);
end