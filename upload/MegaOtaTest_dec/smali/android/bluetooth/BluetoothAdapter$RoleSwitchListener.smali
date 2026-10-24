.class public abstract Landroid/bluetooth/BluetoothAdapter$RoleSwitchListener;
.super Landroid/bluetooth/IRoleSwitchListener$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RoleSwitchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/bluetooth/IRoleSwitchListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoleSwitchChanged(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "role"    # I

    .line 27
    return-void
.end method
