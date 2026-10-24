.class public Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherDggRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileIdCluster"
.end annotation


# instance fields
.field private field_1_drawingGroupId:I

.field private field_2_numShapeIdsUsed:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    iput p2, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    .line 3
    iget p1, p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->incrementUsedShapeId()V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->compareFileIdCluster(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result p0

    return p0
.end method

.method private static compareFileIdCluster(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p0

    sub-int/2addr p1, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private incrementUsedShapeId()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    return-void
.end method


# virtual methods
.method public getDrawingGroupId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_1_drawingGroupId:I

    return p0
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

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lorg/apache/poi/ddf/d;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "drawingGroupId"

    const-string v1, "numShapeIdUsed"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumShapeIdsUsed()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->field_2_numShapeIdsUsed:I

    return p0
.end method
