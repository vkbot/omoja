.class public Lcom/mega/nexus/telecom/MegaTelecomManager;
.super Ljava/lang/Object;
.source "MegaTelecomManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallState(Landroid/telecom/TelecomManager;)I
    .locals 1
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;

    .line 12
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static isRinging(Landroid/telecom/TelecomManager;)Z
    .locals 1
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;

    .line 7
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    return v0
.end method
