videoKeyFrames = containers.Map;

% 25g (447)
videoKeyFrames('test1.0') = [221 595];
videoKeyFrames('test1.1') = [164 538];
videoKeyFrames('test1.2') = [154 528];
videoKeyFrames('test1.3') = [221 595];
videoKeyFrames('test1.4') = [137 511];
videoKeyFrames('test1.5') = [309 683];
videoKeyFrames('test1.6') = [185 559];
videoKeyFrames('test1.7') = [121 495];

% 50g (342)
videoKeyFrames('test05') = [141 409];
videoKeyFrames('test03') = [227 495];
videoKeyFrames('test04') = [221 489];
videoKeyFrames('test38') = [245 513];
videoKeyFrames('test40') = [282 550];
videoKeyFrames('test41') = [215 483];
videoKeyFrames('test42') = [248 516];
videoKeyFrames('test43') = [225 493];

% 75g (531)
videoKeyFrames('test06') = [96 262];
videoKeyFrames('test07') = [181 523];
videoKeyFrames('test08') = [188 409];
videoKeyFrames('test09') = [117 597];
videoKeyFrames('test35') = [217 748];
videoKeyFrames('test36') = [187 670];
videoKeyFrames('test37') = [122 654];

% 100g (246)
videoKeyFrames('test10') = [181 404];
videoKeyFrames('test11') = [151 374];
videoKeyFrames('test12') = [128 351];
videoKeyFrames('test13') = [191 414];
videoKeyFrames('test30') = [189 412];
videoKeyFrames('test32') = [162 385];
videoKeyFrames('test33') = [214 437];

%125g (465)
videoKeyFrames('test14') = [120 354];
videoKeyFrames('test15') = [164 341];
videoKeyFrames('test16') = [105 374];
videoKeyFrames('test18') = [164 585];
videoKeyFrames('test27') = [113 567];
videoKeyFrames('test28') = [168 633];
videoKeyFrames('test29') = [206 521];

% 150g (262)
videoKeyFrames('test19') = [149 345];
videoKeyFrames('test20') = [214 410];
videoKeyFrames('test22') = [208 404];
videoKeyFrames('test23') = [164 360];
videoKeyFrames('test24') = [190 386];
videoKeyFrames('test25') = [133 329];
videoKeyFrames('test26') = [167 363];

save('KeyFrames.mat', "videoKeyFrames");