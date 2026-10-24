.class public final Landroidx/work/DataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs workDataOf([Lf3/b;)Landroidx/work/Data;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lf3/b<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/work/Data;"
        }
    .end annotation

    const-string/jumbo v0, "pairs"

    invoke-static {p0, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    iget-object v4, v3, Lf3/b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lf3/b;->r:Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "dataBuilder.build()"

    invoke-static {p0, v0}, Lo3/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
