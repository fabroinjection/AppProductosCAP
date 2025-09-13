/**
 * 
 * @On(event = { "CREATE" }, entity = "appProductosProCodeSrv.Proveedores")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 * @param {Function} next - Callback function to the next handler
 */
module.exports = async function(request, next) {
    // Extract the data from the request
    const { data } = request;

    // Check if the 'contacto' field is defined
    if (data.contacto) {
        // Regular expression to validate email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        // Validate the 'contacto' field to ensure it is a valid email
        if (!emailRegex.test(data.contacto)) {
            // If the email is not valid, throw an error
            return request.reject(400, 'El contacto debe ser un correo electrónico válido.');
        }
    }

    // Proceed to the next handler
    return next();
}