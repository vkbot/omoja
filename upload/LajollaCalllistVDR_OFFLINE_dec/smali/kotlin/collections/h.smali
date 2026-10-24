.class public abstract Lkotlin/collections/h;
.super Lkotlin/collections/g;
.source "SourceFile"


# direct methods
.method public static final P1(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1

    const-string v0, "$this$addAll"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
