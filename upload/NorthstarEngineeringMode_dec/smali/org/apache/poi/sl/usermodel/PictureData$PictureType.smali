.class public final enum Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PictureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/PictureData$PictureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum CLIENT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum CMYKJPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum ERROR:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum UNKNOWN:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final extension:Ljava/lang/String;

.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 42

    new-instance v8, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v7, v8

    const-string v1, "EMF"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "image/x-emf"

    const-string v6, ".emf"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v8, v0

    const-string v10, "WMF"

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x3

    const-string v14, "image/x-wmf"

    const-string v15, ".wmf"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v9, v0

    const-string v17, "PICT"

    const/16 v18, 0x2

    const/16 v19, 0x4

    const/16 v20, 0x4

    const-string v21, "image/x-pict"

    const-string v22, ".pict"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v10, v0

    const-string v24, "JPEG"

    const/16 v25, 0x3

    const/16 v26, 0x5

    const/16 v27, 0x5

    const-string v28, "image/jpeg"

    const-string v29, ".jpg"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v11, v0

    const-string v13, "PNG"

    const/4 v14, 0x4

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-string v17, "image/png"

    const-string v18, ".png"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v12, v0

    const-string v20, "DIB"

    const/16 v21, 0x5

    const/16 v22, 0x7

    const/16 v23, 0x7

    const-string v24, "image/dib"

    const-string v25, ".dib"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v13, v0

    const-string v27, "GIF"

    const/16 v28, 0x6

    const/16 v29, -0x1

    const/16 v30, 0x8

    const-string v31, "image/gif"

    const-string v32, ".gif"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v32}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v14, v0

    const-string v16, "TIFF"

    const/16 v17, 0x7

    const/16 v18, 0x11

    const/16 v19, 0x9

    const-string v20, "image/tiff"

    const-string v21, ".tif"

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object v15, v0

    const-string v23, "EPS"

    const/16 v24, 0x8

    const/16 v25, -0x1

    const/16 v26, 0xa

    const-string v27, "image/x-eps"

    const-string v28, ".eps"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v16, v0

    const-string v30, "BMP"

    const/16 v31, 0x9

    const/16 v32, -0x1

    const/16 v33, 0xb

    const-string v34, "image/x-ms-bmp"

    const-string v35, ".bmp"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v35}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v17, v0

    const-string v19, "WPG"

    const/16 v20, 0xa

    const/16 v21, -0x1

    const/16 v22, 0xc

    const-string v23, "image/x-wpg"

    const-string v24, ".wpg"

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v18, v0

    const-string v26, "WDP"

    const/16 v27, 0xb

    const/16 v28, -0x1

    const/16 v29, 0xd

    const-string v30, "image/vnd.ms-photo"

    const-string v31, ".wdp"

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v31}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v19, v0

    const-string v33, "SVG"

    const/16 v34, 0xc

    const/16 v35, -0x1

    const/16 v36, -0x1

    const-string v37, "image/svg+xml"

    const-string v38, ".svg"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v38}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->SVG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v20, v0

    const-string v22, "UNKNOWN"

    const/16 v23, 0xd

    const/16 v24, 0x1

    const/16 v25, -0x1

    const-string v26, ""

    const-string v27, ".dat"

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v27}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->UNKNOWN:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v21, v0

    const-string v29, "ERROR"

    const/16 v30, 0xe

    const/16 v31, 0x0

    const/16 v32, -0x1

    const-string v33, ""

    const-string v34, ".dat"

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v34}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ERROR:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v22, v0

    const-string v36, "CMYKJPEG"

    const/16 v37, 0xf

    const/16 v38, 0x12

    const/16 v39, -0x1

    const-string v40, "image/jpeg"

    const-string v41, ".jpg"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v41}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->CMYKJPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-object/from16 v23, v0

    const-string v25, "CLIENT"

    const/16 v26, 0x10

    const/16 v27, 0x20

    const/16 v28, -0x1

    const-string v29, ""

    const-string v30, ".dat"

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->CLIENT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    filled-new-array/range {v7 .. v23}, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->$VALUES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ooxmlId:I

    iput-object p5, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->extension:Ljava/lang/String;

    return-void
.end method

.method public static forNativeID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->values()[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->CLIENT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget v1, v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    if-lt p0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->UNKNOWN:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    :goto_1
    return-object v0
.end method

.method public static forOoxmlID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->values()[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->$VALUES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0
.end method
