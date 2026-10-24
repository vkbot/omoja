.class public final Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final DEFAULT_COLUMN_WIDTH:I = 0x8

.field public static final sid:S = 0x55s


# instance fields
.field private field_1_col_width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DefaultColWidthRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget p1, p1, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    iput p1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->copy()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>(Lorg/apache/poi/hssf/record/DefaultColWidthRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->copy()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->copy()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    move-result-object p0

    return-object p0
.end method

.method public getColWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/p0;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "colWidth"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DEFAULT_COL_WIDTH:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x55

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setColWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return-void
.end method
