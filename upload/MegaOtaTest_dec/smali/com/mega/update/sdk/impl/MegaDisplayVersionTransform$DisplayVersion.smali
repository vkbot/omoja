.class Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;
.super Ljava/lang/Object;
.source "MegaDisplayVersionTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayVersion"
.end annotation


# instance fields
.field public mcuVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;

.field public tpVersion:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "mcuVersion"    # Ljava/lang/String;
    .param p4, "tpVersion"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->this$0:Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->version:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->mcuVersion:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->tpVersion:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mcuVersion"    # Ljava/lang/String;
    .param p2, "tpVersion"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->mcuVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->tpVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->tpVersion:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform$DisplayVersion;->version:Ljava/lang/String;

    return-object v0

    .line 38
    :cond_0
    const-string v0, "00"

    return-object v0
.end method
