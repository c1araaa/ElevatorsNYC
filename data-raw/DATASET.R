library(tidyverse)
ElevatorsNYC <-
  readr::read_csv("elevators.csv") %>%
  janitor::clean_names() %>%
  rename(
    device_number = dv_device_number,
    status_description = dv_device_status_description,
    lastdob_insp_disp = dv_lastper_insp_disp,
    lastdob_insp_date = dv_lastper_insp_date, #YYYYMMDD format
    approval_date = dv_approval_date,
    manufacturer = dv_manufacturer,
    travel_distance = dv_travel_distance,
    speed = dv_speed_fpm,
    capacity = dv_capacity_lbs,
    car_buffer_type = dv_car_buffer_type,
    governor_type = dv_governor_type,
    machine_type = dv_machine_type,
    safety_type = dv_safety_type,
    mode_operation = dv_mode_operation,
    status_date = dv_status_date,
    floor_from = dv_floor_from,
    floor_to = dv_floor_to
  ) %>%
  select(-x27) %>%
  mutate(
    capacity = as.numeric(capacity),
    travel_distance = as.numeric(travel_distance),
    floor_from = as.numeric(floor_from),
    floor_to = as.numeric(floor_to),
    floor_diff = floor_to-floor_from
  ) %>%
  dplyr::na_if("=A<c2><a2>")
ElevatorsNYC$safety_type <- iconv(ElevatorsNYC$safety_type, "latin1", "ASCII", "")
usethis::use_data(ElevatorsNYC)
