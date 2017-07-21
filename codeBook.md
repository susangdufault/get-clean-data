<h3>CODE BOOK FOR COURSERA GETTING AND CLEANING DATA FINAL ASSIGNMENT</h3>			
				
This code book describes the tidy dataset in the "averagedata.txt" file created by running the R code
in the "run_analysis.R" file. For more information see the README.md file.
				
<h4>Data Processing for this Assignment</h4>

-The data were dowloaded from
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip				

-Test and training datasets were merged

-Variables for which both mean and standard deviation were provided were extracted

-The average values for these variables by study participant and by activity class were calculated	
				
<h4>Experimental Design</h4>

-Data were collected using the internal accelerometer and gyroscope of a Samsung Galaxy S II smartphone

-Thirty participants aged 19-48 wore the smartphones around their waists while performing six different activities

-The signals were captured at a constant rate of 50 Hz and filtered to remove noise

-Body acceleration and acceleration due to gravity were extracted from the total acceleration signal

-Acceleration was recorded in standard gravity units, g

-Angular velocity was recorded in units of radians/second

-Variables were normalized within the range of -1 to 1

-Additional information is available here
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones						

<h4>Variable Descriptions</h4>				
				
-subject is an integer class variable ranging from 1 to 30 that identifies the study participant

-activity is a character class variable that identifies the activity the participant was engaged in when the measurement
was taken, as follows: walking, walking upstairs, walking downstairs, sitting, standing, laying

The 66 measurement variables are of numeric class and normalized within the range of -1 to 1. These are defined as follows:
				
-frequencyofbodyaccelerationjerkmeanofxaxis: Frequency domain of body acceleration jerk signal, mean of x-axis values

-frequencyofbodyaccelerationjerkmeanofyaxis: Frequency domain of body acceleration jerk signal, mean of y-axis values

-frequencyofbodyaccelerationjerkmeanofzaxis: Frequency domain of body acceleration jerk signal, mean of z-axis values

-frequencyofbodyaccelerationjerkstandarddeviationofxaxis: Frequency domain of body acceleration jerk signal, standard deviation of x-axis values

-frequencyofbodyaccelerationjerkstandarddeviationofyaxis: Frequency domain of body acceleration jerk signal, standard deviation of y-axis values

-frequencyofbodyaccelerationjerkstanddarddeviationofzaxis: Frequency domain of body acceleration jerk signal, standard deviation of z-axis values

-frequencyofbodyaccelerationmagnitudemean: Frequency domain of body acceleration magnitude, mean value	

-frequencyofbodyaccelerationmagnitudestandarddeviation: Frequency domain of body acceleration magnitude, standard deviation	

-frequencyofbodyaccelerationmeanofxaxis: Frequency domain of body acceleration, mean of the x-axis values	

-frequencyofbodyaccelerationmeanofyaxis: Frequency domain of body acceleration, mean of the y-axis values

-frequencyofbodyaccelerationmeanofzaxis: Frequency domain of body acceleration, mean of the z-axis values

-frequencyofbodyaccelerationstandarddeviationofxaxis: Frequency domain of body acceleration, standard deviation of the x-axis values

-frequencyofbodyaccelerationstandarddeviationofyaxis: Frequency domain of body acceleration, standard deviation of the y-axis values

-frequencyofbodyaccelerationstanddarddeviationofzaxis: Frequency domain of body acceleration, standard deviation of the z-axis values

-frequencyofbodybodyaccelerationjerkmagnitudemean: Frequency domain of body acceleration jerk signal magnitude, mean value	

-frequencyofbodybodyaccelerationjerkmagnitudestandarddeviation: Frequency domain of body acceleration jerk signal magnitude, standard deviation	

-frequencyofbodybodyvelocityjerkmagnitudemean: Frequency domain of body velocity jerk signal magnitude, mean value	

-frequencyofbodybodyvelocityjerkmagnitudestandarddeviation: Frequency domain of body velocity jerk signal magnitude, standard deviation	

-frequencyofbodybodyvelocitymagnitudemeanm: Frequency domain of body velocity magnitude, mean value

-frequencyofbodybodyvelocitymagnitudestandarddeviation: Frequency domain of body velocity magnitude, standard deviation

-frequencyofbodyvelocitymeanofxaxis: Frequency domain of body angular velocity, mean of the x-axis values

-frequencyofbodyvelocitymeanofyaxis: Frequency domain of body angular velocity, mean of the y-axis values

-frequencyofbodyvelocitymeanofzaxis: Frequency domain of body angular velocity, mean of the z-axis values

-frequencyofbodyvelocitystandarddeviationofxaxis: Frequency domain of body angular velocity, standard deviation of the x-axis values

-frequencyofbodyvelocitystandarddeviationofyaxis: Frequency domain of body angular velocity, standard deviation of the y-axis values	

-frequencyofbodyvelocitystanddarddeviationofzaxis: Frequency domain of body angular velocity, standard deviation of the z-axis values

-timeofbodyaccelerationjerkmagnitudemean: Time domain of body acceleration jerk magnitude, mean value	

