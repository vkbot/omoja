.class public Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
.super Ljava/lang/Object;
.source "McuUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultInfo"
.end annotation


# instance fields
.field public ecu_childid:I

.field public ecu_name:Ljava/lang/String;

.field public mcu_desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_desc"
    .end annotation
.end field

.field public mcu_result:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
