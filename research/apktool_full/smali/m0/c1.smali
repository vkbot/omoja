.class public final synthetic Lm0/c1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/e1;

.field public final synthetic d:Lm0/h1;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lm0/e1;Lm0/h1;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p5, p0, Lm0/c1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/c1;->c:Lm0/e1;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/c1;->d:Lm0/h1;

    .line 6
    .line 7
    iput-object p3, p0, Lm0/c1;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput p4, p0, Lm0/c1;->f:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lm0/c1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/c1;->d:Lm0/h1;

    .line 7
    .line 8
    iget-object v1, p0, Lm0/c1;->e:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lm0/h1;->j:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lm0/c1;->c:Lm0/e1;

    .line 13
    .line 14
    iget-object v0, v0, Lm0/e1;->i:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lm0/i1;

    .line 17
    .line 18
    iget v1, p0, Lm0/c1;->f:I

    .line 19
    .line 20
    invoke-static {v0, v1}, Lm0/i1;->v(Lm0/i1;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lm0/c1;->d:Lm0/h1;

    .line 25
    .line 26
    iget-object v1, p0, Lm0/c1;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lm0/h1;->j:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lm0/c1;->c:Lm0/e1;

    .line 31
    .line 32
    iget-object v0, v0, Lm0/e1;->i:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lm0/i1;

    .line 35
    .line 36
    iget v1, p0, Lm0/c1;->f:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lm0/i1;->v(Lm0/i1;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lm0/c1;->d:Lm0/h1;

    .line 44
    .line 45
    iput-boolean v0, v1, Lm0/h1;->i:Z

    .line 46
    .line 47
    iget-object v0, p0, Lm0/c1;->e:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, v1, Lm0/h1;->j:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lm0/c1;->c:Lm0/e1;

    .line 52
    .line 53
    iget-object v0, v0, Lm0/e1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lm0/i1;

    .line 56
    .line 57
    iget v1, p0, Lm0/c1;->f:I

    .line 58
    .line 59
    invoke-static {v0, v1}, Lm0/i1;->v(Lm0/i1;I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
