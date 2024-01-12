clc
clear all
close all

graph(1).x_data={[1 2 3 4 5 6 7 8]};
graph(1).y_data={[1 2 3 4 5 6 7 8]};
graph(1).type="linear";
graph(1).title="Linear of y=x";

graph(1).x_label="X";
graph(1).y_label="Y";

graph(1).x_range=[0 9];
graph(1).y_range=[0 9];

graph(2).x_data={[10 10^2 10^3 10^4 10^5 10^6 10^7 10^8]};
graph(2).y_data={[1 2 3 4 5 6 7 8]};
graph(2).type="semilogx";
graph(2).title="Semilogx of y=x";

graph(2).x_label="X";
graph(2).y_label="Y";
graph(2).x_range=[0 10^9];
graph(2).y_range=[0 9];

graph(3).x_data={[1 2 3 4 5 6 7 8]};
graph(3).y_data={[1 2 3 4 5 6 7 8]};
graph(3).type="stem";
graph(3).title="Stem of y=x";

graph(3).x_label="X";
graph(3).y_label="Y";

graph(3).x_range=[0 9];
graph(3).y_range=[0 9];
plt(graph);

function k=plt(graph)
 n=size(graph);
 k=n(2);
 for i=1:k
     figure(i)
     if(strcmp(graph(i).type,"linear"))
        for j=1:length(graph(i).x_data)

 plot(graph(i).x_data{j},graph(i).y_data{j})
     end
 % a=1
     elseif(strcmp(graph(i).type,"semilogx"))
        for j=1:length(graph(i).x_data)

semilogx(graph(i).x_data{j},graph(i).y_data{j})
     end
     elseif(strcmp(graph(i).type,"stem"))
        for j=1:length(graph(i).x_data)

stem(graph(i).x_data{j},graph(i).y_data{j})
     end
 end
 title(graph(i).title)
 xlabel(graph(i).x_label)
 ylabel(graph(i).y_label)
 xlim(graph(i).x_range)
 ylim(graph(i).y_range)
 end
end