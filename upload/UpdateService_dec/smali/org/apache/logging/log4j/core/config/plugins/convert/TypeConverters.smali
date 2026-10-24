.class public final Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;
.super Ljava/lang/Object;
.source "TypeConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$UuidConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$UrlConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$UriConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$StringConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$ShortConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$SecurityProviderConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$PatternConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$PathConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$LongConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$LevelConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$IntegerConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$InetAddressConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$FloatConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$FileConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$DurationConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$DoubleConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$CronExpressionConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$ClassConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$CharsetConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$CharArrayConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$CharacterConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$ByteConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$ByteArrayConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$BooleanConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$BigIntegerConverter;,
        Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters$BigDecimalConverter;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "TypeConverter"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 444
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "s",
            "clazz",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 413
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->getInstance()Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverterRegistry;->findCompatibleConverter(Ljava/lang/reflect/Type;)Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;

    move-result-object v0

    .line 414
    .local v0, "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<TT;>;"
    if-nez p0, :cond_0

    .line 417
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->parseDefaultValue(Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 420
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 421
    :catch_0
    move-exception v7

    .line 422
    .local v7, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Error while converting string [{}] to type [{}]. Using default value [{}]."

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->parseDefaultValue(Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static parseDefaultValue(Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "converter",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 430
    .local p0, "converter":Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;, "Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 431
    return-object v0

    .line 433
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 434
    return-object p1

    .line 437
    :cond_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Can\'t parse default value [{}] for type [{}]."

    invoke-interface {v2, v4, p1, v3, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 440
    return-object v0
.end method
