.class public Lorg/apache/commons/compress/archivers/zip/r0;
.super Lorg/apache/commons/compress/archivers/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/r0$c;,
        Lorg/apache/commons/compress/archivers/zip/r0$a;,
        Lorg/apache/commons/compress/archivers/zip/r0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/archivers/c<",
        "Lorg/apache/commons/compress/archivers/zip/o0;",
        ">;"
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x200

.field private static final CFH_COMMENT_LENGTH_OFFSET:I = 0x20

.field private static final CFH_COMPRESSED_SIZE_OFFSET:I = 0x14

.field private static final CFH_CRC_OFFSET:I = 0x10

.field private static final CFH_DISK_NUMBER_OFFSET:I = 0x22

.field private static final CFH_EXTERNAL_ATTRIBUTES_OFFSET:I = 0x26

.field private static final CFH_EXTRA_LENGTH_OFFSET:I = 0x1e

.field private static final CFH_FILENAME_LENGTH_OFFSET:I = 0x1c

.field private static final CFH_FILENAME_OFFSET:I = 0x2e

.field private static final CFH_GPB_OFFSET:I = 0x8

.field private static final CFH_INTERNAL_ATTRIBUTES_OFFSET:I = 0x24

.field private static final CFH_LFH_OFFSET:I = 0x2a

.field private static final CFH_METHOD_OFFSET:I = 0xa

.field private static final CFH_ORIGINAL_SIZE_OFFSET:I = 0x18

