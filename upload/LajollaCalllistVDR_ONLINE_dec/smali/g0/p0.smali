.class public final Lg0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:Lg0/s;


# direct methods
.method public constructor <init>(Lg0/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p0;->a:Lg0/s;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, Lg0/i;

    new-instance v1, Landroidx/appcompat/view/menu/i;

    invoke-direct {v1, p2}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lg0/i;-><init>(Lg0/h;)V

    iget-object v1, p0, Lg0/p0;->a:Lg0/s;

    check-cast v1, Landroidx/core/widget/m;

    invoke-virtual {v1, p1, v0}, Landroidx/core/widget/m;->a(Landroid/view/View;Lg0/i;)Lg0/i;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p1, p1, Lg0/i;->a:Lg0/h;

    invoke-interface {p1}, Lg0/h;->k()Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
