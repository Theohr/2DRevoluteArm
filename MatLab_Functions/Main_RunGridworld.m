function Main_RunGridworld()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% all rights reserved
% Author: Dr. Ian Howard
% Associate Professor (Senior Lecturer) in Computational Neuroscience
% Centre for Robotics and Neural Systems
% Plymouth University
% A324 Portland Square
% PL4 8AA
% Plymouth, Devon, UK
% howardlab.com
% 22/09/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% run maze experiments
% you need to expand this script to run the assignment

close all
clear all
clc

qvall = [1.6752    1.6752    0.0385    0.0649;
   -8.1388    1.8613    0.0565    1.5076;
    2.0681   -7.9319    0.0852    1.6752;
    2.2979    2.0906    0.0683    1.3787;
    2.8369    2.8369    0.0618    2.2979;
    3.1521    2.5532    0.0938    2.5532;
    2.8369    2.2979    0.0723    2.8369;
    2.5531    2.0681    0.0568    2.5532;
    2.2979    0.0414    0.0652    2.2979;
    1.8613   -8.1387    1.5076    0.0661;
   -7.4615    2.0681    1.4511    1.5840;
   -8.1387    2.2979    1.8613   -8.1387;
    2.5532    2.5532   -7.9319    2.0681;
    2.8369    2.8369    2.2979    2.2979;
   -6.8479    3.1521    2.5532    2.5532;
    3.5023    2.8369    2.8369    2.8369;
   -6.8523    2.5532    2.5532    3.1521;
   -7.1680    2.2979    2.2978    2.8369;
    2.5532    0.0545    2.0681    2.5532;
    2.0681   -7.9319    1.6752    0.0272;
    2.2979   -7.7489   -7.6877    1.8613;
   -5.9753    1.2573    2.0681   -5.4302;
   -7.1631    2.8369    2.2979   -8.1388;
    3.1521   -6.8479    2.5532    2.5532;
    3.4970    3.5023    2.7431    2.8113;
    3.8915   -6.8479    3.1521   -6.8479;
    3.2062   -6.3347    2.8369    3.5023;
    3.1521    2.5532    2.0335   -6.1219;
    2.8369    0.0715    2.2979   -7.1631;
   -7.7021    2.2979    1.8613    0.0360;
    2.5532   -7.9319   -7.9319    2.0681;
   -6.7308   -6.6265   -5.7114    2.2979;
    3.0428    3.1521    2.4147   -7.4235;
   -6.4977    3.5023    2.8369   -7.1631;
   -6.1085    3.8915   -6.8479    3.1521;
    4.3239    3.5023    3.5023    3.5023;
    3.8915    3.1521   -6.8531    3.8915;
    3.5023    2.8369   -7.1631    3.5023;
    3.1521    0.0328    2.5532    3.1521;
    2.5532    2.4820    1.9962    0.0368;
    2.8369   -7.7021    2.2979   -7.7021;
    1.8703    2.5044   -5.5011    2.5532;
    3.5023   -6.5717   -7.1616   -7.6999;
    3.8915   -5.9705    3.1521    3.0945;
    4.3235    4.3239    3.5022   -6.5735;
    4.8043    3.8915    3.8915   -6.1085;
   -5.6761    3.5023    3.5023    4.3239;
    3.1521    3.1521    3.1521    3.8915;
    2.8369    0.0328    2.8369    3.5023;
    2.8369    2.8369   -7.7021    0.0756;
    3.1521    3.1521    2.5532    2.5532;
    3.5023    3.5012   -7.7021    2.8368;
    3.8915    3.8915    3.1521    3.1521;
   -5.6761    4.3239   -6.4978    3.5023;
   -5.1957    4.8043   -6.1085    3.8915;
    5.3381   -5.6761    4.3239    4.3239;
   -4.0689    3.1520    3.8902    4.8043;
   -3.4099    2.8368    3.5023   -5.6761;
   -2.8271    0.0279    3.1521    3.1521;
    3.1521    3.1521    2.5532    0.0302;
    3.5023    3.5023    2.8369    2.8369;
    3.8915    3.8915    3.1521    3.1521;
    4.3239   -5.6761    3.5022    3.5023;
    4.8043   -5.1893    3.8471    3.7229;
    5.3381    5.3381    4.3239   -5.6761;
    5.9312   -4.0688    4.8043   -5.1957;
    6.5903   -3.4101   -5.6754    5.3381;
    7.3225   -3.7412    1.5569   -3.3098;
    8.1361    0.0450    2.8369   -2.8323;
   -7.1632    3.5023    2.8369    0.0669;
    3.8915    3.8915    3.1521    3.1521;
   -5.6761    4.3239    3.5023    3.5023;
   -5.1957    4.8043    3.8915    3.8915;
   -4.6619    5.3381   -5.6761    4.3239;
   -4.0688    5.9312   -5.1957    4.8043;
    6.5903    6.5903    5.3381    5.3381;
   -2.6775    7.3225   -4.0688    5.9312;
    8.1361    8.1361   -3.4097    6.5903;
    9.0402    0.0333   -2.6775    7.3225;
    3.4786    3.0854    3.1521    0.0302;
    4.3239   -5.6761    3.5023   -7.1461;
    4.8043   -5.1791    3.8840    3.8557;
    5.3381   -4.6591    4.3239   -5.6054;
    5.9312   -4.0670    4.8043   -5.1964;
    6.5903    6.5903    5.3381   -4.6619;
    7.3225   -2.6775    5.9312   -4.0688;
    8.1361    8.1361    6.5903    6.5903;
    9.0402    9.0402    7.3225   -2.6775;
   10.0446    0.0614    8.1361    8.1361;
    0.0236    4.3239   -7.1229    0.0727;
    0.0189    4.8043    3.8915    3.8915;
    0.0556    5.3381   -5.6761    4.3239;
    0.0454    5.9312   -5.1957    4.8043;
    0.0713    6.5903   -4.6619    5.3381;
    0.0352    7.3225   -4.0688    5.9312;
    0.0420    8.1361    6.5903    6.5903;
    0.0740    9.0402   -2.6775    7.3225;
    0.0585   10.0446    8.1361    8.1361;
    0.0725    0.0797    0.0376    0.0496];


