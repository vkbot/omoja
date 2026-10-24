.class public Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/ss/usermodel/Cell;",
        ">;"
    }
.end annotation


# instance fields
.field final maxColumn:I

.field pos:I

.field final synthetic this$0:Lorg/apache/poi/xssf/streaming/SXSSFRow;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->this$0:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getLastCellNum()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->maxColumn:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->pos:I

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->maxColumn:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->next()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->this$0:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 3
    invoke-static {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->access$000(Lorg/apache/poi/xssf/streaming/SXSSFRow;)Ljava/util/SortedMap;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;->pos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Cell;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
