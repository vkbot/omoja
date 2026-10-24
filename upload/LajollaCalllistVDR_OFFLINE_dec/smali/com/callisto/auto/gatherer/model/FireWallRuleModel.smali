.class public Lcom/callisto/auto/gatherer/model/FireWallRuleModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/model/FireWallRuleModel$ChainBean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private chains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callisto/auto/gatherer/model/FireWallRuleModel<",
            "TT;>.ChainBean;>;"
        }
    .end annotation
.end field

.field private enable:Z

.field private gson:Lcom/google/gson/Gson;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->gson:Lcom/google/gson/Gson;

    :cond_0
    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->enable:Z

    const-class p1, Ljava/lang/String;

    invoke-direct {p0, p3, p1}, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->convertStringToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->chains:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private convertStringToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance p2, Lcom/callisto/auto/gatherer/model/FireWallRuleModel$1;

    invoke-direct {p2, p0}, Lcom/callisto/auto/gatherer/model/FireWallRuleModel$1;-><init>(Lcom/callisto/auto/gatherer/model/FireWallRuleModel;)V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chains:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->chains:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
