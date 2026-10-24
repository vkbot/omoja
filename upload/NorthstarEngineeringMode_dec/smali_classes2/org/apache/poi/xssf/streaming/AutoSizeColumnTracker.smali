.class Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final defaultCharWidth:F

.field private final maxColumnWidths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;",
            ">;"
        }
    .end annotation
.end field

.field private trackAllColumns:Z

.field private final untrackedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidthAsFloat(Lorg/apache/poi/ss/usermodel/Workbook;)F

    move-result p1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:F

    return-void
.end method

.method private implicitlyTrackColumn(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private implicitlyTrackColumnsInRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumn(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V
    .locals 4

    iget v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:F

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v0

    iget v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:F

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v3, 0x1

    invoke-static {p1, v2, p0, v3}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;FLorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->setMaxColumnWidths(DD)V

    return-void
.end method


# virtual methods
.method public getBestFitColumnWidth(IZ)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    const-string v1, ". Either explicitly track the column or track all columns."

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Column was explicitly untracked after trackAllColumns() was called."

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get best fit column width on explicitly untracked column "

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called)."

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get best fit column width on untracked column "

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->getMaxColumnWidth(Z)D

    move-result-wide p0

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method public getTrackedColumns()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public isAllColumnsTracked()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    return p0
.end method

.method public isColumnTracked(I)Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public trackAllColumns()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public trackColumn(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trackColumns(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public untrackAllColumns()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public untrackColumn(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public untrackColumns(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public updateColumnWidths(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumnsInRow(Lorg/apache/poi/ss/usermodel/Row;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getPhysicalNumberOfCells()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V

    goto :goto_1

    :cond_3
    return-void
.end method
