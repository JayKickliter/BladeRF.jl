# Julia wrapper for header: /opt/local/include/libbladeRF.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function bladerf_get_device_list(devices::Ptr{Ptr{bladerf_devinfo}})
    ccall((:bladerf_get_device_list,libbladerf),Cint,(Ptr{Ptr{bladerf_devinfo}},),devices)
end

function bladerf_free_device_list(devices::Ptr{bladerf_devinfo})
    ccall((:bladerf_free_device_list,libbladerf),Void,(Ptr{bladerf_devinfo},),devices)
end

function bladerf_open_with_devinfo(device::Ptr{Ptr{bladerf}},devinfo::Ptr{bladerf_devinfo})
    ccall((:bladerf_open_with_devinfo,libbladerf),Cint,(Ptr{Ptr{bladerf}},Ptr{bladerf_devinfo}),device,devinfo)
end

function bladerf_open(device::Ptr{Ptr{bladerf}},device_identifier::Ptr{Uint8})
    ccall((:bladerf_open,libbladerf),Cint,(Ptr{Ptr{bladerf}},Ptr{Uint8}),device,device_identifier)
end

function bladerf_close(device::Ptr{bladerf})
    ccall((:bladerf_close,libbladerf),Void,(Ptr{bladerf},),device)
end

function bladerf_init_devinfo(info::Ptr{bladerf_devinfo})
    ccall((:bladerf_init_devinfo,libbladerf),Void,(Ptr{bladerf_devinfo},),info)
end

function bladerf_get_devinfo(dev::Ptr{bladerf},info::Ptr{bladerf_devinfo})
    ccall((:bladerf_get_devinfo,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_devinfo}),dev,info)
end

function bladerf_get_devinfo_from_str(devstr::Ptr{Uint8},info::Ptr{bladerf_devinfo})
    ccall((:bladerf_get_devinfo_from_str,libbladerf),Cint,(Ptr{Uint8},Ptr{bladerf_devinfo}),devstr,info)
end

function bladerf_devinfo_matches(a::Ptr{bladerf_devinfo},b::Ptr{bladerf_devinfo})
    ccall((:bladerf_devinfo_matches,libbladerf),Bool,(Ptr{bladerf_devinfo},Ptr{bladerf_devinfo}),a,b)
end

function bladerf_devstr_matches(dev_str::Ptr{Uint8},info::Ptr{bladerf_devinfo})
    ccall((:bladerf_devstr_matches,libbladerf),Bool,(Ptr{Uint8},Ptr{bladerf_devinfo}),dev_str,info)
end

function bladerf_backend_str(backend::bladerf_backend)
    ccall((:bladerf_backend_str,libbladerf),Ptr{Uint8},(bladerf_backend,),backend)
end

function bladerf_enable_module(dev::Ptr{bladerf},m::bladerf_module,enable::Bool)
    ccall((:bladerf_enable_module,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Bool),dev,m,enable)
end

function bladerf_set_loopback(dev::Ptr{bladerf},l::bladerf_loopback)
    ccall((:bladerf_set_loopback,libbladerf),Cint,(Ptr{bladerf},bladerf_loopback),dev,l)
end

function bladerf_get_loopback(dev::Ptr{bladerf},l::Ptr{bladerf_loopback})
    ccall((:bladerf_get_loopback,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_loopback}),dev,l)
end

function bladerf_set_sample_rate(dev::Ptr{bladerf},_module::bladerf_module,rate::Uint32,actual::Ptr{Uint32})
    ccall((:bladerf_set_sample_rate,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Uint32,Ptr{Uint32}),dev,_module,rate,actual)
end

function bladerf_set_rational_sample_rate(dev::Ptr{bladerf},_module::bladerf_module,rate::Ptr{bladerf_rational_rate},actual::Ptr{bladerf_rational_rate})
    ccall((:bladerf_set_rational_sample_rate,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{bladerf_rational_rate},Ptr{bladerf_rational_rate}),dev,_module,rate,actual)
end

