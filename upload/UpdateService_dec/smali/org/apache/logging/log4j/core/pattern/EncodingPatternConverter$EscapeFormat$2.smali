.class final enum Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$2;
.super Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
.source "EncodingPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$1;)V

    return-void
.end method


# virtual methods
.method escape(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation

    .line 165
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    .line 166
    return-void
.end method
