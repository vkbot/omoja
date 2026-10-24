.class public Lcom/mega/nexus/app/MegaActivityOptions;
.super Ljava/lang/Object;
.source "MegaActivityOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLaunchStackId(Landroid/app/ActivityOptions;)I
    .locals 1
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 13
    invoke-static {p0}, Lcom/mega/nexus/app/MegaActivityOptionsAdapter;->getLaunchStackId(Landroid/app/ActivityOptions;)I

    move-result v0

    return v0
.end method

.method public static setLaunchStackId(Landroid/app/ActivityOptions;I)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "launchStackId"    # I

    .line 9
    invoke-static {p0, p1}, Lcom/mega/nexus/app/MegaActivityOptionsAdapter;->setLaunchStackId(Landroid/app/ActivityOptions;I)V

    .line 10
    return-void
.end method
