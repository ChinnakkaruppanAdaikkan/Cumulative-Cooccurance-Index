%%%Source Code to Compute Cumulative Co-occurrence Index (CCI)%%%
% 
% By Adaikkan et al., 2024, Silencing CA1 pyramidal cells output reveals
% the role of feedback inhibition in hippocampal oscillations, Nature
% Communications.
% 
%%%The function takes arrays comprising sample indices of ripple/high frequency event peaks from five different channels/electrodes/tetrodes as input and transfer the scalar value of CCI as output. 
function [Ripple_Co_Occurance_Stat] = Compute_Ripple_Co_Occurance_Stat(Chnl_1_Indx_Rpl_Pk,Chnl_2_Indx_Rpl_Pk,Chnl_3_Indx_Rpl_Pk,Chnl_4_Indx_Rpl_Pk,Chnl_5_Indx_Rpl_Pk,Sampling_Freq,Threshold_in_Milli_Sec)
Thresh_Num_Samples=(Sampling_Freq/1000)*Threshold_in_Milli_Sec;
Num_Channels_With_Ripples=0;
Average_Co_Prob_Ripples_Ch1=0;
Prob_Cooccurace_Ch_2=0;
      Prob_Cooccurace_Ch_3=0;
      Prob_Cooccurace_Ch_4=0;
      Prob_Cooccurace_Ch_5=0;
