.class final Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.source "MessagePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FormattedMessagePatternConverter"
.end annotation


# instance fields
.field private final formats:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$1;)V

    .line 133
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;->formats:[Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 3
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

    .line 141
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 142
    .local v0, "msg":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v1, :cond_1

    .line 143
    instance-of v1, v0, Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;

    if-eqz v1, :cond_0

    .line 144
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;->formats:[Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;->formatTo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 146
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    invoke-interface {v1, p2}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 148
    :cond_1
    if-eqz v0, :cond_3

    .line 149
    instance-of v1, v0, Lorg/apache/logging/log4j/message/MultiformatMessage;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/MultiformatMessage;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/MessagePatternConverter$FormattedMessagePatternConverter;->formats:[Ljava/lang/String;

    .line 150
    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/message/MultiformatMessage;->getFormattedMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    .line 149
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_3
    :goto_1
    return-void
.end method
