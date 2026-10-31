.class public final Ld2/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:Lt8/a;

.field public c:Le5/c;

.field public d:Lt8/a;

.field public e:Lf5/m;

.field public f:Lt8/a;

.field public g:Lt8/a;


# virtual methods
.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ld2/k;->f:Lt8/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lk2/d;

    .line 8
    .line 9
    check-cast v0, Lk2/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lk2/h;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
