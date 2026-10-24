.class public Lorg/apache/logging/log4j/core/util/CloseShieldWriter;
.super Ljava/io/Writer;
.source "CloseShieldWriter.java"


# instance fields
.field private final delegate:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "delegate"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/CloseShieldWriter;->delegate:Ljava/io/Writer;

    .line 28
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CloseShieldWriter;->delegate:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 39
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CloseShieldWriter;->delegate:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 44
    return-void
.end method
