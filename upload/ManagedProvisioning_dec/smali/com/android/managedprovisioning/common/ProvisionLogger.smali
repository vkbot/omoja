.class public Lcom/android/managedprovisioning/common/ProvisionLogger;
.super Ljava/lang/Object;
.source "ProvisionLogger.java"


# direct methods
.method static getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ManagedProvisioning"

    return-object v0
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logi(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 101
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logv(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/android/managedprovisioning/common/ProvisionLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
