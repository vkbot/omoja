.class public Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;
.super Ljava/lang/Object;
.source "TboxProtocolUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public ecu_boot_version:Ljava/lang/String;

.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_hard_version:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I

.field public ecu_slot_version:Ljava/lang/String;

.field public ecu_soft_version:Ljava/lang/String;

.field public ecu_vendor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "tbox"

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;->ecu_name:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;->ecu_childid:I

    return-void
.end method
