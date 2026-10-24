.class public Lcom/mega/nexus/view/MegaInputDevice;
.super Ljava/lang/Object;
.source "MegaInputDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssociatedDisplayId(Landroid/view/InputDevice;)I
    .locals 1
    .param p0, "inputDevice"    # Landroid/view/InputDevice;

    .line 7
    invoke-virtual {p0}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v0

    return v0
.end method
