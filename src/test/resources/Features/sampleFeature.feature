Feature: Verifying Adactin Website

  Scenario Outline: Validating login details with valid credentials
    Given User is on the login page
    When User should login using "<username>" and "<password>"
    And User should validate successful login verifying "Hello viicckkiiee!"
    Then User should search hotel using "<location>" , "<hotelName>" , "<roomType>" , "<noOfRoom>" , "<dateIn>" , "<dateOut>", "<adultCount>" and "<childCount>"
    When User should select hotel
    When User should book hotel using "<firstName>" , "<lastName>" , "<address>", "<ccNo>" , "<ccType>" , "<expMonth>" , "<expYear>" and "<cvv>"
    Then user should get orderId

    Examples: 
      | username    | password | location  | hotelName      | roomType | noOfRoom | adultCount | childCount | dateIn     | dateOut    | firstName | lastName | address | ccNo             | ccType | expMonth | expYear | cvv |
      | viicckkiiee | GYM632   | Sydney    | Hotel Creek    | Standard | 2 - Two  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Vignesh   | V        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Melbourne | Hotel Creek    | Deluxe   | 2 - Two  | 1 - One    | 2 - Two    | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Paris     | Hotel Sunshine | Deluxe   | 1 - One  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Adelaide  | Hotel Creek    | Deluxe   | 2 - Two  | 1 - One    | 2 - Two    | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | New York  | Hotel Cornice  | Deluxe   | 2 - Two  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Melbourne | Hotel Creek    | Standard | 1 - One  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Melbourne | Hotel Hervey   | Deluxe   | 2 - Two  | 2 - Two    | 1 - One    | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Sydney    | Hotel Creek    | Deluxe   | 2 - Two  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Melbourne | Hotel Sunshine | Deluxe   | 2 - Two  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
      | viicckkiiee | GYM632   | Melbourne | Hotel Creek    | Deluxe   | 2 - Two  | 2 - Two    | 0 - None   | 22/06/2022 | 22/06/2022 | Boopathi  | A        | chennai | 1111111111111111 | VISA   | June     |    2022 | 123 |
