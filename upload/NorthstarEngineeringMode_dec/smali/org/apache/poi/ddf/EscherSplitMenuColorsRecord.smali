.class public Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_ID:S


# instance fields
.field private field_1_color1:I

.field private field_2_color2:I

.field private field_3_color3:I

.field private field_4_color4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPLIT_MENU_COLORS:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    .line 4
    iget v0, p1, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    .line 5
    iget v0, p1, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    .line 6
    iget p1, p1, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->copy()Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->copy()Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;-><init>(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    add-int/lit8 v0, p2, 0x10

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    add-int/lit8 p2, p2, 0x14

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    add-int/lit8 p0, p3, -0x10

    if-nez p0, :cond_0

    add-int/lit8 p3, p3, 0x8

    return p3

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Expecting no remaining data but got "

    const-string p3, " byte(s)."

    invoke-static {p2, p0, p3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColor1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    return p0
.end method

.method public getColor2()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    return p0
.end method

.method public getColor3()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    return p0
.end method

.method public getColor4()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/ddf/j0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/j0;-><init>(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;I)V

    const-string v3, "color1"

    new-instance v4, Lorg/apache/poi/ddf/k0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/ddf/k0;-><init>(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;I)V

    const-string v5, "color2"

    new-instance v6, Lorg/apache/poi/ddf/d;

    const/16 v2, 0xa

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "color3"

    new-instance v8, Lorg/apache/poi/ddf/j0;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/ddf/j0;-><init>(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;I)V

    const-string v9, "color4"

    new-instance v10, Lorg/apache/poi/ddf/k0;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/ddf/k0;-><init>(Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPLIT_MENU_COLORS:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPLIT_MENU_COLORS:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p1, 0x18

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v0

    sub-int p1, p2, p1

    invoke-interface {p3, p2, v0, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordSize()I

    move-result p0

    return p0
.end method

.method public setColor1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    return-void
.end method

.method public setColor2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    return-void
.end method

.method public setColor3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    return-void
.end method

.method public setColor4(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return-void
.end method
