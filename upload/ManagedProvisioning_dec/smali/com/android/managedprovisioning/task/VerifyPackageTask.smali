.class public Lcom/android/managedprovisioning/task/VerifyPackageTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "VerifyPackageTask.java"


# instance fields
.field private final mDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

.field private final mDownloadPackageTask:Lcom/android/managedprovisioning/task/DownloadPackageTask;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 82
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 84
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 85
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mDownloadPackageTask:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    .line 86
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    iget-object p1, p4, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 7

    .line 68
    new-instance v1, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v6, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 70
    invoke-static {p2, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p2}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v0, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/android/managedprovisioning/task/VerifyPackageTask;-><init>(Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method private computeHashesOfAllSignatures([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 141
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 142
    iget-object v4, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/managedprovisioning/common/Utils;->computeHashOfByteArray([B)[B

    move-result-object v3

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private doesASignatureHashMatch(Landroid/content/pm/PackageInfo;[B)Z
    .locals 2

    const-string v0, "Checking SHA-256-hashes of all signatures of downloaded package."

    .line 150
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 152
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/VerifyPackageTask;->computeHashesOfAllSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    .line 153
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 159
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v0, "Provided hash does not match any signature hash."

    .line 164
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hash provided by programmer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p2}, Lcom/android/managedprovisioning/common/StoreUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    const-string p2, "Hashes computed from package signatures: "

    .line 167
    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_3

    .line 170
    invoke-static {p2}, Lcom/android/managedprovisioning/common/StoreUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return p1

    :cond_5
    :goto_1
    const-string p0, "Downloaded package does not have any signatures."

    .line 154
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return p1
.end method

.method private doesPackageHashMatch(Ljava/lang/String;[B)Z
    .locals 1

    const-string v0, "Checking file hash of entire apk file."

    .line 184
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    const-string v0, "SHA-256"

    invoke-virtual {p0, p1, v0}, Lcom/android/managedprovisioning/common/Utils;->computeHashOfFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 186
    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p1, "Provided hash does not match file hash."

    .line 190
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hash provided by programmer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p2}, Lcom/android/managedprovisioning/common/StoreUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SHA-256 Hash computed from file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p0}, Lcom/android/managedprovisioning/common/StoreUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public run(I)V
    .locals 5

    .line 92
    iget-object p1, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mDownloadPackageTask:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->getDownloadedPackageLocation()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "VerifyPackageTask invoked, but download location is null"

    .line 94
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x42

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v4, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v4, v4, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v1, v4, v0}, Lcom/android/managedprovisioning/common/Utils;->findDeviceAdminInPackageInfo(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/managedprovisioning/task/VerifyPackageTask;->mDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iget-object v2, v1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->packageChecksum:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 116
    invoke-direct {p0, p1, v2}, Lcom/android/managedprovisioning/task/VerifyPackageTask;->doesPackageHashMatch(Ljava/lang/String;[B)Z

    move-result p1

    if-nez p1, :cond_4

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 121
    :cond_3
    iget-object p1, v1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->signatureChecksum:[B

    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/task/VerifyPackageTask;->doesASignatureHashMatch(Landroid/content/pm/PackageInfo;[B)Z

    move-result p1

    if-nez p1, :cond_4

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    :cond_5
    :goto_0
    const-string p1, "Device admin package info or name is null"

    .line 104
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void
.end method
