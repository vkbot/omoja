.class Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;
.super Landroid/os/AsyncTask;
.source "ProcessMetricsJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDeferredMetricsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mJobParameters:Landroid/app/job/JobParameters;

.field private final mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

.field final synthetic this$0:Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;Landroid/app/job/JobParameters;Ljava/io/File;Lcom/android/managedprovisioning/analytics/MetricsWriter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->this$0:Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mFile:Ljava/io/File;

    .line 99
    iput-object p4, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    .line 100
    iput-object p2, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mJobParameters:Landroid/app/job/JobParameters;

    return-void
.end method

.method private delayProcessMetric()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 132
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Thread interrupted while waiting to log metric."

    .line 134
    invoke-static {v0, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private devicePolicyEventToLogger(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;)Landroid/app/admin/DevicePolicyEventLogger;
    .locals 2

    .line 141
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getEventId()I

    move-result p0

    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 142
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 143
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getIntegerValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 144
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 145
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getTimePeriodMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 146
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getStringListValueCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->getStringListValueList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 105
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->delayProcessMetric()V

    .line 109
    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/admin/DevicePolicyEventLogger;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->devicePolicyEventToLogger(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 105
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_5
    const-string v0, "Could not parse DevicePolicyEvent while reading from stream."

    .line 112
    invoke-static {v0, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 115
    :goto_2
    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 116
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->this$0:Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;->mJobParameters:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
