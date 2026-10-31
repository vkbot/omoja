.class public final Lm0/g;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lm0/i;Landroid/content/Context;)V
    .registers 4

    .line 1
    const v0, 0x7f0c007b

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lm0/i;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lm0/g;->b:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lm0/g;->c:Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm0/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 1
    iget-object v0, p0, Lm0/g;->c:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    if-nez p2, :cond_e

    .line 4
    .line 5
    const p2, 0x7f0c007b

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lm0/g;->b:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    invoke-virtual {v2, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lm0/h;

    .line 20
    .line 21
    const p3, 0x7f0903ae

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Landroid/widget/ImageView;

    .line 29
    .line 30
    const v1, 0x7f0903af

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .line 39
    const v2, 0x7f0903b0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz p1, :cond_52

    .line 49
    .line 50
    iget-object v3, p1, Lm0/h;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, p1, Lm0/h;->c:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    if-nez v4, :cond_44

    .line 55
    .line 56
    :try_start_37
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iput-object v4, p1, Lm0/h;->c:Landroid/graphics/drawable/Drawable;
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3d} :catch_3e

    .line 61
    .line 62
    goto :goto_44

    .line 63
    :catch_3e
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p1, Lm0/h;->c:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    :cond_44
    :goto_44
    iget-object v0, p1, Lm0/h;->c:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lm0/h;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-object p2

    .line 83
    :cond_52
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    const-string p1, ""

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    return-object p2
.end method
