feature=zeros(8,1500,8185);
feature(1,:,:)=maichong_fft(1:1500,:);
feature(2,:,:)=juchi_fft(1:1500,:);
feature(3,:,:)=am_fft(1:1500,:);
feature(4,:,:)=fm_fft(1:1500,:);
feature(5,:,:)=clean_fft(1:1500,:);
feature(6,:,:)=nb_fft(1:1500,:);
feature(7,:,:)=bpsk_fft(1:1500,:);
feature(8,:,:)=sin_fft(1:1500,:);
feature_total=zeros(16000,8185);
feature_total_v1=[maichong_fft(1:1500,:);juchi_fft(1:1500,:);am_fft(1:1500,:);fm_fft(1:1500,:);clean_fft(1:1500,:);nb_fft(1:1500,:);bpsk_fft(1:1500,:);sin_fft(1:1500,:)];
feature_total_v2=[maichong_fft(1501:2000,:);juchi_fft(1501:2000,:);am_fft(1501:2000,:);fm_fft(1501:2000,:);clean_fft(1501:2000,:);nb_fft(1501:2000,:);bpsk_fft(1501:2000,:);sin_fft(1501:2000,:)];
label_1=[zeros(1500,1);ones(1500,1);2*ones(1500,1);3*ones(1500,1);4*ones(1500,1);5*ones(1500,1);6*ones(1500,1);7*ones(1500,1)];
label_2=[zeros(500,1);ones(500,1);2*ones(500,1);3*ones(500,1);4*ones(500,1);5*ones(500,1);6*ones(500,1);7*ones(500,1)];
order1= randperm(size(feature_total_v1 ,1));%打乱顺序
feature_total_v1= feature_total_v1(order1,:);
label_1=label_1(order1,:);

order2= randperm(size(feature_total_v2 ,1));%打乱顺序
feature_total_v2= feature_total_v2(order2,:);
label_2=label_2(order2,:);
feature_total=[feature_total_v1;feature_total_v2];
label_total=[label_1;label_2];

adj=zeros(8,3,1500,1500);
adj(1,1,:,:)=corr_maichong_power(1:1500,1:1500);
adj(2,1,:,:)=corr_juchi_power(1:1500,1:1500);
adj(3,1,:,:)=corr_am_power(1:1500,1:1500);
adj(4,1,:,:)=corr_fm_power(1:1500,1:1500);
adj(5,1,:,:)=corr_clean_power(1:1500,1:1500);
adj(6,1,:,:)=corr_nb_power(1:1500,1:1500);
adj(7,1,:,:)=corr_bpsk_power(1:1500,1:1500);
adj(8,1,:,:)=corr_sin_power(1:1500,1:1500);

adj(1,2,:,:)=corr_maichong_pinyu(1:1500,1:1500);
adj(2,2,:,:)=corr_juchi_pinyu(1:1500,1:1500);
adj(3,2,:,:)=corr_am_pinyu(1:1500,1:1500);
adj(4,2,:,:)=corr_fm_pinyu(1:1500,1:1500);
adj(5,2,:,:)=corr_clean_pinyu(1:1500,1:1500);
adj(6,2,:,:)=corr_nb_pinyu(1:1500,1:1500);
adj(7,2,:,:)=corr_bpsk_pinyu(1:1500,1:1500);
adj(8,2,:,:)=corr_sin_pinyu(1:1500,1:1500);


adj(1,3,:,:)=corr_maichong_time(1:1500,1:1500);
adj(2,3,:,:)=corr_juchi_time(1:1500,1:1500);
adj(3,3,:,:)=corr_am_time(1:1500,1:1500);
adj(4,3,:,:)=corr_fm_time(1:1500,1:1500);
adj(5,3,:,:)=corr_clean_time(1:1500,1:1500);
adj(6,3,:,:)=corr_nb_time(1:1500,1:1500);
adj(7,3,:,:)=corr_bpsk_time(1:1500,1:1500);
adj(8,3,:,:)=corr_sin_time(1:1500,1:1500);
 

adj_total_v1=[maichong_power(1:1500,:);juchi_power(1:1500,:);am_power(1:1500,:);fm_power(1:1500,:);clean_power(1:1500,:);nb_power(1:1500,:);bpsk_power(1:1500,:);sin_power(1:1500,:);];
adj_total_v2=[maichong_power(1501:2000,:);juchi_power(1501:2000,:);am_power(1501:2000,:);fm_power(1501:2000,:);clean_power(1501:2000,:);nb_power(1501:2000,:);bpsk_power(1501:2000,:);sin_power(1501:2000,:)];
adj_total_v3=[maichong_pinyu(1:1500,:);juchi_pinyu(1:1500,:);am_pinyu(1:1500,:);fm_pinyu(1:1500,:);clean_pinyu(1:1500,:);nb_pinyu(1:1500,:);bpsk_pinyu(1:1500,:);sin_pinyu(1:1500,:);];
adj_total_v4=[maichong_pinyu(1501:2000,:);juchi_pinyu(1501:2000,:);am_pinyu(1501:2000,:);fm_pinyu(1501:2000,:);clean_pinyu(1501:2000,:);nb_pinyu(1501:2000,:);bpsk_pinyu(1501:2000,:);sin_pinyu(1501:2000,:)];
adj_total_v5=[maichong_time(1:1500,:);juchi_time(1:1500,:);am_time(1:1500,:);fm_time(1:1500,:);clean_time(1:1500,:);nb_time(1:1500,:);bpsk_time(1:1500,:);sin_time(1:1500,:);];
adj_total_v6=[maichong_time(1501:2000,:);juchi_time(1501:2000,:);am_time(1501:2000,:);fm_time(1501:2000,:);clean_time(1501:2000,:);nb_time(1501:2000,:);bpsk_time(1501:2000,:);sin_time(1501:2000,:)];

