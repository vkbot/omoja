.class public Lcom/mega/nexus/os/MegaPowerManager;
.super Ljava/lang/Object;
.source "MegaPowerManager.java"


# static fields
.field public static final BACK_LIGHT_STATE_OFF:I = 0x0

.field public static final BACK_LIGHT_STATE_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public static getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .line 7
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "time"    # J

    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 20
    return-void
.end method

.method public static shutdown(Landroid/os/PowerManager;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;J)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "time"    # J

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 16
    return-void
.end method
