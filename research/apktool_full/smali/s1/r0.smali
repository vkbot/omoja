.class public final synthetic Ls1/r0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/u0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls1/u0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Ls1/r0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/r0;->c:Ls1/u0;

    .line 4
    .line 5
    iput-object p2, p0, Ls1/r0;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Ls1/r0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Le4/o;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/16 v1, 0x32

    .line 10
    .line 11
    iget-object v2, p0, Ls1/r0;->d:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {p1, v2, v3, v0, v1}, Le4/o;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ls1/r0;->c:Ls1/u0;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ls1/u0;->f(Le4/o;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Ls1/r0;->c:Ls1/u0;

    .line 24
    .line 25
    iget-boolean v0, p1, Ls1/u0;->o:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iget-object v0, p1, Ls1/u0;->q:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Ls1/r0;->d:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Le4/o;

    .line 44
    .line 45
    iget-object v2, p1, Ls1/u0;->q:Ljava/lang/String;

    .line 46
    .line 47
    iget v3, p1, Ls1/u0;->r:I

    .line 48
    .line 49
    iget v4, p1, Ls1/u0;->s:I

    .line 50
    .line 51
    invoke-direct {v0, v2, v1, v3, v4}, Le4/o;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ls1/u0;->f(Le4/o;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p1, Ls1/u0;->q:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v1, 0x0

    .line 64
    :goto_1
    iput-object v1, p1, Ls1/u0;->q:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1}, Ls1/u0;->i()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ls1/u0;->n()V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
