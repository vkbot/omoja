.class public final Lorg/apache/poi/ddf/UnknownEscherRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final MAX_NESTED_CHILD_NODES:I = 0x3e8

.field private static MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static final NO_BYTES:[B


# instance fields
.field private final _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/UnknownEscherRecord;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    sget-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    .line 5
    iget-object p0, p1, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/x0;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ddf/q;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ddf/q;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/UnknownEscherRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->copy()Lorg/apache/poi/ddf/UnknownEscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->copy()Lorg/apache/poi/ddf/UnknownEscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/UnknownEscherRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>(Lorg/apache/poi/ddf/UnknownEscherRecord;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I

    move-result p0

    return p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I
    .locals 5

    const/16 v0, 0x3e8

    if-gt p4, v0, :cond_5

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result v0

    .line 3
    array-length v1, p1

    const/16 v2, 0x8

    add-int/2addr p2, v2

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_0

    move v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    new-array v1, v3, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    :goto_0
    if-lez v0, :cond_2

    .line 5
    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    .line 6
    instance-of v3, v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v3, :cond_1

    .line 7
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;I)I

    move-result v3

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/2addr p2, v3

    sub-int/2addr v0, v3

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    if-gez v0, :cond_4

    move v0, v3

    :cond_4
    sget p3, Lorg/apache/poi/ddf/UnknownEscherRecord;->MAX_RECORD_LENGTH:I

    .line 10
    invoke-static {p1, p2, v0, p3}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    add-int/2addr v0, v2

    return v0

    .line 11
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Had more than the limit of 1000 nested child notes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    return-object p0
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

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/ddf/d;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string v2, "data"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    add-int/lit8 v1, p1, 0x8

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2, v1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v1, p1

    invoke-interface {p3, v1, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
