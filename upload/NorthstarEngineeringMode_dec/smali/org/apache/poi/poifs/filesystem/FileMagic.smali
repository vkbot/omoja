.class public final enum Lorg/apache/poi/poifs/filesystem/FileMagic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/filesystem/FileMagic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BIFF2:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BIFF3:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BIFF4:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum BMP:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum EMF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum GIF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum HTML:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum JPEG:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field static final MAX_PATTERN_LENGTH:I = 0x2c

.field public static final enum MSWRITE:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum PDF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum PNG:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum RTF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum TIFF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum WMF:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum WORD2:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field public static final enum XML:Lorg/apache/poi/poifs/filesystem/FileMagic;


# instance fields
.field final magic:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v1, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v0, v1

    const-wide v2, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    const-string v4, "OLE2"

    const/4 v15, 0x0

    invoke-direct {v1, v4, v15, v2, v3}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v2, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v1, v2

    const/16 v3, 0x50

    const/16 v4, 0x4b

    const/4 v12, 0x3

    const/4 v13, 0x4

    filled-new-array {v3, v4, v12, v13}, [I

    move-result-object v3

    const-string v4, "OOXML"

    const/4 v14, 0x1

    invoke-direct {v2, v4, v14, v3}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v3, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v2, v3

    const/16 v4, 0x6d

    const/16 v5, 0x6c

    const/16 v6, 0x3c

    const/16 v7, 0x3f

    const/16 v8, 0x78

    filled-new-array {v6, v7, v8, v4, v5}, [I

    move-result-object v4

    const-string v5, "XML"

    const/4 v11, 0x2

    invoke-direct {v3, v5, v11, v4}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v3, Lorg/apache/poi/poifs/filesystem/FileMagic;->XML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v4, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v3, v4

    const/16 v10, 0x8

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    const-string v6, "BIFF2"

    invoke-direct {v4, v6, v12, v5}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->BIFF2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v5, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v4, v5

    new-array v6, v10, [I

    fill-array-data v6, :array_1

    const-string v7, "BIFF3"

    invoke-direct {v5, v7, v13, v6}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v5, Lorg/apache/poi/poifs/filesystem/FileMagic;->BIFF3:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v6, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v5, v6

    new-array v7, v11, [[B

    new-array v8, v10, [B

    fill-array-data v8, :array_2

    aput-object v8, v7, v15

    new-array v8, v10, [B

    fill-array-data v8, :array_3

    aput-object v8, v7, v14

    const-string v8, "BIFF4"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v6, Lorg/apache/poi/poifs/filesystem/FileMagic;->BIFF4:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v7, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v6, v7

    new-array v8, v11, [[B

    new-array v9, v13, [B

    fill-array-data v9, :array_4

    aput-object v9, v8, v15

    new-array v9, v13, [B

    fill-array-data v9, :array_5

    aput-object v9, v8, v14

    const-string v9, "MSWRITE"

    const/4 v11, 0x6

    invoke-direct {v7, v9, v11, v8}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v7, Lorg/apache/poi/poifs/filesystem/FileMagic;->MSWRITE:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v8, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v7, v8

    const-string/jumbo v9, "{\\rtf"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v11, "RTF"

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12, v9}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v8, Lorg/apache/poi/poifs/filesystem/FileMagic;->RTF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v9, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v8, v9

    const-string v11, "%PDF"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "PDF"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v9, Lorg/apache/poi/poifs/filesystem/FileMagic;->PDF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v11, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v9, v11

    const-string v18, "<!DOCTYP"

    const-string v19, "<html"

    const-string v20, "\n\r<html"

    const-string v21, "\r\n<html"

    const-string v22, "\r<html"

    const-string v23, "\n<html"

    const-string v24, "<HTML"

    const-string v25, "\r\n<HTML"

    const-string v26, "\n\r<HTML"

    const-string v27, "\r<HTML"

    const-string v28, "\n<HTML"

    filled-new-array/range {v18 .. v28}, [Ljava/lang/String;

    move-result-object v12

    const-string v10, "HTML"

    const/16 v14, 0x9

    invoke-direct {v11, v10, v14, v12}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v11, Lorg/apache/poi/poifs/filesystem/FileMagic;->HTML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v11, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const/16 v14, 0x8

    move-object v10, v11

    const/16 v12, 0xa5

    const/16 v14, 0x2d

    const/16 v13, 0xdb

    filled-new-array {v13, v12, v14, v15}, [I

    move-result-object v12

    const-string v13, "WORD2"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v11, Lorg/apache/poi/poifs/filesystem/FileMagic;->WORD2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v12, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const/4 v13, 0x2

    move-object v11, v12

    const/4 v14, 0x4

    new-array v13, v14, [[B

    move-object/from16 v20, v0

    new-array v0, v14, [B

    fill-array-data v0, :array_6

    aput-object v0, v13, v15

    const/16 v0, 0xc

    new-array v15, v0, [B

    fill-array-data v15, :array_7

    const/16 v19, 0x1

    aput-object v15, v13, v19

    new-array v14, v14, [B

    fill-array-data v14, :array_8

    const/4 v15, 0x2

    aput-object v14, v13, v15

    new-array v14, v0, [B

    fill-array-data v14, :array_9

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string v14, "JPEG"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v12, Lorg/apache/poi/poifs/filesystem/FileMagic;->JPEG:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v13, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v12, v13

    const-string v14, "GIF87a"

    const-string v15, "GIF89a"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "GIF"

    invoke-direct {v13, v15, v0, v14}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v13, Lorg/apache/poi/poifs/filesystem/FileMagic;->GIF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object v13, v0

    const/16 v14, 0x8

    new-array v14, v14, [I

    fill-array-data v14, :array_a

    const-string v15, "PNG"

    move-object/from16 v22, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v14}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->PNG:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move/from16 v1, v19

    move-object v14, v0

    const-string v15, "II*\u0000"

    const-string v1, "MM\u0000*"

    filled-new-array {v15, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v15, "TIFF"

    move-object/from16 v23, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->TIFF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    const/4 v1, 0x0

    move-object v15, v0

    const/16 v2, 0xc6

    const/16 v1, 0x9a

    move-object/from16 v24, v3

    const/16 v3, 0xd7

    move-object/from16 v25, v4

    const/16 v4, 0xcd

    filled-new-array {v3, v4, v2, v1}, [I

    move-result-object v1

    const-string v2, "WMF"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->WMF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object/from16 v16, v0

    const/16 v1, 0x2c

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    const-string v2, "EMF"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->EMF:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object/from16 v17, v0

    const/16 v1, 0x42

    const/16 v2, 0x4d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "BMP"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->BMP:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object/from16 v18, v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    new-array v3, v2, [B

    aput-object v3, v1, v2

    const-string v2, "UNKNOWN"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/poifs/filesystem/FileMagic;-><init>(Ljava/lang/String;I[[B)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    filled-new-array/range {v0 .. v18}, [Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->$VALUES:[Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0x4
        0x0
        0x0
        0x0
        0x3f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x9
        0x2
        0x6
        0x0
        0x0
        0x0
        0x3f
        0x0
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x4t
        0x6t
        0x0t
        0x0t
        0x0t
        0x3ft
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x9t
        0x4t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x31t
        -0x42t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x32t
        -0x42t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x25t
    .end array-data

    :array_7
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x20t
        0x3ft
        0x3ft
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x12t
    .end array-data

    :array_9
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x1ft
        0x3ft
        0x3ft
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 4
        0x89
        0x50
        0x4e
        0x47
        0xd
        0xa
        0x1a
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x3f
        0x20
        0x45
        0x4d
        0x46
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/16 p2, 0x8

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 2
    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    const/4 p0, 0x0

    .line 3
    aget-object p1, p1, p0

    invoke-static {p1, p0, p3, p4}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    array-length p1, p3

    new-array p1, p1, [B

    const/4 p2, 0x0

    move v0, p2

    .line 6
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 7
    aget v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [[B

    aput-object p1, p3, p2

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    array-length p1, p3

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    .line 11
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v1, p3, p2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    add-int/lit8 v3, v0, 0x1

    .line 12
    sget-object v4, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    return-void
.end method

.method private static findMagic([B[B)Z
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    if-eq v3, v4, :cond_0

    const/16 v3, 0x3f

    if-eq v4, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static valueOf(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 3

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    const/16 v1, 0x2c

    :try_start_0
    new-array v2, v1, [B

    .line 7
    invoke-static {p0, v2, v0, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 9
    :cond_1
    :try_start_1
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 10
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0

    .line 12
    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_3

    .line 13
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public static valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 1

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 15
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "getFileMagic() only operates on streams which support mark(int)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-object p0
.end method

.method public static valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 11

    .line 2
    invoke-static {}, Lorg/apache/poi/poifs/filesystem/FileMagic;->values()[Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3
    iget-object v5, v4, Lorg/apache/poi/poifs/filesystem/FileMagic;->magic:[[B

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 4
    array-length v9, p0

    array-length v10, v8

    if-ge v9, v10, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {v8, p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->findMagic([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v4

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/filesystem/FileMagic;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->$VALUES:[Lorg/apache/poi/poifs/filesystem/FileMagic;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/filesystem/FileMagic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/filesystem/FileMagic;

    return-object v0
.end method
