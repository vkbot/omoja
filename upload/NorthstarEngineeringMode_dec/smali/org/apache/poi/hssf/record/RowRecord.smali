.class public final Lorg/apache/poi/hssf/record/RowRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ENCODED_SIZE:I = 0x14

.field private static final OPTION_BITS_ALWAYS_SET:I = 0x100

.field private static final badFontHeight:Lorg/apache/poi/util/BitField;

.field private static final bottomBorder:Lorg/apache/poi/util/BitField;

.field private static final collapsed:Lorg/apache/poi/util/BitField;

.field private static final formatted:Lorg/apache/poi/util/BitField;

.field private static final outlineLevel:Lorg/apache/poi/util/BitField;

.field private static final phoneticGuide:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x208s

.field private static final topBorder:Lorg/apache/poi/util/BitField;

.field private static final xfIndex:Lorg/apache/poi/util/BitField;

.field private static final zeroHeight:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_row_number:I

.field private field_2_first_col:I

.field private field_3_last_col:I

.field private field_4_height:S

.field private field_5_optimize:S

.field private field_6_reserved:S

.field private field_7_option_flags:I

.field private field_8_option_flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->collapsed:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xfff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoneticGuide:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    const/16 p1, 0xff

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    const/4 p1, 0x0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    const/16 p1, 0x100

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    const/16 p1, 0xf

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->setEmpty()V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid row number ("

    const-string v1, ")"

    .line 13
    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 26
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    if-ltz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    .line 28
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    .line 29
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid row number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    const-string v1, " found in InputStream"

    .line 35
    invoke-static {v0, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 9
    iget p1, p1, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/RowRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RowRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->copy()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->copy()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(Lorg/apache/poi/hssf/record/RowRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->copy()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p0

    return-object p0
.end method

.method public getBadFontHeight()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getBottomBorder()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getColapsed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getFirstCol()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    return p0
.end method

.method public getFormatted()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/z2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/z2;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string/jumbo v3, "rowNumber"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/a3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/a3;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string v3, "firstCol"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/b3;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/b3;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string v3, "lastCol"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z2;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/z2;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string v4, "height"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/a3;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/a3;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string/jumbo v4, "optimized"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/b3;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/b3;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string/jumbo v4, "reserved"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z2;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/z2;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/apache/poi/util/BitField;

    sget-object v6, Lorg/apache/poi/hssf/record/RowRecord;->collapsed:Lorg/apache/poi/util/BitField;

    aput-object v6, v5, v2

    sget-object v6, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    aput-object v6, v5, v3

    sget-object v6, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    aput-object v6, v5, v4

    sget-object v6, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string v6, "BAD_FONT_HEIGHT"

    const-string v8, "FORMATTED"

    const-string v9, "COLAPSED"

    const-string v10, "ZERO_HEIGHT"

    filled-new-array {v9, v10, v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string/jumbo v5, "options"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/a3;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/a3;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string/jumbo v5, "outlineLevel"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/b3;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/b3;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    new-array v5, v7, [Lorg/apache/poi/util/BitField;

    sget-object v6, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    aput-object v6, v5, v2

    sget-object v2, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    aput-object v2, v5, v3

    sget-object v2, Lorg/apache/poi/hssf/record/RowRecord;->phoneticGuide:Lorg/apache/poi/util/BitField;

    aput-object v2, v5, v4

    const-string v2, "BOTTOM_BORDER"

    const-string v3, "PHOENETIC_GUIDE"

    const-string v4, "TOP_BORDER"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string/jumbo v2, "optionFlags2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/z2;

    invoke-direct {v1, p0, v7}, Lorg/apache/poi/hssf/record/z2;-><init>(Lorg/apache/poi/hssf/record/RowRecord;I)V

    const-string/jumbo p0, "xfIndex"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->ROW:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    return p0
.end method

.method public getLastCol()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return p0
.end method

.method public getOptimize()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    return p0
.end method

.method public getOptionFlags()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    int-to-short p0, p0

    return p0
.end method

.method public getOptionFlags2()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    int-to-short p0, p0

    return p0
.end method

.method public getOutlineLevel()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getPhoeneticGuide()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoneticGuide:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getRowNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x208

    return p0
.end method

.method public getTopBorder()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getXFIndex()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getZeroHeight()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iget p0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    or-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    :goto_1
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptimize()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags2()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setBadFontHeight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setBottomBorder(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setColapsed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setEmpty()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return-void
.end method

.method public setFirstCol(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    return-void
.end method

.method public setFormatted(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    return-void
.end method

.method public setLastCol(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return-void
.end method

.method public setOptimize(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    return-void
.end method

.method public setOutlineLevel(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setPhoeneticGuide(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoneticGuide:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setRowNumber(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    return-void
.end method

.method public setTopBorder(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setXFIndex(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method
