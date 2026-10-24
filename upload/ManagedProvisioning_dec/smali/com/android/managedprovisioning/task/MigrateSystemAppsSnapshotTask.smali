.class public Lcom/android/managedprovisioning/task/MigrateSystemAppsSnapshotTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "MigrateSystemAppsSnapshotTask.java"


# static fields
.field private static final XML_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)\\.xml"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/MigrateSystemAppsSnapshotTask;->XML_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method private migrateIfNecessary()V
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getLegacyFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Found legacy system_apps folder, kick start migration."

    .line 63
    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 66
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 68
    sget-object v6, Lcom/android/managedprovisioning/task/MigrateSystemAppsSnapshotTask;->XML_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found invalid file during migration: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 74
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 77
    :try_start_0
    iget-object v6, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-static {v6}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to migrate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " no longer exists, skip migrating its snapshot file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 90
    :cond_3
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/MigrateSystemAppsSnapshotTask;->migrateIfNecessary()V

    return-void
.end method
