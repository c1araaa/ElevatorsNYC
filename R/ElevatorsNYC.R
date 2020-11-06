#' Elevators for Elevators NYC
#'
#' This package contains specifications for all elevator devices
#' in New York City.
#' @docType package
#' @name ElevatorsNYC
#' @aliases ElevatorsNYC ElevatorsNYC-package
NULL

#' "ElevatorsNYC"
#'
#' A data set containing all registered elevator
#' devices in New York City as of November 2015,
#' provided by the Department of Buildings.
#'
#' @source \url{https://github.com/datanews/elevators}
#' @format A dataframe with 76,088 elements
#' \describe{
#'   \item{approval_date}{Approval date of build application (YYYY-MM-DD)}
#'   \item{bin}{Building Identification Number (BIN), a unique identifying number for each Building in NYC}
#'   \item{borough}{Borough of the elevator's location}
#'   \item{capacity}{Capacity of elevator}
#'   \item{car_buffer_type}{Type of buffer (part of the elevator breaking system)}
#'   \item{device_number}{Device number}
#'   \item{device_status}{Device status: Active (A), Dismantled (D), No Jurisdiction (J), Work in Progress (W), New York City Housing Authority (NYCHA)}
#'   \item{governor_type}{Type of governor (speed monitoring device)}
#'   \item{house_number}{House number of the elevator's location}
#'   \item{lastdob_insp_date}{Date of last periodic inspection by the Department of Buildings (YYYY-MM-DD)}
#'   \item{lastdob_insp_disp}{Comments from last periodic inspection by the Department of Buildings}
#'   \item{machine_type}{Type of machine}
#'   \item{manufacturer}{Manufacturer of the elevator}
#'   \item{mode_operation}{Mode of operation}
#'   \item{floor_from}{Floor that elevator starts from}
#'   \item{floor_to}{Floor that elevator ends at}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{safety_type}{Type of car safety}
#'   \item{speed}{Speed of elevator (in feet per minute)}
#'   \item{status_date}{Date recorded for device status (YYYY-MM-DD)}
#'   \item{status_description}{More detailed description of device status}
#'   \item{street_name}{Street name of the elevator's location}
#'   \item{tax_block}{Tax block number of the elevator's location. Assigned by the Department of Finance}
#'   \item{tax_lot}{Tax lot number of the elevator's location. Assigned by the Department of Finance}
#'   \item{travel_distance}{Travel distance of the elevator}
#'   \item{zip_code}{Zip code of the elevator's location}
#' }
"ElevatorsNYC"
