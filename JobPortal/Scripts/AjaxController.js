var AjaxController = {

    CallAjaxFunction: function (url, data, loadingSelector) {

        if (loadingSelector != '') {
            $(loadingSelector).show();
        }
        alert('s');
        $.ajax({

            url: '../webapi/api/' + url,
            type: typeP != null ? typeP : "GET",
            contentType: 'application/json; charset=utf-8',
            data: dataP,

            success: function (data, textStatus, qXHR) {

                if (typeof successP == 'function') {
                    successP(data, textStatus, qXHR);
                }
                else Communication.HandleAPIResponse(data);
            },
            complete: function (qXHR, textStatus) {
                if (loadingSelector != '') {
                    $(loadingSelector).show();
                }
            }
        });
    }

};