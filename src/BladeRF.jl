module BladeRF
const libbladerf            = "libbladerf"


typealias BladeRFStatus Cint

type bladerf_devinfo
    backend::Cint
    serial::Array{Char,1}
    usb_bus::Uint8
    usb_addr::Uint8
    instance::Cuint
end


include(joinpath(dirname(@__FILE__), "../gen", "libbladerf.jl" ))

# bladerf_backend 	backend
#
# char     serial [BLADERF_SERIAL_LENGTH]
#
# uint8_t     usb_bus
#
# uint8_t     usb_addr
#
# unsigned int     instance





macro bladerfcall( fname, argtypes, args... )
    quote
        ret = ccall( ($fname, libbladerf), BladeRFStatus, $argtypes, $(args...) )
        ret == 0 || display(ret), error( bladerf_strerror(ret) )
    end
end

function bladerf_strerror( status::Integer )
    p = ccall( ( :bladerf_strerror, libbladerf ), Ptr{Uint8}, (BladeRFStatus,), status )
    return bytestring( p )
end


# API_EXPORT int CALL_CONV bladerf_get_device_list	(	struct bladerf_devinfo ** 	devices	)
function bladerf_get_device_list()
    devices = [Ptr{Void}]
    @bladerfcall( :bladerf_get_device_list, ( Ptr{Ptr{Void}}, ), pointer(devices) )    
end

end # module
