.class public final synthetic Lm5/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/z0$j;
.implements Lm5/y$a;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Li5/z1;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Li5/c0;Li5/z1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lm5/y0;->c:I

    iput-object p3, p0, Lm5/y0;->r:Li5/z1;

    iput-object p1, p0, Lm5/y0;->x:Ljava/lang/Object;

    iput-object p2, p0, Lm5/y0;->y:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/xml/stream/XMLStreamReader;Li5/c0;Li5/z1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm5/y0;->c:I

    iput-object p1, p0, Lm5/y0;->x:Ljava/lang/Object;

    iput-object p3, p0, Lm5/y0;->r:Li5/z1;

    iput-object p2, p0, Lm5/y0;->y:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lm5/y;Ljava/io/Writer;Li5/z1;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lm5/y0;->c:I

    iput-object p1, p0, Lm5/y0;->x:Ljava/lang/Object;

    iput-object p2, p0, Lm5/y0;->y:Ljava/lang/Object;

    iput-object p3, p0, Lm5/y0;->r:Li5/z1;

    return-void
.end method

.method private final b(Lm5/z0;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    iget-object v0, p0, Lm5/y0;->x:Ljava/lang/Object;

    check-cast v0, Ljavax/xml/stream/XMLStreamReader;

    iget-object v1, p0, Lm5/y0;->y:Ljava/lang/Object;

    check-cast v1, Li5/c0;

    iget-object p0, p0, Lm5/y0;->r:Li5/z1;

    invoke-static {v0, p0, v1, p1}, Lm5/z0;->A(Ljavax/xml/stream/XMLStreamReader;Li5/z1;Li5/c0;Lm5/z0;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method


# virtual methods
.method public final a(Lm5/z0;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm5/y0;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm5/y0;->x:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    iget-object v1, p0, Lm5/y0;->y:Ljava/lang/Object;

    check-cast v1, Li5/c0;

    iget-object p0, p0, Lm5/y0;->r:Li5/z1;

    invoke-static {p0}, Lm5/z0;->u(Li5/z1;)Lm5/z0$k;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, p1, v3, p0}, Lm5/z0$h;->b(Lm5/z0;Lorg/xml/sax/InputSource;Li5/z1;)Lm5/h;

    move-result-object p1

    invoke-static {p1, v1, p0}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    iget-object p0, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lm5/h;->h0()V

    return-object p0

    :pswitch_0
    invoke-direct {p0, p1}, Lm5/y0;->b(Lm5/z0;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 5

    iget-object v0, p0, Lm5/y0;->x:Ljava/lang/Object;

    check-cast v0, Lm5/y;

    iget-object v1, p0, Lm5/y0;->y:Ljava/lang/Object;

    check-cast v1, Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lm5/y0;->r:Li5/z1;

    if-eqz p0, :cond_0

    sget-object v2, Li5/z1$a;->l1:Li5/z1$a;

    iget-object v3, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v0, Lm5/y;->c:Lm5/h;

    :try_start_0
    new-instance v0, Lm5/g1$f;

    invoke-direct {v0, p0, v1}, Lm5/g1$f;-><init>(Lm5/h;Ljava/io/Writer;)V

    :goto_0
    invoke-virtual {v0}, Lm5/g1;->v()Z

    move-result p0
    :try_end_0
    .catch Lm5/g1$f$a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_0
    new-instance v2, Lm5/g1$l;

    iget-object v0, v0, Lm5/y;->c:Lm5/h;

    invoke-direct {v2, v0, p0}, Lm5/g1$l;-><init>(Lm5/h;Li5/z1;)V

    const/16 p0, 0x2000

    const/4 v0, 0x1

    :try_start_1
    new-array p0, p0, [C

    :goto_1
    invoke-virtual {v2, p0}, Lm5/g1$l;->read([C)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v3, :cond_2

    iput-boolean v0, v2, Lm5/g1$l;->x:Z

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, p0, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    iput-boolean v0, v2, Lm5/g1$l;->x:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null Writer specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
