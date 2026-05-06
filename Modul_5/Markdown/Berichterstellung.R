#-------------------------------------------------------------------------------
# Author        : Fabian Pribahsnik, Dietmar Hareter
# Creation Date : 06.05.2026
# Source System : R version 4.5.2 (2025-10-31)
#-------------------------------------------------------------------------------


#------------------------------------------------------------------------------- 
#- [ Install and load required packages, determine basis informations ]
#------------------------------------------------------------------------------- 

pacman::p_load(rmarkdown)
options(encoding = 'UTF-8')

main_directory <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd (main_directory)


#------------------------------------------------------------------------------- 
#- [ Start of data preparation ]
#------------------------------------------------------------------------------- 

# Download neuer Datensätze
# Aufbereitung der Daten
# Prüfen, ob ein neuer Bericht erstellt werden soll (start_report = TRUE) oder nicht (start_report = FALSE)

start_report <- TRUE


#------------------------------------------------------------------------------- 
#- [ Start report ]
#------------------------------------------------------------------------------- 

if (start_report) {
  rmarkdown::render("Bericht.Rmd", output_format = "html_document", envir = new.env())

  rmarkdown::render("Bericht.Rmd", output_format = "pdf_document", envir = new.env())
}