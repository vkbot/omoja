.class public final Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# instance fields
.field private final _headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

.field private final _validationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/DVRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 7
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DVALRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/DVRecord;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDataValidation(Lorg/apache/poi/hssf/record/DVRecord;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/DVALRecord;->setDVRecNo(I)V

    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    new-instance v0, Lx1/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
