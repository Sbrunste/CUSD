#EADMS Functions

#' Compute_Elementary
#'
#' This function performs all computations needed for Elem, assuming you loaded the data in correctly.
#' @param Elem This is the data received from exporting the Elementary ad-hoc in Infinite Campus
#' @keywords CUSD Elem
#' @export
#' @examples
#' Compute_Elementary(Elem)

Compute_Elementary <- function(Elem)
{
  #Step 1: Fill in blanks with EO in LEP status column
  Elem$EngProf <- as.character(Elem$EngProf)
  Elem$EngProf[Elem$EngProf == ""] <- "EO"
  
  #Step 2: Change NOTLep to RFEP IF there is a date in the LepDate column
  
  for (i in 1:length(Elem$EngProf))
  {
    if (Elem$EngProf[i] == "Not LEP")
    {
      if (Elem$LEPdt[i] != "")
      {
        Elem$EngProf[i] <- "RFEP"
      }
    }
  }
  
  #Step 3: Change all the Not lep to IFEP if there is not a date in the Lepdate column
  
  for (i in 1:length(Elem$EngProf))
  {
    if (Elem$EngProf[i] == "Not LEP")
    {
      if (Elem$LEPdt[i] == "")
      {
        Elem$EngProf[i] <- "IFEP"
      }
    }
  }
  
  #Step 4: Fill in the blanks for Migrant and Special Ed Status with 0's
  #For this particular data set, the migrant status is already in 0/1 format, so I will only do this for Special Ed Status
  Elem$SpecialEdStatus[is.na(Elem$SpecialEdStatus)] <- 0
  
  #Step 5: Change NA's for GATE to 0
  Elem$GATE[is.na(Elem$GATE)] <- 0
  
  #Step 6: Export
  setwd("../Desktop")
  write.csv(Elem, "Elem.csv")
  
}


#' Compute_Secondary
#'
#' This function performs all computations needed for Secondary, assuming you loaded the data in correctly.
#' @param Secondary This is the data received from exporting the Secondary ad-hoc in Infinite Campus
#' @keywords CUSD Secondary
#' @export
#' @examples
#' Compute_Secondary(Secondary)

Compute_Secondary <- function(Secondary)
{
  #Step 1: Fill in blanks with EO in LEP status column
  Secondary$EngProf <- as.character(Secondary$EngProf)
  Secondary$EngProf[Secondary$EngProf == ""] <- "EO"
  
  #Step 2: Change NOTLep to RFEP IF there is a date in the LepDate column
  
  for (i in 1:length(Secondary$EngProf))
  {
    if (Secondary$EngProf[i] == "Not LEP")
    {
      if (Secondary$LEPdt[i] != "")
      {
        Secondary$EngProf[i] <- "RFEP"
      }
    }
  }
  
  #Step 3: Change all the Not lep to IFEP if there is not a date in the Lepdate column
  
  for (i in 1:length(Secondary$EngProf))
  {
    if (Secondary$EngProf[i] == "Not LEP")
    {
      if (Secondary$LEPdt[i] == "")
      {
        Secondary$EngProf[i] <- "IFEP"
      }
    }
  }
  
  #Step 4: Fill in the blanks for Migrant and Special Ed Status with 0's
  #For this particular data set, the migrant status is already in 0/1 format, so I will only do this for Special Ed Status
  Secondary$SpecialEdStatus[is.na(Secondary$SpecialEdStatus)] <- 0
  
  
  #Step 5: Change NA's for GATE to 0
  Secondary$GATE[is.na(Secondary$GATE)] <- 0
  
  #Step 6: Export
  setwd("../Desktop")
  write.csv(Secondary, "Secondary.csv")
  
}


#' Compute_AE
#'
#' This function performs all computations needed for AE, assuming you loaded the data in correctly.
#' @param AE This is the data received from exporting the AE ad-hoc in Infinite Campus
#' @keywords CUSD AE
#' @export
#' @examples
#' Compute_AE(AE)


Compute_AE <- function(AE)
{
  #Step 1: Fill in blanks with EO in LEP status column
  AE$EngProf <- as.character(AE$EngProf)
  AE$EngProf[AE$EngProf == ""] <- "EO"
  
  #Step 2: Change NOTLep to RFEP IF there is a date in the LepDate column
  
  for (i in 1:length(AE$EngProf))
  {
    if (AE$EngProf[i] == "Not LEP")
    {
      if (AE$LEPdt[i] != "")
      {
        AE$EngProf[i] <- "RFEP"
      }
    }
  }
  
  #Step 3: Change all the Not lep to IFEP if there is not a date in the Lepdate column
  
  for (i in 1:length(AE$EngProf))
  {
    if (AE$EngProf[i] == "Not LEP")
    {
      if (AE$LEPdt[i] == "")
      {
        AE$EngProf[i] <- "IFEP"
      }
    }
  }
  
  #Step 4: Fill in the blanks for Migrant and Special Ed Status with 0's
  #For this particular data set, the migrant status is already in 0/1 format, so I will only do this for Special Ed Status
  AE$SpecialEdStatus[is.na(AE$SpecialEdStatus)] <- 0
  #AE$SpecialEdstatus[is.na(AE$SpecialEdstatus)] <- "0"
  
  #Step 5: Change NA's for GATE to 0
  AE$GATE <- as.integer(AE$GATE)
  AE$GATE[is.na(AE$GATE)] <- 0
  
  #Step 6: Export
  setwd("../Desktop")
  write.csv(AE, "AE.csv")
}