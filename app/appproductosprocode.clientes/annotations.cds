using appProductosProCodeSrv as service from '../../srv/service';
using from '../annotations';

annotate service.Clientes with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : nombre,
            Label : 'nombre',
        },
        {
            $Type : 'UI.DataField',
            Value : puntosDeFidelidad,
        },
    ],
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : nombre,
                Label : 'nombre',
            },
            {
                $Type : 'UI.DataField',
                Value : puntosDeFidelidad,
            },
        ],
    },
);

