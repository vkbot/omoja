.class public final Lorg/apache/poi/hssf/record/cf/FontFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final CANCELLATION:Lorg/apache/poi/util/BitField;

.field public static final FONT_CELL_HEIGHT_PRESERVED:I = -0x1

.field private static final FONT_WEIGHT_BOLD:S = 0x2bcs

.field private static final FONT_WEIGHT_NORMAL:S = 0x190s

.field private static final OFFSET_ESCAPEMENT_TYPE:I = 0x4a

.field private static final OFFSET_ESCAPEMENT_TYPE_MODIFIED:I = 0x5c

.field private static final OFFSET_FONT_COLOR_INDEX:I = 0x50

.field private static final OFFSET_FONT_FORMATING_END:I = 0x74

.field private static final OFFSET_FONT_HEIGHT:I = 0x40

.field private static final OFFSET_FONT_NAME:I = 0x0

.field private static final OFFSET_FONT_OPTIONS:I = 0x44

.field private static final OFFSET_FONT_WEIGHT:I = 0x48

.field private static final OFFSET_FONT_WEIGHT_MODIFIED:I = 0x64

.field private static final OFFSET_NOT_USED1:I = 0x68

.field private static final OFFSET_NOT_USED2:I = 0x6c

.field private static final OFFSET_NOT_USED3:I = 0x70

.field private static final OFFSET_OPTION_FLAGS:I = 0x58

.field private static final OFFSET_UNDERLINE_TYPE:I = 0x4c

.field private static final OFFSET_UNDERLINE_TYPE_MODIFIED:I = 0x60

.field private static final OUTLINE:Lorg/apache/poi/util/BitField;

.field private static final POSTURE:Lorg/apache/poi/util/BitField;

.field private static final RAW_DATA_SIZE:I = 0x76

.field private static final SHADOW:Lorg/apache/poi/util/BitField;


