.class public Lcom/mega/nexus/app/MegaAppOpsManager;
.super Ljava/lang/Object;
.source "MegaAppOpsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V
    .locals 0
    .param p1, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .line 9
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 10
    return-void
.end method
