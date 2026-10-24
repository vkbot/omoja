.class public final enum Lorg/apache/poi/common/usermodel/PictureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/PictureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum BMP:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum CLIENT:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum CMYKJPEG:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum DIB:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum EMF:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum EPS:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum ERROR:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum GIF:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum JPEG:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum PICT:Lorg/apache/poi/common/usermodel/PictureType;

.field private static final PICTURE_TYPE_BY_OOXML_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/common/usermodel/PictureType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PNG:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum SVG:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum TIFF:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum WDP:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum WMF:Lorg/apache/poi/common/usermodel/PictureType;

.field public static final enum WPG:Lorg/apache/poi/common/usermodel/PictureType;


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final extension:Ljava/lang/String;

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v7, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v6, v7

    const-string v1, "EMF"

    const/4 v2, 0x0

    const-string v3, "image/x-emf"

    const-string v4, ".emf"

    const/4 v5, 0x2

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/common/usermodel/PictureType;->EMF:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v7, v0

    const-string v9, "WMF"

    const/4 v10, 0x1

    const-string v11, "image/x-wmf"

    const-string v12, ".wmf"

    const/4 v13, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->WMF:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v8, v0

    const-string v15, "PICT"

    const/16 v16, 0x2

    const-string v17, "image/x-pict"

    const-string v18, ".pict"

    const/16 v19, 0x4

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->PICT:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v9, v0

    const-string v21, "JPEG"

    const/16 v22, 0x3

    const-string v23, "image/jpeg"

    const-string v24, ".jpg"

    const/16 v25, 0x5

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->JPEG:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v10, v0

    const-string v12, "PNG"

    const/4 v13, 0x4

    const-string v14, "image/png"

    const-string v15, ".png"

    const/16 v16, 0x6

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->PNG:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v11, v0

    const-string v18, "DIB"

    const/16 v19, 0x5

    const-string v20, "image/dib"

    const-string v21, ".dib"

    const/16 v22, 0x7

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->DIB:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v12, v0

    const-string v24, "GIF"

    const/16 v25, 0x6

    const-string v26, "image/gif"

    const-string v27, ".gif"

    const/16 v28, 0x8

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->GIF:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v13, v0

    const-string v15, "TIFF"

    const/16 v16, 0x7

    const-string v17, "image/tiff"

    const-string v18, ".tif"

    const/16 v19, 0x9

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->TIFF:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v14, v0

    const-string v21, "EPS"

    const/16 v22, 0x8

    const-string v23, "image/x-eps"

    const-string v24, ".eps"

    const/16 v25, 0xa

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->EPS:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object v15, v0

    const-string v27, "BMP"

    const/16 v28, 0x9

    const-string v29, "image/x-ms-bmp"

    const-string v30, ".bmp"

    const/16 v31, 0xb

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->BMP:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v16, v0

    const-string v18, "WPG"

    const/16 v19, 0xa

    const-string v20, "image/x-wpg"

    const-string v21, ".wpg"

    const/16 v22, 0xc

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->WPG:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v17, v0

    const-string v24, "WDP"

    const/16 v25, 0xb

    const-string v26, "image/vnd.ms-photo"

    const-string v27, ".wdp"

    const/16 v28, 0xd

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->WDP:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v18, v0

    const-string v30, "SVG"

    const/16 v31, 0xc

    const-string v32, "image/svg+xml"

    const-string v33, ".svg"

    const/16 v34, 0xe

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->SVG:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v19, v0

    const-string v21, "UNKNOWN"

    const/16 v22, 0xd

    const-string v23, ""

    const-string v24, ".dat"

    const/16 v25, -0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v20, v0

    const-string v27, "ERROR"

    const/16 v28, 0xe

    const-string v29, ""

    const-string v30, ".dat"

    const/16 v31, -0x1

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->ERROR:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v21, v0

    const-string v33, "CMYKJPEG"

    const/16 v34, 0xf

    const-string v35, "image/jpeg"

    const-string v36, ".jpg"

    const/16 v37, -0x1

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->CMYKJPEG:Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Lorg/apache/poi/common/usermodel/PictureType;

    move-object/from16 v22, v0

    const-string v24, "CLIENT"

    const/16 v25, 0x10

    const-string v26, ""

    const-string v27, ".dat"

    const/16 v28, -0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/common/usermodel/PictureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->CLIENT:Lorg/apache/poi/common/usermodel/PictureType;

    filled-new-array/range {v6 .. v22}, [Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->$VALUES:[Lorg/apache/poi/common/usermodel/PictureType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/common/usermodel/PictureType;->PICTURE_TYPE_BY_OOXML_ID:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/common/usermodel/PictureType;->values()[Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    const/4 v5, -0x1

    if-lt v4, v5, :cond_0

    sget-object v5, Lorg/apache/poi/common/usermodel/PictureType;->PICTURE_TYPE_BY_OOXML_ID:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/common/usermodel/PictureType;->extension:Ljava/lang/String;

    iput p5, p0, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    return-void
.end method

.method public static findByOoxmlId(I)Lorg/apache/poi/common/usermodel/PictureType;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/PictureType;->PICTURE_TYPE_BY_OOXML_ID:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/PictureType;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/PictureType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0
.end method

.method public static valueOf(Lorg/apache/poi/poifs/filesystem/FileMagic;)Lorg/apache/poi/common/usermodel/PictureType;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/common/usermodel/PictureType$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->TIFF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->EMF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->WMF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->SVG:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->PNG:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->JPEG:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->GIF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->BMP:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/PictureType;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/PictureType;->$VALUES:[Lorg/apache/poi/common/usermodel/PictureType;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/PictureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/PictureType;

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/PictureType;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public getOoxmlId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    return p0
.end method
