########################################
#  0701 - Problems vs Data Selection   #
#        TP 07 - 1/1                   #
########################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


## Powerpoint Presentation
####################################

# Please, do not spent useless time on the design of the slides.

# Use : 
#   * https://slidesgo.com/theme/sustainable-agriculture-project-proposal#search-argiculture&position-1&results-20&rs=search
#   * https://slidesgo.com/theme/agribusiness-company-profile#search-argiculture&position-3&results-20&rs=search
#   * https://slidesgo.com/theme/agronomy-business-plan#search-argiculture&position-6&results-20&rs=search
#   * https://slidesgo.com/theme/agricultural-technician-cv#search-argiculture&position-4&results-20&rs=search
#   * https://slidesgo.com/theme/cute-agriculture-theme#search-farming&position-4&results-130&rs=search
#   * https://slidesgo.com/theme/agriculture-infographics-creative#search-farming&position-3&results-130&rs=search
#   * https://slidesgo.com/theme/farm-production-thesis#search-farming&position-6&results-130&rs=search


# Try to use a very structured approach in your presentation:

    # 1/ Intro / Context (1/5 slides)

    #   * What is the context of the presentation?
    #   * What is the problematic of the presentation?
    #   * What are the main objectives of the presentation?
    #   * What are the main questions that we want to answer with this presentation?
    #   * Why ? / What is the relationship with real world problems?

    # 2/  Dataset (3/7 slides)

    #   * What is the dataset about?
    #   * What kind of dataset do we have?
    #   * Where does it come from? 
    #   * What are the main characteristics of the dataset?
    #   * What pre-processing was done on the dataset? 
    #   * What are the main challenges of the dataset?
    #   * What are the main variables of the dataset?
    #   * What are the most relevant columns you choose to work with? Why? and How did your perform the selection?
    #   * What are the most important variables in the dataset regarding the questions or problems you have identified?
    #   * What kind of data cleaning did you perform on the dataset?

    # 3 / Analysis (7/12)

    #   * First Tour of the dataset

    #   * Generic Data Exploration : 
    #       * Summary of the dataset
    #       * Structure of the dataset
    #       * Missing values
    #       * Correlation between the variables
    #       * etc.

    #   * For each question / problem ==> 1 or 2 slide(s):
    #       * state the question clearly
    #       * present at least one visualization
    #       * try to apply statistical tests to corohorate your analyses
    #       * write bullet points with the main comments (don't be too wordy)
    #       * try to go deeper on your analysis by corroborating other data

    #   * As a general rule, adopt a following strategy:
    #       * start with a univariate analysis (e.g. manager's age)
    #       * develop one or more bi-variate analyses (age vs. gender, age vs. region, age vs. category)
    #       * try to develop multivariate analyses (age vs gender vs sector, or category vs region vs financial health)

    # 4 / Conclusion (1/2 slides )

    #   * try to summarize the results of your analysis
    #   * be concise and precise
    #   * you'll get a good conclusion if you come up with something interesting, surprising or useful
    #   * clearly state the limits of your analysis: do you have any doubts about the data or your analysis?
    #  * open up to other issues, what else needs to be explored, etc. etc.


## Expectations
####################################

# * Analysis : You must at least produce : 
#     * a univariate analysis 
#     * a bivariate analysis 
#     * a multi (tri) variate analysis

#  * Viz : You must at least produce : 
#     * a barplot 
#     * a box plot
#     * a pie plot
#     * a scatter plot


## For now
#################################################

# You are late if : 

    # * you don't have your team (3 per group)
    # * the dataset is not loaded on your laptop
    # * you don't have a R studio
    # * You're not comfortable with all the online code
    # * You can't remember the shape of the dataframe
    # * You're not able to list the 4 types of information we have in the dataset.


## Finding the right approach / problem
######################################################################""

# What kind of data do we have :

#   * financial information
#   * production type
#   * geography
#   * evt
#   * manager type
#   * size of exploitation
#   * surface


# Please read the news :

#   * https://www.lemonde.fr/en/france/article/2022/07/17/we-don-t-even-have-time-to-take-a-breath-french-farmers-struggle-with-the-effects-of-climate-change-and-inflation_5990412_7.html
#   * https://www.rfi.fr/en/france/20240124-why-are-french-farmers-angry-and-who-will-reap-the-rewards
#   * https://fortune.com/europe/2024/01/30/france-farmer-protests-paris-siege-barricade-putin-food-crisis-eu/
#   * https://www.theguardian.com/world/2024/jan/29/french-farmers-drive-tractors-towards-paris-in-blockade-threat
#   * https://www.france24.com/en/europe/20240123-why-french-farmers-are-up-in-arms-fuel-hikes-green-regulation-eu-directives
#   * https://www.france24.com/en/europe/20240202-protesting-french-farmers-begin-lifting-blockades-after-govt-promises-on-aid


# Ask some random questions :

#   * what are te top 10% best financial farms différent from the other ?
#   * is there a region impact of financial health ?
#   * is the manager situation detetrminant in the situation of the  farm
#   * about individuals ? / about regions ? / about production type ? / abourt evt ? / about finance ? 
#   * ==> choose at least One OR Two best features at the top


# 2 main types of questions :

#   * Open  : "what is the  impact of ..."?
#   * Close :  "Is it true to say / Is there any correlation between ..."
#   * Of course open and closed can (and should ? ) be mixed in your study