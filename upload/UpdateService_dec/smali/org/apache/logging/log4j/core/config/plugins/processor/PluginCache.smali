.class public Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
.super Ljava/lang/Object;
.source "PluginCache.java"


# instance fields
.field private final categories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$getCategory$0(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "ignored"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ignored"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$loadCacheFiles$1(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "printable"    # Z
    .param p3, "defer"    # Z
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "className",
            "name",
            "printable",
            "defer",
            "category",
            "k"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;-><init>()V

    .line 112
    .local v0, "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setKey(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setClassName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setPrintable(Z)V

    .line 116
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setDefer(Z)V

    .line 117
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setCategory(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method


# virtual methods
.method public getAllCategories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    return-object v0
.end method

.method public getCategory(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "category"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method public loadCacheFiles(Ljava/util/Enumeration;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p1, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-interface/range {p1 .. p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/URL;

    .line 97
    .local v2, "url":Ljava/net/URL;
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 98
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 99
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 100
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "category":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->getCategory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    move-object v12, v6

    .line 102
    .local v12, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v13, v6

    .line 103
    .local v13, "entries":I
    const/4 v6, 0x0

    move v14, v6

    .local v14, "j":I
    :goto_2
    if-ge v14, v13, :cond_0

    .line 105
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    .line 106
    .local v15, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "className":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    .line 109
    .local v9, "printable":Z
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    .line 110
    .local v10, "defer":Z
    new-instance v11, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;

    move-object v6, v11

    move/from16 v16, v0

    move-object v0, v11

    .end local v0    # "count":I
    .local v16, "count":I
    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    nop

    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "printable":Z
    .end local v10    # "defer":Z
    .end local v15    # "key":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    goto :goto_2

    .end local v16    # "count":I
    .restart local v0    # "count":I
    :cond_0
    move/from16 v16, v0

    .line 99
    .end local v0    # "count":I
    .end local v5    # "category":Ljava/lang/String;
    .end local v12    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    .end local v13    # "entries":I
    .end local v14    # "j":I
    .restart local v16    # "count":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v16    # "count":I
    .restart local v0    # "count":I
    :cond_1
    move/from16 v16, v0

    .line 122
    .end local v0    # "count":I
    .end local v4    # "i":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 123
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 97
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .end local p1    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .restart local p1    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5

    .line 124
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "in":Ljava/io/DataInputStream;
    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public writeCache(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v0, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->categories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 72
    .local v2, "category":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 74
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 76
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    .line 77
    .local v6, "plugin":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->isPrintable()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 81
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->isDefer()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    .end local v6    # "plugin":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    goto :goto_1

    .line 83
    .end local v2    # "category":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;>;"
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 85
    .end local v0    # "out":Ljava/io/DataOutputStream;
    return-void

    .line 67
    .restart local v0    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "out":Ljava/io/DataOutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .end local p1    # "os":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .restart local v0    # "out":Ljava/io/DataOutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;
    .restart local p1    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method
