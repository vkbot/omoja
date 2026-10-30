.class public Lcom/mega/nexus/content/pm/MegaComponentInfo;
.super Ljava/lang/Object;
.source "MegaComponentInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "componentInfo"    # Landroid/content/pm/ComponentInfo;

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
