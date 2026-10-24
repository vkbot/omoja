.class Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/GenericRecordJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppendableWriter"
.end annotation


# instance fields
.field private final appender:Ljava/lang/Appendable;

.field private holdBack:Ljava/lang/String;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->appender:Ljava/lang/Appendable;

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->writer:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->appender:Ljava/lang/Appendable;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->flush()V

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->appender:Ljava/lang/Appendable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->writer:Ljava/io/Writer;

    :goto_0
    instance-of p0, v0, Ljava/io/Closeable;

    if-eqz p0, :cond_1

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->appender:Ljava/lang/Appendable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->writer:Ljava/io/Writer;

    :goto_0
    instance-of p0, v0, Ljava/io/Flushable;

    if-eqz p0, :cond_1

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    :cond_1
    return-void
.end method

.method public setHoldBack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->holdBack:Ljava/lang/String;

    return-void
.end method

.method public write([CII)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->holdBack:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->appender:Ljava/lang/Appendable;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->holdBack:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->appender:Ljava/lang/Appendable;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordJsonWriter$AppendableWriter;->writer:Ljava/io/Writer;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_4
    :goto_1
    return-void
.end method
