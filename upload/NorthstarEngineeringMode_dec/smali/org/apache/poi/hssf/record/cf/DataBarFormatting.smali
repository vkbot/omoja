.class public final Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final ICON_ONLY:Lorg/apache/poi/util/BitField;

.field private static final LOG:La5/d;

.field private static final REVERSED:Lorg/apache/poi/util/BitField;


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private options:B

.field private percentMax:B

.field private percentMin:B

.field private thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

.field private thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->LOG:La5/d;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 4
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 5
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->copy()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    const/16 v1, 0x64

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->LOG:La5/d;

    .line 15
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 16
    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent Minimum Percentage found {}"

    .line 17
    invoke-interface {v0, v3, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    if-ltz v0, :cond_2

    if-le v0, v1, :cond_3

    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->LOG:La5/d;

    .line 18
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 19
    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent Maximum Percentage found {}"

    .line 20
    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 22
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 23
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->copy()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    return-object v0
.end method

.method public getColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method public getDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "options"

    new-instance v1, Lh5/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh5/g;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/util/BitField;

    sget-object v4, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    aput-object v4, v3, v2

    sget-object v4, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "ICON_ONLY"

    const-string v6, "REVERSED"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v3, "color"

    new-instance v4, Lh5/h;

    invoke-direct {v4, p0, v2}, Lh5/h;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;I)V

    const-string/jumbo v6, "percentMin"

    new-instance v7, Lh5/i;

    invoke-direct {v7, p0, v2}, Lh5/i;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;I)V

    const-string/jumbo v8, "percentMax"

    new-instance v9, Lh5/g;

    invoke-direct {v9, p0, v5}, Lh5/g;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;I)V

    const-string/jumbo v10, "thresholdMin"

    new-instance v11, Lh5/h;

    invoke-direct {v11, p0, v5}, Lh5/h;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;I)V

    const-string/jumbo v12, "thresholdMax"

    new-instance v13, Lh5/i;

    invoke-direct {v13, p0, v5}, Lh5/i;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPercentMax()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return p0
.end method

.method public getPercentMin()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return p0
.end method

.method public getThresholdMax()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object p0
.end method

.method public getThresholdMin()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object p0
.end method

.method public isIconOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isReversed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setPercentMax(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return-void
.end method

.method public setPercentMin(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
