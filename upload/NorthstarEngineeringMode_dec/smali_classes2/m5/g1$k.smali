.class public final Lm5/g1$k;
.super Lm5/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public r:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final d(Lm5/g1$h;)V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Lm5/g1$h;)V
    .locals 0

    return-void
.end method

.method public final i(Lm5/g1$h;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(Lm5/g1$h;)V
    .locals 0

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lm5/g1$k;->r:Ljava/util/LinkedHashMap;

    if-eqz p3, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
