.class public final Lh0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/f;


# instance fields
.field public final a:Landroid/view/ContentInfo$Builder;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroidx/work/impl/background/systemjob/a;->c(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Lh0/e;->a:Landroid/view/ContentInfo$Builder;

    return-void
.end method


# virtual methods
.method public final a()Lh0/i;
    .locals 2

    new-instance v0, Lh0/i;

    new-instance v1, Landroidx/appcompat/view/menu/i;

    iget-object p0, p0, Lh0/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {p0}, Landroidx/work/impl/background/systemjob/a;->d(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lh0/i;-><init>(Lh0/h;)V

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lh0/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {p0, p1}, Landroidx/work/impl/background/systemjob/a;->i(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lh0/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {p0, p1}, Landroidx/work/impl/background/systemjob/a;->h(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    iget-object p0, p0, Lh0/e;->a:Landroid/view/ContentInfo$Builder;

    invoke-static {p0, p1}, Landroidx/work/impl/background/systemjob/a;->g(Landroid/view/ContentInfo$Builder;I)V

    return-void
.end method
