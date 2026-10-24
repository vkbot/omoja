.class public Lm5/u1;
.super Lm5/e;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/e;->a:Lm5/z0;

    return-void
.end method


# virtual methods
.method public final getWholeText()Ljava/lang/String;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final isElementContentWhitespace()Z
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0

    new-instance p0, Lm5/o0$b;

    invoke-direct {p0}, Lm5/o0$b;-><init>()V

    throw p0
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .locals 5

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v1}, Lm5/o0;->d(Lm5/o0$a;II)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lm5/o0;->H(Ljava/lang/String;Lm5/o0$a;)Lm5/u1;

    move-result-object p1

    invoke-static {p0}, Lm5/o0;->q(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lm5/o0$a;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lm5/o0;->n(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lm5/o0;->s(Lm5/o0$a;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lm5/e;->D()Lm5/z0;

    move-result-object p0

    iget-object v1, p0, Lm5/z0;->x:Lm5/z0$m;

    iget-object v2, v1, Lm5/z0$m;->b:Lm5/o0$a;

    const-wide/16 v3, -0x1

    if-ne v2, v0, :cond_0

    iput-wide v3, v1, Lm5/z0$m;->a:J

    :cond_0
    iget-object p0, p0, Lm5/z0;->y:Lm5/z0$m;

    iget-object v1, p0, Lm5/z0$m;->b:Lm5/o0$a;

    if-ne v1, v0, :cond_1

    iput-wide v3, p0, Lm5/z0$m;->a:J

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Lm5/o0$h;

    invoke-direct {p0}, Lm5/o0$h;-><init>()V

    throw p0
.end method

.method public t()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
