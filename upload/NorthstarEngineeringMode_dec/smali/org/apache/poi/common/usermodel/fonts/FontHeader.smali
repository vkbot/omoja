.class public Lorg/apache/poi/common/usermodel/fonts/FontHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseMidLine;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseArmStyle;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseStroke;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseContrast;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseWeight;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseSerif;,
        Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;
    }
.end annotation


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final FSTYPE_MASKS:[I

.field private static final FSTYPE_NAMES:[Ljava/lang/String;

.field public static final REGULAR_WEIGHT:I = 0x190


# instance fields
.field private charset:B

.field private checkSumAdjustment:I

.field private codePageRange1:I

.field private codePageRange2:I

.field private eotSize:I

.field private familyName:Ljava/lang/String;

.field private flags:I

.field private fontDataSize:I

.field private fsType:I

.field private fullName:Ljava/lang/String;

.field private italic:B

.field private magic:I

.field private final panose:[B

.field private styleName:Ljava/lang/String;

.field private unicodeRange1:I

.field private unicodeRange2:I

.field private unicodeRange3:I

.field private unicodeRange4:I

.field private version:I

.field private versionName:Ljava/lang/String;

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FLAGS_MASKS:[I

    const-string v1, "SUBSET"

    const-string v2, "TTCOMPRESSED"

    const-string v3, "FAILIFVARIATIONSIMULATED"

    const-string v4, "EMBEDEUDC"

    const-string v5, "VALIDATIONTESTS"

    const-string v6, "WEBOBJECT"

    const-string v7, "XORENCRYPTDATA"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FLAGS_NAMES:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FSTYPE_MASKS:[I

    const-string v1, "INSTALLABLE_EMBEDDING"

    const-string v2, "RESTRICTED_LICENSE_EMBEDDING"

    const-string v3, "PREVIEW_PRINT_EMBEDDING"

    const-string v4, "EDITABLE_EMBEDDING"

    const-string v5, "NO_SUBSETTING"

    const-string v6, "BITMAP_EMBEDDING_ONLY"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FSTYPE_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x10
        0x20
        0x40
        0x80
        0x10000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x4
        0x8
        0x100
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$3()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseFamily$11()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseXHeight$20()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseLetterForm$18()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseSerif$12()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseStroke$16()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->eotSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->fontDataSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->checkSumAdjustment:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->version:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->fsType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange4:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->codePageRange1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->codePageRange2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseArmStyle$17()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x6

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseContrast$15()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x4

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseFamily$11()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseLetterForm$18()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x7

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseMidLine$19()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/16 v0, 0x8

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseProportion$14()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x3

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseSerif$12()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseStroke$16()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x5

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseWeight$13()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPanoseXHeight$20()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    const/16 v0, 0x9

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseMidLine$19()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseWeight$13()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseContrast$15()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseArmStyle$17()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private readName(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p0

    int-to-long v0, p0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getPanoseProportion$14()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lorg/apache/poi/common/usermodel/fonts/FontHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bufferInit(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x3e8

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->init(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    return-object v0
.end method

.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getCharsetByte()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p0

    return-object p0
.end method

.method public getCharsetByte()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->charset:B

    return p0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 2

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontHeader$PanoseFamily:[I

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseFamily()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DECORATIVE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_MODERN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SCRIPT:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0

    :cond_2
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontHeader$PanoseSerif:[I

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseSerif()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseSerif;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_ROMAN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DONTCARE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->flags:I

    return p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v3, "eotSize"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v4, "fontDataSize"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    const/4 v4, 0x7

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v5, "version"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    sget-object v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FLAGS_MASKS:[I

    sget-object v6, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v5, "flags"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/16 v5, 0x8

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v6, "panose.familyType"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v6, "panose.serifType"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v5, "panose.weight"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/16 v5, 0x9

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v6, "panose.proportion"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v6, "panose.contrast"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v5, "panose.stroke"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "panose.armStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v5, "panose.letterForm"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v5, "panose.midLine"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "panose.xHeight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v5, "charset"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v5, "italic"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "weight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    sget-object v5, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FSTYPE_MASKS:[I

    sget-object v6, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->FSTYPE_NAMES:[Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v5, "fsType"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v5, "unicodeRange1"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "unicodeRange2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "unicodeRange3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "unicodeRange4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v3, "codePageRange1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v3, "codePageRange2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v2, "checkSumAdjustment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string v3, "familyName"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v3, "styleName"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string/jumbo v2, "versionName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    const-string p0, "fullName"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPanose()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    return-object p0
.end method

.method public getPanoseArmStyle()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseArmStyle;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseArmStyle;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseArmStyle;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseArmStyle;

    return-object p0
.end method

.method public getPanoseContrast()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseContrast;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseContrast;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseContrast;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseContrast;

    return-object p0
.end method

.method public getPanoseFamily()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    return-object p0
.end method

.method public getPanoseLetterForm()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseLetterForm;

    return-object p0
.end method

.method public getPanoseMidLine()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseMidLine;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseMidLine;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseMidLine;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/c;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/c;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseMidLine;

    return-object p0
.end method

.method public getPanoseProportion()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    return-object p0
.end method

.method public getPanoseSerif()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseSerif;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseSerif;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseSerif;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseSerif;

    return-object p0
.end method

.method public getPanoseStroke()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseStroke;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseStroke;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseStroke;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseStroke;

    return-object p0
.end method

.method public getPanoseWeight()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseWeight;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseWeight;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseWeight;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/b;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/b;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseWeight;

    return-object p0
.end method

.method public getPanoseXHeight()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;
    .locals 3

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;->values()[Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/a;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/common/usermodel/fonts/a;-><init>(Lorg/apache/poi/common/usermodel/fonts/FontHeader;I)V

    invoke-static {v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseXHeight;

    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 2

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$1;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontHeader$PanoseFamily:[I

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseFamily()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseFamily;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseProportion()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;->MODERN:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->FIXED:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getPanoseProportion()Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;->MONOSPACED:Lorg/apache/poi/common/usermodel/fonts/FontHeader$PanoseProportion;

    if-ne p0, v0, :cond_3

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->FIXED:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :goto_1
    return-object p0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->styleName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFamilyName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->weight:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->eotSize:I

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->fontDataSize:I

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->version:I

    const/high16 v1, 0x10000

    const-string v2, "not a EOT font data stream"

    if-eq v0, v1, :cond_1

    const v1, 0x20001

    if-eq v0, v1, :cond_1

    const v1, 0x20002

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->flags:I

    iget-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->panose:[B

    .line 7
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 8
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->charset:B

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->italic:B

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->weight:I

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->fsType:I

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->magic:I

    const/16 v1, 0x504c

    if-ne v0, v1, :cond_2

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange1:I

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange2:I

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange3:I

    .line 16
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->unicodeRange4:I

    .line 17
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->codePageRange1:I

    .line 18
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->codePageRange2:I

    .line 19
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->checkSumAdjustment:I

    .line 20
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 21
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 22
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 23
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 24
    invoke-direct {p0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->readName(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->familyName:Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->readName(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->styleName:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->readName(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->versionName:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->readName(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->fullName:Ljava/lang/String;

    return-void

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init([BII)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->init(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method

.method public isBold()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getWeight()I

    move-result p0

    const/16 v0, 0x190

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItalic()Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->italic:B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
