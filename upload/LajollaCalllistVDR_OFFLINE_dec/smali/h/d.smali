.class public final Lh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh/f;


# instance fields
.field public a:Lh/c;

.field public b:Z

.field public final synthetic c:Lh/g;


# direct methods
.method public constructor <init>(Lh/g;)V
    .locals 0

    iput-object p1, p0, Lh/d;->c:Lh/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lh/c;)V
    .locals 1

    iget-object v0, p0, Lh/d;->a:Lh/c;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lh/c;->d:Lh/c;

    iput-object p1, p0, Lh/d;->a:Lh/c;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lh/d;->b:Z

    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget-boolean v0, p0, Lh/d;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lh/d;->c:Lh/g;

    iget-object p0, p0, Lh/g;->a:Lh/c;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lh/d;->a:Lh/c;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lh/c;->c:Lh/c;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lh/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/d;->b:Z

    iget-object v0, p0, Lh/d;->c:Lh/g;

    iget-object v0, v0, Lh/g;->a:Lh/c;

    iput-object v0, p0, Lh/d;->a:Lh/c;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lh/d;->a:Lh/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lh/c;->c:Lh/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lh/d;->a:Lh/c;

    :goto_1
    iget-object p0, p0, Lh/d;->a:Lh/c;

    return-object p0
.end method
