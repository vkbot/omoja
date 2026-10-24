.class public final Lm5/c1;
.super Lm5/b1;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# direct methods
.method public constructor <init>(Lm5/z0;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lm5/b1;-><init>(Lm5/z0;II)V

    iget-object p1, p0, Lm5/w1;->a:Lm5/z0;

    iget-object p1, p1, Lm5/z0;->s:Lm5/z0$c;

    iget-object p1, p1, Lm5/z0$c;->a:Li5/j;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iput-object p1, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final C0(Lm5/z0;)Lm5/w1;
    .locals 1

    new-instance v0, Lm5/c1;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lm5/c1;-><init>(Lm5/z0;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    return-void
.end method
