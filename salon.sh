#!/bin/bash

PSQL="psql -t --username=freecodecamp --dbname=salon -c"

AVAILABLE_SERVICES=$($PSQL "select service_id, name from services")

echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU() {

  if [[ $1 ]]; then
    echo -e $1
  else
    echo -e "Welcome to My Salon, how can I help you?\n"
  fi
  
  echo "$AVAILABLE_SERVICES" | sed "s/ |//g" | while read SERVICE_ID SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  read SERVICE_ID_SELECTED
  SELECTED_SERVICE=$($PSQL "select name from services where service_id=$SERVICE_ID_SELECTED")

  if [[ -z $SELECTED_SERVICE ]]; then
    MAIN_MENU "\nI could not find that service. What would you like today?"
  else
    DO_SERVICE
  fi

}

DO_SERVICE() {
  echo $SERVICE_ID $SERVICE_ID $SERVICE_ID
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($PSQL "select name from customers where phone='$CUSTOMER_PHONE'")
  
  if [[ -z $CUSTOMER_NAME ]]; then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    RESULT_INSERT_CUSTOMER=$($PSQL "insert into customers(phone, name) values('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
  fi

  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

  echo -e "\nWhat time would you like your $SELECTED_SERVICE, $CUSTOMER_NAME?"
  read SERVICE_TIME
  RESULT_INSERT_APPOINTMENT=$($PSQL "insert into appointments(customer_id, service_id, time) values($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "\nI have put you down for a $SELECTED_SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
}

MAIN_MENU

