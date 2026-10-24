.class Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;
.super Landroid/os/AsyncTask;
.source "DeferredMetricsWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteDeferredMetricsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/admin/DevicePolicyEventLogger;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method private static eventLoggerToDevicePolicyEvent(Landroid/app/admin/DevicePolicyEventLogger;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;
    .locals 3

    .line 110
    invoke-static {}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->newBuilder()Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;->setEventId(I)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    .line 112
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;->setIntegerValue(I)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    .line 113
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;->setBooleanValue(Z)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    .line 114
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getTimePeriod()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;->setTimePeriodMillis(J)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    .line 115
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getAdminPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;->setAdminPackageName(Ljava/lang/String;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->getStringArray()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 120
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/managedprovisioning/analytics/-$$Lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw;->INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw;

    .line 121
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$1uB4s1YpMn_jGBl8qbqimHtprfA;

    invoke-direct {v1, v0}, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$1uB4s1YpMn_jGBl8qbqimHtprfA;-><init>(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;)V

    .line 122
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    return-object p0
.end method

.method static synthetic lambda$eventLoggerToDevicePolicyEvent$0(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;->addStringListValue(Ljava/lang/String;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    return-void
.end method

.method public static synthetic lambda$vQzq2y05m9B9uSfCPyrOgT33Tfw(Landroid/app/admin/DevicePolicyEventLogger;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;
    .locals 0

    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->eventLoggerToDevicePolicyEvent(Landroid/app/admin/DevicePolicyEventLogger;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    move-result-object p0

    return-object p0
.end method

.method private static writeDevicePolicyEventsToStream(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    const-string v0, "Failed to close OutputStream."

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    .line 90
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/google/protobuf/AbstractMessageLite;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to write DevicePolicyEvent to OutputStream."

    .line 92
    invoke-static {v2, v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 103
    invoke-static {v0, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :try_start_3
    const-string v1, "Failed to flush OutputStream."

    .line 98
    invoke-static {v1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    return-void

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 103
    invoke-static {v0, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_3
    throw p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, [Landroid/app/admin/DevicePolicyEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->doInBackground([Landroid/app/admin/DevicePolicyEventLogger;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Landroid/app/admin/DevicePolicyEventLogger;)Ljava/lang/Void;
    .locals 1

    .line 77
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;->INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$DeferredMetricsWriter$WriteDeferredMetricsAsyncTask$vQzq2y05m9B9uSfCPyrOgT33Tfw;

    .line 78
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 79
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 80
    invoke-static {}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {p1, p0}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;->writeDevicePolicyEventsToStream(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 82
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
