.class public Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;
.super Ljava/lang/Object;
.source "DisUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultInfo"
.end annotation


# instance fields
.field public dis_desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_desc"
    .end annotation
.end field

.field public dis_result:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_result"
    .end annotation
.end field

.field public dis_type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu_childid"
    .end annotation
.end field

.field public ecu_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