function bladerf_set_sampling(dev::Ptr{bladerf},sampling::bladerf_sampling)
    ccall((:bladerf_set_sampling,libbladerf),Cint,(Ptr{bladerf},bladerf_sampling),dev,sampling)
end

function bladerf_get_sampling(dev::Ptr{bladerf},sampling::Ptr{bladerf_sampling})
    ccall((:bladerf_get_sampling,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_sampling}),dev,sampling)
end

function bladerf_get_sample_rate(dev::Ptr{bladerf},_module::bladerf_module,rate::Ptr{Uint32})
    ccall((:bladerf_get_sample_rate,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{Uint32}),dev,_module,rate)
end

function bladerf_get_rational_sample_rate(dev::Ptr{bladerf},_module::bladerf_module,rate::Ptr{bladerf_rational_rate})
    ccall((:bladerf_get_rational_sample_rate,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{bladerf_rational_rate}),dev,_module,rate)
end

function bladerf_set_correction(dev::Ptr{bladerf},_module::bladerf_module,corr::bladerf_correction,value::Int16)
    ccall((:bladerf_set_correction,libbladerf),Cint,(Ptr{bladerf},bladerf_module,bladerf_correction,Int16),dev,_module,corr,value)
end

function bladerf_get_correction(dev::Ptr{bladerf},_module::bladerf_module,corr::bladerf_correction,value::Ptr{Int16})
    ccall((:bladerf_get_correction,libbladerf),Cint,(Ptr{bladerf},bladerf_module,bladerf_correction,Ptr{Int16}),dev,_module,corr,value)
end

function bladerf_set_txvga2(dev::Ptr{bladerf},gain::Cint)
    ccall((:bladerf_set_txvga2,libbladerf),Cint,(Ptr{bladerf},Cint),dev,gain)
end

function bladerf_get_txvga2(dev::Ptr{bladerf},gain::Ptr{Cint})
    ccall((:bladerf_get_txvga2,libbladerf),Cint,(Ptr{bladerf},Ptr{Cint}),dev,gain)
end

function bladerf_set_txvga1(dev::Ptr{bladerf},gain::Cint)
    ccall((:bladerf_set_txvga1,libbladerf),Cint,(Ptr{bladerf},Cint),dev,gain)
end

function bladerf_get_txvga1(dev::Ptr{bladerf},gain::Ptr{Cint})
    ccall((:bladerf_get_txvga1,libbladerf),Cint,(Ptr{bladerf},Ptr{Cint}),dev,gain)
end

function bladerf_set_tx_gain(dev::Ptr{bladerf},gain::Cint)
    ccall((:bladerf_set_tx_gain,libbladerf),Cint,(Ptr{bladerf},Cint),dev,gain)
end

function bladerf_set_lna_gain(dev::Ptr{bladerf},gain::bladerf_lna_gain)
    ccall((:bladerf_set_lna_gain,libbladerf),Cint,(Ptr{bladerf},bladerf_lna_gain),dev,gain)
end

function bladerf_get_lna_gain(dev::Ptr{bladerf},gain::Ptr{bladerf_lna_gain})
    ccall((:bladerf_get_lna_gain,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_lna_gain}),dev,gain)
end

function bladerf_set_rxvga1(dev::Ptr{bladerf},gain::Cint)
    ccall((:bladerf_set_rxvga1,libbladerf),Cint,(Ptr{bladerf},Cint),dev,gain)
end

function bladerf_get_rxvga1(dev::Ptr{bladerf},gain::Ptr{Cint})
    ccall((:bladerf_get_rxvga1,libbladerf),Cint,(Ptr{bladerf},Ptr{Cint}),dev,gain)
end

function bladerf_set_rxvga2(dev::Ptr{bladerf},gain::Cint)
    ccall((:bladerf_set_rxvga2,libbladerf),Cint,(Ptr{bladerf},Cint),dev,gain)
end

function bladerf_get_rxvga2(dev::Ptr{bladerf},gain::Ptr{Cint})
    ccall((:bladerf_get_rxvga2,libbladerf),Cint,(Ptr{bladerf},Ptr{Cint}),dev,gain)
