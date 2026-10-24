.class final Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction$ConfigurableLevelGZIPOutputStream;
.super Ljava/util/zip/GZIPOutputStream;
.source "GzCompressAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigurableLevelGZIPOutputStream"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufSize"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "bufSize",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 163
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/GzCompressAction$ConfigurableLevelGZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p3}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 164
    return-void
.end method
