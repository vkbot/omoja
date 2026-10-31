.class public final synthetic Le0/m1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/ModernMainActivity;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/ModernMainActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Le0/m1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/m1;->c:Lcom/example/navistart/ModernMainActivity;

    .line 4
    .line 5
    iput p2, p0, Le0/m1;->d:I

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
    iget p1, p0, Le0/m1;->b:I

    .line 2
    .line 3
    iget v0, p0, Le0/m1;->d:I

    .line 4
    .line 5
    iget-object v1, p0, Le0/m1;->c:Lcom/example/navistart/ModernMainActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/example/navistart/ModernMainActivity;->d0(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 17
    .line 18
    const p1, 0x7f09057c

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    if-nez p1, :cond_2

    .line 40
    .line 41
    const p1, 0x7f0902b0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v2, Landroid/widget/PopupMenu;

    .line 52
    .line 53
    invoke-direct {v2, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/high16 v3, 0x7f0e0000

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_2
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lcom/example/navistart/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    return-void

    .line 83
    :pswitch_1
    iget-object p1, v1, Lcom/example/navistart/ModernMainActivity;->o1:[I

    .line 84
    .line 85
    array-length p1, p1

    .line 86
    add-int/lit8 p1, p1, -0x1

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Lcom/example/navistart/ModernMainActivity;->d0(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lcom/example/navistart/ModernMainActivity;->e0(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
