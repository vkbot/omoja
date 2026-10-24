.class public final Lorg/apache/xmlbeans/impl/schema/j;
.super Lorg/apache/xmlbeans/impl/schema/m;
.source "SourceFile"

# interfaces
.implements Li5/u;


# static fields
.field public static final H:[Ljavax/xml/namespace/QName;


# instance fields
.field public final A:Ljava/util/LinkedHashSet;

.field public B:Z

.field public C:Z

.field public final D:Lorg/apache/xmlbeans/impl/schema/g;

.field public E:Ljava/lang/String;

.field public F:Li5/u$a;

.field public final G:Li5/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/j;->H:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/g;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/m;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/j;->A:Ljava/util/LinkedHashSet;

    new-instance v0, Li5/u$a;

    invoke-direct {v0, p0}, Li5/r$a;-><init>(Li5/r;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/j;->G:Li5/u$a;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/j;->D:Lorg/apache/xmlbeans/impl/schema/g;

    return-void
.end method


# virtual methods
.method public final H()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->E:Ljava/lang/String;

    return-object p0
.end method

.method public final K()Li5/r$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->G:Li5/u$a;

    return-object p0
.end method

.method public final N()[Ljavax/xml/namespace/QName;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->A:Ljava/util/LinkedHashSet;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/j;->H:[Ljavax/xml/namespace/QName;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public final R()Li5/u;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->F:Li5/u$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/r$a;->a()Li5/r;

    move-result-object p0

    check-cast p0, Li5/u;

    :goto_0
    return-object p0
.end method

.method public final f()Li5/f0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->D:Lorg/apache/xmlbeans/impl/schema/g;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g;->b()Li5/f0;

    move-result-object p0

    return-object p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->C:Z

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/j;->B:Z

    return p0
.end method

.method public final o()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
