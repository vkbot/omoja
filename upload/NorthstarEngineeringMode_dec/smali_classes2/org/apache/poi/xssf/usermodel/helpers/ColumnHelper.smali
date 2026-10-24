.class public Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cleanColumns()V

    return-void
.end method

.method private addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            "Ljava/util/TreeSet<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 5
    invoke-direct {v0, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlappingCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 10
    invoke-direct {v0, v2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v6

    .line 11
    invoke-direct {v0, v1, v5, v6}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v7

    .line 12
    invoke-virtual {v0, v2, v7}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    .line 13
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v7

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    move-object v7, v5

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    const/4 v8, 0x2

    new-array v9, v8, [J

    .line 15
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v10

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    aget-wide v13, v6, v12

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    const/16 v17, 0x1

    aput-wide v13, v9, v17

    cmp-long v10, v10, v13

    if-gtz v10, :cond_3

    .line 16
    invoke-direct {v0, v1, v7, v9}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v9

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v13

    cmp-long v7, v9, v13

    if-lez v7, :cond_4

    move-object v7, v5

    goto :goto_2

    :cond_4
    move-object v7, v2

    :goto_2
    new-array v8, v8, [J

    .line 18
    aget-wide v9, v6, v17

    add-long/2addr v9, v15

    aput-wide v9, v8, v12

    .line 19
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v5

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    aput-wide v5, v8, v17

    aget-wide v9, v8, v12

    cmp-long v5, v9, v5

    if-gtz v5, :cond_1

    .line 20
    invoke-direct {v0, v1, v7, v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    aget-wide p1, p3, p1

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    const/4 p1, 0x1

    .line 3
    aget-wide p1, p3, p1

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    return-object p0
.end method

.method private columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ)Z
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    cmp-long p1, v0, p4

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private columnExists1Based(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getOverlap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlappingRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p0

    return-object p0
.end method

.method private getOverlappingCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            "Ljava/util/TreeSet<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p2

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private getOverlappingRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingRange([J[J)[J

    move-result-object p0

    return-object p0
.end method

.method private insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    return-object p0
.end method

.method private insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 0

    if-nez p7, :cond_1

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ)Z

    move-result p7

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const/4 p7, 0x0

    .line 3
    invoke-interface {p1, p7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->insertNewCol(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    .line 4
    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 5
    invoke-interface {p1, p4, p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 6
    array-length p2, p6

    :goto_1
    if-ge p7, p2, :cond_2

    aget-object p3, p6, p7

    .line 7
    invoke-virtual {p0, p3, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_2
    if-eqz p8, :cond_3

    .line 8
    invoke-virtual {p0, p8, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    :cond_3
    return-object p1
.end method

.method private overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingType([J[J)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sortColumns(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-void
.end method

.method private toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 3

    const/4 p0, 0x2

    new-array p0, p0, [J

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v1

    aput-wide v1, p0, v0

    return-object p0
.end method


# virtual methods
.method public addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-object p1
.end method

.method public cleanColumns()V
    .locals 7

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-direct {p0, v1, v6, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeCols(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    new-array v2, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewCols()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p0, v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    return-void
.end method

.method public cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 2

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->addNewCol()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    .line 5
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    .line 6
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    .line 7
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-object p1
.end method

.method public columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->columnExists1Based(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z

    move-result p0

    return p0
.end method

.method public getColDefaultStyle(J)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    return-object p0
.end method

.method public getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 20

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    iget-object v0, v7, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfColsArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v7, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v11

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    array-length v2, v0

    move v3, v10

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v12, v0, v3

    invoke-interface {v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    invoke-interface {v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v13

    cmp-long v6, v4, v8

    if-gtz v6, :cond_4

    cmp-long v15, v13, v8

    if-ltz v15, :cond_4

    if-eqz p3, :cond_3

    const-wide/16 v16, 0x1

    const/4 v2, 0x1

    if-gez v6, :cond_1

    sub-long v18, v8, v16

    new-array v6, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    aput-object v12, v6, v10

    move-object/from16 v0, p0

    move-object v1, v11

    move v10, v2

    move-wide v2, v4

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    if-lez v15, :cond_2

    add-long v2, v8, v16

    new-array v6, v10, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    const/4 v4, 0x0

    aput-object v12, v6, v4

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    :cond_2
    invoke-interface {v12, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v12, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    :cond_3
    return-object v12

    :cond_4
    move v4, v10

    add-int/lit8 v3, v3, 0x1

    move v10, v4

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 6

    const/4 p0, -0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method public getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 p3, 0x0

    invoke-interface {p0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->addNewCol()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {p3, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    :cond_0
    return-object p3
.end method

.method public setColBestFit(JZ)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setBestFit(Z)V

    return-void
.end method

.method public setColDefaultStyle(JI)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    int-to-long p1, p3

    .line 3
    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setStyle(J)V

    return-void
.end method

.method public setColDefaultStyle(JLorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColDefaultStyle(JI)V

    return-void
.end method

.method public setColHidden(JZ)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    return-void
.end method

.method public setColWidth(JD)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    return-void
.end method

.method public setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetBestFit()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getBestFit()Z

    move-result p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setBestFit(Z)V

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCustomWidth()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCustomWidth()Z

    move-result p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetHidden()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetStyle()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setStyle(J)V

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCollapsed()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetPhonetic()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getPhonetic()Z

    move-result p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setPhonetic(Z)V

    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetOutlineLevel()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    :cond_7
    return-void
.end method

.method public setCustomWidth(JZ)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    return-void
.end method
