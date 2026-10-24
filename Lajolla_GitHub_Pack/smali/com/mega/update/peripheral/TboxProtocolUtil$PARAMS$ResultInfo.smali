.class public Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;
.super Ljava/lang/Object;
.source "TboxProtocolUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultInfo"
.end annotation


# instance fields
.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "tbox"

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;->ecu_name:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;->ecu_childid:I

    return-void
.end method