end

function bladerf_set_gain(dev::Ptr{bladerf},mod::bladerf_module,gain::Cint)
    ccall((:bladerf_set_gain,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Cint),dev,mod,gain)
end

function bladerf_set_bandwidth(dev::Ptr{bladerf},_module::bladerf_module,bandwidth::Uint32,actual::Ptr{Uint32})
    ccall((:bladerf_set_bandwidth,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Uint32,Ptr{Uint32}),dev,_module,bandwidth,actual)
end

function bladerf_get_bandwidth(dev::Ptr{bladerf},_module::bladerf_module,bandwidth::Ptr{Uint32})
    ccall((:bladerf_get_bandwidth,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{Uint32}),dev,_module,bandwidth)
end

function bladerf_set_lpf_mode(dev::Ptr{bladerf},_module::bladerf_module,mode::bladerf_lpf_mode)
    ccall((:bladerf_set_lpf_mode,libbladerf),Cint,(Ptr{bladerf},bladerf_module,bladerf_lpf_mode),dev,_module,mode)
end

function bladerf_get_lpf_mode(dev::Ptr{bladerf},_module::bladerf_module,mode::Ptr{bladerf_lpf_mode})
    ccall((:bladerf_get_lpf_mode,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{bladerf_lpf_mode}),dev,_module,mode)
end

function bladerf_select_band(dev::Ptr{bladerf},_module::bladerf_module,frequency::Uint32)
    ccall((:bladerf_select_band,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Uint32),dev,_module,frequency)
end

function bladerf_set_frequency(dev::Ptr{bladerf},_module::bladerf_module,frequency::Uint32)
    ccall((:bladerf_set_frequency,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Uint32),dev,_module,frequency)
end

function bladerf_get_frequency(dev::Ptr{bladerf},_module::bladerf_module,frequency::Ptr{Uint32})
    ccall((:bladerf_get_frequency,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{Uint32}),dev,_module,frequency)
end

function bladerf_expansion_attach(dev::Ptr{bladerf},xb::bladerf_xb)
    ccall((:bladerf_expansion_attach,libbladerf),Cint,(Ptr{bladerf},bladerf_xb),dev,xb)
end

function bladerf_expansion_get_attached(dev::Ptr{bladerf},xb::Ptr{bladerf_xb})
    ccall((:bladerf_expansion_get_attached,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_xb}),dev,xb)
end

function bladerf_xb200_set_filterbank(dev::Ptr{bladerf},mod::bladerf_module,filter::bladerf_xb200_filter)
    ccall((:bladerf_xb200_set_filterbank,libbladerf),Cint,(Ptr{bladerf},bladerf_module,bladerf_xb200_filter),dev,mod,filter)
end

function bladerf_xb200_get_filterbank(dev::Ptr{bladerf},_module::bladerf_module,filter::Ptr{bladerf_xb200_filter})
    ccall((:bladerf_xb200_get_filterbank,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{bladerf_xb200_filter}),dev,_module,filter)
end

function bladerf_xb200_set_path(dev::Ptr{bladerf},_module::bladerf_module,path::bladerf_xb200_path)
    ccall((:bladerf_xb200_set_path,libbladerf),Cint,(Ptr{bladerf},bladerf_module,bladerf_xb200_path),dev,_module,path)
end

function bladerf_xb200_get_path(dev::Ptr{bladerf},_module::bladerf_module,path::Ptr{bladerf_xb200_path})
    ccall((:bladerf_xb200_get_path,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{bladerf_xb200_path}),dev,_module,path)
end

function bladerf_init_stream(stream::Ptr{Ptr{bladerf_stream}},dev::Ptr{bladerf},callback::bladerf_stream_cb,buffers::Ptr{Ptr{Ptr{Void}}},num_buffers::Csize_t,format::bladerf_format,samples_per_buffer::Csize_t,num_transfers::Csize_t,user_data::Ptr{Void})
    ccall((:bladerf_init_stream,libbladerf),Cint,(Ptr{Ptr{bladerf_stream}},Ptr{bladerf},bladerf_stream_cb,Ptr{Ptr{Ptr{Void}}},Csize_t,bladerf_format,Csize_t,Csize_t,Ptr{Void}),stream,dev,callback,buffers,num_buffers,format,samples_per_buffer,num_transfers,user_data)
