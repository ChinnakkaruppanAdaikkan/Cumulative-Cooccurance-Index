%%% Demo of Cumulative Co-occurrence Index (CCI)%%%
clc,clear;
close all;
%%% Provide path of the folder containing Compute_Ripple_Co_Occurance_Stat.m%%%
addpath('..............\CCI');
%%%Input Sampling Frequency in Hz%%%
Sampling_Freq=32000;
%%%Set maximum possible tolerance of time elapsed between two cooccuring HFEs in milli Seconds %%%
Threshold_in_Milli_Sec=1; 
%%% Sample indices of ripple peaks in different channels %%%
TTX_CW2_D1_Channel_1_Indices_of_Rpl_Peaks=readmatrix('TTX_CW2_D1_Channel_1_Indices_of_Rpl_Peaks.txt');
TTX_CW2_D1_Channel_2_Indices_of_Rpl_Peaks=readmatrix('TTX_CW2_D1_Channel_2_Indices_of_Rpl_Peaks.txt');
TTX_CW2_D1_Channel_3_Indices_of_Rpl_Peaks=readmatrix('TTX_CW2_D1_Channel_3_Indices_of_Rpl_Peaks.txt');
TTX_CW2_D1_Channel_4_Indices_of_Rpl_Peaks=readmatrix('TTX_CW2_D1_Channel_4_Indices_of_Rpl_Peaks.txt');
TTX_CW2_D1_Channel_5_Indices_of_Rpl_Peaks=readmatrix('TTX_CW2_D1_Channel_5_Indices_of_Rpl_Peaks.txt');
%%% Compute CCI %%%
Linear_Track_TTX_CW2_D1_Ripple_Co_Occurance_Stat=Compute_Ripple_Co_Occurance_Stat(TTX_CW2_D1_Channel_1_Indices_of_Rpl_Peaks,TTX_CW2_D1_Channel_2_Indices_of_Rpl_Peaks,TTX_CW2_D1_Channel_3_Indices_of_Rpl_Peaks,TTX_CW2_D1_Channel_4_Indices_of_Rpl_Peaks,TTX_CW2_D1_Channel_5_Indices_of_Rpl_Peaks,Sampling_Freq,Threshold_in_Milli_Sec)
