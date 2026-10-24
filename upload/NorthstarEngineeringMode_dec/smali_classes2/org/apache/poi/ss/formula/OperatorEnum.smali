.class final enum Lorg/apache/poi/ss/formula/OperatorEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/OperatorEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum BETWEEN:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum GREATER_OR_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum GREATER_THAN:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum LESS_OR_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum LESS_THAN:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum NOT_BETWEEN:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum NOT_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

.field public static final enum NO_COMPARISON:Lorg/apache/poi/ss/formula/OperatorEnum;


# instance fields
.field private final compareOp:Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;

.field private final validForIncompatibleTypes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v1, Lorg/apache/poi/ss/formula/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/c;-><init>(I)V

    const-string v3, "NO_COMPARISON"

    invoke-direct {v0, v3, v2, v1, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/OperatorEnum;->NO_COMPARISON:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v1, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v3, Lorg/apache/poi/ss/formula/d;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/d;-><init>(I)V

    const-string v4, "BETWEEN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v1, Lorg/apache/poi/ss/formula/OperatorEnum;->BETWEEN:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v3, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v4, Lorg/apache/poi/ss/formula/e;

    invoke-direct {v4, v2}, Lorg/apache/poi/ss/formula/e;-><init>(I)V

    const-string v6, "NOT_BETWEEN"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v3, Lorg/apache/poi/ss/formula/OperatorEnum;->NOT_BETWEEN:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v4, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v6, Lorg/apache/poi/ss/formula/c;

    invoke-direct {v6, v5}, Lorg/apache/poi/ss/formula/c;-><init>(I)V

    const-string v8, "EQUAL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v4, Lorg/apache/poi/ss/formula/OperatorEnum;->EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v6, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v8, Lorg/apache/poi/ss/formula/d;

    invoke-direct {v8, v5}, Lorg/apache/poi/ss/formula/d;-><init>(I)V

    const-string v9, "NOT_EQUAL"

    const/4 v10, 0x4

    invoke-direct {v6, v9, v10, v8, v5}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v6, Lorg/apache/poi/ss/formula/OperatorEnum;->NOT_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v8, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v9, Lorg/apache/poi/ss/formula/e;

    invoke-direct {v9, v5}, Lorg/apache/poi/ss/formula/e;-><init>(I)V

    const-string v5, "GREATER_THAN"

    const/4 v10, 0x5

    invoke-direct {v8, v5, v10, v9, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v8, Lorg/apache/poi/ss/formula/OperatorEnum;->GREATER_THAN:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v9, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v5, Lorg/apache/poi/ss/formula/c;

    invoke-direct {v5, v7}, Lorg/apache/poi/ss/formula/c;-><init>(I)V

    const-string v10, "LESS_THAN"

    const/4 v11, 0x6

    invoke-direct {v9, v10, v11, v5, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v9, Lorg/apache/poi/ss/formula/OperatorEnum;->LESS_THAN:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v10, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v5, Lorg/apache/poi/ss/formula/d;

    invoke-direct {v5, v7}, Lorg/apache/poi/ss/formula/d;-><init>(I)V

    const-string v11, "GREATER_OR_EQUAL"

    const/4 v12, 0x7

    invoke-direct {v10, v11, v12, v5, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v10, Lorg/apache/poi/ss/formula/OperatorEnum;->GREATER_OR_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v11, Lorg/apache/poi/ss/formula/OperatorEnum;

    new-instance v5, Lorg/apache/poi/ss/formula/e;

    invoke-direct {v5, v7}, Lorg/apache/poi/ss/formula/e;-><init>(I)V

    const-string v7, "LESS_OR_EQUAL"

    const/16 v12, 0x8

    invoke-direct {v11, v7, v12, v5, v2}, Lorg/apache/poi/ss/formula/OperatorEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V

    sput-object v11, Lorg/apache/poi/ss/formula/OperatorEnum;->LESS_OR_EQUAL:Lorg/apache/poi/ss/formula/OperatorEnum;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/ss/formula/OperatorEnum;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/OperatorEnum;->$VALUES:[Lorg/apache/poi/ss/formula/OperatorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/OperatorEnum$CompareOp;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/ss/formula/OperatorEnum;->compareOp:Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;

    iput-boolean p4, p0, Lorg/apache/poi/ss/formula/OperatorEnum;->validForIncompatibleTypes:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->equalCheck(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->noComp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static between(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, ""

    if-nez p2, :cond_3

    move-object p2, p1

    goto :goto_2

    :cond_3
    check-cast p2, Ljava/lang/String;

    :goto_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0

    :cond_5
    instance-of p0, p0, Ljava/lang/Boolean;

    return v1

    :cond_6
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_7

    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    return v0
.end method

.method public static synthetic c(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->notBetween(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->lessThan(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->notEqual(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static equalCheck(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    return p2

    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Ljava/lang/Boolean;

    return v0

    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    return p2

    :cond_5
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move p2, v0

    :goto_2
    return p2
.end method

.method public static synthetic f(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->lessOrEqual(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->greaterOrEqual(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static greaterOrEqual(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_0

    move p2, v0

    :cond_0
    return p2

    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Ljava/lang/Boolean;

    return p0

    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_4

    move p2, v0

    :cond_4
    return p2
.end method

.method private static greaterThan(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-lez p0, :cond_0

    move p2, v0

    :cond_0
    return p2

    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Ljava/lang/Boolean;

    return p0

    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_4

    move p2, v0

    :cond_4
    return p2
.end method

.method public static synthetic h(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->greaterThan(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperatorEnum;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static lessOrEqual(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    return p2

    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Ljava/lang/Boolean;

    return v0

    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    return p2
.end method

.method private static lessThan(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    return p2

    :cond_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Ljava/lang/Boolean;

    return v0

    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    return p2
.end method

.method private static noComp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private static notBetween(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_8

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p1, ""

    if-nez p2, :cond_4

    move-object p2, p1

    goto :goto_2

    :cond_4
    check-cast p2, Ljava/lang/String;

    :goto_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_6

    invoke-virtual {p0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    :goto_3
    return v0

    :cond_7
    instance-of p0, p0, Ljava/lang/Boolean;

    return p0

    :cond_8
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_9

    goto :goto_4

    :cond_9
    move v0, v1

    :cond_a
    :goto_4
    return v0
.end method

.method private static notEqual(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    return p2

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    return p2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/OperatorEnum;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/OperatorEnum;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/OperatorEnum;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/OperatorEnum;->$VALUES:[Lorg/apache/poi/ss/formula/OperatorEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/OperatorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/OperatorEnum;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ss/formula/OperatorEnum;->compareOp:Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/OperatorEnum$CompareOp;->isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public isValidForIncompatibleTypes()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/OperatorEnum;->validForIncompatibleTypes:Z

    return p0
.end method
