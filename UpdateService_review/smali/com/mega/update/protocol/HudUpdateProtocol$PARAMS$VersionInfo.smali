.class public Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;
.super Ljava/lang/Object;
.source "HudUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public ecu_boot_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "ecu_mcu_boot_version"
        }
        value = "ecu_boot_version"
    .end annotation
.end field

.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_hard_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "ecu_mcu_hard_version"
        }
        value = "ecu_hard_version"
    .end annotation
.end field

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I

.field public ecu_slot_version:Ljava/lang/String;

.field public ecu_soft_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "ecu_mcu_app_version"
        }
        value = "ecu_soft_version"
    .end annotation
.end field

.field public ecu_vendor_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "ecu_hard_id"
        }
        value = "ecu_vendor_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
