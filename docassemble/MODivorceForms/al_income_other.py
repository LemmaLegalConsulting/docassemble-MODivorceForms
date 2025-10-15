from docassemble.ALToolbox.al_income import ALIncomeList, ALAssetList
from docassemble.base.util import (
    DAObject,
    DADict,
    DAList,
    DAOrderedDict,
    DAEmpty,
    Individual,
    comma_list,
    get_locale,
    word,
    log,
    object_name_convert,
    value,
)
from typing import Any, Dict, Callable, List, Optional, Set, Union, Tuple, Mapping

__all__ = ["ALIncomeListOther","ALAssetListOther"]
    
class ALIncomeListOther(ALIncomeList):
    """
    Represents a filterable DAList of incomes-type items. It can make
    use of these attributes and methods in its items:

    .source
    .owner
    .times_per_year
    .value
    .total()
    """
    
    def move_checks_to_list(
        self,
        selected_types: Optional[DADict] = None,
        selected_terms: Optional[Mapping] = None,
    ):
        """Gives a 'gather by checklist' option.
        If no selected_types param is passed, requires that a .selected_types
        attribute be set by a `datatype: checkboxes` fields
        If "other" is in the selected_types, the source will not be set directly

        Sets the attribute "moved" to true, doesn't set gathered, because this isn't
        idempotent, so trying to also gather all info about the checks in the list doesn't
        work well.
        """
        if selected_types is None:
            selected_types = self.selected_types
        if not selected_terms:
            selected_terms = {}
        self.elements.clear()
        for source in selected_types.true_values(insertion_order=True):
            self.appendObject(
                source=source, display_name=selected_terms.get(source, source)
            )
        self.moved = True
    
class ALAssetListOther(ALAssetList, ALIncomeListOther):
    pass
