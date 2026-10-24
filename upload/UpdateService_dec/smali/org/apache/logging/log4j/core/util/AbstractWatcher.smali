.class public abstract Lorg/apache/logging/log4j/core/util/AbstractWatcher;
.super Ljava/lang/Object;
.source "AbstractWatcher.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Watcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;
    }
.end annotation


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final configurationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final reconfigurable:Lorg/apache/logging/log4j/core/config/Reconfigurable;

.field private source:Lorg/apache/logging/log4j/core/util/Source;

.field private final threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/config/Reconfigurable;Ljava/util/List;)V
    .locals 1
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "reconfigurable"    # Lorg/apache/logging/log4j/core/config/Reconfigurable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "reconfigurable",
            "configurationListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Lorg/apache/logging/log4j/core/config/Reconfigurable;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p3, "configurationListeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/ConfigurationListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 39
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->reconfigurable:Lorg/apache/logging/log4j/core/config/Reconfigurable;

    .line 40
    iput-object p3, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->configurationListeners:Ljava/util/List;

    .line 41
    if-eqz p3, :cond_0

    .line 42
    const-string v0, "ConfiguratonFileWatcher"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->createDaemonThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    .line 43
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public abstract getLastModified()J
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/ConfigurationListener;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->configurationListeners:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Lorg/apache/logging/log4j/core/util/Source;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->source:Lorg/apache/logging/log4j/core/util/Source;

    return-object v0
.end method

.method public abstract isModified()Z
.end method

.method public modified()V
    .locals 5

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->configurationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/ConfigurationListener;

    .line 53
    .local v1, "configurationListener":Lorg/apache/logging/log4j/core/config/ConfigurationListener;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->threadFactory:Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    new-instance v3, Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->reconfigurable:Lorg/apache/logging/log4j/core/config/Reconfigurable;

    invoke-direct {v3, v1, v4}, Lorg/apache/logging/log4j/core/util/AbstractWatcher$ReconfigurationRunnable;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationListener;Lorg/apache/logging/log4j/core/config/Reconfigurable;)V

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 54
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 55
    .end local v1    # "configurationListener":Lorg/apache/logging/log4j/core/config/ConfigurationListener;
    .end local v2    # "thread":Ljava/lang/Thread;
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public watching(Lorg/apache/logging/log4j/core/util/Source;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/AbstractWatcher;->source:Lorg/apache/logging/log4j/core/util/Source;

    .line 71
    return-void
.end method
