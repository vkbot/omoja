.class public final Lorg/apache/poi/ss/formula/functions/LookupUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static matchModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;",
            ">;"
        }
    .end annotation
.end field

.field private static searchModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils;->matchModeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils;->searchModeMap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->values()[Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LookupUtils;->matchModeMap:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->getIntValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->values()[Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/ss/formula/functions/LookupUtils;->searchModeMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->getIntValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binarySearchIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Z)I
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getMidIx()I

    move-result v4

    if-ltz v4, :cond_a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-interface {p0, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v7

    if-eqz v7, :cond_2

    return v4

    :cond_2
    sget-object v7, Lorg/apache/poi/ss/formula/functions/LookupUtils$1;->$SwitchMap$org$apache$poi$ss$formula$functions$LookupUtils$MatchMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v9, 0x2

    if-eq v7, v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v5, v8, v8}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createTolerantLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_6

    :goto_1
    move v2, v4

    move-object v3, v5

    goto :goto_2

    :cond_6
    invoke-static {v5, v8, v8}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createTolerantLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0, p1, v1, v4, p3}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;IZ)I

    move-result v4

    if-ltz v4, :cond_0

    return v4

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    goto :goto_0

    :cond_9
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    goto/16 :goto_0

    :cond_a
    :goto_3
    return v2
.end method

.method public static createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V

    return-object v0
.end method

.method public static createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V

    return-object v0

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p1, :cond_2

    new-instance p1, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    return-object p1

    :cond_2
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p1, :cond_3

    new-instance p1, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/BoolEval;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad lookup value type ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V

    return-object v0
.end method

.method private static createTolerantLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_1

    new-instance p1, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/BoolEval;)V

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_2

    new-instance p1, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    return-object p1

    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$TolerantStringLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)V

    return-object v0
.end method

.method public static createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createVector(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0
.end method

.method private static findLastIndexInRunOfEqualValues(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;II)I
    .locals 1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    add-int/lit8 p3, p3, -0x1

    return p3
.end method

.method private static handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;IZ)I
    .locals 6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getHighIx()I

    move-result v0

    move v1, p3

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, -0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2, p3, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    return v3

    :cond_0
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p4, :cond_1

    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_1

    invoke-virtual {p2, p3, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    return v3

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p4, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p2, p3, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    return v3

    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result p0

    invoke-virtual {p2, v1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result p0

    invoke-virtual {p2, v1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    :goto_1
    return v3
.end method

.method public static lookupFirstIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p2, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->performBinarySearch(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupFirstIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;)I

    move-result p0

    :goto_0
    if-ltz p0, :cond_1

    return p0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method private static lookupFirstIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;)I
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Z)I

    move-result p0

    return p0
.end method

.method private static lookupIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Z)I
    .locals 8

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->reverseIndexIterator()Ljava/util/Iterator;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->indexIterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    sget-object v5, Lorg/apache/poi/ss/formula/functions/LookupUtils$1;->$SwitchMap$org$apache$poi$ss$formula$functions$LookupUtils$MatchMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v3, v6, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createTolerantLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_6

    :goto_2
    goto :goto_3

    :cond_6
    invoke-static {v3, v6, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createTolerantLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_3
    move v0, v2

    move-object v1, v3

    goto :goto_1

    :cond_7
    return v0
.end method

.method private static lookupLastIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Z)I

    move-result p0

    return p0
.end method

.method public static matchMode(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils;->matchModeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown match mode "

    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static performBinarySearch(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;)I
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getMidIx()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getLowIx()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;IZ)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getHighIx()I

    move-result v0

    invoke-static {p1, p0, v1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->findLastIndexInRunOfEqualValues(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;II)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    goto :goto_0
.end method

.method public static resolveRangeLookupArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z
    .locals 3

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    const/4 p2, 0x0

    if-ne p0, p1, :cond_0

    return p2

    :cond_0
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz p1, :cond_1

    return p2

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_2
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v0, :cond_4

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Countif;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :cond_5
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz p1, :cond_7

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const-wide/16 v1, 0x0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide p0

    cmpl-double p0, v1, p0

    if-eqz p0, :cond_6

    move p2, v0

    :cond_6
    return p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected eval type ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static resolveRowOrColIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 0

    if-eqz p0, :cond_3

    int-to-short p2, p2

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_2

    sub-int/2addr p0, p1

    return p0

    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :catch_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, v0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0
.end method

.method public static searchMode(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils;->searchModeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown search mode "

    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xlookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;)I
    .locals 9

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatchFallbackToLargerValue:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatchFallbackToSmallerValue:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    if-ne p2, v0, :cond_4

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v4, v0

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_3

    aget-char v7, v0, v5

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_1

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_1

    const/16 v8, 0x7e

    if-eq v7, v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->WildcardMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    if-eq p2, v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createTolerantLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->BinarySearchForward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    if-ne p3, v0, :cond_6

    invoke-static {p0, p1, p2, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->binarySearchIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Z)I

    move-result p0

    goto :goto_4

    :cond_6
    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->BinarySearchBackward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    if-ne p3, v0, :cond_7

    invoke-static {p0, p1, p2, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->binarySearchIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;Z)I

    move-result p0

    goto :goto_4

    :cond_7
    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->IterateBackward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    if-ne p3, v0, :cond_8

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupLastIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;)I

    move-result p0

    goto :goto_4

    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupFirstIndexOfValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;)I

    move-result p0

    :goto_4
    if-ltz p0, :cond_9

    return p0

    :cond_9
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method
