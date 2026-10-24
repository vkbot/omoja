.class public final Lk0/b;
.super Lk0/g;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lk0/c;Lk0/c;I)V
    .locals 0

    iput p3, p0, Lk0/b;->d:I

    invoke-direct {p0, p1, p2}, Lk0/g;-><init>(Lk0/c;Lk0/c;)V

    return-void
.end method


# virtual methods
.method public final b(Lk0/l;Lk0/e;)D
    .locals 2

    iget v0, p0, Lk0/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk0/g;->b:Lk0/c;

    invoke-virtual {v0, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v0

    iget-object p0, p0, Lk0/g;->c:Lk0/c;

    invoke-virtual {p0, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    iget-object v0, p0, Lk0/g;->b:Lk0/c;

    invoke-virtual {v0, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v0

    iget-object p0, p0, Lk0/g;->c:Lk0/c;

    invoke-virtual {p0, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lk0/b;->d:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "^"

    return-object p0

    :pswitch_0
    const-string p0, "/"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
