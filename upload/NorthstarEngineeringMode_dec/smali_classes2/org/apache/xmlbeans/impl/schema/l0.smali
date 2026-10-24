.class public final Lorg/apache/xmlbeans/impl/schema/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/xmlbeans/impl/schema/z;

.field public b:Ln5/d;

.field public c:Ln5/e;

.field public d:Lorg/apache/xmlbeans/impl/schema/z$a;

.field public e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/z$a;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/z$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getBasePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xsb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/schema/z;->getLoaderStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6
    new-instance v0, Ln5/d;

    .line 7
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v0

    const v1, -0x25854542

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->f:I

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    const/16 v0, 0x18

    const/4 v2, 0x3

    if-gt v1, v0, :cond_4

    const/16 v0, 0xe

    if-lt v1, v0, :cond_3

    const/16 v0, 0x12

    .line 11
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->h:I

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v0

    if-eq v0, p3, :cond_2

    const v1, 0xffff

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Li5/e0;

    const-string v1, "XML-BEANS compiled schema: File has the wrong type - expecting type "

    const-string v2, ", got type "

    .line 15
    invoke-static {v1, p3, v2, v0}, Landroidx/activity/result/a;->c(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p3, p1, p2, v0}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 17
    :cond_2
    :goto_0
    new-instance p2, Lorg/apache/xmlbeans/impl/schema/z$a;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlbeans/impl/schema/z$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    .line 18
    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/schema/z$a;->b(Ln5/d;)V

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->i:I

    return-void

    .line 19
    :cond_3
    new-instance p0, Li5/e0;

    const-string p3, "XML-BEANS compiled schema: Incompatible minor version - expecting at least 14, got "

    .line 20
    invoke-static {p3, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2, v2}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 22
    :cond_4
    new-instance p0, Li5/e0;

    const-string p3, "XML-BEANS compiled schema: Incompatible minor version - expecting up to 24, got "

    .line 23
    invoke-static {p3, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2, v2}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 25
    :cond_5
    new-instance p0, Li5/e0;

    const-string p3, "XML-BEANS compiled schema: Wrong major version - expecting 2, got "

    .line 26
    invoke-static {p3, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 27
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2, v2}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 28
    :cond_6
    new-instance p0, Li5/e0;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    const-string v0, "XML-BEANS compiled schema: Wrong magic cookie"

    invoke-direct {p0, v0, p1, p2, p3}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 29
    :cond_7
    new-instance p0, Li5/e0;

    const-string p3, "XML-BEANS compiled schema: Could not locate compiled schema resource "

    .line 30
    invoke-static {p3, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 31
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public final A([B)V
    .locals 6

    :try_start_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance p1, Li5/e0;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v4, 0x9

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1
.end method

.method public final B()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    return-void

    :goto_1
    new-instance v0, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0
.end method

.method public final C(Li5/r;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Li5/r;->o()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XM_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Li5/e0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot write handle for component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v0, p0, v2}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XD_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XN_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XA_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_6
    check-cast p1, Li5/c0;

    invoke-interface {p1}, Li5/c0;->H0()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_BI_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XT_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Li5/c0;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XO_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/c0;->l0()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_XY_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_a
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypePool()Lorg/apache/xmlbeans/impl/schema/v;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_2

    :cond_b
    invoke-interface {p1}, Li5/r;->f()Li5/f0;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/schema/v;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ne v1, v2, :cond_12

    instance-of v1, p1, Li5/c0;

    if-eqz v1, :cond_c

    check-cast p1, Li5/c0;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->g(Li5/c0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    instance-of v1, p1, Li5/u;

    if-eqz v1, :cond_d

    check-cast p1, Li5/u;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->d(Li5/u;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_d
    instance-of v1, p1, Li5/t;

    if-eqz v1, :cond_e

    check-cast p1, Li5/t;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->b(Li5/t;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_e
    instance-of v1, p1, Li5/y;

    if-eqz v1, :cond_f

    check-cast p1, Li5/y;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->f(Li5/y;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_f
    instance-of v1, p1, Li5/p;

    if-eqz v1, :cond_10

    check-cast p1, Li5/p;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->c(Li5/p;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_10
    instance-of v1, p1, Li5/v;

    if-eqz v1, :cond_11

    check-cast p1, Li5/v;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/v;->e(Li5/v;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Component type cannot have a handle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot supply handles for types from another type system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final D(Li5/v;)V
    .locals 4

    invoke-interface {p1}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Li5/v;->J()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/v;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/n;->s()Li5/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    invoke-interface {p1}, Li5/v;->p0()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Li5/v;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Li5/v;->j0()Li5/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    :cond_1
    invoke-interface {p1}, Li5/v;->F0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/i0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/xmlbeans/impl/schema/i0;-><init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-interface {p1}, Li5/r;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void
.end method

.method public final E()V
    .locals 7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypePool()Lorg/apache/xmlbeans/impl/schema/v;

    move-result-object v1

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/schema/v;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/u;

    invoke-direct {v3, v1, p0}, Lorg/apache/xmlbeans/impl/schema/u;-><init>(Lorg/apache/xmlbeans/impl/schema/v;Lorg/apache/xmlbeans/impl/schema/l0;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->globalElements()[Li5/u;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->globalAttributes()[Li5/t;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->modelGroups()[Li5/y;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->attributeGroups()[Li5/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->identityConstraints()[Li5/v;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->globalTypes()[Li5/c0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->documentTypes()[Li5/c0;

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-interface {v5}, Li5/c0;->l0()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->attributeTypes()[Li5/c0;

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-interface {v5}, Li5/c0;->e0()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getTypeRefsByClassname()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/i0;

    invoke-direct {v2, p0, v3}, Lorg/apache/xmlbeans/impl/schema/i0;-><init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getNamespaces()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/j0;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lorg/apache/xmlbeans/impl/schema/j0;-><init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedGlobalTypes()[Li5/c0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedModelGroups()[Li5/y;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->redefinedAttributeGroups()[Li5/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->K([Li5/r;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->annotations()[Li5/o;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final F(I)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance p1, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final G(Li5/y;)V
    .locals 4

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/n;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->i:Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->c:Lorg/apache/xmlbeans/XmlObject;

    new-instance v2, Li5/z1;

    invoke-direct {v2}, Li5/z1;-><init>()V

    sget-object v3, Li5/z1$a;->h1:Li5/z1$a;

    invoke-virtual {v2, v3, v1}, Li5/z1;->a(Li5/z1$a;Z)V

    invoke-interface {v0, v2}, Li5/j2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/n;->j:Li5/o;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/n;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void
.end method

.method public final H(Li5/z;)V
    .locals 6

    invoke-interface {p1}, Li5/z;->t0()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/z;->v0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    int-to-short v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p1}, Li5/z;->t0()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    move-object v3, p1

    check-cast v3, Li5/x;

    invoke-interface {v3}, Li5/s;->t()Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :cond_1
    invoke-interface {v3}, Li5/s;->g0()Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    :cond_2
    invoke-interface {v3}, Li5/x;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    :cond_3
    invoke-interface {v3}, Li5/x;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    :cond_4
    invoke-interface {v3}, Li5/x;->Z()Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    :cond_5
    invoke-interface {v3}, Li5/x;->h()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    :cond_6
    instance-of v5, v3, Li5/u;

    if-eqz v5, :cond_8

    check-cast v3, Li5/u;

    invoke-interface {v3}, Li5/u;->l()Z

    move-result v5

    if-eqz v5, :cond_7

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    :cond_7
    invoke-interface {v3}, Li5/u;->j()Z

    move-result v3

    if-eqz v3, :cond_8

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/z;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->z(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Li5/z;->i()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->z(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Li5/z;->B()Li5/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->L(Li5/k;)V

    invoke-interface {p1}, Li5/z;->t0()I

    move-result v0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    if-eq v0, v4, :cond_a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    invoke-interface {p1}, Li5/z;->r()Li5/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->L(Li5/k;)V

    invoke-interface {p1}, Li5/z;->T()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto/16 :goto_4

    :cond_9
    new-instance p1, Li5/e0;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "Unrecognized particle type "

    invoke-direct {p1, v2, v0, p0, v1}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_a
    check-cast p1, Li5/x;

    invoke-interface {p1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Li5/s;->getType()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/s;->d()Li5/i0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->R(Li5/i0;)V

    move-object v0, p1

    check-cast v0, Lw5/b;

    invoke-interface {v0}, Lw5/b;->O0()Lw5/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->N(Lw5/a;)V

    invoke-interface {p1}, Li5/n;->s()Li5/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    instance-of v0, p1, Li5/u;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Li5/u;

    invoke-interface {v0}, Li5/u;->R()Li5/u;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {v0}, Li5/u;->N()[Ljavax/xml/namespace/QName;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_b

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    invoke-interface {p1}, Li5/x;->y()[Li5/v;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_d

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    invoke-interface {p1}, Li5/z;->E()[Li5/z;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v0, p1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->H(Li5/z;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    return-void
.end method

.method public final I(Li5/a0;)V
    .locals 3

    invoke-interface {p1}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Li5/a0;->getType()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/a0;->b()Z

    move-result v0

    invoke-interface {p1}, Li5/a0;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    invoke-interface {p1}, Li5/a0;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    invoke-interface {p1}, Li5/a0;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/a0;->h()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/a0;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->z(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Li5/a0;->i()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->z(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Li5/a0;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/a0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/a0;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/a0;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a0;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a0;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/a0;->m()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/a0;->d()Li5/i0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->R(Li5/i0;)V

    invoke-interface {p1}, Li5/a0;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Li5/a0;->n()[Ljavax/xml/namespace/QName;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v0, p1

    :goto_3
    if-ge v2, v0, :cond_3

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final J(Ljavax/xml/namespace/QName;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void
.end method

.method public final K([Li5/r;)V
    .locals 4

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Li5/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final L(Li5/k;)V
    .locals 4

    invoke-virtual {p1}, Li5/k;->c()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li5/k;->c()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Li5/k;->f()Ljava/util/Set;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/j0;

    invoke-direct {v3, p0, v1}, Lorg/apache/xmlbeans/impl/schema/j0;-><init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Li5/k;->b()Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Li5/k;->e()Ljava/util/Set;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/k0;

    invoke-direct {v3, p0, v1}, Lorg/apache/xmlbeans/impl/schema/k0;-><init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Li5/k;->e()Ljava/util/Set;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Li5/k;->b()Ljava/util/Set;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v0, Lx1/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final M(ILjava/lang/String;)V
    .locals 13

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, ".xsb"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ltz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/z;->getBasePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/z;->getSaverStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v0, Ln5/e;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const p2, -0x25854542

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    const/16 p2, 0x18

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/z$a;->a:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0xfffe

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    move v5, p2

    move v6, v5

    :goto_3
    const/16 v7, 0x7ff

    const/16 v8, 0x7f

    if-ge v5, v1, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_2

    if-gt v9, v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    if-le v9, v7, :cond_3

    add-int/lit8 v6, v6, 0x3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-ge v6, v2, :cond_5

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_5
    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v6, p2

    move v9, v6

    :goto_6
    if-ge v6, v5, :cond_9

    const/16 v10, 0xffd

    if-lt v9, v10, :cond_6

    invoke-virtual {p0, v1, p2, v9}, Ljava/io/OutputStream;->write([BII)V

    move v9, p2

    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_7

    if-gt v10, v8, :cond_7

    add-int/lit8 v11, v9, 0x1

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    :goto_7
    move v9, v11

    goto :goto_9

    :cond_7
    if-le v10, v7, :cond_8

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0xf

    or-int/lit16 v12, v12, 0xe0

    int-to-byte v12, v12

    aput-byte v12, v1, v9

    add-int/lit8 v9, v9, 0x2

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    goto :goto_8

    :cond_8
    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x1f

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v1, v9

    move v9, v11

    :goto_8
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    goto :goto_7

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v1, p2, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :goto_a
    move-object v5, p0

    goto :goto_c

    :cond_a
    :goto_b
    move v1, v4

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto :goto_a

    :cond_b
    return-void

    :goto_c
    new-instance p0, Li5/e0;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/schema/z$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/schema/z$a;->c:Ljava/lang/String;

    const/16 v4, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p0

    :cond_c
    new-instance p0, Li5/e0;

    const-string p1, "Could not write compiled schema resource "

    invoke-static {p1, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, p1, v0, p2, v1}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public final N(Lw5/a;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lw5/a;->a:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    iget-object v0, p1, Lw5/a;->c:[I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lw5/a;->b:[I

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    const/16 v5, 0x5b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v4, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lh5/e;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lh5/e;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, ","

    const-string v2, "["

    const-string v3, "]"

    invoke-static {v0, v2, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final O(I)V
    .locals 8

    const v0, 0xffff

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance p1, Li5/e0;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v6, 0x9

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Li5/e0;

    const-string v2, "Value "

    const-string v3, " out of range: must fit in a 16-bit unsigned short."

    invoke-static {v2, p1, v3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, p1, v1, p0, v2}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public final P(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/z$a;->a(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz v0, :cond_1

    const v1, 0xfffe

    if-ge p1, v1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Li5/e0;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v4, 0x9

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public final Q(Li5/c0;)V
    .locals 12

    invoke-interface {p1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Li5/c0;->w0()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/r;

    iget v1, v0, Lorg/apache/xmlbeans/impl/schema/r;->N:I

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/c0;->h0()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/n;->s()Li5/o;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Li5/c0;->w0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->n()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p1}, Li5/c0;->w0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v1

    invoke-interface {v1}, Li5/s;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->w0()Li5/c0;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v6

    check-cast v6, Li5/w;

    iget-object v7, v1, Lorg/apache/xmlbeans/impl/schema/r;->z:Ljava/util/HashMap;

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v1, Lorg/apache/xmlbeans/impl/schema/r;->I:Li5/q;

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/f;->b()[Li5/w;

    move-result-object v8

    move v9, v3

    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_2

    aget-object v10, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iput-object v7, v1, Lorg/apache/xmlbeans/impl/schema/r;->z:Ljava/util/HashMap;

    :cond_3
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->w0()Li5/c0;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v6

    check-cast v6, Li5/x;

    iget-object v7, v1, Lorg/apache/xmlbeans/impl/schema/r;->y:Ljava/util/HashMap;

    if-nez v7, :cond_7

    iget-object v7, v1, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Lorg/apache/xmlbeans/impl/schema/r;->w:Li5/z;

    invoke-static {v7, v8}, Lorg/apache/xmlbeans/impl/schema/r;->k(Ljava/util/ArrayList;Li5/z;)V

    new-array v8, v3, [Li5/x;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Li5/x;

    iput-object v7, v1, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    :cond_5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v8, v3

    :goto_1
    iget-object v9, v1, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    array-length v9, v9

    if-ge v8, v9, :cond_6

    iget-object v9, v1, Lorg/apache/xmlbeans/impl/schema/r;->x:[Li5/x;

    aget-object v9, v9, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iput-object v7, v1, Lorg/apache/xmlbeans/impl/schema/r;->y:Ljava/util/HashMap;

    :cond_7
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->V()Li5/s;

    move-result-object v1

    check-cast v1, Li5/r;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    :goto_3
    invoke-interface {p1}, Li5/c0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/c0;->C0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/c0;->v()[Li5/c0;

    move-result-object v1

    array-length v6, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v6, v1

    move v7, v3

    :goto_4
    if-ge v7, v6, :cond_9

    aget-object v8, v1, v7

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {p1}, Li5/c0;->m0()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result v1

    invoke-interface {p1}, Li5/c0;->m()Z

    move-result v6

    if-eqz v6, :cond_a

    or-int/lit8 v1, v1, 0x2

    :cond_a
    invoke-interface {p1}, Li5/c0;->n()Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v6, 0x80000

    or-int/2addr v1, v6

    :cond_b
    invoke-interface {p1}, Li5/c0;->q0()I

    move-result v6

    if-eqz v6, :cond_c

    or-int/lit8 v1, v1, 0x4

    :cond_c
    invoke-interface {p1}, Li5/c0;->q0()I

    move-result v6

    if-ne v6, v2, :cond_d

    or-int/lit16 v1, v1, 0x400

    :cond_d
    invoke-interface {p1}, Li5/c0;->z()Z

    move-result v6

    if-eqz v6, :cond_e

    or-int/lit8 v1, v1, 0x8

    :cond_e
    invoke-interface {p1}, Li5/c0;->a0()Z

    move-result v6

    if-eqz v6, :cond_f

    or-int/lit8 v1, v1, 0x10

    :cond_f
    invoke-interface {p1}, Li5/c0;->isNumeric()Z

    move-result v6

    if-eqz v6, :cond_10

    or-int/lit8 v1, v1, 0x20

    :cond_10
    invoke-interface {p1}, Li5/c0;->L()Z

    move-result v6

    if-eqz v6, :cond_11

    or-int/lit8 v1, v1, 0x40

    :cond_11
    iget-boolean v6, v0, Lorg/apache/xmlbeans/impl/schema/r;->m0:Z

    if-eqz v6, :cond_12

    or-int/lit16 v1, v1, 0x80

    :cond_12
    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v6

    if-eqz v6, :cond_13

    or-int/lit16 v1, v1, 0x100

    :cond_13
    invoke-interface {p1}, Li5/c0;->b0()Z

    move-result v6

    if-eqz v6, :cond_14

    or-int/lit16 v1, v1, 0x200

    :cond_14
    invoke-interface {p1}, Li5/c0;->c()Z

    move-result v6

    if-eqz v6, :cond_15

    or-int/lit16 v1, v1, 0x1000

    :cond_15
    invoke-interface {p1}, Li5/c0;->g()Z

    move-result v6

    if-eqz v6, :cond_16

    or-int/lit16 v1, v1, 0x2000

    :cond_16
    invoke-interface {p1}, Li5/c0;->l()Z

    move-result v6

    if-eqz v6, :cond_17

    or-int/lit16 v1, v1, 0x4000

    :cond_17
    invoke-interface {p1}, Li5/c0;->j()Z

    move-result v6

    if-eqz v6, :cond_18

    or-int/lit16 v1, v1, 0x4000

    :cond_18
    invoke-interface {p1}, Li5/c0;->I()Z

    move-result v6

    if-eqz v6, :cond_19

    const/high16 v6, 0x20000

    or-int/2addr v1, v6

    :cond_19
    invoke-interface {p1}, Li5/c0;->u()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/high16 v6, 0x10000

    or-int/2addr v1, v6

    :cond_1a
    invoke-interface {p1}, Li5/c0;->h()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/high16 v6, 0x40000

    or-int/2addr v1, v6

    :cond_1b
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->O()Li5/c0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/c0;->r0()Li5/q;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/f;->b()[Li5/w;

    move-result-object v6

    array-length v7, v6

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v7, v6

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_1c

    aget-object v9, v6, v8

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/schema/l0;->x(Li5/w;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_1c
    iget-object v6, v1, Lorg/apache/xmlbeans/impl/schema/f;->b:Li5/k;

    if-nez v6, :cond_1d

    sget-object v6, Li5/k;->Z:Li5/k;

    :cond_1d
    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->L(Li5/k;)V

    iget v1, v1, Lorg/apache/xmlbeans/impl/schema/f;->c:I

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->T0()[Li5/a0;

    move-result-object v1

    array-length v6, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v6, v1

    move v7, v3

    :goto_6
    if-ge v7, v6, :cond_1e

    aget-object v8, v1, v7

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/l0;->I(Li5/a0;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_1e
    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result v1

    if-eq v1, v5, :cond_1f

    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_22

    :cond_1f
    invoke-interface {p1}, Li5/c0;->k0()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/c0;->W()Li5/z;

    move-result-object v1

    if-eqz v1, :cond_20

    new-array v1, v4, [Li5/z;

    invoke-interface {p1}, Li5/c0;->W()Li5/z;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_7

    :cond_20
    new-array v1, v3, [Li5/z;

    :goto_7
    array-length v6, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v6, v1

    move v7, v3

    :goto_8
    if-ge v7, v6, :cond_21

    aget-object v8, v1, v7

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/l0;->H(Li5/z;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_21
    invoke-interface {p1}, Li5/c0;->D()[Li5/a0;

    move-result-object v1

    array-length v6, v1

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v6, v1

    move v7, v3

    :goto_9
    if-ge v7, v6, :cond_22

    aget-object v8, v1, v7

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/l0;->I(Li5/a0;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_22
    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result v1

    if-ne v1, v2, :cond_32

    :cond_23
    invoke-interface {p1}, Li5/c0;->B0()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    move v1, v3

    move v6, v1

    :goto_a
    const/16 v7, 0xb

    if-gt v1, v7, :cond_25

    invoke-interface {p1, v1}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v7

    if-eqz v7, :cond_24

    add-int/lit8 v6, v6, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_25
    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    move v1, v3

    :goto_b
    if-gt v1, v7, :cond_27

    invoke-interface {p1, v1}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->R(Li5/i0;)V

    invoke-interface {p1, v1}, Li5/c0;->p(I)Z

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    invoke-interface {p1}, Li5/c0;->K0()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/r;->f0:[Lk5/h;

    if-nez v0, :cond_28

    new-array v0, v3, [Lk5/h;

    goto :goto_c

    :cond_28
    array-length v1, v0

    new-array v1, v1, [Lk5/h;

    array-length v6, v0

    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_c
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v1, v0

    move v6, v3

    :goto_d
    if-ge v6, v1, :cond_29

    aget-object v7, v0, v6

    iget-object v7, v7, Lk5/h;->c:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_29
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-nez v0, :cond_2a

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto :goto_11

    :cond_2a
    array-length v1, v0

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz v6, :cond_2c

    const v7, 0xfffe

    if-ge v1, v7, :cond_2b

    :try_start_0
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_f

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_e

    :cond_2b
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :goto_e
    new-instance p1, Li5/e0;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v4, 0x9

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1

    :cond_2c
    :goto_f
    array-length v1, v0

    move v6, v3

    :goto_10
    if-ge v6, v1, :cond_2d

    aget-object v7, v0, v6

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->R(Li5/i0;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_2d
    :goto_11
    invoke-interface {p1}, Li5/c0;->n0()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/c0;->L()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Li5/c0;->J0()[Li5/b0;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v1, v0

    move v6, v3

    :goto_12
    if-ge v6, v1, :cond_2e

    aget-object v7, v0, v6

    invoke-interface {v7}, Li5/b0;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {v7}, Li5/b0;->getIntValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {v7}, Li5/b0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2e
    invoke-interface {p1}, Li5/c0;->B0()I

    move-result v0

    if-eq v0, v4, :cond_31

    if-eq v0, v2, :cond_30

    if-eq v0, v5, :cond_2f

    goto :goto_14

    :cond_2f
    invoke-interface {p1}, Li5/c0;->R0()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    goto :goto_14

    :cond_30
    invoke-interface {p1}, Li5/c0;->Q0()[Li5/c0;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    array-length v1, v0

    :goto_13
    if-ge v3, v1, :cond_32

    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_31
    invoke-interface {p1}, Li5/c0;->d0()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/c0;->z0()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    :cond_32
    :goto_14
    invoke-interface {p1}, Li5/r;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void
.end method

.method public final R(Li5/i0;)V
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto/16 :goto_1

    :cond_2
    invoke-interface {v1}, Li5/c0;->B0()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->xgetListValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/k0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/k0;-><init>(Lorg/apache/xmlbeans/impl/schema/l0;I)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Li5/c0;->d0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {v0}, Li5/g0;->getDoubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance p1, Li5/e0;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v7, 0x9

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1

    :pswitch_1
    invoke-interface {v0}, Li5/g0;->getFloatValue()F

    move-result p1

    float-to-double v0, p1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->c:Ln5/e;

    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    new-instance p1, Li5/e0;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v7, 0x9

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw p1

    :pswitch_2
    invoke-interface {v0}, Li5/g0;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    goto :goto_1

    :pswitch_3
    invoke-interface {v0}, Li5/g0;->getByteArrayValue()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->A([B)V

    goto :goto_1

    :pswitch_4
    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final a(I)Z
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->g:I

    if-le v0, p1, :cond_2

    return v2

    :cond_2
    if-ge v0, p1, :cond_3

    return v3

    :cond_3
    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->h:I

    if-ltz p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2
.end method

.method public final b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/LinkageError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading of resource "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "failed, information from "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".index.xsb is  out of sync (or conflicting index files found)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lorg/apache/xmlbeans/impl/schema/r;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, ""

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    :try_start_0
    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/z;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v4

    new-instance v11, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-direct {v11, v4}, Lorg/apache/xmlbeans/impl/schema/r;-><init>(Lorg/apache/xmlbeans/impl/schema/g;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v4
    :try_end_0
    .catch Li5/e0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-object v4, v11, Lorg/apache/xmlbeans/impl/schema/r;->a:Ljavax/xml/namespace/QName;
    :try_end_1
    .catch Li5/e0; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->u()Li5/c0$a;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/apache/xmlbeans/impl/schema/r;->d1(Li5/c0$a;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4
    :try_end_2
    .catch Li5/e0; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v4, v11, Lorg/apache/xmlbeans/impl/schema/r;->N:I
    :try_end_3
    .catch Li5/e0; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->u()Li5/c0$a;

    move-result-object v4
    :try_end_4
    .catch Li5/e0; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-object v4, v11, Lorg/apache/xmlbeans/impl/schema/r;->M:Li5/c0$a;
    :try_end_5
    .catch Li5/e0; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4
    :try_end_6
    .catch Li5/e0; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v4, v11, Lorg/apache/xmlbeans/impl/schema/r;->O:I
    :try_end_7
    .catch Li5/e0; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->Y(Li5/o;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x3

    if-eq v5, v13, :cond_2

    if-eq v5, v12, :cond_1

    if-eq v5, v14, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5
    :try_end_8
    .catch Li5/e0; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput v12, v11, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    iput v5, v11, Lorg/apache/xmlbeans/impl/schema/r;->h:I
    :try_end_9
    .catch Li5/e0; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object v2, v0

    move-object v8, v2

    goto/16 :goto_2e

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_30

    :catch_1
    move-exception v0

    move-object v8, v0

    goto/16 :goto_2e

    :catch_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2f

    :cond_1
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5
    :try_end_a
    .catch Li5/e0; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput v13, v11, Lorg/apache/xmlbeans/impl/schema/r;->g:I

    iput v5, v11, Lorg/apache/xmlbeans/impl/schema/r;->h:I
    :try_end_b
    .catch Li5/e0; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->V0(Li5/r$a;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v2

    :cond_3
    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->c1(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v5

    :goto_2
    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->b1(Ljava/lang/String;)V
    :try_end_c
    .catch Li5/e0; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    new-array v5, v2, [Li5/c0$a;

    const/4 v15, 0x0

    move v6, v15

    :goto_3
    if-ge v6, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v7

    check-cast v7, Li5/c0$a;

    aput-object v7, v5, v6
    :try_end_d
    .catch Li5/e0; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_16
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :try_start_e
    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->c0([Li5/c0$a;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->g0(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v2

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_6

    move/from16 v16, v13

    goto :goto_4

    :cond_6
    move/from16 v16, v15

    :goto_4
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->S0()V

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_7

    move v5, v13

    goto :goto_5

    :cond_7
    move v5, v15

    :goto_5
    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->Y0(Z)V

    const/high16 v5, 0x80000

    and-int/2addr v5, v2

    if-eqz v5, :cond_8

    move v5, v13

    goto :goto_6

    :cond_8
    move v5, v15

    :goto_6
    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->i0(Z)V
    :try_end_e
    .catch Li5/e0; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    xor-int/lit8 v5, v16, 0x1

    :try_start_f
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->i()V

    iput-boolean v5, v11, Lorg/apache/xmlbeans/impl/schema/r;->L:Z
    :try_end_f
    .catch Li5/e0; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_15
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/high16 v17, 0x10000

    const/high16 v18, 0x20000

    const v19, 0x8000

    if-eqz v16, :cond_1c

    const/high16 v5, 0x40000

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    move v6, v13

    goto :goto_7

    :cond_9
    move v6, v15

    :goto_7
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_a

    move v7, v13

    goto :goto_8

    :cond_a
    move v7, v15

    :goto_8
    and-int v5, v2, v19

    if-eqz v5, :cond_b

    move v8, v13

    goto :goto_9

    :cond_b
    move v8, v15

    :goto_9
    and-int v5, v2, v18

    if-eqz v5, :cond_c

    move v9, v13

    goto :goto_a

    :cond_c
    move v9, v15

    :goto_a
    and-int v5, v2, v17

    if-eqz v5, :cond_d

    move v10, v13

    goto :goto_b

    :cond_d
    move v10, v15

    :goto_b
    move-object v5, v11

    :try_start_10
    invoke-virtual/range {v5 .. v10}, Lorg/apache/xmlbeans/impl/schema/r;->T(ZZZZZ)V

    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_e

    move v5, v13

    goto :goto_c

    :cond_e
    move v5, v15

    :goto_c
    and-int/lit16 v6, v2, 0x2000

    if-eqz v6, :cond_f

    move v6, v13

    goto :goto_d

    :cond_f
    move v6, v15

    :goto_d
    invoke-virtual {v11, v5, v6}, Lorg/apache/xmlbeans/impl/schema/r;->O0(ZZ)V
    :try_end_10
    .catch Li5/e0; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    and-int/lit16 v5, v2, 0x200

    if-eqz v5, :cond_10

    move v5, v13

    goto :goto_e

    :cond_10
    move v5, v15

    :goto_e
    :try_start_11
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->b()V

    iput-boolean v5, v11, Lorg/apache/xmlbeans/impl/schema/r;->D:Z
    :try_end_11
    .catch Li5/e0; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v10
    :try_end_12
    .catch Li5/e0; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v10, v11, Lorg/apache/xmlbeans/impl/schema/r;->H:I
    :try_end_13
    .catch Li5/e0; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/16 v5, 0x17

    :try_start_14
    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->u()Li5/c0$a;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/schema/r;->W0(Li5/c0$a;)V

    :cond_11
    new-instance v9, Lorg/apache/xmlbeans/impl/schema/f;

    invoke-direct {v9}, Lorg/apache/xmlbeans/impl/schema/f;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    move v6, v15

    :goto_f
    if-ge v6, v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->f()Lorg/apache/xmlbeans/impl/schema/l;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/apache/xmlbeans/impl/schema/f;->a(Lorg/apache/xmlbeans/impl/schema/l;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->q()Li5/k;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/schema/f;->d(Li5/k;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/schema/f;->c(I)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    move v6, v15

    :goto_10
    const/4 v7, 0x6

    if-ge v6, v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->m()Lorg/apache/xmlbeans/impl/schema/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/p;->b()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/p;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_10

    :cond_13
    new-instance v2, Li5/e0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not an attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v7}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_14
    if-eq v10, v14, :cond_16

    const/4 v4, 0x4

    if-ne v10, v4, :cond_15

    goto :goto_11

    :cond_15
    move v5, v13

    move v4, v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_14

    :cond_16
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->l()[Li5/z;

    move-result-object v5

    array-length v6, v5

    if-ne v6, v13, :cond_17

    aget-object v5, v5, v15

    goto :goto_12

    :cond_17
    array-length v5, v5

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    :goto_12
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v15

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v15, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->m()Lorg/apache/xmlbeans/impl/schema/p;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/xmlbeans/impl/schema/p;->b()Z

    move-result v21

    if-nez v21, :cond_18

    invoke-virtual {v12}, Lorg/apache/xmlbeans/impl/schema/p;->getName()Ljavax/xml/namespace/QName;

    move-result-object v13

    invoke-interface {v6, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_13

    :cond_18
    new-instance v2, Li5/e0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not an element"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v7}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_19
    move-object v12, v5

    move v5, v13

    move-object v13, v6

    :goto_14
    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_15

    :cond_1a
    const/4 v4, 0x0

    :goto_15
    move-object v5, v11

    move-object v6, v12

    move-object v7, v9

    move-object v14, v8

    move-object v8, v13

    move-object v13, v9

    move-object v9, v14

    move v14, v10

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lorg/apache/xmlbeans/impl/schema/r;->X0(Li5/z;Lorg/apache/xmlbeans/impl/schema/f;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/d0;->b(Li5/z;)Lorg/apache/xmlbeans/impl/schema/d0$b;

    move-result-object v4

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/d0;->a(Lorg/apache/xmlbeans/impl/schema/f;)Lorg/apache/xmlbeans/impl/schema/d0$b;

    move-result-object v5

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/schema/d0$b;->a:Li5/k;

    iget-object v5, v5, Lorg/apache/xmlbeans/impl/schema/d0$b;->a:Li5/k;
    :try_end_14
    .catch Li5/e0; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-object v4, v11, Lorg/apache/xmlbeans/impl/schema/r;->E:Li5/k;

    iput-object v5, v11, Lorg/apache/xmlbeans/impl/schema/r;->F:Li5/k;
    :try_end_15
    .catch Li5/e0; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move v10, v14

    goto :goto_16

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_1b
    :try_start_16
    new-instance v2, Li5/e0;

    const-string v4, "Content model not well-formed"

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-direct {v2, v4, v5, v6, v7}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :cond_1c
    const/4 v10, 0x0

    :goto_16
    if-eqz v16, :cond_1d

    const/4 v4, 0x2

    if-ne v10, v4, :cond_35

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4
    :try_end_16
    .catch Li5/e0; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v4, v11, Lorg/apache/xmlbeans/impl/schema/r;->K:I
    :try_end_17
    .catch Li5/e0; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_17

    :cond_1e
    const/4 v5, 0x0

    :goto_17
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_1f

    const/4 v6, 0x0

    goto :goto_18

    :cond_1f
    and-int/lit16 v6, v2, 0x400

    if-eqz v6, :cond_20

    const/4 v6, 0x2

    goto :goto_18

    :cond_20
    const/4 v6, 0x1

    :goto_18
    :try_start_18
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v6, v11, Lorg/apache/xmlbeans/impl/schema/r;->S:I
    :try_end_18
    .catch Li5/e0; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_13
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_19

    :cond_21
    const/4 v6, 0x0

    :goto_19
    :try_start_19
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean v6, v11, Lorg/apache/xmlbeans/impl/schema/r;->U:Z
    :try_end_19
    .catch Li5/e0; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_1a

    :cond_22
    const/4 v6, 0x0

    :goto_1a
    :try_start_1a
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean v6, v11, Lorg/apache/xmlbeans/impl/schema/r;->T:Z
    :try_end_1a
    .catch Li5/e0; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    goto :goto_1b

    :cond_23
    const/4 v6, 0x0

    :goto_1b
    :try_start_1b
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean v6, v11, Lorg/apache/xmlbeans/impl/schema/r;->V:Z
    :try_end_1b
    .catch Li5/e0; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_24

    const/4 v6, 0x1

    goto :goto_1c

    :cond_24
    const/4 v6, 0x0

    :goto_1c
    :try_start_1c
    invoke-virtual {v11, v6}, Lorg/apache/xmlbeans/impl/schema/r;->i1(Z)V

    and-int v6, v2, v19

    if-eqz v6, :cond_25

    const/4 v6, 0x1

    goto :goto_1d

    :cond_25
    const/4 v6, 0x0

    :goto_1d
    and-int v7, v2, v18

    if-eqz v7, :cond_26

    const/4 v7, 0x1

    goto :goto_1e

    :cond_26
    const/4 v7, 0x0

    :goto_1e
    and-int v8, v2, v17

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_1f

    :cond_27
    const/4 v8, 0x0

    :goto_1f
    invoke-virtual {v11, v6, v7, v8}, Lorg/apache/xmlbeans/impl/schema/r;->f1(ZZZ)V

    const/16 v6, 0xc

    new-array v7, v6, [Lorg/apache/xmlbeans/impl/schema/h0;

    new-array v6, v6, [Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v8

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v8, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v12

    aput-object v12, v7, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_28

    const/4 v12, 0x1

    goto :goto_21

    :cond_28
    const/4 v12, 0x0

    :goto_21
    aput-boolean v12, v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_29
    invoke-virtual {v11, v7, v6}, Lorg/apache/xmlbeans/impl/schema/r;->v0([Lorg/apache/xmlbeans/impl/schema/h0;[Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v6
    :try_end_1c
    .catch Li5/e0; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :try_start_1d
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v6, v11, Lorg/apache/xmlbeans/impl/schema/r;->d0:I
    :try_end_1d
    .catch Li5/e0; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_22

    :cond_2a
    const/4 v2, 0x0

    :goto_22
    :try_start_1e
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-boolean v2, v11, Lorg/apache/xmlbeans/impl/schema/r;->e0:Z
    :try_end_1e
    .catch Li5/e0; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    new-array v6, v2, [Lk5/h;

    const/4 v7, 0x0

    :goto_23
    if-ge v7, v2, :cond_2b

    new-instance v8, Lk5/h;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lk5/h;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7
    :try_end_1f
    .catch Li5/e0; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_2b
    :try_start_20
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    invoke-virtual {v6}, [Lk5/h;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lk5/h;

    iput-object v2, v11, Lorg/apache/xmlbeans/impl/schema/r;->f0:[Lk5/h;
    :try_end_20
    .catch Li5/e0; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    new-array v6, v2, [Lorg/apache/xmlbeans/impl/schema/h0;

    const/4 v7, 0x0

    :goto_24
    if-ge v7, v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_2c
    if-nez v2, :cond_2d

    const/4 v6, 0x0

    :cond_2d
    invoke-virtual {v11, v6}, Lorg/apache/xmlbeans/impl/schema/r;->Z0([Lorg/apache/xmlbeans/impl/schema/h0;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->u()Li5/c0$a;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->t0(Li5/c0$a;)V
    :try_end_21
    .catch Li5/e0; {:try_start_21 .. :try_end_21} :catch_2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-eqz v5, :cond_30

    :try_start_22
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9
    .catch Li5/e0; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :try_start_23
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    const v6, 0xfffe

    if-ne v5, v6, :cond_2e

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Li5/e0; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_26

    :goto_25
    move-object v2, v0

    goto :goto_28

    :cond_2e
    :goto_26
    :try_start_24
    new-array v2, v5, [Li5/b0;

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v5, :cond_2f

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/q;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xmlbeans/impl/schema/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_2f
    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->g1([Li5/b0;)V
    :try_end_24
    .catch Li5/e0; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    :cond_30
    const/4 v2, 0x1

    goto :goto_2a

    :catch_7
    move-exception v0

    goto :goto_25

    :goto_28
    move-object v9, v2

    goto :goto_29

    :catch_8
    move-exception v0

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v9, v0

    :goto_29
    :try_start_25
    new-instance v2, Li5/e0;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v1, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v8, 0x9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v2
    :try_end_25
    .catch Li5/e0; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :goto_2a
    if-eq v4, v2, :cond_34

    const/4 v2, 0x2

    if-eq v4, v2, :cond_32

    const/4 v2, 0x3

    if-ne v4, v2, :cond_31

    :try_start_26
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/a;->p:Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/r;->getRef()Li5/c0$a;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->e1(Li5/c0$a;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->u()Li5/c0$a;

    move-result-object v2
    :try_end_26
    .catch Li5/e0; {:try_start_26 .. :try_end_26} :catch_2
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :try_start_27
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput-object v2, v11, Lorg/apache/xmlbeans/impl/schema/r;->l0:Li5/c0$a;
    :try_end_27
    .catch Li5/e0; {:try_start_27 .. :try_end_27} :catch_2
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_a
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_2c

    :catch_a
    move-exception v0

    goto/16 :goto_0

    :cond_31
    :try_start_28
    new-instance v2, Li5/e0;

    const-string v4, "Simple type does not have a recognized variety"

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v7, 0x8

    invoke-direct {v2, v4, v5, v6, v7}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_32
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/a;->p:Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/r;->getRef()Li5/c0$a;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->e1(Li5/c0$a;)V
    :try_end_28
    .catch Li5/e0; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    new-array v4, v2, [Li5/c0$a;

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v2, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v5

    check-cast v5, Li5/c0$a;

    aput-object v5, v4, v15
    :try_end_29
    .catch Li5/e0; {:try_start_29 .. :try_end_29} :catch_2
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_b
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_2b

    :cond_33
    :try_start_2a
    invoke-virtual {v11, v4}, Lorg/apache/xmlbeans/impl/schema/r;->h1([Li5/c0$a;)V

    goto :goto_2c

    :catch_b
    move-exception v0

    goto/16 :goto_0

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->u()Li5/c0$a;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->e1(Li5/c0$a;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v2
    :try_end_2a
    .catch Li5/e0; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :try_start_2b
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->d()V

    iput v2, v11, Lorg/apache/xmlbeans/impl/schema/r;->t0:I
    :try_end_2b
    .catch Li5/e0; {:try_start_2b .. :try_end_2b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_c
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :cond_35
    :goto_2c
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->a1(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v2

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/schema/r;->U0(Lorg/apache/xmlbeans/impl/schema/g;)V

    goto :goto_2d

    :cond_36
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->m()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->l0()Ljavax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v11, v4}, Lorg/apache/xmlbeans/impl/schema/r;->U0(Lorg/apache/xmlbeans/impl/schema/g;)V

    goto :goto_2d

    :cond_37
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->n()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/r;->e0()Ljavax/xml/namespace/QName;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/schema/z;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/g;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->b(Lorg/apache/xmlbeans/impl/schema/g;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v11, v4}, Lorg/apache/xmlbeans/impl/schema/r;->U0(Lorg/apache/xmlbeans/impl/schema/g;)V
    :try_end_2c
    .catch Li5/e0; {:try_start_2c .. :try_end_2c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    :cond_38
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    return-object v11

    :catch_c
    move-exception v0

    goto/16 :goto_0

    :catch_d
    move-exception v0

    goto/16 :goto_0

    :catch_e
    move-exception v0

    goto/16 :goto_0

    :catch_f
    move-exception v0

    goto/16 :goto_0

    :catch_10
    move-exception v0

    goto/16 :goto_0

    :catch_11
    move-exception v0

    goto/16 :goto_0

    :catch_12
    move-exception v0

    goto/16 :goto_0

    :catch_13
    move-exception v0

    goto/16 :goto_0

    :catch_14
    move-exception v0

    goto/16 :goto_0

    :catch_15
    move-exception v0

    goto/16 :goto_0

    :catch_16
    move-exception v0

    goto/16 :goto_0

    :catch_17
    move-exception v0

    goto/16 :goto_0

    :catch_18
    move-exception v0

    goto/16 :goto_0

    :catch_19
    move-exception v0

    goto/16 :goto_0

    :catch_1a
    move-exception v0

    goto/16 :goto_0

    :goto_2e
    :try_start_2d
    new-instance v2, Li5/e0;

    const-string v4, "Cannot load type from typesystem"

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v7, 0xe

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v2

    :goto_2f
    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :goto_30
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/l0;->i()V

    throw v2
.end method

.method public final d(Lorg/apache/xmlbeans/impl/schema/l;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/g;)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v0

    check-cast v0, Li5/c0$a;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->r()Lw5/a;

    move-result-object v8

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object p0

    iget-object p3, p1, Lorg/apache/xmlbeans/impl/schema/l;->e:Ljavax/xml/namespace/QName;

    if-nez p3, :cond_3

    iget-object p3, p1, Lorg/apache/xmlbeans/impl/schema/l;->f:Li5/c0$a;

    if-nez p3, :cond_3

    iput v1, p1, Lorg/apache/xmlbeans/impl/schema/l;->h:I

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/schema/l;->f:Li5/c0$a;

    iput-object v2, p1, Lorg/apache/xmlbeans/impl/schema/l;->a:Ljava/lang/String;

    iput-object v4, p1, Lorg/apache/xmlbeans/impl/schema/l;->j:Lorg/apache/xmlbeans/XmlObject;

    iput-object v3, p1, Lorg/apache/xmlbeans/impl/schema/l;->b:Lorg/apache/xmlbeans/impl/schema/h0;

    if-eqz v2, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, p1, Lorg/apache/xmlbeans/impl/schema/l;->d:Z

    iput-boolean v5, p1, Lorg/apache/xmlbeans/impl/schema/l;->c:Z

    iput-object p2, p1, Lorg/apache/xmlbeans/impl/schema/l;->e:Ljavax/xml/namespace/QName;

    iput-object v8, p1, Lorg/apache/xmlbeans/impl/schema/l;->g:Lw5/a;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/schema/l;->i:Li5/o;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;
    .locals 9

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    new-array v2, v0, [Li5/o$a;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    new-instance v8, Lorg/apache/xmlbeans/impl/schema/d$a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v5, v8, Lorg/apache/xmlbeans/impl/schema/d$a;->a:Ljavax/xml/namespace/QName;

    iput-object v6, v8, Lorg/apache/xmlbeans/impl/schema/d$a;->b:Ljava/lang/String;

    iput-object v7, v8, Lorg/apache/xmlbeans/impl/schema/d$a;->c:Ljava/lang/String;

    aput-object v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->k()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    :goto_3
    if-ge v3, v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/d;->a:Lorg/apache/xmlbeans/impl/schema/g;

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/schema/d;->b:[Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/d;->d:[Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/d;->f:[Li5/o$a;

    return-object p0
.end method

.method public final f()Lorg/apache/xmlbeans/impl/schema/l;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/l0;->d(Lorg/apache/xmlbeans/impl/schema/l;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/schema/g;)V

    return-object v0
.end method

.method public final g()Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->h()[B

    move-result-object p0

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-byte v0, p0, v1

    if-nez v0, :cond_1

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_1
    array-length v0, p0

    if-ne v0, v2, :cond_2

    aget-byte v0, p0, v1

    if-ne v0, v2, :cond_2

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public final h()[B
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    new-instance v0, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0
.end method

.method public final i()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    return-void
.end method

.method public final j()Li5/r$a;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    if-eq v1, v2, :cond_1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getTypePool()Lorg/apache/xmlbeans/impl/schema/v;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/v;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/r$a;

    return-object p0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_a

    const/16 v2, 0x49

    if-eq v1, v2, :cond_8

    const/16 v2, 0x59

    const/16 v4, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x44

    if-eq v1, v2, :cond_5

    const/16 v2, 0x45

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance v1, Li5/e0;

    const-string v2, "Cannot resolve handle "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0, v4}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_0
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object v1

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Li5/d0;->findElement(Ljavax/xml/namespace/QName;)Li5/u;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Li5/s;->getType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Li5/e0;

    const-string v2, "Cannot resolve element for handle "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0, v4}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_2
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object v1

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Li5/d0;->findAttribute(Ljavax/xml/namespace/QName;)Li5/t;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Li5/s;->getType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v1, Li5/e0;

    const-string v2, "Cannot resolve attribute for handle "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0, v4}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :pswitch_3
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findDocumentTypeRef(Ljavax/xml/namespace/QName;)Li5/c0$a;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findAttributeGroupRef(Ljavax/xml/namespace/QName;)Li5/p$a;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findModelGroupRef(Ljavax/xml/namespace/QName;)Li5/y$a;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findElementRef(Ljavax/xml/namespace/QName;)Li5/u$a;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findIdentityConstraintRef(Ljavax/xml/namespace/QName;)Li5/v$a;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Li5/d0;->typeForSignature(Ljava/lang/String;)Li5/c0;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v1, Li5/e0;

    const-string v2, "Cannot resolve type for handle "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0, v4}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_8
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->n:Lorg/apache/xmlbeans/impl/schema/a;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/a;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/f0;->n:Lorg/apache/xmlbeans/impl/schema/f0;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object p0

    check-cast p0, Li5/c0;

    invoke-interface {p0}, Li5/c0;->getRef()Li5/c0$a;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/z;->getLinker()Li5/d0;

    move-result-object p0

    invoke-static {v0}, Lj5/i;->b(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/d0;->findAttributeRef(Ljavax/xml/namespace/QName;)Li5/t$a;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object v6, v0

    new-instance v0, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0
.end method

.method public final l()[Li5/z;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v0

    new-array v1, v0, [Li5/z;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    new-instance v6, Lorg/apache/xmlbeans/impl/schema/o;

    invoke-direct {v6}, Lorg/apache/xmlbeans/impl/schema/o;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v6, Lorg/apache/xmlbeans/impl/schema/m;

    invoke-direct {v6}, Lorg/apache/xmlbeans/impl/schema/m;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v7

    iput v4, v6, Lorg/apache/xmlbeans/impl/schema/o;->a:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->g()Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, v6, Lorg/apache/xmlbeans/impl/schema/o;->b:Ljava/math/BigInteger;

    const v9, 0x7fffffff

    if-nez v8, :cond_1

    :goto_2
    move v8, v9

    goto :goto_3

    :cond_1
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gtz v10, :cond_2

    move v8, v2

    goto :goto_3

    :cond_2
    sget-object v10, Lorg/apache/xmlbeans/impl/schema/o;->s:Ljava/math/BigInteger;

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    :goto_3
    iput v8, v6, Lorg/apache/xmlbeans/impl/schema/o;->g:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->g()Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, v6, Lorg/apache/xmlbeans/impl/schema/o;->c:Ljava/math/BigInteger;

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gtz v10, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    sget-object v10, Lorg/apache/xmlbeans/impl/schema/o;->s:Ljava/math/BigInteger;

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    :goto_4
    iput v9, v6, Lorg/apache/xmlbeans/impl/schema/o;->h:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->q()Li5/k;

    move-result-object v8

    and-int/lit8 v9, v7, 0x1

    const/4 v10, 0x1

    if-eqz v9, :cond_7

    move v9, v10

    goto :goto_5

    :cond_7
    move v9, v2

    :goto_5
    iput-object v8, v6, Lorg/apache/xmlbeans/impl/schema/o;->e:Li5/k;

    iput-boolean v9, v6, Lorg/apache/xmlbeans/impl/schema/o;->f:Z

    if-eq v4, v10, :cond_12

    const/4 v8, 0x2

    if-eq v4, v8, :cond_12

    const/4 v8, 0x3

    if-eq v4, v8, :cond_12

    if-eq v4, v5, :cond_9

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->q()Li5/k;

    move-result-object v4

    iput-object v4, v6, Lorg/apache/xmlbeans/impl/schema/o;->i:Li5/k;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4

    iput v4, v6, Lorg/apache/xmlbeans/impl/schema/o;->j:I

    goto/16 :goto_d

    :cond_8
    new-instance v0, Li5/e0;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v2, 0xb

    const-string v3, "Unrecognized particle type "

    invoke-direct {v0, v3, v1, p0, v2}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_9
    move-object v4, v6

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/m;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v8

    check-cast v8, Li5/c0$a;

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/schema/o;->n:Ljavax/xml/namespace/QName;

    iput-object v8, v4, Lorg/apache/xmlbeans/impl/schema/o;->p:Li5/c0$a;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    and-int/lit8 v8, v7, 0x4

    if-eqz v8, :cond_a

    move v8, v10

    goto :goto_6

    :cond_a
    move v8, v2

    :goto_6
    invoke-virtual {v4, v5, v8}, Lorg/apache/xmlbeans/impl/schema/o;->U0(Ljava/lang/String;Z)V

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/schema/o;->r:Lorg/apache/xmlbeans/impl/schema/h0;

    :cond_b
    and-int/lit8 v5, v7, 0x8

    if-eqz v5, :cond_c

    move v5, v10

    goto :goto_7

    :cond_c
    move v5, v2

    :goto_7
    iput-boolean v5, v4, Lorg/apache/xmlbeans/impl/schema/o;->o:Z

    and-int/lit8 v5, v7, 0x10

    if-eqz v5, :cond_d

    move v5, v10

    goto :goto_8

    :cond_d
    move v5, v2

    :goto_8
    and-int/lit8 v8, v7, 0x20

    if-eqz v8, :cond_e

    move v8, v10

    goto :goto_9

    :cond_e
    move v8, v2

    :goto_9
    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_f

    move v9, v10

    goto :goto_a

    :cond_f
    move v9, v2

    :goto_a
    iput-boolean v5, v4, Lorg/apache/xmlbeans/impl/schema/m;->t:Z

    iput-boolean v8, v4, Lorg/apache/xmlbeans/impl/schema/m;->u:Z

    iput-boolean v9, v4, Lorg/apache/xmlbeans/impl/schema/m;->v:Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->r()Lw5/a;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/schema/m;->y:Lw5/a;

    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_10

    goto :goto_b

    :cond_10
    move v10, v2

    :goto_b
    iput-boolean v10, v4, Lorg/apache/xmlbeans/impl/schema/m;->w:Z

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->e(Lorg/apache/xmlbeans/impl/schema/g;)Lorg/apache/xmlbeans/impl/schema/d;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/schema/m;->x:Li5/o;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    new-array v7, v5, [Li5/v$a;

    move v8, v2

    :goto_c
    if-ge v8, v5, :cond_11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v9

    check-cast v9, Li5/v$a;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    invoke-virtual {v7}, [Li5/v$a;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Li5/v$a;

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/schema/m;->z:[Li5/v$a;

    goto :goto_d

    :cond_12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->l()[Li5/z;

    move-result-object v4

    invoke-virtual {v4}, [Li5/z;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Li5/z;

    iput-object v4, v6, Lorg/apache/xmlbeans/impl/schema/o;->d:[Li5/z;

    :goto_d
    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_13
    return-object v1
.end method

.method public final m()Lorg/apache/xmlbeans/impl/schema/p;
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/p;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/p;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/p;->a:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v1

    check-cast v1, Li5/c0$a;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/p;->b:Li5/c0$a;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-boolean v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->c:Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v2

    check-cast v2, Li5/c0$a;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->d:Li5/c0$a;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->g()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->f:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->g()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->g:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->h:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->i:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->j:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->q:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v2

    check-cast v2, Li5/c0$a;

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->m:Li5/c0$a;

    iput-boolean v5, v0, Lorg/apache/xmlbeans/impl/schema/p;->n:Z

    iput-boolean v6, v0, Lorg/apache/xmlbeans/impl/schema/p;->p:Z

    iput-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/p;->o:Z

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->f:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    goto :goto_5

    :cond_4
    if-ge v1, v2, :cond_5

    goto :goto_4

    :cond_5
    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->g:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_6

    goto :goto_5

    :cond_6
    if-ge v1, v2, :cond_7

    goto :goto_4

    :cond_7
    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->h:I

    if-gtz v1, :cond_8

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->q()Li5/k;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/p;->r:Li5/k;

    :cond_8
    :goto_5
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/p;->s:Lorg/apache/xmlbeans/impl/schema/h0;

    :cond_9
    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/p;->c:Z

    if-nez v1, :cond_b

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    :goto_6
    if-ge v4, v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/schema/p;->t:Ljava/util/Set;

    :cond_b
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/p;->r()V

    iput-boolean v3, v0, Lorg/apache/xmlbeans/impl/schema/p;->l:Z

    return-object v0
.end method

.method public final n()Ljavax/xml/namespace/QName;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v0, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final o()Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final p(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final q()Li5/k;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    invoke-static {v1, p0, v2, v4}, Li5/k;->d(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Li5/k;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0, v1, v4, v2}, Li5/k;->d(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Li5/k;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lw5/a;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lw5/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-gez v3, :cond_2

    iput-object v0, v1, Lw5/a;->a:Ljavax/xml/namespace/QName;

    sget-object v0, Lw5/a;->d:[I

    iput-object v0, v1, Lw5/a;->b:[I

    const/4 v0, 0x3

    invoke-static {v0, p0}, Ld/f;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_d

    aget-object v0, p0, v4

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lw5/a;->c:[I

    aput v5, v0, v4

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, v1, Lw5/a;->c:[I

    aget-object v2, p0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    iput-object v0, v1, Lw5/a;->a:Ljavax/xml/namespace/QName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ltz v3, :cond_4

    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v4

    :goto_3
    const/16 v5, 0x20

    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0x9

    if-ge v3, v2, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_6

    if-eq v9, v7, :cond_6

    if-eq v9, v6, :cond_6

    if-ne v9, v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-array p0, p0, [I

    iput-object p0, v1, Lw5/a;->b:[I

    move p0, v4

    :goto_5
    iget-object v2, v1, Lw5/a;->b:[I

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge p0, v2, :cond_c

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v9, v4

    move v10, v9

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_b

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v3, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_8
    if-eq v11, v8, :cond_a

    if-eq v11, v7, :cond_a

    if-eq v11, v6, :cond_a

    if-ne v11, v5, :cond_9

    goto :goto_7

    :cond_9
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_a
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    iget-object v2, v1, Lw5/a;->b:[I

    add-int/lit8 v10, v10, 0x1

    aput v10, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_e

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/a;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/poi/ddf/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    iput-object p0, v1, Lw5/a;->c:[I

    :cond_d
    return-object v1

    :cond_e
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v2, 0x1

    goto :goto_8
.end method

.method public final s()I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object v6, v0

    new-instance v0, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0
.end method

.method public final t()Ljava/lang/String;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v2, 0xfffe

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/l0;->d:Lorg/apache/xmlbeans/impl/schema/z$a;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/z$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_2
    new-instance v0, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0
.end method

.method public final u()Li5/c0$a;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object p0

    check-cast p0, Li5/c0$a;

    return-object p0
.end method

.method public final v()Lorg/apache/xmlbeans/impl/schema/h0;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->j()Li5/r$a;

    move-result-object v0

    check-cast v0, Li5/c0$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v2

    if-eqz v2, :cond_3

    const v3, 0xffff

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/h0;

    :try_start_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/l0;->b:Ln5/d;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/c0$a;Ljava/io/Serializable;)V

    return-object v1

    :catch_0
    move-exception v0

    move-object v6, v0

    new-instance v0, Li5/e0;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/l0;->a:Lorg/apache/xmlbeans/impl/schema/z;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/z;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/l0;->e:Ljava/lang/String;

    const/16 v5, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Li5/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    throw v0

    :pswitch_1
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->n()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/c0$a;Ljava/io/Serializable;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->h()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/c0$a;Ljava/io/Serializable;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->t()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/c0$a;Ljava/io/Serializable;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->s()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/l0;->v()Lorg/apache/xmlbeans/impl/schema/h0;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/c0$a;Ljava/io/Serializable;)V

    return-object p0

    :cond_3
    :goto_1
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/h0;-><init>(Li5/c0$a;Ljava/io/Serializable;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final w(Li5/o;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Li5/o;->getAttributes()[Li5/o$a;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/d$a;

    iget-object v5, v4, Lorg/apache/xmlbeans/impl/schema/d$a;->a:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    iget-object v5, v4, Lorg/apache/xmlbeans/impl/schema/d$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/schema/d$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Li5/o;->Q()[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    new-instance v1, Li5/z1;

    invoke-direct {v1}, Li5/z1;-><init>()V

    sget-object v3, Li5/z1$a;->h1:Li5/z1$a;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v3, Li5/z1$a;->b1:Li5/z1$a;

    invoke-virtual {v1, v3, v4}, Li5/z1;->a(Li5/z1$a;Z)V

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-interface {v5, v1}, Li5/j2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Li5/o;->s0()[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->F(I)V

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    invoke-interface {v3, v1}, Li5/j2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final x(Li5/w;)V
    .locals 1

    invoke-interface {p1}, Li5/s;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Li5/s;->getType()Li5/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->C(Li5/r;)V

    invoke-interface {p1}, Li5/w;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    invoke-interface {p1}, Li5/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/s;->d()Li5/i0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->R(Li5/i0;)V

    invoke-interface {p1}, Li5/s;->t()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    move-object v0, p1

    check-cast v0, Lw5/b;

    invoke-interface {v0}, Lw5/b;->O0()Lw5/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->N(Lw5/a;)V

    invoke-interface {p1}, Li5/n;->s()Li5/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    return-void
.end method

.method public final y(Li5/p;)V
    .locals 4

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/e;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->J(Ljavax/xml/namespace/QName;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->h:Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->c:Lorg/apache/xmlbeans/XmlObject;

    new-instance v2, Li5/z1;

    invoke-direct {v2}, Li5/z1;-><init>()V

    sget-object v3, Li5/z1$a;->h1:Li5/z1$a;

    invoke-virtual {v2, v3, v1}, Li5/z1;->a(Li5/z1$a;Z)V

    invoke-interface {v0, v2}, Li5/j2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/e;->i:Li5/o;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/l0;->w(Li5/o;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/e;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->P(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Ljava/math/BigInteger;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->O(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/z;->SINGLE_ZERO_BYTE:[B

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->A([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/l0;->A([B)V

    :goto_0
    return-void
.end method
