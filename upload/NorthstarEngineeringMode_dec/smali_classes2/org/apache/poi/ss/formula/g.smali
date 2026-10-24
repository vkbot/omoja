.class public final synthetic Lorg/apache/poi/ss/formula/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/a0;
.implements Lm5/y$a;
.implements Lm5/z0$j;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/poi/ss/formula/g;->c:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/g;->r:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/g;->x:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/poi/ss/formula/g;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lm5/z0;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lorg/apache/poi/ss/formula/g;->c:I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/g;->y:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/g;->x:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/g;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Li5/z1;

    check-cast v2, Lorg/w3c/dom/Node;

    check-cast v1, Li5/c0;

    sget-object v0, Lm5/z0;->z:Le5/g;

    new-instance v0, Lm5/h$a;

    invoke-direct {v0, p1, p0}, Lm5/h$a;-><init>(Lm5/z0;Li5/z1;)V

    invoke-virtual {p1, v2, v0}, Lm5/z0;->D(Lorg/w3c/dom/Node;Lm5/h$a;)V

    invoke-virtual {v0}, Lm5/h$a;->e()Lm5/h;

    move-result-object p1

    invoke-static {p1, p0}, Lm5/z0;->c(Lm5/h;Li5/z1;)V

    invoke-static {p1, v1, p0}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    iget-object p0, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lm5/h;->h0()V

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v2, Li5/z1;

    check-cast v1, Li5/c0;

    sget-object v0, Lm5/z0;->z:Le5/g;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lm5/z0;->u(Li5/z1;)Lm5/z0$k;

    move-result-object p0

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p1, v3, v2}, Lm5/z0$h;->b(Lm5/z0;Lorg/xml/sax/InputSource;Li5/z1;)Lm5/h;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    iget-object p1, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p1}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0}, Lm5/h;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/g;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/g;->x:Ljava/lang/Object;

    check-cast v1, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/g;->y:Ljava/lang/Object;

    check-cast p0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->a(Ljava/lang/String;Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/g;->r:Ljava/lang/Object;

    check-cast v0, Lm5/y;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/g;->x:Ljava/lang/Object;

    check-cast v1, Ljava/io/OutputStream;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/g;->y:Ljava/lang/Object;

    check-cast p0, Li5/z1;

    invoke-virtual {v0, v1, p0}, Lm5/y;->P1(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
