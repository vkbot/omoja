.class final Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$SimpleLevelPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;
.source "LevelPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleLevelPatternConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;

    .line 139
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$SimpleLevelPatternConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "output"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    return-void
.end method
