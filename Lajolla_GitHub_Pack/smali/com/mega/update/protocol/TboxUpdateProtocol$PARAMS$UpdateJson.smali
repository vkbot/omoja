.class public Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "TboxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sha256"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "tbox"

    iput-object v0, p0, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;->ecu_name:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;->ecu_childid:I

    .line 38
    iput-object p1, p0, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;->ecu_ota_file:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;->ecu_sha256:Ljava/lang/String;

    .line 40
    return-void
.end method
