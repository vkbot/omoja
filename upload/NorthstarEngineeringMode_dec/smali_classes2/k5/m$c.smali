.class public final Lk5/m$c;
.super Lk5/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public w1:Lk5/m;

.field public x1:Lk5/m;


# virtual methods
.method public final A(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lk5/m$c;->x1:Lk5/m;

    iget v1, v0, Lk5/m;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object p0, p0, Lk5/m$c;->w1:Lk5/m;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Lk5/m;->q(I)Lk5/m;

    move-result-object v1

    if-ne v1, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget v1, v0, Lk5/m;->c:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Lk5/m;->q(I)Lk5/m;

    move-result-object v1

    if-ne v1, p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final q(I)Lk5/m;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lk5/m$c;->w1:Lk5/m;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk5/m$c;->x1:Lk5/m;

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
