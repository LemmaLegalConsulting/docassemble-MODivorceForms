Feature: Common edge cases

  @edge @nochildren
Scenario: No children: no parenting plan or Form 14
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
    | var | value | trigger |
    | acknowledged_information_use | True |  |
    | al_intro_screen | True |  |
    | case_type | Divorce |  |
    | marriage.is_broken | True |  |
    | marriage.can_be_preserved | False |  |
    | in_bankruptcy | False |  |
    | has_children | False |  |
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
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | other_parties[0].service_type | home |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | businesses.target_number | 0 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | users[0].jobs.target_number | 0 |  |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @respondent
Scenario: Respondent role (spouse already filed): Answer instead of Petition
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | case.filed | other_parties0_filed |  |
    | is_case_contested | uncontested |  |
    | users[0].address.address | 123 Main St |  |
    | users[0].address.unit | Sample Apartment |  |
    | users[0].address.city | St. Louis |  |
    | users[0].address.state | MO |  |
    | users[0].address.zip | 63101 |  |
    | users[0].address.country | US |  |
    | users[0].phone_number | (617) 555-1212 |  |
    | users[0].email | test@example.com |  |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].resident_for_90_days |
    | x.mo_length_of_residence_years | 5 | other_parties[0].resident_for_90_days |
    | x.county_length_of_residence_choice | year | other_parties[0].resident_for_90_days |
    | x.county_length_of_residence_years | 5 | other_parties[0].resident_for_90_days |
    | x.mo_length_of_residence_choice | year | users[0].resident_for_90_days |
    | x.mo_length_of_residence_years | 5 | users[0].resident_for_90_days |
    | x.county_length_of_residence_choice | year | users[0].resident_for_90_days |
    | x.county_length_of_residence_years | 5 | users[0].resident_for_90_days |
    | doc_list_selected['answer_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | use_case_net_for_online_docket | True |  |
    | case.county | Adair County |  |
    | previous_petitions | 1 |  |
    | case.docket_number | Sample Case number |  |
    | case.docket_number_asked | True |  |
    | case.name.text | Sample Case name |  |
    | case.name_asked | True |  |
    | case.division_number | Sample Division Number |  |
    | case.division_number_asked | True |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | presumption_video | True |  |
    | legal_custody | Firstname S. Lastname Jr |  |
    | legal_custody_all_children | False |  |
    | legal_custody_sole_explanation | Sample text legal_custody_sole_explanation |  |
    | physical_custody | Firstname S. Lastname Jr |  |
    | physical_custody_all_children | False |  |
    | visitation | False |  |
    | child_support | Firstname S. Lastname Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Firstname |  |
    | children[0].name.middle | Sample Middle name |  |
    | children[0].name.last | Lastname |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].tax_dependency_even | Firstname Sample Middle name Lastname Jr |  |
    | children[0].tax_dependency_odd | Firstname Sample Middle name Lastname Jr |  |
    | children[0].parents['Firstname S. Lastname Jr'] | True |  |
    | children[0].parents['Other'] | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | persons_lived_with[0] | dXNlcnNbMF0 |  |
    | persons_lived_with[0].name.first | Firstname |  |
    | persons_lived_with[0].name.middle | Sample Middle name |  |
    | persons_lived_with[0].name.last | Lastname |  |
    | persons_lived_with[0].name.suffix | Jr |  |
    | persons_lived_with[0].address.address | 123 Main St |  |
    | persons_lived_with[0].address.unit | Sample Apartment |  |
    | persons_lived_with[0].address.city | St. Louis |  |
    | persons_lived_with[0].address.state | MO |  |
    | persons_lived_with[0].address.zip | 63101 |  |
    | agree_with_parenting_plan | False |  |
    | parenting_plan_A_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_A_author['The court'] | False |  |
    | parenting_plan_A_author['The guardian ad litem'] | False |  |
    | parenting_plan_A_author['Other'] | False |  |
    | communications['in_person'] | True |  |
    | communications['home_telephone'] | False |  |
    | communications['work_telephone'] | False |  |
    | communications['mobile_telephone'] | False |  |
    | communications['letter'] | False |  |
    | communications['email'] | False |  |
    | communications['third_party'] | False |  |
    | phone_contact | False |  |
    | vacation | False |  |
    | location_of_exchange | school |  |
    | time_of_exchange | Sample When should the exchange occur |  |
    | location_of_exchange_school_not_in_session | Sample text Where should the exchange occur when sch |  |
    | add_pick_up_from_school | False |  |
    | starting_parent | users0 |  |
    | use_template | template |  |
    | template_choice | every_other_week_monday |  |
    | biweekly_schedule[0] | Sample text Sunday |  |
    | biweekly_schedule[1] | Sample text Monday |  |
    | biweekly_schedule[2] | Sample text Tuesday |  |
    | biweekly_schedule[3] | Sample text Wednesday |  |
    | biweekly_schedule[4] | Sample text Thursday |  |
    | biweekly_schedule[5] | Sample text Friday |  |
    | biweekly_schedule[6] | Sample text Saturday |  |
    | biweekly_schedule[7] | Sample text Sunday |  |
    | biweekly_schedule[8] | Sample text Monday |  |
    | biweekly_schedule[9] | Sample text Tuesday |  |
    | biweekly_schedule[10] | Sample text Wednesday |  |
    | biweekly_schedule[11] | Sample text Thursday |  |
    | biweekly_schedule[12] | Sample text Friday |  |
    | biweekly_schedule[13] | Sample text Saturday |  |
    | biweekly_schedule_review | True |  |
    | visitation_nights | 1 |  |
    | holidays_default | False |  |
    | holidays['mlk']['different'] | False |  |
    | holidays['president']['different'] | False |  |
    | holidays['memorial']['different'] | False |  |
    | holidays['independence']['different'] | False |  |
    | holidays['labor']['different'] | False |  |
    | holidays['thanksgiving']['different'] | False |  |
    | holidays['halloween']['different'] | False |  |
    | holidays['xmas_eve']['different'] | False |  |
    | holidays['xmas_day']['different'] | False |  |
    | holidays['mother']['different'] | False |  |
    | holidays['father']['different'] | False |  |
    | holidays['petitioner_birthday']['different'] | False |  |
    | holidays['respondent_birthday']['different'] | False |  |
    | holidays['children_birthday']['different'] | False |  |
    | holidays["mlk"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mlk"]["custody_to_time"] | 9:00 AM |  |
    | holidays["president"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["custody_from_time"] | 9:00 AM |  |
    | holidays["president"]["custody_to_time"] | 9:00 AM |  |
    | holidays["memorial"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["custody_from_time"] | 9:00 AM |  |
    | holidays["memorial"]["custody_to_time"] | 9:00 AM |  |
    | holidays["independence"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["custody_from_time"] | 9:00 AM |  |
    | holidays["independence"]["custody_to_time"] | 9:00 AM |  |
    | holidays["labor"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["custody_from_time"] | 9:00 AM |  |
    | holidays["labor"]["custody_to_time"] | 9:00 AM |  |
    | holidays["halloween"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["custody_from_time"] | 9:00 AM |  |
    | holidays["halloween"]["custody_to_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["custody_from_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["custody_to_time"] | 9:00 AM |  |
    | holidays["mother"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mother"]["custody_to_time"] | 9:00 AM |  |
    | holidays["father"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["custody_from_time"] | 9:00 AM |  |
    | holidays["father"]["custody_to_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays_review | True |  |
    | dispute_resolution | Sample text Is there another way you would like to r |  |
    | ask_about_dispute_resolution | True |  |
    | domestic_violence | False |  |
    | parenting_plan_B_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_B_author['The court'] | False |  |
    | parenting_plan_B_author['The guardian ad litem'] | False |  |
    | parenting_plan_B_author['Other'] | False |  |
    | medical_insurance | Firstname S. Lastname Jr |  |
    | dental_insurance | Firstname S. Lastname Jr |  |
    | health_expenses_not_covered | support_recipient |  |
    | health_expenses_not_covered_reimburse | False |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | denials_exist | False |  |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.maintenance_other_received | 100 | users[0].maintenance_other_received |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.maintenance_other_received | 100 | other_parties[0].maintenance_other_received |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.maintenance_other_paid | 100 | users[0].maintenance_other_paid |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.maintenance_other_paid | 100 | other_parties[0].maintenance_other_paid |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | use_presumed_child_support | yes |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | is_additional_provisions_parenting_plan | False |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_holidays.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 1 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @notfiled
Scenario: Case not filed yet
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | case.filed | not_filed |  |
    | is_case_contested | uncontested |  |
    | users[0].address.address | 123 Main St |  |
    | users[0].address.unit | Sample Apartment |  |
    | users[0].address.city | St. Louis |  |
    | users[0].address.state | MO |  |
    | users[0].address.zip | 63101 |  |
    | users[0].address.country | US |  |
    | users[0].phone_number | (617) 555-1212 |  |
    | users[0].email | test@example.com |  |
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | presumption_video | True |  |
    | legal_custody | Firstname S. Lastname Jr |  |
    | legal_custody_all_children | False |  |
    | legal_custody_sole_explanation | Sample text legal_custody_sole_explanation |  |
    | physical_custody | Firstname S. Lastname Jr |  |
    | physical_custody_all_children | False |  |
    | visitation | False |  |
    | child_support | Firstname S. Lastname Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Firstname |  |
    | children[0].name.middle | Sample Middle name |  |
    | children[0].name.last | Lastname |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].gender | female |  |
    | children[0].lived_with | dXNlcnNbMF0 |  |
    | children[0].lived_with.name.first | Firstname |  |
    | children[0].lived_with.name.middle | Sample Middle name |  |
    | children[0].lived_with.name.last | Lastname |  |
    | children[0].lived_with.name.suffix | Jr |  |
    | children[0].lived_with.address.address | 123 Main St |  |
    | children[0].lived_with.address.unit | Sample Apartment |  |
    | children[0].lived_with.address.city | St. Louis |  |
    | children[0].lived_with.address.state | MO |  |
    | children[0].lived_with.address.zip | 63101 |  |
    | children[0].legal_custody | Firstname S. Lastname Jr |  |
    | children[0].physical_custody | Firstname S. Lastname Jr |  |
    | children[0].adopted | False |  |
    | children[0].birth_certificate['Firstname S. Lastname Jr'] | False |  |
    | children[0].birth_certificate['Other'] | False |  |
    | children[0].parents['Firstname S. Lastname Jr'] | True |  |
    | children[0].parents['Other'] | False |  |
    | children[0].tax_dependency_even | Firstname Sample Middle name Lastname Jr |  |
    | children[0].tax_dependency_odd | Firstname Sample Middle name Lastname Jr |  |
    | children[0].under_18_in_household | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | parenting_plan_A_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_A_author['The court'] | False |  |
    | parenting_plan_A_author['The guardian ad litem'] | False |  |
    | parenting_plan_A_author['Other'] | False |  |
    | communications['in_person'] | True |  |
    | communications['home_telephone'] | False |  |
    | communications['work_telephone'] | False |  |
    | communications['mobile_telephone'] | False |  |
    | communications['letter'] | False |  |
    | communications['email'] | False |  |
    | communications['third_party'] | False |  |
    | phone_contact | False |  |
    | vacation | False |  |
    | location_of_exchange | school |  |
    | time_of_exchange | Sample When should the exchange occur |  |
    | location_of_exchange_school_not_in_session | Sample text Where should the exchange occur when sch |  |
    | add_pick_up_from_school | False |  |
    | starting_parent | users0 |  |
    | use_template | template |  |
    | template_choice | every_other_week_monday |  |
    | biweekly_schedule[0] | Sample text Sunday |  |
    | biweekly_schedule[1] | Sample text Monday |  |
    | biweekly_schedule[2] | Sample text Tuesday |  |
    | biweekly_schedule[3] | Sample text Wednesday |  |
    | biweekly_schedule[4] | Sample text Thursday |  |
    | biweekly_schedule[5] | Sample text Friday |  |
    | biweekly_schedule[6] | Sample text Saturday |  |
    | biweekly_schedule[7] | Sample text Sunday |  |
    | biweekly_schedule[8] | Sample text Monday |  |
    | biweekly_schedule[9] | Sample text Tuesday |  |
    | biweekly_schedule[10] | Sample text Wednesday |  |
    | biweekly_schedule[11] | Sample text Thursday |  |
    | biweekly_schedule[12] | Sample text Friday |  |
    | biweekly_schedule[13] | Sample text Saturday |  |
    | biweekly_schedule_review | True |  |
    | visitation_nights | 1 |  |
    | holidays_default | False |  |
    | holidays['mlk']['different'] | False |  |
    | holidays['president']['different'] | False |  |
    | holidays['memorial']['different'] | False |  |
    | holidays['independence']['different'] | False |  |
    | holidays['labor']['different'] | False |  |
    | holidays['thanksgiving']['different'] | False |  |
    | holidays['halloween']['different'] | False |  |
    | holidays['xmas_eve']['different'] | False |  |
    | holidays['xmas_day']['different'] | False |  |
    | holidays['mother']['different'] | False |  |
    | holidays['father']['different'] | False |  |
    | holidays['petitioner_birthday']['different'] | False |  |
    | holidays['respondent_birthday']['different'] | False |  |
    | holidays['children_birthday']['different'] | False |  |
    | holidays["mlk"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mlk"]["custody_to_time"] | 9:00 AM |  |
    | holidays["president"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["custody_from_time"] | 9:00 AM |  |
    | holidays["president"]["custody_to_time"] | 9:00 AM |  |
    | holidays["memorial"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["custody_from_time"] | 9:00 AM |  |
    | holidays["memorial"]["custody_to_time"] | 9:00 AM |  |
    | holidays["independence"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["custody_from_time"] | 9:00 AM |  |
    | holidays["independence"]["custody_to_time"] | 9:00 AM |  |
    | holidays["labor"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["custody_from_time"] | 9:00 AM |  |
    | holidays["labor"]["custody_to_time"] | 9:00 AM |  |
    | holidays["halloween"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["custody_from_time"] | 9:00 AM |  |
    | holidays["halloween"]["custody_to_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["custody_from_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["custody_to_time"] | 9:00 AM |  |
    | holidays["mother"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mother"]["custody_to_time"] | 9:00 AM |  |
    | holidays["father"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["custody_from_time"] | 9:00 AM |  |
    | holidays["father"]["custody_to_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays_review | True |  |
    | dispute_resolution | Sample text Is there another way you would like to r |  |
    | ask_about_dispute_resolution | True |  |
    | domestic_violence | False |  |
    | parenting_plan_B_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_B_author['The court'] | False |  |
    | parenting_plan_B_author['The guardian ad litem'] | False |  |
    | parenting_plan_B_author['Other'] | False |  |
    | medical_insurance | Firstname S. Lastname Jr |  |
    | dental_insurance | Firstname S. Lastname Jr |  |
    | health_expenses_not_covered | support_recipient |  |
    | health_expenses_not_covered_reimburse | False |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | use_presumed_child_support | yes |  |
    | other_parties[0].service_type | home |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | is_additional_provisions_parenting_plan | False |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_holidays.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 1 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @custody
Scenario: Joint legal and physical custody
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | presumption_video | True |  |
    | legal_custody | Joint |  |
    | legal_custody_all_children | False |  |
    | physical_custody | Joint |  |
    | physical_custody_all_children | False |  |
    | physical_custody_address | Firstname S. Lastname Jr |  |
    | child_support | Firstname S. Lastname Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Firstname |  |
    | children[0].name.middle | Sample Middle name |  |
    | children[0].name.last | Lastname |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].gender | female |  |
    | children[0].lived_with | dXNlcnNbMF0 |  |
    | children[0].lived_with.name.first | Firstname |  |
    | children[0].lived_with.name.middle | Sample Middle name |  |
    | children[0].lived_with.name.last | Lastname |  |
    | children[0].lived_with.name.suffix | Jr |  |
    | children[0].lived_with.address.address | 123 Main St |  |
    | children[0].lived_with.address.unit | Sample Apartment |  |
    | children[0].lived_with.address.city | St. Louis |  |
    | children[0].lived_with.address.state | MO |  |
    | children[0].lived_with.address.zip | 63101 |  |
    | children[0].legal_custody | Joint |  |
    | children[0].physical_custody | Joint |  |
    | children[0].adopted | False |  |
    | children[0].birth_certificate['Firstname S. Lastname Jr'] | False |  |
    | children[0].birth_certificate['Other'] | False |  |
    | children[0].parents['Firstname S. Lastname Jr'] | True |  |
    | children[0].parents['Other'] | False |  |
    | children[0].tax_dependency_even | Firstname Sample Middle name Lastname Jr |  |
    | children[0].tax_dependency_odd | Firstname Sample Middle name Lastname Jr |  |
    | children[0].under_18_in_household | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | parenting_plan_A_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_A_author['The court'] | False |  |
    | parenting_plan_A_author['The guardian ad litem'] | False |  |
    | parenting_plan_A_author['Other'] | False |  |
    | communications['in_person'] | True |  |
    | communications['home_telephone'] | False |  |
    | communications['work_telephone'] | False |  |
    | communications['mobile_telephone'] | False |  |
    | communications['letter'] | False |  |
    | communications['email'] | False |  |
    | communications['third_party'] | False |  |
    | phone_contact | False |  |
    | vacation | False |  |
    | location_of_exchange | school |  |
    | time_of_exchange | Sample When should the exchange occur |  |
    | location_of_exchange_school_not_in_session | Sample text Where should the exchange occur when sch |  |
    | add_pick_up_from_school | False |  |
    | starting_parent | users0 |  |
    | use_template | template |  |
    | template_choice | every_other_week_monday |  |
    | biweekly_schedule[0] | Sample text Sunday |  |
    | biweekly_schedule[1] | Sample text Monday |  |
    | biweekly_schedule[2] | Sample text Tuesday |  |
    | biweekly_schedule[3] | Sample text Wednesday |  |
    | biweekly_schedule[4] | Sample text Thursday |  |
    | biweekly_schedule[5] | Sample text Friday |  |
    | biweekly_schedule[6] | Sample text Saturday |  |
    | biweekly_schedule[7] | Sample text Sunday |  |
    | biweekly_schedule[8] | Sample text Monday |  |
    | biweekly_schedule[9] | Sample text Tuesday |  |
    | biweekly_schedule[10] | Sample text Wednesday |  |
    | biweekly_schedule[11] | Sample text Thursday |  |
    | biweekly_schedule[12] | Sample text Friday |  |
    | biweekly_schedule[13] | Sample text Saturday |  |
    | biweekly_schedule_review | True |  |
    | visitation_nights | 1 |  |
    | holidays_default | False |  |
    | holidays['mlk']['different'] | False |  |
    | holidays['president']['different'] | False |  |
    | holidays['memorial']['different'] | False |  |
    | holidays['independence']['different'] | False |  |
    | holidays['labor']['different'] | False |  |
    | holidays['thanksgiving']['different'] | False |  |
    | holidays['halloween']['different'] | False |  |
    | holidays['xmas_eve']['different'] | False |  |
    | holidays['xmas_day']['different'] | False |  |
    | holidays['mother']['different'] | False |  |
    | holidays['father']['different'] | False |  |
    | holidays['petitioner_birthday']['different'] | False |  |
    | holidays['respondent_birthday']['different'] | False |  |
    | holidays['children_birthday']['different'] | False |  |
    | holidays["mlk"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mlk"]["custody_to_time"] | 9:00 AM |  |
    | holidays["president"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["custody_from_time"] | 9:00 AM |  |
    | holidays["president"]["custody_to_time"] | 9:00 AM |  |
    | holidays["memorial"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["custody_from_time"] | 9:00 AM |  |
    | holidays["memorial"]["custody_to_time"] | 9:00 AM |  |
    | holidays["independence"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["custody_from_time"] | 9:00 AM |  |
    | holidays["independence"]["custody_to_time"] | 9:00 AM |  |
    | holidays["labor"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["custody_from_time"] | 9:00 AM |  |
    | holidays["labor"]["custody_to_time"] | 9:00 AM |  |
    | holidays["halloween"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["custody_from_time"] | 9:00 AM |  |
    | holidays["halloween"]["custody_to_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["custody_from_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["custody_to_time"] | 9:00 AM |  |
    | holidays["mother"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mother"]["custody_to_time"] | 9:00 AM |  |
    | holidays["father"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["custody_from_time"] | 9:00 AM |  |
    | holidays["father"]["custody_to_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays_review | True |  |
    | dispute_resolution | Sample text Is there another way you would like to r |  |
    | ask_about_dispute_resolution | True |  |
    | domestic_violence | False |  |
    | parenting_plan_B_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_B_author['The court'] | False |  |
    | parenting_plan_B_author['The guardian ad litem'] | False |  |
    | parenting_plan_B_author['Other'] | False |  |
    | medical_insurance | Firstname S. Lastname Jr |  |
    | dental_insurance | Firstname S. Lastname Jr |  |
    | health_expenses_not_covered | support_recipient |  |
    | health_expenses_not_covered_reimburse | False |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | use_presumed_child_support | yes |  |
    | other_parties[0].service_type | home |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | is_additional_provisions_parenting_plan | False |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_holidays.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 1 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @custody
Scenario: Third-party custody
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | presumption_video | True |  |
    | legal_custody | Third Party |  |
    | legal_custody_all_children | False |  |
    | third_party_custody_warning | True |  |
    | legal_custody_other.name.first | Firstname |  |
    | legal_custody_other.name.middle | Sample Middle name |  |
    | legal_custody_other.name.last | Lastname |  |
    | legal_custody_other.name.suffix | Jr |  |
    | physical_custody | Third Party |  |
    | physical_custody_all_children | False |  |
    | physical_custody_other | bGVnYWxfY3VzdG9keV9vdGhlcg |  |
    | physical_custody_other.name.first | Firstname |  |
    | physical_custody_other.name.middle | Sample Middle name |  |
    | physical_custody_other.name.last | Lastname |  |
    | physical_custody_other.name.suffix | Jr |  |
    | child_support | Firstname S. Lastname Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Firstname |  |
    | children[0].name.middle | Sample Middle name |  |
    | children[0].name.last | Lastname |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].gender | female |  |
    | children[0].lived_with | dXNlcnNbMF0 |  |
    | children[0].lived_with.name.first | Firstname |  |
    | children[0].lived_with.name.middle | Sample Middle name |  |
    | children[0].lived_with.name.last | Lastname |  |
    | children[0].lived_with.name.suffix | Jr |  |
    | children[0].lived_with.address.address | 123 Main St |  |
    | children[0].lived_with.address.unit | Sample Apartment |  |
    | children[0].lived_with.address.city | St. Louis |  |
    | children[0].lived_with.address.state | MO |  |
    | children[0].lived_with.address.zip | 63101 |  |
    | children[0].legal_custody | Third Party |  |
    | children[0].legal_custody_other | bGVnYWxfY3VzdG9keV9vdGhlcg |  |
    | children[0].legal_custody_other.name.first | Firstname |  |
    | children[0].legal_custody_other.name.middle | Sample Middle name |  |
    | children[0].legal_custody_other.name.last | Lastname |  |
    | children[0].legal_custody_other.name.suffix | Jr |  |
    | children[0].physical_custody | Third Party |  |
    | children[0].physical_custody_other | bGVnYWxfY3VzdG9keV9vdGhlcg |  |
    | children[0].physical_custody_other.name.first | Firstname |  |
    | children[0].physical_custody_other.name.middle | Sample Middle name |  |
    | children[0].physical_custody_other.name.last | Lastname |  |
    | children[0].physical_custody_other.name.suffix | Jr |  |
    | children[0].adopted | False |  |
    | children[0].birth_certificate['Firstname S. Lastname Jr'] | False |  |
    | children[0].birth_certificate['Other'] | False |  |
    | children[0].parents['Firstname S. Lastname Jr'] | True |  |
    | children[0].parents['Other'] | False |  |
    | children[0].under_18_in_household | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | medical_insurance | Firstname S. Lastname Jr |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | other_parties[0].service_type | home |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 1 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @service
Scenario: Spouse lives outside Missouri (service scenarios)
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | CA |  |
    | other_parties[0].address.zip | 63101 |  |
    | marriage.live_together_in_mo | False |  |
    | personal_jurisdiction_warning | True |  |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | presumption_video | True |  |
    | legal_custody | Firstname S. Lastname Jr |  |
    | legal_custody_all_children | False |  |
    | legal_custody_sole_explanation | Sample text legal_custody_sole_explanation |  |
    | physical_custody | Firstname S. Lastname Jr |  |
    | physical_custody_all_children | False |  |
    | visitation | False |  |
    | child_support | Firstname S. Lastname Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Firstname |  |
    | children[0].name.middle | Sample Middle name |  |
    | children[0].name.last | Lastname |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].gender | female |  |
    | children[0].lived_with | dXNlcnNbMF0 |  |
    | children[0].lived_with.name.first | Firstname |  |
    | children[0].lived_with.name.middle | Sample Middle name |  |
    | children[0].lived_with.name.last | Lastname |  |
    | children[0].lived_with.name.suffix | Jr |  |
    | children[0].lived_with.address.address | 123 Main St |  |
    | children[0].lived_with.address.unit | Sample Apartment |  |
    | children[0].lived_with.address.city | St. Louis |  |
    | children[0].lived_with.address.state | MO |  |
    | children[0].lived_with.address.zip | 63101 |  |
    | children[0].legal_custody | Firstname S. Lastname Jr |  |
    | children[0].physical_custody | Firstname S. Lastname Jr |  |
    | children[0].adopted | False |  |
    | children[0].birth_certificate['Firstname S. Lastname Jr'] | False |  |
    | children[0].birth_certificate['Other'] | False |  |
    | children[0].parents['Firstname S. Lastname Jr'] | True |  |
    | children[0].parents['Other'] | False |  |
    | children[0].tax_dependency_even | Firstname Sample Middle name Lastname Jr |  |
    | children[0].tax_dependency_odd | Firstname Sample Middle name Lastname Jr |  |
    | children[0].under_18_in_household | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | parenting_plan_A_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_A_author['The court'] | False |  |
    | parenting_plan_A_author['The guardian ad litem'] | False |  |
    | parenting_plan_A_author['Other'] | False |  |
    | communications['in_person'] | True |  |
    | communications['home_telephone'] | False |  |
    | communications['work_telephone'] | False |  |
    | communications['mobile_telephone'] | False |  |
    | communications['letter'] | False |  |
    | communications['email'] | False |  |
    | communications['third_party'] | False |  |
    | phone_contact | False |  |
    | vacation | False |  |
    | location_of_exchange | school |  |
    | time_of_exchange | Sample When should the exchange occur |  |
    | location_of_exchange_school_not_in_session | Sample text Where should the exchange occur when sch |  |
    | add_pick_up_from_school | False |  |
    | starting_parent | users0 |  |
    | use_template | template |  |
    | template_choice | every_other_week_monday |  |
    | biweekly_schedule[0] | Sample text Sunday |  |
    | biweekly_schedule[1] | Sample text Monday |  |
    | biweekly_schedule[2] | Sample text Tuesday |  |
    | biweekly_schedule[3] | Sample text Wednesday |  |
    | biweekly_schedule[4] | Sample text Thursday |  |
    | biweekly_schedule[5] | Sample text Friday |  |
    | biweekly_schedule[6] | Sample text Saturday |  |
    | biweekly_schedule[7] | Sample text Sunday |  |
    | biweekly_schedule[8] | Sample text Monday |  |
    | biweekly_schedule[9] | Sample text Tuesday |  |
    | biweekly_schedule[10] | Sample text Wednesday |  |
    | biweekly_schedule[11] | Sample text Thursday |  |
    | biweekly_schedule[12] | Sample text Friday |  |
    | biweekly_schedule[13] | Sample text Saturday |  |
    | biweekly_schedule_review | True |  |
    | visitation_nights | 1 |  |
    | holidays_default | False |  |
    | holidays['mlk']['different'] | False |  |
    | holidays['president']['different'] | False |  |
    | holidays['memorial']['different'] | False |  |
    | holidays['independence']['different'] | False |  |
    | holidays['labor']['different'] | False |  |
    | holidays['thanksgiving']['different'] | False |  |
    | holidays['halloween']['different'] | False |  |
    | holidays['xmas_eve']['different'] | False |  |
    | holidays['xmas_day']['different'] | False |  |
    | holidays['mother']['different'] | False |  |
    | holidays['father']['different'] | False |  |
    | holidays['petitioner_birthday']['different'] | False |  |
    | holidays['respondent_birthday']['different'] | False |  |
    | holidays['children_birthday']['different'] | False |  |
    | holidays["mlk"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mlk"]["custody_to_time"] | 9:00 AM |  |
    | holidays["president"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["custody_from_time"] | 9:00 AM |  |
    | holidays["president"]["custody_to_time"] | 9:00 AM |  |
    | holidays["memorial"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["custody_from_time"] | 9:00 AM |  |
    | holidays["memorial"]["custody_to_time"] | 9:00 AM |  |
    | holidays["independence"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["custody_from_time"] | 9:00 AM |  |
    | holidays["independence"]["custody_to_time"] | 9:00 AM |  |
    | holidays["labor"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["custody_from_time"] | 9:00 AM |  |
    | holidays["labor"]["custody_to_time"] | 9:00 AM |  |
    | holidays["halloween"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["custody_from_time"] | 9:00 AM |  |
    | holidays["halloween"]["custody_to_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["custody_from_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["custody_to_time"] | 9:00 AM |  |
    | holidays["mother"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mother"]["custody_to_time"] | 9:00 AM |  |
    | holidays["father"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["custody_from_time"] | 9:00 AM |  |
    | holidays["father"]["custody_to_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays_review | True |  |
    | dispute_resolution | Sample text Is there another way you would like to r |  |
    | ask_about_dispute_resolution | True |  |
    | domestic_violence | False |  |
    | parenting_plan_B_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_B_author['The court'] | False |  |
    | parenting_plan_B_author['The guardian ad litem'] | False |  |
    | parenting_plan_B_author['Other'] | False |  |
    | medical_insurance | Firstname S. Lastname Jr |  |
    | dental_insurance | Firstname S. Lastname Jr |  |
    | health_expenses_not_covered | support_recipient |  |
    | health_expenses_not_covered_reimburse | False |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | use_presumed_child_support | yes |  |
    | other_parties[0].service_type | mail |  |
    | waiver_of_service | False |  |
    | missouri_family | False |  |
    | mail_information | True |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | is_additional_provisions_parenting_plan | False |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_holidays.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 1 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @feewaiver
Scenario: Fee waiver selected
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | True |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Firstname |  |
    | users[0].name.middle | Sample Middle name |  |
    | users[0].name.last | Lastname |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Firstname |  |
    | other_parties[0].name.middle | Sample Middle name |  |
    | other_parties[0].name.last | Lastname |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | presumption_video | True |  |
    | legal_custody | Firstname S. Lastname Jr |  |
    | legal_custody_all_children | False |  |
    | legal_custody_sole_explanation | Sample text legal_custody_sole_explanation |  |
    | physical_custody | Firstname S. Lastname Jr |  |
    | physical_custody_all_children | False |  |
    | visitation | False |  |
    | child_support | Firstname S. Lastname Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Firstname |  |
    | children[0].name.middle | Sample Middle name |  |
    | children[0].name.last | Lastname |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].gender | female |  |
    | children[0].lived_with | dXNlcnNbMF0 |  |
    | children[0].lived_with.name.first | Firstname |  |
    | children[0].lived_with.name.middle | Sample Middle name |  |
    | children[0].lived_with.name.last | Lastname |  |
    | children[0].lived_with.name.suffix | Jr |  |
    | children[0].lived_with.address.address | 123 Main St |  |
    | children[0].lived_with.address.unit | Sample Apartment |  |
    | children[0].lived_with.address.city | St. Louis |  |
    | children[0].lived_with.address.state | MO |  |
    | children[0].lived_with.address.zip | 63101 |  |
    | children[0].legal_custody | Firstname S. Lastname Jr |  |
    | children[0].physical_custody | Firstname S. Lastname Jr |  |
    | children[0].adopted | False |  |
    | children[0].birth_certificate['Firstname S. Lastname Jr'] | False |  |
    | children[0].birth_certificate['Other'] | False |  |
    | children[0].parents['Firstname S. Lastname Jr'] | True |  |
    | children[0].parents['Other'] | False |  |
    | children[0].tax_dependency_even | Firstname Sample Middle name Lastname Jr |  |
    | children[0].tax_dependency_odd | Firstname Sample Middle name Lastname Jr |  |
    | children[0].under_18_in_household | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | parenting_plan_A_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_A_author['The court'] | False |  |
    | parenting_plan_A_author['The guardian ad litem'] | False |  |
    | parenting_plan_A_author['Other'] | False |  |
    | communications['in_person'] | True |  |
    | communications['home_telephone'] | False |  |
    | communications['work_telephone'] | False |  |
    | communications['mobile_telephone'] | False |  |
    | communications['letter'] | False |  |
    | communications['email'] | False |  |
    | communications['third_party'] | False |  |
    | phone_contact | False |  |
    | vacation | False |  |
    | location_of_exchange | school |  |
    | time_of_exchange | Sample When should the exchange occur |  |
    | location_of_exchange_school_not_in_session | Sample text Where should the exchange occur when sch |  |
    | add_pick_up_from_school | False |  |
    | starting_parent | users0 |  |
    | use_template | template |  |
    | template_choice | every_other_week_monday |  |
    | biweekly_schedule[0] | Sample text Sunday |  |
    | biweekly_schedule[1] | Sample text Monday |  |
    | biweekly_schedule[2] | Sample text Tuesday |  |
    | biweekly_schedule[3] | Sample text Wednesday |  |
    | biweekly_schedule[4] | Sample text Thursday |  |
    | biweekly_schedule[5] | Sample text Friday |  |
    | biweekly_schedule[6] | Sample text Saturday |  |
    | biweekly_schedule[7] | Sample text Sunday |  |
    | biweekly_schedule[8] | Sample text Monday |  |
    | biweekly_schedule[9] | Sample text Tuesday |  |
    | biweekly_schedule[10] | Sample text Wednesday |  |
    | biweekly_schedule[11] | Sample text Thursday |  |
    | biweekly_schedule[12] | Sample text Friday |  |
    | biweekly_schedule[13] | Sample text Saturday |  |
    | biweekly_schedule_review | True |  |
    | visitation_nights | 1 |  |
    | holidays_default | False |  |
    | holidays['mlk']['different'] | False |  |
    | holidays['president']['different'] | False |  |
    | holidays['memorial']['different'] | False |  |
    | holidays['independence']['different'] | False |  |
    | holidays['labor']['different'] | False |  |
    | holidays['thanksgiving']['different'] | False |  |
    | holidays['halloween']['different'] | False |  |
    | holidays['xmas_eve']['different'] | False |  |
    | holidays['xmas_day']['different'] | False |  |
    | holidays['mother']['different'] | False |  |
    | holidays['father']['different'] | False |  |
    | holidays['petitioner_birthday']['different'] | False |  |
    | holidays['respondent_birthday']['different'] | False |  |
    | holidays['children_birthday']['different'] | False |  |
    | holidays["mlk"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mlk"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mlk"]["custody_to_time"] | 9:00 AM |  |
    | holidays["president"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["president"]["custody_from_time"] | 9:00 AM |  |
    | holidays["president"]["custody_to_time"] | 9:00 AM |  |
    | holidays["memorial"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["memorial"]["custody_from_time"] | 9:00 AM |  |
    | holidays["memorial"]["custody_to_time"] | 9:00 AM |  |
    | holidays["independence"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["independence"]["custody_from_time"] | 9:00 AM |  |
    | holidays["independence"]["custody_to_time"] | 9:00 AM |  |
    | holidays["labor"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["labor"]["custody_from_time"] | 9:00 AM |  |
    | holidays["labor"]["custody_to_time"] | 9:00 AM |  |
    | holidays["halloween"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["halloween"]["custody_from_time"] | 9:00 AM |  |
    | holidays["halloween"]["custody_to_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["thanksgiving"]["custody_from_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_eve"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["xmas_day"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["custody_to_time"] | 9:00 AM |  |
    | holidays["mother"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["mother"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mother"]["custody_to_time"] | 9:00 AM |  |
    | holidays["father"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["father"]["custody_from_time"] | 9:00 AM |  |
    | holidays["father"]["custody_to_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["petitioner_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["respondent_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["even_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["odd_years"] | Firstname S. Lastname Jr |  |
    | holidays["children_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays_review | True |  |
    | dispute_resolution | Sample text Is there another way you would like to r |  |
    | ask_about_dispute_resolution | True |  |
    | domestic_violence | False |  |
    | parenting_plan_B_author['Firstname S. Lastname Jr'] | True |  |
    | parenting_plan_B_author['The court'] | False |  |
    | parenting_plan_B_author['The guardian ad litem'] | False |  |
    | parenting_plan_B_author['Other'] | False |  |
    | medical_insurance | Firstname S. Lastname Jr |  |
    | dental_insurance | Firstname S. Lastname Jr |  |
    | health_expenses_not_covered | support_recipient |  |
    | health_expenses_not_covered_reimburse | False |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | users[0].cash | 100 |  |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Firstname S. Lastname Jr |  |
    | real_estate[0].has_possession | Firstname S. Lastname Jr |  |
    | real_estate[0].recommended_award | Firstname S. Lastname Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Firstname S. Lastname Jr |  |
    | vehicles[0].recommended_award | Firstname S. Lastname Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Firstname S. Lastname Jr |  |
    | personal_goods[0].recommended_award | Firstname S. Lastname Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Firstname S. Lastname Jr |  |
    | bank_assets[0].recommended_award | Firstname S. Lastname Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Firstname S. Lastname Jr |  |
    | debts.review_items | True |  |
    | use_presumed_child_support | yes |  |
    | other_parties[0].service_type | home |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_holidays.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 0 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"

  @edge @names
Scenario: Accented, hyphenated and apostrophe names generate all documents
  Given the max seconds for each step is 400
  And I start the interview at "main.yml"
  And the user gets to "download MO divorce forms" with this data:
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
    | x.mo_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | users[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | users[0].mo_length_of_residence_choice |
    | other_parties[0].address_known | True |  |
    | other_parties[0].phone_number | (617) 555-1212 |  |
    | other_parties[0].email | test@example.com |  |
    | other_parties[0].address.address | 123 Main St |  |
    | other_parties[0].address.unit | Sample Unit |  |
    | other_parties[0].address.city | St. Louis |  |
    | other_parties[0].address.state | MO |  |
    | other_parties[0].address.zip | 63101 |  |
    | x.mo_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.mo_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_choice | year | other_parties[0].mo_length_of_residence_choice |
    | x.county_length_of_residence_years | 5 | other_parties[0].mo_length_of_residence_choice |
    | doc_list_selected['confidential_information_sheet_attachment'] | True |  |
    | doc_list_selected['petition_attachment'] | True |  |
    | doc_list_selected['certificate_of_dissolution_attachment'] | True |  |
    | doc_list_selected['income_statement_attachment'] | True |  |
    | doc_list_selected['property_statement_attachment'] | True |  |
    | doc_list_selected['judgment_attachment'] | True |  |
    | doc_list_selected['parenting_plan_attachment'] | True |  |
    | doc_list_selected['notice_of_hearing_attachment'] | True |  |
    | doc_list_selected['fee_waiver_attachment'] | False |  |
    | doc_list_selected['form_14_attachment'] | False |  |
    | users[0].name.first | Zoë |  |
    | users[0].name.middle | José-María D'Angelo |  |
    | users[0].name.last | O'Brien-Núñez |  |
    | users[0].name.suffix | Jr |  |
    | users[0].has_prior_name | False |  |
    | relief['other'] | False |  |
    | other_parties[0].name.first | Zoë |  |
    | other_parties[0].name.middle | José-María D'Angelo |  |
    | other_parties[0].name.last | O'Brien-Núñez |  |
    | other_parties[0].name.suffix | Jr |  |
    | other_parties[0].has_prior_name | False |  |
    | relief['maintenance'] | False |  |
    | is_maintenance_currently_paid | False |  |
    | case.county | Adair County |  |
    | case.matter_type | Dissolution of Marriage with Children |  |
    | case.matter_type_asked | True |  |
    | x.attorney_involved | False | users[0].attorney_involved |
    | x.attorney_involved | False | other_parties[0].attorney_involved |
    | x.birthdate | 01/15/1985 | users[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | users[0].birthdate |
    | x.ssn | 6789 | users[0].ssn |
    | users[0].gender | female |  |
    | users[0].pronouns['he/him/his'] | False |  |
    | users[0].pronouns['she/her/hers'] | False |  |
    | users[0].pronouns['they/them/theirs'] | False |  |
    | users[0].pronouns['ze/zir/zirs'] | False |  |
    | users[0].pronouns['self-described'] | False |  |
    | x.race | American Indian or Alaska Native | users[0].race |
    | x.education | 0 | users[0].education_info |
    | x.education_info | True |  |
    | users[0].previously_married | False |  |
    | x.active_duty | False | users[0].active_duty |
    | other_parties[0].gender | female |  |
    | other_parties[0].pronouns['he/him/his'] | False |  |
    | other_parties[0].pronouns['she/her/hers'] | False |  |
    | other_parties[0].pronouns['they/them/theirs'] | False |  |
    | other_parties[0].pronouns['ze/zir/zirs'] | False |  |
    | other_parties[0].pronouns['self-described'] | False |  |
    | other_parties[0].pronouns['unknown'] | False |  |
    | x.birthdate | 01/15/1985 | other_parties[0].birthdate |
    | x.birthplace | Sample BIRTHPLACE State or Foreign C | other_parties[0].birthdate |
    | x.ssn | 6789 | other_parties[0].ssn |
    | x.ssn_unknown | False | other_parties[0].ssn |
    | x.race | American Indian or Alaska Native | other_parties[0].race |
    | x.education | 0 | other_parties[0].education_info |
    | other_parties[0].previously_married | False |  |
    | x.active_duty | False | other_parties[0].active_duty |
    | marriage.address.city | St. Louis |  |
    | marriage.address.county | St. Louis |  |
    | marriage.address.state | MO |  |
    | marriage.address.country | Sample Country if outside of the Uni |  |
    | marriage.recorded_date | 06/12/2010 |  |
    | marriage_info | True |  |
    | marriage.separation_date | 06/12/2010 |  |
    | presumption_video | True |  |
    | legal_custody | Zoë J. O'Brien-Núñez Jr |  |
    | legal_custody_all_children | False |  |
    | legal_custody_sole_explanation | Sample text legal_custody_sole_explanation |  |
    | physical_custody | Zoë J. O'Brien-Núñez Jr |  |
    | physical_custody_all_children | False |  |
    | visitation | False |  |
    | child_support | Zoë J. O'Brien-Núñez Jr |  |
    | child_support_method_of_payment | income_withholding |  |
    | child_support_start_date | judgment_date |  |
    | children[0].name.first | Zoë |  |
    | children[0].name.middle | José-María D'Angelo |  |
    | children[0].name.last | O'Brien-Núñez |  |
    | children[0].name.suffix | Jr |  |
    | children[0].ssn | 6789 |  |
    | children[0].birthdate | 05/05/2015 |  |
    | children[0].special_factors['married'] | True |  |
    | children[0].special_factors['active_duty'] | False |  |
    | children[0].special_factors['self_supporting'] | False |  |
    | children[0].special_factors['high_school'] | False |  |
    | children[0].special_factors['college'] | False |  |
    | children[0].gender | female |  |
    | children[0].lived_with | dXNlcnNbMF0 |  |
    | children[0].lived_with.name.first | Zoë |  |
    | children[0].lived_with.name.middle | José-María D'Angelo |  |
    | children[0].lived_with.name.last | O'Brien-Núñez |  |
    | children[0].lived_with.name.suffix | Jr |  |
    | children[0].lived_with.address.address | 123 Main St |  |
    | children[0].lived_with.address.unit | Sample Apartment |  |
    | children[0].lived_with.address.city | St. Louis |  |
    | children[0].lived_with.address.state | MO |  |
    | children[0].lived_with.address.zip | 63101 |  |
    | children[0].legal_custody | Zoë J. O'Brien-Núñez Jr |  |
    | children[0].physical_custody | Zoë J. O'Brien-Núñez Jr |  |
    | children[0].adopted | False |  |
    | children[0].birth_certificate[B'Wm/DqyBKLiBPJ0JyaWVuLU7DusOxZXogSnI'] | False |  |
    | children[0].birth_certificate['Other'] | False |  |
    | children[0].parents[B'Wm/DqyBKLiBPJ0JyaWVuLU7DusOxZXogSnI'] | True |  |
    | children[0].parents['Other'] | False |  |
    | children[0].tax_dependency_even | Zoë José-María D'Angelo O'Brien-Núñez Jr |  |
    | children[0].tax_dependency_odd | Zoë José-María D'Angelo O'Brien-Núñez Jr |  |
    | children[0].under_18_in_household | False |  |
    | x.other_children | 1 | users[0].other_children |
    | x.other_children | 1 | other_parties[0].other_children |
    | parenting_plan_A_author[B'Wm/DqyBKLiBPJ0JyaWVuLU7DusOxZXogSnI'] | True |  |
    | parenting_plan_A_author['The court'] | False |  |
    | parenting_plan_A_author['The guardian ad litem'] | False |  |
    | parenting_plan_A_author['Other'] | False |  |
    | communications['in_person'] | True |  |
    | communications['home_telephone'] | False |  |
    | communications['work_telephone'] | False |  |
    | communications['mobile_telephone'] | False |  |
    | communications['letter'] | False |  |
    | communications['email'] | False |  |
    | communications['third_party'] | False |  |
    | phone_contact | False |  |
    | vacation | False |  |
    | location_of_exchange | school |  |
    | time_of_exchange | Sample When should the exchange occur |  |
    | location_of_exchange_school_not_in_session | Sample text Where should the exchange occur when sch |  |
    | add_pick_up_from_school | False |  |
    | starting_parent | users0 |  |
    | use_template | template |  |
    | template_choice | every_other_week_monday |  |
    | biweekly_schedule[0] | Sample text Sunday |  |
    | biweekly_schedule[1] | Sample text Monday |  |
    | biweekly_schedule[2] | Sample text Tuesday |  |
    | biweekly_schedule[3] | Sample text Wednesday |  |
    | biweekly_schedule[4] | Sample text Thursday |  |
    | biweekly_schedule[5] | Sample text Friday |  |
    | biweekly_schedule[6] | Sample text Saturday |  |
    | biweekly_schedule[7] | Sample text Sunday |  |
    | biweekly_schedule[8] | Sample text Monday |  |
    | biweekly_schedule[9] | Sample text Tuesday |  |
    | biweekly_schedule[10] | Sample text Wednesday |  |
    | biweekly_schedule[11] | Sample text Thursday |  |
    | biweekly_schedule[12] | Sample text Friday |  |
    | biweekly_schedule[13] | Sample text Saturday |  |
    | biweekly_schedule_review | True |  |
    | visitation_nights | 1 |  |
    | holidays_default | False |  |
    | holidays['mlk']['different'] | False |  |
    | holidays['president']['different'] | False |  |
    | holidays['memorial']['different'] | False |  |
    | holidays['independence']['different'] | False |  |
    | holidays['labor']['different'] | False |  |
    | holidays['thanksgiving']['different'] | False |  |
    | holidays['halloween']['different'] | False |  |
    | holidays['xmas_eve']['different'] | False |  |
    | holidays['xmas_day']['different'] | False |  |
    | holidays['mother']['different'] | False |  |
    | holidays['father']['different'] | False |  |
    | holidays['petitioner_birthday']['different'] | False |  |
    | holidays['respondent_birthday']['different'] | False |  |
    | holidays['children_birthday']['different'] | False |  |
    | holidays["mlk"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["mlk"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["mlk"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mlk"]["custody_to_time"] | 9:00 AM |  |
    | holidays["president"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["president"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["president"]["custody_from_time"] | 9:00 AM |  |
    | holidays["president"]["custody_to_time"] | 9:00 AM |  |
    | holidays["memorial"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["memorial"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["memorial"]["custody_from_time"] | 9:00 AM |  |
    | holidays["memorial"]["custody_to_time"] | 9:00 AM |  |
    | holidays["independence"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["independence"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["independence"]["custody_from_time"] | 9:00 AM |  |
    | holidays["independence"]["custody_to_time"] | 9:00 AM |  |
    | holidays["labor"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["labor"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["labor"]["custody_from_time"] | 9:00 AM |  |
    | holidays["labor"]["custody_to_time"] | 9:00 AM |  |
    | holidays["halloween"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["halloween"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["halloween"]["custody_from_time"] | 9:00 AM |  |
    | holidays["halloween"]["custody_to_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["thanksgiving"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["thanksgiving"]["custody_from_time"] | 9:00 AM |  |
    | holidays["thanksgiving"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["xmas_eve"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["xmas_eve"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_eve"]["custody_to_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["xmas_day"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["xmas_day"]["custody_from_time"] | 9:00 AM |  |
    | holidays["xmas_day"]["custody_to_time"] | 9:00 AM |  |
    | holidays["mother"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["mother"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["mother"]["custody_from_time"] | 9:00 AM |  |
    | holidays["mother"]["custody_to_time"] | 9:00 AM |  |
    | holidays["father"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["father"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["father"]["custody_from_time"] | 9:00 AM |  |
    | holidays["father"]["custody_to_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["petitioner_birthday"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["petitioner_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["petitioner_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["respondent_birthday"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["respondent_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["respondent_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["even_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["children_birthday"]["odd_years"] | Zoë J. O'Brien-Núñez Jr |  |
    | holidays["children_birthday"]["custody_from_time"] | 9:00 AM |  |
    | holidays["children_birthday"]["custody_to_time"] | 9:00 AM |  |
    | holidays_review | True |  |
    | dispute_resolution | Sample text Is there another way you would like to r |  |
    | ask_about_dispute_resolution | True |  |
    | domestic_violence | False |  |
    | parenting_plan_B_author[B'Wm/DqyBKLiBPJ0JyaWVuLU7DusOxZXogSnI'] | True |  |
    | parenting_plan_B_author['The court'] | False |  |
    | parenting_plan_B_author['The guardian ad litem'] | False |  |
    | parenting_plan_B_author['Other'] | False |  |
    | medical_insurance | Zoë J. O'Brien-Núñez Jr |  |
    | dental_insurance | Zoë J. O'Brien-Núñez Jr |  |
    | health_expenses_not_covered | support_recipient |  |
    | health_expenses_not_covered_reimburse | False |  |
    | x.health_insurance_costs | 100 | users[0].health_insurance_costs |
    | pay_work_childcare_expenses | included_in_form14 |  |
    | x.work_childcare_expenses | 100 | users[0].work_childcare_expenses |
    | x.health_insurance_costs | 100 | other_parties[0].health_insurance_costs |
    | x.work_childcare_expenses | 100 | other_parties[0].work_childcare_expenses |
    | others_with_physical_custody | False |  |
    | other_custody_proceeding | False |  |
    | other_litigation | False |  |
    | abuse_or_neglect | False |  |
    | family_support_order | False |  |
    | additional_children_information | True |  |
    | users[0].has_self_employment_income | False |  |
    | x.benefits.selected_types['food_stamps'] | True | users[0].benefits.selected_types |
    | x.benefits.selected_types['medicaid'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['ssi'] | False | users[0].benefits.selected_types |
    | x.benefits.selected_types['tanf'] | False | users[0].benefits.selected_types |
    | x.benefits[i].source | food_stamps | users[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | users[0].benefits[0].value |
    | x.benefits[i].value | 100 | users[0].benefits[0].value |
    | x.benefits.review_items | True |  |
    | x.other_incomes.selected_types['social security'] | True | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['retirement'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['pension'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['interest'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['trust'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['dividends'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['unemployment income'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['severance'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['worker comp'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['veteran'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['military'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes.selected_types['other'] | False | users[0].other_incomes.selected_types |
    | x.other_incomes[i].source | social security | users[0].other_incomes[0].value |
    | x.other_incomes[i].source_other | Sample Specify Type | users[0].other_incomes[0].value |
    | x.other_incomes[i].times_per_year | 12 | users[0].other_incomes[0].value |
    | x.other_incomes[i].value | 100 | users[0].other_incomes[0].value |
    | x.review_items | True |  |
    | x.other_child_support_received | 100 | users[0].other_child_support_received |
    | users[0].self_supporting | False |  |
    | other_parties[0].has_self_employment_income | False |  |
    | other_parties[0].benefits.selected_types['food_stamps'] | True |  |
    | other_parties[0].benefits.selected_types['medicaid'] | False |  |
    | other_parties[0].benefits.selected_types['ssi'] | False |  |
    | other_parties[0].benefits.selected_types['tanf'] | False |  |
    | other_parties[0].benefits_unknown | False |  |
    | x.benefits[i].source | food_stamps | other_parties[0].benefits[0].value |
    | x.benefits[i].times_per_year | 12 | other_parties[0].benefits[0].value |
    | x.benefits[i].value | 100 | other_parties[0].benefits[0].value |
    | other_parties[0].other_incomes.selected_types['social security'] | True |  |
    | other_parties[0].other_incomes.selected_types['retirement'] | False |  |
    | other_parties[0].other_incomes.selected_types['pension'] | False |  |
    | other_parties[0].other_incomes.selected_types['interest'] | False |  |
    | other_parties[0].other_incomes.selected_types['trust'] | False |  |
    | other_parties[0].other_incomes.selected_types['dividends'] | False |  |
    | other_parties[0].other_incomes.selected_types['unemployment income'] | False |  |
    | other_parties[0].other_incomes.selected_types['severance'] | False |  |
    | other_parties[0].other_incomes.selected_types['worker comp'] | False |  |
    | other_parties[0].other_incomes.selected_types['veteran'] | False |  |
    | other_parties[0].other_incomes.selected_types['military'] | False |  |
    | other_parties[0].other_incomes.selected_types['other'] | False |  |
    | other_parties[0].other_incomes_unknown | False |  |
    | other_parties[0].other_incomes[0].source | social security |  |
    | other_parties[0].other_incomes[0].source_other | Sample Specify Type |  |
    | other_parties[0].other_incomes[0].times_per_year | 12 |  |
    | other_parties[0].other_incomes[0].value | 100 |  |
    | x.other_child_support_received | 100 | other_parties[0].other_child_support_received |
    | other_parties[0].self_supporting | False |  |
    | x.expenses.selected_types['rent'] | True | users[0].expenses.selected_types |
    | x.expenses.selected_types['utilities'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['food'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['medical'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['laundry'] | False | users[0].expenses.selected_types |
    | x.expenses.selected_types['repairs'] | False | users[0].expenses.selected_types |
    | x.expenses[i].source | rent | users[0].expenses[0].value |
    | x.expenses[i].value | 100 | users[0].expenses[0].value |
    | x.expenses[i].times_per_year | 12 | users[0].expenses[0].value |
    | x.other_child_support_paid | 100 | users[0].other_child_support_paid |
    | other_parties[0].expenses.selected_types['rent'] | True |  |
    | other_parties[0].expenses.selected_types['utilities'] | False |  |
    | other_parties[0].expenses.selected_types['food'] | False |  |
    | other_parties[0].expenses.selected_types['medical'] | False |  |
    | other_parties[0].expenses.selected_types['laundry'] | False |  |
    | other_parties[0].expenses.selected_types['repairs'] | False |  |
    | other_parties[0].expenses_unknown | False |  |
    | other_parties[0].expenses[0].source | rent |  |
    | other_parties[0].expenses[0].value | 100 |  |
    | other_parties[0].expenses[0].times_per_year | 12 |  |
    | x.other_child_support_paid | 100 | other_parties[0].other_child_support_paid |
    | x.selected_types['house'] | True | real_estate.selected_types |
    | x.selected_types['condominium'] | False | real_estate.selected_types |
    | x.selected_types['leasehold'] | False | real_estate.selected_types |
    | x.selected_types['other'] | False | real_estate.selected_types |
    | real_estate[0].source | house |  |
    | real_estate[0].address | 123 Main St |  |
    | real_estate[0].legal_description_attach | False |  |
    | real_estate[0].market_value | 100 |  |
    | real_estate[0].is_amount_owed | False |  |
    | real_estate[0].marital_property | Marital |  |
    | real_estate[0].title | Zoë J. O'Brien-Núñez Jr |  |
    | real_estate[0].has_possession | Zoë J. O'Brien-Núñez Jr |  |
    | real_estate[0].recommended_award | Zoë J. O'Brien-Núñez Jr |  |
    | real_estate[0].legal_description | Sample Legal description |  |
    | assets_warning | True |  |
    | x.selected_types['car'] | True | vehicles.selected_types |
    | x.selected_types['truck'] | False | vehicles.selected_types |
    | x.selected_types['motorcycle'] | False | vehicles.selected_types |
    | x.selected_types['mobile_home'] | False | vehicles.selected_types |
    | x.selected_types['trailer'] | False | vehicles.selected_types |
    | x.selected_types['boat'] | False | vehicles.selected_types |
    | x.selected_types['airplane'] | False | vehicles.selected_types |
    | x.selected_types['other'] | False | vehicles.selected_types |
    | vehicles[0].source | car |  |
    | vehicles[0].year | Sample Year |  |
    | vehicles[0].make | Sample Make |  |
    | vehicles[0].model | Sample Model |  |
    | vehicles[0].account_number | Sample Vehicle Identification Number |  |
    | vehicles[0].market_value | 100 |  |
    | vehicles[0].is_amount_owed | False |  |
    | vehicles[0].marital_property | Marital |  |
    | vehicles[0].has_possession | Zoë J. O'Brien-Núñez Jr |  |
    | vehicles[0].recommended_award | Zoë J. O'Brien-Núñez Jr |  |
    | personal_goods.selected_types['jewelry'] | True |  |
    | personal_goods.selected_types['antiques'] | False |  |
    | personal_goods.selected_types['artwork'] | False |  |
    | personal_goods.selected_types['guns'] | False |  |
    | personal_goods.selected_types['coins_stamps'] | False |  |
    | personal_goods.selected_types['tools'] | False |  |
    | personal_goods.selected_types['collectibles'] | False |  |
    | personal_goods.selected_types['instruments'] | False |  |
    | personal_goods.selected_types['china_etc'] | False |  |
    | personal_goods.selected_types['appliances'] | False |  |
    | personal_goods.selected_types['computers'] | False |  |
    | personal_goods.selected_types['electronics'] | False |  |
    | personal_goods.selected_types['furnishings'] | False |  |
    | personal_goods.selected_types['other'] | False |  |
    | personal_goods[0].source | jewelry |  |
    | personal_goods[0].market_value | 100 |  |
    | personal_goods[0].is_amount_owed | False |  |
    | personal_goods[0].marital_property | Marital |  |
    | personal_goods[0].has_possession | Zoë J. O'Brien-Núñez Jr |  |
    | personal_goods[0].recommended_award | Zoë J. O'Brien-Núñez Jr |  |
    | x.selected_types['checking account'] | True | bank_assets.selected_types |
    | x.selected_types['savings account'] | False | bank_assets.selected_types |
    | x.selected_types['time deposit'] | False | bank_assets.selected_types |
    | x.selected_types['money market'] | False | bank_assets.selected_types |
    | x.selected_types['certificates'] | False | bank_assets.selected_types |
    | x.selected_types['other'] | False | bank_assets.selected_types |
    | bank_assets[0].source | checking account |  |
    | bank_assets[0].institution | Sample Bank or Institution |  |
    | bank_assets[0].account_number | Sample Account number |  |
    | bank_assets[0].market_value | 100 |  |
    | bank_assets[0].marital_property | Marital |  |
    | bank_assets[0].has_possession | Zoë J. O'Brien-Núñez Jr |  |
    | bank_assets[0].recommended_award | Zoë J. O'Brien-Núñez Jr |  |
    | securities.selected_types_set | False |  |
    | retirement_accounts.selected_types_set | False |  |
    | there_are_any_screen | True |  |
    | joint_assets.review_items | True |  |
    | debts.selected_types['credit_card_debt'] | True |  |
    | debts.selected_types['personal_loans'] | False |  |
    | debts.selected_types['medical_debt'] | False |  |
    | debts.selected_types['student_loans'] | False |  |
    | debts.selected_types['other'] | False |  |
    | debts[0].source | credit_card_debt |  |
    | debts[0].lender | Sample Who is the money owed to |  |
    | debts[0].balance | 100 |  |
    | debts[0].monthly_payment | 100 |  |
    | debts[0].marital_property | Marital |  |
    | debts[0].recommended_debt | Zoë J. O'Brien-Núñez Jr |  |
    | debts.review_items | True |  |
    | use_presumed_child_support | yes |  |
    | other_parties[0].service_type | home |  |
    | other_allegations_exist | False |  |
    | preview_additional_allegations | True |  |
    | is_additional_provisions_property_statement | False |  |
    | property_statement_review_screen | True |  |
    | is_additional_provisions_parenting_plan | False |  |
    | businesses.target_number | 0 |  |
    | children.target_number | 1 |  |
    | debts_owed_to_you.target_number | 0 |  |
    | farm.target_number | 0 |  |
    | interest_in_contract.target_number | 0 |  |
    | interest_in_litigation.target_number | 0 |  |
    | interests_in_trust.target_number | 0 |  |
    | life_insurance.target_number | 0 |  |
    | other_assets.target_number | 0 |  |
    | other_holidays.target_number | 0 |  |
    | other_parties[0].jobs.target_number | 0 |  |
    | persons_lived_with.target_number | 1 |  |
    | users[0].jobs.target_number | 0 |  |
    | x.extraordinary_childrearing_costs.target_number | 0 | other_parties[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_childrearing_costs.target_number | 0 | users[0].extraordinary_childrearing_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | other_parties[0].extraordinary_medical_costs.target_number |
    | x.extraordinary_medical_costs.target_number | 0 | users[0].extraordinary_medical_costs.target_number |
  And I download "petition.pdf"
  And I download "petition_unredacted.pdf"
  And I download "parenting_plan.pdf"
  And I download "judgment.pdf"
