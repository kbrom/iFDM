function samples = sample_remove_unused(data,samples,hyper,param)

idx0 = find(sum(samples.seq(:,1,:)~=0,3)==0);

if(length(idx0)==size(samples.Z,1))
    idx0(1) = [];
end

samples.Z(idx0,:,:) = [];
samples.seq(idx0,:,:) = [];
samples.nest(:,:,idx0) = [];
samples.am(idx0) = [];
samples.bm(idx0) = [];
