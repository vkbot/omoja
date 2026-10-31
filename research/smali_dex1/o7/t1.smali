.class public final Lo7/t1;
.super Ln7/h0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:Ln7/f0;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo7/t1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 8
    .line 9
    const-string v1, "Panic! This is a bug!"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Ln7/f0;->e:Ln7/f0;

    .line 20
    .line 21
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    const-string v2, "drop status shouldn\'t be OK"

    .line 28
    .line 29
    invoke-static {v2, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ln7/f0;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, v2, v2, p1, v1}, Ln7/f0;-><init>(Ln7/t;Ln7/g;Ln7/f1;Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lo7/t1;->b:Ln7/f0;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Ln7/f0;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lo7/t1;->a:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "result"

    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo7/t1;->b:Ln7/f0;

    return-void
.end method


# virtual methods
.method public final a(Lo7/g3;)Ln7/f0;
    .registers 2

    .line 1
    iget p1, p0, Lo7/t1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_c

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo7/t1;->b:Ln7/f0;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_8
    iget-object p1, p0, Lo7/t1;->b:Ln7/f0;

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lo7/t1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "FixedResultPicker("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lo7/t1;->b:Ln7/f0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1b
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 29
    .line 30
    const-class v1, Lo7/t1;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/s;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "panicPickResult"

    .line 40
    .line 41
    iget-object v2, p0, Lo7/t1;->b:Ln7/f0;

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
