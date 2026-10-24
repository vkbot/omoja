.class public Lorg/apache/logging/log4j/util/ProcessIdUtil;
.super Ljava/lang/Object;
.source "ProcessIdUtil.java"


# static fields
.field public static final DEFAULT_PROCESSID:Ljava/lang/String; = "-"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessId()Ljava/lang/String;
    .locals 8

    .line 33
    :try_start_0
    const-string v0, "java.lang.management.ManagementFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    .local v0, "managementFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getRuntimeMXBean"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    .local v1, "getRuntimeMXBean":Ljava/lang/reflect/Method;
    const-string v3, "java.lang.management.RuntimeMXBean"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 36
    .local v3, "runtimeMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getName"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 38
    .local v4, "getName":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 39
    .local v5, "runtimeMXBean":Ljava/lang/Object;
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    .local v6, "name":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 42
    .end local v0    # "managementFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getRuntimeMXBean":Ljava/lang/reflect/Method;
    .end local v3    # "runtimeMXBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    .end local v5    # "runtimeMXBean":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 45
    :catch_1
    move-exception v1

    .line 49
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, "-"

    return-object v0
.end method
