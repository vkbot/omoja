.class public final Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final LOG:La5/d;

.field private static final MAX_97_2003_CONDTIONAL_FORMAT_RULES:I = 0x3


# instance fields
.field private final header:Lorg/apache/poi/hssf/record/CFHeaderBase;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/CFRuleBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->LOG:La5/d;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 7
    array-length v0, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->LOG:La5/d;

    .line 8
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    array-length v1, p2

    .line 9
    invoke-static {v1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Excel versions before 2007 require that No more than 3 rules may be specified, {} were found, this file will cause problems with old Excel versions"

    .line 10
    invoke-interface {v0, v1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_0
    array-length v0, p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v1

    if-ne v0, v1, :cond_2

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 12
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 13
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Mismatch number of rules"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rules must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "header must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 3
    iget-object v1, p1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copy()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 4
    iget-object p0, p1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lg5/l;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lg5/l;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/extractor/e;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/extractor/e;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 0

    .line 18
    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->createHeader([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private checkRuleIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad rule record index ("

    const-string v2, ") nRules="

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    instance-of v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of p0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    if-eqz p0, :cond_1

    instance-of p0, p1, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Header and Rule must both be CF or both be CF12, can\'t mix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createCFAggregate(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x1b0

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x879

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "next record sid was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instead of 432 or 2169 as expected"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast v0, Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v1

    new-array v2, v1, [Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/hssf/record/CFRuleBase;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/hssf/record/CFRuleBase;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Did not have a CFRuleBase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object p0
.end method

.method private static createHeader([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setNeedRecalculation(Z)V

    return-object v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Excel versions before 2007 cannot cope with any more than 3 - this file will cause problems with old Excel versions"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setNumberOfConditionalFormats(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V

    return-object v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/c;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/ddf/d;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "header"

    const-string/jumbo v2, "rules"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    return-object p0
.end method

.method public getNumberOfRules()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/CFRuleBase;

    return-object p0
.end method

.method public setRule(ILorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)Z
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v0, v4

    invoke-static {p1, v7, p2}, Lorg/apache/poi/ss/usermodel/helpers/BaseRowColShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_1
    move v5, v6

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v8, v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setParsedExpression1([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setParsedExpression2([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    :cond_7
    instance-of v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRule12Record;->setParsedExpressionScale([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_3

    :cond_8
    return v6
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0

    :cond_0
    return-void
.end method
