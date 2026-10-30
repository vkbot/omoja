.class public Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ProgressInfo;
.super Ljava/lang/Object;
.source "McuUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressInfo"
.end annotation


# instance fields
.field public ecu_childid:I

.field public ecu_desc:Ljava/lang/String;

.field public ecu_name:Ljava/lang/String;

.field public ecu_result:I

.field public mcu_progress:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_progress"
    .end annotation
.end field

.field public mcu_stage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_stage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
