** Logistic Regression Model **

This model is to measure the impact of various factors like Age, Job, Marital Status, Housing etc on term deposit subscription in a bank. I did this analysis alone. I built a logistic regression model to get the contribuiton of each of the factors. Based on the model results I concluded that how effective was the campaign which lead to a conversion of term deposit. The second part of this analysis is to predict the percent of subscription to term-deposit based on the new bank data. Also, this analysis tells model accuracy, fit and precision.


Documents attached in this folder:

1. Input data files (bank.csv & bank_full.csv)
2. SAS code to run the model
3. Output word file


How to run the code?

Step 1. Please download the bank.csv & bank_full.csv files in your local system.
Step 2. Note the file path where you have saved the file.
Step 3. Set the 'libname' as the name of your drive/folder where the files are saved(libname hw4 "F:/Bank_TermDeposit_Subscription").Mention the path in the beginning of code where 'proc import datafile' is written. It's the sixth line of code.
Step 4. Please change the "\" to "/" in 'libname hw4 "F:/Bank_TermDeposit_Subscription"' line otherwise the code will throw error.
Step 5. Yes, now you are ready to run the code.
Step 6. After the code is run successfuly there be an output file generated in SAS Framework itself.