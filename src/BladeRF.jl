# module BladeRF
using StrPack

const BLADERF_SERIAL_LENGTH   33
const libbladerf = "libbladerf"

# bladerf_backend 	backend
#
# char     serial [BLADERF_SERIAL_LENGTH]
#
# uint8_t     usb_bus
#
# uint8_t     usb_addr
#
# unsigned int     instance
@struct type bladerf_devinfo
    backend::Int32
    float1::Float32
end



typealias BladeRFStatus Int

macro bladerfcall( fname, argtypes, args... )
    quote
        ret = ccall( ($fname, libbladerf), BladeRFStatus, $argtypes, $(args...) )
        ret == 0 || error( bladerf_strerror(ret) )
    end
end

function bladerf_strerror( status::Integer )
    p = ccall( ( :bladerf_strerror, libbladerf ), Ptr{Uint8}, (BladeRFStatus,), status )
    return bytestring(p)
end


# API_EXPORT int CALL_CONV bladerf_get_device_list	(	struct bladerf_devinfo ** 	devices	)
function bladerf_get_device_list()
    @bladerfcall( :bladerf_get_device_list, () )    
end

# end # module