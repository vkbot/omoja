.class public Lorg/apache/logging/log4j/core/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EOF:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/util/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 63
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 64
    const/4 v2, -0x1

    return v2

    .line 66
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/16 v0, 0x1000

    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .locals 5
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "buffer"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "output",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-wide/16 v0, 0x0

    .line 106
    .local v0, "count":J
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-eq v2, v3, :cond_0

    .line 107
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v4}, Ljava/io/Writer;->write([CII)V

    .line 108
    int-to-long v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    .line 110
    :cond_0
    return-wide v0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;-><init>()V

    .line 126
    .local v0, "sw":Lorg/apache/logging/log4j/core/util/StringBuilderWriter;
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 127
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
