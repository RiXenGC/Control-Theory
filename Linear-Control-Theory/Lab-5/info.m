%%Simulink%%%%
% 
% Понятие "корневой годограф"
% W(s) = A(s)/B(s) - передаточная функция
% D(s) = B(s) + k * A(s) - корневой годограф
% k * A(s) + B(s) = 0
% [ k * W(s) + 1 = 0 ] - уравнение корневого годографа
% (Самая простая структурная схема с W(s) * k и ООС)
% 
% Крестики - полюса передаточной функции
% Если хотя бы одна точка в Re на АФЧХ (1 и 4 четверти), то система НЕУСТОЧИЙВА
% Если хотя бы одна на оси Re = 0, то НА ГРАНИЦЕ УСТОЙЧИВОСТИ

% !Чем дальше полюса от мнимой оси, тем больше время переходного процесса!

%% Синтез корневого годографа %%%%%%%%%%%
% Делаем с помощью Control System Designer (Edit architecture) (Root Locus
% Editor)
% - Варьируем параметр С (другие не меняем); G - неизменяемое воздействие
% - Игнорируем все возмущающие воздействия
% - Bode editor -> Fixed blocks
% - Можем перемещать точки и отслеживать изменения реакции системы на
% различное воздействие
% - ПКМ по необходимому графику -> New Design Requirement -> выставляем
% требования к системе 
%
% 
% Model Linearizer - вывод общей передаточной функции системы



%% Переменное состояние с-мы %%%%%%%%%%
% 
% F(u, y) = 0; u - input; y - output
% u'' + 2u' + u = y + y' or sys = { x' = A(t)*x + B(t)*u ; y = C(t)*x + D(t) * u }-модель системы переменных состояний
% x = (x1, x2...xn)^(T) - вектор состояния системы
%
% Вход системы:
% U = ( UL , UR )
% UL - left engine; UR - right engine
% Выход системы: 
% Y = ( V , w )
%
% Значения x - ЛНЗ (один x нельзя выразить через другой)
%
%
%% Определение скоростей и координат системы
% e^(A*theta) - посмотреть для скоростей
% PoE formula
% Screw motion
%
%