if length(Chnl_1_Indx_Rpl_Pk)>0
     Num_Channels_With_Ripples=Num_Channels_With_Ripples+1;
 for Index_1=1:length(Chnl_1_Indx_Rpl_Pk)
     if  isempty(Chnl_2_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_2=min(abs(Chnl_1_Indx_Rpl_Pk(Index_1)-Chnl_2_Indx_Rpl_Pk))<Thresh_Num_Samples;
     end
    if  isempty(Chnl_3_Indx_Rpl_Pk)~= 1
     Prob_Cooccurace_Ch_3=min(abs(Chnl_1_Indx_Rpl_Pk(Index_1)-Chnl_3_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_4_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_4=min(abs(Chnl_1_Indx_Rpl_Pk(Index_1)-Chnl_4_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_5_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_5=min(abs(Chnl_1_Indx_Rpl_Pk(Index_1)-Chnl_5_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
  Tot_Cooccurance_Prob_Each_Rpl__Ch1(Index_1)=(Prob_Cooccurace_Ch_2+Prob_Cooccurace_Ch_3+Prob_Cooccurace_Ch_4+Prob_Cooccurace_Ch_5)/4;
end
Average_Co_Prob_Ripples_Ch1=mean(Tot_Cooccurance_Prob_Each_Rpl__Ch1);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Prob_Cooccurace_Ch_1=0;
Prob_Cooccurace_Ch_3=0;
Prob_Cooccurace_Ch_4=0;
Prob_Cooccurace_Ch_5=0;
Average_Co_Prob_Ripples_Ch2=0;
if length(Chnl_2_Indx_Rpl_Pk)>0
     Num_Channels_With_Ripples=Num_Channels_With_Ripples+1;
     
for Index_2=1:length(Chnl_2_Indx_Rpl_Pk)
    if  isempty(Chnl_1_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_1=min(abs(Chnl_2_Indx_Rpl_Pk(Index_2)-Chnl_1_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
  if  isempty(Chnl_3_Indx_Rpl_Pk)~= 1  
    Prob_Cooccurace_Ch_3=min(abs(Chnl_2_Indx_Rpl_Pk(Index_2)-Chnl_3_Indx_Rpl_Pk))<Thresh_Num_Samples;
  end
  if  isempty(Chnl_4_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_4=min(abs(Chnl_2_Indx_Rpl_Pk(Index_2)-Chnl_4_Indx_Rpl_Pk))<Thresh_Num_Samples;
  end
  if  isempty(Chnl_5_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_5=min(abs(Chnl_2_Indx_Rpl_Pk(Index_2)-Chnl_5_Indx_Rpl_Pk))<Thresh_Num_Samples;
  end
    Tot_Cooccurance_Prob_Each_Rpl__Ch2(Index_2)=(Prob_Cooccurace_Ch_1+Prob_Cooccurace_Ch_3+Prob_Cooccurace_Ch_4+Prob_Cooccurace_Ch_5)/4;
end
Average_Co_Prob_Ripples_Ch2=mean(Tot_Cooccurance_Prob_Each_Rpl__Ch2);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Average_Co_Prob_Ripples_Ch3=0;
Prob_Cooccurace_Ch_1=0;
      Prob_Cooccurace_Ch_2=0;
      Prob_Cooccurace_Ch_4=0;
      Prob_Cooccurace_Ch_5=0;
if length(Chnl_3_Indx_Rpl_Pk)>0
     Num_Channels_With_Ripples=Num_Channels_With_Ripples+1;
for Index_3=1:length(Chnl_3_Indx_Rpl_Pk)
    if  isempty(Chnl_1_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_1=min(abs(Chnl_3_Indx_Rpl_Pk(Index_3)-Chnl_1_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_2_Indx_Rpl_Pk)~= 1
     Prob_Cooccurace_Ch_2=min(abs(Chnl_3_Indx_Rpl_Pk(Index_3)-Chnl_2_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
     if  isempty(Chnl_4_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_4=min(abs(Chnl_3_Indx_Rpl_Pk(Index_3)-Chnl_4_Indx_Rpl_Pk))<Thresh_Num_Samples;
     end
     if  isempty(Chnl_5_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_5=min(abs(Chnl_3_Indx_Rpl_Pk(Index_3)-Chnl_5_Indx_Rpl_Pk))<Thresh_Num_Samples;
     end
    Tot_Cooccurance_Prob_Each_Rpl__Ch3(Index_3)=(Prob_Cooccurace_Ch_1+Prob_Cooccurace_Ch_2+Prob_Cooccurace_Ch_4+Prob_Cooccurace_Ch_5)/4;
end
Average_Co_Prob_Ripples_Ch3=mean(Tot_Cooccurance_Prob_Each_Rpl__Ch3);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Average_Co_Prob_Ripples_Ch4=0;
Prob_Cooccurace_Ch_1=0;
      Prob_Cooccurace_Ch_2=0;
      Prob_Cooccurace_Ch_3=0;
      Prob_Cooccurace_Ch_5=0;
if length(Chnl_4_Indx_Rpl_Pk)>0
     Num_Channels_With_Ripples=Num_Channels_With_Ripples+1;
for Index_4=1:length(Chnl_4_Indx_Rpl_Pk)
    if  isempty(Chnl_1_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_1=min(abs(Chnl_4_Indx_Rpl_Pk(Index_4)-Chnl_1_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_2_Indx_Rpl_Pk)~= 1
     Prob_Cooccurace_Ch_2=min(abs(Chnl_4_Indx_Rpl_Pk(Index_4)-Chnl_2_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_3_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_3=min(abs(Chnl_4_Indx_Rpl_Pk(Index_4)-Chnl_4_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_5_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_5=min(abs(Chnl_4_Indx_Rpl_Pk(Index_4)-Chnl_5_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    Tot_Cooccurance_Prob_Each_Rpl__Ch4(Index_4)=(Prob_Cooccurace_Ch_1+Prob_Cooccurace_Ch_2+Prob_Cooccurace_Ch_3+Prob_Cooccurace_Ch_5)/4;
end
Average_Co_Prob_Ripples_Ch4=mean(Tot_Cooccurance_Prob_Each_Rpl__Ch4);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Average_Co_Prob_Ripples_Ch5=0;
Prob_Cooccurace_Ch_1=0;
      Prob_Cooccurace_Ch_2=0;
      Prob_Cooccurace_Ch_3=0;
      Prob_Cooccurace_Ch_4=0;
if length(Chnl_5_Indx_Rpl_Pk)>0
     Num_Channels_With_Ripples=Num_Channels_With_Ripples+1;
for Index_5=1:length(Chnl_5_Indx_Rpl_Pk)
    if  isempty(Chnl_1_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_1=min(abs(Chnl_5_Indx_Rpl_Pk(Index_5)-Chnl_1_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
    if  isempty(Chnl_2_Indx_Rpl_Pk)~= 1
     Prob_Cooccurace_Ch_2=min(abs(Chnl_5_Indx_Rpl_Pk(Index_5)-Chnl_2_Indx_Rpl_Pk))<Thresh_Num_Samples;
    end
if  isempty(Chnl_3_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_3=min(abs(Chnl_5_Indx_Rpl_Pk(Index_5)-Chnl_3_Indx_Rpl_Pk))<Thresh_Num_Samples;
end
if  isempty(Chnl_4_Indx_Rpl_Pk)~= 1
    Prob_Cooccurace_Ch_4=min(abs(Chnl_5_Indx_Rpl_Pk(Index_5)-Chnl_4_Indx_Rpl_Pk))<Thresh_Num_Samples;
end
    Tot_Cooccurance_Prob_Each_Rpl__Ch5(Index_5)=(Prob_Cooccurace_Ch_1+Prob_Cooccurace_Ch_2+Prob_Cooccurace_Ch_3+Prob_Cooccurace_Ch_4)/4;
end
Average_Co_Prob_Ripples_Ch5=mean(Tot_Cooccurance_Prob_Each_Rpl__Ch5);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
Ripple_Co_Occurance_Stat=(Average_Co_Prob_Ripples_Ch1+Average_Co_Prob_Ripples_Ch2+Average_Co_Prob_Ripples_Ch3+Average_Co_Prob_Ripples_Ch4+Average_Co_Prob_Ripples_Ch5)/(Num_Channels_With_Ripples+eps);

