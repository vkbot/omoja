.class public final Lorg/apache/logging/log4j/core/layout/SerializedLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractLayout;
.source "SerializedLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/SerializedLayout$PrivateObjectOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/layout/AbstractLayout<",
        "Lorg/apache/logging/log4j/core/LogEvent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "SerializedLayout"
    printObject = true
.end annotation


# static fields
.field private static serializedHeader:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/layout/SerializedLayout;->serializedHeader:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/layout/SerializedLayout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to generate Object stream header"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/logging/log4j/core/layout/AbstractLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[B[B)V

    .line 55
    sget-object v0, Lorg/apache/logging/log4j/core/layout/SerializedLayout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "SerializedLayout is deprecated due to the inherent security weakness in Java Serialization, see https://www.owasp.org/index.php/Deserialization_of_untrusted_data Consider using another layout, e.g. JsonLayout"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static createLayout()Lorg/apache/logging/log4j/core/layout/SerializedLayout;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 94
    new-instance v0, Lorg/apache/logging/log4j/core/layout/SerializedLayout;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/SerializedLayout;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getHeader()[B
    .locals 1

    .line 99
    sget-object v0, Lorg/apache/logging/log4j/core/layout/SerializedLayout;->serializedHeader:[B

    return-object v0
.end method

.method public toByteArray(Lorg/apache/logging/log4j/core/LogEvent;)[B
    .locals 5
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lorg/apache/logging/log4j/core/layout/SerializedLayout$PrivateObjectOutputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/logging/log4j/core/layout/SerializedLayout$PrivateObjectOutputStream;-><init>(Lorg/apache/logging/log4j/core/layout/SerializedLayout;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 67
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/layout/SerializedLayout;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/layout/SerializedLayout;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/layout/SerializedLayout;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/layout/SerializedLayout;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/layout/SerializedLayout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Serialization of LogEvent failed."

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/SerializedLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 84
    return-object p1
.end method
