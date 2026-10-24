.class public Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "MegaEcuOtaUpdateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS;
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
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ecu_name"    # Ljava/lang/String;
    .param p2, "ecu_childid"    # I
    .param p3, "ecu_ota_file"    # Ljava/lang/String;
    .param p4, "ecu_sha256"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;->ecu_name:Ljava/lang/String;

    .line 98
    iput p2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;->ecu_childid:I

    .line 99
    iput-object p3, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;->ecu_ota_file:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;->ecu_sha256:Ljava/lang/String;

    .line 101
    return-void
.end method