% YOU NEED TO DEFINE THESE VALUES
limits = [-0.77 -0.3; -0.3 0.27;];

% build the maze
maze = CMazeMaze10x10(limits);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOU NEED TO DEFINE THESE VALUES
% init the q-table
minVal = 0.01;
maxVal = 0.1;
maze = maze.InitQTable(minVal, maxVal);

% test values
state = 1;
action = 4;

% draw the maze
%maze.DrawMaze();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this will be used by Q-learning as follows:
q = maze.QValues(state, action);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOU NEED TO FINISH OFF THIS FUNCTION
% get the reward from the action on the surrent state
% this will be used by Q-learning as follows:
reward = maze.RewardFunction(state,action);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOU NEED TO FINISH OFF THIS FUNCTION
% build the transition matrix
maze = maze.BuildTransitionMatrix();
% print out values

% get the next state due to that action
% this will be used by Q-learning as follows:
% resultingState = maze.tm(state, action);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOU NEED TO FINISH OFF THIS FUNCTION
% test random start
startingState = maze.RandomStatingState();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     RUN Q-LEARNING ALGORITHM
%     %Set trials
%     trials = 100;
%     %Set episodes
%     episodes = 1000;
%     % Set Discount rate
%     gamma = 0.9;
%     % Set Learning rate
%     alpha=0.2;
%     %Explore possibility
%     explore = 0.1;
%     %Run Q-Learning Algorithm
%     [steps, qval] = maze.Trials(trials,episodes,alpha,gamma,explore);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%RUN MAZE ANIMATION

maze.QValues = qvall;
% plot(steps);
solution = maze.SolveMaze(maze.QValues)
%maze.DrawMazeSolution(solution);
% maze.plotSteps(steps);
path = maze.getPathXY(solution);

armLen = [0.4 0.4]; %Arm Lenghts  0.4
origin = [0 0]; %Origin points
    
%[P1,P2] = MoveArmEndPoint(path,origin,armLen);
P1 = [-0.4862    0.1166;
   -0.4781    0.1463;
   -0.4670    0.1785;
   -0.4524    0.2128;
   -0.4391    0.2392;
   -0.4168    0.2762;
   -0.3896    0.3133;
   -0.3578    0.3492;
   -0.3218    0.3826;
   -0.2828    0.4123;
   -0.2424    0.4373;
   -0.2001    0.4582;
   -0.1556    0.4752;
   -0.1098    0.4878;
   -0.0632    0.4960;
   -0.0166    0.4997;
    0.0293    0.4991;
    0.0739    0.4945;
    0.1168    0.4862;];
P2= [
   -0.7482   -0.2713;
   -0.7482   -0.2137;
   -0.7012   -0.2137;
   -0.6542   -0.2137;
   -0.6542   -0.1567;
   -0.6072   -0.1567;
   -0.6072    -0.09975;
   -0.5603    -0.09975;
   -0.5132    -0.09975;
   -0.5132    -0.04275;
   -0.5132    0.01425;
   -0.5132    0.07125;
   -0.5132    0.1283;
   -0.5132    0.1853;
   -0.5132    0.2423;
   -0.4662    0.2423;
   -0.4193    0.2423;
   -0.3587    0.2437;
   -0.3188    0.2407];
 maze.DrawMazeWithArm(solution,P1,P2,origin);

end
