package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 17, permission = "mega.car.permission.SYSTEM_MONITOR")
public interface CarMonitor {

    @PropertyDefine(publish = "SystemMonitor/CpuFreq/Set", subscribe = "SystemMonitor/CpuFreq", type = long[].class)
    public static final int ID_CPU_FREQ_QNX = 285212674;

    @PropertyDefine(publish = "SystemMonitor/CpuMaxFreq/Set", subscribe = "SystemMonitor/CpuMaxFreq", type = long[].class)
    public static final int ID_CPU_MAX_FREQ_QNX = 285212675;

    @PropertyDefine(publish = "SystemMonitor/CpuTemperature/Set", subscribe = "SystemMonitor/CpuTemperature", type = String.class)
    public static final int ID_CPU_TEMPERATURE = 285212679;

    @PropertyDefine(publish = "SystemMonitor/CpuUsage/QNX/Set", subscribe = "SystemMonitor/CpuUsage/QNX", type = Integer.class)
    public static final int ID_CPU_USAGE_QNX = 285212673;

    @PropertyDefine(publish = "SystemMonitor/MemOccupyPercent/QNX/Set", subscribe = "SystemMonitor/MemOccupyPercent/QNX", type = Integer.class)
    public static final int ID_MEM_OCCUPY_PERCENT_QNX = 285212677;

    @PropertyDefine(publish = "SystemMonitor/MemOccupy/QNX/Set", subscribe = "SystemMonitor/MemOccupy/QNX", type = Long.class)
    public static final int ID_MEM_OCCUPY_QNX = 285212676;

    @PropertyDefine(publish = "SystemMonitor/TotalMem/QNX/Set", subscribe = "SystemMonitor/TotalMem/QNX", type = Long.class)
    public static final int ID_MEM_TOTAL_QNX = 285212678;

    @PropertyDefine(publish = "misc_service/command/rawdump_request", serializable = false, subscribe = "misc_service/command/rawdump_request/Set", type = String.class)
    public static final int ID_RAWDUMP_REQUEST = 285212680;

    @PropertyDefine(changeMode = 2, publish = "misc_service/command/rawdump_response/Set", serializable = false, subscribe = "misc_service/command/rawdump_response", type = String.class)
    public static final int ID_RAWDUMP_RESPONSE = 285212681;
    public static final int MGR_ID = 17;
}
