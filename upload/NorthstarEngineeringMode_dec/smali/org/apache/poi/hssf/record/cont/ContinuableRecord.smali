.class public abstract Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cont/ContinuableRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/Record;-><init>(Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method


# virtual methods
.method public final getRecordSize()I
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->createForCountingOnly()Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->terminate()V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result p0

    return p0
.end method

.method public final serialize(I[B)I
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    new-instance p1, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p2

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;-><init>(Lorg/apache/poi/util/LittleEndianOutput;I)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->terminate()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 8
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 9
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
.end method
