.class public Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetRecordCollectingListener"
.end annotation


# instance fields
.field private final boundSheetRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

.field private final externSheetRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ExternSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->externSheetRecords:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    return-void
.end method


# virtual methods
.method public getBoundSheetRecords()[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    return-object p0
.end method

.method public getExternSheetRecords()[Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->externSheetRecords:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    return-object p0
.end method

.method public getSSTRecord()Lorg/apache/poi/hssf/record/SSTRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    return-object p0
.end method

.method public getStubHSSFWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getStubWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->create(Lorg/apache/poi/hssf/model/InternalWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStubWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getExternSheetRecords()[Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getBoundSheetRecords()[Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getSSTRecord()Lorg/apache/poi/hssf/record/SSTRecord;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;->createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/SSTRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->processRecordInternally(Lorg/apache/poi/hssf/record/Record;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method

.method public processRecordInternally(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    check-cast p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->externSheetRecords:Ljava/util/List;

    check-cast p1, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/hssf/record/SSTRecord;

    iput-object p1, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    :cond_2
    :goto_0
    return-void
.end method
