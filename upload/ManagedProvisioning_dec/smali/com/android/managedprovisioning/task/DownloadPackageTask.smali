.class public Lcom/android/managedprovisioning/task/DownloadPackageTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "DownloadPackageTask.java"


# instance fields
.field private mDoneDownloading:Z

.field private mDownloadId:J

.field private mDownloadLocationTo:Ljava/lang/String;

.field private final mDownloadManager:Landroid/app/DownloadManager;

.field private final mPackageDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

.field private final mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 6

    .line 73
    new-instance v1, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 75
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/DownloadPackageTask;-><init>(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 86
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 88
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    const-string p1, "download"

    .line 89
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 p2, 0x1

    .line 90
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->setAccessFilename(Z)V

    .line 91
    invoke-virtual {p3}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mPackageName:Ljava/lang/String;

    .line 92
    iget-object p1, p3, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mPackageDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/task/DownloadPackageTask;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/task/DownloadPackageTask;)Landroid/app/DownloadManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadManager:Landroid/app/DownloadManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/managedprovisioning/task/DownloadPackageTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadLocationTo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/task/DownloadPackageTask;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->onDownloadSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/managedprovisioning/task/DownloadPackageTask;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->onDownloadFail(I)V

    return-void
.end method

.method private createDownloadReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 167
    new-instance v0, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask$1;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;)V

    return-object v0
.end method

.method private onDownloadFail(I)V
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading package failed (download id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "). COLUMN_REASON in DownloadManager response has value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void
.end method

.method private onDownloadSuccess()V
    .locals 2

    .line 198
    iget-boolean v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDoneDownloading:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloaded succesfully to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadLocationTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDoneDownloading:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->stopTaskTimer()V

    .line 206
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method

.method private static setDpcDownloadedSetting(Landroid/content/Context;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "managed_provisioning_dpc_downloaded"

    const/4 v1, 0x1

    .line 157
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getDownloadedPackageLocation()Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadLocationTo:Ljava/lang/String;

    return-object p0
.end method

.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26e

    return p0
.end method

.method public run(I)V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->startTaskTimer()V

    .line 103
    iget-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mPackageDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iget v1, v1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->minVersion:I

    iget-object v2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/managedprovisioning/common/Utils;->packageRequiresUpdate(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/common/Utils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DownloadPackageTask: not connected to the network, can\'t download the package"

    .line 111
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->setDpcDownloadedSetting(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->createDownloadReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Handler;

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    new-instance p1, Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mPackageDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/download_cache/managed_provisioning_downloaded_app.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 139
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 141
    iget-object v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mPackageDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->cookieHeader:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "Cookie"

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/managedprovisioning/task/DownloadPackageTask;->mDownloadId:J

    return-void
.end method
