.class public final synthetic Le0/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/example/navistart/AutoVibVodActivity;

.field public final synthetic c:I

.field public final synthetic d:Lcom/example/navistart/mainview/HeatingButtonView;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/AutoVibVodActivity;ILcom/example/navistart/mainview/HeatingButtonView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/k;->b:Lcom/example/navistart/AutoVibVodActivity;

    .line 5
    .line 6
    iput p2, p0, Le0/k;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Le0/k;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcom/example/navistart/AutoVibVodActivity;->b:I

    .line 2
    .line 3
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Le0/k;->c:I

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iget-object v0, p0, Le0/k;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 17
    .line 18
    iput-boolean p1, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-virtual {v0, p1}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Le0/k;->b:Lcom/example/navistart/AutoVibVodActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
