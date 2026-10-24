.class public final Lh0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:Lh0/r;


# direct methods
.method public constructor <init>(Lh0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/o0;->a:Lh0/r;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, Lh0/i;

    new-instance v1, Landroidx/appcompat/view/menu/i;

    invoke-direct {v1, p2}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lh0/i;-><init>(Lh0/h;)V

    iget-object p0, p0, Lh0/o0;->a:Lh0/r;

    check-cast p0, Landroidx/core/widget/j;

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/j;->a(Landroid/view/View;Lh0/i;)Lh0/i;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p0, p0, Lh0/i;->a:Lh0/h;

    invoke-interface {p0}, Lh0/h;->k()Landroid/view/ContentInfo;

    move-result-object p0

    return-object p0
.end method
