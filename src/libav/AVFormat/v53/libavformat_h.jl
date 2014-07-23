
import Base.zero


export
    AVIO_SEEKABLE_NORMAL,
    URL_PROTOCOL_FLAG_NESTED_SCHEME,
    URL_PROTOCOL_FLAG_NETWORK,
    URL_RDONLY,
    URL_WRONLY,
    URL_RDWR,
    URL_FLAG_NONBLOCK,
    URL_EOF,
    AVSEEK_SIZE,
    AVSEEK_FORCE,
    AVIO_FLAG_READ,
    AVIO_FLAG_WRITE,
    AVIO_FLAG_READ_WRITE,
    AVIO_FLAG_NONBLOCK,
    AVIOInterruptCB,
    AVIOContext,
    URLProtocol,
    URLContext,
    URLPollEntry,
    ByteIOContext,
    AV_METADATA_MATCH_CASE,
    AV_METADATA_IGNORE_SUFFIX,
    AV_METADATA_DONT_STRDUP_KEY,
    AV_METADATA_DONT_STRDUP_VAL,
    AV_METADATA_DONT_OVERWRITE,
    AVPROBE_SCORE_MAX,
    AVPROBE_PADDING_SIZE,
    AVFMT_NOFILE,
    AVFMT_NEEDNUMBER,
    AVFMT_SHOW_IDS,
    AVFMT_RAWPICTURE,
    AVFMT_GLOBALHEADER,
    AVFMT_NOTIMESTAMPS,
    AVFMT_GENERIC_INDEX,
    AVFMT_TS_DISCONT,
    AVFMT_VARIABLE_FPS,
    AVFMT_NODIMENSIONS,
    AVFMT_NOSTREAMS,
    AVFMT_NOBINSEARCH,
    AVFMT_NOGENSEARCH,
    AVFMT_NO_BYTE_SEEK,
    AVINDEX_KEYFRAME,
    AV_DISPOSITION_DEFAULT,
    AV_DISPOSITION_DUB,
    AV_DISPOSITION_ORIGINAL,
    AV_DISPOSITION_COMMENT,
    AV_DISPOSITION_LYRICS,
    AV_DISPOSITION_KARAOKE,
    AV_DISPOSITION_FORCED,
    AV_DISPOSITION_HEARING_IMPAIRED,
    AV_DISPOSITION_VISUAL_IMPAIRED,
    AV_DISPOSITION_CLEAN_EFFECTS,
    MAX_REORDER_DELAY,
    MAX_PROBE_PACKETS,
    MAX_STD_TIMEBASES,
    AV_PROGRAM_RUNNING,
    AVFMTCTX_NOHEADER,
    AVFMT_NOOUTPUTLOOP,
    AVFMT_INFINITEOUTPUTLOOP,
    AVFMT_FLAG_GENPTS,
    AVFMT_FLAG_IGNIDX,
    AVFMT_FLAG_NONBLOCK,
    AVFMT_FLAG_IGNDTS,
    AVFMT_FLAG_NOFILLIN,
    AVFMT_FLAG_NOPARSE,
    AVFMT_FLAG_RTP_HINT,
    AVFMT_FLAG_CUSTOM_IO,
    AVFMT_FLAG_DISCARD_CORRUPT,
    RAW_PACKET_BUFFER_SIZE,
    AVSEEK_FLAG_BACKWARD,
    AVSEEK_FLAG_BYTE,
    AVSEEK_FLAG_ANY,
    AVSEEK_FLAG_FRAME,
    AVCodecTag,
    AVMetadataConv,
    AVInputFormat,
    AVOutputFormat,
    AVFrac,
    AVStreamParseType,
    AVSTREAM_PARSE_NONE,
    AVSTREAM_PARSE_FULL,
    AVSTREAM_PARSE_HEADERS,
    AVSTREAM_PARSE_TIMESTAMPS,
    AVSTREAM_PARSE_FULL_ONCE,
    AVIndexEntry,
    AVProbeData,
    Array_17_Int64,
    AVPacketList,
    AVStream,
    Array_1024_Uint8,
    AVProgram,
    AVChapter,
    AVFormatContext,
    AVMetadata,
    AVMetadataTag,
    AVFormatParameters


const AVIO_SEEKABLE_NORMAL = 0x0001
const URL_PROTOCOL_FLAG_NESTED_SCHEME = 1
const URL_PROTOCOL_FLAG_NETWORK = 2
const URL_RDONLY = 1
const URL_WRONLY = 2
const URL_RDWR = URL_RDONLY | URL_WRONLY
const URL_FLAG_NONBLOCK = 8
const URL_EOF = -1
const AVSEEK_SIZE = 0x00010000
const AVSEEK_FORCE = 0x00020000
const AVIO_FLAG_READ = 1
const AVIO_FLAG_WRITE = 2
const AVIO_FLAG_READ_WRITE = AVIO_FLAG_READ | AVIO_FLAG_WRITE
const AVIO_FLAG_NONBLOCK = 8

immutable AVIOInterruptCB
    callback::Ptr{Void}
    opaque::Ptr{Void}