end

function bladerf_stream(stream::Ptr{bladerf_stream},_module::bladerf_module)
    ccall((:bladerf_stream,libbladerf),Cint,(Ptr{bladerf_stream},bladerf_module),stream,_module)
end

function bladerf_submit_stream_buffer(stream::Ptr{bladerf_stream},buffer::Ptr{Void},timeout_ms::Uint32)
    ccall((:bladerf_submit_stream_buffer,libbladerf),Cint,(Ptr{bladerf_stream},Ptr{Void},Uint32),stream,buffer,timeout_ms)
end

function bladerf_deinit_stream(stream::Ptr{bladerf_stream})
    ccall((:bladerf_deinit_stream,libbladerf),Void,(Ptr{bladerf_stream},),stream)
end

function bladerf_set_stream_timeout(dev::Ptr{bladerf},_module::bladerf_module,timeout::Uint32)
    ccall((:bladerf_set_stream_timeout,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Uint32),dev,_module,timeout)
end

function bladerf_get_stream_timeout(dev::Ptr{bladerf},_module::bladerf_module,timeout::Ptr{Uint32})
    ccall((:bladerf_get_stream_timeout,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{Uint32}),dev,_module,timeout)
end

function bladerf_sync_config(dev::Ptr{bladerf},_module::bladerf_module,format::bladerf_format,num_buffers::Uint32,buffer_size::Uint32,num_transfers::Uint32,stream_timeout::Uint32)
    ccall((:bladerf_sync_config,libbladerf),Cint,(Ptr{bladerf},bladerf_module,bladerf_format,Uint32,Uint32,Uint32,Uint32),dev,_module,format,num_buffers,buffer_size,num_transfers,stream_timeout)
end

function bladerf_sync_tx(dev::Ptr{bladerf},samples::Ptr{Void},num_samples::Uint32,metadata::Ptr{bladerf_metadata},timeout_ms::Uint32)
    ccall((:bladerf_sync_tx,libbladerf),Cint,(Ptr{bladerf},Ptr{Void},Uint32,Ptr{bladerf_metadata},Uint32),dev,samples,num_samples,metadata,timeout_ms)
end

function bladerf_sync_rx(dev::Ptr{bladerf},samples::Ptr{Void},num_samples::Uint32,metadata::Ptr{bladerf_metadata},timeout_ms::Uint32)
    ccall((:bladerf_sync_rx,libbladerf),Cint,(Ptr{bladerf},Ptr{Void},Uint32,Ptr{bladerf_metadata},Uint32),dev,samples,num_samples,metadata,timeout_ms)
end

function bladerf_get_serial(dev::Ptr{bladerf},serial::Ptr{Uint8})
    ccall((:bladerf_get_serial,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint8}),dev,serial)
end

function bladerf_get_vctcxo_trim(dev::Ptr{bladerf},trim::Ptr{Uint16})
    ccall((:bladerf_get_vctcxo_trim,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint16}),dev,trim)
end

function bladerf_get_fpga_size(dev::Ptr{bladerf},size::Ptr{bladerf_fpga_size})
    ccall((:bladerf_get_fpga_size,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_fpga_size}),dev,size)
end

function bladerf_fw_version(dev::Ptr{bladerf},version::Ptr{bladerf_version})
    ccall((:bladerf_fw_version,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_version}),dev,version)
end

function bladerf_is_fpga_configured(dev::Ptr{bladerf})
    ccall((:bladerf_is_fpga_configured,libbladerf),Cint,(Ptr{bladerf},),dev)
end

function bladerf_fpga_version(dev::Ptr{bladerf},version::Ptr{bladerf_version})
    ccall((:bladerf_fpga_version,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_version}),dev,version)
end

function bladerf_device_speed(dev::Ptr{bladerf})
    ccall((:bladerf_device_speed,libbladerf),bladerf_dev_speed,(Ptr{bladerf},),dev)
