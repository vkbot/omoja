.class public Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "DeviceOwnerInitializeProvisioningTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to set the system locale."

    .line 76
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTimeAndTimezone(Ljava/lang/String;J)V
    .locals 2

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    .line 59
    invoke-virtual {p0, p2, p3}, Landroid/app/AlarmManager;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Alarm manager failed to set the system time/timezone."

    .line 62
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 3

    .line 46
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->timeZone:Ljava/lang/String;

    iget-wide v1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->localTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;->setTimeAndTimezone(Ljava/lang/String;J)V

    .line 47
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;->setLocale(Ljava/util/Locale;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method
