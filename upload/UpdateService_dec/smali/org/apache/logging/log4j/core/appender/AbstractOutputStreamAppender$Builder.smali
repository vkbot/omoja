.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "AbstractOutputStreamAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private bufferSize:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private bufferedIo:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private immediateFlush:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferedIo:Z

    .line 46
    sget v1, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    iput v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferSize:I

    .line 49
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->immediateFlush:Z

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 53
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferSize:I

    return v0
.end method

.method public isBufferedIo()Z
    .locals 1

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferedIo:Z

    return v0
.end method

.method public isImmediateFlush()Z
    .locals 1

    .line 61
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->immediateFlush:Z

    return v0
.end method

.method public setBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferSize:I

    .line 76
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    return-object v0
.end method

.method public setBufferedIo(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    .locals 1
    .param p1, "bufferedIo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferedIo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferedIo:Z

    .line 71
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    return-object v0
.end method

.method public setImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    .locals 1
    .param p1, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "immediateFlush"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->immediateFlush:Z

    .line 66
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    return-object v0
.end method

.method public withBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferSize:I

    .line 94
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    return-object v0
.end method

.method public withBufferedIo(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    .locals 1
    .param p1, "bufferedIo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferedIo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->bufferedIo:Z

    .line 88
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    return-object v0
.end method

.method public withImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
    .locals 1
    .param p1, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "immediateFlush"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->immediateFlush:Z

    .line 82
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    return-object v0
.end method