end

function bladerf_flash_firmware(dev::Ptr{bladerf},firmware::Ptr{Uint8})
    ccall((:bladerf_flash_firmware,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint8}),dev,firmware)
end

function bladerf_load_fpga(dev::Ptr{bladerf},fpga::Ptr{Uint8})
    ccall((:bladerf_load_fpga,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint8}),dev,fpga)
end

function bladerf_flash_fpga(dev::Ptr{bladerf},fpga_image::Ptr{Uint8})
    ccall((:bladerf_flash_fpga,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint8}),dev,fpga_image)
end

function bladerf_erase_stored_fpga(dev::Ptr{bladerf})
    ccall((:bladerf_erase_stored_fpga,libbladerf),Cint,(Ptr{bladerf},),dev)
end

function bladerf_device_reset(dev::Ptr{bladerf})
    ccall((:bladerf_device_reset,libbladerf),Cint,(Ptr{bladerf},),dev)
end

function bladerf_jump_to_bootloader(dev::Ptr{bladerf})
    ccall((:bladerf_jump_to_bootloader,libbladerf),Cint,(Ptr{bladerf},),dev)
end

function bladerf_strerror(error::Cint)
    ccall((:bladerf_strerror,libbladerf),Ptr{Uint8},(Cint,),error)
end

function bladerf_version(version::Ptr{bladerf_version})
    ccall((:bladerf_version,libbladerf),Void,(Ptr{bladerf_version},),version)
end

function bladerf_log_set_verbosity(level::bladerf_log_level)
    ccall((:bladerf_log_set_verbosity,libbladerf),Void,(bladerf_log_level,),level)
end

function bladerf_alloc_image(_type::bladerf_image_type,address::Uint32,length::Uint32)
    ccall((:bladerf_alloc_image,libbladerf),Ptr{bladerf_image},(bladerf_image_type,Uint32,Uint32),_type,address,length)
end

function bladerf_alloc_cal_image(fpga_size::bladerf_fpga_size,vctcxo_trim::Uint16)
    ccall((:bladerf_alloc_cal_image,libbladerf),Ptr{bladerf_image},(bladerf_fpga_size,Uint16),fpga_size,vctcxo_trim)
end

function bladerf_free_image(image::Ptr{bladerf_image})
    ccall((:bladerf_free_image,libbladerf),Void,(Ptr{bladerf_image},),image)
end

function bladerf_image_write(image::Ptr{bladerf_image},file::Ptr{Uint8})
    ccall((:bladerf_image_write,libbladerf),Cint,(Ptr{bladerf_image},Ptr{Uint8}),image,file)
end

function bladerf_image_read(image::Ptr{bladerf_image},file::Ptr{Uint8})
    ccall((:bladerf_image_read,libbladerf),Cint,(Ptr{bladerf_image},Ptr{Uint8}),image,file)
end

function bladerf_si5338_read(dev::Ptr{bladerf},address::Uint8,val::Ptr{Uint8})
    ccall((:bladerf_si5338_read,libbladerf),Cint,(Ptr{bladerf},Uint8,Ptr{Uint8}),dev,address,val)
end

function bladerf_si5338_write(dev::Ptr{bladerf},address::Uint8,val::Uint8)
    ccall((:bladerf_si5338_write,libbladerf),Cint,(Ptr{bladerf},Uint8,Uint8),dev,address,val)
end

function bladerf_si5338_set_tx_freq(dev::Ptr{bladerf},freq::Uint32)
    ccall((:bladerf_si5338_set_tx_freq,libbladerf),Cint,(Ptr{bladerf},Uint32),dev,freq)
end

function bladerf_si5338_set_rx_freq(dev::Ptr{bladerf},freq::Uint32)
    ccall((:bladerf_si5338_set_rx_freq,libbladerf),Cint,(Ptr{bladerf},Uint32),dev,freq)
end

