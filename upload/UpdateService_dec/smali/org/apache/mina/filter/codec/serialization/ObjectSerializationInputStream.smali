.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;
.super Ljava/io/InputStream;
.source "ObjectSerializationInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final in:Ljava/io/DataInputStream;

.field private maxObjectSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    .line 60
    if-eqz p1, :cond_2

    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 67
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->classLoader:Ljava/lang/ClassLoader;

    .line 70
    :goto_0
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/io/DataInputStream;

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    .line 75
    :goto_1
    return-void

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMaxObjectSize()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 180
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 188
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 117
    .local v0, "objectSize":I
    if-lez v0, :cond_1

    .line 120
    iget v1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    if-gt v0, v1, :cond_0

    .line 125
    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 126
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 127
    iget-object v3, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 128
    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 129
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 131
    iget-object v2, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 121
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectSize too big: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (expected: <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid objectSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 3
    .param p1, "maxObjectSize"    # I

    .line 96
    if-lez p1, :cond_0

    .line 100
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    .line 101
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxObjectSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
