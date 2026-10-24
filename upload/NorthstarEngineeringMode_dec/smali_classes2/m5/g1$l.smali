.class public final Lm5/g1$l;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# instance fields
.field public final c:Lm5/z0;

.field public final r:Lm5/g1$m;

.field public x:Z


# direct methods
.method public constructor <init>(Lm5/h;Li5/z1;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    new-instance v0, Lm5/g1$m;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lm5/g1$m;-><init>(Ljava/lang/String;Li5/z1;Lm5/h;)V

    iput-object v0, p0, Lm5/g1$l;->r:Lm5/g1$m;

    iget-object p1, p1, Lm5/h;->a:Lm5/z0;

    iput-object p1, p0, Lm5/g1$l;->c:Lm5/z0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm5/g1$l;->x:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/g1$l;->x:Z

    return-void
.end method

.method public final read()I
    .locals 3

    iget-boolean v0, p0, Lm5/g1$l;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/g1$l;->r:Lm5/g1$m;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg1/z;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, Lg1/z;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lm5/g1$l;->c:Lm5/z0;

    invoke-static {p0, v1}, Lm5/g1;->a(Lm5/z0;Lm5/g1$j;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Reader has been closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([C)I
    .locals 1

    iget-boolean v0, p0, Lm5/g1$l;->x:Z

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lm5/j1;

    invoke-direct {v0, p0, p1}, Lm5/j1;-><init>(Lm5/g1$l;[C)V

    iget-object p0, p0, Lm5/g1$l;->c:Lm5/z0;

    invoke-static {p0, v0}, Lm5/g1;->a(Lm5/z0;Lm5/g1$j;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reader has been closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([CII)I
    .locals 1

    iget-boolean v0, p0, Lm5/g1$l;->x:Z

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lm5/i1;

    invoke-direct {v0, p0, p1, p2, p3}, Lm5/i1;-><init>(Lm5/g1$l;[CII)V

    iget-object p0, p0, Lm5/g1$l;->c:Lm5/z0;

    invoke-static {p0, v0}, Lm5/g1;->a(Lm5/z0;Lm5/g1$j;)I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reader has been closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ready()Z
    .locals 0

    iget-boolean p0, p0, Lm5/g1$l;->x:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
