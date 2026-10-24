.class public Lcom/android/managedprovisioning/analytics/InstantMetricsWriter;
.super Ljava/lang/Object;
.source "InstantMetricsWriter.java"

# interfaces
.implements Lcom/android/managedprovisioning/analytics/MetricsWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs write([Landroid/app/admin/DevicePolicyEventLogger;)V
    .locals 2

    .line 27
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p1, v0

    .line 28
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
