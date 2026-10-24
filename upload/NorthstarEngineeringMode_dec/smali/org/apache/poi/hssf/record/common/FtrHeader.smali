.class public final Lorg/apache/poi/hssf/record/common/FtrHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field private associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private grbitFrt:S

.field private recordType:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    .line 10
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/common/FtrHeader;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public static getDataSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->copy()Lorg/apache/poi/hssf/record/common/FtrHeader;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/common/FtrHeader;)V

    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

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

    const-string/jumbo v0, "recordType"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/f1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/chart/f1;-><init>(ILjava/lang/Object;)V

    const-string v2, "grbitFrt"

    new-instance v3, Lorg/apache/poi/ddf/b;

    const/16 v4, 0x13

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string v4, "associatedRange"

    new-instance v5, Lorg/apache/poi/ddf/c;

    const/16 v6, 0x14

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGrbitFrt()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    return p0
.end method

.method public getRecordType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->associatedRange:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setGrbitFrt(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    return-void
.end method

.method public setRecordType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
