function plotNinja(plots,names,titleText,xText,yText)
	colors = [0,0,0 ; 1,0,0 ; 0,0,1 ; 0,0.498,0 ; 1,0,1];
	markers = char('.','.','none','x','s');
	linestyle = char('none','--','-','-','-');
	numberOfPlots = size(plots,2);
	plotHandle = zeros(numberOfPlots,1);
	figure;
	for i=1:numberOfPlots
		plotHandle(i) = plot(plots(:,i));
		hold on;
		set(plotHandle(i),'Color',colors(i,:),'LineWidth',2,'LineStyle',linestyle(i,:),'Marker',markers(i,:),'MarkerSize',10);
		hold on;
	end
	l = legend(plotHandle,names);
	hold on;
	set(l,'FontSize',30);
	title(titleText);
	xlabel(xText);
	ylabel(yText);
end