function bladerf_lms_read(dev::Ptr{bladerf},address::Uint8,val::Ptr{Uint8})
    ccall((:bladerf_lms_read,libbladerf),Cint,(Ptr{bladerf},Uint8,Ptr{Uint8}),dev,address,val)
end

function bladerf_lms_write(dev::Ptr{bladerf},address::Uint8,val::Uint8)
    ccall((:bladerf_lms_write,libbladerf),Cint,(Ptr{bladerf},Uint8,Uint8),dev,address,val)
end

function bladerf_lms_set_dc_cals(dev::Ptr{bladerf},dc_cals::Ptr{bladerf_lms_dc_cals})
    ccall((:bladerf_lms_set_dc_cals,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_lms_dc_cals}),dev,dc_cals)
end

function bladerf_lms_get_dc_cals(dev::Ptr{bladerf},dc_cals::Ptr{bladerf_lms_dc_cals})
    ccall((:bladerf_lms_get_dc_cals,libbladerf),Cint,(Ptr{bladerf},Ptr{bladerf_lms_dc_cals}),dev,dc_cals)
end

function bladerf_config_gpio_read(dev::Ptr{bladerf},val::Ptr{Uint32})
    ccall((:bladerf_config_gpio_read,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint32}),dev,val)
end

function bladerf_config_gpio_write(dev::Ptr{bladerf},val::Uint32)
    ccall((:bladerf_config_gpio_write,libbladerf),Cint,(Ptr{bladerf},Uint32),dev,val)
end

function bladerf_expansion_gpio_read(dev::Ptr{bladerf},val::Ptr{Uint32})
    ccall((:bladerf_expansion_gpio_read,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint32}),dev,val)
end

function bladerf_expansion_gpio_write(dev::Ptr{bladerf},val::Uint32)
    ccall((:bladerf_expansion_gpio_write,libbladerf),Cint,(Ptr{bladerf},Uint32),dev,val)
end

function bladerf_expansion_gpio_dir_read(dev::Ptr{bladerf},val::Ptr{Uint32})
    ccall((:bladerf_expansion_gpio_dir_read,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint32}),dev,val)
end

function bladerf_expansion_gpio_dir_write(dev::Ptr{bladerf},val::Uint32)
    ccall((:bladerf_expansion_gpio_dir_write,libbladerf),Cint,(Ptr{bladerf},Uint32),dev,val)
end

function bladerf_get_timestamp(dev::Ptr{bladerf},mod::bladerf_module,value::Ptr{Uint64})
    ccall((:bladerf_get_timestamp,libbladerf),Cint,(Ptr{bladerf},bladerf_module,Ptr{Uint64}),dev,mod,value)
end

function bladerf_dac_write(dev::Ptr{bladerf},val::Uint16)
    ccall((:bladerf_dac_write,libbladerf),Cint,(Ptr{bladerf},Uint16),dev,val)
end

function bladerf_xb_spi_write(dev::Ptr{bladerf},val::Uint32)
    ccall((:bladerf_xb_spi_write,libbladerf),Cint,(Ptr{bladerf},Uint32),dev,val)
end

function bladerf_calibrate_dc(dev::Ptr{bladerf},_module::bladerf_cal_module)
    ccall((:bladerf_calibrate_dc,libbladerf),Cint,(Ptr{bladerf},bladerf_cal_module),dev,_module)
end

function bladerf_erase_flash(dev::Ptr{bladerf},erase_block::Uint32,count::Uint32)
    ccall((:bladerf_erase_flash,libbladerf),Cint,(Ptr{bladerf},Uint32,Uint32),dev,erase_block,count)
end

function bladerf_read_flash(dev::Ptr{bladerf},buf::Ptr{Uint8},page::Uint32,count::Uint32)
    ccall((:bladerf_read_flash,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint8},Uint32,Uint32),dev,buf,page,count)
end

function bladerf_write_flash(dev::Ptr{bladerf},buf::Ptr{Uint8},page::Uint32,count::Uint32)
    ccall((:bladerf_write_flash,libbladerf),Cint,(Ptr{bladerf},Ptr{Uint8},Uint32,Uint32),dev,buf,page,count)
end
