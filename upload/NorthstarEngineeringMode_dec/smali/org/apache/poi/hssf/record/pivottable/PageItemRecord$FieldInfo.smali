.class final Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldInfo"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private _idObj:I

.field private _isxvd:I

.field private _isxvi:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method


# virtual methods
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

    const-string v0, "isxvi"

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/h;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v3, "isxvd"

    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/i;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/i;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v5, "idObj"

    new-instance v6, Lorg/apache/poi/hssf/record/pivottable/j;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/j;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
