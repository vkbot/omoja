.class Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;
.super Lorg/apache/poi/ddf/DefaultEscherRecordFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/EscherAggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeCollector"
.end annotation


# instance fields
.field final buffer:Lorg/apache/commons/io/output/j;

.field final objShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->objShapes:Ljava/util/List;

    .line 3
    sget v0, Lorg/apache/commons/io/output/j;->c:I

    .line 4
    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->buffer:Lorg/apache/commons/io/output/j;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/EscherAggregate$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public addBytes([B)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->buffer:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t get data from drawing/continue records"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sget-short v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    if-eq p2, v0, :cond_0

    sget-short v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->objShapes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public parse(Lorg/apache/poi/hssf/record/EscherAggregate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/EscherAggregate;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->buffer:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/EscherAggregate$ShapeCollector;->objShapes:Ljava/util/List;

    return-object p0
.end method
