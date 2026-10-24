.class final Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/ExternSheetRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefSubRecord"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private final _extBookIndex:I

.field private _firstSheetIndex:I

.field private _lastSheetIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    iput p2, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    iput p3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    .line 5
    iget p1, p1, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    iput p1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getExtBookIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    return p0
.end method

.method public getFirstSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    return p0
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

    const-string v0, "extBookIndex"

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string v3, "firstSheetIndex"

    new-instance v4, Lorg/apache/poi/hssf/record/o0;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v5, "lastSheetIndex"

    new-instance v6, Lorg/apache/poi/hssf/record/p0;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLastSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
