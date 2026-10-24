.class public Lorg/apache/poi/hpsf/PropertySet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BYTE_ORDER_ASSERTION:I = 0xfffe

.field static final FORMAT_ASSERTION:I = 0x0

.field static final OFFSET_HEADER:I = 0x1c

.field public static final OS_MACINTOSH:I = 0x1

.field public static final OS_WIN16:I = 0x0

.field public static final OS_WIN32:I = 0x2


# instance fields
.field private byteOrder:I

.field private classID:Lorg/apache/poi/hpsf/ClassID;

.field private format:I

.field private osVersion:I

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const v0, 0xfffe

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    const v0, 0x20a04

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 3
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 4
    new-instance v0, Lorg/apache/poi/hpsf/Section;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setByteOrder(I)V

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setFormat(I)V

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setOSVersion(I)V

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setClassID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 24
    new-instance v2, Lorg/apache/poi/hpsf/Section;

    invoke-direct {v2, v0}, Lorg/apache/poi/hpsf/Section;-><init>(Lorg/apache/poi/hpsf/Section;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 13
    invoke-static {p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    return-void

    .line 15
    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p0}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p0
.end method

.method public static getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 6
    check-cast p0, [B

    .line 7
    array-length v0, p0

    const-string v1, ""

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v0, 0x4e4

    .line 8
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 9
    :cond_2
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 11
    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    .line 12
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init([BII)V
    .locals 3

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    add-int/lit8 p3, p2, 0x2

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    add-int/lit8 p3, p2, 0x4

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int p3, v0

    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    add-int/lit8 p3, p2, 0x8

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p1, p3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    add-int/lit8 p3, p2, 0x18

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x1c

    if-ltz p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/Section;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/hpsf/Section;-><init>([BI)V

    add-int/lit8 p2, p2, 0x14

    iget-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    const-string p1, "Section count "

    const-string p2, " is negative."

    invoke-static {p1, p3, p2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPropertySetStream(Ljava/io/InputStream;)Z
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/EmptyFileException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static isPropertySetStream([BII)Z
    .locals 3

    .line 3
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    const/4 p0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result p1

    const p2, 0xfffe

    if-eq p1, p2, :cond_0

    return p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result p1

    if-eqz p1, :cond_1

    return p0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    const-wide/16 p1, 0x10

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-eqz p1, :cond_2

    return p0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_3

    const/4 p0, 0x1

    :catch_0
    :cond_3
    return p0
.end method

.method public static varargs matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static putClassId(Lorg/apache/commons/io/output/j;Lorg/apache/poi/hpsf/ClassID;)V
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/io/output/j;->write([BII)V

    return-void
.end method

.method private toBytes()[B
    .locals 9

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Lorg/apache/commons/io/output/j;Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v0, v6}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Lorg/apache/commons/io/output/j;Lorg/apache/poi/hpsf/ClassID;)V

    add-int/lit8 v6, v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v7

    aput v7, v5, v4

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/NoFormatIDException;

    invoke-direct {p0}, Lorg/apache/poi/hpsf/NoFormatIDException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v3, v4

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hpsf/Section;

    add-int/lit8 v7, v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v8

    aput v8, v3, v6

    invoke-virtual {v5, v0}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    move v3, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v7, v2, v5

    aget v8, v7, v4

    aget v7, v7, v6

    invoke-static {p0, v8, v7}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
.end method


# virtual methods
.method public addSection(Lorg/apache/poi/hpsf/Section;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSections()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    instance-of v0, p1, Lorg/apache/poi/hpsf/PropertySet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/PropertySet;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v10

    if-ne v0, v2, :cond_2

    invoke-virtual {v3, v4}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    if-eq v9, v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getByteOrder()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return p0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/Section;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/MissingSectionException;

    const-string v0, "Property set does not contain any sections."

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/MissingSectionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return p0
.end method

.method public getOSVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return p0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyBooleanValue(I)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/Section;->getPropertyBooleanValue(I)Z

    move-result p0

    return p0
.end method

.method public getPropertyIntValue(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/Section;->getPropertyIntValue(J)I

    move-result p0

    return p0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSectionCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FIXME: Not yet implemented."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->FORMAT_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSummaryInformation()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    const/4 v0, 0x1

    new-array v2, v0, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v3, Lorg/apache/poi/hpsf/SummaryInformation;->FORMAT_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public remove1stProperty(J)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    return-void
.end method

.method public set1stProperty(JI)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    return-void
.end method

.method public set1stProperty(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public set1stProperty(JZ)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    return-void
.end method

.method public set1stProperty(J[B)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setByteOrder(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return-void
.end method

.method public setClassID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return-void
.end method

.method public setOSVersion(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 1

    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hpsf/PropertySet;->toBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[byteOrder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", classID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", OSVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sectionCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sections: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "]]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wasNull()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->wasNull()Z

    move-result p0

    return p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hpsf/PropertySet;->toBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCaseInsensitive(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->toInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