end

immutable AVIOContext
    buffer::Ptr{Cuchar}
    buffer_size::Cint
    buf_ptr::Ptr{Cuchar}
    buf_end::Ptr{Cuchar}
    opaque::Ptr{Void}
    read_packet::Ptr{Void}
    write_packet::Ptr{Void}
    seek::Ptr{Void}
    pos::Int64
    must_flush::Cint
    eof_reached::Cint
    write_flag::Cint
    is_streamed::Cint
    max_packet_size::Cint
    checksum::Culong
    checksum_ptr::Ptr{Cuchar}
    update_checksum::Ptr{Void}
    error::Cint
    read_pause::Ptr{Void}
    read_seek::Ptr{Void}
    seekable::Cint
end

immutable URLProtocol
    name::Ptr{Uint8}
    url_open::Ptr{Void}
    url_read::Ptr{Void}
    url_write::Ptr{Void}
    url_seek::Ptr{Void}
    url_close::Ptr{Void}
    next::Ptr{URLProtocol}
    url_read_pause::Ptr{Void}
    url_read_seek::Ptr{Void}
    url_get_file_handle::Ptr{Void}
    priv_data_size::Cint
    priv_data_class::Ptr{AVClass}
    flags::Cint
    url_check::Ptr{Void}
end

immutable URLContext
    av_class::Ptr{AVClass}
    prot::Ptr{URLProtocol}
    flags::Cint
    is_streamed::Cint
    max_packet_size::Cint
    priv_data::Ptr{Void}
    filename::Ptr{Uint8}
    is_connected::Cint
    interrupt_callback::AVIOInterruptCB
end

immutable URLPollEntry
    handle::Ptr{URLContext}
    events::Cint
    revents::Cint
end

typealias ByteIOContext AVIOContext

const AV_METADATA_MATCH_CASE = AV_DICT_MATCH_CASE
const AV_METADATA_IGNORE_SUFFIX = AV_DICT_IGNORE_SUFFIX
const AV_METADATA_DONT_STRDUP_KEY = AV_DICT_DONT_STRDUP_KEY
const AV_METADATA_DONT_STRDUP_VAL = AV_DICT_DONT_STRDUP_VAL
const AV_METADATA_DONT_OVERWRITE = AV_DICT_DONT_OVERWRITE
const AVPROBE_SCORE_MAX = 100
const AVPROBE_PADDING_SIZE = 32
const AVFMT_NOFILE = 0x0001
const AVFMT_NEEDNUMBER = 0x0002
const AVFMT_SHOW_IDS = 0x0008
const AVFMT_RAWPICTURE = 0x0020
const AVFMT_GLOBALHEADER = 0x0040
const AVFMT_NOTIMESTAMPS = 0x0080
const AVFMT_GENERIC_INDEX = 0x0100
const AVFMT_TS_DISCONT = 0x0200
const AVFMT_VARIABLE_FPS = 0x0400
const AVFMT_NODIMENSIONS = 0x0800
const AVFMT_NOSTREAMS = 0x1000
const AVFMT_NOBINSEARCH = 0x2000
const AVFMT_NOGENSEARCH = 0x4000
const AVFMT_NO_BYTE_SEEK = 0x8000
const AVINDEX_KEYFRAME = 0x0001
const AV_DISPOSITION_DEFAULT = 0x0001
const AV_DISPOSITION_DUB = 0x0002
const AV_DISPOSITION_ORIGINAL = 0x0004
const AV_DISPOSITION_COMMENT = 0x0008
const AV_DISPOSITION_LYRICS = 0x0010
const AV_DISPOSITION_KARAOKE = 0x0020
const AV_DISPOSITION_FORCED = 0x0040
const AV_DISPOSITION_HEARING_IMPAIRED = 0x0080
const AV_DISPOSITION_VISUAL_IMPAIRED = 0x0100
const AV_DISPOSITION_CLEAN_EFFECTS = 0x0200
const MAX_REORDER_DELAY = 16
const MAX_PROBE_PACKETS = 2500
const MAX_STD_TIMEBASES = 60 * 12 + 5
const AV_PROGRAM_RUNNING = 1
const AVFMTCTX_NOHEADER = 0x0001
const AVFMT_NOOUTPUTLOOP = -1
const AVFMT_INFINITEOUTPUTLOOP = 0
const AVFMT_FLAG_GENPTS = 0x0001
const AVFMT_FLAG_IGNIDX = 0x0002
const AVFMT_FLAG_NONBLOCK = 0x0004
const AVFMT_FLAG_IGNDTS = 0x0008
const AVFMT_FLAG_NOFILLIN = 0x0010
const AVFMT_FLAG_NOPARSE = 0x0020
const AVFMT_FLAG_RTP_HINT = 0x0040
const AVFMT_FLAG_CUSTOM_IO = 0x0080
const AVFMT_FLAG_DISCARD_CORRUPT = 0x0100
const FF_FDEBUG_TS = 0x0001
const RAW_PACKET_BUFFER_SIZE = 2500000
const AVSEEK_FLAG_BACKWARD = 1
const AVSEEK_FLAG_BYTE = 2
const AVSEEK_FLAG_ANY = 4
const AVSEEK_FLAG_FRAME = 8

