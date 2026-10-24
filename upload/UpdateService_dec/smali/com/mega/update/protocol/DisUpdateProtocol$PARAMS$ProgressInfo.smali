.class public Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ProgressInfo;
.super Ljava/lang/Object;
.source "DisUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressInfo"
.end annotation


# instance fields
.field public dis_progress:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_progress"
    .end annotation
.end field

.field public dis_stage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_stage"
    .end annotation
.end field

.field public dis_type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_childid"
    .end annotation
.end field

.field public ecu_desc:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
