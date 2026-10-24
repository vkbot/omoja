.class final Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.source "MessagePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleMessagePatternConverter"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$1;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
    .locals 1

    .line 111
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$SimpleMessagePatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;

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

    .line 119
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v1, :cond_0

    .line 121
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    invoke-interface {v1, p2}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    :goto_0
    return-void
.end method
