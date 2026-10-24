.class public final Lorg/apache/logging/log4j/util/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static encodeMethod:Ljava/lang/reflect/Method;

.field private static encoder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/util/Base64Util;->encodeMethod:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lorg/apache/logging/log4j/util/Base64Util;->encoder:Ljava/lang/Object;

    .line 34
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.util.Base64"

    invoke-static {v2}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 35
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "java.util.Base64$Encoder"

    invoke-static {v3}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 36
    .local v3, "encoderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getEncoder"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 37
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Base64Util;->encoder:Ljava/lang/Object;

    .line 38
    const-string v0, "encodeToString"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/Base64Util;->encodeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "encoderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "javax.xml.bind.DataTypeConverter"

    invoke-static {v2}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 42
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "printBase64Binary"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/util/Base64Util;->encodeMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    .line 44
    .local v1, "ex2":Ljava/lang/Exception;
    const-string v2, "Unable to create a Base64 Encoder"

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/util/LowLevelLogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "ex2":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 57
    .local v0, "data":[B
    sget-object v1, Lorg/apache/logging/log4j/util/Base64Util;->encodeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 59
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/util/Base64Util;->encoder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/logging/log4j/LoggingException;

    const-string v3, "Unable to encode String"

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 64
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/LoggingException;

    const-string v2, "No Encoder, unable to encode string"

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
