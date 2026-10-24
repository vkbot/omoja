.class public abstract Lh/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh/f;


# instance fields
.field public a:Lh/c;

.field public b:Lh/c;


# direct methods
.method public constructor <init>(Lh/c;Lh/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/e;->a:Lh/c;

    iput-object p1, p0, Lh/e;->b:Lh/c;

    return-void
.end method


# virtual methods
.method public final a(Lh/c;)V
    .locals 2

    iget-object v0, p0, Lh/e;->a:Lh/c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lh/e;->b:Lh/c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lh/e;->b:Lh/c;

    iput-object v0, p0, Lh/e;->a:Lh/c;

    :cond_0
    iget-object v0, p0, Lh/e;->a:Lh/c;

    if-ne v0, p1, :cond_1

    move-object v1, p0

    check-cast v1, Lh/b;

    iget v1, v1, Lh/b;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lh/c;->d:Lh/c;

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lh/c;->c:Lh/c;

    :goto_1
    iput-object v0, p0, Lh/e;->a:Lh/c;

    :cond_1
    iget-object v0, p0, Lh/e;->b:Lh/c;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lh/e;->b()Lh/c;

    move-result-object p1

    iput-object p1, p0, Lh/e;->b:Lh/c;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lh/c;
    .locals 2

    iget-object v0, p0, Lh/e;->b:Lh/c;

    iget-object v1, p0, Lh/e;->a:Lh/c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p0, Lh/b;

    iget p0, p0, Lh/b;->c:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, v0, Lh/c;->c:Lh/c;

    goto :goto_1

    :goto_0
    iget-object p0, v0, Lh/c;->d:Lh/c;

    :goto_1
    return-object p0

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lh/e;->b:Lh/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lh/e;->b:Lh/c;

    invoke-virtual {p0}, Lh/e;->b()Lh/c;

    move-result-object v1

    iput-object v1, p0, Lh/e;->b:Lh/c;

    return-object v0
.end method
