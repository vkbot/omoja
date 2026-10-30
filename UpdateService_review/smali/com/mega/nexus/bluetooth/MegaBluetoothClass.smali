.class public Lcom/mega/nexus/bluetooth/MegaBluetoothClass;
.super Ljava/lang/Object;
.source "MegaBluetoothClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/bluetooth/MegaBluetoothClass$Device;
    }
.end annotation


# static fields
.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothClass;
    .param p1, "profile"    # I

    .line 14
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    return v0
.end method
