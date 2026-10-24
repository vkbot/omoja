.class public Lcom/mega/nexus/content/pm/MegaResolveInfo;
.super Ljava/lang/Object;
.source "MegaResolveInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .locals 1
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    return-object v0
.end method
