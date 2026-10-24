.class public Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "HudUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS;
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "hud"

    iput-object v0, p0, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;->ecu_name:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;->ecu_childid:I

    .line 31
    iput-object p1, p0, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;->ecu_ota_file:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;->ecu_sha256:Ljava/lang/String;

    .line 33
    return-void
.end method
