.class public Lorg/apache/logging/log4j/core/config/OrderComparator;
.super Ljava/lang/Object;
.source "OrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Class<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/logging/log4j/core/config/OrderComparator;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/OrderComparator;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/OrderComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lorg/apache/logging/log4j/core/config/OrderComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 44
    .local p1, "lhs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "rhs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "lhs"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    const-class v1, Lorg/apache/logging/log4j/core/config/Order;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/Order;

    .line 45
    .local v0, "lhsOrder":Lorg/apache/logging/log4j/core/config/Order;
    const-string v1, "rhs"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    const-class v2, Lorg/apache/logging/log4j/core/config/Order;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/config/Order;

    .line 46
    .local v1, "rhsOrder":Lorg/apache/logging/log4j/core/config/Order;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 48
    const/4 v2, 0x0

    return v2

    .line 51
    :cond_0
    if-nez v1, :cond_1

    .line 52
    const/4 v2, -0x1

    return v2

    .line 54
    :cond_1
    if-nez v0, :cond_2

    .line 55
    const/4 v2, 0x1

    return v2

    .line 58
    :cond_2
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Order;->value()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Order;->value()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/OrderComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1
.end method
