import json
from docassemble.base.functions import states_list
from functools import lru_cache
from docassemble.base.util import Address, validation_error, path_and_mimetype

__all__ = ['validate_us_state','not_name_change', 'child_support_obligation', 'choice_label', 'checkbox_labels']

def validate_us_state(address: Address) -> None:
    if (not hasattr(address,'country') or address.country == "US") and hasattr(address,'state') and not len(address.state) == 2:
        users_state = address.state.lower()
        states_abbr = {v.lower(): k for k, v in states_list().items()}
        if users_state in states_abbr:
            address.state = states_abbr[users_state]
        else:
            validation_error("You must enter the state's two-letter abbreviation.", f"""{address.attr_name("state")}""")

def not_name_change(case):
    return case.type != "name_change"

@lru_cache(maxsize=1)
def _schedule():
    path, _ = path_and_mimetype("docassemble.MODivorceForms:data/sources/basic_child_support_schedule.json")
    with open(path) as f:
        return json.load(f)

def child_support_obligation(num_children, income_index):
    return _schedule()[str(num_children)][f"{income_index:.0f}"]["obligation"]


_CHOICE_LABELS = {
    "communications": {
        "in_person": "In person",
        "home_telephone": "Home telephone",
        "work_telephone": "Work telephone",
        "mobile_telephone": "Mobile telephone",
        "letter": "Letter via U.S. Postal Service",
        "email": "E-mail",
        "third_party": "Using a third person",
    },
    "use_presumed_child_support": {
        "yes": "Yes, this amount is correct.",
        "no": "No, the child support amount should be different.",
    },
    "child_support_start_date": {
        "judgment_date": "The first child support payment is due on the date of the entry of the judgment.",
        "specific_date": "The first child support payment is due on a designated date",
    },
    "child_support_method_of_payment": {
        "income_withholding": "Child support shall be paid through income withholding.",
        "no_agreement": "No income withholding because the parents have agreed on an alternative form of payment.",
        "no_not_in_best_interest": "No income withholding because immediate income withholding is not necessary. The paying parent has made timely payments on all previously ordered support.",
    },
    "child_support_location_of_payment": {
        "fpsc": "Directly to the Family Support Payment Center",
    },
    "health_expenses_not_covered": {
        "support_recipient": "The parent receiving child support",
        "support_payer": "The parent paying child support",
        "none": "All reasonable and necessary medical or dental expenses of the children are covered by insurance.",
    },
    "medical_insurance": {"none": "Neither parent"},
    "dental_insurance": {"none": "Neither parent"},
    "pay_work_childcare_expenses": {
        "none": "There are no work-related child care costs incurred by the parents.",
        "included_in_form14": "The work-related child care costs will be included in the child support calculation on the Form 14.",
        "pay_own": "Each parent will pay their own reasonable work-related child care expenses.",
        "pay_percentage": "The paying parent will partially reimburse the other parent for work-related child care expenses.",
    },
}


def choice_label(variable, value):
    """Return the human-readable label for a stored choice value."""
    return _CHOICE_LABELS.get(variable, {}).get(value, value)


def checkbox_labels(variable, checkboxes):
    """Return the labels of the checked boxes as a comma-separated string."""
    return ", ".join(choice_label(variable, key) for key in checkboxes.true_values())