typealias AVCodecTag Void
typealias AVMetadataConv Void

immutable AVInputFormat
    name::Ptr{Uint8}
    long_name::Ptr{Uint8}
    priv_data_size::Cint
    read_probe::Ptr{Void}
    read_header::Ptr{Void}
    read_packet::Ptr{Void}
    read_close::Ptr{Void}
    read_seek::Ptr{Void}
    read_timestamp::Ptr{Void}
    flags::Cint
    extensions::Ptr{Uint8}
    value::Cint
    read_play::Ptr{Void}
    read_pause::Ptr{Void}
    codec_tag::Ptr{Ptr{AVCodecTag}}
    read_seek2::Ptr{Void}
    metadata_conv::Ptr{AVMetadataConv}
    priv_class::Ptr{AVClass}
    next::Ptr{AVInputFormat}
end

immutable AVOutputFormat
    name::Ptr{Uint8}
    long_name::Ptr{Uint8}
    mime_type::Ptr{Uint8}
    extensions::Ptr{Uint8}
    priv_data_size::Cint
    audio_codec::CodecID
    video_codec::CodecID
    write_header::Ptr{Void}
    write_packet::Ptr{Void}
    write_trailer::Ptr{Void}
    flags::Cint
    set_parameters::Ptr{Void}
    interleave_packet::Ptr{Void}
    codec_tag::Ptr{Ptr{AVCodecTag}}
    subtitle_codec::CodecID
    metadata_conv::Ptr{AVMetadataConv}
    priv_class::Ptr{AVClass}
    query_codec::Ptr{Void}
    next::Ptr{AVOutputFormat}
end

immutable AVFrac
    val::Int64
    num::Int64
    den::Int64
end

# begin enum AVStreamParseType
typealias AVStreamParseType Uint32
const AVSTREAM_PARSE_NONE = uint32(0)
const AVSTREAM_PARSE_FULL = uint32(1)
const AVSTREAM_PARSE_HEADERS = uint32(2)
const AVSTREAM_PARSE_TIMESTAMPS = uint32(3)
const AVSTREAM_PARSE_FULL_ONCE = uint32(4)
# end enum AVStreamParseType

immutable AVIndexEntry
    pos::Int64
    timestamp::Int64
    flags::Cint
    size::Cint
    min_distance::Cint
end

immutable AVProbeData
    filename::Ptr{Uint8}
    buf::Ptr{Cuchar}
    buf_size::Cint
end

immutable Array_17_Int64
    d1::Int64
    d2::Int64
    d3::Int64
    d4::Int64
    d5::Int64
    d6::Int64
    d7::Int64
    d8::Int64
    d9::Int64
    d10::Int64
    d11::Int64
    d12::Int64
    d13::Int64
    d14::Int64
    d15::Int64
    d16::Int64
    d17::Int64
end

zero(::Type{Array_17_Int64}) = Array_17_Int64(fill(zero(Int64),17)...)

immutable AVPacketList
    pkt::AVPacket
    next::Ptr{AVPacketList}
end

immutable AVStream
    index::Cint
    id::Cint
    codec::Ptr{AVCodecContext}
    r_frame_rate::AVRational
    priv_data::Ptr{Void}
    first_dts::Int64
    pts::AVFrac
    time_base::AVRational
    pts_wrap_bits::Cint
    stream_copy::Cint
    discard::AVDiscard
    quality::Cfloat
    start_time::Int64
    duration::Int64
    need_parsing::AVStreamParseType
    parser::Ptr{AVCodecParserContext}
    cur_dts::Int64
    last_IP_duration::Cint
    last_IP_pts::Int64
    index_entries::Ptr{AVIndexEntry}
    nb_index_entries::Cint
    index_entries_allocated_size::Uint32
    nb_frames::Int64
    disposition::Cint
    probe_data::AVProbeData
    pts_buffer::Array_17_Int64
    sample_aspect_ratio::AVRational
    metadata::Ptr{AVDictionary}
    cur_ptr::Ptr{Uint8}
    cur_len::Cint
    cur_pkt::AVPacket
    reference_dts::Int64
    probe_packets::Cint
    last_in_packet_buffer::Ptr{AVPacketList}
    avg_frame_rate::AVRational
    codec_info_nb_frames::Cint
    info::Ptr{Void}
end

