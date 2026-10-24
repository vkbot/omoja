.class public final Lm5/g;
.super Lm5/b1;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lm5/b1;-><init>(Lm5/z0;II)V

    return-void
.end method


# virtual methods
.method public final C0(Lm5/z0;)Lm5/w1;
    .locals 0

    new-instance p0, Lm5/g;

    invoke-direct {p0, p1}, Lm5/g;-><init>(Lm5/z0;)V

    return-object p0
.end method

.method public final appendData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->c(Ljava/lang/String;Lm5/o0$a;)V

    return-void
.end method

.method public final deleteData(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->d(Lm5/o0$a;II)V

    return-void
.end method

.method public final getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    sget-object p0, Lm5/o0;->a:Lm5/o0$f;

    return-object p0
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

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final insertData(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->e(Lm5/o0$a;ILjava/lang/String;)V

    return-void
.end method

.method public final replaceData(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lm5/o0;->f(Lm5/o0$a;IILjava/lang/String;)V

    return-void
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    return-void
.end method

.method public final substringData(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lm5/o0;->g(Lm5/o0$a;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
