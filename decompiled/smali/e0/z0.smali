.class public final Le0/z0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:Le0/i1;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/example/navistart/MainActivity;


# direct methods
.method public constructor <init>(Lcom/example/navistart/MainActivity;Le0/i1;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/z0;->e:Lcom/example/navistart/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Le0/z0;->b:Le0/i1;

    .line 7
    .line 8
    iput-object p3, p0, Le0/z0;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Le0/z0;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Le0/z0;->b:Le0/i1;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Le0/j1;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Le0/j1;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p3, p0, Le0/z0;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, p3, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p2, p0, Le0/z0;->d:Z

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Le0/z0;->e:Lcom/example/navistart/MainActivity;

    .line 28
    .line 29
    iput-object p1, p2, Lcom/example/navistart/MainActivity;->w:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
