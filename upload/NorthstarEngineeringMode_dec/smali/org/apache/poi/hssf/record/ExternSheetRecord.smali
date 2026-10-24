.class public Lorg/apache/poi/hssf/record/ExternSheetRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    }
.end annotation


# static fields
.field public static final sid:S = 0x17s


# instance fields
.field private final _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ExternSheetRecord;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    .line 5
    iget-object p0, p1, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hssf/record/w0;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/apache/poi/hssf/record/w0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hssf/record/x0;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/record/x0;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    new-instance v2, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    .line 10
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/ExternSheetRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static combine([Lorg/apache/poi/hssf/record/ExternSheetRecord;)Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 8

    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfREFRecords()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    invoke-direct {v4, v6}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addREFRecord(Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addREFRecord(Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRef(III)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->copy()Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>(Lorg/apache/poi/hssf/record/ExternSheetRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->copy()Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->copy()Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object p0

    return-object p0
.end method

.method public findRefIndexFromExtBookIndex(I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getExtbookIndexFromRefIndex(I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result p0

    return p0
.end method

.method public getFirstSheetIndexFromRefIndex(I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result p0

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

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "refrec"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->EXTERN_SHEET:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLastSheetIndexFromRefIndex(I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result p0

    return p0
.end method

.method public getNumOfREFRecords()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNumOfRefs()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRefIxForSheet(III)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v3

    if-eq v3, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v2

    if-ne v2, p3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public removeSheet(I)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v2

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5, v5}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v3

    if-le v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v3

    if-le v3, p1, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v4, v5, v6, v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
