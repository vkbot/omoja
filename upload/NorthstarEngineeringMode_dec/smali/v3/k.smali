.class public final Lv3/k;
.super Lv3/z0;
.source "SourceFile"

# interfaces
.implements Lv3/j;


# instance fields
.field public final Z:Lv3/l;


# direct methods
.method public constructor <init>(Lv3/c1;)V
    .locals 0

    invoke-direct {p0}, Lv3/z0;-><init>()V

    iput-object p1, p0, Lv3/k;->Z:Lv3/l;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lv3/b1;->k()Lv3/c1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lv3/c1;->B(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/k;->j(Ljava/lang/Throwable;)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lv3/b1;->k()Lv3/c1;

    move-result-object p1

    iget-object p0, p0, Lv3/k;->Z:Lv3/l;

    invoke-interface {p0, p1}, Lv3/l;->A(Lv3/c1;)V

    return-void
.end method
