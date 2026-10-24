.class public Lcom/callisto/auto/gatherer/model/CfgDataRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;
    }
.end annotation


# instance fields
.field private controller:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private info:Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

.field private os_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ICC"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->controller:Ljava/lang/String;

    invoke-static {}, Lcom/callisto/auto/gatherer/utils/DeviceUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->device_id:Ljava/lang/String;

    const-string v0, "linux"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->os_name:Ljava/lang/String;

    new-instance v0, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;-><init>(Lcom/callisto/auto/gatherer/model/CfgDataRequest;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->info:Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->info:Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

    return-object v0
.end method

.method public setCurCfgVer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->info:Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

    invoke-static {v0, p1}, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;->access$002(Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setInfo(Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->info:Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->info:Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;

    invoke-static {v0, p1}, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;->access$102(Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
