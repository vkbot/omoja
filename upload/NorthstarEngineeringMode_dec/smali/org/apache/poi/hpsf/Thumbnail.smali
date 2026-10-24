.class public final Lorg/apache/poi/hpsf/Thumbnail;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CFTAG_FMTID:I = -0x3

.field public static final CFTAG_MACINTOSH:I = -0x2

.field public static final CFTAG_NODATA:I = 0x0

.field public static final CFTAG_WINDOWS:I = -0x1

.field public static final CF_BITMAP:I = 0x2

.field public static final CF_DIB:I = 0x8

.field public static final CF_ENHMETAFILE:I = 0xe

.field public static final CF_METAFILEPICT:I = 0x3

.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240

.field public static final OFFSET_CF:I = 0x8

.field public static final OFFSET_CFTAG:I = 0x4

.field public static final OFFSET_WMFDATA:I = 0x14


# instance fields
.field private _thumbnailData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hpsf/Thumbnail;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hpsf/Thumbnail;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getClipboardFormat()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormatTag()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v0, "Clipboard Format Tag of Thumbnail must be CFTAG_WINDOWS."

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getClipboardFormatTag()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getThumbnail()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    return-object p0
.end method

.method public getThumbnailAsWMF()[B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormatTag()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormat()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object p0

    array-length v0, p0

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    sget v2, Lorg/apache/poi/hpsf/Thumbnail;->MAX_RECORD_LENGTH:I

    invoke-static {p0, v1, v0, v2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v0, "Clipboard Format of Thumbnail must be CF_METAFILEPICT."

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v0, "Clipboard Format Tag of Thumbnail must be CFTAG_WINDOWS."

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    return-void
.end method
