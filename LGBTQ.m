function [cmp] = LGBTQ( vargin )
 
% function [cmp] = LGBTQ( vargin )
%
% DESCRIPTION:
% A colormap based on the 6 colors of the pride flag. Not perceptually
% uniform, just gay. SO GAY.
%
% INPUT:
%   len    =   colormap size
%
% OUTPUT: 
%   cmp    =   [len x 3] colormap vector
%
%
% KiM MARTiNi 06.2018
% Sea-Bird Scientific 
% kmartini@seabird.com
%
% DISCLAIMER: Software is provided as is.

if nargin<1
    len=length(colormap);
else
    len=vargin(1);
end;

cmdata = [
    247     0     0      % red       #F70000
    255   140     0      % orange    #FF8C00
    255   239     0      % yellow    #FFEF00
      0   129    31      % green     #00811F
      0    68   255      % blue      #0044FF
    118     0   137]./255;    % purple    #760089


xcmdata=(1:size(cmdata,1))./size(cmdata,1);
dx = 1/(size(cmdata,1)-1);
xcmdata=0:dx:1;
dx = 1/(len-1);
xnew = 0:dx:1;
cmp=interp1(xcmdata,cmdata,xnew);

%  convert hex colors to rgb
% clrs = {
%     'F70000'
%     'FF8C00'
%     'FFEF00'
%     '00811F'
%     '0044FF'
%     '760089'};
% cmdata = hex2rgb( clrs ); 
