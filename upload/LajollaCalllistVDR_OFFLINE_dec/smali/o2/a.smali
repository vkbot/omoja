.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ll2/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Lo2/d;


# direct methods
.method public constructor <init>(Lo2/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo2/a;->a:I

    .line 1
    iput-object p1, p0, Lo2/a;->d:Lo2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lo2/b;->a:Lo2/d;

    .line 3
    invoke-interface {v0}, Lo2/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lo2/a;->c:Ljava/lang/Object;

    .line 4
    iget p1, p1, Lo2/b;->b:I

    iput p1, p0, Lo2/a;->b:I

    return-void
.end method

.method public constructor <init>(Lo2/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo2/a;->a:I

    .line 5
    iput-object p1, p0, Lo2/a;->d:Lo2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    .line 6
    iput p1, p0, Lo2/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lo2/a;->b:I

    const/4 v1, -0x2

    iget-object v2, p0, Lo2/a;->d:Lo2/d;

    check-cast v2, Lo2/c;

    if-ne v0, v1, :cond_0

    iget-object v0, v2, Lo2/c;->c:Ljava/lang/Object;

    check-cast v0, Lk2/a;

    invoke-interface {v0}, Lk2/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lo2/c;->b:Lk2/l;

    iget-object v1, p0, Lo2/a;->c:Ljava/lang/Object;

    invoke-static {v1}, Ly1/l;->w(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lk2/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo2/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lo2/a;->b:I

    return-void
.end method

.method public final b()V
    .locals 1

    :goto_0
    iget v0, p0, Lo2/a;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lo2/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo2/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lo2/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo2/a;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lo2/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lo2/a;->b()V

    iget-object p0, p0, Lo2/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :goto_0
    iget v0, p0, Lo2/a;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lo2/a;->a()V

    :cond_0
    iget p0, p0, Lo2/a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lo2/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lo2/a;->b()V

    iget-object p0, p0, Lo2/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    iget v0, p0, Lo2/a;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lo2/a;->a()V

    :cond_0
    iget v0, p0, Lo2/a;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo2/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lo2/a;->b:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lo2/a;->a:I

    const-string v0, "Operation is not supported for read-only collection"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
