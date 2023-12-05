function subManualcheckGUI

h_fig=figure(4);
clf;
set(h_fig,'unit','normalized');
set(h_fig,'MenuBar','None');
set(h_fig,'position',[0.1    0.1    0.9    0.6]);%现在的位置有点不对。
set(h_fig,'Name','手工校正','NumberTitle','off');

H_axes=axes('unit','normalized','position',[0.01,0.01,0.65,0.96],'visible','on');
set(h_fig,'currentaxes',H_axes);

uicontrol(h_fig,'Style','text',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.9,0.1,0.05],...
   'string','size','FontSize',15,'callback','');

hedit_ratio=uicontrol(h_fig,'Style','edit',...				%制作列表框			<20>
   'unit','normalized','position',[0.8,0.9,0.1,0.05],...
   'string','40','FontSize',15,'callback','');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.9,0.1,0.05],...
   'string','select','FontSize',15,'visible','on','Callback','subselect_region');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.8,0.1,0.05],...
   'string','new cell','FontSize',15,'visible','on','Callback','subnewcell');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.7,0.1,0.05],...
   'string','Expand','FontSize',15,'visible','on','Callback','subexpandcell');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.6,0.1,0.05],...
   'string','Reduce','FontSize',15,'visible','on','Callback','subreducecell');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.5,0.1,0.05],...
   'string','delete','FontSize',15,'visible','on','Callback','subdeletecell');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.6,0.05,0.05],...
   'string','SMov','FontSize',15,'visible','on','Callback','subsinglemove');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.5,0.05,0.05],...
   'string','Del','FontSize',15,'visible','on','Callback','subDelcell');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.45,0.05,0.05],...
   'string','DelAll','FontSize',15,'visible','on','Callback','subDelAllcell');


uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.75,0.5,0.05,0.05],...
   'string','Keep','FontSize',15,'visible','on','Callback','subKeepcell');

% uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
%    'unit','normalized','position',[0.6,0.4,0.1,0.05],...
%    'string','circle','FontSize',15,'visible','on','Callback','subcirclecell');

% uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
%    'unit','normalized','position',[0.6,0.3,0.05,0.05],...
%    'string','backward','FontSize',15,'visible','on','Callback','');
% 
% uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
%    'unit','normalized','position',[0.65,0.3,0.05,0.05],...
%    'string','forward','FontSize',15,'visible','on','Callback','');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.2,0.1,0.05],...
   'string','multicopy to next','FontSize',15,'visible','on','Callback','submulticopytonext');%多菌同时复制。

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.3,0.1,0.05],...
   'string','auto copy','FontSize',15,'visible','on','Callback','submulticopytonext_auto');%多菌同时复制。

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.2,0.05,0.05],...
   'string','clear','FontSize',15,'visible','on','Callback','clear_multicopy');%多菌同时复制。

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.10,0.1,0.1],...
   'string','copy to next','FontSize',15,'visible','on','Callback','subcopytonext');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.10,0.03,0.1],...
   'string','SC','FontSize',15,'visible','on','Callback','subsingletonext');


uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.75,0.05,0.05,0.05],...
   'string','division','FontSize',15,'visible','on','Callback','sub_division');


uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.7,0.050,0.05,0.05],...
   'string','save','FontSize',15,'visible','on','Callback','subsave_man');

hlist=uicontrol(h_fig,'Style','list',...				%制作列表框			<20>
   'unit','normalized','position',[0.78,0.35,0.2,0.5],...
   'string','','callback','subList_time');	


uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.85,0.23,0.05,0.05],...
   'string','up','FontSize',10,'visible','on','Callback','sub_moveup');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.85,0.28,0.05,0.05],...
   'string','up','FontSize',10,'visible','on','Callback','sub_moveup_more');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.85,0.13,0.05,0.05],...
   'string','down','FontSize',10,'visible','on','Callback','sub_movedown');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.85,0.08,0.05,0.05],...
   'string','down','FontSize',10,'visible','on','Callback','sub_movedown_more');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.77,0.175,0.03,0.05],...
   'string','left','FontSize',10,'visible','on','Callback','sub_moveleft_more');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.80,0.175,0.03,0.05],...
   'string','left','FontSize',10,'visible','on','Callback','sub_moveleft');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.92,0.175,0.03,0.05],...
   'string','right','FontSize',10,'visible','on','Callback','sub_moveright');

uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.95,0.175,0.03,0.05],...
   'string','right','FontSize',10,'visible','on','Callback','sub_moveright_more');


hnum=uicontrol(h_fig,'Style','push',...				%制作列表框			<20>
   'unit','normalized','position',[0.6,0.4,0.1,0.05],...
   'string','cellnum','FontSize',15,'visible','on','Callback','subcellnum');



fig=get(groot,'Children');
for loop=1:length(fig)
    if isequal(fig(loop).Name,'Cell Finder')
        data=fig(loop).UserData;
        break;
    end
