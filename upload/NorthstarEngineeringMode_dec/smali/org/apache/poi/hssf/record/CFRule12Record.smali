.class public final Lorg/apache/poi/hssf/record/CFRule12Record;
.super Lorg/apache/poi/hssf/record/CFRuleBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/FutureRecord;


# static fields
.field public static final sid:S = 0x87as


# instance fields
.field private color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

.field private data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

.field private ext_formatting_data:[B

.field private ext_formatting_length:I

.field private ext_opts:B

.field private filter_data:[B

.field private formula_scale:Lorg/apache/poi/ss/formula/Formula;

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

.field private priority:I

.field private template_param_length:B

.field private template_params:[B

.field private template_type:I


# direct methods
.method private constructor <init>(BB)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB)V

    .line 16
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setDefaults()V

    return-void
.end method

.method private constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 18
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setDefaults()V

    .line 19
    invoke-static {p5}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/CFRule12Record;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    .line 2
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->copy()Lorg/apache/poi/hssf/record/common/FtrHeader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    iget-object v2, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    .line 4
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 6
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    .line 9
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    .line 10
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    .line 11
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->copy()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    .line 12
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->copy()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 13
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->copy()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    .line 14
    iget-object p1, p1, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_5
    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7

    .line 20
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>()V

    .line 21
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setComparisonOperation(B)V

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 26
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v3, 0x0

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    if-nez v2, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->readFormatOptions(Lorg/apache/poi/hssf/record/RecordInputStream;)I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    sub-long/2addr v4, v2

    .line 29
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v4, v5, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    .line 30
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 31
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula1(Lorg/apache/poi/ss/formula/Formula;)V

    .line 32
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula2(Lorg/apache/poi/ss/formula/Formula;)V

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 34
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    if-eqz v0, :cond_3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->LOG:La5/d;

    .line 39
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    .line 40
    invoke-static {}, Lg5/b0;->c()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "CF Rule v12 template params length should be 0 or 16, found {}"

    .line 41
    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    goto :goto_2

    :cond_3
    :goto_1
    int-to-long v0, v0

    .line 43
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    .line 44
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 45
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 46
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 47
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    goto :goto_3

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    goto :goto_3

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 49
    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    :cond_7
    :goto_3
    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6

    .line 3
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 4
    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    .line 5
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6

    .line 6
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 7
    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    .line 8
    invoke-static {p4, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 9
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6

    .line 1
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 2
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/common/ExtendedColor;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 2

    .line 10
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    .line 13
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMin(B)V

    const/16 p1, 0x64

    .line 14
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMax(B)V

    .line 15
    new-instance p1, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    .line 16
    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setType(I)V

    .line 17
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    .line 18
    new-instance p1, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    .line 19
    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setType(I)V

    .line 20
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 4

    .line 21
    iget p0, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, p0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    .line 22
    new-instance v3, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V

    .line 26
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V

    return-object p0
.end method

.method public static createColorScale(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 5

    const/4 p0, 0x3

    new-array v0, p0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    new-array v1, p0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>()V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/CFRule12Record;->createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setNumControlPoints(I)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    return-object v3
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hssf/record/CFRule12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    return-object p0
.end method

.method private setDefaults()V
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 v1, 0x87a

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    return-void
.end method


# virtual methods
.method public containsColorGradientBlock()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsDataBarBlock()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsMultiStateBlock()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->copy()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->copy()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->copy()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->copy()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object p0

    return-object p0
.end method

.method public createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    return-object v0
.end method

.method public createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    return-object v0
.end method

.method public createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    return-object p0
.end method

.method public getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    return-object p0
.end method

.method public getDataSize()I
    .locals 5

    invoke-static {}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getDataSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x6

    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormattingBlockSize()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    array-length v0, v0

    :goto_1
    const/4 v2, 0x6

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getDataLength()I

    move-result p0

    :goto_2
    add-int/2addr v0, p0

    goto :goto_3

    :cond_2
    if-ne v1, v3, :cond_3

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getDataLength()I

    move-result p0

    goto :goto_2

    :cond_3
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    array-length p0, p0

    add-int/2addr v0, p0

    goto :goto_3

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getDataLength()I

    move-result p0

    goto :goto_2

    :cond_5
    :goto_3
    return v0
.end method

.method public getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object p0
.end method

.method public getFutureRecordType()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getRecordType()S

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 5
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

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getGenericProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lorg/apache/poi/hssf/record/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/o;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v3, "dxFn12Length"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/o;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/o;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v4, "futureHeader"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/p;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/p;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v4, "dxFn12Ext"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/q;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/q;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v3, "formulaScale"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/o;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/o;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v4, "extOptions"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/p;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/p;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string/jumbo v4, "priority"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/q;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/q;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string/jumbo v3, "templateType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/o;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/o;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string/jumbo v4, "templateParams"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/p;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/p;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v4, "filterData"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/q;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/q;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v3, "dataBar"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/p;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/p;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string v3, "multiState"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/q;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/q;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;I)V

    const-string p0, "colorGradient"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CF_RULE_12:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    return-object p0
.end method

.method public getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x87a

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->serializeFormattingBlock(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setParsedExpressionScale([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    return-void
.end method
