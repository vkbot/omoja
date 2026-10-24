.class public abstract Lg/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lg/f;


# instance fields
.field public b:Lg/c;

.field public c:Lg/c;


# direct methods
.method public constructor <init>(Lg/c;Lg/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/e;->b:Lg/c;

    iput-object p1, p0, Lg/e;->c:Lg/c;

    return-void
.end method


# virtual methods
.method public final a(Lg/c;)V
    .locals 2

    iget-object v0, p0, Lg/e;->b:Lg/c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lg/e;->c:Lg/c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lg/e;->c:Lg/c;

    iput-object v0, p0, Lg/e;->b:Lg/c;

    :cond_0
    iget-object v0, p0, Lg/e;->b:Lg/c;

    if-ne v0, p1, :cond_1

    move-object v1, p0

    check-cast v1, Lg/b;

    iget v1, v1, Lg/b;->d:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lg/c;->e:Lg/c;

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lg/c;->d:Lg/c;

    :goto_1
    iput-object v0, p0, Lg/e;->b:Lg/c;

    :cond_1
    iget-object v0, p0, Lg/e;->c:Lg/c;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lg/e;->b()Lg/c;

    move-result-object p1

    iput-object p1, p0, Lg/e;->c:Lg/c;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lg/c;
    .locals 2

    iget-object v0, p0, Lg/e;->c:Lg/c;

    iget-object v1, p0, Lg/e;->b:Lg/c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, p0

    check-cast v1, Lg/b;

    iget v1, v1, Lg/b;->d:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lg/c;->d:Lg/c;

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lg/c;->e:Lg/c;

    :goto_1
    return-object v0

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lg/e;->c:Lg/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/e;->c:Lg/c;

    invoke-virtual {p0}, Lg/e;->b()Lg/c;

    move-result-object v1

    iput-object v1, p0, Lg/e;->c:Lg/c;

    return-object v0
.end method