.field static final CFH_SIG:[B

.field private static final CFH_SIG_OFFSET:I = 0x0

.field private static final CFH_TIME_OFFSET:I = 0xc

.field private static final CFH_VERSION_MADE_BY_OFFSET:I = 0x4

.field private static final CFH_VERSION_NEEDED_OFFSET:I = 0x6

.field static final DD_SIG:[B

.field static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFLATED:I = 0x8

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final EOCD_SIG:[B

.field private static final LFH_COMPRESSED_SIZE_OFFSET:I = 0x12

.field private static final LFH_CRC_OFFSET:I = 0xe

.field private static final LFH_EXTRA_LENGTH_OFFSET:I = 0x1c

.field private static final LFH_FILENAME_LENGTH_OFFSET:I = 0x1a

.field private static final LFH_FILENAME_OFFSET:I = 0x1e

.field private static final LFH_GPB_OFFSET:I = 0x6

.field private static final LFH_METHOD_OFFSET:I = 0x8

.field private static final LFH_ORIGINAL_SIZE_OFFSET:I = 0x16

.field static final LFH_SIG:[B

.field private static final LFH_SIG_OFFSET:I = 0x0

.field private static final LFH_TIME_OFFSET:I = 0xa

.field private static final LFH_VERSION_NEEDED_OFFSET:I = 0x4

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field private cdDiskNumberStart:J

.field private cdLength:J

.field private cdOffset:J

.field private charset:Ljava/nio/charset/Charset;

.field private comment:Ljava/lang/String;

.field private final copyBuffer:[B

.field private createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

.field protected final def:Ljava/util/zip/Deflater;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

.field private eocdLength:J

.field private fallbackToUTF8:Z

.field protected finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private final isSplitZip:Z

.field private level:I

.field private final metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            "Lorg/apache/commons/compress/archivers/zip/r0$b;",
            ">;"
        }
    .end annotation
.end field

.field private method:I

.field private final numberOfCDInDiskData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final outputStream:Ljava/io/OutputStream;

.field private final streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

.field private useUTF8Flag:Z

.field private zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

.field private zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ZERO:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->LZERO:[B

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ONE:[B

    const-wide/32 v0, 0x4034b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->LFH_SIG:[B

    const-wide/32 v0, 0x8074b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DD_SIG:[B

    const-wide/32 v0, 0x2014b50    # 1.6619997E-316

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->CFH_SIG:[B

    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->EOCD_SIG:[B

    const-wide/32 v0, 0x6064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ZIP64_EOCD_SIG:[B

    const-wide/32 v0, 0x7064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ZIP64_EOCD_LOC_SIG:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/r0;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/r0;-><init>(Ljava/nio/file/Path;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->method:I

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    .line 6
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/u0;->a(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/o;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r0$c;->c:Lorg/apache/commons/compress/archivers/zip/r0$c;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->x:Lorg/apache/commons/compress/archivers/zip/k0;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->copyBuffer:[B

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    .line 8
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    invoke-direct {v1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->def:Ljava/util/zip/Deflater;

    .line 9
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/t$a;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/t$a;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->method:I

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    .line 29
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/u0;->a(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/o;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r0$c;->c:Lorg/apache/commons/compress/archivers/zip/r0$c;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->x:Lorg/apache/commons/compress/archivers/zip/k0;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->copyBuffer:[B

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 31
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/s;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/zip/s;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    .line 32
    new-instance p1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    invoke-direct {p1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->def:Ljava/util/zip/Deflater;

    .line 33
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/t$a;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/t$a;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;J)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->method:I

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    .line 13
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/u0;->a(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/o;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r0$c;->c:Lorg/apache/commons/compress/archivers/zip/r0$c;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->x:Lorg/apache/commons/compress/archivers/zip/k0;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->copyBuffer:[B

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 15
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    invoke-direct {v1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->def:Ljava/util/zip/Deflater;

    .line 16
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/e1;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/e1;-><init>(Ljava/nio/file/Path;J)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    .line 17
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/t$a;

    invoke-direct {p1, v2, v1}, Lorg/apache/commons/compress/archivers/zip/t$a;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->method:I

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    .line 21
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/u0;->a(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/o;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r0$c;->c:Lorg/apache/commons/compress/archivers/zip/r0$c;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->x:Lorg/apache/commons/compress/archivers/zip/k0;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->copyBuffer:[B

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    invoke-direct {v1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->def:Ljava/util/zip/Deflater;

    .line 24
    array-length v0, p2

    if-nez v0, :cond_0

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/k;

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/nio/file/Path;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/k;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    .line 25
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/t$a;

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/t$a;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    return-void
.end method

.method private addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/o0;ZLjava/nio/ByteBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r0$c;->b:Lorg/apache/commons/compress/archivers/zip/r0$c;

    if-eq v0, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/v;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p3

    sub-int/2addr v4, p3

    invoke-direct {p2, v0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/a;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/zip/o0;->addExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    check-cast p3, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/o;->c()Ljava/nio/charset/CharsetEncoder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    if-eq v0, v1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/t0;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/o;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/u;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-direct {p3, p2, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/a;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/archivers/zip/o0;->addExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    :cond_3
    return-void
.end method

.method private checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/k0;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->isZip64Required(Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/commons/compress/archivers/zip/k0;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/l0;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s size exceeds the limit of 4GByte."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method private closeCopiedEntry(Z)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->preClose()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->d:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/k0;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/k0;)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->closeEntry(ZZ)V

    return-void
.end method

.method private closeEntry(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/q;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->rewriteSizesAndCrc(Z)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/o0;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    return-void
.end method

.method private copyFromZipInputStream(Ljava/io/InputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/g1;->b(Lorg/apache/commons/compress/archivers/zip/o0;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->f:Z

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->copyBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->copyBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/c;->count(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;)[B
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/r0$b;

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 3
    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/r0$b;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v1

    const-wide/32 v3, 0xffff

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/k0;->y:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq v2, v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string p1, "Archive\'s size exceeds the limit of 4GByte."

    .line 6
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    .line 8
    :cond_3
    :goto_2
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/r0$b;->a:J

    .line 9
    invoke-direct {p0, p1, v2, v3, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;JZ)V

    .line 10
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->getName(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/zip/r0$b;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/zip/r0$b;Z)[B
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    .line 11
    check-cast v2, Lorg/apache/commons/compress/archivers/zip/e1;

    .line 12
    iget v2, v2, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getCentralDirectoryExtra()[B

    move-result-object v2

    .line 18
    array-length v4, v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    .line 20
    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/r0;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/t0;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/archivers/zip/o;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    .line 22
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x2e

    add-int v9, v8, v4

    add-int v10, v9, v7

    .line 23
    new-array v10, v10, [B

    sget-object v11, Lorg/apache/commons/compress/archivers/zip/r0;->CFH_SIG:[B

    const/4 v12, 0x0

    const/4 v13, 0x4

    .line 24
    invoke-static {v11, v12, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getPlatform()I

    move-result v11

    const/16 v14, 0x8

    shl-int/2addr v11, v14

    iget-boolean v15, v0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    if-nez v15, :cond_3

    const/16 v15, 0x14

    goto :goto_1

    :cond_3
    const/16 v15, 0x2d

    :goto_1
    or-int/2addr v11, v15

    invoke-static {v11, v13, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v11

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v12

    check-cast v15, Lorg/apache/commons/compress/archivers/zip/o;

    .line 28
    invoke-virtual {v15}, Lorg/apache/commons/compress/archivers/zip/o;->c()Ljava/nio/charset/CharsetEncoder;

    move-result-object v15

    .line 29
    invoke-virtual {v15, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 30
    iget-boolean v15, v1, Lorg/apache/commons/compress/archivers/zip/r0$b;->b:Z

    move/from16 v3, p4

    .line 31
    invoke-direct {v0, v11, v3, v15}, Lorg/apache/commons/compress/archivers/zip/r0;->versionNeededToExtract(IZZ)I

    move-result v3

    const/4 v15, 0x6

    invoke-static {v3, v15, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    if-nez v12, :cond_4

    iget-boolean v3, v0, Lorg/apache/commons/compress/archivers/zip/r0;->fallbackToUTF8:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 32
    :goto_2
    iget-boolean v12, v1, Lorg/apache/commons/compress/archivers/zip/r0$b;->b:Z

    invoke-direct {v0, v3, v12}, Lorg/apache/commons/compress/archivers/zip/r0;->getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object v3

    invoke-virtual {v3, v10, v14}, Lorg/apache/commons/compress/archivers/zip/l;->a([BI)V

    const/16 v3, 0xa

    .line 33
    invoke-static {v11, v3, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v11

    .line 35
    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/g1;->f(J)J

    move-result-wide v11

    const/16 v3, 0xc

    .line 36
    invoke-static {v11, v12, v10, v3, v13}, Lh4/d;->b(J[BII)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v11

    const/16 v3, 0x10

    .line 38
    invoke-static {v11, v12, v10, v3, v13}, Lh4/d;->b(J[BII)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v11

    const-wide v14, 0xffffffffL

    cmp-long v3, v11, v14

    sget-object v11, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    const/16 v12, 0x18

    if-gez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v16

    cmp-long v3, v16, v14

    if-gez v3, :cond_6

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq v3, v11, :cond_6

    sget-object v14, Lorg/apache/commons/compress/archivers/zip/k0;->y:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v3, v14, :cond_5

    const/16 v3, 0x14

    const-wide v14, 0xffffffffL

    goto :goto_3

    .line 40
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v14

    const/16 v3, 0x14

    .line 41
    invoke-static {v14, v15, v10, v3, v13}, Lh4/d;->b(J[BII)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v14

    .line 43
    invoke-static {v14, v15, v10, v12, v13}, Lh4/d;->b(J[BII)V

    goto :goto_4

    :cond_6
    const/16 v3, 0x14

    .line 44
    :goto_3
    invoke-static {v14, v15, v10, v3, v13}, Lh4/d;->b(J[BII)V

    .line 45
    invoke-static {v14, v15, v10, v12, v13}, Lh4/d;->b(J[BII)V

    :goto_4
    const/16 v3, 0x1c

    .line 46
    invoke-static {v6, v3, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    const/16 v3, 0x1e

    .line 47
    invoke-static {v4, v3, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    const/16 v3, 0x20

    .line 48
    invoke-static {v7, v3, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    iget-boolean v3, v0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    const/16 v12, 0x22

    if-eqz v3, :cond_9

    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v14

    const-wide/32 v18, 0xffff

    cmp-long v3, v14, v18

    if-gez v3, :cond_8

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v3, v11, :cond_7

    goto :goto_5

    .line 50
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v14

    long-to-int v3, v14

    invoke-static {v3, v12, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    goto :goto_6

    :cond_8
    :goto_5
    const v3, 0xffff

    .line 51
    invoke-static {v3, v12, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    goto :goto_6

    :cond_9
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/r0;->ZERO:[B

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 52
    invoke-static {v3, v15, v10, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getInternalAttributes()I

    move-result v3

    const/16 v12, 0x24

    invoke-static {v3, v12, v10}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getExternalAttributes()J

    move-result-wide v14

    const/16 v3, 0x26

    .line 55
    invoke-static {v14, v15, v10, v3, v13}, Lh4/d;->b(J[BII)V

    .line 56
    iget-wide v14, v1, Lorg/apache/commons/compress/archivers/zip/r0$b;->a:J

    move-object v3, v2

    const-wide v1, 0xffffffffL

    cmp-long v12, v14, v1

    const/16 v13, 0x2a

    if-gez v12, :cond_a

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v0, v11, :cond_b

    :cond_a
    const/4 v11, 0x4

    goto :goto_7

    .line 57
    :cond_b
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const/4 v11, 0x4

    .line 58
    invoke-static {v0, v1, v10, v13, v11}, Lh4/d;->b(J[BII)V

    goto :goto_8

    .line 59
    :goto_7
    invoke-static {v1, v2, v10, v13, v11}, Lh4/d;->b(J[BII)V

    .line 60
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    const/16 v2, 0x2e

    invoke-static {v0, v1, v10, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 61
    invoke-static {v3, v0, v10, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-static {v0, v1, v10, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v10
.end method

.method private createLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/nio/ByteBuffer;ZZJ)[B
    .locals 9

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    :cond_0
    instance-of v0, v1, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v0, :cond_1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/r;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getAlignment()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz v1, :cond_2

    iget-short v0, v1, Lorg/apache/commons/compress/archivers/zip/r;->c:S

    :cond_2
    const/4 v2, 0x1

    const/16 v3, 0x1e

    const/4 v4, 0x0

    if-gt v0, v2, :cond_3

    if-eqz v1, :cond_5

    iget-boolean v5, v1, Lorg/apache/commons/compress/archivers/zip/r;->r:Z

    if-nez v5, :cond_5

    :cond_3
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalFileDataExtra()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    neg-long p5, p5

    int-to-long v5, v5

    sub-long/2addr p5, v5

    const-wide/16 v5, 0x6

    sub-long/2addr p5, v5

    add-int/lit8 v5, v0, -0x1

    int-to-long v5, v5

    and-long/2addr p5, v5

    long-to-int p5, p5

    new-instance p6, Lorg/apache/commons/compress/archivers/zip/r;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/apache/commons/compress/archivers/zip/r;->r:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    if-ltz v0, :cond_e

    const/16 v5, 0x7fff

    if-gt v0, v5, :cond_e

    if-ltz p5, :cond_d

    int-to-short v0, v0

    iput-short v0, p6, Lorg/apache/commons/compress/archivers/zip/r;->c:S

    iput-boolean v1, p6, Lorg/apache/commons/compress/archivers/zip/r;->r:Z

    iput p5, p6, Lorg/apache/commons/compress/archivers/zip/r;->x:I

    invoke-virtual {p1, p6}, Lorg/apache/commons/compress/archivers/zip/o0;->addExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalFileDataExtra()[B

    move-result-object p5

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p6

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr p6, v0

    add-int/lit8 v0, p6, 0x1e

    array-length v1, p5

    add-int/2addr v1, v0

    new-array v1, v1, [B

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/r0;->LFH_SIG:[B

    const/4 v6, 0x4

    invoke-static {v5, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v5

    invoke-direct {p0, v5, p4}, Lorg/apache/commons/compress/archivers/zip/r0;->usesDataDescriptor(IZ)Z

    move-result v7

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v8

    invoke-direct {p0, v5, v8, v7}, Lorg/apache/commons/compress/archivers/zip/r0;->versionNeededToExtract(IZZ)I

    move-result v8

    invoke-static {v8, v6, v1}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->fallbackToUTF8:Z

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    invoke-direct {p0, v2, v7}, Lorg/apache/commons/compress/archivers/zip/r0;->getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object p3

    const/4 v2, 0x6

    invoke-virtual {p3, v1, v2}, Lorg/apache/commons/compress/archivers/zip/l;->a([BI)V

    const/16 p3, 0x8

    invoke-static {v5, p3, v1}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/g1;->f(J)J

    move-result-wide v7

    const/16 v2, 0xa

    invoke-static {v7, v8, v1, v2, v6}, Lh4/d;->b(J[BII)V

    const/16 v2, 0xe

    if-nez p4, :cond_8

    if-eq v5, p3, :cond_7

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of v7, v7, Lorg/apache/commons/compress/archivers/zip/q;

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/r0;->LZERO:[B

    invoke-static {v7, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v7

    invoke-static {v7, v8, v1, v2, v6}, Lh4/d;->b(J[BII)V

    :goto_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v2

    const/16 v7, 0x16

    const/16 v8, 0x12

    if-eqz v2, :cond_9

    const-wide p0, 0xffffffffL

    invoke-static {p0, p1, v1, v8, v6}, Lh4/d;->b(J[BII)V

    invoke-static {p0, p1, v1, v7, v6}, Lh4/d;->b(J[BII)V

    goto :goto_6

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide p3

    invoke-static {p3, p4, v1, v8, v6}, Lh4/d;->b(J[BII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide p0

    invoke-static {p0, p1, v1, v7, v6}, Lh4/d;->b(J[BII)V

    goto :goto_6

    :cond_a
    if-eq v5, p3, :cond_c

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of p0, p0, Lorg/apache/commons/compress/archivers/zip/q;

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide p3

    invoke-static {p3, p4, v1, v8, v6}, Lh4/d;->b(J[BII)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide p0

    invoke-static {p0, p1, v1, v7, v6}, Lh4/d;->b(J[BII)V

    goto :goto_6

    :cond_c
    :goto_5
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/r0;->LZERO:[B

    invoke-static {p0, v4, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v4, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    const/16 p0, 0x1a

    invoke-static {p6, p0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    array-length p0, p5

    const/16 p1, 0x1c

    invoke-static {p0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/d1;->c(II[B)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    invoke-static {p0, p1, v1, v3, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p5

    invoke-static {p5, v4, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Padding must not be negative, was: "

    invoke-static {p1, p5}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Alignment must be between 0 and 0x7fff, was: "

    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private flushDeflater()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/t;->b1:[B

    array-length v2, v1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v4, v2, v1}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/k0;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->x:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/q;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    return-object p0
.end method

.method private getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/t0;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o;->c()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->fallbackToUTF8:Z

    if-eqz p1, :cond_0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    :goto_0
    return-object p0
.end method

.method private getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/l;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/l;-><init>()V

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    iput-boolean p0, v0, Lorg/apache/commons/compress/archivers/zip/l;->c:Z

    if-eqz p2, :cond_2

    iput-boolean v1, v0, Lorg/apache/commons/compress/archivers/zip/l;->r:Z

    :cond_2
    return-object v0
.end method

.method private getName(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/t0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/j0;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->e:Z

    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/commons/compress/archivers/zip/j0;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/j0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/j0;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/j0;-><init>()V

    :cond_2
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    return-object p0
.end method

.method private handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/k0;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->d:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/q;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, p3

    const-string v1, " instead of "

    const-string v2, ": "

    if-nez v0, :cond_2

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p3, p3, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide p3

    cmp-long p3, p3, p1

    if-nez p3, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p3, Ljava/util/zip/ZipException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Bad size for entry "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p5, p5, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Bad CRC checksum for entry "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p5, p5, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    :goto_0
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/zip/r0;->checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/k0;)Z

    move-result p0

    return p0
.end method

.method private handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;JZ)V
    .locals 8

    if-eqz p4, :cond_9

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/j0;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq v0, v1, :cond_1

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/k0;->y:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p4, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iput-object v0, p4, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    iput-object v0, p4, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    iput-object v0, p4, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    :goto_1
    cmp-long v0, p2, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v4

    const-wide/32 v6, 0xffff

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne p0, v1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    iput-object p0, p4, Lorg/apache/commons/compress/archivers/zip/j0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_7
    if-eqz v2, :cond_8

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/b1;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide p2

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/zip/b1;-><init>(J)V

    iput-object p0, p4, Lorg/apache/commons/compress/archivers/zip/j0;->y:Lorg/apache/commons/compress/archivers/zip/b1;

    :cond_8
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    :cond_9
    return-void
.end method

.method private hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    instance-of p0, p0, Lorg/apache/commons/compress/archivers/zip/j0;

    return p0
.end method

.method private isTooLargeForZip32(Lorg/apache/commons/compress/archivers/zip/o0;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isZip64Required(Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/commons/compress/archivers/zip/k0;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p2, v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->y:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->isTooLargeForZip32(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private preClose()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lh4/d;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->write([BII)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No current entry to close"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/r0$a;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/r0$a;-><init>(Lorg/apache/commons/compress/archivers/zip/o0;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 6
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->setDefaults(Lorg/apache/commons/compress/archivers/zip/o0;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 8
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 9
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/k0;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/k0;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 11
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 12
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/commons/compress/archivers/zip/k0;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 13
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 14
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/j0;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 15
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 16
    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 17
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    .line 18
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 19
    iget-object v3, v3, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 20
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 21
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 22
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 23
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 24
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 25
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 26
    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 27
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/s0;-><init>(J)V

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 28
    :cond_2
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    goto :goto_0

    .line 29
    :goto_1
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/j0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    .line 30
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/zip/j0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 31
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 32
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    .line 33
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    .line 34
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasCompressionLevelChanged:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasCompressionLevelChanged:Z

    .line 36
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/r0;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Z)V

    return-void

    .line 37
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private rewriteSizesAndCrc(Z)V
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/q;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-wide v2, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->b:J

    instance-of v4, v0, Lorg/apache/commons/compress/archivers/zip/e1;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/e1;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getDiskNumberStart()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v5, v7

    if-gez v1, :cond_0

    iget-object v1, v4, Lorg/apache/commons/compress/archivers/zip/e1;->f1:Ljava/util/ArrayList;

    long-to-int v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Disk number exceeded internal limits: limit=2147483647 requested="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    const-wide/16 v5, 0x4

    add-long v7, v2, v5

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v1

    const-wide/16 v9, 0x8

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide v11, 0xffffffffL

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    add-long/2addr v9, v2

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v9, v10, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    add-long/2addr v9, v2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v9, v10, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    :goto_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->getName(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v4, v1

    const-wide/16 v7, 0x10

    add-long/2addr v7, v2

    int-to-long v9, v4

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v0, v5, v6, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    const-wide/16 v5, 0xc

    add-long/2addr v7, v5

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    if-nez p1, :cond_4

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->versionNeededToExtract(IZZ)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object p1

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, p1, v4}, Lorg/apache/commons/compress/archivers/zip/q;->a(J[BI)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-boolean p1, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->e:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    :cond_4
    return-void
.end method

.method private setDefaults(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->method:I

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setMethod(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    :cond_1
    return-void
.end method

.method private setEncoding(Ljava/nio/charset/Charset;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    .line 1
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/u0;->a(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/o;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Li4/a;->a:I

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/u0;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    :cond_1
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/commons/compress/archivers/zip/k0;)Z
    .locals 4

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p2, v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->y:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of p0, p0, Lorg/apache/commons/compress/archivers/zip/q;

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldUseZip64EOCD()Z
    .locals 8

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0xffff

    if-ge v0, v3, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdDiskNumberStart:J

    const-wide/32 v6, 0xffff

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdLength:J

    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdOffset:J

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private usesDataDescriptor(IZ)Z
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of p0, p0, Lorg/apache/commons/compress/archivers/zip/q;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private validateIfZip64IsNeededInEOCD()V
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const v2, 0xffff

    if-ge v0, v2, :cond_7

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdDiskNumberStart:J

    const-wide/32 v5, 0xffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_4

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdLength:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdOffset:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string v0, "Archive\'s size exceeds the limit of 4GByte."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string v0, "The size of the entire central directory exceeds the limit of 4GByte."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string v0, "Archive contains more than 65535 entries."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string v0, "Number of entries on this disk exceeds the limit of 65535."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string v0, "Number of the disk with the start of Central Directory exceeds the limit of 65535."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/l0;

    const-string v0, "Number of the disk of End Of Central Directory exceeds the limit of 65535."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/k0;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/q;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "CRC checksum is required for STORED method when not writing to a file"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    if-eq p1, v0, :cond_5

    :cond_4
    return-void

    :cond_5
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/l0;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s size exceeds the limit of 4GByte."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private versionNeededToExtract(IZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/16 p0, 0x2d

    return p0

    :cond_0
    if-eqz p3, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->versionNeededToExtractMethod(I)I

    move-result p0

    return p0
.end method

.method private versionNeededToExtractMethod(I)I
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/16 p0, 0x14

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method private writeCentralDirectoryInChunks()V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x11170

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/r0;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    return-void
.end method

.method private writeCounted([B)V
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    return-void
.end method

.method private writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Z)V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/o;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o;->c()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->getName(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/r0$c;->c:Lorg/apache/commons/compress/archivers/zip/r0$c;

    if-eq v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1, v5, v4}, Lorg/apache/commons/compress/archivers/zip/r0;->addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/o0;ZLjava/nio/ByteBuffer;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    .line 7
    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    .line 8
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    .line 9
    iget v1, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    int-to-long v1, v1

    .line 10
    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setDiskNumberStart(J)V

    .line 11
    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-wide v7, v0

    .line 12
    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/compress/archivers/zip/r0;->createLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/nio/ByteBuffer;ZZJ)[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    .line 13
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/r0$b;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/r0;->usesDataDescriptor(IZ)Z

    move-result p2

    invoke-direct {v4, v0, v1, p2}, Lorg/apache/commons/compress/archivers/zip/r0$b;-><init>(JZ)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    const-wide/16 v3, 0xe

    add-long/2addr v0, v3

    .line 14
    iput-wide v0, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->b:J

    .line 15
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    .line 16
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    .line 17
    iput-wide v0, p1, Lorg/apache/commons/compress/archivers/zip/r0$a;->c:J

    return-void
.end method


# virtual methods
.method public addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;Ljava/io/InputStream;)V
    .locals 5

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Lorg/apache/commons/compress/archivers/zip/o0;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/j0;->b1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;Z)V

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/r0;->copyFromZipInputStream(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->closeCopiedEntry(Z)V

    return-void
.end method

.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/a;)Z
    .locals 2

    instance-of p0, p1, Lorg/apache/commons/compress/archivers/zip/o0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result p0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result p0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/c1;->r:Lorg/apache/commons/compress/archivers/zip/c1;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/g1;->a(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->destroy()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->destroy()V

    throw v0
.end method

.method public closeArchiveEntry()V
    .locals 11

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->preClose()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->flushDeflater()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-wide v3, v3, Lorg/apache/commons/compress/archivers/zip/r0$a;->c:J

    sub-long v6, v1, v3

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/t;->r:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/t;->y:J

    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->d:J

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/commons/compress/archivers/zip/k0;

    move-result-object v10

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/archivers/zip/r0;->handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/k0;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->closeEntry(ZZ)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->r:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->y:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->x:J

    return-void
.end method

.method public bridge synthetic createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/r0;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createArchiveEntry(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lorg/apache/commons/compress/archivers/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/r0;->createArchiveEntry(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lorg/apache/commons/compress/archivers/zip/o0;

    move-result-object p0

    return-object p0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs createArchiveEntry(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lorg/apache/commons/compress/archivers/zip/o0;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    if-nez p0, :cond_0

    .line 5
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/o0;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deflate()V
    .locals 4

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->b1:[B

    array-length v1, v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v3, v1, v0}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdOffset:J

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/e1;

    iget-wide v3, v2, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdOffset:J

    iget v2, v2, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdDiskNumberStart:J

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCentralDirectoryInChunks()V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdLength:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x16

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->eocdLength:J

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeZip64CentralDirectory()V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCentralDirectoryEnd()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->metaData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/t;->close()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->finished:Z

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive contains unclosed entries."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    return-wide v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    instance-of p0, p0, Lorg/apache/commons/compress/archivers/zip/q;

    return p0
.end method

.method public bridge synthetic putArchiveEntry(Lorg/apache/commons/compress/archivers/a;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V

    return-void
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;Z)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/r0$c;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/r0$c;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 5
    sget v0, Li4/a;->a:I

    .line 6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 8
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->setEncoding(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->fallbackToUTF8:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasCompressionLevelChanged:Z

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->level:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid compression level: "

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMethod(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->method:I

    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->charset:Ljava/nio/charset/Charset;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    sget v0, Li4/a;->a:I

    if-nez p1, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/u0;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->useUTF8Flag:Z

    return-void
.end method

.method public setUseZip64(Lorg/apache/commons/compress/archivers/zip/k0;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    return-void
.end method

.method public write([BII)V
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/g1;->b(Lorg/apache/commons/compress/archivers/zip/o0;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/zip/r0$a;->a:Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v1

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/t;->x:J

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/t;->r:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    const/16 v4, 0x8

    if-ne v1, v4, :cond_6

    if-lez p3, :cond_7

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/t;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x2000

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/t;->b1:[B

    if-gt p3, v4, :cond_1

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_7

    array-length p1, v6

    invoke-virtual {v1, v6, v5, p1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v0, v5, p1, v6}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    goto :goto_0

    :cond_1
    div-int/lit16 v7, p3, 0x2000

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_4

    mul-int/lit16 v9, v8, 0x2000

    add-int/2addr v9, p2

    invoke-virtual {v1, p1, v9, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v9

    if-nez v9, :cond_3

    array-length v9, v6

    invoke-virtual {v1, v6, v5, v9}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0, v5, v9, v6}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    mul-int/2addr v7, v4

    if-ge v7, p3, :cond_7

    add-int/2addr p2, v7

    sub-int v4, p3, v7

    invoke-virtual {v1, p1, p2, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_7

    array-length p1, v6

    invoke-virtual {v1, v6, v5, p1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0, v5, p1, v6}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    :cond_7
    iget-wide p1, v0, Lorg/apache/commons/compress/archivers/zip/t;->y:J

    int-to-long v4, p3

    add-long/2addr p1, v4

    iput-wide p1, v0, Lorg/apache/commons/compress/archivers/zip/t;->y:J

    iget-wide p1, v0, Lorg/apache/commons/compress/archivers/zip/t;->x:J

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/c;->count(J)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeCentralDirectoryEnd()V
    .locals 7

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->eocdLength:J

    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/zip/e1;->y:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-wide v5, v0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/e1;->c()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The unsplittable content size is bigger than the split segment size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->validateIfZip64IsNeededInEOCD()V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->EOCD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdDiskNumberStart:J

    long-to-int v2, v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    const v1, 0xffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdLength:J

    const-wide v2, 0xffffffffL

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdOffset:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/t0;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->comment:Ljava/lang/String;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    return-void
.end method

.method public writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    return-void
.end method

.method public writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/r0;->usesDataDescriptor(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->DD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;->writeCounted([B)V

    :goto_0
    return-void
.end method

.method public writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/o0;Z)V

    return-void
.end method

.method public final writeOut([B)V
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    .line 3
    array-length v0, p1

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/t$a;

    .line 4
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/t$a;->c1:Ljava/io/OutputStream;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final writeOut([BII)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/t$a;

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/t$a;->c1:Ljava/io/OutputStream;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writePreamble([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writePreamble([BII)V

    return-void
.end method

.method public writePreamble([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entry:Lorg/apache/commons/compress/archivers/zip/r0$a;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/t;->a(II[B)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Preamble must be written before creating an entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeZip64CentralDirectory()V
    .locals 12

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/k0;->r:Lorg/apache/commons/compress/archivers/zip/k0;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/r0;->shouldUseZip64EOCD()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->hasUsedZip64:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/t;

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/t;->Z:J

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    int-to-long v4, v0

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    :goto_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    const-wide/16 v6, 0x2c

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    const/16 v0, 0x2d

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/d1;->b(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    int-to-long v7, v0

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdDiskNumberStart:J

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/r0;->numberOfCDInDiskData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    int-to-long v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdLength:J

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/r0;->cdOffset:J

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v0, :cond_7

    const-wide/16 v6, 0x14

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/r0;->eocdLength:J

    add-long/2addr v8, v6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/zip/e1;->y:J

    cmp-long v10, v8, v6

    if-gtz v10, :cond_6

    iget-wide v10, v0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    sub-long/2addr v6, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/e1;->c()V

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The unsplittable content size is bigger than the split segment size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/s0;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->isSplitZip:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/r0;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/e1;

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b1;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    goto :goto_4

    :cond_8
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/r0;->ONE:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/r0;->writeOut([B)V

    :goto_4
    return-void
.end method
