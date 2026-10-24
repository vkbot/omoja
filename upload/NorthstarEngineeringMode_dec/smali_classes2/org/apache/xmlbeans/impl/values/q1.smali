.class public Lorg/apache/xmlbeans/impl/values/q1;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"

# interfaces
.implements Li5/i0;


# static fields
.field private static final EMPTY_STRINGARRAY:[Ljava/lang/String;


# instance fields
.field private _jvalue:Li5/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/f2<",
            "*>;"
        }
    .end annotation
.end field

.field private final _schemaType:Li5/c0;

.field private _value:Li5/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/f2<",
            "+",
            "Li5/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/xmlbeans/impl/values/q1;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static synthetic M0(Li5/c0;Ljava/lang/Object;)Li5/i0;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/q1;->lambda$set_list$1(Li5/c0;Ljava/lang/Object;)Li5/i0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O1(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/i0;
    .locals 0

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/values/q1;->lambda$lex$0(Li5/c0;Lj5/m;Ljava/lang/String;)Li5/i0;

    move-result-object p0

    return-object p0
.end method

.method private static compute_list_text(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li5/i0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, " "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static contains_white_space(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static equal_xmlLists(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic h1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/q1;->object2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$lex$0(Li5/c0;Lj5/m;Ljava/lang/String;)Li5/i0;
    .locals 2

    :try_start_0
    invoke-interface {p0, p2}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "item \'"

    const-string v1, "\' is not a valid value of "

    invoke-static {v0, p2, v1}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "list"

    invoke-interface {p1, p2, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static lambda$set_list$1(Li5/c0;Ljava/lang/Object;)Li5/i0;
    .locals 1

    instance-of v0, p1, Lorg/apache/xmlbeans/XmlObject;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q1;->permits_inner_space(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/q1;->contains_white_space(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object p0

    return-object p0
.end method

.method public static lex(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Li5/f2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li5/c0;",
            "Lj5/m;",
            "Lj5/h;",
            ")",
            "Li5/f2<",
            "+",
            "Li5/i0;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/q1;->split_list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lm5/j0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Lm5/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/x;

    invoke-direct {p1, p3}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lj5/h;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p2, Li5/f2;

    invoke-direct {p2, p0}, Li5/f2;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_2
    throw p0
.end method

.method private static object2String(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Li5/g0;

    if-eqz v0, :cond_0

    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private static permits_inner_space(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->e()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static split_list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/impl/values/q1;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lj5/p;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    sget-object p0, Lorg/apache/xmlbeans/impl/values/q1;->EMPTY_STRINGARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lj5/p;->c(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0
.end method

.method public static validateValue(Li5/f2;Li5/c0;Lj5/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/f2<",
            "+",
            "Li5/i0;",
            ">;",
            "Li5/c0;",
            "Lj5/m;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->xgetListValue()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/xmlbeans/impl/values/q1;->equal_xmlLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "list"

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-enumeration-valid"

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getIntValue()I

    move-result v0

    iget-object v1, p0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-length-valid.2"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getIntValue()I

    move-result v0

    iget-object v1, p0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object v1, p0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-minLength-valid.2"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->getIntValue()I

    move-result v0

    iget-object v1, p0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v2}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-maxLength-valid.2"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/q1;->compute_list_text(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->xgetListValue()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/q1;->equal_xmlLists(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getListValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_jvalue:Li5/f2;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/values/h2;->java_value(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Li5/f2;

    invoke-direct {v1, v0}, Li5/f2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/q1;->_jvalue:Li5/f2;

    return-object v1
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/q1;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_list(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    invoke-interface {v0}, Li5/c0;->R0()Li5/c0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/x;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/impl/values/a0;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/g;

    invoke-direct {v3, v2, v0}, Lorg/apache/poi/xddf/usermodel/text/g;-><init>(ILjava/lang/Object;)V

    :try_start_0
    new-instance v0, Li5/f2;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Li5/f2;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/q1;->validateValue(Li5/f2;Li5/c0;Lj5/m;)V

    :cond_2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/q1;->_jvalue:Li5/f2;

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_3
    throw p0
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    invoke-interface {v0, p1}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x2;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "list"

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-direct {v0, p1, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    invoke-interface {v0}, Li5/c0;->R0()Li5/c0;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {p1, v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/q1;->lex(Ljava/lang/String;Li5/c0;Lj5/m;Lj5/h;)Li5/f2;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_schemaType:Li5/c0;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/q1;->validateValue(Li5/f2;Li5/c0;Lj5/m;)V

    :cond_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/values/q1;->_jvalue:Li5/f2;

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/q1;->xgetListValue()Li5/f2;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/q1;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/q1;->validateValue(Li5/f2;Li5/c0;Lj5/m;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    iget-object v2, v2, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x9

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    iget-object v3, v3, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    mul-int/lit8 v0, v0, 0x13

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    iget-object v3, v3, Li5/f2;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/i0;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public xgetListValue()Li5/f2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/f2<",
            "+",
            "Li5/i0;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/q1;->_value:Li5/f2;

    return-object p0
.end method

.method public bridge synthetic xgetListValue()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/q1;->xgetListValue()Li5/f2;

    move-result-object p0

    return-object p0
.end method
