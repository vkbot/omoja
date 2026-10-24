.class Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;
.super Ljava/lang/Object;
.source "PropertiesUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/PropertiesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Environment"
.end annotation


# instance fields
.field private final literal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final normalized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/logging/log4j/util/PropertySource;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/util/PropertySource;)V
    .locals 8
    .param p1, "propertySource"    # Lorg/apache/logging/log4j/util/PropertySource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertySource"
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/logging/log4j/util/PropertySource$Comparator;

    invoke-direct {v1}, Lorg/apache/logging/log4j/util/PropertySource$Comparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->sources:Ljava/util/Set;

    .line 422
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->literal:Ljava/util/Map;

    .line 423
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    .line 424
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->tokenized:Ljava/util/Map;

    .line 427
    new-instance v0, Lorg/apache/logging/log4j/util/PropertyFilePropertySource;

    const-string v1, "log4j2.system.properties"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertyFilePropertySource;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "sysProps":Lorg/apache/logging/log4j/util/PropertyFilePropertySource;
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;->INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertyFilePropertySource;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 437
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->sources:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 440
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    const-class v5, Lorg/apache/logging/log4j/util/PropertySource;

    invoke-static {v5, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/util/PropertySource;

    .line 441
    .local v6, "source":Lorg/apache/logging/log4j/util/PropertySource;
    iget-object v7, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->sources:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    nop

    .end local v6    # "source":Lorg/apache/logging/log4j/util/PropertySource;
    goto :goto_2

    .line 447
    :cond_0
    goto :goto_3

    .line 443
    :catchall_0
    move-exception v5

    .line 438
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    :cond_1
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->reload()V

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/util/PropertySource;Lorg/apache/logging/log4j/util/PropertiesUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/util/PropertySource;
    .param p2, "x1"    # Lorg/apache/logging/log4j/util/PropertiesUtil$1;

    .line 419
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;-><init>(Lorg/apache/logging/log4j/util/PropertySource;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;

    .line 419
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->reload()V

    return-void
.end method

.method private containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->literal:Ljava/util/Map;

    .line 501
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-static {p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->hasSystemProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->tokenized:Ljava/util/Map;

    .line 503
    invoke-static {p1}, Lorg/apache/logging/log4j/util/PropertySource$Util;->tokenize(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 500
    :goto_1
    return v0
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->literal:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->literal:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 488
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->hasSystemProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 491
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->sources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/util/PropertySource;

    .line 492
    .local v1, "source":Lorg/apache/logging/log4j/util/PropertySource;
    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/util/PropertySource;->containsProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/util/PropertySource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 495
    .end local v1    # "source":Lorg/apache/logging/log4j/util/PropertySource;
    :cond_3
    goto :goto_0

    .line 496
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->tokenized:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/logging/log4j/util/PropertySource$Util;->tokenize(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static hasSystemProperty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 475
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ignored":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 430
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 431
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    :cond_0
    return-void
.end method

.method private declared-synchronized reload()V
    .locals 3

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->literal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 455
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 456
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->tokenized:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 457
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->sources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/util/PropertySource;

    .line 458
    .local v1, "source":Lorg/apache/logging/log4j/util/PropertySource;
    new-instance v2, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;

    invoke-direct {v2, p0, v1}, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$X8tmG9idsSRaxtVmMoOzoGzoCUY;-><init>(Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;Lorg/apache/logging/log4j/util/PropertySource;)V

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/util/PropertySource;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v1    # "source":Lorg/apache/logging/log4j/util/PropertySource;
    goto :goto_0

    .line 471
    .end local p0    # "this":Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;
    :cond_0
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public synthetic lambda$reload$1$PropertiesUtil$Environment(Lorg/apache/logging/log4j/util/PropertySource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Lorg/apache/logging/log4j/util/PropertySource;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "source",
            "key",
            "value"
        }
    .end annotation

    .line 459
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 460
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->literal:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {p2}, Lorg/apache/logging/log4j/util/PropertySource$Util;->tokenize(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 462
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/logging/log4j/util/PropertySource;->getNormalForm(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 465
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->normalized:Ljava/util/Map;

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/util/PropertySource;->getNormalForm(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->tokenized:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v0    # "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    :goto_0
    return-void
.end method
