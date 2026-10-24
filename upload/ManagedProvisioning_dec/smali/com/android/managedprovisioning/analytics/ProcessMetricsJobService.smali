.class public Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;
.super Landroid/app/job/JobService;
.source "ProcessMetricsJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;
    }
.end annotation


# static fields
.field static EXTRA_FILE_PATH:Ljava/lang/String; = "extra_file_path"


# instance fields
.field private final mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/managedprovisioning/analytics/InstantMetricsWriter;

    invoke-direct {v0}, Lcom/android/managedprovisioning/analytics/InstantMetricsWriter;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    return-void
.end method


# virtual methods
.method executeReadDeferredMetrics(Landroid/app/job/JobParameters;Ljava/io/File;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    new-instance v0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;

    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService$ReadDeferredMetricsAsyncTask;-><init>(Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;Landroid/app/job/JobParameters;Ljava/io/File;Lcom/android/managedprovisioning/analytics/MetricsWriter;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 60
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 61
    sget-object v2, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;->EXTRA_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;->EXTRA_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 68
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/managedprovisioning/analytics/ProcessMetricsJobService;->executeReadDeferredMetrics(Landroid/app/job/JobParameters;Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
