.class public Lorg/apache/logging/log4j/core/util/WatchManager;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "WatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;,
        Lorg/apache/logging/log4j/core/util/WatchManager$LocalUUID;,
        Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
    }
.end annotation


# static fields
.field private static logger:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final eventServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/WatchEventService;",
            ">;"
        }
    .end annotation
.end field

.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:Ljava/util/UUID;

.field private intervalSeconds:I

.field private final scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

.field private final watchers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/logging/log4j/core/util/Source;",
            "Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)V
    .locals 1
    .param p1, "scheduler"    # Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scheduler"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    .line 133
    invoke-static {}, Lorg/apache/logging/log4j/core/util/WatchManager$LocalUUID;->get()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->id:Ljava/util/UUID;

    .line 136
    const-string v0, "scheduler"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    .line 137
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/WatchManager;->getEventServices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->eventServiceList:Ljava/util/List;

    .line 138
    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/util/WatchManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/WatchManager;

    .line 47
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/util/WatchManager;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/WatchManager;
    .param p1, "x1"    # J

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/WatchManager;->millisToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEventServices()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/WatchEventService;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/util/WatchEventService;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 162
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v5, Lorg/apache/logging/log4j/core/util/WatchEventService;

    .line 163
    invoke-static {v5, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v5

    .line 164
    .local v5, "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lorg/apache/logging/log4j/core/util/WatchEventService;>;"
    invoke-virtual {v5}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/util/WatchEventService;

    .line 165
    .local v7, "service":Lorg/apache/logging/log4j/core/util/WatchEventService;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    nop

    .end local v7    # "service":Lorg/apache/logging/log4j/core/util/WatchEventService;
    goto :goto_1

    .line 169
    .end local v5    # "serviceLoader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lorg/apache/logging/log4j/core/util/WatchEventService;>;"
    :cond_0
    goto :goto_2

    .line 167
    :catchall_0
    move-exception v5

    .line 168
    .local v5, "ex":Ljava/lang/Throwable;
    sget-object v6, Lorg/apache/logging/log4j/core/util/WatchManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Unable to retrieve WatchEventService from ClassLoader {}"

    invoke-interface {v6, v7, v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "ex":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return-object v0
.end method

.method private millisToString(J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "millis"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkFiles()V
    .locals 2

    .line 141
    new-instance v0, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;-><init>(Lorg/apache/logging/log4j/core/util/WatchManager;Lorg/apache/logging/log4j/core/util/WatchManager$1;)V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;->run()V

    .line 142
    return-void
.end method

.method public getConfigurationWatchers()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/core/util/Source;",
            "Lorg/apache/logging/log4j/core/util/Watcher;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 152
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;>;"
    goto :goto_0

    .line 155
    :cond_0
    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public getIntervalSeconds()I
    .locals 1

    .line 184
    iget v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    return v0
.end method

.method public getWatchers()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lorg/apache/logging/log4j/core/util/FileWatcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 196
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/logging/log4j/core/util/FileWatcher;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/logging/log4j/core/config/ConfigurationFileWatcher;

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/util/FileWatcher;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 200
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/util/Source;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/Source;->getFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/util/FileWatcher;

    invoke-direct {v4, v5}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;-><init>(Lorg/apache/logging/log4j/core/util/FileWatcher;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;>;"
    :goto_1
    goto :goto_0

    .line 203
    :cond_1
    return-object v0
.end method

.method public hasEventListeners()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->eventServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    .line 225
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Resetting {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/Source;

    .line 227
    .local v1, "source":Lorg/apache/logging/log4j/core/util/Source;
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/util/WatchManager;->reset(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 228
    .end local v1    # "source":Lorg/apache/logging/log4j/core/util/Source;
    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public reset(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 243
    if-nez p1, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/io/File;)V

    .line 247
    .local v0, "source":Lorg/apache/logging/log4j/core/util/Source;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->reset(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 248
    return-void
.end method

.method public reset(Lorg/apache/logging/log4j/core/util/Source;)V
    .locals 12
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 262
    if-nez p1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    .line 266
    .local v0, "monitor":Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;
    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->getWatcher()Lorg/apache/logging/log4j/core/util/Watcher;

    move-result-object v1

    .line 268
    .local v1, "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/util/Watcher;->isModified()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/util/Watcher;->getLastModified()J

    move-result-wide v2

    .line 270
    .local v2, "lastModifiedMillis":J
    sget-object v4, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Lorg/apache/logging/log4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    sget-object v5, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/Source;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->access$300(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lorg/apache/logging/log4j/core/util/WatchManager;->millisToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->access$300(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 273
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/util/WatchManager;->millisToString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 271
    const-string v6, "Resetting file monitor for \'{}\' from {} ({}) to {} ({})"

    invoke-interface/range {v5 .. v11}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    :cond_1
    invoke-static {v0, v2, v3}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;->access$500(Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;J)V

    .line 278
    .end local v1    # "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    .end local v2    # "lastModifiedMillis":J
    :cond_2
    return-void
.end method

.method public setIntervalSeconds(I)V
    .locals 1
    .param p1, "intervalSeconds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intervalSeconds"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WatchManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 283
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->decrementScheduledItems()V

    goto :goto_0

    .line 284
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 285
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->incrementScheduledItems()V

    .line 287
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    .line 289
    :cond_2
    return-void
.end method

.method public start()V
    .locals 8

    .line 293
    invoke-super {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->start()V

    .line 295
    iget v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    if-lez v0, :cond_0

    .line 296
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    new-instance v2, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lorg/apache/logging/log4j/core/util/WatchManager$WatchRunnable;-><init>(Lorg/apache/logging/log4j/core/util/WatchManager;Lorg/apache/logging/log4j/core/util/WatchManager$1;)V

    iget v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    int-to-long v3, v0

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 297
    invoke-virtual/range {v1 .. v7}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->eventServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/WatchEventService;

    .line 300
    .local v1, "service":Lorg/apache/logging/log4j/core/util/WatchEventService;
    invoke-interface {v1, p0}, Lorg/apache/logging/log4j/core/util/WatchEventService;->subscribe(Lorg/apache/logging/log4j/core/util/WatchManager;)V

    .line 301
    .end local v1    # "service":Lorg/apache/logging/log4j/core/util/WatchEventService;
    goto :goto_0

    .line 302
    :cond_1
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WatchManager;->setStopping()V

    .line 307
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->eventServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/WatchEventService;

    .line 308
    .local v1, "service":Lorg/apache/logging/log4j/core/util/WatchEventService;
    invoke-interface {v1, p0}, Lorg/apache/logging/log4j/core/util/WatchEventService;->unsubscribe(Lorg/apache/logging/log4j/core/util/WatchManager;)V

    .line 309
    .end local v1    # "service":Lorg/apache/logging/log4j/core/util/WatchEventService;
    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->stop(Ljava/util/concurrent/Future;)Z

    move-result v0

    .line 311
    .local v0, "stopped":Z
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/WatchManager;->setStopped()V

    .line 312
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchManager [intervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->intervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", watchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", future="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwatch(Lorg/apache/logging/log4j/core/util/Source;)V
    .locals 2
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 329
    sget-object v0, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Unwatching configuration {}"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public unwatchFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .line 340
    new-instance v0, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/io/File;)V

    .line 341
    .local v0, "source":Lorg/apache/logging/log4j/core/util/Source;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->unwatch(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 342
    return-void
.end method

.method public watch(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;)V
    .locals 6
    .param p1, "source"    # Lorg/apache/logging/log4j/core/util/Source;
    .param p2, "watcher"    # Lorg/apache/logging/log4j/core/util/Watcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "watcher"
        }
    .end annotation

    .line 351
    invoke-interface {p2, p1}, Lorg/apache/logging/log4j/core/util/Watcher;->watching(Lorg/apache/logging/log4j/core/util/Source;)V

    .line 352
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/util/Watcher;->getLastModified()J

    move-result-wide v0

    .line 353
    .local v0, "lastModified":J
    sget-object v2, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    sget-object v2, Lorg/apache/logging/log4j/core/util/WatchManager;->logger:Lorg/apache/logging/log4j/Logger;

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/util/WatchManager;->millisToString(J)Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 354
    const-string v5, "Watching configuration \'{}\' for lastModified {} ({})"

    invoke-interface {v2, v5, p1, v3, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/WatchManager;->watchers:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;

    invoke-direct {v3, p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/util/WatchManager$ConfigurationMonitor;-><init>(Lorg/apache/logging/log4j/core/util/WatchManager;JLorg/apache/logging/log4j/core/util/Watcher;)V

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method public watchFile(Ljava/io/File;Lorg/apache/logging/log4j/core/util/FileWatcher;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileWatcher"    # Lorg/apache/logging/log4j/core/util/FileWatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "fileWatcher"
        }
    .end annotation

    .line 368
    instance-of v0, p2, Lorg/apache/logging/log4j/core/util/Watcher;

    if-eqz v0, :cond_0

    .line 369
    move-object v0, p2

    check-cast v0, Lorg/apache/logging/log4j/core/util/Watcher;

    .local v0, "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    goto :goto_0

    .line 371
    .end local v0    # "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/util/WrappedFileWatcher;-><init>(Lorg/apache/logging/log4j/core/util/FileWatcher;)V

    .line 373
    .restart local v0    # "watcher":Lorg/apache/logging/log4j/core/util/Watcher;
    :goto_0
    new-instance v1, Lorg/apache/logging/log4j/core/util/Source;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/core/util/Source;-><init>(Ljava/io/File;)V

    .line 374
    .local v1, "source":Lorg/apache/logging/log4j/core/util/Source;
    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/util/WatchManager;->watch(Lorg/apache/logging/log4j/core/util/Source;Lorg/apache/logging/log4j/core/util/Watcher;)V

    .line 375
    return-void
.end method
