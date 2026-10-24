.class public final Lorg/apache/xmlbeans/impl/schema/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/d0$a;,
        Lorg/apache/xmlbeans/impl/schema/d0$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v1, "all"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v1, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v2, "sequence"

    invoke-static {v2, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v3, "choice"

    invoke-static {v3, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v4, "element"

    invoke-static {v4, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v5, "any"

    invoke-static {v5, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v5

    const/4 v7, 0x5

    invoke-direct {v4, v7, v5}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v7, "group"

    invoke-static {v7, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v7

    const/16 v8, 0x64

    invoke-direct {v5, v8, v7}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    filled-new-array/range {v0 .. v5}, [Lorg/apache/xmlbeans/impl/schema/d0$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/d0;->a:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v1, "attribute"

    invoke-static {v1, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v2, "attributeGroup"

    invoke-static {v2, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    const/16 v3, 0x65

    invoke-direct {v1, v3, v2}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/d0$a;

    const-string v3, "anyAttribute"

    invoke-static {v3, v6}, Lj5/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v3

    const/16 v4, 0x66

    invoke-direct {v2, v4, v3}, Lorg/apache/xmlbeans/impl/schema/d0$a;-><init>(ILjavax/xml/namespace/QName;)V

    filled-new-array {v0, v1, v2}, [Lorg/apache/xmlbeans/impl/schema/d0$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/d0;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lorg/apache/xmlbeans/impl/schema/f;)Lorg/apache/xmlbeans/impl/schema/d0$b;
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/f;->c:I

    if-nez v0, :cond_0

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    sget-object v0, Li5/k;->Z:Li5/k;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object p0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    sget-object v0, Li5/k;->Z:Li5/k;

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/f;->b:Li5/k;

    if-nez p0, :cond_2

    sget-object p0, Li5/k;->Z:Li5/k;

    :cond_2
    invoke-direct {v0, p0, v2}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object v0
.end method

.method public static b(Li5/z;)Lorg/apache/xmlbeans/impl/schema/d0$b;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    sget-object v1, Li5/k;->Z:Li5/k;

    invoke-direct {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Li5/z;->t0()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    sget-object v1, Li5/k;->Z:Li5/k;

    invoke-direct {p0, v1, v0}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    invoke-interface {p0}, Li5/z;->T()I

    move-result v1

    if-ne v1, v3, :cond_2

    sget-object p0, Li5/k;->Z:Li5/k;

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Li5/z;->r()Li5/k;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0, v2}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object v0

    :cond_3
    new-instance v1, Li5/l;

    invoke-direct {v1}, Li5/l;-><init>()V

    move v2, v0

    :goto_1
    invoke-interface {p0}, Li5/z;->q()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-interface {p0, v0}, Li5/z;->Y(I)Li5/z;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/d0;->b(Li5/z;)Lorg/apache/xmlbeans/impl/schema/d0$b;

    move-result-object v3

    iget-object v4, v3, Lorg/apache/xmlbeans/impl/schema/d0$b;->a:Li5/k;

    invoke-virtual {v1, v4}, Li5/l;->a(Li5/k;)V

    iget-boolean v3, v3, Lorg/apache/xmlbeans/impl/schema/d0$b;->b:Z

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/d0$b;

    invoke-virtual {v1}, Li5/l;->k()Li5/k;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/d0$b;-><init>(Li5/k;Z)V

    return-object p0
.end method
