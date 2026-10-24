.class public final Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xc5s


# instance fields
.field private df:I

.field private ifmt:I

.field private iiftab:I

.field private isxvd:I

.field private isxvdData:I

.field private isxvi:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvdData:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->iiftab:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->df:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvd:I

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvi:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->ifmt:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvdData:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvdData:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->iiftab:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->iiftab:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->df:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->df:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvd:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvd:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvi:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvi:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->ifmt:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->ifmt:I

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvdData:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->iiftab:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->df:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->ifmt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->name:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "isxvdData"

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/a;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;I)V

    const-string v3, "iiftab"

    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/b;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/b;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;I)V

    const-string v5, "df"

    new-instance v6, Lorg/apache/poi/hssf/record/pivottable/c;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/c;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;I)V

    const-string v7, "isxvd"

    new-instance v8, Lorg/apache/poi/hssf/record/pivottable/a;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/a;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;I)V

    const-string v9, "isxvi"

    new-instance v10, Lorg/apache/poi/hssf/record/pivottable/b;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/b;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;I)V

    const-string v11, "ifmt"

    new-instance v12, Lorg/apache/poi/hssf/record/pivottable/c;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/c;-><init>(Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DATA_ITEM:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xc5

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvdData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->iiftab:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->df:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvd:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->isxvi:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->ifmt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;->name:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    return-void
.end method
