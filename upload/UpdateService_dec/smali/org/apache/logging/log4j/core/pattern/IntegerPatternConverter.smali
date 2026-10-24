.class public final Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;
.source "IntegerPatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "FileConverter"
    name = "IntegerPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "i",
        "index"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    const-string v0, "Integer"

    const-string v1, "integer"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "obj",
            "toAppendTo"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method public varargs format(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "objects"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 57
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 58
    aget-object v1, p2, v0

    invoke-virtual {p0, v1, p1}, Lorg/apache/logging/log4j/core/pattern/IntegerPatternConverter;->format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    aget-object v1, p2, v0

    instance-of v1, v1, Lorg/apache/logging/log4j/core/pattern/NotANumber;

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "\u0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
