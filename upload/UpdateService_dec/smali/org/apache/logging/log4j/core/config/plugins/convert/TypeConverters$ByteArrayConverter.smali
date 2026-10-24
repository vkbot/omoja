.class public Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$ByteArrayConverter;
.super Ljava/lang/Object;
.source "TypeConverters.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArrayConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
        "[B>;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "TypeConverter"
    name = "ByteArray"
.end annotation


# static fields
.field private static final PREFIX_0x:Ljava/lang/String; = "0x"

.field private static final PREFIX_BASE64:Ljava/lang/String; = "Base64:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$ByteArrayConverter;->convert(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/String;)[B
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    const-string v0, "Base64:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "lexicalXSDBase64Binary":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/plugins/convert/Base64Converter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    .line 117
    .local v0, "bytes":[B
    goto :goto_1

    .end local v0    # "bytes":[B
    :cond_1
    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "lexicalXSDHexBinary":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/plugins/convert/HexConverter;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    .local v0, "bytes":[B
    goto :goto_1

    .line 121
    .end local v0    # "bytes":[B
    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_1

    .line 113
    .end local v0    # "bytes":[B
    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_BYTE_ARRAY:[B

    .line 123
    .restart local v0    # "bytes":[B
    :goto_1
    return-object v0
.end method
