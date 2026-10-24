.class public Lorg/apache/poi/hpsf/ClassID;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final LENGTH:I = 0x10


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 p0, 0x0

    .line 4
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const-string v1, "[{}-]"

    const-string v2, ""

    .line 8
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 10
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 6
    iget-object p0, p1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 p1, 0x0

    array-length v1, v0

    invoke-static {p0, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 12
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 13
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/ClassID;->read([BI)[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/ClassID;->read([BI)[B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->copy()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/ClassID;-><init>(Lorg/apache/poi/hpsf/ClassID;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hpsf/ClassID;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    check-cast p1, Lorg/apache/poi/hpsf/ClassID;

    iget-object p1, p1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 6

    iget-object p1, p1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v2, 0x3

    aget-byte v3, p0, v2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    if-ne v3, v5, :cond_0

    aget-byte v3, p1, v4

    aget-byte v4, p0, v1

    if-ne v3, v4, :cond_0

    aget-byte v2, p1, v2

    aget-byte v3, p0, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    aget-byte v3, p1, v2

    const/4 v4, 0x5

    aget-byte v5, p0, v4

    if-ne v3, v5, :cond_0

    aget-byte v3, p1, v4

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x6

    aget-byte v3, p1, v2

    const/4 v4, 0x7

    aget-byte v5, p0, v4

    if-ne v3, v5, :cond_0

    aget-byte v3, p1, v4

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0x8

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0x9

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0xa

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0xb

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0xc

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0xd

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0xe

    aget-byte v3, p1, v2

    aget-byte v2, p0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0xf

    aget-byte p1, p1, v2

    aget-byte p0, p0, v2

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/c;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "uuid"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public read([BI)[B
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    aget-byte v1, p1, p2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    add-int/2addr p2, v1

    invoke-static {p1, p2, v0, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object p0
.end method

.method public setBytes([B)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toUUIDString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toUUID()Ljava/util/UUID;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    invoke-static {p0, v2, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method public toUUIDString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 20
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    .line 22
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public write([BI)V
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v0, 0x3

    .line 2
    aget-byte v0, p0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x2

    .line 3
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    .line 4
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    .line 5
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x4

    const/4 v1, 0x5

    .line 6
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x5

    const/4 v1, 0x4

    .line 7
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    const/4 v1, 0x7

    .line 8
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    const/4 v1, 0x6

    .line 9
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x8

    add-int/2addr p2, v0

    .line 10
    invoke-static {p0, v0, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/ArrayStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Destination byte[] must have room for at least 16 bytes, but has a length of only "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v0, "."

    .line 12
    invoke-static {p2, p1, v0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
