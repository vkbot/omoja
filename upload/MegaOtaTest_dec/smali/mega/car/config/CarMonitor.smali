.class public interface abstract Lmega/car/config/CarMonitor;
.super Ljava/lang/Object;
.source "CarMonitor.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x11
    permission = "mega.car.permission.SYSTEM_MONITOR"
.end annotation


# static fields
.field public static final ID_CPU_FREQ_QNX:I = 0x11000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/CpuFreq/Set"
        subscribe = "SystemMonitor/CpuFreq"
        type = [J
    .end annotation
.end field

.field public static final ID_CPU_MAX_FREQ_QNX:I = 0x11000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/CpuMaxFreq/Set"
        subscribe = "SystemMonitor/CpuMaxFreq"
        type = [J
    .end annotation
.end field

.field public static final ID_CPU_TEMPERATURE:I = 0x11000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/CpuTemperature/Set"
        subscribe = "SystemMonitor/CpuTemperature"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CPU_USAGE_QNX:I = 0x11000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/CpuUsage/QNX/Set"
        subscribe = "SystemMonitor/CpuUsage/QNX"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEM_OCCUPY_PERCENT_QNX:I = 0x11000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/MemOccupyPercent/QNX/Set"
        subscribe = "SystemMonitor/MemOccupyPercent/QNX"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEM_OCCUPY_QNX:I = 0x11000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/MemOccupy/QNX/Set"
        subscribe = "SystemMonitor/MemOccupy/QNX"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_MEM_TOTAL_QNX:I = 0x11000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemMonitor/TotalMem/QNX/Set"
        subscribe = "SystemMonitor/TotalMem/QNX"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_RAWDUMP_REQUEST:I = 0x11000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "misc_service/command/rawdump_request"
        serializable = false
        subscribe = "misc_service/command/rawdump_request/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_RAWDUMP_RESPONSE:I = 0x11000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "misc_service/command/rawdump_response/Set"
        serializable = false
        subscribe = "misc_service/command/rawdump_response"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x11