immutable Array_1024_Uint8
    d1::Uint8
    d2::Uint8
    d3::Uint8
    d4::Uint8
    d5::Uint8
    d6::Uint8
    d7::Uint8
    d8::Uint8
    d9::Uint8
    d10::Uint8
    d11::Uint8
    d12::Uint8
    d13::Uint8
    d14::Uint8
    d15::Uint8
    d16::Uint8
    d17::Uint8
    d18::Uint8
    d19::Uint8
    d20::Uint8
    d21::Uint8
    d22::Uint8
    d23::Uint8
    d24::Uint8
    d25::Uint8
    d26::Uint8
    d27::Uint8
    d28::Uint8
    d29::Uint8
    d30::Uint8
    d31::Uint8
    d32::Uint8
    d33::Uint8
    d34::Uint8
    d35::Uint8
    d36::Uint8
    d37::Uint8
    d38::Uint8
    d39::Uint8
    d40::Uint8
    d41::Uint8
    d42::Uint8
    d43::Uint8
    d44::Uint8
    d45::Uint8
    d46::Uint8
    d47::Uint8
    d48::Uint8
    d49::Uint8
    d50::Uint8
    d51::Uint8
    d52::Uint8
    d53::Uint8
    d54::Uint8
    d55::Uint8
    d56::Uint8
    d57::Uint8
    d58::Uint8
    d59::Uint8
    d60::Uint8
    d61::Uint8
    d62::Uint8
    d63::Uint8
    d64::Uint8
    d65::Uint8
    d66::Uint8
    d67::Uint8
    d68::Uint8
    d69::Uint8
    d70::Uint8
    d71::Uint8
    d72::Uint8
    d73::Uint8
    d74::Uint8
    d75::Uint8
    d76::Uint8
    d77::Uint8
    d78::Uint8
    d79::Uint8
    d80::Uint8
    d81::Uint8
    d82::Uint8
    d83::Uint8
    d84::Uint8
    d85::Uint8
    d86::Uint8
    d87::Uint8
    d88::Uint8
    d89::Uint8
    d90::Uint8
    d91::Uint8
    d92::Uint8
    d93::Uint8
    d94::Uint8
    d95::Uint8
    d96::Uint8
    d97::Uint8
    d98::Uint8
    d99::Uint8
    d100::Uint8
    d101::Uint8
    d102::Uint8
    d103::Uint8
    d104::Uint8
    d105::Uint8
    d106::Uint8
    d107::Uint8
    d108::Uint8
    d109::Uint8
    d110::Uint8
    d111::Uint8
    d112::Uint8
    d113::Uint8
    d114::Uint8
    d115::Uint8
    d116::Uint8
    d117::Uint8
    d118::Uint8
    d119::Uint8
    d120::Uint8
    d121::Uint8
    d122::Uint8
    d123::Uint8
    d124::Uint8
    d125::Uint8
    d126::Uint8
    d127::Uint8
    d128::Uint8
    d129::Uint8
    d130::Uint8
    d131::Uint8
    d132::Uint8
    d133::Uint8
    d134::Uint8
    d135::Uint8
    d136::Uint8
    d137::Uint8
    d138::Uint8
    d139::Uint8
    d140::Uint8
    d141::Uint8
    d142::Uint8
    d143::Uint8
    d144::Uint8
    d145::Uint8
    d146::Uint8
    d147::Uint8
    d148::Uint8
    d149::Uint8
    d150::Uint8
    d151::Uint8
    d152::Uint8
    d153::Uint8
    d154::Uint8
    d155::Uint8
    d156::Uint8
    d157::Uint8
    d158::Uint8
    d159::Uint8
    d160::Uint8
    d161::Uint8
    d162::Uint8
    d163::Uint8
    d164::Uint8
    d165::Uint8
    d166::Uint8
    d167::Uint8
    d168::Uint8
    d169::Uint8
    d170::Uint8
    d171::Uint8
    d172::Uint8
    d173::Uint8
    d174::Uint8
    d175::Uint8
    d176::Uint8
    d177::Uint8
    d178::Uint8
    d179::Uint8
    d180::Uint8
    d181::Uint8
    d182::Uint8
    d183::Uint8
    d184::Uint8
    d185::Uint8
    d186::Uint8
    d187::Uint8
    d188::Uint8
    d189::Uint8
    d190::Uint8
    d191::Uint8
    d192::Uint8
    d193::Uint8
    d194::Uint8
    d195::Uint8
    d196::Uint8
    d197::Uint8
    d198::Uint8
    d199::Uint8
    d200::Uint8
    d201::Uint8
    d202::Uint8
    d203::Uint8
    d204::Uint8
    d205::Uint8
    d206::Uint8
    d207::Uint8
    d208::Uint8
    d209::Uint8
    d210::Uint8
    d211::Uint8
    d212::Uint8
    d213::Uint8
    d214::Uint8
    d215::Uint8
    d216::Uint8
    d217::Uint8
    d218::Uint8
    d219::Uint8
    d220::Uint8
    d221::Uint8
    d222::Uint8
    d223::Uint8
    d224::Uint8
    d225::Uint8
    d226::Uint8
    d227::Uint8
    d228::Uint8
    d229::Uint8
    d230::Uint8
    d231::Uint8
    d232::Uint8
    d233::Uint8
    d234::Uint8
    d235::Uint8
    d236::Uint8
    d237::Uint8
    d238::Uint8
    d239::Uint8
    d240::Uint8
    d241::Uint8
    d242::Uint8
    d243::Uint8
    d244::Uint8
    d245::Uint8
    d246::Uint8
    d247::Uint8
    d248::Uint8
    d249::Uint8
    d250::Uint8
    d251::Uint8
    d252::Uint8
    d253::Uint8
    d254::Uint8
    d255::Uint8
    d256::Uint8
    d257::Uint8
    d258::Uint8
    d259::Uint8
    d260::Uint8
    d261::Uint8
    d262::Uint8
    d263::Uint8
    d264::Uint8
    d265::Uint8
    d266::Uint8
    d267::Uint8
    d268::Uint8
    d269::Uint8
    d270::Uint8
    d271::Uint8
    d272::Uint8
    d273::Uint8
    d274::Uint8
    d275::Uint8
    d276::Uint8
    d277::Uint8
    d278::Uint8
    d279::Uint8
    d280::Uint8
    d281::Uint8
    d282::Uint8
    d283::Uint8
    d284::Uint8
    d285::Uint8
    d286::Uint8
    d287::Uint8
    d288::Uint8
    d289::Uint8
    d290::Uint8
    d291::Uint8
    d292::Uint8
    d293::Uint8
    d294::Uint8
    d295::Uint8
    d296::Uint8
    d297::Uint8
    d298::Uint8
    d299::Uint8
    d300::Uint8
    d301::Uint8
    d302::Uint8
    d303::Uint8
    d304::Uint8
    d305::Uint8
    d306::Uint8
    d307::Uint8
    d308::Uint8
    d309::Uint8
    d310::Uint8
    d311::Uint8
    d312::Uint8
    d313::Uint8
    d314::Uint8
    d315::Uint8
    d316::Uint8
    d317::Uint8
    d318::Uint8
    d319::Uint8
    d320::Uint8
    d321::Uint8
    d322::Uint8
    d323::Uint8
    d324::Uint8
    d325::Uint8
    d326::Uint8
    d327::Uint8
    d328::Uint8
    d329::Uint8
    d330::Uint8
    d331::Uint8
    d332::Uint8
    d333::Uint8
    d334::Uint8
    d335::Uint8
    d336::Uint8
    d337::Uint8
    d338::Uint8
    d339::Uint8
    d340::Uint8
    d341::Uint8
    d342::Uint8
    d343::Uint8
    d344::Uint8
    d345::Uint8
    d346::Uint8
    d347::Uint8
    d348::Uint8
    d349::Uint8
    d350::Uint8
    d351::Uint8
    d352::Uint8
    d353::Uint8
    d354::Uint8
    d355::Uint8
    d356::Uint8
    d357::Uint8
    d358::Uint8
    d359::Uint8
    d360::Uint8
    d361::Uint8
    d362::Uint8
    d363::Uint8
    d364::Uint8
    d365::Uint8
    d366::Uint8
    d367::Uint8
    d368::Uint8
    d369::Uint8
    d370::Uint8
    d371::Uint8
    d372::Uint8
    d373::Uint8
    d374::Uint8
    d375::Uint8
    d376::Uint8
    d377::Uint8
    d378::Uint8
    d379::Uint8
    d380::Uint8
    d381::Uint8
    d382::Uint8
    d383::Uint8
    d384::Uint8
    d385::Uint8
    d386::Uint8
    d387::Uint8
    d388::Uint8
    d389::Uint8
    d390::Uint8
    d391::Uint8
    d392::Uint8
    d393::Uint8
    d394::Uint8
    d395::Uint8
    d396::Uint8
    d397::Uint8
    d398::Uint8
    d399::Uint8
    d400::Uint8
    d401::Uint8
    d402::Uint8
    d403::Uint8
    d404::Uint8
    d405::Uint8
    d406::Uint8
    d407::Uint8
    d408::Uint8
    d409::Uint8
    d410::Uint8
    d411::Uint8
    d412::Uint8
    d413::Uint8
    d414::Uint8
    d415::Uint8
    d416::Uint8
    d417::Uint8
    d418::Uint8
    d419::Uint8
    d420::Uint8
    d421::Uint8
    d422::Uint8
    d423::Uint8
    d424::Uint8
    d425::Uint8
    d426::Uint8
    d427::Uint8
    d428::Uint8
    d429::Uint8
    d430::Uint8
    d431::Uint8
    d432::Uint8
    d433::Uint8
    d434::Uint8
    d435::Uint8
    d436::Uint8
    d437::Uint8
    d438::Uint8
    d439::Uint8
    d440::Uint8
    d441::Uint8
    d442::Uint8
    d443::Uint8
    d444::Uint8
    d445::Uint8
    d446::Uint8
    d447::Uint8
    d448::Uint8
    d449::Uint8
    d450::Uint8
    d451::Uint8
    d452::Uint8
    d453::Uint8
    d454::Uint8
    d455::Uint8
    d456::Uint8
    d457::Uint8
    d458::Uint8
    d459::Uint8
    d460::Uint8
    d461::Uint8
    d462::Uint8
    d463::Uint8
    d464::Uint8
    d465::Uint8
    d466::Uint8
    d467::Uint8
    d468::Uint8
    d469::Uint8
    d470::Uint8
    d471::Uint8
    d472::Uint8
    d473::Uint8
    d474::Uint8
    d475::Uint8
    d476::Uint8
    d477::Uint8
    d478::Uint8
    d479::Uint8
    d480::Uint8
    d481::Uint8
    d482::Uint8
    d483::Uint8
    d484::Uint8
    d485::Uint8
    d486::Uint8
    d487::Uint8
    d488::Uint8
    d489::Uint8
    d490::Uint8
    d491::Uint8
    d492::Uint8
    d493::Uint8
    d494::Uint8
    d495::Uint8
    d496::Uint8
    d497::Uint8
    d498::Uint8
    d499::Uint8
    d500::Uint8
    d501::Uint8
    d502::Uint8
    d503::Uint8
    d504::Uint8
    d505::Uint8
    d506::Uint8
    d507::Uint8
    d508::Uint8
    d509::Uint8
    d510::Uint8
    d511::Uint8
    d512::Uint8
    d513::Uint8
    d514::Uint8
    d515::Uint8
    d516::Uint8
    d517::Uint8
    d518::Uint8
    d519::Uint8
    d520::Uint8
    d521::Uint8
    d522::Uint8
    d523::Uint8
    d524::Uint8
    d525::Uint8
    d526::Uint8
    d527::Uint8
    d528::Uint8
    d529::Uint8
    d530::Uint8
    d531::Uint8
    d532::Uint8
    d533::Uint8
    d534::Uint8
    d535::Uint8
    d536::Uint8
    d537::Uint8
    d538::Uint8
    d539::Uint8
    d540::Uint8
    d541::Uint8
    d542::Uint8
    d543::Uint8
    d544::Uint8
    d545::Uint8
    d546::Uint8
    d547::Uint8
    d548::Uint8
    d549::Uint8
    d550::Uint8
    d551::Uint8
    d552::Uint8
    d553::Uint8
    d554::Uint8
    d555::Uint8
    d556::Uint8
    d557::Uint8
    d558::Uint8
    d559::Uint8
    d560::Uint8
    d561::Uint8
    d562::Uint8
    d563::Uint8
    d564::Uint8
    d565::Uint8
    d566::Uint8
    d567::Uint8
    d568::Uint8
    d569::Uint8
    d570::Uint8
    d571::Uint8
    d572::Uint8
    d573::Uint8
    d574::Uint8
    d575::Uint8
    d576::Uint8
    d577::Uint8
    d578::Uint8
    d579::Uint8
    d580::Uint8
    d581::Uint8
    d582::Uint8
    d583::Uint8
    d584::Uint8
    d585::Uint8
    d586::Uint8
    d587::Uint8
    d588::Uint8
    d589::Uint8
    d590::Uint8
    d591::Uint8
    d592::Uint8
    d593::Uint8
    d594::Uint8
    d595::Uint8
    d596::Uint8
    d597::Uint8
    d598::Uint8
    d599::Uint8
    d600::Uint8
    d601::Uint8
    d602::Uint8
    d603::Uint8
    d604::Uint8
    d605::Uint8
    d606::Uint8
    d607::Uint8
    d608::Uint8
    d609::Uint8
    d610::Uint8
    d611::Uint8
    d612::Uint8
    d613::Uint8
    d614::Uint8
    d615::Uint8
    d616::Uint8
    d617::Uint8
    d618::Uint8
    d619::Uint8
    d620::Uint8
    d621::Uint8
    d622::Uint8
    d623::Uint8
    d624::Uint8
    d625::Uint8
    d626::Uint8
    d627::Uint8
    d628::Uint8
    d629::Uint8
    d630::Uint8
    d631::Uint8
    d632::Uint8
    d633::Uint8
    d634::Uint8
    d635::Uint8
    d636::Uint8
    d637::Uint8
    d638::Uint8
    d639::Uint8
    d640::Uint8
    d641::Uint8
    d642::Uint8
    d643::Uint8
    d644::Uint8
    d645::Uint8
    d646::Uint8
    d647::Uint8
    d648::Uint8
    d649::Uint8
    d650::Uint8
    d651::Uint8
    d652::Uint8
    d653::Uint8
    d654::Uint8
    d655::Uint8
    d656::Uint8
    d657::Uint8
    d658::Uint8
    d659::Uint8
    d660::Uint8
    d661::Uint8
    d662::Uint8
    d663::Uint8
    d664::Uint8
    d665::Uint8
    d666::Uint8
    d667::Uint8
    d668::Uint8
    d669::Uint8
    d670::Uint8
    d671::Uint8
    d672::Uint8
    d673::Uint8
    d674::Uint8
    d675::Uint8
    d676::Uint8
    d677::Uint8
    d678::Uint8
    d679::Uint8
    d680::Uint8
    d681::Uint8
    d682::Uint8
    d683::Uint8
    d684::Uint8
    d685::Uint8
    d686::Uint8
    d687::Uint8
    d688::Uint8
    d689::Uint8
    d690::Uint8
    d691::Uint8
    d692::Uint8
    d693::Uint8
    d694::Uint8
    d695::Uint8
    d696::Uint8
    d697::Uint8
    d698::Uint8
    d699::Uint8
    d700::Uint8
    d701::Uint8
    d702::Uint8
    d703::Uint8
    d704::Uint8
    d705::Uint8
    d706::Uint8
    d707::Uint8
    d708::Uint8
    d709::Uint8
    d710::Uint8
    d711::Uint8
    d712::Uint8
    d713::Uint8
    d714::Uint8
    d715::Uint8
    d716::Uint8
    d717::Uint8
    d718::Uint8
    d719::Uint8
    d720::Uint8
    d721::Uint8
    d722::Uint8
    d723::Uint8
    d724::Uint8
    d725::Uint8
    d726::Uint8
    d727::Uint8
    d728::Uint8
    d729::Uint8
    d730::Uint8
    d731::Uint8
    d732::Uint8
    d733::Uint8
    d734::Uint8
    d735::Uint8
    d736::Uint8
    d737::Uint8
    d738::Uint8
    d739::Uint8
    d740::Uint8
    d741::Uint8
    d742::Uint8
    d743::Uint8
    d744::Uint8
    d745::Uint8
    d746::Uint8
    d747::Uint8
    d748::Uint8
    d749::Uint8
    d750::Uint8
    d751::Uint8
    d752::Uint8
    d753::Uint8
    d754::Uint8
    d755::Uint8
    d756::Uint8
    d757::Uint8
    d758::Uint8
    d759::Uint8
    d760::Uint8
    d761::Uint8
    d762::Uint8
    d763::Uint8
    d764::Uint8
    d765::Uint8
    d766::Uint8
    d767::Uint8
    d768::Uint8
    d769::Uint8
    d770::Uint8
    d771::Uint8
    d772::Uint8
    d773::Uint8
    d774::Uint8
    d775::Uint8
    d776::Uint8
    d777::Uint8
    d778::Uint8
    d779::Uint8
    d780::Uint8
    d781::Uint8
    d782::Uint8
    d783::Uint8
    d784::Uint8
    d785::Uint8
    d786::Uint8
    d787::Uint8
    d788::Uint8
    d789::Uint8
    d790::Uint8
    d791::Uint8
    d792::Uint8
    d793::Uint8
    d794::Uint8
    d795::Uint8
    d796::Uint8
    d797::Uint8
    d798::Uint8
    d799::Uint8
    d800::Uint8
    d801::Uint8
    d802::Uint8
    d803::Uint8
    d804::Uint8
    d805::Uint8
    d806::Uint8
    d807::Uint8
    d808::Uint8
    d809::Uint8
    d810::Uint8
    d811::Uint8
    d812::Uint8
    d813::Uint8
    d814::Uint8
    d815::Uint8
    d816::Uint8
    d817::Uint8
    d818::Uint8
    d819::Uint8
    d820::Uint8
    d821::Uint8
    d822::Uint8
    d823::Uint8
    d824::Uint8
    d825::Uint8
    d826::Uint8
    d827::Uint8
    d828::Uint8
    d829::Uint8
    d830::Uint8
    d831::Uint8
    d832::Uint8
    d833::Uint8
    d834::Uint8
    d835::Uint8
    d836::Uint8
    d837::Uint8
    d838::Uint8
    d839::Uint8
    d840::Uint8
    d841::Uint8
    d842::Uint8
    d843::Uint8
    d844::Uint8
    d845::Uint8
    d846::Uint8
    d847::Uint8
    d848::Uint8
    d849::Uint8
    d850::Uint8
    d851::Uint8
    d852::Uint8
    d853::Uint8
    d854::Uint8
    d855::Uint8
    d856::Uint8
    d857::Uint8
    d858::Uint8
    d859::Uint8
    d860::Uint8
    d861::Uint8
    d862::Uint8
    d863::Uint8
    d864::Uint8
    d865::Uint8
    d866::Uint8
    d867::Uint8
    d868::Uint8
    d869::Uint8
    d870::Uint8
    d871::Uint8
    d872::Uint8
    d873::Uint8
    d874::Uint8
    d875::Uint8
    d876::Uint8
    d877::Uint8
    d878::Uint8
    d879::Uint8
    d880::Uint8
    d881::Uint8
    d882::Uint8
    d883::Uint8
    d884::Uint8
    d885::Uint8
    d886::Uint8
    d887::Uint8
    d888::Uint8
    d889::Uint8
    d890::Uint8
    d891::Uint8
    d892::Uint8
    d893::Uint8
    d894::Uint8
    d895::Uint8
    d896::Uint8
    d897::Uint8
    d898::Uint8
    d899::Uint8
    d900::Uint8
    d901::Uint8
    d902::Uint8
    d903::Uint8
    d904::Uint8
    d905::Uint8
    d906::Uint8
    d907::Uint8
    d908::Uint8
    d909::Uint8
    d910::Uint8
    d911::Uint8
    d912::Uint8
    d913::Uint8
    d914::Uint8
    d915::Uint8
    d916::Uint8
    d917::Uint8
    d918::Uint8
    d919::Uint8
    d920::Uint8
    d921::Uint8
    d922::Uint8
    d923::Uint8
    d924::Uint8
    d925::Uint8
    d926::Uint8
    d927::Uint8
    d928::Uint8
    d929::Uint8
    d930::Uint8
    d931::Uint8
    d932::Uint8
    d933::Uint8
    d934::Uint8
    d935::Uint8
    d936::Uint8
    d937::Uint8
    d938::Uint8
    d939::Uint8
    d940::Uint8
    d941::Uint8
    d942::Uint8
    d943::Uint8
    d944::Uint8
    d945::Uint8
    d946::Uint8
    d947::Uint8
    d948::Uint8
    d949::Uint8
    d950::Uint8
    d951::Uint8
    d952::Uint8
    d953::Uint8
    d954::Uint8
    d955::Uint8
    d956::Uint8
    d957::Uint8
    d958::Uint8
    d959::Uint8
    d960::Uint8
    d961::Uint8
    d962::Uint8
    d963::Uint8
    d964::Uint8
    d965::Uint8
    d966::Uint8
    d967::Uint8
    d968::Uint8
    d969::Uint8
    d970::Uint8
    d971::Uint8
    d972::Uint8
    d973::Uint8
    d974::Uint8
    d975::Uint8
    d976::Uint8
    d977::Uint8
    d978::Uint8
    d979::Uint8
    d980::Uint8
    d981::Uint8
    d982::Uint8
    d983::Uint8
    d984::Uint8
    d985::Uint8
    d986::Uint8
    d987::Uint8
    d988::Uint8
    d989::Uint8
    d990::Uint8
    d991::Uint8
    d992::Uint8
    d993::Uint8
    d994::Uint8
    d995::Uint8
    d996::Uint8
    d997::Uint8
    d998::Uint8
    d999::Uint8
    d1000::Uint8
    d1001::Uint8
    d1002::Uint8
    d1003::Uint8
    d1004::Uint8
    d1005::Uint8
    d1006::Uint8
    d1007::Uint8
    d1008::Uint8
    d1009::Uint8
    d1010::Uint8
    d1011::Uint8
    d1012::Uint8
    d1013::Uint8
    d1014::Uint8
    d1015::Uint8
    d1016::Uint8
    d1017::Uint8
    d1018::Uint8
    d1019::Uint8
    d1020::Uint8
    d1021::Uint8
    d1022::Uint8
    d1023::Uint8
    d1024::Uint8
