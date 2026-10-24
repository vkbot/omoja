.class final Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;
.super Ljava/lang/Object;
.source "WatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/WatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WatchRunnable"
.end annotation


# instance fields
.field private final SIMPLE_NAME:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/logging/log4j/core/util/WatchManager;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/util/WatchManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->this$0:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-class p1, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->SIMPLE_NAME:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/util/WatchManager;Lorg/apache/logging/log4j/core/util/WatchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/util/WatchManager;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/util/WatchManager$1;

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;-><init>(Lorg/apache/logging/log4j/core/util/WatchManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 105
    invoke-static {}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->SIMPLE_NAME:Ljava/lang/String;

    const-string v2, "{} run triggered."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->this$0:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$100(Lorg/apache/logging/log4j/core/util/WatchManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/Source;

    .line 108
    .local v2, "source":Lorg/apache/logging/log4j/core/util/Source;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    .line 109
    .local v10, "monitor":Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/util/Watcher;->isModified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/util/Watcher;->getLastModified()J

    move-result-wide v11

    .line 111
    .local v11, "lastModified":J
    invoke-static {}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-static {}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->this$0:Lorg/apache/logging/log4j/core/util/WatchManager;

    .line 113
    invoke-static {v4, v11, v12}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$200(Lorg/apache/logging/log4j/core/util/WatchManager;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v4, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->this$0:Lorg/apache/logging/log4j/core/util/WatchManager;

    invoke-static {v10}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->access$300(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$200(Lorg/apache/logging/log4j/core/util/WatchManager;J)Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-static {v10}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->access$300(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 112
    const-string v4, "Source \'{}\' was modified on {} ({}), previous modification was on {} ({})"

    move-object v5, v2

    invoke-interface/range {v3 .. v9}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-static {v10, v11, v12}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->access$302(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;J)J

    .line 117
    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/util/Watcher;->modified()V

    .line 119
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;>;"
    .end local v2    # "source":Lorg/apache/logging/log4j/core/util/Source;
    .end local v10    # "monitor":Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
    .end local v11    # "lastModified":J
    :cond_1
    goto :goto_0

    .line 120
    :cond_2
    invoke-static {}, Lorg/apache/logging/log4j/core/util/WatchManager;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->SIMPLE_NAME:Ljava/lang/String;

    const-string v2, "{} run ended."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method
