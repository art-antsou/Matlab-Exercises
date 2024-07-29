% artemis_antsou_12220
load('meteo.mat','rain')


% erotima 1o
mesbroxo = mean(rain)  % calculating the mean value in row format
mesbroxo = mesbroxo(:) % Reshaping to 12X1

max_october = max(rain(:,10)) % max of column 10 - October

% erotima 3o
mean_overall = mean(mesbroxo); % we already have mean per month so we just need to find the mean of these

% erotima 4o

% Find the lowest monthly rainfall in the 7th year
% and keep also the index
% example at https://www.mathworks.com/help/matlab/ref/min.html#bupsfee
[min_rainfall, min_month] = min(rain(7,:))

% Translate the number to month 
months = {'January', 'February', 'March', 'April', 'May', 'June', 'July', ...
          'August', 'September', 'October', 'November', 'December'};
lowest_rainfall_month_for_7th_year = months{min_month}

% erotima 5o

% sum of all rain for each year divided by 12 months
mean_annual_rainfall = sum(rain, 2)/12

% erotima 6o

% sort mean annual rainfall and save indices of ordering
[sorted_mean_annual_rainfall, sorted_indices] = sort(mean_annual_rainfall, 'descend')

% use these indices to sort years 1 to 10
years = (1:size(rain, 1))'
sorted_years = years(sorted_indices)

% erotima 7o

% edw i erwtisi mperdevei ligo giati leei kathe etous 
% opote stin arxi nomiza ithele tin sinoliki vroxoptwsi 
% Ianouariou, Flevari, Martiou kai Apriliou kai meta to athroisma ana
% xronia. Alla to 1x4 bgainei an kanoume to athroisma ana mines (4)

const_months = 4; % we need the first 4 months
num_years = size(rain,1); % the number of years in the table
total_rainfall_last3_years = sum(rain(num_years-2:num_years, 1:4), 1) % sum of 4 first month of the last 3 years by month
total_rainfall_last3_years_rounded = round(total_rainfall_last3_years) % round the results to the closest integer

% erotima 8o

rainfall_greater_than_50 = sum(rain > 50, 'all') % sum of months with values greater than 50

% erotima 9o

% Identify the elements that are either less than 20 mm or greater than 200 mm
extreme_conditions = (rain < 20) | (rain > 200)

% Find the row and column indices of these elements
[row, col] = find(extreme_conditions)

% Extract the corresponding rainfall values
val = rain(extreme_conditions)

extreme_rainfall_table = [row, col, val]