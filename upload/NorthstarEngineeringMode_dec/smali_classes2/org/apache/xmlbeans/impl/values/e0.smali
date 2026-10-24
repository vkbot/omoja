.class public Lorg/apache/xmlbeans/impl/values/e0;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"

# interfaces
.implements Li5/i0;


# instance fields
.field public final c:Lorg/apache/xmlbeans/impl/schema/r;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/e0;->r:Ljava/lang/String;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/a;->p:Lorg/apache/xmlbeans/impl/schema/r;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/e0;->c:Lorg/apache/xmlbeans/impl/schema/r;

    return-void
.end method


# virtual methods
.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/e0;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/e0;->r:Ljava/lang/String;

    check-cast p1, Li5/i0;

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get_wscanon_rule()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/e0;->c:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/e0;->r:Ljava/lang/String;

    return-void
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/e0;->r:Ljava/lang/String;

    return-void
.end method

.method public final value_hash_code()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/e0;->r:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
