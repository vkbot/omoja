.class Lmega/config/OwlConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "owl"

.field public static final KEY_APM_ENABLE_BINDER_DETAIL:Ljava/lang/String; = "apm_enable_binder_detail"

.field public static final KEY_APM_ENABLE_BINDER_RECENT:Ljava/lang/String; = "apm_enable_binder_recent"

.field public static final KEY_APM_ENABLE_BINDER_TRACE:Ljava/lang/String; = "apm_enable_binder_trace"

.field public static final KEY_APM_ENABLE_VIEW_TRACE:Ljava/lang/String; = "apm_enable_view_trace"

.field public static final KEY_APM_FPS_LOG_DROP_THRESHOLD:Ljava/lang/String; = "apm_fps_log_drop_threshold"

.field public static final KEY_APM_FPS_RECORD_DROP_THRESHOLD:Ljava/lang/String; = "apm_fps_record_drop_threshold"

.field public static final KEY_APM_RECORD_BINDER_RECENT_NUM:Ljava/lang/String; = "apm_record_binder_recent_num"

.field public static final KEY_CAR_MONITOR:Ljava/lang/String; = "car_monitor"

.field public static final KEY_CPU_MONITOR:Ljava/lang/String; = "cpu_monitor"

.field public static final KEY_CPU_SAMPLE_INTERVAL:Ljava/lang/String; = "cpu_sample_interval"

.field public static final KEY_CPU_SQL_RETAIN_SIZE:Ljava/lang/String; = "cpu_sql_retain_size"

.field public static final KEY_CPU_SQL_USAGE_THRESHOLD:Ljava/lang/String; = "cpu_sql_usage_threshold"

.field public static final KEY_ENABLE_START_PERIOD_MEMORY_DUMP_WORKER:Ljava/lang/String; = "enable_start_period_memory_dump_worker"

.field public static final KEY_ENABLE_START_REPORT_TRAFFIC_WORKER:Ljava/lang/String; = "enable_start_report_traffic_worker"

.field public static final KEY_ENABLE_START_UPLOAD_LOGCAT_RETRY_WORKER:Ljava/lang/String; = "enable_start_upload_logcat_retry_worker"

.field public static final KEY_HOT_LOAD:Ljava/lang/String; = "hot_load"

.field public static final KEY_MEM_SAMPLE_INTERVAL:Ljava/lang/String; = "mem_sample_interval"

.field public static final KEY_MEM_USAGE_THRESHOLD:Ljava/lang/String; = "mem_usage_threshold"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolKeys()[Ljava/lang/String;
    .locals 7

    const-string v0, "apm_enable_binder_trace"

    const-string v1, "apm_enable_binder_detail"

    const-string v2, "apm_enable_binder_recent"

    const-string v3, "apm_enable_view_trace"

    const-string v4, "enable_start_period_memory_dump_worker"

    const-string v5, "enable_start_report_traffic_worker"

    const-string v6, "enable_start_upload_logcat_retry_worker"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "owl"

    return-object p0
.end method

.method public getIntKeys()[Ljava/lang/String;
    .locals 9

    const-string v0, "cpu_sample_interval"

    const-string v1, "cpu_sql_retain_size"

    const-string v2, "cpu_sql_usage_threshold"

    const-string v3, "hot_load"

    const-string v4, "apm_record_binder_recent_num"

    const-string v5, "apm_fps_record_drop_threshold"

    const-string v6, "apm_fps_log_drop_threshold"

    const-string v7, "mem_sample_interval"

    const-string v8, "mem_usage_threshold"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringKeys()[Ljava/lang/String;
    .locals 1

    const-string p0, "cpu_monitor"

    const-string v0, "car_monitor"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
