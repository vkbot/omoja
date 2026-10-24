.class public Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;
.super Ljava/lang/Object;
.source "MegaEcuOtaUpdateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public ecu_boot_version:Ljava/lang/String;

.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_extra_info:Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;

.field public ecu_hard_version:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I

.field public ecu_slot_version:Ljava/lang/String;

.field public ecu_soft_version:Ljava/lang/String;

.field public ecu_vendor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
