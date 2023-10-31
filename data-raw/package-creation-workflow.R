# Workflow to create a minimal package

# Create the package; use a path that is appropriate for your system. In this case `samplr` is the name of the package; use a 
# name that is appropriate for the package you are creating.
usethis::create_package("C:/Users/paezha/Desktop/TEMP/samplr")

# Initialize the description of the package; edit the file with all relevant details.
usethis::use_description()

# Initialize a file to document the package; this file will be created in the folder `/R`.
usethis::use_package_doc()

# Initialize a license; check other alternatives like `usethis::use_ccby_license()`.
usethis::use_mit_license()

# Turn the project into a git repository.
usethis::use_git()

# Use GitHub if desired.
usethis::use_github()

# At this point you can check the project to see that everything is in order.
devtools::check()

# Initialize a folder for your raw data; this will create a folder `/data-raw` and a file called DATA.R. You can delete this file.
usethis::use_data_raw()

# Copy the files `Energy and Emissions.xlsx` and `process-energy-and-emissions.Rmd` to `/data-raw`
# Run all the code in the notebook `process-energy-and-emissions.Rmd`; notice that at the end of that file
# there `usethis::use_data()` is used to save the data in R native format. The data object will be placed in 
# folder `/data`.

# As you add datasets to your package, create notebooks to process them and then `usethis::use_data()` to add them
# to the `/data` folder.

# Copy the following text as is to the documentation file in folder `/R`.

# BEGINNING OF TEXT TO COPY

#' Energy and emissions data for world countries.
#'
#' A dataset containing information about 188 world countries, including
#' population estimates, GDP per capita, energy consumption estimates,
#' and CO_2 emissions.
#'
#' @format A data frame with 188 rows and 11 variables:
#' \describe{
#'   \item{Country}{Names of countries as factor}
#'   \item{Area}{Surface land area of country in sq.km}
#'   \item{Population}{Population estimates}
#'   \item{PYear}{Year of the population estimate}
#'   \item{GDPPC}{Nominal GDP per capita in US dollars}
#'   \item{bblpd}{Estimated energy consumption in barrels of oil per day}
#'   \item{EYear}{Year of the energy consumption estimate}
#'   \item{CO2_1995}{CO_2 emissions in kilotonnes per year - 1995 estimates}
#'   \item{CO2_2005}{CO_2 emissions in kilotonnes per year - 2005 estimates}
#'   \item{CO2_2015}{CO_2 emissions in kilotonnes per year - 2015 estimates}
#'   \item{Continent}{Names of continents as factor}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name energy_and_emissions
#' @usage data(energy_and_emissions)
#' @source Energy Consumption Data Source: CIA Factbook, Refined Oil Products Consumption (https://www.cia.gov/library/publications/the-world-factbook/rankorder/2246rank.html) Accessed: September 5, 2017
#' @source CO2 Emissions Data Source: EC Emissions Database for Global Atmospheric Research (http://edgar.jrc.ec.europa.eu/overview.php?v=CO2ts1990-2015) Accessed: September 5, 2017
#' @source GDP Data Source: Wikipedia (https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)_per_capita) Accessed: September 5, 2017
#' @source Continent names were extracted from package \code{countrycode} (https://CRAN.R-project.org/package=countrycode)
#' @examples
#'  data(energy_and_emissions)
#'  GDPPC <- energy_and_emissions$GDPPC
"energy_and_emissions"

# END OF TEXT TO COPY

# REMEMBER TO CHANGE THE VERSION NUMBER IN THE DESCRIPTION FILE IF NEEDED.

# Run the following function to create the documentation; the documentation goes in folder `/man`.
devtools::document()

# As you add data and/or functions to your package you need to re-run `devtools::document()` to update the documentation.

# After making changes or updating the package you can run your checks again.
devtools::check()

# This command will build the package
devtools::build()

# Create a README file for your repository. Edit the file as appropriate AND KNIT.
usethis::use_readme_rmd()

# If you are using GitHub and would like to create a web page for your package, use the following function.
usethis::use_pkgdown_github_pages()

# Push your updated project to GitHub. 