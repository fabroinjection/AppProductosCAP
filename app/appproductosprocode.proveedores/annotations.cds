using appProductosProCodeSrv as service from '../../srv/service';
using from '../annotations';

annotate service.Proveedores with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : nombre,
            Label : 'nombre',
        },
        {
            $Type : 'UI.DataField',
            Value : contacto,
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
                Value : contacto,
            },
        ],
    },
);

