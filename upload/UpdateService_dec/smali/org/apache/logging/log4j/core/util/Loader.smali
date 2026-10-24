.class public final Lorg/apache/logging/log4j/core/util/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final TSTR:Ljava/lang/String; = "Caught Exception while in Loader.getResource. This may be innocuous."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 45
    const-class v0, Lorg/apache/logging/log4j/core/util/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "class1",
            "class2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 61
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 62
    .local v0, "threadContextClassLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 63
    .local v2, "loader1":Ljava/lang/ClassLoader;
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 65
    .local v1, "loader2":Ljava/lang/ClassLoader;
    :goto_1
    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/util/Loader;->isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Loader;->isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    return-object v3

    .line 68
    :cond_3
    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/util/Loader;->isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v2

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    return-object v3
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 3
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "defaultLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resource",
            "defaultLoader"
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 94
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 95
    sget-object v1, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Trying to find [{}] using context class loader {}."

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 97
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 98
    return-object v1

    .line 103
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    const-class v1, Lorg/apache/logging/log4j/core/util/Loader;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 104
    const-string v1, "Trying to find [{}] using {} class loader."

    if-eqz v0, :cond_1

    .line 105
    :try_start_1
    sget-object v2, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, p0, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 107
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_1

    .line 108
    return-object v2

    .line 112
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    if-eqz p1, :cond_2

    .line 113
    sget-object v2, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, p0, p1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .restart local v1    # "url":Ljava/net/URL;
    if-eqz v1, :cond_2

    .line 116
    return-object v1

    .line 124
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "url":Ljava/net/URL;
    :cond_2
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 123
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Trying to find [{}] using ClassLoader.getSystemResource()."

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceAsStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "defaultLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resource",
            "defaultLoader"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 157
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 158
    sget-object v1, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Trying to find [{}] using context class loader {}."

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 160
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 161
    return-object v1

    .line 166
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    const-class v1, Lorg/apache/logging/log4j/core/util/Loader;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 167
    const-string v1, "Trying to find [{}] using {} class loader."

    if-eqz v0, :cond_1

    .line 168
    :try_start_1
    sget-object v2, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, p0, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 170
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 171
    return-object v2

    .line 176
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    if-eqz p1, :cond_2

    .line 177
    sget-object v2, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1, p0, p1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .restart local v1    # "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 180
    return-object v1

    .line 188
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 187
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Trying to find [{}] using ClassLoader.getSystemResource()."

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 56
    invoke-static {}, Lorg/apache/logging/log4j/util/LoaderUtil;->getThreadContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static initializeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "className",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static isChild(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 3
    .param p0, "loader1"    # Ljava/lang/ClassLoader;
    .param p1, "loader2"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loader1",
            "loader2"
        }
    .end annotation

    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 208
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 209
    .local v2, "parent":Ljava/lang/ClassLoader;
    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    .line 210
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    .line 213
    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 215
    .end local v2    # "parent":Ljava/lang/ClassLoader;
    :cond_2
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 353
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 354
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 354
    return v1

    .line 356
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v1
.end method

.method public static isJansiAvailable()Z
    .locals 1

    .line 361
    const-string v0, "org.fusesource.jansi.AnsiRenderer"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 374
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 376
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 377
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 377
    return-object v1

    .line 379
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v1
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "className",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static loadSystemClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/logging/log4j/core/util/Loader;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Couldn\'t use SystemClassLoader. Trying Class.forName({})."

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "className",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 308
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 310
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 311
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/util/LoaderUtil;->newCheckedInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 311
    return-object v1

    .line 313
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v1
.end method

.method public static newCheckedInstanceOfProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "propertyName",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 334
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "className":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 337
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 338
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/util/LoaderUtil;->newCheckedInstanceOfProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 338
    return-object v2

    .line 340
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v2
.end method

.method public static newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 279
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 281
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 282
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->newInstanceOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 282
    return-object v1

    .line 284
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v1
.end method
