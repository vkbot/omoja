.class public abstract Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter$RoleSwitchListener;
.super Landroid/bluetooth/BluetoothAdapter$RoleSwitchListener;
.source "MegaBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RoleSwitchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$RoleSwitchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoleSwitchChanged(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "role"    # I

    .line 61
    return-void
.end method
