function result=clustering8(S, cls_num, gt)
%Power by Zhenwen REN
[C] = SpectralClustering(S,cls_num);
result = Clustering8Measure(C,gt);
%[Fscore, Precision, Recall, MIhat, AR, Entropy, ACC, Purity]
% Fscore = result(1);Precision = result(2);Recall = result(3);
% MIhat = result(4);AR = result(5);Entropy = result(6);ACC = result(7);Purity = result(8);
end
