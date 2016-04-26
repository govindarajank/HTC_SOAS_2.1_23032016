

function expandAll(){

    if(jq("#note_disclosureContent").attr('data-open') == 'false'){
        jq("#note_toggle").focus().click();
    }
    if(jq("#OlePatronDocument-OverviewSection_disclosureContent").attr('data-open') == 'false'){
        jq("#OlePatronDocument-OverviewSection_toggle").focus().click();
    }
    if(jq("#OlePatronDocument-ContactsSection_disclosureContent").attr('data-open') == 'false'){
        jq("#OlePatronDocument-ContactsSection_toggle").focus().click();
    }
    if((jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").attr('data-submit_data'))['filterAffiliation'] == 'false'){
        if(jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").attr('data-submit_data'))['filterLibraryPolicies'] == 'false'){
        if(jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").attr('data-submit_data'))['filterLoanedRecords'] == 'false'){
        if(jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").attr('data-submit_data'))['filterRequestedRecords'] == 'false'){
        if(jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").attr('data-submit_data'))['filterTemporaryCirculationHistoryRecords'] == 'false'){
        if(jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").attr('data-submit_data'))['filterNotesSection'] == 'false'){
        if(jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").attr('data-submit_data'))['filterProxySection'] == 'false'){
        if(jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").attr('data-submit_data'))['filterProxyForSection'] == 'false'){
        if(jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").attr('data-submit_data'))['filterPatronLocalIdSection'] == 'false'){
        if(jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").focus().click();
        }
    }
    if(jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").attr('data-submit_data')!=undefined && JSON.parse(jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").attr('data-submit_data'))['filterInvalidOrLostBarcodeSection'] == 'false'){
        if(jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").focus().click();
        }
    }
    if(jq("#adhoc_disclosureContent").attr('data-open') == 'false'){
        jq("#adhoc_toggle").focus().click();
    }
    if(jq("#routesection_disclosureContent").attr('data-open') == 'false'){
        jq("#routesection_toggle").focus().click();
    }
}

function collapseAll(){
    if(jq("#note_disclosureContent").attr('data-open') == 'true'){
        jq("#note_toggle").focus().click();
    }
    if(jq("#OlePatronDocument-OverviewSection_disclosureContent").attr('data-open') == 'true'){
        jq("#OlePatronDocument-OverviewSection_toggle").focus().click();
    }
    if(jq("#OlePatronDocument-ContactsSection_disclosureContent").attr('data-open') == 'true'){
        jq("#OlePatronDocument-ContactsSection_toggle").focus().click();
    }
    if((jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").attr('data-submit_data'))['filterAffiliation'] == 'true'){
        if(jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-Affiliation-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").attr('data-submit_data'))['filterLibraryPolicies'] == 'true'){
        if(jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-LibraryPoliciesSection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").attr('data-submit_data'))['filterLoanedRecords'] == 'true'){
        if(jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-PatronLoanedRecords-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").attr('data-submit_data'))['filterRequestedRecords'] == 'true'){
        if(jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-PatronRequestedRecords-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").attr('data-submit_data'))['filterTemporaryCirculationHistoryRecords'] == 'true'){
        if(jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-TemporaryCirculationHistoryRecords-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").attr('data-submit_data'))['filterNotesSection'] == 'true'){
        if(jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-NotesSection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").attr('data-submit_data'))['filterProxySection'] == 'true'){
        if(jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-ProxySection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").attr('data-submit_data'))['filterProxyForSection'] == 'true'){
        if(jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-ProxyForSection-Wrapper h3 span a").focus().click();
        }
    }
    if((jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").attr('data-submit_data'))!=undefined && JSON.parse(jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").attr('data-submit_data'))['filterPatronLocalIdSection'] == 'true'){
        if(jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-PatronLocalIdSection-Wrapper h3 span a").focus().click();
        }
    }
    if(jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").attr('data-submit_data')!=undefined && JSON.parse(jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").attr('data-submit_data'))['filterInvalidOrLostBarcodeSection'] == 'true'){
        if(jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").hasClass('enableColor')) {
            jq("#OlePatronDocument-InvalidOrLostBarcodeSection-Wrapper h3 span a").focus().click();
        }
    }
    if(jq("#adhoc_disclosureContent").attr('data-open') == 'true'){
        jq("#adhoc_toggle").focus().click();
    }
    if(jq("#routesection_disclosureContent").attr('data-open') == 'true'){
        jq("#routesection_toggle").focus().click();
    }
}
