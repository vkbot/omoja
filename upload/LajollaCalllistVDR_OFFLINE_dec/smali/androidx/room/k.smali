.class public final Landroidx/room/k;
.super Landroidx/room/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;[Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/room/k;->b:I

    iput-object p1, p0, Landroidx/room/k;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/room/f;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 1

    iget p1, p0, Landroidx/room/k;->b:I

    iget-object p0, p0, Landroidx/room/k;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ly1/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :goto_0
    invoke-static {}, Lg/b;->a()Lg/b;

    move-result-object p1

    check-cast p0, Landroidx/room/w;

    iget-object p0, p0, Landroidx/room/w;->u:Landroidx/room/v;

    invoke-virtual {p1}, Lg/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/v;->run()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lg/b;->c(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
