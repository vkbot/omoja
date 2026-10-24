.class public Lorg/apache/poi/hssf/model/DrawingManager2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dgg:Lorg/apache/poi/ddf/EscherDggRecord;

.field private final drawingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherDgRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    return-void
.end method


# virtual methods
.method public allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ddf/EscherDggRecord;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;Z)I

    move-result p0

    return p0
.end method

.method public clearDrawingGroups()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createDgRecord()Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>()V

    sget-short v1, Lorg/apache/poi/ddf/EscherDgRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v1

    shl-int/lit8 v2, v1, 0x4

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    iget-object p0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    return-object v0
.end method

.method public findNewDrawingGroupId()S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->findNewDrawingGroupId()S

    move-result p0

    return p0
.end method

.method public getDgg()Lorg/apache/poi/ddf/EscherDggRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    return-object p0
.end method

.method public incrementDrawingsSaved()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    return-void
.end method