end

zero(::Type{Array_1024_Uint8}) = Array_1024_Uint8(fill(zero(Uint8),1024)...)

immutable AVProgram
    id::Cint
    flags::Cint
    discard::AVDiscard
    stream_index::Ptr{Uint32}
    nb_stream_indexes::Uint32
    metadata::Ptr{AVDictionary}
end

immutable AVChapter
    id::Cint
    time_base::AVRational
    start::Int64
    _end::Int64
    metadata::Ptr{AVDictionary}
end

immutable AVFormatContext
    av_class::Ptr{AVClass}
    iformat::Ptr{AVInputFormat}
    oformat::Ptr{AVOutputFormat}
    priv_data::Ptr{Void}
    pb::Ptr{AVIOContext}
    nb_streams::Uint32
    streams::Ptr{Ptr{AVStream}}
    filename::Array_1024_Uint8
    timestamp::Int64
    ctx_flags::Cint
    packet_buffer::Ptr{AVPacketList}
    start_time::Int64
    duration::Int64
    file_size::Int64
    bit_rate::Cint
    cur_st::Ptr{AVStream}
    data_offset::Int64
    mux_rate::Cint
    packet_size::Uint32
    preload::Cint
    max_delay::Cint
    loop_output::Cint
    flags::Cint
    loop_input::Cint
    probesize::Uint32
    max_analyze_duration::Cint
    key::Ptr{Uint8}
    keylen::Cint
    nb_programs::Uint32
    programs::Ptr{Ptr{AVProgram}}
    video_codec_id::CodecID
    audio_codec_id::CodecID
    subtitle_codec_id::CodecID
    max_index_size::Uint32
    max_picture_buffer::Uint32
    nb_chapters::Uint32
    chapters::Ptr{Ptr{AVChapter}}
    debug::Cint
    raw_packet_buffer::Ptr{AVPacketList}
    raw_packet_buffer_end::Ptr{AVPacketList}
    packet_buffer_end::Ptr{AVPacketList}
    metadata::Ptr{AVDictionary}
    raw_packet_buffer_remaining_size::Cint
    start_time_realtime::Int64
    fps_probe_size::Cint
    error_recognition::Cint
    interrupt_callback::AVIOInterruptCB
end

typealias AVMetadata AVDictionary
typealias AVMetadataTag AVDictionaryEntry

immutable AVFormatParameters
    time_base::AVRational
    sample_rate::Cint
    channels::Cint
    width::Cint
    height::Cint
    pix_fmt::PixelFormat
    channel::Cint
    standard::Ptr{Uint8}
    mpeg2ts_raw::Uint32
    mpeg2ts_compute_pcr::Uint32
    initial_pause::Uint32
    prealloced_context::Uint32
end
