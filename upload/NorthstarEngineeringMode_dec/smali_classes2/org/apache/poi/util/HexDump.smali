.class public final Lorg/apache/poi/util/HexDump;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final EOL:Ljava/lang/String;

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/poi/util/HexDump;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v1, p0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/4 p0, 0x2

    const-string v3, "0x"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump([BJI)Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    .line 7
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump([BJII)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_9

    .line 8
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const v0, 0x7fffffff

    if-eq p4, v0, :cond_2

    if-ltz p4, :cond_2

    add-int/2addr p4, p3

    if-gez p4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    array-length v0, p0

    .line 10
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    array-length p4, p0

    :goto_1
    if-ltz p3, :cond_8

    .line 12
    array-length v0, p0

    if-ge p3, v0, :cond_8

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_2
    if-ge p3, p4, :cond_7

    sub-int v1, p4, p3

    const/16 v2, 0x10

    if-le v1, v2, :cond_3

    move v1, v2

    :cond_3
    const/16 v3, 0x8

    const-string v4, ""

    .line 14
    invoke-static {v0, p1, p2, v3, v4}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_5

    if-ge v4, v1, :cond_4

    add-int v5, v4, p3

    .line 15
    aget-byte v5, p0, v5

    int-to-long v5, v5

    const/4 v7, 0x2

    const-string v8, " "

    invoke-static {v0, v5, v6, v7, v8}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v5, "   "

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/16 v2, 0x20

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    if-ge v3, v1, :cond_6

    add-int v2, v3, p3

    .line 18
    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toAscii(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    sget-object v2, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v1

    add-long/2addr p1, v1

    add-int/lit8 p3, p3, 0x10

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p1, "illegal index: "

    const-string p2, " into array of length "

    .line 21
    invoke-static {p1, p3, p2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_9
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No Data"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized dump([BJLjava/io/OutputStream;I)V
    .locals 7

    const-class v0, Lorg/apache/poi/util/HexDump;

    monitor-enter v0

    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 5
    :try_start_0
    invoke-static/range {v1 .. v6}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static dump([BJLjava/io/OutputStream;II)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lorg/apache/poi/util/HexDump;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2
    invoke-static {p0, p1, p2, p4, p5}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot write to nullstream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHex(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 p0, 0x8

    const-string v3, "0x"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longToHex(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x10

    const-string v2, "0x"

    invoke-static {v0, p0, p1, v1, v2}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortToHex(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v1, p0

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    const/4 p0, 0x4

    const-string v3, "0x"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAscii(I)C
    .locals 3

    const/16 v0, 0xff

    and-int/2addr p0, v0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xdd

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    return p0
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    const-string p0, ""

    .line 12
    invoke-static {v0, v2, v3, v1, p0}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 6

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-string p0, ""

    .line 15
    invoke-static {v0, v2, v3, v1, p0}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(J)Ljava/lang/String;
    .locals 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, ""

    .line 18
    invoke-static {v0, p0, p1, v1, v2}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(S)Ljava/lang/String;
    .locals 4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const v2, 0xffff

    and-int/2addr p0, v2

    int-to-long v2, p0

    const-string p0, ""

    .line 9
    invoke-static {v0, v2, v3, v1, p0}, Lorg/apache/poi/util/HexDump;->writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeHex(Ljava/lang/StringBuilder;JILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p4, p3, [C

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_1

    const-wide/16 v0, 0xf

    and-long/2addr v0, p1

    long-to-int v0, v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x37

    :goto_1
    int-to-char v0, v0

    aput-char v0, p4, p3

    const/4 v0, 0x4

    ushr-long/2addr p1, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method
