.class public Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;
.super Ljava/lang/Object;
.source "TboxProtocolUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS;
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
.method public constructor <init>(II)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "stage"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "tbox"

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;->ecu_name:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;->ecu_childid:I

    .line 49
    iput p1, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;->ecu_progress:I

    .line 50
    iput p2, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;->ecu_stage:I

    .line 51
    return-void
.end method
