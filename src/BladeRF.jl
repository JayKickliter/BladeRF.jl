module BladeRF

export  devices,
        open,
        close,
        BladeRFDeviceInfo,
        BladeRFDevice
        
const libbladerf = "libbladerf"
typealias BladeRFStatus Cint



macro bladerfcall( fname, argtypes, args... )
    quote
        ret = ccall( ($fname, libbladerf), BladeRFStatus, $argtypes, $(args...) )
        ret >= 0 || error( "[$ret] "errorstring(ret) )
        ret
    end
end


immutable SerialNumber
    char1::Uint8
    char2::Uint8
    char3::Uint8
    char4::Uint8
    char5::Uint8
    char6::Uint8
    char7::Uint8
    char8::Uint8
    char9::Uint8
    char10::Uint8
    char11::Uint8
    char12::Uint8
    char13::Uint8
    char14::Uint8
    char15::Uint8
    char16::Uint8
    char17::Uint8
    char18::Uint8
    char19::Uint8
    char20::Uint8
    char21::Uint8
    char22::Uint8
    char23::Uint8
    char24::Uint8
    char25::Uint8
    char26::Uint8
    char27::Uint8
    char28::Uint8
    char29::Uint8
    char30::Uint8
    char31::Uint8
    char32::Uint8
    char33::Uint8
    SerialNumber() = new()
end

function Base.string( serial::SerialNumber )
    ascii( [serial.char1,serial.char2,serial.char3,serial.char4,serial.char5,serial.char6,serial.char7,serial.char8,serial.char9,serial.char10,serial.char11,serial.char12,serial.char13,serial.char14,serial.char15,serial.char16,serial.char17,serial.char18,serial.char19,serial.char20,serial.char21,serial.char22,serial.char23,serial.char24,serial.char25,serial.char26,serial.char27,serial.char28,serial.char29,serial.char30,serial.char31,serial.char32,serial.char33] )
end

immutable BladeRFDeviceInfo
    backend::Int32
    serial::SerialNumber
    usb_bus::Uint8
    usb_addr::Uint8
    instance::Uint32
end

type BladeRFDevice
    handle::Ptr{Void}
    function BladeRFDevice( handle )
        device = new( handle )
        finalizer( device, close )
        return device
    end
end


function Base.show( io::IO, devinfo::BladeRFDeviceInfo )
    println( "Backend:      $(devinfo.backend)" )
    println( "Serial #:     $(string(devinfo.serial))" )
    println( "USB Bust:     $(int(devinfo.usb_bus))" )
    println( "USB Address:  $(int(devinfo.usb_addr))" )
    println( "Instance:     $(int(devinfo.instance))\n" )
end


function errorstring( status::Integer )
    p = ccall( ( :bladerf_strerror, libbladerf ), Ptr{Uint8}, (BladeRFStatus,), status )
    return bytestring( p )
end


function devices()
    devlist  = Array(Ptr{BladeRFDeviceInfo},1)
    ndevices = @bladerfcall( :bladerf_get_device_list, ( Ptr{BladeRFDeviceInfo}, ), pointer(devlist) )
    return pointer_to_array( devlist[1], (ndevices,), true )
end


function Base.open( devinfo::BladeRFDeviceInfo )
    handle = [C_NULL]
    @bladerfcall( :bladerf_open_with_devinfo, ( Ptr{Ptr{Void}}, Ptr{BladeRFDeviceInfo} ), handle, [devinfo] )
    return BladeRFDevice(handle[1])
end

function Base.open()
    devinfo = devices()[1]
    device  = open( devinfo )
    return device
end


function Base.close( device::BladeRFDevice )
    if device.handle != C_NULL
        @bladerfcall( :bladerf_close, ( Ptr{Void}, ), device.handle )
    end
    device.handle = C_NULL
end


end # module