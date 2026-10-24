.class public abstract Lorg/apache/poi/hssf/record/StandardRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/StandardRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->copy()Lorg/apache/poi/hssf/record/StandardRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->copy()Lorg/apache/poi/hssf/record/StandardRecord;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hssf/record/StandardRecord;
.end method

.method public abstract getDataSize()I
.end method

.method public final getRecordSize()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->getDataSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public final serialize(I[B)I
    .locals 4

    const-string v0, "Error in serialization of ("

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->getDataSize()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    .line 2
    :try_start_0
    new-instance v3, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v3, p2, p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p2

    invoke-virtual {v3, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 4
    invoke-virtual {v3, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 5
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/StandardRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 6
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr p2, p1

    if-ne p2, v2, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): Incorrect number of bytes written - expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 12
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method
