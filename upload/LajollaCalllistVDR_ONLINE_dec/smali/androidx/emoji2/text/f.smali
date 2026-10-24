.class public final Landroidx/emoji2/text/f;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:Landroidx/emoji2/text/g;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/f;->x:Landroidx/emoji2/text/g;

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final T0(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/f;->x:Landroidx/emoji2/text/g;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/m;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/m;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final X0(Landroidx/emoji2/text/e0;)V
    .locals 5

    iget-object v0, p0, Landroidx/emoji2/text/f;->x:Landroidx/emoji2/text/g;

    iput-object p1, v0, Landroidx/emoji2/text/g;->e:Landroidx/emoji2/text/e0;

    new-instance p1, Landroidx/emoji2/text/v;

    iget-object v1, v0, Landroidx/emoji2/text/g;->e:Landroidx/emoji2/text/e0;

    new-instance v2, Landroidx/emoji2/text/l;

    invoke-direct {v2}, Landroidx/emoji2/text/l;-><init>()V

    iget-object v3, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroidx/emoji2/text/m;

    iget-object v4, v4, Landroidx/emoji2/text/m;->h:Landroidx/emoji2/text/t;

    check-cast v3, Landroidx/emoji2/text/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v1, v2, v4}, Landroidx/emoji2/text/v;-><init>(Landroidx/emoji2/text/e0;Landroidx/emoji2/text/l;Landroidx/emoji2/text/t;)V

    iput-object p1, v0, Landroidx/emoji2/text/g;->d:Landroidx/emoji2/text/v;

    iget-object p1, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/m;

    invoke-virtual {p1}, Landroidx/emoji2/text/m;->e()V

    return-void
.end method
