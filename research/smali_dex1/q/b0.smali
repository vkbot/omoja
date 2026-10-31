.class public final Lq/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lq/b0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILh/h;)Lj/d0;
    .registers 5

    .line 1
    iget p2, p0, Lq/b0;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/File;

    .line 7
    .line 8
    new-instance p2, Lq/a0;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lq/a0;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    return-object p2

    .line 14
    :pswitch_d
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    if-eqz p1, :cond_18

    .line 17
    .line 18
    new-instance p2, Ls/b;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-direct {p2, p1, p3}, Ls/b;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p2, 0x0

    .line 26
    :goto_19
    return-object p2

    .line 27
    :pswitch_1a
    check-cast p1, Landroid/graphics/Bitmap;

    .line 28
    .line 29
    new-instance p2, Lq/a0;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-direct {p2, p3, p1}, Lq/a0;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    nop

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_d
    .end packed-switch
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lh/h;)Z
    .registers 3

    .line 1
    iget p2, p0, Lq/b0;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/io/File;

    .line 7
    .line 8
    :goto_7
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :pswitch_9
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    goto :goto_7

    .line 13
    :pswitch_c
    check-cast p1, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    goto :goto_7

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method
