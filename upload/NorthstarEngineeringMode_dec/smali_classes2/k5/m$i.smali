.class public final Lk5/m$i;
.super Lk5/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public w1:Ljava/util/Vector;


# virtual methods
.method public final A(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lk5/m;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-virtual {p0, v1}, Lk5/m$i;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {p0, v3}, Lk5/m$i;->q(I)Lk5/m;

    move-result-object p0

    iget v2, p0, Lk5/m;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lk5/m;->q(I)Lk5/m;

    move-result-object v2

    if-ne v2, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget v2, p0, Lk5/m;->c:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lk5/m;->q(I)Lk5/m;

    move-result-object v1

    if-ne v1, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v2, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/m;

    invoke-virtual {v2, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    :goto_1
    return-object p0

    :cond_4
    iget-object v2, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v0, :cond_5

    invoke-virtual {p0, v3}, Lk5/m$i;->q(I)Lk5/m;

    move-result-object v2

    iget v2, v2, Lk5/m;->c:I

    if-ne v2, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lk5/m$i;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v0, :cond_6

    invoke-virtual {p0, v1}, Lk5/m$i;->q(I)Lk5/m;

    move-result-object v0

    iget v0, v0, Lk5/m;->c:I

    if-ne v0, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lk5/m$i;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "??"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/m;

    invoke-virtual {v1, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v1, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/m;

    invoke-virtual {v1, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    :goto_3
    return-object p0
.end method

.method public final a(Lk5/m;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    :cond_1
    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v0, p1, Lk5/m;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :goto_0
    invoke-virtual {p1}, Lk5/m;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk5/m$i;->a(Lk5/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_5

    iget-object p0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v5, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    sub-int/2addr v4, v3

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/m;

    iget v5, v3, Lk5/m;->c:I

    const/16 v6, 0xa

    if-eqz v5, :cond_6

    if-ne v5, v6, :cond_7

    :cond_6
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_8

    :cond_7
    iget-object p0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-nez v0, :cond_9

    move v5, v1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lk5/m;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    iget v7, v3, Lk5/m;->c:I

    const/high16 v8, 0x10000

    if-nez v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/2addr v5, v1

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Lk5/m;->p()I

    move-result v1

    if-lt v1, v8, :cond_a

    invoke-static {v1}, Ld/f;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    int-to-char v1, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    new-instance v3, Lk5/m$h;

    const/4 v1, 0x0

    invoke-direct {v3, v6, v2, v1}, Lk5/m$h;-><init>(IILjava/lang/String;)V

    iget-object p0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {p0, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lk5/m;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v5

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3}, Lk5/m;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-nez v0, :cond_d

    invoke-virtual {p1}, Lk5/m;->p()I

    move-result p0

    if-lt p0, v8, :cond_c

    invoke-static {p0}, Ld/f;->q(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    int-to-char p0, p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lk5/m;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    check-cast v3, Lk5/m$h;

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    iput-object p0, v3, Lk5/m$h;->w1:Ljava/lang/String;

    return-void
.end method

.method public final q(I)Lk5/m;
    .locals 0

    iget-object p0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk5/m;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lk5/m$i;->w1:Ljava/util/Vector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_0
    return p0
.end method
