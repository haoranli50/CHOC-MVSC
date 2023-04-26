warning off
dbstop if error
clear;
addpath(genpath('.'));
%% Set parameter value
beta= 100;
gamma = 100;
%% Read and process the data
dataName = 'ORL_mtv_m.mat';
fprintf('Apply CHOC-MVC on %s dataset \n',dataName);
load(dataName)
if ~isempty(find(Y==0,1))
    Y = Y + 1; %Avoid numbering labels from 0
end
num_views = size(X,2);
num_clust = size(unique(Y),1);
num_samples = length(Y);
for i=1:num_views
    if size(X{i},2)~=num_samples  %Check data format
        X{i} = X{i}';
    end
    X{i} = NormalizeFea(X{i},1);
end
%% CHOC-MVC
try
    tic;
    S=CHOC(X,beta,gamma,100);
    time_cost = toc;
    results = clustering8(S,num_clust,Y);%[Fscore, Precision, Recall, MIhat, AR, Entropy, ACC, Purity]
catch exception
    fprintf('@ [dataset:%s beta:%5.4f gamma:%5.4f] @ \n', dataName,beta,gamma);
end
%% print result
ACC = results(7)*100;
NMI = results(4)*100;
Fscore = results(1)*100;
Precision = results(2)*100;
fprintf('@ [dataset:%s beta:%5.4f gamma:%5.4f Time:%f] @ \n', dataName,beta,gamma,time_cost);
fprintf('@ ACC:%5.2f / NMI:%5.2f / F-score:%5.2f Precision:%5.2f/ \n', ACC,NMI,Fscore,Precision);