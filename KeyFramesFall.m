videoKeyFrames = containers.Map;

% 25g (192)
videoKeyFrames('test16') = [34 226];
videoKeyFrames('test17') = [61 248];
videoKeyFrames('test18') = [55 242];
videoKeyFrames('test19') = [91 273];
videoKeyFrames('test20') = [31 222];


% 50g (167)
videoKeyFrames('test01') = [57 190];
videoKeyFrames('test02') = [87 226];
videoKeyFrames('test04') = [38 168];
videoKeyFrames('test05') = [34 180];
videoKeyFrames('test54') = [63 230];
videoKeyFrames('test53') = [83 230];
%  videoKeyFrames('test03') = [33 144];
%  videoKeyFrames('test14') = [76 208];
%  videoKeyFrames('test15') = [85 217];

% 100g (145)
videoKeyFrames('test06') = [31 139];
videoKeyFrames('test07') = [44 160];
% videoKeyFrames('test09') = [59 170];
videoKeyFrames('test52') = [51 196];
% videoKeyFrames('test10') = [60 170];
% videoKeyFrames('test08') = [39 147];
% videoKeyFrames('test04') = [19 97];
% videoKeyFrames('test05') = [87 216];
% videoKeyFrames('test06') = [37 111];

% 150g (99)
videoKeyFrames('test11') = [45 142];
videoKeyFrames('test12') = [37 132];
videoKeyFrames('test13') = [35 134];
videoKeyFrames('test15') = [63 162];
% videoKeyFrames('test50') = [62 190];
% videoKeyFrames('test51') = [54 177];
% videoKeyFrames('test14') = [36 61];
% videoKeyFrames('test08') = [1 81];
% videoKeyFrames('test11') = [86 153];


save('KeyFramesFall.mat', "videoKeyFrames");