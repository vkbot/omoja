.class public final Landroidx/emoji2/text/c;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:Landroidx/emoji2/text/d;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/c;->u:Landroidx/emoji2/text/d;

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final W0(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/c;->u:Landroidx/emoji2/text/d;

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/j;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/j;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a1(Landroidx/emoji2/text/z;)V
    .locals 4

    iget-object p0, p0, Landroidx/emoji2/text/c;->u:Landroidx/emoji2/text/d;

    iput-object p1, p0, Landroidx/emoji2/text/d;->d:Landroidx/emoji2/text/z;

    new-instance p1, Landroidx/emoji2/text/r;

    iget-object v0, p0, Landroidx/emoji2/text/d;->d:Landroidx/emoji2/text/z;

    new-instance v1, Landroidx/emoji2/text/i;

    invoke-direct {v1}, Landroidx/emoji2/text/i;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroidx/emoji2/text/j;

    iget-object v3, v3, Landroidx/emoji2/text/j;->h:Landroidx/emoji2/text/p;

    check-cast v2, Landroidx/emoji2/text/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0, v1, v3}, Landroidx/emoji2/text/r;-><init>(Landroidx/emoji2/text/z;Landroidx/emoji2/text/i;Landroidx/emoji2/text/p;)V

    iput-object p1, p0, Landroidx/emoji2/text/d;->c:Landroidx/emoji2/text/r;

    iget-object p0, p0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/j;

    invoke-virtual {p0}, Landroidx/emoji2/text/j;->e()V

    return-void
.end method
