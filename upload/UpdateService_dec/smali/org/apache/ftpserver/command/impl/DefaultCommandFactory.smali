.class public Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;
.super Ljava/lang/Object;
.source "DefaultCommandFactory.java"

# interfaces
.implements Lorg/apache/ftpserver/command/CommandFactory;


# instance fields
.field private final commandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "commandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/command/Command;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;->commandMap:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public getCommand(Ljava/lang/String;)Lorg/apache/ftpserver/command/Command;
    .locals 2
    .param p1, "cmdName"    # Ljava/lang/String;

    .line 58
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "upperCaseCmdName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;->commandMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/command/Command;

    return-object v1

    .line 59
    .end local v0    # "upperCaseCmdName":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
