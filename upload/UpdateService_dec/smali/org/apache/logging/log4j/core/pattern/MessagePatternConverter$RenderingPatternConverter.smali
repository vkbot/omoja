.class final Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.source "MessagePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderingPatternConverter"
.end annotation


# instance fields
.field private final delegate:Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;

.field private final textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V
    .locals 1
    .param p1, "delegate"    # Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "delegate",
            "textRenderer"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$1;)V

    .line 162
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;->delegate:Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;

    .line 163
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;->textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    .line 164
    return-void
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

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    .local v0, "workingBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;->delegate:Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;

    invoke-virtual {v1, p1, v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 173
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$RenderingPatternConverter;->textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    invoke-interface {v1, v0, p2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 174
    return-void
.end method
