.class public Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;
.super Ljava/lang/Object;
.source "MetricsWriterFactory.java"


# direct methods
.method public static getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/common/SettingsFacade;->isDuringSetupWizard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;

    invoke-static {p0}, Lcom/android/managedprovisioning/provisioning/Constants;->getDeferredMetricsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;-><init>(Ljava/io/File;)V

    return-object p1

    .line 45
    :cond_0
    new-instance p0, Lcom/android/managedprovisioning/analytics/InstantMetricsWriter;

    invoke-direct {p0}, Lcom/android/managedprovisioning/analytics/InstantMetricsWriter;-><init>()V

    return-object p0
.end method
