.class public final Ln/a0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln/s;
.implements Lv/a;


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .registers 3

    .line 1
    iput p2, p0, Ln/a0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ln/a0;->c:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lj/d0;Lh/h;)Lj/d0;
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    new-instance p2, Lq/e;

    .line 6
    .line 7
    iget-object v0, p0, Ln/a0;->c:Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-direct {p2, v0, p1}, Lq/e;-><init>(Landroid/content/res/Resources;Lj/d0;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public j(Ln/z;)Ln/r;
    .registers 5

    .line 1
    iget v0, p0, Ln/a0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_30

    .line 4
    .line 5
    .line 6
    new-instance p1, Ln/b;

    .line 7
    .line 8
    iget-object v0, p0, Ln/a0;->c:Landroid/content/res/Resources;

    .line 9
    .line 10
    sget-object v1, Ln/d0;->b:Ln/d0;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Ln/b;-><init>(Landroid/content/res/Resources;Ln/r;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_f
    new-instance v0, Ln/b;

    .line 17
    .line 18
    const-class v1, Landroid/net/Uri;

    .line 19
    .line 20
    const-class v2, Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Ln/a0;->c:Landroid/content/res/Resources;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Ln/b;-><init>(Landroid/content/res/Resources;Ln/r;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1f
    new-instance v0, Ln/b;

    .line 33
    .line 34
    const-class v1, Landroid/net/Uri;

    .line 35
    .line 36
    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Ln/a0;->c:Landroid/content/res/Resources;

    .line 43
    .line 44
    invoke-direct {v0, v1, p1}, Ln/b;-><init>(Landroid/content/res/Resources;Ln/r;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_f
    .end packed-switch
.end method
