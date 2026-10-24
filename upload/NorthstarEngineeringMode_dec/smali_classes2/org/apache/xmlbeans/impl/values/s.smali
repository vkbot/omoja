.class public Lorg/apache/xmlbeans/impl/values/s;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/values/s$a;
    }
.end annotation


# static fields
.field public static final r:Lorg/apache/xmlbeans/impl/values/s$a;


# instance fields
.field public c:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/values/s$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/values/s;->r:Lorg/apache/xmlbeans/impl/values/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    return-void
.end method

.method public static M0(Ljava/lang/String;Lj5/h;)Ljavax/xml/namespace/QName;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lj5/p;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lj5/p;->c(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const-string v3, ""

    if-ltz v2, :cond_4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "\'"

    const-string v5, "QName"

    if-lez v2, :cond_6

    invoke-static {v1}, Lj5/p;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Lorg/apache/xmlbeans/impl/values/x2;

    const-string v0, "Prefix not a valid NCName in \'"

    invoke-static {v0, p0, v4}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v5, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_5
    invoke-static {v0}, Lj5/p;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez p1, :cond_7

    const/4 p0, 0x0

    goto :goto_6

    :cond_7
    invoke-interface {p1, v1}, Lj5/h;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_6
    if-nez p0, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_8

    goto :goto_7

    :cond_8
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    const-string p1, "Can\'t resolve prefix \'"

    invoke-static {p1, v1, v4}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_9
    move-object v3, p0

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a

    new-instance p0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, v3, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    new-instance p0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, v3, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_b
    new-instance p1, Lorg/apache/xmlbeans/impl/values/x2;

    const-string v0, "Localname not a valid NCName in \'"

    invoke-static {v0, p0, v4}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v5, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static h1(Ljava/lang/String;Lj5/m;Lj5/h;)Ljavax/xml/namespace/QName;
    .locals 0

    :try_start_0
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/s;->M0(Ljava/lang/String;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lj5/m;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/s;->r:Lorg/apache/xmlbeans/impl/values/s$a;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/values/y;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ":"

    invoke-static {p1, v0, p0}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getQNameValue()Ljavax/xml/namespace/QName;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public get_wscanon_rule()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->u:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_QName(Ljavax/xml/namespace/QName;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/y;->p(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/s;->M0(Ljava/lang/String;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public set_xmlanysimple(Li5/i0;)V
    .locals 1

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->e()Lorg/apache/xmlbeans/impl/values/x$a;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/values/x$a;->a:Lorg/apache/xmlbeans/impl/values/x;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/s;->M0(Ljava/lang/String;Lj5/h;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public final value_hash_code()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/s;->c:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->hashCode()I

    move-result p0

    return p0
.end method
