.class public final Lcom/android/managedprovisioning/provisioning/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# direct methods
.method public static getDeferredMetricsFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "deferred_metrics"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
