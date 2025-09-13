sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"appproductosprocode/clientes/test/integration/pages/ClientesList",
	"appproductosprocode/clientes/test/integration/pages/ClientesObjectPage"
], function (JourneyRunner, ClientesList, ClientesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('appproductosprocode/clientes') + '/index.html',
        pages: {
			onTheClientesList: ClientesList,
			onTheClientesObjectPage: ClientesObjectPage
        },
        async: true
    });

    return runner;
});

