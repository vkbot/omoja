.class public Lcom/android/managedprovisioning/task/InstallPackageTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "InstallPackageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_DONE:Ljava/lang/String;


# instance fields
.field private final mDownloadPackageTask:Lcom/android/managedprovisioning/task/DownloadPackageTask;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/managedprovisioning/task/InstallPackageTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".DONE."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/task/InstallPackageTask;->ACTION_INSTALL_DONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 6

    .line 77
    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 79
    invoke-static {p2, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v1, p2}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/InstallPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/managedprovisioning/task/InstallPackageTask;->mPm:Landroid/content/pm/PackageManager;

    .line 93
    const-class p3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/InstallPackageTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 94
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask;->mDownloadPackageTask:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/managedprovisioning/task/InstallPackageTask;->ACTION_INSTALL_DONE:Ljava/lang/String;

    return-object v0
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 106
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26f

    return p0
.end method

.method public run(I)V
    .locals 12

    .line 121
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->startTaskTimer()V

    .line 122
    iget-object p1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask;->mDownloadPackageTask:Lcom/android/managedprovisioning/task/DownloadPackageTask;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/task/DownloadPackageTask;->getDownloadedPackageLocation()Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    :cond_0
    const v1, 0x400002

    .line 136
    iget-object v3, p0, Lcom/android/managedprovisioning/task/InstallPackageTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x400006

    .line 140
    :cond_1
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 142
    iput v1, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/android/managedprovisioning/task/InstallPackageTask;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    .line 147
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    .line 148
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 149
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    :try_start_3
    invoke-static {v11, v5}, Lcom/android/managedprovisioning/task/InstallPackageTask;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 152
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 157
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/managedprovisioning/task/InstallPackageTask;->ACTION_INSTALL_DONE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    iget-object v6, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;

    invoke-direct {v7, p0, v0}, Lcom/android/managedprovisioning/task/InstallPackageTask$PackageInstallReceiver;-><init>(Lcom/android/managedprovisioning/task/InstallPackageTask;Ljava/lang/String;)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    iget-object v6, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x48000000    # 131072.0f

    invoke-static {v6, v3, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz p1, :cond_5

    .line 165
    :try_start_7
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_4

    :catchall_0
    move-exception v3

    if-eqz v5, :cond_3

    .line 149
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_9
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_b
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 153
    :try_start_c
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 154
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_2
    if-eqz p1, :cond_4

    .line 148
    :try_start_d
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    :try_start_e
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p1

    .line 167
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {p0, v4}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 170
    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :goto_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 171
    throw p0
.end method
