.class public final Lv3/j1;
.super Lv3/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/b1;"
    }
.end annotation


# instance fields
.field public final Z:Lv3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/c1$a;)V
    .locals 0

    invoke-direct {p0}, Lv3/b1;-><init>()V

    iput-object p1, p0, Lv3/j1;->Z:Lv3/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/j1;->j(Ljava/lang/Throwable;)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lv3/b1;->k()Lv3/c1;

    move-result-object p1

    invoke-virtual {p1}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lv3/n;

    iget-object p0, p0, Lv3/j1;->Z:Lv3/g;

    if-eqz v0, :cond_0

    check-cast p1, Lv3/n;

    iget-object p1, p1, Lv3/n;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lv3/v0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lv3/v0;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Lv3/v0;->a:Lv3/u0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lv3/g;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
