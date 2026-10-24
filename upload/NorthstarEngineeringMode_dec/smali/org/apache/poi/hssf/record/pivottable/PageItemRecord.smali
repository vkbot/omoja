.class public final Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    }
.end annotation


# static fields
.field public static final sid:S = 0xb6s


# instance fields
.field private final _fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 7
    rem-int/lit8 v1, v0, 0x6

    if-nez v1, :cond_1

    .line 8
    div-int/lit8 v0, v0, 0x6

    .line 9
    new-array v1, v0, [Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    new-instance v3, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    return-void

    .line 11
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Bad data size "

    .line 12
    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-object p1, p1, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/g;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/b1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/b1;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;-><init>(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x6

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

    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/pivottable/j;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "fieldInfos"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->PAGE_ITEM:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xb6

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->access$000(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
