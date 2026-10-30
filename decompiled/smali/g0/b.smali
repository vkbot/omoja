.class public final synthetic Lg0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb1/m;

.field public final synthetic d:Lg0/e;


# direct methods
.method public synthetic constructor <init>(Lb1/m;Lg0/e;I)V
    .locals 0

    .line 1
    iput p3, p0, Lg0/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lg0/b;->c:Lb1/m;

    .line 4
    .line 5
    iput-object p2, p0, Lg0/b;->d:Lg0/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lg0/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg0/b;->c:Lb1/m;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lg0/b;->d:Lg0/e;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lg0/b;->c:Lb1/m;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Lg0/b;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    iget-object v3, p0, Lg0/b;->d:Lg0/e;

    .line 37
    .line 38
    invoke-direct {v1, v0, v3, v2}, Lg0/b;-><init>(Lb1/m;Lg0/e;I)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lg0/c;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v3, v1, v2}, Lg0/c;-><init>(Lg0/e;Lg0/b;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
