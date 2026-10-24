.class public Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;
.super Ljava/lang/Object;
.source "Base64Converter.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static decoder:Ljava/lang/Object;

.field private static method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->method:Ljava/lang/reflect/Method;

    .line 34
    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->decoder:Ljava/lang/Object;

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "java.util.Base64"

    invoke-static {v3}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 40
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getDecoder"

    move-object v5, v0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 41
    .local v4, "getDecoder":Ljava/lang/reflect/Method;
    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->decoder:Ljava/lang/Object;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 43
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "decode"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getDecoder":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 48
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 51
    :try_start_1
    const-string v0, "javax.xml.bind.DatatypeConverter"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "parseBase64Binary"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->method:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1

    .line 53
    :catch_2
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No Base64 Converter is available"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 59
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBase64Binary(Ljava/lang/String;)[B
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No base64 converter"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->decoder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error decoding string - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 71
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method
