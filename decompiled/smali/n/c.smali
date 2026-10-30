.class public final Ln/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ln/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ln/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Ln/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/File;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "data:image"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :pswitch_1
    check-cast p1, [B

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILh/h;)Ln/q;
    .locals 2

    .line 1
    iget p2, p0, Ln/c;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/File;

    .line 7
    .line 8
    new-instance p2, Ln/q;

    .line 9
    .line 10
    new-instance p3, Lb0/b;

    .line 11
    .line 12
    invoke-direct {p3, p1}, Lb0/b;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p4, Li/b;

    .line 16
    .line 17
    iget-object v0, p0, Ln/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ln/c0;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {p4, v1, p1, v0}, Li/b;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3, p4}, Ln/q;-><init>(Lh/e;Lcom/bumptech/glide/load/data/e;)V

    .line 26
    .line 27
    .line 28
    return-object p2

    .line 29
    :pswitch_0
    new-instance p2, Ln/q;

    .line 30
    .line 31
    new-instance p3, Lb0/b;

    .line 32
    .line 33
    invoke-direct {p3, p1}, Lb0/b;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance p4, Ln/l;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Ln/c;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ln/c0;

    .line 45
    .line 46
    invoke-direct {p4, p1, v0}, Ln/l;-><init>(Ljava/lang/String;Ln/c0;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p3, p4}, Ln/q;-><init>(Lh/e;Lcom/bumptech/glide/load/data/e;)V

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :pswitch_1
    check-cast p1, [B

    .line 54
    .line 55
    new-instance p2, Ln/q;

    .line 56
    .line 57
    new-instance p3, Lb0/b;

    .line 58
    .line 59
    invoke-direct {p3, p1}, Lb0/b;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p4, Ln/l;

    .line 63
    .line 64
    iget-object v0, p0, Ln/c;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Ln/c0;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct {p4, v1, p1, v0}, Ln/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p3, p4}, Ln/q;-><init>(Lh/e;Lcom/bumptech/glide/load/data/e;)V

    .line 73
    .line 74
    .line 75
    return-object p2

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
