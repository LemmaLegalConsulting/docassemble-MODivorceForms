Feature: Eligibility kickouts

  @kickout
Scenario: Neither spouse has lived in Missouri 90 days: tool stops with a clear message
  Given the max seconds for each step is 120
  And I start the interview at "main.yml"
  And the user gets to "jurisdiction_kickout" with this data:
    | var | value | trigger |
    | acknowledged_information_use | True |  |
    | al_intro_screen | True |  |
    | case_type | Divorce |  |
    | marriage.is_broken | True |  |
    | marriage.can_be_preserved | False |  |
    | in_bankruptcy | False |  |
    | has_children | True |  |
    | minor_children | True |  |
    | minor_children_before_marriage | False |  |
    | child_outside_marriage | False |  |
    | pregnant | False |  |
    | case.filed | user0_filed |  |
    | active_case | False |  |
    | is_case_contested | uncontested |  |
    | users[0].address.address | 123 Main St |  |
    | users[0].address.unit | Sample Apartment |  |
    | users[0].address.city | St. Louis |  |
    | users[0].address.state | MO |  |
    | users[0].address.zip | 63101 |  |
    | users[0].address.country | US |  |
    | users[0].phone_number | (617) 555-1212 |  |
    | users[0].email | test@example.com |  |
    | x.mo_length_of_residence_choice | less_than_4 | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_days | 1 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | less_than_4 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_days | 1 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | less_than_4 | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_days | 1 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | less_than_4 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_days | 1 | other_parties[0].mo_length_of_residence_choice |

  @kickout
Scenario: Bankruptcy pending: tool stops with a clear message
  Given the max seconds for each step is 120
  And I start the interview at "main.yml"
  And the user gets to "bankruptcy_kickout" with this data:
    | var | value | trigger |
    | acknowledged_information_use | True |  |
    | al_intro_screen | True |  |
    | case_type | Divorce |  |
    | marriage.is_broken | True |  |
    | marriage.can_be_preserved | False |  |
    | in_bankruptcy | True |  |

  @kickout
Scenario: Custody-only case: tool stops and points to the Missouri courts
  Given the max seconds for each step is 120
  And I start the interview at "main.yml"
  And the user gets to "child custody kickout" with this data:
    | var | value | trigger |
    | acknowledged_information_use | True |  |
    | al_intro_screen | True |  |
    | case_type | Custody |  |

  @kickout
Scenario: Marriage can be preserved: tool stops (legal separation is out of scope)
  Given the max seconds for each step is 120
  And I start the interview at "main.yml"
  And the user gets to "legal separation kickout" with this data:
    | var | value | trigger |
    | acknowledged_information_use | True |  |
    | al_intro_screen | True |  |
    | case_type | Divorce |  |
    | marriage.is_broken | True |  |
    | marriage.can_be_preserved | True |  |

  @kickout
Scenario: Child born outside the marriage: tool stops and recommends an attorney
  Given the max seconds for each step is 120
  And I start the interview at "main.yml"
  And the user gets to "Child Born Outside of Marriage" with this data:
    | var | value | trigger |
    | acknowledged_information_use | True |  |
    | al_intro_screen | True |  |
    | case_type | Divorce |  |
    | marriage.is_broken | True |  |
    | marriage.can_be_preserved | False |  |
    | in_bankruptcy | False |  |
    | has_children | True |  |
    | minor_children | True |  |
    | minor_children_before_marriage | False |  |
    | child_outside_marriage | True |  |
    | pregnant | False |  |
