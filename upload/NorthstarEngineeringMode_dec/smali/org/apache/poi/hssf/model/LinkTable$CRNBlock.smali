.class final Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/LinkTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CRNBlock"
.end annotation


# instance fields
.field private final _countRecord:Lorg/apache/poi/hssf/record/CRNCountRecord;

.field private final _crns:[Lorg/apache/poi/hssf/record/CRNRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CRNCountRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;->_countRecord:Lorg/apache/poi/hssf/record/CRNCountRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->getNumberOfCRNs()I

    move-result v0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/CRNRecord;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/hssf/record/CRNRecord;

    if-nez v4, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Record is not a CRNRecord: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_0

    const-string v0, "<null>"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v3, Lorg/apache/poi/hssf/record/CRNRecord;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;->_crns:[Lorg/apache/poi/hssf/record/CRNRecord;

    return-void
.end method


# virtual methods
.method public getCrns()[Lorg/apache/poi/hssf/record/CRNRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;->_crns:[Lorg/apache/poi/hssf/record/CRNRecord;

    invoke-virtual {p0}, [Lorg/apache/poi/hssf/record/CRNRecord;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hssf/record/CRNRecord;

    return-object p0
.end method
