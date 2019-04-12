%Code to perform specular reflection removal at scale. 
%Use to remove specular reflection from cervix images 
%Written by Mercy N. Asiedu
%Last updated 04/12/2019
clc;close all; clear all;
dirlist = [dir('*.tif');dir('*.jpg')];%dir('*.tif');
% % cd('S:\Nimmi\Cervix Data\Cervix Imaging - Cervix 1 Local');
 for i=1:length(dirlist)
    img = imread(dirlist(i).name);
    folder = 'X:\Mercy\Image processing\VIA image processing\Processing_without_ectopion\Zambia\White Images\cervix_boxcrop\'; %Folder where the image is saved
    filename=dirlist(i).name;
    de_spec=Remove_specular_refl(img);
    imwrite(de_spec,[folder 'despec\' filename])
 end 