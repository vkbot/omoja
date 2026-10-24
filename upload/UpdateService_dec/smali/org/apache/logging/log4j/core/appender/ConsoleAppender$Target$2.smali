.class final enum Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target$2;
.super Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
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

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/ConsoleAppender$1;)V

    return-void
.end method


# virtual methods
.method public getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 2

    .line 81
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "sun.stderr.encoding"

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target$2;->getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method
