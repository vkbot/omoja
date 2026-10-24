.class public Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PictureData;


# static fields
.field public static final FORMAT_MASK:S = -0x10s

.field public static final MSOBI_DIB:S = 0x7a80s

.field public static final MSOBI_EMF:S = 0x3d40s

.field public static final MSOBI_JPEG:S = 0x46a0s

.field public static final MSOBI_PICT:S = 0x5420s

.field public static final MSOBI_PNG:S = 0x6e00s

.field public static final MSOBI_WMF:S = 0x2160s


# instance fields
.field private final blip:Lorg/apache/poi/ddf/EscherBlipRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/image/ImageHeaderPNG;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/image/ImageHeaderPNG;-><init>([B)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/image/ImageHeaderPNG;->extractPNG()[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sub-int/2addr p0, v0

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData$1;->$SwitchMap$org$apache$poi$ddf$EscherRecordTypes:[I

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "image/unknown"

    return-object p0

    :pswitch_0
    const-string p0, "image/tiff"

    return-object p0

    :pswitch_1
    const-string p0, "image/bmp"

    return-object p0

    :pswitch_2
    const-string p0, "image/jpeg"

    return-object p0

    :pswitch_3
    const-string p0, "image/png"

    return-object p0

    :pswitch_4
    const-string p0, "image/x-pict"

    return-object p0

    :pswitch_5
    const-string p0, "image/x-emf"

    return-object p0

    :pswitch_6
    const-string p0, "image/x-wmf"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPictureType()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData$1;->$SwitchMap$org$apache$poi$ddf$EscherRecordTypes:[I

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData$1;->$SwitchMap$org$apache$poi$ddf$EscherRecordTypes:[I

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "tif"

    return-object p0

    :pswitch_1
    const-string p0, "dib"

    return-object p0

    :pswitch_2
    const-string p0, "jpeg"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "png"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "pict"

    return-object p0

    :pswitch_5
    const-string p0, "emf"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "wmf"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
