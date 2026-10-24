.class public Lorg/apache/commons/compress/archivers/zip/o0;
.super Ljava/util/zip/ZipEntry;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/o0$d;,
        Lorg/apache/commons/compress/archivers/zip/o0$b;,
        Lorg/apache/commons/compress/archivers/zip/o0$c;
    }
.end annotation


# static fields
.field public static final CRC_UNKNOWN:I = -0x1

.field static final EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/o0;

.field static EMPTY_LINKED_LIST:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10

.field private static final ZIP_DIR_SEP:Ljava/lang/String; = "/"


# instance fields
.field private alignment:I

.field private commentSource:Lorg/apache/commons/compress/archivers/zip/o0$b;

.field private dataOffset:J

.field private diskNumberStart:J

.field private externalAttributes:J

.field private final extraFieldFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/d1;",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;"
        }
    .end annotation
.end field

.field private extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

.field private generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

.field private internalAttributes:I

.field private isStreamContiguous:Z

.field private lastModifiedDateSet:Z

.field private localHeaderOffset:J

.field private method:I

.field private name:Ljava/lang/String;

.field private nameSource:Lorg/apache/commons/compress/archivers/zip/o0$d;

.field private platform:I

.field private rawFlag:I

.field private rawName:[B

.field private size:J

.field private time:J

.field private unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

.field private versionMadeBy:I

.field private versionRequired:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/o0;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o0;->EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/o0;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o0;->EMPTY_LINKED_LIST:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/function/Function;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/function/Function;Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/d1;",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p2, p3}, Lorg/apache/commons/compress/archivers/zip/o0;->toEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/o0;->setAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/d1;",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->method:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->size:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->platform:I

    .line 19
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/l;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->localHeaderOffset:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->dataOffset:J

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/o0$d;->c:Lorg/apache/commons/compress/archivers/zip/o0$d;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->nameSource:Lorg/apache/commons/compress/archivers/zip/o0$d;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/o0$b;->c:Lorg/apache/commons/compress/archivers/zip/o0$b;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->commentSource:Lorg/apache/commons/compress/archivers/zip/o0$b;

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->time:J

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFieldFactory:Ljava/util/function/Function;

    .line 20
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/o0;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/util/function/Function;Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/d1;",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-static {p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/o0;->toEntryName(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p4}, Lorg/apache/commons/compress/archivers/zip/o0;->setAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Ljava/util/zip/ZipEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/d1;",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;",
            "Ljava/util/zip/ZipEntry;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->method:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->size:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->platform:I

    .line 9
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/l;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/l;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->localHeaderOffset:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->dataOffset:J

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/o0$d;->c:Lorg/apache/commons/compress/archivers/zip/o0$d;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->nameSource:Lorg/apache/commons/compress/archivers/zip/o0$d;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/o0$b;->c:Lorg/apache/commons/compress/archivers/zip/o0$b;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->commentSource:Lorg/apache/commons/compress/archivers/zip/o0$b;

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->time:J

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFieldFactory:Ljava/util/function/Function;

    .line 10
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->r:Lorg/apache/commons/compress/archivers/zip/o0$c$a;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    .line 14
    :goto_0
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setMethod(I)V

    .line 15
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->size:J

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/function/Function;Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/o0;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 25
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->setInternalAttributes(I)V

    .line 26
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setExternalAttributes(J)V

    .line 27
    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;)V

    .line 28
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->setPlatform(I)V

    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/l;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/l;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/l;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/archivers/zip/d1;Lorg/apache/commons/compress/archivers/zip/v0;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->lambda$findMatching$0(Lorg/apache/commons/compress/archivers/zip/d1;Lorg/apache/commons/compress/archivers/zip/v0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/util/function/Function;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFieldFactory:Ljava/util/function/Function;

    return-object p0
.end method

.method private addInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 4

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/h0;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/h0;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/h0;->h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/b1;

    move-result-object p1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, v0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    iget-byte v3, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    if-eqz p1, :cond_1

    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v3, -0x2

    :goto_1
    int-to-byte v3, v3

    iput-byte v3, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    iput-object p1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    :cond_2
    if-eqz p2, :cond_5

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/h0;->h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/b1;

    move-result-object p1

    if-eqz p1, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    iput-boolean p2, v0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    iget-byte p2, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    if-eqz p1, :cond_4

    or-int/lit8 p2, p2, 0x2

    goto :goto_3

    :cond_4
    and-int/lit8 p2, p2, -0x3

    :goto_3
    int-to-byte p2, p2

    iput-byte p2, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    iput-object p1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    :cond_5
    if-eqz p3, :cond_8

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/h0;->h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/b1;

    move-result-object p1

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    iget-byte p2, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    if-eqz p1, :cond_7

    or-int/lit8 p2, p2, 0x4

    goto :goto_4

    :cond_7
    and-int/lit8 p2, p2, -0x5

    :goto_4
    int-to-byte p2, p2

    iput-byte p2, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c:B

    iput-object p1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    :cond_8
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    return-void
.end method

.method private addNTFSTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b0;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/b0;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/b0;->h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/s0;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_0
    iput-object p1, v0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_1
    if-eqz p2, :cond_3

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/b0;->h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/s0;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_2
    iput-object p1, v0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_3
    if-eqz p3, :cond_5

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/b0;->h(Ljava/nio/file/attribute/FileTime;)Lorg/apache/commons/compress/archivers/zip/s0;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/s0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_4
    iput-object p1, v0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    return-void
.end method

.method private static canConvertToInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)Z
    .locals 8

    sget v0, Lh4/j;->a:I

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-wide/32 v4, -0x80000000

    cmp-long p0, v4, v2

    if-gtz p0, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long p0, v2, v6

    if-gtz p0, :cond_3

    if-eqz p1, :cond_1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    move-wide p0, v0

    :goto_1
    cmp-long v2, v4, p0

    if-gtz v2, :cond_3

    cmp-long p0, p0, v6

    if-gtz p0, :cond_3

    if-eqz p2, :cond_2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :cond_2
    cmp-long p0, v4, v0

    if-gtz p0, :cond_3

    cmp-long p0, v0, v6

    if-gtz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private copyOf([Lorg/apache/commons/compress/archivers/zip/v0;I)[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/compress/archivers/zip/v0;

    return-object p0
.end method

.method private findMatching(Lorg/apache/commons/compress/archivers/zip/d1;Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/d1;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;)",
            "Lorg/apache/commons/compress/archivers/zip/v0;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/m0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/compress/archivers/zip/m0;-><init>(Ljava/io/Serializable;I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/v0;

    return-object p0
.end method

.method private findUnparseable(Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/v0;",
            ">;)",
            "Lorg/apache/commons/compress/archivers/zip/v0;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/n0;

    const/4 v0, 0x0

    const-class v1, Lorg/apache/commons/compress/archivers/zip/x;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/n0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/v0;

    return-object p0
.end method

.method private getAllExtraFields()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-ne v0, v1, :cond_0

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->copyOf([Lorg/apache/commons/compress/archivers/zip/v0;I)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMergedFields()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getMergedFields()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->copyOf([Lorg/apache/commons/compress/archivers/zip/v0;I)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    array-length v1, v1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    aput-object p0, v0, v1

    return-object v0
.end method

.method private getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getParseableExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-ne v0, v1, :cond_0

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->copyOf([Lorg/apache/commons/compress/archivers/zip/v0;I)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getParseableExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    :cond_0
    return-object p0
.end method

.method private getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/v0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/x;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-array v0, v1, [Lorg/apache/commons/compress/archivers/zip/v0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    array-length v2, v0

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->copyOf([Lorg/apache/commons/compress/archivers/zip/v0;I)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    :goto_0
    return-void
.end method

.method private internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/compress/archivers/zip/d1;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    array-length p1, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_3

    return-void

    :cond_3
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/archivers/zip/v0;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    return-void
.end method

.method private internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 2

    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->time:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->lastModifiedDateSet:Z

    return-void
.end method

.method private static isDirectoryEntryName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findMatching$0(Lorg/apache/commons/compress/archivers/zip/d1;Lorg/apache/commons/compress/archivers/zip/v0;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/d1;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;Z)V
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;)V

    goto/16 :goto_5

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/v0;->d()[B

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/v0;->a()[B

    move-result-object v3

    :goto_2
    if-eqz p2, :cond_4

    :try_start_0
    array-length v5, v3

    invoke-interface {v4, v1, v5, v3}, Lorg/apache/commons/compress/archivers/zip/v0;->f(II[B)V

    goto :goto_4

    :cond_4
    array-length v5, v3

    invoke-interface {v4, v1, v5, v3}, Lorg/apache/commons/compress/archivers/zip/v0;->e(II[B)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/y;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/commons/compress/archivers/zip/y;->c:Lorg/apache/commons/compress/archivers/zip/d1;

    if-eqz p2, :cond_5

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object v3

    iput-object v3, v5, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/v0;->a()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object v3

    iput-object v3, v5, Lorg/apache/commons/compress/archivers/zip/y;->x:[B

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/v0;->d()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object v6

    iput-object v6, v5, Lorg/apache/commons/compress/archivers/zip/y;->r:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/g1;->c([B)[B

    move-result-object v3

    iput-object v3, v5, Lorg/apache/commons/compress/archivers/zip/y;->x:[B

    :goto_3
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/o0;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/zip/o0;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    :goto_5
    return-void
.end method

.method private parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFieldFactory:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/o0$a;

    invoke-direct {v0, p0, p3}, Lorg/apache/commons/compress/archivers/zip/o0$a;-><init>(Lorg/apache/commons/compress/archivers/zip/o0;Lorg/apache/commons/compress/archivers/zip/f;)V

    invoke-static {p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/j;->b([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/j;->b([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0
.end method

.method private requiresExtraTimeFields()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->lastModifiedDateSet:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private varargs setAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 2

    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p1, v0, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    :cond_0
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-super {p0, p2}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p2

    invoke-super {p0, p2}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraTimeFields()V

    return-void
.end method

.method private setExtraTimeFields()V
    .locals 4

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/h0;->d1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/b0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->requiresExtraTimeFields()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->canConvertToInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->addInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->addNTFSTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    return-void
.end method

.method private static toDirectoryEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->isDirectoryEntryName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-static {p0, v0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->toDirectoryEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static varargs toEntryName(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->toDirectoryEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private updateTimeFieldsFromExtraFields()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->updateTimeFromExtendedTimestampField()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->updateTimeFromNtfsField()V

    return-void
.end method

.method private updateTimeFromExtendedTimestampField()V
    .locals 5

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/h0;->d1:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/h0;

    iget-boolean v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->Z:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v1, :cond_0

    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int v1, v3

    int-to-long v3, v1

    sget v1, Lh4/j;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    :cond_1
    iget-boolean v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->x:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->b1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v1, :cond_2

    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int v1, v3

    int-to-long v3, v1

    sget v1, Lh4/j;->a:I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v1}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    :cond_3
    iget-boolean v1, v0, Lorg/apache/commons/compress/archivers/zip/h0;->y:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/h0;->c1:Lorg/apache/commons/compress/archivers/zip/b1;

    if-eqz v0, :cond_4

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/zip/b1;->c:J

    long-to-int v0, v0

    int-to-long v0, v0

    sget v2, Lh4/j;->a:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    invoke-super {p0, v2}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    :cond_5
    return-void
.end method

.method private updateTimeFromNtfsField()V
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/b0;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/commons/compress/archivers/zip/b0;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/b0;

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/b0;->c:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/b0;->i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/b0;->r:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/b0;->i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    :cond_1
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/b0;->x:Lorg/apache/commons/compress/archivers/zip/s0;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/b0;->i(Lorg/apache/commons/compress/archivers/zip/s0;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    :cond_2
    return-void
.end method


# virtual methods
.method public addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V
    .locals 4

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/x;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    array-length v2, v0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    new-array v2, v2, [Lorg/apache/commons/compress/archivers/zip/v0;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    if-eqz v0, :cond_3

    array-length p1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, v3, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    return-void
.end method

.method public addExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/v0;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setInternalAttributes(I)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExternalAttributes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->setExternalAttributes(J)V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    if-nez v3, :cond_4

    move-object v3, v4

    :cond_4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getInternalAttributes()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getInternalAttributes()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getPlatform()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getPlatform()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExternalAttributes()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getExternalAttributes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getMethod()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getCentralDirectoryExtra()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getCentralDirectoryExtra()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalFileDataExtra()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalFileDataExtra()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->localHeaderOffset:J

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/zip/o0;->localHeaderOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->dataOffset:J

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/zip/o0;->dataOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/o0;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/l;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getAlignment()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->alignment:I

    return p0
.end method

.method public getCentralDirectoryExtra()[B
    .locals 11

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    instance-of v3, v3, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 v4, v0, -0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    mul-int/lit8 v5, v4, 0x4

    array-length v6, p0

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, p0, v7

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/v0;->g()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v8

    iget v8, v8, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    add-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    new-array v5, v5, [B

    move v6, v2

    move v7, v6

    :goto_3
    if-ge v6, v4, :cond_4

    aget-object v8, p0, v6

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/d1;->a()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v8, p0, v6

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/v0;->g()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/d1;->a()[B

    move-result-object v8

    add-int/lit8 v10, v7, 0x2

    invoke-static {v8, v2, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x4

    aget-object v8, p0, v6

    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/v0;->a()[B

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v9, v8

    invoke-static {v8, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    add-int/2addr v7, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/zip/v0;->a()[B

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    invoke-static {p0, v2, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v5
.end method

.method public getCommentSource()Lorg/apache/commons/compress/archivers/zip/o0$b;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->commentSource:Lorg/apache/commons/compress/archivers/zip/o0$b;

    return-object p0
.end method

.method public getDataOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->dataOffset:J

    return-wide v0
.end method

.method public getDiskNumberStart()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->diskNumberStart:J

    return-wide v0
.end method

.method public getExternalAttributes()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 4

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/archivers/zip/d1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraFields()[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0
.end method

.method public getExtraFields(Lorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 7

    .line 3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->r:Lorg/apache/commons/compress/archivers/zip/o0$c$a;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->x:Lorg/apache/commons/compress/archivers/zip/o0$c$b;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getCentralDirectoryExtra()[B

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/v0;

    .line 13
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v4, :cond_2

    .line 14
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->findUnparseable(Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v4

    goto :goto_1

    .line 15
    :cond_2
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->findMatching(Lorg/apache/commons/compress/archivers/zip/d1;Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_4

    .line 16
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/v0;->a()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 17
    array-length v6, v5

    if-lez v6, :cond_3

    .line 18
    array-length v6, v5

    invoke-interface {v3, v2, v6, v5}, Lorg/apache/commons/compress/archivers/zip/v0;->e(II[B)V

    .line 19
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/compress/archivers/zip/v0;

    return-object p0
.end method

.method public getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/v0;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getAllExtraFields()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/l;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

    return-object p0
.end method

.method public getInternalAttributes()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->internalAttributes:I

    return p0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lh4/d;->a:[B

    :goto_0
    return-object p0
.end method

.method public getLocalHeaderOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->localHeaderOffset:J

    return-wide v0
.end method

.method public getMethod()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->method:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNameSource()Lorg/apache/commons/compress/archivers/zip/o0$d;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->nameSource:Lorg/apache/commons/compress/archivers/zip/o0$d;

    return-object p0
.end method

.method public getPlatform()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->platform:I

    return p0
.end method

.method public getRawFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->rawFlag:I

    return p0
.end method

.method public getRawName()[B
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->rawName:[B

    if-eqz p0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->lastModifiedDateSet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->time:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getExternalAttributes()J

    move-result-wide v0

    const/16 p0, 0x10

    shr-long/2addr v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getUnparseableExtraFieldData()Lorg/apache/commons/compress/archivers/zip/x;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    return-object p0
.end method

.method public getVersionMadeBy()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->versionMadeBy:I

    return p0
.end method

.method public getVersionRequired()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->versionRequired:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDirectory()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->isDirectoryEntryName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isStreamContiguous()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->isStreamContiguous:Z

    return p0
.end method

.method public isUnixSymlink()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getUnixMode()I

    move-result p0

    const v0, 0xf000

    and-int/2addr p0, v0

    const v0, 0xa000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/d1;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public removeUnparseableExtraFieldData()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public setAlignment(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->alignment:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for alignment, must be power of two and no bigger than 65535 but is "

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->r:Lorg/apache/commons/compress/archivers/zip/o0$c$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setCommentSource(Lorg/apache/commons/compress/archivers/zip/o0$b;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->commentSource:Lorg/apache/commons/compress/archivers/zip/o0$b;

    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraTimeFields()V

    return-object p0
.end method

.method public setDataOffset(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->dataOffset:J

    return-void
.end method

.method public setDiskNumberStart(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->diskNumberStart:J

    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->externalAttributes:J

    return-void
.end method

.method public setExtra()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v4, v1, -0x1

    .line 3
    aget-object v4, v0, v4

    instance-of v4, v4, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v5, v1, -0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    mul-int/lit8 v6, v5, 0x4

    .line 4
    array-length v7, v0

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v0, v8

    .line 5
    invoke-interface {v9}, Lorg/apache/commons/compress/archivers/zip/v0;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v9

    .line 6
    iget v9, v9, Lorg/apache/commons/compress/archivers/zip/d1;->c:I

    add-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 7
    :cond_2
    new-array v6, v6, [B

    move v7, v3

    move v8, v7

    :goto_3
    if-ge v7, v5, :cond_4

    .line 8
    aget-object v9, v0, v7

    invoke-interface {v9}, Lorg/apache/commons/compress/archivers/zip/v0;->c()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/d1;->a()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v3, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    aget-object v9, v0, v7

    invoke-interface {v9}, Lorg/apache/commons/compress/archivers/zip/v0;->b()Lorg/apache/commons/compress/archivers/zip/d1;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/d1;->a()[B

    move-result-object v9

    add-int/lit8 v11, v8, 0x2

    invoke-static {v9, v3, v6, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x4

    .line 10
    aget-object v9, v0, v7

    invoke-interface {v9}, Lorg/apache/commons/compress/archivers/zip/v0;->d()[B

    move-result-object v9

    if-eqz v9, :cond_3

    .line 11
    array-length v10, v9

    invoke-static {v9, v3, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length v9, v9

    add-int/2addr v8, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    sub-int/2addr v1, v2

    .line 13
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/v0;->d()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    array-length v1, v0

    invoke-static {v0, v3, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_5
    invoke-super {p0, v6}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 16
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->updateTimeFieldsFromExtraFields()V

    return-void
.end method

.method public setExtra([B)V
    .locals 3

    .line 17
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$c;->r:Lorg/apache/commons/compress/archivers/zip/o0$c$a;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/o0;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/f;)[Lorg/apache/commons/compress/archivers/zip/v0;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing extra fields for entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setExtraFields([Lorg/apache/commons/compress/archivers/zip/v0;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/x;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/x;

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/o0;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/x;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/j;->b:[Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/compress/archivers/zip/v0;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->extraFields:[Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtra()V

    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/l;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/l;

    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->internalAttributes:I

    return-void
.end method

.method public setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraTimeFields()V

    return-object p0
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraTimeFields()V

    return-object p0
.end method

.method public setLocalHeaderOffset(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->localHeaderOffset:J

    return-void
.end method

.method public setMethod(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->method:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZIP compression method can not be negative: "

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->name:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;[B)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/o0;->rawName:[B

    return-void
.end method

.method public setNameSource(Lorg/apache/commons/compress/archivers/zip/o0$d;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->nameSource:Lorg/apache/commons/compress/archivers/zip/o0$d;

    return-void
.end method

.method public setPlatform(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->platform:I

    return-void
.end method

.method public setRawFlag(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->rawFlag:I

    return-void
.end method

.method public setSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->size:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid entry size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStreamContiguous(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->isStreamContiguous:Z

    return-void
.end method

.method public setTime(J)V
    .locals 4

    const-wide v0, 0x3abd8960000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1
    sget-wide v0, Lorg/apache/commons/compress/archivers/zip/g1;->a:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/g1;->f(J)J

    move-result-wide v0

    const-wide/32 v2, 0x210000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->time:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->lastModifiedDateSet:Z

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->setExtraTimeFields()V

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Lorg/apache/commons/compress/archivers/zip/g1;->b:I

    .line 6
    :cond_2
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/o0;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    :goto_0
    return-void
.end method

.method public setTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    return-void
.end method

.method public setUnixMode(I)V
    .locals 2

    shl-int/lit8 v0, p1, 0x10

    and-int/lit16 p1, p1, 0x80

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/o0;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    :cond_1
    or-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;->setExternalAttributes(J)V

    const/4 p1, 0x3

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->platform:I

    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->versionMadeBy:I

    return-void
.end method

.method public setVersionRequired(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o0;->versionRequired:I

    return-void
.end method
