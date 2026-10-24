.class public Lcom/callisto/auto/gatherer/model/BaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private coll_time:Ljava/lang/String;

.field private controller:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private leak_id:Ljava/lang/String;

.field private os_name:Ljava/lang/String;

.field private vdr_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ICC"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->controller:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->os_name:Ljava/lang/String;

    invoke-static {}, Lcom/callisto/auto/gatherer/utils/DeviceUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->device_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/callisto/auto/gatherer/utils/DeviceUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->vdr_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->coll_time:Ljava/lang/String;

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->leak_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/callisto/auto/gatherer/model/BaseRequest;->info:Ljava/lang/Object;

    return-void
.end method
