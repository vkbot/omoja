.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontCharset;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontCharset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum ARABIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum BALTIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum CHINESEBIG5:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum EASTEUROPE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum GB2312:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum GREEK:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum HANGUL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum HEBREW:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum JOHAB:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum MAC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum OEM:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum RUSSIAN:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum SHIFTJIS:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum THAI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum TURKISH:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum VIETNAMESE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field private static _table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private nativeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v0, v1

    const-string v2, "ANSI"

    const/4 v15, 0x0

    const-string v14, "Cp1252"

    invoke-direct {v1, v2, v15, v15, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v1, v2

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, ""

    const-string v6, "SYMBOL"

    invoke-direct {v3, v6, v4, v4, v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v3, v4

    const/16 v5, 0x4d

    const-string v6, "MacRoman"

    const-string v7, "MAC"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->MAC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v4, v5

    const/16 v6, 0x80

    const-string v7, "Shift_JIS"

    const-string v8, "SHIFTJIS"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SHIFTJIS:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v5, v6

    const/16 v7, 0x81

    const-string v8, "cp949"

    const-string v9, "HANGUL"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v10, v7, v8}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->HANGUL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v7, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v6, v7

    const/16 v8, 0x82

    const-string/jumbo v9, "x-Johab"

    const-string v10, "JOHAB"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v11, v8, v9}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->JOHAB:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v8, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v7, v8

    const/4 v9, 0x7

    const/16 v10, 0x86

    const-string v11, "GB2312"

    invoke-direct {v8, v11, v9, v10, v11}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->GB2312:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v9, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v8, v9

    const/16 v10, 0x88

    const-string v11, "Big5"

    const-string v12, "CHINESEBIG5"

    const/16 v13, 0x8

    invoke-direct {v9, v12, v13, v10, v11}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->CHINESEBIG5:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v10, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v9, v10

    const/16 v11, 0xa1

    const-string v12, "Cp1253"

    const-string v13, "GREEK"

    const/16 v15, 0x9

    invoke-direct {v10, v13, v15, v11, v12}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->GREEK:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v11, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v10, v11

    const/16 v12, 0xa2

    const-string v13, "Cp1254"

    const-string v15, "TURKISH"

    move-object/from16 v17, v14

    const/16 v14, 0xa

    invoke-direct {v11, v15, v14, v12, v13}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->TURKISH:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v11, v12

    const/16 v13, 0xa3

    const-string v14, "Cp1258"

    const-string v15, "VIETNAMESE"

    move-object/from16 v19, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->VIETNAMESE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v12, v0

    const/16 v13, 0xb1

    const-string v14, "Cp1255"

    const-string v15, "HEBREW"

    move-object/from16 v20, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v13, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->HEBREW:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object v13, v0

    const/16 v1, 0xb2

    const-string v14, "Cp1256"

    const-string v15, "ARABIC"

    move-object/from16 v21, v2

    const/16 v2, 0xd

    invoke-direct {v0, v15, v2, v1, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ARABIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object/from16 v1, v17

    move-object v14, v0

    const/16 v2, 0xba

    const-string v15, "Cp1257"

    move-object/from16 v22, v3

    const-string v3, "BALTIC"

    move-object/from16 v23, v4

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v2, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->BALTIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v24, 0x0

    move-object v15, v0

    const/16 v2, 0xcc

    const-string v3, "Cp1251"

    const-string v4, "RUSSIAN"

    move-object/from16 v25, v5

    const/16 v5, 0xf

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->RUSSIAN:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object/from16 v16, v0

    const/16 v2, 0xde

    const-string/jumbo v3, "x-windows-874"

    const-string v4, "THAI"

    const/16 v5, 0x10

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->THAI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object/from16 v17, v0

    const/16 v2, 0xee

    const-string v3, "Cp1250"

    const-string v4, "EASTEUROPE"

    const/16 v5, 0x11

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->EASTEUROPE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object/from16 v18, v0

    const/16 v2, 0x12

    const/16 v3, 0xff

    const-string v4, "OEM"

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->OEM:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v25

    filled-new-array/range {v0 .. v18}, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->values()[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v24

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {v2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result v4

    aput-object v2, v3, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->nativeId:I

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-class p1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {p1}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object p1

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string p2, "Unsupported charset: {}"

    invoke-interface {p1, p4, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 2
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getNativeId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->nativeId:I

    return p0
.end method
