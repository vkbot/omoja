.class public final Ln/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln/s;


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ln/a;->c:Landroid/content/res/AssetManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Ln/z;)Ln/r;
    .locals 1

    .line 1
    iget p1, p0, Ln/a;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ln/b;

    .line 7
    .line 8
    iget-object v0, p0, Ln/a;->c:Landroid/content/res/AssetManager;

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Ln/b;-><init>(Landroid/content/res/AssetManager;Ln/a;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_0
    new-instance p1, Ln/b;

    .line 15
    .line 16
    iget-object v0, p0, Ln/a;->c:Landroid/content/res/AssetManager;

    .line 17
    .line 18
    invoke-direct {p1, v0, p0}, Ln/b;-><init>(Landroid/content/res/AssetManager;Ln/a;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