# instance fields
.field private final _rawData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->POSTURE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->OUTLINE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->SHADOW:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->CANCELLATION:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontHeight(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setItalic(Z)V

    .line 4
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontWieghtModified(Z)V

    .line 5
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOutline(Z)V

    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShadow(Z)V

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setStrikeout(Z)V

    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementType(S)V

    .line 9
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineType(S)V

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontColorIndex(S)V

    .line 11
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontStyleModified(Z)V

    .line 12
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOutlineModified(Z)V

    .line 13
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontShadowModified(Z)V

    .line 14
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontCancellationModified(Z)V

    .line 15
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    .line 16
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineTypeModified(Z)V

    .line 17
    invoke-direct {p0, v1, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    const/16 v0, 0x68

    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    const/16 v0, 0x6c

    .line 19
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    const/16 v0, 0x70

    const v1, 0x7fffffff

    .line 20
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    const/16 v0, 0x74

    .line 21
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    .line 25
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    .line 23
    iget-object p0, p1, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/cf/FontFormatting;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->lambda$getGenericProperties$1()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/cf/FontFormatting;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private getFontOption(Lorg/apache/poi/util/BitField;)Z
    .locals 1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method private getInt(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getShort(I)S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Number;
    .locals 1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private setFontOption(ZLorg/apache/poi/util/BitField;)V
    .locals 2

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method private setFontWeight(S)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    return-void
.end method

.method private setInt(II)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result v1

    invoke-virtual {p2, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method private setShort(II)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    int-to-short p2, p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->copy()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/FontFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V

    return-object v0
.end method

.method public getDataLength()I
    .locals 0

    const/16 p0, 0x76

    return p0
.end method

.method public getEscapementType()S
    .locals 1

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getShort(I)S

    move-result p0

    return p0
.end method

.method public getFontColorIndex()S
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getFontHeight()I
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getFontWeight()S
    .locals 1

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getShort(I)S

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lh5/j;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lh5/j;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string v4, "fontHeight"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/k;

    invoke-direct {v2, v0, v3}, Lh5/k;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const/4 v4, 0x4

    new-array v5, v4, [Lorg/apache/poi/util/BitField;

    sget-object v6, Lorg/apache/poi/hssf/record/cf/FontFormatting;->POSTURE:Lorg/apache/poi/util/BitField;

    aput-object v6, v5, v3

    sget-object v7, Lorg/apache/poi/hssf/record/cf/FontFormatting;->OUTLINE:Lorg/apache/poi/util/BitField;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    sget-object v9, Lorg/apache/poi/hssf/record/cf/FontFormatting;->SHADOW:Lorg/apache/poi/util/BitField;

    const/4 v10, 0x2

    aput-object v9, v5, v10

    sget-object v11, Lorg/apache/poi/hssf/record/cf/FontFormatting;->CANCELLATION:Lorg/apache/poi/util/BitField;

    const/4 v12, 0x3

    aput-object v11, v5, v12

    const-string v13, "SHADOW_MODIFIED"

    const-string v14, "STRUCKOUT_MODIFIED"

    const-string v15, "POSTURE_MODIFIED"

    const-string v12, "OUTLINE_MODIFIED"

    filled-new-array {v15, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v5, v12}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string/jumbo v5, "options"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/l;

    invoke-direct {v2, v0, v3}, Lh5/l;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    new-array v4, v4, [Lorg/apache/poi/util/BitField;

    aput-object v6, v4, v3

    aput-object v7, v4, v8

    aput-object v9, v4, v10

    const/4 v3, 0x3

    aput-object v11, v4, v3

    const-string v3, "SHADOW"

    const-string v5, "STRUCKOUT"

    const-string v6, "ITALIC"

    const-string v7, "OUTLINE"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v3, "fontOptions"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/j;

    invoke-direct {v2, v0, v8}, Lh5/j;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string v3, "fontWEightModified"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/k;

    invoke-direct {v2, v0, v8}, Lh5/k;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const/16 v3, 0x190

    const/16 v4, 0x2bc

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-string v4, "NORMAL"

    const-string v5, "BOLD"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v3, "fontWeight"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/l;

    invoke-direct {v2, v0, v8}, Lh5/l;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string v3, "escapementTypeModified"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/j;

    invoke-direct {v2, v0, v10}, Lh5/j;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string v3, "escapementType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/k;

    invoke-direct {v2, v0, v10}, Lh5/k;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string/jumbo v3, "underlineTypeModified"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/l;

    invoke-direct {v2, v0, v10}, Lh5/l;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string/jumbo v3, "underlineType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh5/j;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lh5/j;-><init>(Lorg/apache/poi/hssf/record/cf/FontFormatting;I)V

    const-string v0, "colorIndex"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRawRecord()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->_rawData:[B

    return-object p0
.end method

.method public getUnderlineType()S
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getShort(I)S

    move-result p0

    return p0
.end method

.method public isBold()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result p0

    const/16 v0, 0x2bc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEscapementTypeModified()Z
    .locals 1

    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFontCancellationModified()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->CANCELLATION:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isFontOutlineModified()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->OUTLINE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isFontShadowModified()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->SHADOW:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isFontStyleModified()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->POSTURE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isFontWeightModified()Z
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItalic()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->POSTURE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isOutlineOn()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->OUTLINE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isShadowOn()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->SHADOW:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isStruckout()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->CANCELLATION:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontOption(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isUnderlineTypeModified()Z
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getInt(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBold(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x2bc

    goto :goto_0

    :cond_0
    const/16 p1, 0x190

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontWeight(S)V

    return-void
.end method

.method public setEscapementType(S)V
    .locals 1

    const/16 v0, 0x4a

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    return-void
.end method

.method public setEscapementTypeModified(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x5c

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method public setFontCancellationModified(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->CANCELLATION:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setFontColorIndex(S)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method public setFontHeight(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method public setFontOutlineModified(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->OUTLINE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setFontShadowModified(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->SHADOW:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setFontStyleModified(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->POSTURE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setFontWieghtModified(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->POSTURE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setOutline(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->OUTLINE:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->SHADOW:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setStrikeout(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/FontFormatting;->CANCELLATION:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOption(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setUnderlineType(S)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShort(II)V

    return-void
.end method

.method public setUnderlineTypeModified(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setInt(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
