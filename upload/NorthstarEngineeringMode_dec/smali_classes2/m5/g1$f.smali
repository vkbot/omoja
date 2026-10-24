.class public final Lm5/g1$f;
.super Lm5/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/g1$f$a;
    }
.end annotation


# instance fields
.field public final r:Ljava/io/Writer;

.field public final s:[C


# direct methods
.method public constructor <init>(Lm5/h;Ljava/io/Writer;)V
    .locals 1

    sget-object v0, Li5/z1;->r:Li5/z1;

    invoke-direct {p0, p1, v0}, Lm5/g1;-><init>(Lm5/h;Li5/z1;)V

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lm5/g1$f;->s:[C

    iput-object p2, p0, Lm5/g1$f;->r:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lm5/g1$f;->r:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$f$a;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final B([CII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lm5/g1$f;->r:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$f$a;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final C(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Lm5/g1$f;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Lm5/g1$f;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    const-string v2, "&quot;"

    invoke-virtual {p0, v2}, Lm5/g1$f;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lm5/g1$f;->y(C)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    :goto_0
    return-void
.end method

.method public final E(Ljavax/xml/namespace/QName;Z)V
    .locals 3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm5/g1;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v0}, Lm5/g1;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0, v1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Lm5/g1$f;->y(C)V

    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lm5/g1$h;)V
    .locals 14

    const-string v0, "<!--"

    invoke-virtual {p0, v0}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lm5/g1$h;->b:I

    iget v2, p1, Lm5/g1$h;->a:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_7

    add-int/lit16 v5, v4, 0x200

    if-le v5, v1, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    const/16 v5, 0x200

    :goto_1
    add-int v6, v2, v4

    iget-object v7, p0, Lm5/g1$f;->s:[C

    invoke-static {v7, v3, v0, v6, v5}, Lm5/f;->b([CILjava/lang/Object;II)V

    sub-int v4, v5, v4

    move v6, v3

    move v8, v6

    :goto_2
    const/16 v9, 0x20

    const/16 v10, 0x2d

    if-ge v6, v4, :cond_5

    aget-char v11, v7, v6

    invoke-static {v11}, Lm5/g1;->o(C)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    const/16 v9, 0x3f

    aput-char v9, v7, v6

    goto :goto_3

    :cond_1
    if-ne v11, v10, :cond_2

    if-eqz v8, :cond_3

    aput-char v9, v7, v6

    :cond_2
    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v13

    :goto_3
    array-length v9, v7

    if-ne v6, v9, :cond_4

    move v6, v3

    :cond_4
    add-int/2addr v6, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v4, -0x1

    aget-char v8, v7, v6

    if-ne v8, v10, :cond_6

    aput-char v9, v7, v6

    :cond_6
    invoke-virtual {p0, v7, v3, v4}, Lm5/g1$f;->B([CII)V

    move v4, v5

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lm5/g1$h;->o()V

    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<!DOCTYPE "

    invoke-virtual {p0, v0}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, " SYSTEM "

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lm5/g1$f;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, " PUBLIC "

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lm5/g1$f;->D(Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0, p3}, Lm5/g1$f;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lm5/g1$f;->y(C)V

    sget-object p1, Lm5/g1;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm5/g1$f;->E(Ljavax/xml/namespace/QName;Z)V

    move v0, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x22

    const/16 v5, 0x3d

    const/16 v6, 0x20

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0, v2, v3}, Lm5/g1$f;->E(Ljavax/xml/namespace/QName;Z)V

    invoke-virtual {p0, v5, v4}, Lm5/g1$f;->z(CC)V

    invoke-virtual {p0, v7}, Lm5/g1$f;->C(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lm5/g1$f;->y(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lm5/g1;->i:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lm5/g1;->p()V

    :goto_1
    invoke-virtual {p0}, Lm5/g1;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v6}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0}, Lm5/g1;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lm5/g1;->r()Ljava/lang/String;

    move-result-object p3

    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0, p2}, Lm5/g1$f;->A(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v5, v4}, Lm5/g1$f;->z(CC)V

    invoke-virtual {p0, p3}, Lm5/g1$f;->C(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lm5/g1$f;->y(C)V

    invoke-virtual {p0}, Lm5/g1;->s()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lm5/g1$h;->h()Z

    move-result p2

    const/16 p3, 0x3e

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lm5/g1$h;->i()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x2f

    invoke-virtual {p0, p1, p3}, Lm5/g1$f;->z(CC)V

    return v3

    :cond_3
    invoke-virtual {p0, p3}, Lm5/g1$f;->y(C)V

    return v1
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Lm5/g1$h;)V
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Lm5/g1$f;->z(CC)V

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm5/g1$f;->E(Ljavax/xml/namespace/QName;Z)V

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lm5/g1$f;->y(C)V

    return-void
.end method

.method public final i(Lm5/g1$h;)V
    .locals 13

    const-string v0, "<?"

    invoke-virtual {p0, v0}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm5/g1$f;->A(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    invoke-virtual {p1}, Lm5/g1$h;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lm5/g1$f;->y(C)V

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, p1, Lm5/g1$h;->b:I

    iget v3, p1, Lm5/g1$h;->a:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    add-int/lit16 v6, v5, 0x200

    if-le v6, v2, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    const/16 v6, 0x200

    :goto_1
    add-int v7, v3, v5

    iget-object v8, p0, Lm5/g1$f;->s:[C

    invoke-static {v8, v4, v1, v7, v6}, Lm5/f;->b([CILjava/lang/Object;II)V

    sub-int v5, v6, v5

    move v7, v4

    move v9, v7

    :goto_2
    if-ge v7, v5, :cond_4

    aget-char v10, v8, v7

    invoke-static {v10}, Lm5/g1;->o(C)Z

    move-result v11

    const/16 v12, 0x3f

    if-eqz v11, :cond_1

    aput-char v12, v8, v7

    move v10, v12

    :cond_1
    const/16 v11, 0x3e

    if-ne v10, v11, :cond_3

    if-eqz v9, :cond_2

    aput-char v0, v8, v7

    :cond_2
    move v9, v4

    goto :goto_3

    :cond_3
    if-ne v10, v12, :cond_2

    const/4 v9, 0x1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v8, v4, v5}, Lm5/g1$f;->B([CII)V

    move v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lm5/g1$h;->o()V

    const-string p1, "?>"

    invoke-virtual {p0, p1}, Lm5/g1$f;->A(Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(Lm5/g1$h;)V
    .locals 10

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lm5/g1$h;->b:I

    iget p1, p1, Lm5/g1$h;->a:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    add-int/lit16 v4, v3, 0x200

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, p1, v3

    sub-int v3, v4, v3

    iget-object v6, p0, Lm5/g1$f;->s:[C

    invoke-static {v6, v2, v0, v5, v3}, Lm5/f;->b([CILjava/lang/Object;II)V

    move v5, v2

    move v7, v5

    :goto_1
    if-ge v5, v3, :cond_2

    aget-char v8, v6, v5

    const/16 v9, 0x26

    if-eq v8, v9, :cond_1

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_0

    goto :goto_3

    :cond_0
    sub-int v8, v5, v7

    invoke-virtual {p0, v6, v7, v8}, Lm5/g1$f;->B([CII)V

    const-string v7, "&lt;"

    invoke-virtual {p0, v7}, Lm5/g1$f;->A(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v5, 0x1

    goto :goto_3

    :cond_1
    sub-int v8, v5, v7

    invoke-virtual {p0, v6, v7, v8}, Lm5/g1$f;->B([CII)V

    const-string v7, "&amp;"

    invoke-virtual {p0, v7}, Lm5/g1$f;->A(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v7

    invoke-virtual {p0, v6, v7, v3}, Lm5/g1$f;->B([CII)V

    move v3, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final y(C)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm5/g1$f;->s:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    iget-object p0, p0, Lm5/g1$f;->r:Ljava/io/Writer;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$f$a;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final z(CC)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm5/g1$f;->s:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    aput-char p2, v0, p1

    iget-object p0, p0, Lm5/g1$f;->r:Ljava/io/Writer;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lm5/g1$f$a;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
