.class public Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;->createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/SSTRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/SSTRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p0, :cond_2

    .line 4
    array-length p1, p0

    int-to-short p1, p1

    invoke-static {p1}, Lorg/apache/poi/hssf/record/SupBookRecord;->createInternalReferences(S)Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    :cond_2
    sget-object p0, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    return-object p0
.end method
