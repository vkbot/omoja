.class public Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;
.super Ljava/lang/Object;
.source "MegaEcuOtaUpdateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfo"
.end annotation


# instance fields
.field public calib_version:Ljava/lang/String;

.field public part_no:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public vendor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
