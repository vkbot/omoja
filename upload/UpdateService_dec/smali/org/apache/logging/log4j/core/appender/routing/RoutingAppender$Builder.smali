.class public Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "RoutingAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Script"
    .end annotation
.end field

.field private purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PurgePolicy"
    .end annotation
.end field

.field private rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "RewritePolicy"
    .end annotation
.end field

.field private routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Routes"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 61
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
    .locals 13

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "name":Ljava/lang/String;
    const/4 v0, 0x0

    if-nez v11, :cond_0

    .line 81
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "No name defined for this RoutingAppender"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 82
    return-object v0

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    if-nez v1, :cond_1

    .line 85
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "No routes defined for RoutingAppender {}"

    invoke-interface {v1, v2, v11}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 90
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "Script support is not enabled"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 91
    return-object v0

    .line 93
    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    instance-of v1, v1, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-nez v1, :cond_3

    .line 94
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    return-object v0

    .line 99
    :cond_3
    new-instance v12, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->isIgnoreExceptions()Z

    move-result v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    .line 100
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v12

    move-object v1, v11

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/appender/routing/Routes;Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$1;)V

    .line 99
    return-object v12
.end method

.method public getDefaultRouteScript()Lorg/apache/logging/log4j/core/script/AbstractScript;
    .locals 1

    .line 108
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    return-object v0
.end method

.method public getPurgePolicy()Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    return-object v0
.end method

.method public getRewritePolicy()Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .locals 1

    .line 112
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    return-object v0
.end method

.method public getRoutes()Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .locals 1

    .line 104
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    return-object v0
.end method

.method public withDefaultRouteScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;
    .locals 1
    .param p1, "defaultRouteScript"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "defaultRouteScript"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/script/AbstractScript;",
            ")TB;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->defaultRouteScript:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 126
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;

    return-object v0
.end method

.method public withPurgePolicy(Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;)V
    .locals 0
    .param p1, "purgePolicy"    # Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "purgePolicy"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->purgePolicy:Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;

    .line 136
    return-void
.end method

.method public withRewritePolicy(Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;
    .locals 1
    .param p1, "rewritePolicy"    # Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rewritePolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;",
            ")TB;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->rewritePolicy:Lorg/apache/logging/log4j/core/appender/rewrite/RewritePolicy;

    .line 131
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;

    return-object v0
.end method

.method public withRoutes(Lorg/apache/logging/log4j/core/appender/routing/Routes;)Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;
    .locals 1
    .param p1, "routes"    # Lorg/apache/logging/log4j/core/appender/routing/Routes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "routes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/routing/Routes;",
            ")TB;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->routes:Lorg/apache/logging/log4j/core/appender/routing/Routes;

    .line 121
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender$Builder;

    return-object v0
.end method
