.class public final Lorg/apache/xmlbeans/impl/values/m0;
.super Lorg/apache/xmlbeans/impl/values/b;
.source "SourceFile"

# interfaces
.implements Li5/m0;


# static fields
.field public static final synthetic x:I


# instance fields
.field public final r:Li5/c0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/m0;->r:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static h1(Ljava/lang/String;Li5/c0;Lj5/m;)V
    .locals 1

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "boolean"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/m0;->r:Li5/c0;

    return-object p0
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/m0;->r:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/m0;->h1(Ljava/lang/String;Li5/c0;Lj5/m;)V

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/b;->M0(Ljava/lang/String;Lj5/m;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/values/b;->c:Z

    return-void
.end method

.method public final validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/values/b;->M0(Ljava/lang/String;Lj5/m;)Z

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/m0;->r:Li5/c0;

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/m0;->h1(Ljava/lang/String;Li5/c0;Lj5/m;)V

    return-void
.end method
