.class public final Lcom/mega/carlink/view/CarLinkAppListView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carlink/view/CarLinkAppListView$AppListPaddingDecoration;
    }
.end annotation


# virtual methods
.method public final onVisibilityAggregated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onVisibilityAggregated isVisible = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    sget-object p0, Lcom/mega/carlink/view/a;->a:Lcom/mega/carlink/view/a$a;

    invoke-virtual {p0, v1}, Lcom/mega/carlink/view/a$a;->a(Landroid/content/Context;)Lcom/mega/carlink/view/a;

    throw v1
.end method
