.class Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;
.super Ljava/lang/Object;
.source "IEcuInfo.java"

# interfaces
.implements Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$getPropertyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub;

    .line 744
    iput-object p1, p0, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;->this$0:Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub;

    iput-object p2, p0, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/lang/String;)V
    .locals 2
    .param p1, "retCode"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    iget-object v0, p0, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 749
    iget-object v0, p0, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 751
    return-void
.end method
