.class public Lcom/mega/nexus/content/pm/MegaServiceInfo;
.super Ljava/lang/Object;
.source "MegaServiceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentName(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
