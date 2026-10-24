.class public Lorg/apache/commons/compress/archivers/zip/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/a1$c;,
        Lorg/apache/commons/compress/archivers/zip/a1$b;,
        Lorg/apache/commons/compress/archivers/zip/a1$d;,
        Lorg/apache/commons/compress/archivers/zip/a1$f;,
        Lorg/apache/commons/compress/archivers/zip/a1$e;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_DISK_OFFSET:I = 0x6

.field private static final CFD_LENGTH_OFFSET:I = 0xc

.field private static final CFD_LOCATOR_RELATIVE_OFFSET:I = 0x8

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final DEFAULT_CHARSET_NAME:Ljava/lang/String;

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final ONE_ZERO_BYTE:[B

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final READ:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljava/nio/file/StandardOpenOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_DISK_OFFSET:I = 0x14

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30

.field private static final ZIP64_EOCD_CFD_LOCATOR_RELATIVE_OFFSET:I = 0x18

.field private static final offsetComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final archive:Ljava/nio/channels/SeekableByteChannel;

.field private centralDirectoryStartDiskNumber:J

.field private centralDirectoryStartOffset:J

.field private centralDirectoryStartRelativeOffset:J

.field private final cfhBbuf:Ljava/nio/ByteBuffer;

.field private final cfhBuf:[B

.field private volatile closed:Z

.field private final dwordBbuf:Ljava/nio/ByteBuffer;

.field private final dwordBuf:[B

.field private final encoding:Ljava/nio/charset/Charset;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation
.end field

.field private firstLocalFileHeaderOffset:J

.field private final isSplitZipArchive:Z

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shortBbuf:Ljava/nio/ByteBuffer;

.field private final shortBuf:[B

.field private final useUnicodeExtraFields:Z

.field private final wordBbuf:Ljava/nio/ByteBuffer;

.field private final wordBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->READ:Ljava/util/EnumSet;

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->ONE_ZERO_BYTE:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->CFH_SIG:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lh4/d;->a(II[B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/a1;->CFH_SIG:J

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/z0;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/z0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->offsetComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/a1;->newReadByteChannel(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "a SeekableByteChannel"

    .line 10
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "a SeekableByteChannel"

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 28
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 29
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8

    .line 30
    sget v0, Li4/a;->a:I

    .line 31
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez p3, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 32
    :cond_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    .line 33
    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZ)V
    .locals 6

    const-string v0, "Error reading Zip content from "

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->entries:Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1fd

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->nameMap:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->closed:Z

    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBuf:[B

    const/4 v3, 0x4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    const/16 v4, 0x2a

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBuf:[B

    .line 15
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    .line 17
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBbuf:Ljava/nio/ByteBuffer;

    .line 18
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBbuf:Ljava/nio/ByteBuffer;

    .line 19
    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/f1;

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->isSplitZipArchive:Z

    .line 20
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/a1$c;->h1:Ljava/nio/charset/Charset;

    sget v3, Li4/a;->a:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->encoding:Ljava/nio/charset/Charset;

    .line 21
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/u0;->a(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/o;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/a1;->useUnicodeExtraFields:Z

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 22
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object p1

    if-nez p6, :cond_1

    .line 23
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->resolveLocalFileHeaderData(Ljava/util/Map;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->fillNameMap()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->closed:Z

    return-void

    .line 25
    :goto_2
    :try_start_1
    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->closed:Z

    if-eqz p5, :cond_2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 26
    invoke-static {p0}, Li4/c;->a(Ljava/io/Closeable;)V

    .line 27
    :cond_2
    throw p1
.end method

.method public synthetic constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZLorg/apache/commons/compress/archivers/zip/a1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/file/Path;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/a1;->newReadByteChannel(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/zip/a1;Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->lambda$fillNameMap$2(Lorg/apache/commons/compress/archivers/zip/o0;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/a1;->openZipChannel(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;I)Ljava/nio/file/Path;
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/apache/commons/compress/archivers/zip/a1;->lambda$openZipChannel$0(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;I)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lorg/apache/commons/compress/archivers/zip/a1$c;
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a1$c;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/a1$c;-><init>()V

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->lambda$fillNameMap$1(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/a1;)V
    .locals 0

    invoke-static {p0}, Li4/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private createBoundedInputStream(JJ)Lh4/b;
    .locals 7

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    add-long v1, p1, p3

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/a1$b;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    move-object v5, v0

    check-cast v5, Ljava/nio/channels/FileChannel;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/a1$b;-><init>(JJLjava/nio/channels/FileChannel;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lh4/c;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lh4/c;-><init>(JJLjava/nio/channels/SeekableByteChannel;)V

    :goto_0
    return-object v6

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Corrupted archive, stream boundaries are out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillNameMap()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->entries:Ljava/util/List;

    new-instance v1, Lx1/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lx1/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getDataOffset(Lorg/apache/commons/compress/archivers/zip/o0;)J
    .locals 4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDataOffset()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->setDataOffset(Lorg/apache/commons/compress/archivers/zip/o0;)[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDataOffset()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method private static synthetic lambda$fillNameMap$1(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$fillNameMap$2(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->nameMap:Ljava/util/Map;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$openZipChannel$0(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;I)Ljava/nio/file/Path;
    .locals 4

    int-to-long v0, p5

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s.z%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "%s.Z%02d"

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    new-array p1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    :cond_2
    return-object p0
.end method

.method private static newReadByteChannel(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a1;->READ:Ljava/util/EnumSet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method private static openZipChannel(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 17

    move-wide/from16 v0, p1

    const-string v2, "Too many disks for zip archive, max="

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/OpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x2

    :try_start_0
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/a1;->positionAtEndOfCentralDirectoryRecord(Ljava/nio/channels/SeekableByteChannel;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x10

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v4, v3}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v7, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    :goto_0
    move-wide v8, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v4, v7}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    add-int/2addr v7, v3

    int-to-long v7, v7

    goto :goto_0

    :goto_1
    const-wide/32 v10, 0x7fffffff

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    cmp-long v3, v8, v15

    if-gtz v3, :cond_2

    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-gtz v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    invoke-interface/range {p0 .. p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li4/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    long-to-int v0, v8

    invoke-static {v6, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/w0;

    move-object v7, v1

    move-object/from16 v10, p0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/compress/archivers/zip/w0;-><init>(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/f1;->b(Ljava/util/List;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " actual="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v4}, Li4/c;->a(Ljava/io/Closeable;)V

    new-instance v1, Lw0/b;

    invoke-direct {v1, v14}, Lw0/b;-><init>(I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    throw v0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            "Lorg/apache/commons/compress/archivers/zip/a1$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->positionAtCentralDirectory()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartOffset:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v4

    sget-wide v6, Lorg/apache/commons/compress/archivers/zip/a1;->CFH_SIG:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->startsWithLocalFileHeader()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Central directory is empty, can\'t expand corrupt archive."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-wide v6, Lorg/apache/commons/compress/archivers/zip/a1;->CFH_SIG:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->readCentralDirectoryEntry(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v4}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    invoke-static {v2, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/a1;->positionAtEndOfCentralDirectoryRecord(Ljava/nio/channels/SeekableByteChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->positionAtCentralDirectory32()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->positionAtCentralDirectory64()V

    :goto_0
    return-void
.end method

.method private positionAtCentralDirectory32()V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->isSplitZipArchive:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBuf:[B

    const/4 v1, 0x2

    invoke-static {v3, v1, v0}, Lh4/d;->a(II[B)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    invoke-static {v3, v4, v0}, Lh4/d;->a(II[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartRelativeOffset:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/f1;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    invoke-virtual {v2, v3, v4, v0, v1}, Lh4/h;->a(JJ)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v5}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    invoke-static {v3, v4, v2}, Lh4/d;->a(II[B)J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v7}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    invoke-static {v3, v4, v2}, Lh4/d;->a(II[B)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartRelativeOffset:J

    sub-long/2addr v0, v5

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->firstLocalFileHeaderOffset:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartRelativeOffset:J

    add-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :goto_0
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 7

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->isSplitZipArchive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    invoke-static {v2, v0, v1}, Lh4/d;->a(II[B)J

    move-result-wide v3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v5}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBuf:[B

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/f1;

    invoke-virtual {v1, v3, v4, v5, v6}, Lh4/h;->a(JJ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBuf:[B

    invoke-static {v3, v2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/r0;->ZIP64_EOCD_SIG:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->isSplitZipArchive:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    invoke-static {v2, v0, v1}, Lh4/d;->a(II[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBuf:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartRelativeOffset:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/f1;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    invoke-virtual {v2, v3, v4, v0, v1}, Lh4/h;->a(JJ)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->dwordBuf:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/s0;->c([BI)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartRelativeOffset:J

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "Archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static positionAtEndOfCentralDirectoryRecord(Ljava/nio/channels/SeekableByteChannel;)Z
    .locals 7

    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/r0;->EOCD_SIG:[B

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/a1;->tryToLocateSignature(Ljava/nio/channels/SeekableByteChannel;JJ[B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-interface {p0, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {p0, v4}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/r0;->ZIP64_EOCD_LOC_SIG:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    const-wide/16 v3, 0x4

    sub-long/2addr v0, v3

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "Archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            "Lorg/apache/commons/compress/archivers/zip/a1$e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/a1$d;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/a1$d;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setVersionMadeBy(I)V

    const/16 v2, 0x8

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setPlatform(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    invoke-static {v3, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setVersionRequired(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lorg/apache/commons/compress/archivers/zip/l;->b([BI)Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v1

    iget-boolean v5, v1, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    if-eqz v5, :cond_0

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/a1;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    :goto_0
    if-eqz v5, :cond_1

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/o0$d;->r:Lorg/apache/commons/compress/archivers/zip/o0$d;

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/zip/o0;->setNameSource(Lorg/apache/commons/compress/archivers/zip/o0$d;)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/l;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    invoke-static {v4, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setRawFlag(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/4 v7, 0x6

    invoke-static {v7, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setMethod(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    invoke-static {v2, v4, v1}, Lh4/d;->a(II[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/g1;->d(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v2, 0xc

    invoke-static {v2, v4, v1}, Lh4/d;->a(II[B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v2, 0x10

    invoke-static {v2, v4, v1}, Lh4/d;->a(II[B)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-ltz v9, :cond_a

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v2, 0x14

    invoke-static {v2, v4, v1}, Lh4/d;->a(II[B)J

    move-result-wide v1

    cmp-long v7, v1, v7

    if-ltz v7, :cond_9

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v2, 0x18

    invoke-static {v2, v3, v1}, Lh4/d;->a(II[B)J

    move-result-wide v1

    long-to-int v1, v1

    if-ltz v1, :cond_8

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v7, 0x1a

    invoke-static {v7, v3, v2}, Lh4/d;->a(II[B)J

    move-result-wide v7

    long-to-int v2, v7

    if-ltz v2, :cond_7

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v8, 0x1c

    invoke-static {v8, v3, v7}, Lh4/d;->a(II[B)J

    move-result-wide v7

    long-to-int v7, v7

    if-ltz v7, :cond_6

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v9, 0x1e

    invoke-static {v9, v3, v8}, Lh4/d;->a(II[B)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/zip/o0;->setDiskNumberStart(J)V

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v9, 0x20

    invoke-static {v9, v3, v8}, Lh4/d;->a(II[B)J

    move-result-wide v8

    long-to-int v3, v8

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setInternalAttributes(I)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v8, 0x22

    invoke-static {v8, v4, v3}, Lh4/d;->a(II[B)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/zip/o0;->setExternalAttributes(J)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v3, v1}, Lh4/e;->c(Ljava/nio/channels/SeekableByteChannel;I)[B

    move-result-object v3

    array-length v8, v3

    if-lt v8, v1, :cond_5

    check-cast v6, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {v6, v3}, Lorg/apache/commons/compress/archivers/zip/o;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setName(Ljava/lang/String;[B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->cfhBuf:[B

    const/16 v8, 0x26

    invoke-static {v8, v4, v1}, Lh4/d;->a(II[B)J

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/a1;->firstLocalFileHeaderOffset:J

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/archivers/zip/o0;->setLocalHeaderOffset(J)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v1, v2}, Lh4/e;->c(Ljava/nio/channels/SeekableByteChannel;I)[B

    move-result-object v1

    array-length v4, v1

    if-lt v4, v2, :cond_4

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setCentralDirectoryExtra([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->sanityCheckLFHOffset(Lorg/apache/commons/compress/archivers/zip/o0;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v1, v7}, Lh4/e;->c(Ljava/nio/channels/SeekableByteChannel;I)[B

    move-result-object v1

    array-length v2, v1

    if-lt v2, v7, :cond_3

    invoke-virtual {v6, v1}, Lorg/apache/commons/compress/archivers/zip/o;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    if-nez v5, :cond_2

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->useUnicodeExtraFields:Z

    if-eqz p0, :cond_2

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/a1$e;

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/compress/archivers/zip/a1$e;-><init>([B[B)V

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setStreamContiguous(Z)V

    return-void

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid extra data in entry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative commentLen"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative extraLen"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative fileNameLen"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative compressed size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            "Lorg/apache/commons/compress/archivers/zip/a1$e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/o0;

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/a1$d;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/a1;->setDataOffset(Lorg/apache/commons/compress/archivers/zip/o0;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/a1;->skipBytes(I)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v3, v2}, Lh4/e;->c(Ljava/nio/channels/SeekableByteChannel;I)[B

    move-result-object v3

    array-length v4, v3

    if-lt v4, v2, :cond_1

    :try_start_0
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/a1$e;

    iget-object v3, v2, Lorg/apache/commons/compress/archivers/zip/a1$e;->a:[B

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/a1$e;->b:[B

    invoke-static {v1, v3, v2}, Lorg/apache/commons/compress/archivers/zip/g1;->h(Lorg/apache/commons/compress/archivers/zip/o0;[B[B)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/zip/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid extra data in entry "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method private sanityCheckLFHOffset(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalHeaderOffset()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->isSplitZipArchive:Z

    const-string v1, " starts after central directory"

    const-string v2, "local file header for "

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartDiskNumber:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalHeaderOffset()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartRelativeOffset:J

    cmp-long p0, v3, v5

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starts on a later disk than central directory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalHeaderOffset()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartOffset:J

    cmp-long p0, v3, v5

    if-gtz p0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative local file header offset"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative disk number"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setDataOffset(Lorg/apache/commons/compress/archivers/zip/o0;)[I
    .locals 7

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalHeaderOffset()J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->isSplitZipArchive:Z

    const-wide/16 v3, 0x1a

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/f1;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v5

    add-long/2addr v0, v3

    invoke-virtual {v2, v5, v6, v0, v1}, Lh4/h;->a(JJ)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    add-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBuf:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBuf:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v3, v4, v2}, Lh4/d;->a(II[B)J

    move-result-wide v5

    long-to-int v2, v5

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBuf:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/a1;->shortBuf:[B

    invoke-static {v3, v4, v5}, Lh4/d;->a(II[B)J

    move-result-wide v3

    long-to-int v3, v3

    const-wide/16 v4, 0x1e

    add-long/2addr v0, v4

    int-to-long v4, v2

    add-long/2addr v0, v4

    int-to-long v4, v3

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setDataOffset(J)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDataOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->centralDirectoryStartOffset:J

    cmp-long p0, v4, v0

    if-gtz p0, :cond_1

    filled-new-array {v2, v3}, [I

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " overlaps with central directory."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 10

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "archive contains unparseable zip64 extra field"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/j0;

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalHeaderOffset()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    if-eqz v3, :cond_e

    const/16 v6, 0x8

    if-eqz v0, :cond_6

    move v7, v6

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    if-eqz v5, :cond_7

    move v8, v6

    goto :goto_6

    :cond_7
    move v8, v4

    :goto_6
    add-int/2addr v7, v8

    if-eqz v2, :cond_8

    move v8, v6

    goto :goto_7

    :cond_8
    move v8, v4

    :goto_7
    add-int/2addr v7, v8

    if-eqz v1, :cond_9

    const/4 v8, 0x4

    goto :goto_8

    :cond_9
    move v8, v4

    :goto_8
    add-int/2addr v7, v8

    array-length v3, v3

    if-lt v3, v7, :cond_d

    if-eqz v0, :cond_a

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    invoke-direct {v3, v7, v4}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    move v4, v6

    :cond_a
    if-eqz v5, :cond_b

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    invoke-direct {v3, v6, v4}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 v4, v4, 0x8

    :cond_b
    if-eqz v2, :cond_c

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    invoke-direct {v3, v6, v4}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>([BI)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    add-int/lit8 v4, v4, 0x8

    :cond_c
    if-eqz v1, :cond_e

    new-instance v3, Lorg/apache/commons/compress/archivers/zip/b1;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    invoke-direct {v3, v6, v4}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>([BI)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "Central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    const-string v1, " but is "

    invoke-static {v0, v7, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->Z:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_9
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_10

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v6, v6, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-ltz v8, :cond_f

    invoke-virtual {p1, v6, v7}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    goto :goto_a

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-eqz v5, :cond_11

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_11
    :goto_a
    if-eqz v5, :cond_13

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_12

    invoke-virtual {p1, v5, v6}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_b

    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string p1, "broken archive, entry with negative compressed size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    if-eqz v0, :cond_14

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/s0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setLocalHeaderOffset(J)V

    :cond_15
    if-eqz v1, :cond_16

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setDiskNumberStart(J)V

    :cond_16
    return-void
.end method

.method private skipBytes(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private sortByOffset([Lorg/apache/commons/compress/archivers/zip/o0;)[Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/a1;->offsetComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private startsWithLocalFileHeader()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->firstLocalFileHeaderOffset:J

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->wordBuf:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->LFH_SIG:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private static tryToLocateSignature(Ljava/nio/channels/SeekableByteChannel;JJ[B)Z
    .locals 5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide p1

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    cmp-long p3, v1, p3

    const/4 p4, 0x0

    if-ltz p3, :cond_1

    :goto_0
    cmp-long p3, v1, p1

    if-ltz p3, :cond_1

    invoke-interface {p0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {p0, v0}, Lh4/e;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    aget-byte v3, p5, p4

    if-ne p3, v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    const/4 v3, 0x1

    aget-byte v4, p5, v3

    if-ne p3, v4, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    const/4 v4, 0x2

    aget-byte v4, p5, v4

    if-ne p3, v4, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    const/4 v4, 0x3

    aget-byte v4, p5, v4

    if-ne p3, v4, :cond_0

    move p4, v3

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    invoke-interface {p0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :cond_2
    return p4
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/o0;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->a(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->closed:Z

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public copyRawEntries(Lorg/apache/commons/compress/archivers/zip/r0;Lorg/apache/commons/compress/archivers/zip/p0;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/zip/p0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/a1;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a1;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentBeforeFirstLocalFileHeader()Ljava/io/InputStream;
    .locals 5

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->firstLocalFileHeaderOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/a1;->createBoundedInputStream(JJ)Lh4/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->encoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->nameMap:Ljava/util/Map;

    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0;->EMPTY_LINKED_LIST:Ljava/util/LinkedList;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->entries:Ljava/util/List;

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->nameMap:Ljava/util/Map;

    .line 3
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/o0;->EMPTY_LINKED_LIST:Ljava/util/LinkedList;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    .line 4
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0;->EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->sortByOffset([Lorg/apache/commons/compress/archivers/zip/o0;)[Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->entries:Ljava/util/List;

    .line 1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/o0;->EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/o0;

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1;->sortByOffset([Lorg/apache/commons/compress/archivers/zip/o0;)[Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->nameMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstLocalFileHeaderOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->firstLocalFileHeaderOffset:J

    return-wide v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
    .locals 5

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/a1$d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->b(Lorg/apache/commons/compress/archivers/zip/o0;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/c1;->a(I)Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x6

    if-eq v1, v3, :cond_4

    const/16 v3, 0xb

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 p0, 0x9

    if-ne v1, p0, :cond_1

    new-instance p0, Lg4/a;

    invoke-direct {p0, v0}, Lg4/a;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/a0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/c1;->a(I)Lorg/apache/commons/compress/archivers/zip/c1;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/a0;-><init>(Lorg/apache/commons/compress/archivers/zip/c1;Lorg/apache/commons/compress/archivers/zip/o0;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/a1$a;

    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/a1;->ONE_ZERO_BYTE:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v1, p0, v2, p1, p1}, Lorg/apache/commons/compress/archivers/zip/a1$a;-><init>(Lorg/apache/commons/compress/archivers/zip/a1;Ljava/io/SequenceInputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    return-object v1

    :cond_3
    new-instance p0, Lf4/a;

    invoke-direct {p0, v0}, Lf4/a;-><init>(Ljava/io/FilterInputStream;)V

    return-object p0

    :cond_4
    :try_start_0
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/e;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/compress/archivers/zip/l;->Z:I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object p1

    iget p1, p1, Lorg/apache/commons/compress/archivers/zip/l;->b1:I

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/e;-><init>(Ljava/io/FilterInputStream;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "bad IMPLODE data"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/z;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/z;-><init>(Ljava/io/FilterInputStream;)V

    return-object p0

    :cond_6
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/a1$f;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a1$f;-><init>(Ljava/io/BufferedInputStream;)V

    return-object p0
.end method

.method public getRawInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
    .locals 6

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/a1$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getDataOffset(Lorg/apache/commons/compress/archivers/zip/o0;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/a1;->createBoundedInputStream(JJ)Lh4/b;

    move-result-object p0

    return-object p0
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->isUnixSymlink()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/a1;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    invoke-static {p1}, Li4/c;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
