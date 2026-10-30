.class public Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "TboxProtocolUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateJson"
.end annotation


# instance fields
.field public ecu_childid:I

.field public ecu_name:Ljava/lang/String;

.field public ecu_ota_file:Ljava/lang/String;

.field public ecu_sha256:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "tbox"

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;->ecu_name:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;->ecu_childid:I

    return-void
.end method
