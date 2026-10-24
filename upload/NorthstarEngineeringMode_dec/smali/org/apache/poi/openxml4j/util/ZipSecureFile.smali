.class public Lorg/apache/poi/openxml4j/util/ZipSecureFile;
.super Lorg/apache/commons/compress/archivers/zip/a1;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final DEFAULT_GRACE_ENTRY_SIZE:J = 0x19000L

.field static final DEFAULT_MAX_ENTRY_SIZE:J = 0xffffffffL

.field static final DEFAULT_MAX_FILE_COUNT:J = 0x3e8L

.field static final DEFAULT_MAX_TEXT_SIZE:J = 0xa00000L

.field static GRACE_ENTRY_SIZE:J = 0x0L

.field private static final LOG:La5/d;

.field static MAX_ENTRY_SIZE:J = 0x0L

.field static MAX_FILE_COUNT:J = 0x0L

.field public static final MAX_FILE_COUNT_MSG:Ljava/lang/String; = "The file appears to be potentially malicious. This file embeds more internal file entries than expected.\nThis may indicates that the file could pose a security risk.\nYou can adjust this limit via ZipSecureFile.setMaxFileCount() if you need to work with files which are very large.\nLimits: MAX_FILE_COUNT: %d"

.field private static MAX_TEXT_SIZE:J

.field static MIN_INFLATE_RATIO:D


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:La5/d;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    const-wide v0, 0xffffffffL

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_FILE_COUNT:J

    const-wide/32 v0, 0x19000

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->GRACE_ENTRY_SIZE:J

    const-wide/32 v0, 0xa00000

    sput-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static getGraceEntrySize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->GRACE_ENTRY_SIZE:J

    return-wide v0
.end method

.method public static getMaxEntrySize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-wide v0
.end method

.method public static getMaxFileCount()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_FILE_COUNT:J

    return-wide v0
.end method

.method public static getMaxTextSize()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-wide v0
.end method

.method public static getMinInflateRatio()D
    .locals 2

    sget-wide v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-wide v0
.end method

.method public static setGraceEntrySize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->GRACE_ENTRY_SIZE:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Grace entry size must be greater than or equal to zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMaxEntrySize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:La5/d;

    const-string/jumbo v1, "setting max entry size greater than 4Gb can be risky; set to {} bytes"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, La5/d;->d(Ljava/io/Serializable;Ljava/lang/String;)V

    :cond_0
    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_ENTRY_SIZE:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max entry size must be greater than or equal to zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMaxFileCount(J)V
    .locals 0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_FILE_COUNT:J

    return-void
.end method

.method public static setMaxTextSize(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0xa00000

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    sget-object v2, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->LOG:La5/d;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "setting max text size greater than {} can be risky; set to {} chars"

    invoke-interface {v2, v0, v3, v1}, La5/d;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MAX_TEXT_SIZE:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max text size must be greater than or equal to zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMinInflateRatio(D)V
    .locals 0

    sput-wide p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->MIN_INFLATE_RATIO:D

    return-void
.end method


# virtual methods
.method public bridge synthetic getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a1;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->setEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "7.0.0"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->fileName:Ljava/lang/String;

    return-object p0
.end method
