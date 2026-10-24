.class public Lk5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/g$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/util/ResourceBundle;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk5/g;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lk5/g;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk5/g;->k:Ljava/util/Vector;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-class v1, Lk5/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.apache.xmlbeans.impl.regex.message"

    invoke-static {v2, v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lk5/g;->e:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static final e(I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x66

    if-le p0, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_2

    sub-int/2addr p0, v1

    return p0

    :cond_2
    const/16 v1, 0x41

    if-ge p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x46

    if-gt p0, v1, :cond_4

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_4
    const/16 v1, 0x61

    if-ge p0, v1, :cond_5

    return v0

    :cond_5
    add-int/lit8 p0, p0, -0x57

    return p0
.end method


# virtual methods
.method public A()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->i1:Lk5/m$a;

    return-object p0
.end method

.method public B(Lk5/f;I)I
    .locals 0

    invoke-virtual {p0}, Lk5/g;->b()I

    move-result p0

    return p0
.end method

.method public C()Lk5/m$a;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->f1:Lk5/m$a;

    return-object p0
.end method

.method public D()Lk5/m;
    .locals 10

    iget v0, p0, Lk5/g;->a:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lk5/g;->c:I

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x31

    const/4 v3, 0x7

    const/4 v4, 0x0

    const-string v5, "parser.factor.1"

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x30

    iput-boolean v1, p0, Lk5/g;->j:Z

    iget-object v2, p0, Lk5/g;->k:Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lk5/g;->k:Ljava/util/Vector;

    :cond_0
    iget-object v2, p0, Lk5/g;->k:Ljava/util/Vector;

    new-instance v6, Lk5/g$a;

    iget v7, p0, Lk5/g;->a:I

    invoke-direct {v6, v0, v7}, Lk5/g$a;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v2, p0, Lk5/g;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lk5/g;->a:I

    iget-object v6, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x29

    if-ne v2, v6, :cond_1

    iget v2, p0, Lk5/g;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lk5/g;->a:I

    move-object v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_2
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_3

    iget v0, p0, Lk5/g;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lk5/g;->a:I

    :cond_3
    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-virtual {p0}, Lk5/g;->i()Lk5/m;

    move-result-object v0

    iget v2, v0, Lk5/m;->c:I

    const/16 v6, 0x8

    if-eq v2, v6, :cond_4

    packed-switch v2, :pswitch_data_0

    const-string v0, "parser.factor.5"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_4
    iget v2, p0, Lk5/g;->g:I

    if-ne v2, v3, :cond_8

    :pswitch_0
    const/4 v2, -0x1

    move v9, v2

    move-object v2, v0

    move v0, v9

    :goto_0
    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v6

    iget v7, v6, Lk5/m;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Lk5/m;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    invoke-virtual {v6, v1}, Lk5/m;->q(I)Lk5/m;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lk5/m;->q(I)Lk5/m;

    move-result-object v6

    goto :goto_1

    :cond_5
    const-string v0, "parser.factor.6"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    iget v1, p0, Lk5/g;->g:I

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->r:Lk5/m;

    new-instance p0, Lk5/m$d;

    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lk5/m;-><init>(I)V

    iput v0, p0, Lk5/m$d;->w1:I

    iput-object v2, p0, Lk5/m$d;->x1:Lk5/m;

    iput-object v6, p0, Lk5/m$d;->y1:Lk5/m;

    iput-object v4, p0, Lk5/m$d;->z1:Lk5/m;

    return-object p0

    :cond_7
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_9
    const-string v0, "parser.factor.4"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public E()Lk5/m$a;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->g1:Lk5/m$a;

    return-object p0
.end method

.method public F()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    const/16 v0, 0x18

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/m;->i(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public G()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    const/16 v0, 0x14

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/m;->i(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public H()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    const/16 v0, 0x16

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/m;->i(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public I()Lk5/m;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    iget v3, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    if-ge v3, v4, :cond_1

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ld/f;->D(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    or-int/2addr v2, v3

    iget v3, p0, Lk5/g;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lk5/g;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v3, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    const-string v5, "parser.factor.2"

    if-ge v3, v4, :cond_9

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lk5/g;->a:I

    :goto_2
    iget v3, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    if-ge v3, v4, :cond_3

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ld/f;->D(I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    or-int/2addr v0, v3

    iget v3, p0, Lk5/g;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lk5/g;->a:I

    goto :goto_2

    :cond_3
    :goto_3
    iget v3, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    if-ge v3, v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_5
    :goto_4
    const/16 v3, 0x3a

    const/16 v4, 0x19

    if-ne v1, v3, :cond_7

    iget v1, p0, Lk5/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk5/g;->a:I

    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    sget-object v3, Lk5/m;->r:Lk5/m;

    new-instance v3, Lk5/m$f;

    invoke-direct {v3, v4}, Lk5/m;-><init>(I)V

    iput-object v1, v3, Lk5/m$f;->w1:Lk5/m;

    iput v2, v3, Lk5/m$f;->x1:I

    iput v0, v3, Lk5/m$f;->y1:I

    iget v0, p0, Lk5/g;->g:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lk5/g;->g()V

    goto :goto_5

    :cond_6
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_7
    const/16 v3, 0x29

    if-ne v1, v3, :cond_8

    iget v1, p0, Lk5/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk5/g;->a:I

    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object p0

    sget-object v1, Lk5/m;->r:Lk5/m;

    new-instance v3, Lk5/m$f;

    invoke-direct {v3, v4}, Lk5/m;-><init>(I)V

    iput-object p0, v3, Lk5/m$f;->w1:Lk5/m;

    iput v2, v3, Lk5/m$f;->x1:I

    iput v0, v3, Lk5/m$f;->y1:I

    :goto_5
    return-object v3

    :cond_8
    const-string v0, "parser.factor.3"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public J()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    const/16 v0, 0x15

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/m;->i(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public K()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    const/16 v0, 0x17

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/m;->i(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public L()Lk5/m$g;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk5/g;->i:I

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v1

    invoke-static {v0, v1}, Lk5/m;->j(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public M()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-virtual {p0}, Lk5/g;->j()Lk5/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lk5/m;->j(ILk5/m;)Lk5/m$g;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0

    :cond_0
    const-string v0, "parser.factor.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public N(Lk5/m;)Lk5/m$c;
    .locals 2

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->r:Lk5/m;

    new-instance p0, Lk5/m$b;

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lk5/m$b;-><init>(ILk5/m;)V

    invoke-static {p1, p0}, Lk5/m;->h(Lk5/m;Lk5/m;)Lk5/m$c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lk5/m;->g(Lk5/m;)Lk5/m$b;

    move-result-object p0

    invoke-static {p1, p0}, Lk5/m;->h(Lk5/m;Lk5/m;)Lk5/m$c;

    move-result-object p0

    return-object p0
.end method

.method public O(Lk5/m;)Lk5/m$i;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-static {}, Lk5/m;->m()Lk5/m$i;

    move-result-object v0

    iget v1, p0, Lk5/g;->g:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->e1:Lk5/m;

    invoke-virtual {v0, p0}, Lk5/m$i;->a(Lk5/m;)V

    invoke-virtual {v0, p1}, Lk5/m$i;->a(Lk5/m;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lk5/m$i;->a(Lk5/m;)V

    sget-object p0, Lk5/m;->e1:Lk5/m;

    invoke-virtual {v0, p0}, Lk5/m$i;->a(Lk5/m;)V

    :goto_0
    return-object v0
.end method

.method public P(Lk5/m;)Lk5/m$b;
    .locals 2

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->r:Lk5/m;

    new-instance p0, Lk5/m$b;

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lk5/m$b;-><init>(ILk5/m;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lk5/m;->g(Lk5/m;)Lk5/m$b;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lk5/g;->c:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x3f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 5

    iget v0, p0, Lk5/g;->g:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lk5/g;->f:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_19

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_19

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_18

    const/16 v1, 0x72

    if-eq v0, v1, :cond_17

    const/16 v1, 0x78

    const v2, 0x10ffff

    const-string v3, "parser.descape.1"

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_19

    const/16 v1, 0x65

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    move v1, v0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    if-nez v0, :cond_6

    iget v0, p0, Lk5/g;->f:I

    invoke-static {v0}, Lk5/g;->e(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_5

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_5

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_4

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_3

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_2

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_2

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_1

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "parser.descappe.4"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_4
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_5
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_6
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    if-nez v0, :cond_a

    iget v0, p0, Lk5/g;->f:I

    invoke-static {v0}, Lk5/g;->e(I)I

    move-result v0

    if-ltz v0, :cond_a

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_9

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_9

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_8

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_8

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_7

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_7

    :goto_0
    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_a
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :pswitch_2
    const/16 v1, 0x9

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0xc

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0x1b

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    if-nez v0, :cond_16

    iget v1, p0, Lk5/g;->f:I

    const/16 v4, 0x7b

    if-ne v1, v4, :cond_13

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    if-nez v0, :cond_12

    iget v0, p0, Lk5/g;->f:I

    invoke-static {v0}, Lk5/g;->e(I)I

    move-result v0

    if-gez v0, :cond_10

    iget v0, p0, Lk5/g;->f:I

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_f

    if-gt v1, v2, :cond_e

    goto :goto_2

    :cond_e
    const-string v0, "parser.descape.4"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_f
    const-string v0, "parser.descape.3"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_10
    mul-int/lit8 v4, v1, 0x10

    if-gt v1, v4, :cond_11

    add-int v1, v4, v0

    goto :goto_1

    :cond_11
    const-string v0, "parser.descape.2"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_12
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_13
    if-nez v0, :cond_15

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v1, p0, Lk5/g;->g:I

    if-nez v1, :cond_14

    iget v1, p0, Lk5/g;->f:I

    invoke-static {v1}, Lk5/g;->e(I)I

    move-result v1

    if-ltz v1, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_15
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_16
    invoke-virtual {p0, v3}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_17
    const/16 v1, 0xd

    :cond_18
    :goto_2
    return v1

    :cond_19
    const-string v0, "parser.descape.5"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_1a
    const-string v0, "parser.next.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)Lk5/d;
    .locals 1

    new-instance v0, Lk5/d;

    iget-object p0, p0, Lk5/g;->e:Ljava/util/ResourceBundle;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)Lk5/f;
    .locals 6

    const/16 v0, 0x44

    const-string v1, "Nd"

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eq p1, v0, :cond_a

    const/16 v0, 0x53

    const-string v4, "IsSpace"

    if-eq p1, v0, :cond_8

    const/16 v0, 0x57

    const-string v5, "IsWord"

    if-eq p1, v0, :cond_6

    const/16 v0, 0x64

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_2

    const/16 v0, 0x77

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Lk5/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v5, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lk5/m;->y:Lk5/f;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal Error: shorthands: \\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v3}, Lk5/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v4, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lk5/m;->c1:Lk5/f;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lk5/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Lk5/m;->x:Lk5/f;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lk5/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v5, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p0

    goto :goto_0

    :cond_7
    sget-object p0, Lk5/m;->b1:Lk5/f;

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v3}, Lk5/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v4, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p0

    goto :goto_0

    :cond_9
    sget-object p0, Lk5/m;->d1:Lk5/f;

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v3}, Lk5/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {v1, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p0

    goto :goto_0

    :cond_b
    sget-object p0, Lk5/m;->Z:Lk5/f;

    :goto_0
    return-object p0
.end method

.method public final f(I)Z
    .locals 0

    iget p0, p0, Lk5/g;->d:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 12

    iget v0, p0, Lk5/g;->a:I

    iget v1, p0, Lk5/g;->c:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lk5/g;->f:I

    iput v2, p0, Lk5/g;->g:I

    return-void

    :cond_0
    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lk5/g;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lk5/g;->f:I

    iget v1, p0, Lk5/g;->h:I

    const/16 v3, 0x3a

    const-string v4, "parser.next.1"

    const/16 v5, 0xa

    const/16 v6, 0x5c

    const/16 v7, 0x2d

    const/4 v8, 0x0

    const/16 v9, 0x5b

    if-ne v1, v2, :cond_7

    const/16 v1, 0x200

    if-eq v0, v7, :cond_6

    if-eq v0, v9, :cond_3

    if-eq v0, v6, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lk5/g;->a:I

    iget v1, p0, Lk5/g;->c:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lk5/g;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lk5/g;->f:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p0, v1}, Lk5/g;->f(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    iget v0, p0, Lk5/g;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lk5/g;->a:I

    const/16 v5, 0x14

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v0}, Ld/f;->M(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lk5/g;->a:I

    iget v3, p0, Lk5/g;->c:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v3, 0xfc00

    and-int/2addr v3, v1

    const v4, 0xdc00

    if-ne v3, v4, :cond_5

    invoke-static {v0, v1}, Ld/f;->l(II)I

    move-result v0

    iput v0, p0, Lk5/g;->f:I

    iget v0, p0, Lk5/g;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lk5/g;->a:I

    :cond_5
    move v5, v8

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lk5/g;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lk5/g;->a:I

    iget v1, p0, Lk5/g;->c:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_5

    iget v0, p0, Lk5/g;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lk5/g;->a:I

    const/16 v5, 0x18

    :goto_1
    iput v5, p0, Lk5/g;->g:I

    return-void

    :cond_7
    const/16 v1, 0x24

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1d

    const/16 v10, 0x5e

    if-eq v0, v10, :cond_1c

    const/16 v10, 0x7c

    const/4 v11, 0x2

    if-eq v0, v10, :cond_1b

    if-eq v0, v9, :cond_1a

    if-eq v0, v6, :cond_18

    packed-switch v0, :pswitch_data_0

    move v5, v8

    goto/16 :goto_4

    :pswitch_0
    const/4 v5, 0x4

    goto/16 :goto_4

    :pswitch_1
    const/4 v5, 0x3

    goto/16 :goto_4

    :pswitch_2
    const/4 v5, 0x7

    goto/16 :goto_4

    :pswitch_3
    iget v0, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    if-lt v0, v4, :cond_8

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_9

    :goto_2
    const/4 v5, 0x6

    goto/16 :goto_4

    :cond_9
    iget v0, p0, Lk5/g;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk5/g;->a:I

    iget v4, p0, Lk5/g;->c:I

    const-string v5, "parser.next.2"

    if-ge v1, v4, :cond_17

    iget-object v4, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/2addr v0, v11

    iput v0, p0, Lk5/g;->a:I

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_16

    const/16 v4, 0x23

    if-eq v0, v4, :cond_13

    if-eq v0, v3, :cond_12

    if-eq v0, v9, :cond_11

    packed-switch v0, :pswitch_data_1

    if-eq v0, v7, :cond_d

    const/16 v1, 0x61

    if-gt v1, v0, :cond_a

    const/16 v1, 0x7a

    if-le v0, v1, :cond_d

    :cond_a
    const/16 v1, 0x41

    if-gt v1, v0, :cond_b

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x28

    if-ne v0, v1, :cond_c

    const/16 v5, 0x17

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_d
    :goto_3
    iget v0, p0, Lk5/g;->a:I

    sub-int/2addr v0, v2

    iput v0, p0, Lk5/g;->a:I

    const/16 v5, 0x16

    goto/16 :goto_4

    :pswitch_4
    const/16 v5, 0x12

    goto/16 :goto_4

    :pswitch_5
    const/16 v5, 0xe

    goto/16 :goto_4

    :pswitch_6
    iget v0, p0, Lk5/g;->a:I

    iget v2, p0, Lk5/g;->c:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lk5/g;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_e

    const/16 v5, 0x10

    goto/16 :goto_4

    :cond_e
    if-ne v0, v1, :cond_f

    const/16 v5, 0x11

    goto :goto_4

    :cond_f
    const-string v0, "parser.next.3"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_11
    const/16 v5, 0x13

    goto :goto_4

    :cond_12
    const/16 v5, 0xd

    goto :goto_4

    :cond_13
    iget v1, p0, Lk5/g;->a:I

    iget v2, p0, Lk5/g;->c:I

    const/16 v3, 0x29

    if-ge v1, v2, :cond_14

    iget-object v0, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk5/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_13

    :cond_14
    if-ne v0, v3, :cond_15

    const/16 v5, 0x15

    goto :goto_4

    :cond_15
    const-string v0, "parser.next.4"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_16
    const/16 v5, 0xf

    goto :goto_4

    :cond_17
    invoke-virtual {p0, v5}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_18
    iget v0, p0, Lk5/g;->a:I

    iget v1, p0, Lk5/g;->c:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lk5/g;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lk5/g;->f:I

    goto :goto_4

    :cond_19
    invoke-virtual {p0, v4}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_1a
    const/16 v5, 0x9

    goto :goto_4

    :cond_1b
    move v5, v11

    goto :goto_4

    :cond_1c
    const/16 v5, 0xb

    goto :goto_4

    :cond_1d
    const/4 v5, 0x5

    goto :goto_4

    :cond_1e
    const/16 v5, 0x8

    goto :goto_4

    :cond_1f
    const/16 v5, 0xc

    :goto_4
    iput v5, p0, Lk5/g;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public h(Z)Lk5/f;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lk5/g;->h:I

    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    iget v2, v0, Lk5/g;->g:I

    const/16 v4, 0x5e

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, v0, Lk5/g;->f:I

    if-ne v2, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    if-eqz p1, :cond_0

    sget-object v2, Lk5/m;->r:Lk5/m;

    new-instance v2, Lk5/f;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Lk5/f;-><init>(I)V

    move v7, v1

    move-object v6, v2

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    const v6, 0x10ffff

    invoke-virtual {v2, v5, v6}, Lk5/f;->b(II)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v6

    move v7, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    move-object v6, v2

    move v7, v5

    goto :goto_0

    :goto_1
    move v8, v1

    :goto_2
    iget v9, v0, Lk5/g;->g:I

    const-string v10, "parser.cc.2"

    if-eq v9, v1, :cond_16

    const/16 v11, 0x5d

    if-nez v9, :cond_2

    iget v12, v0, Lk5/g;->f:I

    if-ne v12, v11, :cond_2

    if-nez v8, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v8, v0, Lk5/g;->f:I

    const/16 v12, 0xa

    if-ne v9, v12, :cond_8

    const/16 v9, 0x43

    if-eq v8, v9, :cond_7

    const/16 v9, 0x44

    if-eq v8, v9, :cond_6

    const/16 v9, 0x49

    if-eq v8, v9, :cond_7

    const/16 v9, 0x50

    if-eq v8, v9, :cond_4

    const/16 v9, 0x53

    if-eq v8, v9, :cond_6

    const/16 v9, 0x57

    if-eq v8, v9, :cond_6

    const/16 v9, 0x69

    if-eq v8, v9, :cond_7

    const/16 v9, 0x70

    if-eq v8, v9, :cond_4

    const/16 v9, 0x73

    if-eq v8, v9, :cond_6

    const/16 v9, 0x77

    if-eq v8, v9, :cond_6

    const/16 v9, 0x63

    if-eq v8, v9, :cond_7

    const/16 v9, 0x64

    if-eq v8, v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lk5/g;->b()I

    move-result v8

    :cond_3
    move v3, v5

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v0, v8}, Lk5/g;->z(I)Lk5/f;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v9}, Lk5/f;->G(Lk5/m;)V

    :goto_3
    move v3, v1

    goto/16 :goto_6

    :cond_5
    const-string v1, "parser.atom.5"

    invoke-virtual {v0, v1}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0

    :cond_6
    invoke-virtual {v0, v8}, Lk5/g;->d(I)Lk5/f;

    move-result-object v9

    invoke-virtual {v6, v9}, Lk5/f;->G(Lk5/m;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v6, v8}, Lk5/g;->B(Lk5/f;I)I

    move-result v8

    if-gez v8, :cond_3

    goto :goto_3

    :cond_8
    const/16 v13, 0x14

    if-ne v9, v13, :cond_3

    iget-object v9, v0, Lk5/g;->b:Ljava/lang/String;

    const/16 v13, 0x3a

    iget v14, v0, Lk5/g;->a:I

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const-string v13, "parser.cc.1"

    if-ltz v9, :cond_e

    iget-object v14, v0, Lk5/g;->b:Ljava/lang/String;

    iget v15, v0, Lk5/g;->a:I

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v4, :cond_9

    iget v14, v0, Lk5/g;->a:I

    add-int/2addr v14, v1

    iput v14, v0, Lk5/g;->a:I

    move v14, v5

    goto :goto_4

    :cond_9
    move v14, v1

    :goto_4
    iget-object v15, v0, Lk5/g;->b:Ljava/lang/String;

    iget v3, v0, Lk5/g;->a:I

    invoke-virtual {v15, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x200

    invoke-virtual {v0, v15}, Lk5/g;->f(I)Z

    move-result v15

    invoke-static {v3, v14}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v14

    if-eqz v15, :cond_b

    if-eqz v14, :cond_b

    sget-object v15, Lk5/m;->t1:Ljava/util/Hashtable;

    if-nez v15, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v15, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v14, 0x0

    :cond_b
    :goto_5
    if-eqz v14, :cond_d

    invoke-virtual {v6, v14}, Lk5/f;->G(Lk5/m;)V

    add-int/lit8 v3, v9, 0x1

    iget v14, v0, Lk5/g;->c:I

    if-ge v3, v14, :cond_c

    iget-object v14, v0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_c

    add-int/lit8 v9, v9, 0x2

    iput v9, v0, Lk5/g;->a:I

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v13}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0

    :cond_d
    const-string v1, "parser.cc.3"

    invoke-virtual {v0, v1}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0

    :cond_e
    invoke-virtual {v0, v13}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    if-nez v3, :cond_14

    iget v3, v0, Lk5/g;->g:I

    if-nez v3, :cond_13

    iget v3, v0, Lk5/g;->f:I

    const/16 v9, 0x2d

    if-eq v3, v9, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    iget v3, v0, Lk5/g;->g:I

    if-eq v3, v1, :cond_12

    if-nez v3, :cond_10

    iget v10, v0, Lk5/g;->f:I

    if-ne v10, v11, :cond_10

    invoke-virtual {v6, v8, v8}, Lk5/f;->b(II)V

    invoke-virtual {v6, v9, v9}, Lk5/f;->b(II)V

    goto :goto_8

    :cond_10
    iget v9, v0, Lk5/g;->f:I

    if-ne v3, v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lk5/g;->b()I

    move-result v9

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    invoke-virtual {v6, v8, v9}, Lk5/f;->b(II)V

    goto :goto_8

    :cond_12
    invoke-virtual {v0, v10}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0

    :cond_13
    :goto_7
    invoke-virtual {v6, v8, v8}, Lk5/f;->b(II)V

    :cond_14
    :goto_8
    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lk5/g;->f(I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, v0, Lk5/g;->g:I

    if-nez v3, :cond_15

    iget v3, v0, Lk5/g;->f:I

    const/16 v8, 0x2c

    if-ne v3, v8, :cond_15

    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    :cond_15
    move v8, v5

    goto/16 :goto_2

    :cond_16
    :goto_9
    if-eq v9, v1, :cond_18

    if-nez p1, :cond_17

    if-eqz v7, :cond_17

    invoke-virtual {v2, v6}, Lk5/f;->I(Lk5/m;)V

    goto :goto_a

    :cond_17
    move-object v2, v6

    :goto_a
    invoke-virtual {v2}, Lk5/f;->H()V

    invoke-virtual {v2}, Lk5/f;->B()V

    iput v5, v0, Lk5/g;->h:I

    invoke-virtual/range {p0 .. p0}, Lk5/g;->g()V

    return-object v2

    :cond_18
    invoke-virtual {v0, v10}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0
.end method

.method public final i()Lk5/m;
    .locals 11

    iget v0, p0, Lk5/g;->g:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->e1:Lk5/m;

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lk5/g;->K()Lk5/m;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lk5/g;->H()Lk5/m;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lk5/g;->J()Lk5/m;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lk5/g;->G()Lk5/m;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lk5/g;->E()Lk5/m$a;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lk5/g;->C()Lk5/m$a;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget v1, p0, Lk5/g;->f:I

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_29

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_28

    const/16 v2, 0x62

    if-eq v1, v2, :cond_27

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_26

    const/16 v2, 0x41

    if-eq v1, v2, :cond_25

    const/16 v2, 0x42

    if-eq v1, v2, :cond_24

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/16 v4, 0x7d

    const/16 v5, 0x7b

    const-string v6, "parser.atom.4"

    if-eqz v0, :cond_f

    const/4 v7, 0x6

    if-eq v0, v7, :cond_e

    const/16 v7, 0xd

    if-eq v0, v7, :cond_d

    const/16 v7, 0x12

    if-eq v0, v7, :cond_c

    const/16 v7, 0x13

    if-eq v0, v7, :cond_b

    const/16 v7, 0x16

    if-eq v0, v7, :cond_a

    const/16 v7, 0x17

    if-eq v0, v7, :cond_9

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, v6}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :pswitch_9
    iget v0, p0, Lk5/g;->f:I

    const/16 v6, 0x43

    if-eq v0, v6, :cond_8

    const/16 v6, 0x44

    if-eq v0, v6, :cond_7

    const/16 v6, 0x49

    if-eq v0, v6, :cond_6

    const/16 v6, 0x50

    if-eq v0, v6, :cond_4

    const/16 v6, 0x53

    if-eq v0, v6, :cond_7

    const/16 v6, 0x69

    if-eq v0, v6, :cond_3

    const/16 v6, 0x6e

    if-eq v0, v6, :cond_1

    const/16 v6, 0x70

    if-eq v0, v6, :cond_4

    const/16 v6, 0x57

    if-eq v0, v6, :cond_7

    const/16 v6, 0x58

    if-eq v0, v6, :cond_0

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    invoke-static {v0}, Lk5/m;->f(I)Lk5/m$a;

    move-result-object v0

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lk5/g;->v()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0}, Lk5/g;->u()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0}, Lk5/g;->m()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lk5/g;->r()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    :pswitch_d
    invoke-virtual {p0}, Lk5/g;->b()I

    move-result v0

    const/high16 v6, 0x10000

    if-ge v0, v6, :cond_2

    invoke-static {v0}, Lk5/m;->f(I)Lk5/m$a;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ld/f;->q(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lk5/m;->r:Lk5/m;

    new-instance v6, Lk5/m$h;

    invoke-direct {v6, v2, v1, v0}, Lk5/m$h;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lk5/g;->x()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lk5/g;->z(I)Lk5/f;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {p0}, Lk5/g;->g()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "parser.atom.5"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_6
    invoke-virtual {p0}, Lk5/g;->q()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    :pswitch_e
    invoke-virtual {p0, v0}, Lk5/g;->d(I)Lk5/f;

    move-result-object v0

    invoke-virtual {p0}, Lk5/g;->g()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lk5/g;->p()Lk5/m;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v3}, Lk5/g;->h(Z)Lk5/f;

    move-result-object v0

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object v0, Lk5/m;->r:Lk5/m;

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lk5/g;->D()Lk5/m;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lk5/g;->I()Lk5/m;

    move-result-object v0

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lk5/g;->k()Lk5/f;

    move-result-object v0

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lk5/g;->F()Lk5/m;

    move-result-object v0

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lk5/g;->M()Lk5/m;

    move-result-object v0

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lk5/g;->L()Lk5/m$g;

    move-result-object v0

    goto :goto_2

    :cond_f
    iget v0, p0, Lk5/g;->f:I

    const/16 v7, 0x5d

    if-eq v0, v7, :cond_23

    if-eq v0, v5, :cond_23

    if-eq v0, v4, :cond_23

    invoke-static {v0}, Lk5/m;->f(I)Lk5/m$a;

    move-result-object v0

    iget v6, p0, Lk5/g;->f:I

    invoke-virtual {p0}, Lk5/g;->g()V

    invoke-static {v6}, Ld/f;->M(I)Z

    move-result v7

    if-eqz v7, :cond_10

    iget v7, p0, Lk5/g;->g:I

    if-nez v7, :cond_10

    iget v7, p0, Lk5/g;->f:I

    const v8, 0xfc00

    and-int/2addr v8, v7

    const v9, 0xdc00

    if-ne v8, v9, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [C

    int-to-char v6, v6

    aput-char v6, v0, v1

    int-to-char v6, v7

    aput-char v6, v0, v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Lk5/m$h;

    invoke-direct {v0, v2, v1, v6}, Lk5/m$h;-><init>(IILjava/lang/String;)V

    invoke-static {v1, v0}, Lk5/m;->j(ILk5/m;)Lk5/m$g;

    move-result-object v0

    invoke-virtual {p0}, Lk5/g;->g()V

    :cond_10
    :goto_2
    iget v1, p0, Lk5/g;->g:I

    if-eqz v1, :cond_14

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    const/4 v2, 0x4

    if-eq v1, v2, :cond_12

    const/4 v2, 0x5

    if-eq v1, v2, :cond_11

    goto/16 :goto_8

    :cond_11
    invoke-virtual {p0, v0}, Lk5/g;->O(Lk5/m;)Lk5/m$i;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0, v0}, Lk5/g;->N(Lk5/m;)Lk5/m$c;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p0, v0}, Lk5/g;->P(Lk5/m;)Lk5/m$b;

    move-result-object p0

    return-object p0

    :cond_14
    iget v1, p0, Lk5/g;->f:I

    if-ne v1, v5, :cond_22

    iget v1, p0, Lk5/g;->a:I

    iget v2, p0, Lk5/g;->c:I

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_21

    const/16 v6, 0x39

    if-gt v1, v6, :cond_21

    add-int/lit8 v7, v1, -0x30

    :goto_3
    iget v8, p0, Lk5/g;->c:I

    const-string v9, "parser.quantifier.5"

    if-ge v5, v8, :cond_17

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_16

    if-gt v1, v6, :cond_16

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v1

    sub-int/2addr v7, v2

    if-ltz v7, :cond_15

    move v5, v8

    goto :goto_3

    :cond_15
    invoke-virtual {p0, v9}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_16
    move v5, v8

    :cond_17
    const/16 v8, 0x2c

    if-ne v1, v8, :cond_1e

    iget v1, p0, Lk5/g;->c:I

    if-ge v5, v1, :cond_1d

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_1c

    if-gt v1, v6, :cond_1c

    add-int/lit8 v5, v1, -0x30

    :goto_4
    iget v10, p0, Lk5/g;->c:I

    if-ge v8, v10, :cond_1a

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_19

    if-gt v1, v6, :cond_19

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    if-ltz v5, :cond_18

    move v8, v10

    goto :goto_4

    :cond_18
    invoke-virtual {p0, v9}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_19
    move v8, v10

    :cond_1a
    if-gt v7, v5, :cond_1b

    :goto_5
    move v2, v5

    move v5, v8

    goto :goto_6

    :cond_1b
    const-string v0, "parser.quantifier.4"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_1c
    const/4 v5, -0x1

    goto :goto_5

    :cond_1d
    const-string v0, "parser.quantifier.3"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_1e
    move v2, v7

    :goto_6
    if-ne v1, v4, :cond_20

    invoke-virtual {p0, v5}, Lk5/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lk5/m;->r:Lk5/m;

    new-instance v1, Lk5/m$b;

    const/16 v4, 0x9

    invoke-direct {v1, v4, v0}, Lk5/m$b;-><init>(ILk5/m;)V

    add-int/2addr v5, v3

    iput v5, p0, Lk5/g;->a:I

    move-object v0, v1

    goto :goto_7

    :cond_1f
    invoke-static {v0}, Lk5/m;->g(Lk5/m;)Lk5/m$b;

    move-result-object v0

    iput v5, p0, Lk5/g;->a:I

    :goto_7
    iput v7, v0, Lk5/m$b;->w1:I

    iput v2, v0, Lk5/m$b;->x1:I

    invoke-virtual {p0}, Lk5/g;->g()V

    goto :goto_8

    :cond_20
    const-string v0, "parser.quantifier.2"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_21
    const-string v0, "parser.quantifier.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_22
    :goto_8
    return-object v0

    :cond_23
    invoke-virtual {p0, v6}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_24
    invoke-virtual {p0}, Lk5/g;->o()Lk5/m;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-virtual {p0}, Lk5/g;->n()Lk5/m;

    move-result-object p0

    return-object p0

    :cond_26
    invoke-virtual {p0}, Lk5/g;->A()Lk5/m;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {p0}, Lk5/g;->t()Lk5/m;

    move-result-object p0

    return-object p0

    :cond_28
    invoke-virtual {p0}, Lk5/g;->s()Lk5/m;

    move-result-object p0

    return-object p0

    :cond_29
    invoke-virtual {p0}, Lk5/g;->w()Lk5/m;

    move-result-object p0

    return-object p0

    :cond_2a
    invoke-virtual {p0}, Lk5/g;->y()Lk5/m;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_10
        :pswitch_f
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x63
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final j()Lk5/m;
    .locals 4

    invoke-virtual {p0}, Lk5/g;->l()Lk5/m;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lk5/g;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lk5/g;->g()V

    if-nez v1, :cond_0

    invoke-static {}, Lk5/m;->m()Lk5/m$i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk5/m$i;->a(Lk5/m;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Lk5/g;->l()Lk5/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk5/m;->a(Lk5/m;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k()Lk5/f;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk5/g;->h(Z)Lk5/f;

    move-result-object v1

    :goto_0
    iget v2, p0, Lk5/g;->g:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_7

    iget v3, p0, Lk5/g;->f:I

    const/4 v4, 0x4

    const/16 v5, 0x26

    const/16 v6, 0x2d

    if-nez v2, :cond_0

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    :cond_0
    if-ne v2, v4, :cond_6

    :cond_1
    invoke-virtual {p0}, Lk5/g;->g()V

    iget v7, p0, Lk5/g;->g:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_5

    invoke-virtual {p0, v0}, Lk5/g;->h(Z)Lk5/f;

    move-result-object v7

    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v7}, Lk5/f;->G(Lk5/m;)V

    goto :goto_0

    :cond_2
    if-ne v3, v6, :cond_3

    invoke-virtual {v1, v7}, Lk5/f;->I(Lk5/m;)V

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    invoke-virtual {v1, v7}, Lk5/f;->E(Lk5/f;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ASSERT"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "parser.ope.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_6
    const-string v0, "parser.ope.2"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v1
.end method

.method public final l()Lk5/m;
    .locals 6

    iget v0, p0, Lk5/g;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lk5/g;->i()Lk5/m;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lk5/g;->g:I

    if-eq v5, v1, :cond_2

    if-eq v5, v2, :cond_2

    if-eq v5, v3, :cond_2

    if-nez v4, :cond_1

    sget-object v4, Lk5/m;->r:Lk5/m;

    new-instance v4, Lk5/m$i;

    invoke-direct {v4, v3}, Lk5/m;-><init>(I)V

    invoke-virtual {v4, v0}, Lk5/m$i;->a(Lk5/m;)V

    move-object v0, v4

    :cond_1
    invoke-virtual {p0}, Lk5/g;->i()Lk5/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lk5/m$i;->a(Lk5/m;)V

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lk5/m;->e1:Lk5/m;

    return-object p0
.end method

.method public m()Lk5/m;
    .locals 5

    iget v0, p0, Lk5/g;->f:I

    add-int/lit8 v0, v0, -0x30

    sget-object v1, Lk5/m;->r:Lk5/m;

    new-instance v1, Lk5/m$h;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lk5/m$h;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lk5/g;->j:Z

    iget-object v2, p0, Lk5/g;->k:Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lk5/g;->k:Ljava/util/Vector;

    :cond_0
    iget-object v2, p0, Lk5/g;->k:Ljava/util/Vector;

    new-instance v3, Lk5/g$a;

    iget v4, p0, Lk5/g;->a:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v0, v4}, Lk5/g$a;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v1
.end method

.method public n()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->h1:Lk5/m$a;

    return-object p0
.end method

.method public o()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->l1:Lk5/m$a;

    return-object p0
.end method

.method public p()Lk5/m;
    .locals 1

    const-string v0, "parser.process.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public q()Lk5/m;
    .locals 1

    const-string v0, "parser.process.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public r()Lk5/m;
    .locals 3

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->r:Lk5/m;

    const-class p0, Lk5/m;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lk5/m;->v1:Lk5/m$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "M"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v0

    invoke-static {v0}, Lk5/m;->g(Lk5/m;)Lk5/m$b;

    move-result-object v0

    const-string v1, "M"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v1

    invoke-static {v1, v0}, Lk5/m;->h(Lk5/m;Lk5/m;)Lk5/m$c;

    move-result-object v0

    sput-object v0, Lk5/m;->v1:Lk5/m$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->j1:Lk5/m$a;

    return-object p0
.end method

.method public t()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->k1:Lk5/m$a;

    return-object p0
.end method

.method public u()Lk5/m;
    .locals 3

    iget v0, p0, Lk5/g;->a:I

    iget v1, p0, Lk5/g;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lk5/g;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lk5/g;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xffe0

    and-int/2addr v1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lk5/g;->g()V

    sub-int/2addr v0, v2

    invoke-static {v0}, Lk5/m;->f(I)Lk5/m$a;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "parser.atom.1"

    invoke-virtual {p0, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method

.method public v()Lk5/m;
    .locals 6

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->r:Lk5/m;

    const-class p0, Lk5/m;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lk5/m;->u1:Lk5/m$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v0

    const-string v1, "ASSIGNED"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/f;->G(Lk5/m;)V

    const-string v1, "M"

    invoke-static {v1, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/f;->I(Lk5/m;)V

    const-string v1, "C"

    invoke-static {v1, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/f;->I(Lk5/m;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    const-string v4, "\u094d\u09cd\u0a4d\u0acd\u0b4d\u0bcd\u0c4d\u0ccd\u0d4d\u0e3a\u0f84"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v1, v3, v3}, Lk5/f;->b(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v3

    const-string v4, "M"

    invoke-static {v4, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk5/f;->G(Lk5/m;)V

    const/16 v4, 0x1160

    const/16 v5, 0x11ff

    invoke-virtual {v3, v4, v5}, Lk5/f;->b(II)V

    const v4, 0xff9e

    const v5, 0xff9f

    invoke-virtual {v3, v4, v5}, Lk5/f;->b(II)V

    invoke-static {}, Lk5/m;->m()Lk5/m$i;

    move-result-object v4

    invoke-virtual {v4, v0}, Lk5/m$i;->a(Lk5/m;)V

    sget-object v0, Lk5/m;->e1:Lk5/m;

    invoke-virtual {v4, v0}, Lk5/m$i;->a(Lk5/m;)V

    invoke-static {}, Lk5/m;->m()Lk5/m$i;

    move-result-object v0

    const-string v5, "L"

    invoke-static {v5, v2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object v2

    invoke-static {v1, v2}, Lk5/m;->h(Lk5/m;Lk5/m;)Lk5/m$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/m$i;->a(Lk5/m;)V

    invoke-virtual {v0, v3}, Lk5/m$i;->a(Lk5/m;)V

    invoke-static {v0}, Lk5/m;->g(Lk5/m;)Lk5/m$b;

    move-result-object v0

    invoke-static {v4, v0}, Lk5/m;->h(Lk5/m;Lk5/m;)Lk5/m$c;

    move-result-object v0

    sput-object v0, Lk5/m;->u1:Lk5/m$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_1
    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public w()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->n1:Lk5/m$a;

    return-object p0
.end method

.method public x()Lk5/m;
    .locals 1

    const/16 v0, 0x69

    invoke-static {v0}, Lk5/m;->f(I)Lk5/m$a;

    move-result-object v0

    invoke-virtual {p0}, Lk5/g;->g()V

    return-object v0
.end method

.method public y()Lk5/m;
    .locals 0

    invoke-virtual {p0}, Lk5/g;->g()V

    sget-object p0, Lk5/m;->m1:Lk5/m$a;

    return-object p0
.end method

.method public final z(I)Lk5/f;
    .locals 4

    invoke-virtual {p0}, Lk5/g;->g()V

    iget v0, p0, Lk5/g;->g:I

    if-nez v0, :cond_4

    iget v0, p0, Lk5/g;->f:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    const/16 v0, 0x70

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lk5/g;->a:I

    iget-object v2, p0, Lk5/g;->b:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    iput v2, p0, Lk5/g;->a:I

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lk5/g;->f(I)Z

    move-result p0

    invoke-static {v0, p1}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    sget-object p0, Lk5/m;->t1:Ljava/util/Hashtable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    const-string p1, "parser.atom.3"

    invoke-virtual {p0, p1}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0

    :cond_4
    const-string p1, "parser.atom.2"

    invoke-virtual {p0, p1}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object p0

    throw p0
.end method
