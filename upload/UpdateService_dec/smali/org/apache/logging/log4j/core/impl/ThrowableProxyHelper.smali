.class Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;
.super Ljava/lang/Object;
.source "ThrowableProxyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "lastLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lastLoader",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 203
    if-eqz p0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 207
    return-object v0

    .line 211
    :cond_0
    goto :goto_0

    .line 209
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    .line 214
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 220
    return-object v0

    .line 217
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return-object v1

    .line 215
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method private static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 225
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static toCacheEntry(Ljava/lang/Class;Z)Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    .locals 9
    .param p1, "exact"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "callerClass",
            "exact"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;"
        }
    .end annotation

    .line 156
    .local p0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "/"

    const-string v1, "?"

    .line 157
    .local v1, "location":Ljava/lang/String;
    const-string v2, "?"

    .line 158
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 159
    .local v3, "lastLoader":Ljava/lang/ClassLoader;
    if-eqz p0, :cond_3

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v4

    .line 162
    .local v4, "source":Ljava/security/CodeSource;
    if-eqz v4, :cond_1

    .line 163
    invoke-virtual {v4}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v5

    .line 164
    .local v5, "locationURL":Ljava/net/URL;
    if-eqz v5, :cond_1

    .line 165
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5c

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 167
    .local v7, "index":I
    if-ltz v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_0

    .line 168
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 170
    :cond_0
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 175
    .end local v4    # "source":Ljava/security/CodeSource;
    .end local v5    # "locationURL":Ljava/net/URL;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_1
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 176
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 177
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "ver":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 180
    move-object v2, v4

    .line 184
    .end local v4    # "ver":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 187
    goto :goto_1

    .line 185
    :catch_1
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x0

    .line 189
    .end local v0    # "pkg":Ljava/lang/Package;
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;

    new-instance v4, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-direct {v4, p1, v1, v2}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;-><init>(Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;Ljava/lang/ClassLoader;Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$1;)V

    return-object v0
.end method

.method static toExtendedStackTrace(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/Deque;Ljava/util/Map;[Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    .locals 18
    .param p0, "src"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p3, "rootTrace"    # [Ljava/lang/StackTraceElement;
    .param p4, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "src",
            "stack",
            "map",
            "rootTrace",
            "stackTrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/Deque<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;",
            ">;[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ")[",
            "Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;"
        }
    .end annotation

    .line 74
    .local p1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Class<*>;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 75
    array-length v6, v2

    sub-int/2addr v6, v5

    .line 76
    .local v6, "rootIndex":I
    array-length v7, v3

    sub-int/2addr v7, v5

    .line 77
    .local v7, "stackIndex":I
    :goto_0
    if-ltz v6, :cond_0

    if-ltz v7, :cond_0

    aget-object v8, v2, v6

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 78
    add-int/lit8 v6, v6, -0x1

    .line 79
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 81
    :cond_0
    array-length v8, v3

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    invoke-virtual {v0, v8}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->setCommonElementCount(I)V

    .line 82
    add-int/2addr v7, v5

    .line 83
    .end local v6    # "rootIndex":I
    .local v7, "stackLength":I
    goto :goto_1

    .line 84
    .end local v7    # "stackLength":I
    :cond_1
    invoke-virtual {v0, v4}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->setCommonElementCount(I)V

    .line 85
    array-length v7, v3

    .line 87
    .restart local v7    # "stackLength":I
    :goto_1
    new-array v6, v7, [Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    .line 88
    .local v6, "extStackTrace":[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    invoke-interface/range {p1 .. p1}, Ljava/util/Deque;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    move-object v8, v9

    goto :goto_2

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 89
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const/4 v10, 0x0

    .line 90
    .local v10, "lastLoader":Ljava/lang/ClassLoader;
    add-int/lit8 v11, v7, -0x1

    .local v11, "i":I
    :goto_3
    if-ltz v11, :cond_8

    .line 91
    aget-object v12, v3, v11

    .line 92
    .local v12, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "className":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 98
    invoke-static {v8, v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->toCacheEntry(Ljava/lang/Class;Z)Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;

    move-result-object v14

    .line 99
    .local v14, "entry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    invoke-static {v14}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$000(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    move-result-object v15

    .line 100
    .local v15, "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    invoke-static {v14}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$100(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Ljava/lang/ClassLoader;

    move-result-object v10

    .line 101
    invoke-interface/range {p1 .. p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 102
    invoke-interface/range {p1 .. p1}, Ljava/util/Deque;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v9

    goto :goto_4

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Class;

    :goto_4
    move-object/from16 v8, v16

    .line 103
    .end local v14    # "entry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    goto :goto_5

    .line 104
    .end local v15    # "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    :cond_4
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;

    .line 105
    .local v14, "cacheEntry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    if-eqz v14, :cond_6

    .line 106
    move-object v15, v14

    .line 107
    .local v15, "entry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    invoke-static {v15}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$000(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    move-result-object v16

    .line 108
    .local v16, "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    invoke-static {v15}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$100(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Ljava/lang/ClassLoader;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 109
    invoke-static {v15}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$100(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Ljava/lang/ClassLoader;

    move-result-object v10

    .line 111
    .end local v15    # "entry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    :cond_5
    move-object/from16 v15, v16

    goto :goto_5

    .line 112
    .end local v16    # "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    :cond_6
    invoke-static {v10, v13}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15, v4}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper;->toCacheEntry(Ljava/lang/Class;Z)Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;

    move-result-object v15

    .line 113
    .restart local v15    # "entry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    invoke-static {v15}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$000(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    move-result-object v16

    .line 114
    .restart local v16    # "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v15}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$100(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Ljava/lang/ClassLoader;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 116
    invoke-static {v15}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;->access$100(Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;)Ljava/lang/ClassLoader;

    move-result-object v10

    move-object/from16 v15, v16

    goto :goto_5

    .line 115
    :cond_7
    move-object/from16 v15, v16

    .line 120
    .end local v14    # "cacheEntry":Lorg/apache/logging/log4j/core/impl/ThrowableProxyHelper$CacheEntry;
    .end local v16    # "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .local v15, "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    :goto_5
    new-instance v14, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    invoke-direct {v14, v12, v15}, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;-><init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;)V

    aput-object v14, v6, v11

    .line 90
    .end local v12    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v13    # "className":Ljava/lang/String;
    .end local v15    # "extClassInfo":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 122
    .end local v11    # "i":I
    :cond_8
    return-object v6
.end method

.method static toSuppressedProxies(Ljava/lang/Throwable;Ljava/util/Set;)[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 5
    .param p0, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "thrown",
            "suppressedVisited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)[",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;"
        }
    .end annotation

    .line 127
    .local p1, "suppressedVisited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    .line 128
    .local v0, "suppressed":[Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v1, "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/impl/ThrowableProxy;>;"
    if-nez p1, :cond_1

    .line 133
    new-instance v2, Ljava/util/HashSet;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object p1, v2

    .line 135
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 136
    aget-object v3, v0, v2

    .line 137
    .local v3, "candidate":Ljava/lang/Throwable;
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    new-instance v4, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    invoke-direct {v4, v3, p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;Ljava/util/Set;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v3    # "candidate":Ljava/lang/Throwable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_3
    sget-object v2, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v2

    .line 129
    .end local v1    # "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/impl/ThrowableProxy;>;"
    :cond_4
    :goto_1
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 142
    .end local v0    # "suppressed":[Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/Object;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