adj_total_v1= adj_total_v1(order1,:);
adj_total_v2= adj_total_v2(order2,:);
adj_total_v3= adj_total_v3(order1,:);
adj_total_v4= adj_total_v4(order2,:);
adj_total_v5= adj_total_v5(order1,:);
adj_total_v6= adj_total_v6(order2,:);
adj_total1=[adj_total_v1;adj_total_v2];
adj_total2=[adj_total_v3;adj_total_v4];
adj_total3=[adj_total_v5;adj_total_v6];



adjent=zeros(3,16000,16000);

for i=1:length(adj_total1)
    for j=1:length(adj_total1)
        adjent(1,i,j)=corr(adj_total1(i,:)',adj_total1(j,:)');
        adjent(2,i,j)=corr(adj_total2(i,:)',adj_total2(j,:)');
        adjent(3,i,j)=corr(adj_total3(i,:)',adj_total3(j,:)');
    end
    fprintf('转换进度%d\n',i);
end
  
for i=1:length(adj_total1)
    for j=1:length(adj_total1)
        adjent_abs(1,i,j)=abs(adjent(1,i,j));
        adjent_abs(2,i,j)=abs(adjent(2,i,j));
        adjent_abs(3,i,j)=abs(adjent(3,i,j));
    end
     fprintf('abs转换进度%d\n',i);
end
 
  
for i=1:size(adj,1)
    for j=1:size(adj,2)
        for k=1:size(adj,3)
            for d=1:size(adj,4)
                
                adj_abs(i,j,k,d)=abs(adj(i,j,k,d));

            end
        end
    end
    fprintf('smallabs转换进度%d\n',i);
end

adjent_99_abs=zeros(3,16000,16000);
adjent_9_abs=zeros(3,16000,16000);
for k=1:3
    for i=1:length(adj_total1)
        for j=1:length(adj_total1)
            if adjent_abs(k,i,j) > 0.99
                adjent_99_abs(k,i,j)=1;
            end
            if adjent_abs(k,i,j) > 0.9
                adjent_9_abs(k,i,j)=1;
            end
        end
    end
end
fprintf('if转换进度\n');
adj_99_abs=zeros(size(adj,1),size(adj,2),size(adj,3),size(adj,4));
adj_9_abs=zeros(size(adj,1),size(adj,2),size(adj,3),size(adj,4));

for i=1:size(adj,1)
    for j=1:size(adj,2)
        for k=1:size(adj,3)
            for d=1:size(adj,4)
                
                if adj_abs(i,j,k,d)>0.99
                adj_99_abs(i,j,k,d)=1;
                end
                if adj_abs(i,j,k,d)>0.9
                adj_9_abs(i,j,k,d)=1;
                end

            end
        end
    end
end
feature_total_max = zeros(16000,136);
feature_max = zeros(8,1500,136);
adj_total_corr=zeros(16000,16000);
adj_corr=zeros(8,1500,1500);
for i = 1:size(feature_total)
    for j = 1:136
        feat = feature_total(i,:);
        feature_total_max(i,j) = max(feat((j-1)*60+1:j*60));
    end
    fprintf('feature_total转换进度%d\n',i);
end

for k = 1:8
    for i = 1:1500
        for j = 1:136
            feat(1,:) = feature(k,i,:);
            feature_max(k,i,j) = max(feat((j-1)*60+1:j*60));
        end
    end
    fprintf('feature转换进度%d\n',k);
end

for i=1:size(feature_total_max)
    for j=1:size(feature_total_max)         
        adj_total_corr(i,j)=corr(feature_total_max(i,:)',feature_total_max(j,:)');
    end
           
    fprintf('smallabs转换进度%d\n',i);
end

for k = 1:8
    feat_1(:,:) = feature_max(k,:,:);
    for i = 1:1500
        for j = 1:1500
              adj_corr(k,i,j)=corr( feat_1(i,:)', feat_1(j,:)');
        end
    end
    fprintf('feature转换进度%d\n',k);
end
adj_total_corr_abs=adj_total_corr;
 
for i=1:length(adj_total_corr_abs)
        for j=1:length(adj_total_corr_abs)
            if abs(adj_total_corr_abs(i,j)) > 0.8
                adj_total_corr_abs(i,j)=1;
            else
               adj_total_corr_abs(i,j)=0;
            end
        end
end

adj_corr_abs=adj_corr;
for k = 1:8
    for i = 1:1500
        for j = 1:1500
              if abs(adj_corr_abs(k,i,j)) > 0.8
                 adj_corr_abs(k,i,j)=1;
              else
                  adj_corr_abs(k,i,j)=0;
              end
        end
    end
    fprintf('feature转换进度%d\n',k);
end

adjent_99_abs_shape=zeros(4,16000,16000);
adjent_99_abs_shape(1:3,:,:)=adjent_99_abs;
adjent_99_abs_shape(4,:,:)=adj_total_corr_abs;
adj_99_abs_shape=zeros(8,4,1500,1500);
for k=1:8
    adj_99_abs_shape(k,1:3,:,:)=adj_99_abs(k,:,:,:);
    adj_99_abs_shape(k,4,:,:)=adj_corr_abs(k,:,:);   
end  
label_1=label_1';
label_total=label_total';