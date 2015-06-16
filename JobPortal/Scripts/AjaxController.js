var AjaxController = {

    CallAjaxFunction: function (url, type, data, succesFunction, loadingObject) {

        if (loadingObject != null) {
            $(loadingObject).html('<img src="images/ajax-loader.gif" />');
        }
        $.ajax({
            url: 'AjaxHandler.ashx' + url,
            type: type != null ? type : "GET",
            contentType: 'application/json; charset=utf-8',
            data: data,
            success: function (data, textStatus, qXHR) {
                if (typeof succesFunction == 'function') {
                    succesFunction(data, textStatus, qXHR);
                }               
            },
            complete: function (qXHR, textStatus) {
                if (loadingObject != null) {
                    $(loadingObject).html('');
                }
            }
        });
    }

};