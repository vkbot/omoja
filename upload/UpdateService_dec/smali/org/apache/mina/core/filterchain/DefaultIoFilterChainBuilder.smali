.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.super Ljava/lang/Object;
.source "DefaultIoFilterChainBuilder.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;)V
    .locals 2
    .param p1, "filterChain"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    .line 86
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filterChain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBaseName(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseName"    # Ljava/lang/String;

    .line 591
    if-eqz p1, :cond_1

    .line 595
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    return-void

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isOrderedMap(Ljava/util/Map;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .line 454
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 455
    return v0

    .line 458
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 460
    .local v1, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 461
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "{} is an ordered map."

    invoke-interface {v0, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    :cond_1
    return v3

    .line 468
    :cond_2
    sget-object v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    sget-object v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "{} is not a {}"

    invoke-interface {v2, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    :cond_3
    move-object v2, v1

    .line 475
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_7

    .line 476
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 477
    .local v7, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OrderedMap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 478
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 479
    const-string v5, "{} is an ordered map (guessed from that it implements OrderedMap interface.)"

    invoke-interface {v0, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    :cond_4
    return v3

    .line 476
    .end local v7    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 487
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 490
    :cond_7
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 491
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "{} doesn\'t implement OrderedMap interface."

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    :cond_8
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 497
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Last resort; trying to create a new map instance with a default constructor and test if insertion order is maintained."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 504
    :cond_9
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .local v4, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;>;"
    nop

    .line 513
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 514
    .local v5, "rand":Ljava/util/Random;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v6, "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lorg/apache/mina/core/filterchain/IoFilterAdapter;

    invoke-direct {v7}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 517
    .local v7, "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/high16 v9, 0x10000

    if-ge v8, v9, :cond_e

    .line 521
    :cond_a
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 522
    .local v9, "filterName":Ljava/lang/String;
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 524
    invoke-interface {v4, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 529
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 530
    .local v12, "key":Ljava/lang/Object;
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 531
    sget-object v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 532
    sget-object v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    add-int/lit8 v11, v8, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "The specified map didn\'t pass the insertion order test after {} tries."

    invoke-interface {v3, v13, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    :cond_b
    return v0

    .line 537
    .end local v12    # "key":Ljava/lang/Object;
    :cond_c
    goto :goto_3

    .line 517
    .end local v9    # "filterName":Ljava/lang/String;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 540
    .end local v8    # "i":I
    :cond_e
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 541
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "The specified map passed the insertion order test."

    invoke-interface {v0, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 544
    :cond_f
    return v3

    .line 505
    .end local v4    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .end local v5    # "rand":Ljava/util/Random;
    .end local v6    # "expectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "dummyFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catch_0
    move-exception v3

    .line 506
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 507
    sget-object v4, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to create a new map instance of \'{}\'."

    invoke-interface {v4, v6, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    :cond_10
    return v0
.end method

.method private register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "e"    # Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 601
    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 606
    return-void

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 267
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 272
    .local v1, "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    goto :goto_1

    .line 276
    .end local v1    # "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 277
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 266
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 252
    .local v1, "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    new-instance v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    goto :goto_1

    .line 256
    .end local v1    # "base":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 257
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 246
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 226
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->register(ILorg/apache/mina/core/filterchain/IoFilterChain$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V
    .locals 4
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 553
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 554
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 408
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .line 216
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 1
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .line 159
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 161
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 162
    const/4 v1, 0x0

    return-object v1

    .line 165
    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    .line 145
    .local v0, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    return-object v1
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getAll()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 186
    return-object v0
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .line 127
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 128
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return-object v1

    .line 131
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 96
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    return-object v1

    .line 99
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 3
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 111
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 112
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 113
    return-object v1

    .line 115
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    .line 334
    if-eqz p1, :cond_2

    .line 338
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 341
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 344
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 346
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 348
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    .end local p1    # "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 335
    .restart local p1    # "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filterType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .end local p1    # "filterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 286
    if-eqz p1, :cond_2

    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 293
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 298
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 300
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 287
    .restart local p1    # "name":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .end local p1    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 4
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 310
    if-eqz p1, :cond_2

    .line 314
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 317
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 318
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 320
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 322
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 324
    .end local v0    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    .end local p1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 311
    .restart local p1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .end local p1    # "filter":Lorg/apache/mina/core/filterchain/IoFilter;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->checkBaseName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    .line 361
    .local v0, "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 362
    .local v1, "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-object v1

    .line 358
    .end local v0    # "e":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    .end local v1    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "newFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")V"
        }
    .end annotation

    .local p1, "oldFilterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 395
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    move-object v0, v1

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 400
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 402
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    .end local p1    # "oldFilterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .end local p2    # "newFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3
    .param p1, "oldFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p2, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 375
    .local v1, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 376
    move-object v0, v1

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;

    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 380
    .end local v1    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    :cond_0
    goto :goto_0

    .line 382
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local p1    # "oldFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    .end local p2    # "newFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFilters(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)V"
        }
    .end annotation

    .line 422
    .local p1, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    if-eqz p1, :cond_5

    .line 426
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->isOrderedMap(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 433
    .end local p1    # "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .local v0, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 434
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 438
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 441
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    goto :goto_0

    .line 439
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filters contains a null value."

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filters contains a null key."

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :cond_2
    monitor-enter p0

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->clear()V

    .line 446
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 447
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/filterchain/IoFilter;

    invoke-virtual {p0, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 448
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    goto :goto_1

    .line 449
    :cond_3
    monitor-exit p0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 427
    .end local v0    # "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    .restart local p1    # "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lorg/apache/mina/core/filterchain/IoFilter;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filters is not an ordered map. Please try "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/util/LinkedHashMap;

    .line 428
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const/4 v1, 0x1

    .line 567
    .local v1, "empty":Z
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    .line 568
    .local v3, "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    if-nez v1, :cond_0

    .line 569
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 571
    :cond_0
    const/4 v1, 0x0

    .line 574
    :goto_1
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    invoke-interface {v3}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    invoke-interface {v3}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    .end local v3    # "e":Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    goto :goto_0

    .line 581
    :cond_1
    if-eqz v1, :cond_2

    .line 582
    const-string v2, "empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_2
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
