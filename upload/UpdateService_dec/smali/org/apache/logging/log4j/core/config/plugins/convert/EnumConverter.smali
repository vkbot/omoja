.class public Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;
.super Ljava/lang/Object;
.source "EnumConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter<TE;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;->clazz:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter<TE;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;->clazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    .local p0, "this":Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/convert/EnumConverter;->convert(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
