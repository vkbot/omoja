.class final Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;
.source "LevelPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LevelMapLevelPatternConverter"
.end annotation


# instance fields
.field private final levelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/Level;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "levelMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/Level;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "levelMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/Level;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V

    .line 155
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;->levelMap:Ljava/util/Map;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
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

    .line 163
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;->levelMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    return-void
.end method