end


listdata=[];

for k=1:length(data.data2.bfFileName)
    listdata=[listdata,data.data2.bfFileName{k},char(10)];
end
listdata(end)=[];
set(hlist,'String',listdata);

hlist.Value=data.data.currentindex;

value=hlist.Value;
ImOverlay(data.data2.rawdata(value).bfimg,data.data2.rawdata(value).segBW);

title(data.data2.bfFileName{value});


handle.hlist=hlist;
handle.temp=data;
handle.select=[];
handle.hedit_ratio=hedit_ratio;
handle.xcor=[];
handle.ycor=[];
handle.hnum=hnum;


set(gcf,'UserData',handle);

set(gcf,'WindowKeyPressFcn',@handleKey);



    function handleKey(src,evnt)
        if strcmp(evnt.Key,'q')%下移
            if data.data.currentindex<length(data.data2.rawdata)
                figin=get(groot,'Children');
                for loopin=1:length(figin)
                    if isequal(figin(loopin).Name,'Cell Finder')
                        data=figin(loopin).UserData;
                        break;
                    end
                end
                
                handle=get(gcf,'UserData');
                
                handle.hlist.Value=data.data.currentindex+1;
                data.data.currentindex=data.data.currentindex+1;
                
                figin(loopin).UserData=data;
                set(gcf,'UserData',handle);
                
                ImOverlay(data.data2.rawdata(data.data.currentindex).bfimg,data.data2.rawdata(data.data.currentindex).segBW);
                title(data.data2.bfFileName{data.data.currentindex});
            end
        elseif strcmp(evnt.Key,'Q')%下移
            if data.data.currentindex<length(data.data2.rawdata)
                figin=get(groot,'Children');
                for loopin=1:length(figin)
                    if isequal(figin(loopin).Name,'Cell Finder')
                        data=figin(loopin).UserData;
                        break;
                    end
                end
                handle=get(gcf,'UserData');
                
                handle.hlist.Value=data.data.currentindex+1;
                data.data.currentindex=data.data.currentindex+1;
                figin(loopin).UserData=data;
                set(gcf,'UserData',handle);
                ImOverlay(data.data2.rawdata(data.data.currentindex).bfimg,data.data2.rawdata(data.data.currentindex).segBW);
                title(data.data2.bfFileName{data.data.currentindex});
            end
        elseif strcmp(evnt.Key,'e')%上移
            if data.data.currentindex>1
                figin=get(groot,'Children');
                for loopin=1:length(figin)
                    if isequal(figin(loopin).Name,'Cell Finder')
                        data=figin(loopin).UserData;
                        break;
                    end
                end
                handle=get(gcf,'UserData');
                
                handle.hlist.Value=data.data.currentindex-1;
                data.data.currentindex=data.data.currentindex-1;
                figin(loopin).UserData=data;
                set(gcf,'UserData',handle);
                ImOverlay(data.data2.rawdata(data.data.currentindex).bfimg,data.data2.rawdata(data.data.currentindex).segBW);
                title(data.data2.bfFileName{data.data.currentindex});
            end
        elseif strcmp(evnt.Key,'E')%上移
            if data.data.currentindex>1
                figin=get(groot,'Children');
                for loopin=1:length(figin)
                    if isequal(figin(loopin).Name,'Cell Finder')
                        data=figin(loopin).UserData;
                        break;
                    end
                end
                handle=get(gcf,'UserData');
                
                handle.hlist.Value=data.data.currentindex-1;
                data.data.currentindex=data.data.currentindex-1;
                figin(loopin).UserData=data;
                set(gcf,'UserData',handle);
                ImOverlay(data.data2.rawdata(data.data.currentindex).bfimg,data.data2.rawdata(data.data.currentindex).segBW);
                title(data.data2.bfFileName{data.data.currentindex});
            end
        elseif strcmp(evnt.Key,'w')
            subsinglemove();
        elseif strcmp(evnt.Key,'W')
            subsinglemove();
        elseif strcmp(evnt.Key,'c')
            subcopytonext();
        elseif strcmp(evnt.Key,'v')
            submulticopytonext_auto();
        elseif strcmp(evnt.Key,'r')
            sub_division()
        elseif strcmp(evnt.Key,'s')
            subsingletonext();
        elseif strcmp(evnt.Key,'a')
            subexpandcell()
        elseif strcmp(evnt.Key,'1')
            subselect_region()
        elseif strcmp(evnt.Key,'l')
            sub_moveright();
        elseif strcmp(evnt.Key,'i')
            sub_moveup();
        elseif strcmp(evnt.Key,'k')
            sub_movedown();
        elseif strcmp(evnt.Key,'j') 
            sub_moveleft();
        elseif strcmp(evnt.Key,'f') 
            subDelcell();
        elseif strcmp(evnt.Key,'d') 
            subreducecell();
        end
        
    end


end