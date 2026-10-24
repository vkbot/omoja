.class public Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callisto/auto/gatherer/model/CfgDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoBean"
.end annotation


# instance fields
.field private curCfgVer:Ljava/lang/String;

.field final synthetic this$0:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/model/CfgDataRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;->this$0:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;->curCfgVer:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/CfgDataRequest$InfoBean;->updateTime:Ljava/lang/String;

    return-object p1
.end method