-timeofbodyaccelerationjerkmagnitudestandarddeviation: Time domain of body acceleration jerk magnitude, standard deviation	

-timeofbodyaccelerationjerkmeanofxaxis: Time domain of body acceleration jerk signal, mean of the x-axis values	

-timeofbodyaccelerationjerkmeanofyaxis: Time domain of body acceleration jerk signal, mean of the y-axis values	

-timeofbodyaccelerationjerkmeanofzaxis: Time domain of body acceleration jerk signal, mean of the z-axis values	

-timeofbodyaccelerationjerkstandarddeviationofxaxis: Time domain of body acceleration jerk signal, standard deviation of the x-axis values	

-timeofbodyaccelerationjerkstandarddeviationofyaxis: Time domain of body acceleration jerk signal, standard deviation of the y-axis values	

-timeofbodyaccelerationjerkstanddarddeviationofzaxis: Time domain of body acceleration jerk signal, standard deviation of the z-axis values	

-timeofbodyaccelerationmagnitudemean: Time domain of body acceleration magnitude, mean value	

-timeofbodyaccelerationmagnitudestandarddeviation: Time domain of body acceleration magnitude, standard deviation	

-timeofbodyaccelerationmeanofxaxis: Time domain of body acceleration, mean of the x-axis values	

-timeofbodyaccelerationmeanofyaxis:- Time domain of body acceleration, mean of the y-axis values	

-timeofbodyaccelerationmeanofzaxis: Time domain of body acceleration, mean of the z-axis values	

-timeofbodyaccelerationstandarddeviationofxaxis: Time domain of body acceleration, standard deviation of the x-axis values	

-timeofbodyaccelerationstandarddeviationofyaxis: Time domain of body acceleration, standard deviation of the y-axis values	

-timeofbodyaccelerationstanddarddeviationofzaxis: Time domain of body acceleration, standard deviation of the z-axis values	

-timeofbodyvelocityjerkmagnitudemean: Time domain of body angular velocity jerk signal magnitude, mean value	

-timeofbodyvelocityjerkmagnitudestandarddeviation: Time domain of body angular velocity jerk signal magnitude, standard deviation

-timeofbodyvelocityjerkmeanofxaxis: Time domain of body angular velocity jerk signal, mean of the x-axis values	

-timeofbodyvelocityjerkmeanofyaxis: Time domain of body angular velocity jerk signal, mean of the y-axis values	

-timeofbodyvelocityjerkmeanofzaxis: Time domain of body angular velocity jerk signal, mean of the z-axis values	

-timeofbodyvelocityjerkstandarddeviationofxaxis: Time domain of body angular velocity jerk signal, standard deviation of the x-axis values	

-timeofbodyvelocityjerkstandarddeviationofyaxis: Time domain of body angular velocity jerk signal, standard deviation of the y-axis values	

-timeofbodyvelocityjerkstanddarddeviationofzaxis: Time domain of body angular velocity jerk signal, standard deviation of the z-axis values	

-timeofbodyvelocitymagnitudemean: Time domain of body angular velocity magnitude, mean value	

-timeofbodyvelocitymagnitudestandarddeviation: Time domain of body angular velocity magnitude, standard deviation

-timeofbodyvelocitymeanofxaxis: Time domain of body angular velocity, mean of the x-axis values	

-timeofbodyvelocitymeanofyaxis: Time domain of body angular velocity, mean of the y-axis values	

-timeofbodyvelocitymeanofzaxis: Time domain of body angular velocity, mean of the z-axis values	

-timeofbodyvelocitystandarddeviationofxaxis: Time domain of body angular velocity, standard deviation of the x-axis values	

-timeofbodyvelocitystandarddeviationofyaxis: Time domain of body angular velocity, standard deviation of the y-axis values	

-timeofbodyvelocitystanddarddeviationofzaxis: Time domain of body angular velocity, standard deviation of the z-axis values	

-timeofgravityaccelerationmagnitudemean: Time domain of acceleration due to gravity magnitude, mean value	

-timeofgravityaccelerationmagnitudestandarddeviation: Time domain of acceleration due to gravity magnitude, standard deviation	

-timeofgravityaccelerationmeanofxaxis: Time domain of acceleration due to gravity, mean of the x-axis values 	

-timeofgravityaccelerationmeanofyaxis: Time domain of acceleration due to gravity, mean of the y-axis values 	

-timeofgravityaccelerationmeanofzaxis: Time domain of acceleration due to gravity, mean of the z-axis values 	

-timeofgravityaccelerationstandarddeviationofxaxis: Time domain of acceleration due to gravity, standard deviation of the x-axis values

-timeofgravityaccelerationstandarddeviationofyaxis: Time domain of acceleration due to gravity, standard deviation of the y-axis values

-timeofgravityaccelerationstanddarddeviationofzaxis: Time domain of acceleration due to gravity, standard deviation of the z-axis values


The dataset in the file "averagedata.txt" contains averages by study participant and by activity for the 66 variables extracted.
This file can be created by running the R code in the file "run_analysis.R"			

