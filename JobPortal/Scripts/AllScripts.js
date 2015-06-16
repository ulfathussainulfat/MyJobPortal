var RequestOperations = {
    REQUEST_OPERATION_GetCities: 1,
    REQUEST_OPERATION_GetDegreeTypes: 2,
    REQUEST_OPERATION_GetJobRoles: 3
};

$(document).ready(function () {
    
    $('.tdcountrycitysection').each(function () {        
        $(this).find('select[name$="Country"]').change(function () {
            var ddlCity = $(this).parent().find('select[name$="City"]');//get city dropdown
            ddlCity.html('<option value="-1">- Select City -</option>');//clear items
            var countryId = $(this).val();
            if (countryId != '-1') {
                var url = '?RequestOperation=' + RequestOperations.REQUEST_OPERATION_GetCities + '&CountryId=' + countryId;
                AjaxController.CallAjaxFunction(url, 'GET', null, function (result) {
                    $.each(result, function (key, item) {
                        ddlCity.append('<option value="' + item.Id + '">' + item.City1 + '</option>');
                    });
                }, $(ddlCity).next()
                );
            }
        });
    });    

    $('select[name$="ddlDegreeLevel"]').change(function () {
        var ddlDegreeType = $('select[name$="ddlDegreeType"]');//get degree type dropdown
        ddlDegreeType.html('<option value="-1">- Select Degree Type -</option>');//clear items
        var degreeLevelId = $(this).val();
        if (degreeLevelId != '-1') {
            var url = '?RequestOperation=' + RequestOperations.REQUEST_OPERATION_GetDegreeTypes + '&DegreeLevelId=' + degreeLevelId;
            AjaxController.CallAjaxFunction(url, 'GET', null, function (result) {
                if (result.length > 0) {
                    $('tr[name=trddlDegreeType]').show();
                    $.each(result, function (key, item) {
                        ddlDegreeType.append('<option value="' + item.Id + '">' + item.DegreeType1 + '</option>');
                    });
                }
                else {
                    $('tr[name=trddlDegreeType]').hide();
                }

            }, $('#divddlDegreeType')
            );
        }
        else {
            $('tr[name=trddlDegreeType]').hide();
        }
    });

    $('select[name$="ddlFunctionalArea"]').change(function () {
        var ddlJobRole = $('select[name$="ddlJobRole"]');//get degree type dropdown
        ddlJobRole.html('<option value="-1">- Select Job Role -</option>');//clear items
        var functionalAreaId = $(this).val();
        if (functionalAreaId != '-1') {
            var url = '?RequestOperation=' + RequestOperations.REQUEST_OPERATION_GetJobRoles + '&FunctionalAreaId=' + functionalAreaId;
            AjaxController.CallAjaxFunction(url, 'GET', null, function (result) {
                if (result.length > 0) {
                    $('tr[name=trddlJobRole]').show();
                    $.each(result, function (key, item) {
                        ddlJobRole.append('<option value="' + item.Id + '">' + item.JobRole1 + '</option>');
                    });
                }
                else {
                    $('tr[name=trddlJobRole]').hide();
                }

            }, $('#divddlJobRole')
            );
        }
        else {
            $('tr[name=trddlJobRole]').hide();
        }
    });
});