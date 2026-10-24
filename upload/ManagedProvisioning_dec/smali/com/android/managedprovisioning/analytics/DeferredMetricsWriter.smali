.class public Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;
.super Ljava/lang/Object;
.source "DeferredMetricsWriter.java"

# interfaces
.implements Lcom/android/managedprovisioning/analytics/MetricsWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;->mFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;->sLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public varargs write([Landroid/app/admin/DevicePolicyEventLogger;)V
    .locals 2

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter;->mFile:Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 59
    new-instance p0, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/analytics/DeferredMetricsWriter$WriteDeferredMetricsAsyncTask;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Could not find file passed to DeferredMetricsWriter."

    .line 62
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
