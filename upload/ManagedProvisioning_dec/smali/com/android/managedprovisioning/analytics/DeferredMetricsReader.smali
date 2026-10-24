.class public Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;
.super Ljava/lang/Object;
.source "DeferredMetricsReader.java"


# static fields
.field private static final PROCESS_METRICS_SERVICE_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.managedprovisioning"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;->PROCESS_METRICS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public scheduleDumpMetrics(Landroid/content/Context;)V
    .locals 3

    .line 54
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;->PROCESS_METRICS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v1, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;->EXTRA_FILE_PATH:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;->mFile:Ljava/io/File;

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/os/PersistableBundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v0, 0x927c0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 60
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0

    :cond_0
    const-string p0, "JobScheduler is null."

    .line 64
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logv(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
