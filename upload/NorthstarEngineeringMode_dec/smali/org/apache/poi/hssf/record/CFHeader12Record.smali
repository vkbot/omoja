.class public final Lorg/apache/poi/hssf/record/CFHeader12Record;
.super Lorg/apache/poi/hssf/record/CFHeaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/FutureRecord;


# static fields
.field public static final sid:S = 0x879s


# instance fields
.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->createEmpty()V

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 p0, 0x879

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/CFHeader12Record;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;)V

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->copy()Lorg/apache/poi/hssf/record/common/FtrHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 11
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    .line 8
    new-instance p1, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 p0, 0x879

    .line 9
    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/CFHeader12Record;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->copy()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/CFHeader12Record;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>(Lorg/apache/poi/hssf/record/CFHeader12Record;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->copy()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->copy()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->copy()Lorg/apache/poi/hssf/record/CFHeader12Record;

    move-result-object p0

    return-object p0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    invoke-static {}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getDataSize()I

    move-result v0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getDataSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object p0
.end method

.method public getFutureRecordType()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getRecordType()S

    move-result p0

    return p0
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

    new-instance v0, Lorg/apache/poi/hssf/record/o0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/p0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string v2, "futureHeader"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeader12Record;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CF_HEADER_12:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "CFHEADER12"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x879

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeader12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
