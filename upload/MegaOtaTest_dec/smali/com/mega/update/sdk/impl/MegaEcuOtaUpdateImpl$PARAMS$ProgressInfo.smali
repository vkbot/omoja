.class public Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;
.super Ljava/lang/Object;
.source "MegaEcuOtaUpdateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressInfo"
.end annotation


# instance fields
.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_progress:I

.field public ecu_result:I

.field public ecu_stage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
