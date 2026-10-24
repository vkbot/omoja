.class public Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "DisUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS;
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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "sha256"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "display"

    iput-object v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;->ecu_name:Ljava/lang/String;

    .line 33
    iput p1, p0, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;->ecu_childid:I

    .line 34
    iput-object p2, p0, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;->ecu_ota_file:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;->ecu_sha256:Ljava/lang/String;

    .line 36
    return-void
.end method
