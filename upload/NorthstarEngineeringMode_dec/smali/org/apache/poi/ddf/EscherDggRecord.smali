.class public final Lorg/apache/poi/ddf/EscherDggRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    }
.end annotation


# static fields
.field public static final RECORD_ID:S


# instance fields
.field private field_1_shapeIdMax:I

.field private field_3_numShapesSaved:I

.field private field_4_drawingsSaved:I

.field private final field_5_fileIdClusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
            ">;"
        }
    .end annotation
.end field

.field private maxDgId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DGG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherDggRecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    .line 5
    iget v1, p1, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    .line 6
    iget v1, p1, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    .line 7
    iget v1, p1, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    .line 8
    iget-object v1, p1, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/x0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ddf/q;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/ddf/q;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    iget p1, p1, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherDggRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ddf/EscherDggRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/EscherDggRecord;->lambda$sortCluster$0(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$sortCluster$0(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result p0

    return p0
.end method

.method private sortCluster()V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    new-instance v0, Ls0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls0/i;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object p0

    return-object p0
.end method

.method public addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    if-eqz p3, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->sortCluster()V

    :cond_0
    return-object v0
.end method

.method public allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;Z)I
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDgRecord;->getDrawingGroupId()S

    move-result v0

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x400

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v6

    if-ge v6, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v4

    iget p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    :cond_2
    mul-int/2addr v3, v5

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    iget p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return p2
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->copy()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherDggRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherDggRecord;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->copy()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    add-int/lit8 p2, p2, 0x14

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    add-int/lit8 p2, p3, -0x10

    div-int/lit8 p2, p2, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, v0, v1

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    add-int/lit8 v3, v3, 0x4

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    new-instance v5, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {v5, v4, v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v1

    if-nez p3, :cond_1

    add-int/lit8 v1, v1, 0x8

    return v1

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Expecting no remaining data but got "

    const-string p2, " byte(s)."

    invoke-static {p1, p3, p2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findNewDrawingGroupId()S
    .locals 3

    new-instance v0, Le3/a;

    invoke-direct {v0}, Le3/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le3/a;->e(I)V

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Le3/a;->e(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Le3/a;->b(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getDrawingsSaved()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    return p0
.end method

.method public getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    return-object p0
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

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/ddf/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/s;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V

    const-string v3, "fileIdClusters"

    new-instance v4, Lorg/apache/poi/ddf/t;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/ddf/t;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V

    const-string/jumbo v5, "shapeIdMax"

    new-instance v6, Lorg/apache/poi/ddf/u;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/ddf/u;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V

    const-string v7, "numIdClusters"

    new-instance v8, Lorg/apache/poi/ddf/s;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/ddf/s;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V

    const-string v9, "numShapesSaved"

    new-instance v10, Lorg/apache/poi/ddf/t;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/ddf/t;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V

    const-string v11, "drawingsSaved"

    new-instance v12, Lorg/apache/poi/ddf/u;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/ddf/u;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;I)V

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

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->DGG:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getMaxDrawingGroupId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    return p0
.end method

.method public getNumIdClusters()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public getNumShapesSaved()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    return p0
.end method

.method public getRecordId()S
    .locals 0

    sget-short p0, Lorg/apache/poi/ddf/EscherDggRecord;->RECORD_ID:S

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->DGG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public getShapeIdMax()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x18

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v2

    invoke-static {p2, p1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v1

    invoke-static {p2, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result p0

    return p0
.end method

.method public setDrawingsSaved(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    return-void
.end method

.method public setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setNumShapesSaved(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    return-void
.end method

.method public setShapeIdMax(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return-void
.end method
