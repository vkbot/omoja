.class public final Lorg/apache/logging/log4j/core/pattern/ClassNamePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;
.source "ClassNamePatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "ClassNamePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "C",
        "class"
    }
.end annotation


# static fields
.field private static final NA:Ljava/lang/String; = "?"


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 39
    const-string v0, "Class Name"

    const-string v1, "class name"

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ClassNamePatternConverter;
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

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/ClassNamePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/ClassNamePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "toAppendTo"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 61
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_0

    .line 62
    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/logging/log4j/core/pattern/ClassNamePatternConverter;->abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 66
    :goto_0
    return-void
.end method

.method public requiresLocation()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method
