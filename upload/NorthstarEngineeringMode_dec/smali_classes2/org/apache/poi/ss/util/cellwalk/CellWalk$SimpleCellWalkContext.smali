.class Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/util/cellwalk/CellWalkContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/cellwalk/CellWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCellWalkContext"
.end annotation


# instance fields
.field private colNumber:I

.field private ordinalNumber:J

.field private rowNumber:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/util/cellwalk/CellWalk$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    return p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    return p1
.end method

.method public static synthetic access$104(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    return v0
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    return p0
.end method

.method public static synthetic access$202(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    return p1
.end method

.method public static synthetic access$204(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    return v0
.end method

.method public static synthetic access$302(Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->ordinalNumber:J

    return-wide p1
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    return p0
.end method

.method public getOrdinalNumber()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->ordinalNumber:J

    return-wide v0
.end method

.method public getRowNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    return p0
.end method
